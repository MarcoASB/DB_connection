-- 1. Salary by employee.
SELECT e.emp_no, e.last_name, e.first_name, e.gender, s.salary
FROM employees e 
	INNER JOIN salaries s
		ON s.emp_no = e.emp_no
	
-- 2. Employees hired in 1986.
SELECT * 
FROM employees
WHERE hire_date 
	BETWEEN '1986-01-01' AND '1986-12-31'
	
-- 3. List the manager of each department with the following information: 
-- department number, department name, the manager's employee number, last name, first name
-- and start and end employment dates.
-- 4. List the department of each employee with the following information: 
-- employee number, last name, first name, and department name.
-- 5. List all employees whose first name is "Hercules" and last names begin with "B."
-- 6. List all employees in the Sales department, including their employee number, last name, 
-- first nameand department name.
-- 7. List all employees in the Sales and Development departments, including their employee number, 
-- last name, first name, and department name.
-- 8. In descending order, list the frequency count of employee last names, 
-- i.e., how many employees share each last name.