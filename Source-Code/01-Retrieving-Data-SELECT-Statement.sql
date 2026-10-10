USE kodnest_sql_practice;

-- Display every employee.
SELECT * FROM emp;

-- Select specific columns.
SELECT emp_id, f_name, l_name, salary FROM emp;

-- Display salary after reducing it by 1000 without updating stored data.
SELECT emp_id, email, phone_number, salary, salary - 1000 AS reduced_salary
FROM emp;

-- Filter employee salary.
SELECT emp_id, f_name, l_name
FROM emp
WHERE salary <= 34000;

-- Display each department ID only once.
SELECT DISTINCT dept_id FROM emp;
