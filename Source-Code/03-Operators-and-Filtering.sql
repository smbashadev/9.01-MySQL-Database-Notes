USE kodnest_sql_practice;

-- Arithmetic expression
SELECT emp_id, salary, salary * 1.10 AS salary_after_hike
FROM emp;

-- Relational operator
SELECT emp_id, f_name, l_name
FROM emp
WHERE salary <= 34000;

-- BETWEEN includes both endpoints
SELECT emp_id, f_name, commission_pct
FROM emp
WHERE commission_pct BETWEEN 1.2 AND 1.5;

-- IN / NOT IN
SELECT grade, low_sal, high_sal
FROM j_grade
WHERE grade NOT IN ('A', 'B', 'D');

-- NULL test
SELECT emp_id, f_name
FROM emp
WHERE commission_pct IS NULL;

-- LIKE: @ is third character
SELECT emp_id, email
FROM emp
WHERE email LIKE '__@%';

-- Logical operator precedence made explicit
SELECT emp_id, f_name, job_id, salary
FROM emp
WHERE (job_id = 'AD_PRES' OR job_id = 'SA_REP')
  AND salary > 25000;
