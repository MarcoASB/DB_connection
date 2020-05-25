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

-- 4. Department(s) of each employee 
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
	INNER JOIN dept_emp de 
		ON de.emp_no = e.emp_no
	INNER JOIN departments d
		ON d.dept_no = de.dept_no
		
-- 5. "Hercules B."
SELECT * 
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%'

-- 6. Sales department
SELECT de.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
	INNER JOIN dept_emp de 
		ON de.emp_no = e.emp_no
	INNER JOIN departments d
		ON d.dept_no = de.dept_no
WHERE dept_name = 'Sales'

-- 7. Sales and Development departments
SELECT de.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
	INNER JOIN dept_emp de 
		ON de.emp_no = e.emp_no
	INNER JOIN departments d
		ON d.dept_no = de.dept_no
WHERE dept_name = 'Sales' OR dept_name = 'Development' 

-- 8. 
-- In descending order, list the frequency count of employee last names, 
-- i.e., how many employees share each last name.
SELECT last_name, COUNT(last_name) AS Count
FROM employees
GROUP BY last_name
ORDER BY Count DESC
