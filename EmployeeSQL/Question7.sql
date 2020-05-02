--List all employees in the Sales and Development departments, including their employee number,
--last name, first name, and department name.

SELECT 
	emp.emp_no,
	emp.last_name,
	emp.first_name,
	dept.dept_name
FROM employees as emp
	INNER JOIN dept_emp as de on emp.emp_no = de.emp_no
	INNER JOIN departments as dept on de.dept_no = dept.dept_no
WHERE dept.dept_name = 'Sales' OR dept.dept_name = 'Development'
ORDER BY dept.dept_name, de.dept_no, emp.emp_no
;