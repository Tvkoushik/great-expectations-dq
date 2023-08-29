# Importing required modules and packages
import os  # for interacting with the OS
import logging  # for logging application events
import sys  # for system-specific parameters and functions
import pandas as pd  # for data manipulation and analysis
import great_expectations as gx  # for data testing, documentation, and profiling
from great_expectations.checkpoint import Checkpoint  # for checkpointing in data pipelines
import ydata_profiling  # for generating profile reports from a pandas DataFrame
from dotenv import load_dotenv  # for environment variable handling

# Load environment variables from .env file
load_dotenv()

# Initialize logging to capture runtime information
logging.basicConfig(level=logging.INFO)


# Function to load data from a PostgreSQL database
def load_data_from_db(sql_query):
    try:
        # Retrieve database credentials from environment variables
        db_hostname = os.environ.get("DB_HOSTNAME", "localhost")
        db_username = os.environ.get("DB_USERNAME", "postgres")
        db_password = os.environ.get("DB_PASSWORD", "sample")
        db_name = os.environ.get("DB_NAME", "postgres")

        # Create database connection string
        db_connection_string = (
            f"postgresql://{db_username}:{db_password}@{db_hostname}/{db_name}"
        )

        # Fetch data using SQL query and store it in a pandas DataFrame
        data = pd.read_sql_query(sql_query, db_connection_string)
        # Convert 'hire_date' to datetime format
        data["hire_date"] = pd.to_datetime(data["hire_date"])

        return data

    except Exception as e:
        logging.error(f"Failed to load data from database: {e}")
        sys.exit(1)


# Function to generate data profile using ydata_profiling
def generate_data_profile(data):
    try:
        profile = ydata_profiling.ProfileReport(data)
        profile.to_file(output_file="initial_data_profile.html")
    except Exception as e:
        logging.error(f"Failed to generate data profile: {e}")
        sys.exit(1)


# Function to set up Great Expectations context, datasource, and expectations
def setup_great_expectations(data):
    try:
        # Initialize Great Expectations context
        context = gx.get_context()

        # Get PostgreSQL connection string from environment variable
        PG_CONNECTION_STRING = os.environ.get(
            "PG_CONNECTION_STRING",
            "postgresql+psycopg2://postgres:sample@localhost/postgres",
        )

        # Add SQL datasource to Great Expectations context
        pg_datasource = context.sources.add_sql(
            name="pg_datasource", connection_string=PG_CONNECTION_STRING
        )

        # Add table asset to datasource
        pg_datasource.add_table_asset(
            name="postgres_employee_data", table_name="employees"
        )

        # Create or update expectation suite
        expectation_suite_name = "employee_suite"
        context.add_or_update_expectation_suite(
            expectation_suite_name=expectation_suite_name
        )

        # Build batch request and get validator
        batch_request = pg_datasource.get_asset(
            "postgres_employee_data"
        ).build_batch_request()
        validator = context.get_validator(
            batch_request=batch_request, expectation_suite_name=expectation_suite_name
        )

        return validator, context, batch_request, expectation_suite_name

    except Exception as e:
        logging.error(f"Failed to setup Great Expectations: {e}")
        sys.exit(1)


# Function to add expectations using Great Expectations
def add_expectations(validator):
    try:
        # Add various expectations on the columns
        validator.expect_column_values_to_not_be_null("id")
        validator.expect_column_values_to_not_be_null("last_name")
        validator.expect_column_values_to_not_be_null("email")
        validator.expect_column_values_to_not_be_null("first_name")
        validator.expect_column_values_to_be_between(
            "salary", min_value=0, max_value=200000
        )
        validator.expect_column_values_to_be_in_set("is_active", [True, False])

        # Save the expectation suite
        validator.save_expectation_suite(discard_failed_expectations=False)
    except Exception as e:
        logging.error(f"Failed to add expectations: {e}")
        sys.exit(1)


# Function to create a checkpoint for the batch data validation
def create_checkpoint(
    my_checkpoint_name, context, batch_request, expectation_suite_name
):
    # Initialize checkpoint object
    checkpoint = Checkpoint(
        name=my_checkpoint_name,
        run_name_template="%Y%m%d-%H%M%S-my-run-name-template",
        data_context=context,
        batch_request=batch_request,
        expectation_suite_name=expectation_suite_name,
        action_list=[
            {
                "name": "store_validation_result",
                "action": {"class_name": "StoreValidationResultAction"},
            },
            {
                "name": "update_data_docs",
                "action": {"class_name": "UpdateDataDocsAction"},
            },
        ],
    )

    # Add or update checkpoint and run it
    context.add_or_update_checkpoint(checkpoint=checkpoint)
    checkpoint_result = checkpoint.run()
    context.open_data_docs()


# Main function to coordinate the execution of all other functions
def main():
    # Load data from the database
    data = load_data_from_db("SELECT * FROM public.employees")

    # Generate data profile
    generate_data_profile(data)

    # Setup Great Expectations and get important objects
    (
        validator,
        context,
        batch_request,
        expectation_suite_name,
    ) = setup_great_expectations(data)

    # Add expectations to validator
    add_expectations(validator)

    # Create and run checkpoint
    create_checkpoint(
        "postgres_checkpoint", context, batch_request, expectation_suite_name
    )


# Entry point of the script
if __name__ == "__main__":
    main()
