

SELECT
dept_emp.emp_no,
employees.last_name,
employees.first_name,
departments.dept_name
FROM dept_emp
JOIN employees 
ON dept_emp.emp_no=employees.emp_no
JOIN departments
ON departments.dept_no=dept_emp.dept_no
WHERE departments.dept_name = 'Sales';

SELECT
dept_emp.emp_no,
employees.last_name,
employees.first_name,
departments.dept_name
FROM dept_emp
JOIN employees 
ON dept_emp.emp_no=employees.emp_no
JOIN departments
ON departments.dept_no=dept_emp.dept_no
WHERE departments.dept_name = 'Sales'
OR departments.dept_name = 'Development';

-- Select count of employees last names in descending order
SELECT last_name, COUNT(last_name) AS "freq_count"
FROM employees
GROUP BY last_name
ORDER BY "freq_count" DESC;

SELECT
dept_emp.emp_no,
employees.last_name,
employees.first_name,
departments.dept_name
FROM dept_emp
JOIN employees 
ON dept_emp.emp_no=employees.emp_no
JOIN departments 
ON departments.dept_no=dept_emp.dept_no;

SELECT
employees.last_name,
employees.first_name
FROM employees
WHERE
employees.first_name = 'Hercules'
AND
last_name like 'B%';