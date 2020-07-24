-- 1. List the following details of each employee: employee number, last name, first name, sex, and salary.
select 
a.emp_no,
first_name, 
last_name,
sex,
salary
from 
employees a
inner join salaries b
	on a.emp_no = b.emp_no

-- 2. List first name, last name, and hire date for employees who were hired in 1986.
select 
first_name,
last_name,
hire_date
from 
employees a
where hire_date between '1986-01-01' and '1986-12-31'
order by hire_date asc

-- 3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
select 
a.dept_no,
b.dept_name,
a.emp_no,
c.last_name,
c.first_name
from 
dept_manager a
inner join departments b
	on b.dept_no = a.dept_no
inner join employees c
	on a.emp_no = c.emp_no

-- 4. List the department of each employee with the following information: employee number, last name, first name, and department name.
select 
a.emp_no,
a.last_name,
a.first_name,
c.dept_name
from employees a
inner join dept_emp b
	on a.emp_no = b.emp_no
inner join departments c
	on c.dept_no = b.dept_no

-- 5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
select 
first_name,
last_name,
sex
from employees a
where 
first_name = 'Hercules'
and 
last_name like 'B%'

-- 6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
select a.emp_no,
a.last_name, 
a.first_name,
c.dept_name
from employees a
inner join dept_emp b
	on a.emp_no = b.emp_no 
inner join departments c
	on c.dept_no = b.dept_no
where c.dept_name = 'Marketing'

-- 7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
select a.emp_no,
a.last_name, 
a.first_name,
c.dept_name
from employees a
inner join dept_emp b
	on a.emp_no = b.emp_no 
inner join departments c
	on c.dept_no = b.dept_no
where c.dept_name in ('Sales','Development')

-- 8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
select last_name, count(distinct emp_no) as Frequency 
from 
employees a
group by last_name
order by count(distinct emp_no) desc