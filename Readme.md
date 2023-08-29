# Data Quality Check and Profiling Script

## Overview

This script performs a series of data quality checks and generates a data profiling report. It utilizes Great Expectations for data validation and ydata_profiling for data profiling. The script reads data from a PostgreSQL database, applies various quality checks, and outputs validation results and a data profile HTML report.

## Features

- Data Loading from PostgreSQL Database
- Data Profiling using ydata_profiling
- Data Quality Checks using Great Expectations

## Dependencies

- Python 3.x
- pandas
- Great Expectations
- ydata_profiling
- psycopg2
- dotenv

## Setup

1. Clone the repository:

    ```bash
    git clone <repository_url>
    ```

2. Navigate to the project directory:

    ```bash
    cd <project_directory>
    ```

3. Install the required Python packages:

    ```bash
    pip install -r requirements.txt
    ```

4. Create a `.env` file in the root directory and add your database credentials:

    ```env
    DB_HOSTNAME=localhost
    DB_USERNAME=postgres
    DB_PASSWORD=sample
    DB_NAME=postgres
    PG_CONNECTION_STRING=postgresql+psycopg2://postgres:sample@localhost/postgres
    ```

5. Run the script:

    ```bash
    python dq.py
    ```

## Usage

The script performs the following tasks:

1. Loads data from a PostgreSQL database into a Pandas DataFrame.
2. Generates an initial data profile report in HTML format.
3. Adds a datasource to the Great Expectations context.
4. Creates or updates an expectation suite.
5. Validates the batch of data against the defined expectations.
6. Creates and runs a checkpoint to store validation results.
7. Opens data docs to view the validation results.

## Contributing

Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

## License

MIT
