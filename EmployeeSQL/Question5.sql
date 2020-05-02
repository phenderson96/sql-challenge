--List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT 
	emp.emp_no,
	emp.birth_date,
	emp.last_name,
	emp.first_name,
	emp.sex,
	emp.hire_date
FROM employees as emp
WHERE emp.first_name = 'Hercules'
	and emp.last_name LIKE '%B'
ORDER BY emp.last_name
;