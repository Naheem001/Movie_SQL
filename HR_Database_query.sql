#Write a query in SQL to display the full name (first and last name), and salary for those employees who earn below 6000
select concat(first_name," ",last_name) as "Full Name", salary
from employees
where salary < 6000;

#Write a query in SQL to display the first name, last name, department ID, and department name for each employee.
select first_name, last_name, employees.department_id, department_name
from employees join departments
on employees.department_id = departments.department_id;


#Write a query in SQL to display the first and last_name, department number and salary for those employees who earn more than 8000
select first_name, last_name, department_id, salary
from employees
where salary > 8000;

#Write a query in SQL to display the first and last name, and department number for all employees whose last name is “McEwen”
select first_name, last_name, department_id
from employees
where last_name = "McEwen";

#Write a query in SQL to display the full name (first and last), hire date, salary, and department number for those employees whose first name does not containing the letter M and make the result set in ascending order by department number.
select concat(first_name," ",last_name) as "Full Name", hire_date, salary, department_id
from employees
where first_name not LIKE '%M%'
order by department_id ASC;

#Write a query in SQL to display the full name (first and last), the phone number and email separated by hyphen, and salary, for those employees whose salary is within the range of 9000 and 17000. The column headings assign with Full_Name, Contact_Detailsand Remuneration respectively
select concat(first_name," ", last_name) as "Full Name", concat(phone_number," - ",email) as "Contact_Details", salary as "Renumeration"
from employees
where salary between 9000 and 17000;

#Write a query in SQL to display the full name (first and last), job id and date of hire for those employees who was hired during May 24th, 2007 and April 21st, 2008.
select concat(first_name," ", last_name) as "Full Name", job_id, hire_date
from employees
where hire_date = "2007-05-24" and "2008-04-21";

#Write a query in SQL to display the full name (first and last name), and department number for those employees who works either in department 60 or 80
select concat(first_name," ", last_name) as "Full Name", department_id
from employees
where department_id = 60 or department_id = 80;

#Write a query in SQL to display the first and last name, departmentID, city, and state province for each employee.
select concat(first_name," ", last_name) as "Full Name", employees.department_id, city, state_province
from employees join departments
on employees.department_id = departments.department_id
join locations
on departments.location_id = locations.location_id;

#Write a query in SQL to display the first name, last name, salary, and job grade for all employees
select distinct first_name, last_name, salary
from employees join job_grades;
