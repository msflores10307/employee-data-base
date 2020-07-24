/*
Load Script:

This script allows me to load each of the tables with a single step. 
This script was required because PGAdmin did not correctly map 
the data to fields when I attempted to load using the user interface. 
I believe this is because it attempted to load data into the auto-incremented 
primary key, causing a data type error. 
*/

COPY departments(dept_no,dept_name) 
FROM 'C:\Users\msflo\DSBootcamp\sql-challenge\data\departments.csv' DELIMITER ',' CSV HEADER;

COPY titles(title_id,title) 
FROM 'C:\Users\msflo\DSBootcamp\sql-challenge\data\titles.csv' DELIMITER ',' CSV HEADER;

COPY employees(emp_no,emp_title_id,birth_date,first_name,last_name,sex,hire_date) 
FROM 'C:\Users\msflo\DSBootcamp\sql-challenge\data\employees.csv' DELIMITER ',' CSV HEADER;

COPY dept_emp(emp_no,dept_no) 
FROM 'C:\Users\msflo\DSBootcamp\sql-challenge\data\dept_emp.csv' DELIMITER ',' CSV HEADER;

COPY dept_manager(dept_no,emp_no) 
FROM 'C:\Users\msflo\DSBootcamp\sql-challenge\data\dept_manager.csv' DELIMITER ',' CSV HEADER;

COPY salaries(emp_no,salary) 
FROM 'C:\Users\msflo\DSBootcamp\sql-challenge\data\salaries.csv' DELIMITER ',' CSV HEADER;