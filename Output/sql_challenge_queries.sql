
select e.emp_no, e.last_name, e.first_name, e.sex, s.salary
from "Employees" e
join "Salaries" s on e.emp_no = s.emp_no;

select first_name, last_name, hire_date
from "Employees"
where hire_date >= '01/01/1986' and hire_date < '01/01/1987';

select dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
from "Dept_manager" dm
join "Department" d on dm.dept_no = d.dept_no
join "Employees" e on dm.emp_no = e.emp_no;

select e.emp_no, e.last_name, e.first_name, de.dept_no, d.dept_name
from "Employees" e
join "Dept_emp" de on e.emp_no = de.emp_no
join "Department" d on de.dept_no = d.dept_no;

select first_name, last_name, sex
from "Employees"
where first_name = 'Hercules' and last_name like 'B%';


select e.emp_no, e.last_name, e.first_name
from "Employees" e
join "Dept_emp" de on e.emp_no = de.emp_no
join "Department" d on de.dept_no = d.dept_no
where d.dept_name = 'Sales';

select e.emp_no, e.last_name, e.first_name
from "Employees" e
join "Dept_emp" de on e.emp_no = de.emp_no
join "Department" d on de.dept_no = d.dept_no
where d.dept_name = 'Sales', 'Development';

SELECT last_name, COUNT(*) AS frequency
FROM "Employees"
GROUP BY last_name
ORDER BY frequency DESC;

