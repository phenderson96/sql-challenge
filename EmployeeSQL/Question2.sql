--List first name, last name, and hire date for employees who were hired in 1986.

SELECT 
	emp.emp_no as "Employee Num",
	emp.last_name as "Last Name",
	emp.first_name as "First Name",
	emp.hire_date as "Hire Date"
	
FROM employees as emp
WHERE DATE_PART('year', emp.hire_date) = 1986
ORDER BY emp.emp_no
;