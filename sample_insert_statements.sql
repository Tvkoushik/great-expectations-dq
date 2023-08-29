CREATE TABLE employees (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    department VARCHAR(50),
    salary NUMERIC(10, 2),
    hire_date DATE,
    is_active BOOLEAN
);



INSERT INTO employees (first_name, last_name, email, department, salary, hire_date, is_active) VALUES ('Andrew', 'Williams', 'ggomez@knight.net', 'Commercial art gallery manager', 98318.10, '2020-01-24', True);
INSERT INTO employees (first_name, last_name, email, department, salary, hire_date, is_active) VALUES ('Brendan', 'Davis', 'carsonjacqueline@roberts.com', 'Building control surveyor', 87430.38, '2022-05-22', True);
INSERT INTO employees (first_name, last_name, email, department, salary, hire_date, is_active) VALUES ('Patrick', 'Small', 'zhicks@brady-petersen.com', 'Psychotherapist, child', 55497.82, '2023-04-14', False);
INSERT INTO employees (first_name, last_name, email, department, salary, hire_date, is_active) VALUES ('Patrick', 'Richardson', 'cdavis@blanchard.com', 'Medical sales representative', 73786.44, '2019-10-04', True);
INSERT INTO employees (first_name, last_name, email, department, salary, hire_date, is_active) VALUES ('Daisy', 'Flores', 'valvarez@allen-powell.com', 'Development worker, international aid', 86045.89, '2022-03-14', True);
INSERT INTO employees (first_name, last_name, email, department, salary, hire_date, is_active) VALUES ('Lauren', 'Wilson', 'bbrooks@boone.com', 'Patent examiner', 105388.39, '2018-11-08', True);
INSERT INTO employees (first_name, last_name, email, department, salary, hire_date, is_active) VALUES ('Helen', 'Lee', 'taylortaylor@rodriguez-barron.info', 'Presenter, broadcasting', 114101.86, '2020-03-15', False);
INSERT INTO employees (first_name, last_name, email, department, salary, hire_date, is_active) VALUES ('Jennifer', 'Schneider', 'meyerjulie@yahoo.com', 'Civil Service fast streamer', 62855.70, '2020-09-09', True);
INSERT INTO employees (first_name, last_name, email, department, salary, hire_date, is_active) VALUES ('Warren', 'Haynes', 'vazquezdaniel@gmail.com', 'Producer, radio', 79778.86, '2019-08-23', False);
INSERT INTO employees (first_name, last_name, email, department, salary, hire_date, is_active) VALUES ('Joshua', 'Lewis', 'dawnjones@yahoo.com', 'Therapist, nutritional', 81701.53, '2020-12-02', False);
INSERT INTO employees (first_name, last_name, email, department, salary, hire_date, is_active) VALUES ('Scott', 'Melton', 'ewinglisa@fernandez.com', 'Corporate investment banker', 68739.27, '2022-04-20', True);
INSERT INTO employees (first_name, last_name, email, department, salary, hire_date, is_active) VALUES ('Chelsea', 'Kemp', 'marielewis@hotmail.com', 'Energy engineer', 70240.44, '2019-12-16', True);
INSERT INTO employees (first_name, last_name, email, department, salary, hire_date, is_active) VALUES ('Tammy', 'Hill', 'jennifer08@davenport.com', 'Health physicist', 89492.47, '2021-04-07', True);
INSERT INTO employees (first_name, last_name, email, department, salary, hire_date, is_active) VALUES ('Austin', 'Shannon', 'cheryldougherty@walker.com', 'Advice worker', 76638.95, '2022-10-25', False);
INSERT INTO employees (first_name, last_name, email, department, salary, hire_date, is_active) VALUES ('Gabriel', 'Trevino', 'ohouston@gmail.com', 'Lawyer', 61960.11, '2023-08-24', False);
INSERT INTO employees (first_name, last_name, email, department, salary, hire_date, is_active) VALUES ('Marie', 'Harvey', 'theodore11@hotmail.com', 'Engineer, chemical', 106032.73, '2018-09-23', False);
INSERT INTO employees (first_name, last_name, email, department, salary, hire_date, is_active) VALUES ('Jasmine', 'Taylor', 'aaroncampbell@griffith.com', 'Dentist', 97697.78, '2020-09-16', True);
INSERT INTO employees (first_name, last_name, email, department, salary, hire_date, is_active) VALUES ('Pamela', 'Haley', 'stephenstevens@hotmail.com', 'Ambulance person', 109469.04, '2021-03-13', True);
INSERT INTO employees (first_name, last_name, email, department, salary, hire_date, is_active) VALUES ('Kyle', 'Davis', 'sarahwilliams@matthews-williams.com', 'Civil engineer, consulting', 67260.26, '2019-10-21', False);
INSERT INTO employees (first_name, last_name, email, department, salary, hire_date, is_active) VALUES ('Jasmine', 'Hughes', 'lunawilliam@guzman-rhodes.com', 'Location manager', 114204.04, '2022-10-03', True);
INSERT INTO employees (first_name, last_name, email, department, salary, hire_date, is_active) VALUES ('Andres', 'Wang', 'kennedycasey@yahoo.com', 'Plant breeder/geneticist', 65765.12, '2021-02-20', False);
INSERT INTO employees (first_name, last_name, email, department, salary, hire_date, is_active) VALUES ('Evan', 'Rogers', 'iosborne@powell.biz', 'Conservator, museum/gallery', 81857.84, '2019-12-20', False);
INSERT INTO employees (first_name, last_name, email, department, salary, hire_date, is_active) VALUES ('Michelle', 'Vasquez', 'qjordan@gmail.com', 'Estate agent', 94231.90, '2020-05-28', False);
INSERT INTO employees (first_name, last_name, email, department, salary, hire_date, is_active) VALUES ('Robert', 'Norton', 'gblake@foley.info', 'Chief Financial Officer', 85496.50, '2019-02-02', True);
INSERT INTO employees (first_name, last_name, email, department, salary, hire_date, is_active) VALUES ('Shannon', 'Mccullough', 'tinamcbride@newton.com', 'Careers adviser', 103633.62, '2021-12-28', False);
INSERT INTO employees (first_name, last_name, email, department, salary, hire_date, is_active) VALUES ('Michelle', 'Harvey', 'conniehensley@lewis.info', 'Gaffer', 113966.57, '2022-06-13', True);
INSERT INTO employees (first_name, last_name, email, department, salary, hire_date, is_active) VALUES ('Scott', 'Henderson', 'mtownsend@gmail.com', 'Forensic scientist', 82675.76, '2019-04-26', False);
INSERT INTO employees (first_name, last_name, email, department, salary, hire_date, is_active) VALUES ('Donald', 'Nguyen', 'david06@murphy.info', 'Art therapist', 65058.66, '2021-11-01', True);
INSERT INTO employees (first_name, last_name, email, department, salary, hire_date, is_active) VALUES ('Jennifer', 'Barnett', 'jasonmunoz@hotmail.com', 'Warden/ranger', 83899.02, '2020-04-13', True);
INSERT INTO employees (first_name, last_name, email, department, salary, hire_date, is_active) VALUES ('Theresa', 'Richardson', 'zacharylee@johnston.com', 'Financial adviser', 112047.76, '2021-04-22', False);
INSERT INTO employees (first_name, last_name, email, department, salary, hire_date, is_active) VALUES ('Kelly', 'Davis', 'johnsondiane@hotmail.com', 'Actuary', 87332.39, '2023-03-31', False);
INSERT INTO employees (first_name, last_name, email, department, salary, hire_date, is_active) VALUES ('Carolyn', 'Johnson', 'randyhall@hotmail.com', 'Occupational therapist', 118237.36, '2019-07-27', False);
INSERT INTO employees (first_name, last_name, email, department, salary, hire_date, is_active) VALUES ('Robert', 'Williams', 'peter28@edwards.net', 'Engineer, land', 104883.31, '2023-05-11', False);
INSERT INTO employees (first_name, last_name, email, department, salary, hire_date, is_active) VALUES ('Mary', 'Wade', 'williammolina@ortiz.com', 'Tax inspector', 78891.42, '2022-01-21', True);
INSERT INTO employees (first_name, last_name, email, department, salary, hire_date, is_active) VALUES ('Susan', 'Nguyen', 'jamesmoore@andrade.com', 'Artist', 105074.36, '2023-04-28', True);
INSERT INTO employees (first_name, last_name, email, department, salary, hire_date, is_active) VALUES ('Jason', 'Vance', 'charleswalker@white.org', 'Surgeon', 98942.57, '2020-12-04', False);
INSERT INTO employees (first_name, last_name, email, department, salary, hire_date, is_active) VALUES ('Larry', 'Carson', 'tammy47@garcia.com', 'Journalist, broadcasting', 92504.17, '2020-03-19', False);
INSERT INTO employees (first_name, last_name, email, department, salary, hire_date, is_active) VALUES ('Sherri', 'Armstrong', 'hunteramanda@cummings.biz', 'Oceanographer', 56475.08, '2022-03-12', False);
INSERT INTO employees (first_name, last_name, email, department, salary, hire_date, is_active) VALUES ('Joe', 'Tanner', 'fmccarthy@gmail.com', 'Chartered public finance accountant', 54109.90, '2018-12-19', True);
INSERT INTO employees (first_name, last_name, email, department, salary, hire_date, is_active) VALUES ('Jason', 'Brown', 'perezholly@anderson.com', 'Fashion designer', 86204.18, '2019-06-16', True);
INSERT INTO employees (first_name, last_name, email, department, salary, hire_date, is_active) VALUES ('Kelly', 'Patterson', 'maddoxmarcia@foster.com', 'Ship broker', 73827.57, '2022-04-17', True);
INSERT INTO employees (first_name, last_name, email, department, salary, hire_date, is_active) VALUES ('Christopher', 'Howard', 'jessica30@hotmail.com', 'Programmer, systems', 91739.06, '2023-06-22', True);
INSERT INTO employees (first_name, last_name, email, department, salary, hire_date, is_active) VALUES ('Michelle', 'Francis', 'amanda93@winters-martin.com', 'Accountant, chartered', 67929.13, '2019-04-03', False);
INSERT INTO employees (first_name, last_name, email, department, salary, hire_date, is_active) VALUES ('Shannon', 'Roberts', 'erik42@lloyd.com', 'Phytotherapist', 117797.08, '2019-07-19', False);
INSERT INTO employees (first_name, last_name, email, department, salary, hire_date, is_active) VALUES ('Matthew', 'Garcia', 'mileserin@yahoo.com', 'Housing manager/officer', 93396.16, '2022-01-06', False);
INSERT INTO employees (first_name, last_name, email, department, salary, hire_date, is_active) VALUES ('Laura', 'Jordan', 'msmith@hotmail.com', 'Careers information officer', 99160.97, '2021-09-18', False);
INSERT INTO employees (first_name, last_name, email, department, salary, hire_date, is_active) VALUES ('Michelle', 'Rodriguez', 'dustin59@salazar.info', 'Educational psychologist', 53936.38, '2020-03-26', False);
INSERT INTO employees (first_name, last_name, email, department, salary, hire_date, is_active) VALUES ('James', 'James', 'vbrown@diaz.biz', 'Regulatory affairs officer', 75873.28, '2020-02-18', True);
INSERT INTO employees (first_name, last_name, email, department, salary, hire_date, is_active) VALUES ('Hayley', 'Ray', 'huntelizabeth@gmail.com', 'Careers information officer', 76500.10, '2020-01-30', True);
INSERT INTO employees (first_name, last_name, email, department, salary, hire_date, is_active) VALUES ('Dennis', 'Oconnor', 'robinli@gmail.com', 'Engineer, civil (consulting)', 104976.42, '2021-11-22', True);
INSERT INTO employees (first_name, last_name, email, department, salary, hire_date, is_active) VALUES ('Meredith', 'Jones', 'ecochran@james.net', 'Optician, dispensing', 105439.21, '2019-04-20', True);
INSERT INTO employees (first_name, last_name, email, department, salary, hire_date, is_active) VALUES ('Belinda', 'Bentley', 'justinmoreno@gmail.com', 'Software engineer', 66937.24, '2021-02-07', False);
INSERT INTO employees (first_name, last_name, email, department, salary, hire_date, is_active) VALUES ('Jesse', 'Smith', 'hufferik@mccoy.org', 'Financial controller', 104017.55, '2022-07-10', True);
INSERT INTO employees (first_name, last_name, email, department, salary, hire_date, is_active) VALUES ('Hailey', 'Humphrey', 'steventravis@pollard.net', 'Cabin crew', 98885.46, '2021-11-07', False);
INSERT INTO employees (first_name, last_name, email, department, salary, hire_date, is_active) VALUES ('Kenneth', 'Moran', 'raydavid@yahoo.com', 'Immunologist', 118236.07, '2020-07-24', True);
INSERT INTO employees (first_name, last_name, email, department, salary, hire_date, is_active) VALUES ('Jennifer', 'Powell', 'jimmy17@little.org', 'Event organiser', 102203.45, '2021-09-24', False);
INSERT INTO employees (first_name, last_name, email, department, salary, hire_date, is_active) VALUES ('Ian', 'Hardy', 'david75@hotmail.com', 'Radio broadcast assistant', 86076.25, '2019-08-28', True);
INSERT INTO employees (first_name, last_name, email, department, salary, hire_date, is_active) VALUES ('Eileen', 'Medina', 'xhouston@yahoo.com', 'Company secretary', 64374.14, '2020-07-27', True);
INSERT INTO employees (first_name, last_name, email, department, salary, hire_date, is_active) VALUES ('Meagan', 'Cardenas', 'rwillis@yahoo.com', 'Hospital doctor', 73383.76, '2018-11-06', False);
INSERT INTO employees (first_name, last_name, email, department, salary, hire_date, is_active) VALUES ('Tricia', 'Burke', 'leviblanchard@gmail.com', 'IT trainer', 51633.02, '2022-12-16', False);
INSERT INTO employees (first_name, last_name, email, department, salary, hire_date, is_active) VALUES ('Gregory', 'Zamora', 'chasedavid@lucas.com', 'Field trials officer', 64155.66, '2021-01-11', True);
INSERT INTO employees (first_name, last_name, email, department, salary, hire_date, is_active) VALUES ('Michelle', 'Ross', 'woodardkaren@hotmail.com', 'Naval architect', 53053.53, '2020-03-27', True);
INSERT INTO employees (first_name, last_name, email, department, salary, hire_date, is_active) VALUES ('Walter', 'Mckinney', 'allen23@mitchell.com', 'Therapist, sports', 68269.45, '2022-06-12', False);
INSERT INTO employees (first_name, last_name, email, department, salary, hire_date, is_active) VALUES ('Theresa', 'Brooks', 'mitchell59@mahoney.com', 'Further education lecturer', 92232.79, '2023-06-30', True);
INSERT INTO employees (first_name, last_name, email, department, salary, hire_date, is_active) VALUES ('Kimberly', 'Howe', 'brian06@alexander.com', 'Scientist, research (life sciences)', 86076.33, '2022-03-10', False);
INSERT INTO employees (first_name, last_name, email, department, salary, hire_date, is_active) VALUES ('Ryan', 'Lee', 'robinsontroy@gmail.com', 'Set designer', 56000.19, '2022-05-11', False);
INSERT INTO employees (first_name, last_name, email, department, salary, hire_date, is_active) VALUES ('Leslie', 'Torres', 'derrick37@berry.biz', 'Marketing executive', 65044.88, '2020-04-17', False);
INSERT INTO employees (first_name, last_name, email, department, salary, hire_date, is_active) VALUES ('Chad', 'Gaines', 'scottrodriguez@clark-smith.biz', 'Health physicist', 69617.64, '2020-12-02', True);
INSERT INTO employees (first_name, last_name, email, department, salary, hire_date, is_active) VALUES ('Vincent', 'Davis', 'douglas89@french.biz', 'Engineer, petroleum', 82675.49, '2022-11-27', False);
INSERT INTO employees (first_name, last_name, email, department, salary, hire_date, is_active) VALUES ('Anthony', 'Mills', 'terrianderson@hotmail.com', 'Chartered management accountant', 82871.90, '2020-07-14', True);
INSERT INTO employees (first_name, last_name, email, department, salary, hire_date, is_active) VALUES ('James', 'Adkins', 'richardryan@hotmail.com', 'Tree surgeon', 110405.32, '2021-08-12', False);
INSERT INTO employees (first_name, last_name, email, department, salary, hire_date, is_active) VALUES ('Ashley', 'Nguyen', 'matthew18@gomez.biz', 'Research officer, trade union', 83402.09, '2021-04-08', False);
INSERT INTO employees (first_name, last_name, email, department, salary, hire_date, is_active) VALUES ('Kimberly', 'Simpson', 'williamstrong@hotmail.com', 'Public relations account executive', 89595.41, '2021-08-31', False);
INSERT INTO employees (first_name, last_name, email, department, salary, hire_date, is_active) VALUES ('Keith', 'Martinez', 'jimmy82@yahoo.com', 'Armed forces technical officer', 67677.07, '2022-09-06', False);
INSERT INTO employees (first_name, last_name, email, department, salary, hire_date, is_active) VALUES ('Mary', 'Garcia', 'robertmiles@yahoo.com', 'Designer, exhibition/display', 78934.72, '2022-02-12', True);
INSERT INTO employees (first_name, last_name, email, department, salary, hire_date, is_active) VALUES ('James', 'Young', 'amber90@gonzalez.com', 'Architectural technologist', 50480.16, '2022-06-05', True);
INSERT INTO employees (first_name, last_name, email, department, salary, hire_date, is_active) VALUES ('Stephanie', 'Harrison', 'stephanie37@yahoo.com', 'Armed forces operational officer', 86714.61, '2020-06-20', False);
INSERT INTO employees (first_name, last_name, email, department, salary, hire_date, is_active) VALUES ('Rachel', 'Campbell', 'fkim@kelley-smith.com', 'Engineer, control and instrumentation', 62034.10, '2022-10-14', True);
INSERT INTO employees (first_name, last_name, email, department, salary, hire_date, is_active) VALUES ('James', 'Perez', 'michael65@gmail.com', 'Corporate treasurer', 114839.97, '2019-06-26', True);
INSERT INTO employees (first_name, last_name, email, department, salary, hire_date, is_active) VALUES ('Michael', 'Palmer', 'shunter@yahoo.com', 'Engineer, civil (consulting)', 69084.14, '2020-02-08', False);
INSERT INTO employees (first_name, last_name, email, department, salary, hire_date, is_active) VALUES ('Timothy', 'Salazar', 'robert79@yahoo.com', 'Herpetologist', 75217.12, '2019-02-09', True);
INSERT INTO employees (first_name, last_name, email, department, salary, hire_date, is_active) VALUES ('Anthony', 'Huber', 'jared73@gmail.com', 'Sales promotion account executive', 118938.65, '2022-12-26', False);
INSERT INTO employees (first_name, last_name, email, department, salary, hire_date, is_active) VALUES ('Brian', 'Smith', 'lhughes@green.info', 'Therapist, art', 84099.73, '2021-02-27', True);
INSERT INTO employees (first_name, last_name, email, department, salary, hire_date, is_active) VALUES ('Hayley', 'Yates', 'browndestiny@gmail.com', 'Administrator, local government', 50309.14, '2020-02-01', True);
INSERT INTO employees (first_name, last_name, email, department, salary, hire_date, is_active) VALUES ('Stephanie', 'Rice', 'audrey77@hotmail.com', 'Comptroller', 113955.20, '2020-12-20', False);
INSERT INTO employees (first_name, last_name, email, department, salary, hire_date, is_active) VALUES ('Matthew', 'Short', 'jennifer50@parsons.biz', 'Music therapist', 76901.43, '2018-10-09', True);
INSERT INTO employees (first_name, last_name, email, department, salary, hire_date, is_active) VALUES ('Caitlin', 'Schmidt', 'andrew59@yahoo.com', 'Audiological scientist', 69337.27, '2021-05-06', True);
INSERT INTO employees (first_name, last_name, email, department, salary, hire_date, is_active) VALUES ('Teresa', 'Hicks', 'shall@wade-lang.com', 'Call centre manager', 60978.47, '2018-10-05', False);
INSERT INTO employees (first_name, last_name, email, department, salary, hire_date, is_active) VALUES ('Melissa', 'Alexander', 'howardryan@murray.com', 'Clothing/textile technologist', 54441.92, '2022-01-19', False);
INSERT INTO employees (first_name, last_name, email, department, salary, hire_date, is_active) VALUES ('Natalie', 'Davis', 'cmason@hotmail.com', 'Rural practice surveyor', 69423.63, '2018-08-27', False);
INSERT INTO employees (first_name, last_name, email, department, salary, hire_date, is_active) VALUES ('Ashley', 'Mcbride', 'xbailey@king.com', 'Psychotherapist', 58067.50, '2018-12-13', True);
INSERT INTO employees (first_name, last_name, email, department, salary, hire_date, is_active) VALUES ('Christopher', 'Gibbs', 'sheila22@moran.info', 'Animator', 94307.99, '2023-01-28', True);
INSERT INTO employees (first_name, last_name, email, department, salary, hire_date, is_active) VALUES ('Aaron', 'Reyes', 'jfloyd@yahoo.com', 'Nature conservation officer', 84738.27, '2022-03-15', False);
INSERT INTO employees (first_name, last_name, email, department, salary, hire_date, is_active) VALUES ('Christie', 'Diaz', 'ashleymoon@johnson-bryant.info', 'Records manager', 78733.96, '2022-09-23', False);
INSERT INTO employees (first_name, last_name, email, department, salary, hire_date, is_active) VALUES ('Crystal', 'Parker', 'erin07@anderson.com', 'Herbalist', 65828.53, '2020-09-20', False);
INSERT INTO employees (first_name, last_name, email, department, salary, hire_date, is_active) VALUES ('Bryan', 'Pacheco', 'markmiller@yahoo.com', 'Ecologist', 91421.79, '2022-10-20', False);
INSERT INTO employees (first_name, last_name, email, department, salary, hire_date, is_active) VALUES ('Maria', 'Ford', 'ocoleman@watkins.biz', 'Broadcast journalist', 71692.25, '2022-06-28', True);
INSERT INTO employees (first_name, last_name, email, department, salary, hire_date, is_active) VALUES ('Robert', 'Underwood', 'vvelez@hotmail.com', 'Quarry manager', 65152.05, '2019-09-06', True);
INSERT INTO employees (first_name, last_name, email, department, salary, hire_date, is_active) VALUES ('Derek', 'Newton', 'amanda21@roberts-wiley.info', 'Dance movement psychotherapist', 113926.30, '2020-05-16', False);
INSERT INTO employees (first_name, last_name, email, department, salary, hire_date, is_active) VALUES ('Monica', 'Castaneda', 'thompsonchristopher@yahoo.com', 'Multimedia specialist', 118011.04, '2023-04-04', True);