-- 1. Salary by employee.
SELECT e.emp_no AS Number_of_employee, e.last_name, e.first_name, e.gender, s.salary
FROM employees e 
	INNER JOIN salaries s
		ON s.emp_no = e.emp_no
	
-- 2. Employees hired in 1986.
SELECT * 
FROM employees
WHERE hire_date 
	BETWEEN '1986-01-01' AND '1986-12-31'
	
-- 3. Manager of each department.
SELECT d.dept_no AS Department_Number, d.dept_name AS Department_Name, dm.emp_no AS Managers_employee_number,
	   e.last_name, e.first_name, dm.from_date, dm.to_date
FROM dept_manager dm
	INNER JOIN departments d
		ON d.dept_no = dm.dept_no
	INNER JOIN employees e
		ON e.emp_no = dm.emp_no

-- 4. List the department of each employee with the following information: 
-- employee number, last name, first name, and department name.
-- 5. List all employees whose first name is "Hercules" and last names begin with "B."
-- 6. List all employees in the Sales department, including their employee number, last name, 
-- first nameand department name.
-- 7. List all employees in the Sales and Development departments, including their employee number, 
-- last name, first name, and department name.
-- 8. In descending order, list the frequency count of employee last names, 
-- i.e., how many employees share each last name.