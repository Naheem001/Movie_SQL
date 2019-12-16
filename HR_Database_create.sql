create table regions(
region_id integer not null,
region_name varchar(25) not null,
CONSTRAINT	regions_PK PRIMARY KEY(region_id)
);

create table countries(
country_id char(2) not null,
country_name varchar(25) not null,
region_id	integer	not null,
CONSTRAINT countries_PK PRIMARY KEY(country_id, region_id),
CONSTRAINT	countries	FOREIGN KEY(region_id)	REFERENCES	region(region_id)
);

create table locations(
location_id integer not null,
street_address varchar(25) not null,
postal_code varchar(12) not null,
city varchar(30) not null,
state_province varchar(12) not null,
country_id char(3)	not null,
CONSTRAINT locations_PK PRIMARY KEY(location_id, country_id),
CONSTRAINT	locations_FK	FOREIGN KEY(country_id)	REFERENCES	countries(country_id)
);

create table departments(
department_id integer not null,
department_name varchar(30) not null,
manager_id integer not null,
location_id integer not null,
CONSTRAINT departments_PK PRIMARY KEY(department_id, location_id),
CONSTRAINT	departments_FK	FOREIGN KEY(location_id)	REFERENCES	locations(location_id)
);

create table jobs(
job_id varchar(10) not null,
job_title varchar(35) not null,
min_salary integer not null,
max_salary integer not null,
CONSTRAINT jobs_PK PRIMARY KEY(job_id)
);

create table job_history(
employee_id integer not null,
start_date date not null,
end_date date not null,
job_id varchar(10) not null,
department_id integer not null,
CONSTRAINT job_history_PK PRIMARY KEY(employee_id, start_date, job_id, department_id),
CONSTRAINT	job_history_FK	FOREIGN KEY(job_id)	REFERENCES	jobs(job_id),
CONSTRAINT	job_history_FK2	FOREIGN KEY(department_id)	REFERENCES	departments(department_id)
);

create table employees(
employee_id integer not null,
first_name varchar(20) not null,
last_name varchar(25) not null,
email varchar(25) not null,
phone_number varchar(20) not null,
hire_date date not null,
job_id varchar(10) not null,
salary integer not null,
commission_pct integer null,
manager_id integer not null,
department_id integer not null,
CONSTRAINT	employees_FK3	FOREIGN KEY(employee_id)	REFERENCES	job_history(employee_id),
CONSTRAINT employees_PK PRIMARY KEY(employee_id, department_id, job_id),
CONSTRAINT	employees_FK	FOREIGN KEY(job_id)	REFERENCES	jobs(job_id),
CONSTRAINT	employees_FK2	FOREIGN KEY(department_id)	REFERENCES	departments(department_id)
);

create table job_grades(
grade_level varchar(2) not null,
lowest_sal integer not null,
highest_sal integer not null,
CONSTRAINT job_grades_PK PRIMARY KEY(grade_level)
);