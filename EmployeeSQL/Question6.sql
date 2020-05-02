--List all employees in the Sales department, including their employee number, last name, first name, and department name.

SELECT 
	emp.emp_no,
	emp.last_name,
	emp.first_name,
	dept.dept_name,
	de.emp_no,
	de.dept_no
FROM employees as emp
	INNER JOIN dept_emp as de on emp.emp_no = de.emp_no
	INNER JOIN departments as dept on de.dept_no = dept.dept_no
WHERE dept.dept_name = 'Sales'
ORDER BY de.dept_no, emp.emp_no
;