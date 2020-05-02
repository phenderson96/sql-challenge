--List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

SELECT
	mgmt.dept_no as "Department Number",
	dept.dept_name as "Department Name",
	mgmt.emp_no as "Employee Number",
	emp.last_name as "Last Name",
	emp.first_name as "First Name",
	emp.hire_date as "Hire Date",
	mgmt.from_date as "Department Start Date",
	mgmt.to_date as "Department End Date"
FROM dept_manager as mgmt
	INNER JOIN employees as emp on mgmt.emp_no = emp.emp_no
	INNER JOIN departments as dept on mgmt.dept_no = dept.dept_no
ORDER BY mgmt.dept_no, mgmt.from_date
;
