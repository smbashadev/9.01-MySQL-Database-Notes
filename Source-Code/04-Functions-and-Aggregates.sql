USE kodnest_sql_practice;

SELECT UPPER('Akash') AS uppercase_text;
SELECT SUBSTRING('PRABHAKARAN', 2, 5) AS extracted_text;
SELECT TRIM(LEADING 'm' FROM 'malayalam') AS trimmed_text;
SELECT ROUND(2678.345, -2) AS rounded_hundred;
SELECT TRUNCATE(2678.345, -2) AS truncated_hundred;
SELECT DATE_ADD('2014-02-14', INTERVAL 9 MONTH) AS new_date;

SELECT MIN(salary) AS minimum_salary,
       MAX(salary) AS maximum_salary,
       AVG(salary) AS average_salary,
       SUM(salary) AS total_salary
FROM emp;

SELECT dept_id, SUM(salary) AS total_salary
FROM emp
GROUP BY dept_id
ORDER BY dept_id;

SELECT dept_id, MAX(salary) AS maximum_salary
FROM emp
GROUP BY dept_id
HAVING MAX(salary) > 30000;
