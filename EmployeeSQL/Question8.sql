--In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

SELECT 
	emp.last_name,
	COUNT(DISTINCT emp.emp_no)
FROM employees as emp
GROUP BY emp.last_name
ORDER BY 2 DESC
;