USE kodnest_sql_practice;

-- Employees earning above the overall average.
SELECT emp_id, f_name, salary
FROM emp
WHERE salary > (SELECT AVG(salary) FROM emp);

-- Employee and department names.
SELECT e.emp_id, CONCAT(e.f_name, ' ', e.l_name) AS employee_name,
       d.dept_name
FROM emp AS e
INNER JOIN dept AS d ON d.dept_id = e.dept_id;

-- Departments with no employees.
SELECT d.dept_id, d.dept_name
FROM dept AS d
LEFT JOIN emp AS e ON e.dept_id = d.dept_id
WHERE e.emp_id IS NULL;

-- Full outer join emulation for MySQL.
SELECT e.emp_id, e.f_name, d.dept_id, d.dept_name
FROM emp AS e
LEFT JOIN dept AS d ON d.dept_id = e.dept_id
UNION ALL
SELECT e.emp_id, e.f_name, d.dept_id, d.dept_name
FROM emp AS e
RIGHT JOIN dept AS d ON d.dept_id = e.dept_id
WHERE e.emp_id IS NULL;

-- Salary compared with the average for the employee's own department.
SELECT e.emp_id, e.f_name, e.salary, e.dept_id
FROM emp AS e
WHERE e.salary > (
    SELECT AVG(e2.salary)
    FROM emp AS e2
    WHERE e2.dept_id = e.dept_id
);
