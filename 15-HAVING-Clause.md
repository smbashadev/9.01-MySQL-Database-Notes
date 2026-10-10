# HAVING Clause

`HAVING` filters grouped results. It is commonly used with aggregate functions, whereas `WHERE` filters individual rows before aggregation.

## 1. Departments whose maximum salary exceeds 30000

**Question:** Display department ID and maximum salary for departments whose maximum salary is greater than 30000.

```sql
SELECT dept_id, MAX(salary) AS maximum_salary
FROM emp
GROUP BY dept_id
HAVING MAX(salary) > 30000
ORDER BY dept_id;
```

## 2. Groups with multiple employees

```sql
SELECT dept_id, COUNT(*) AS employee_count
FROM emp
GROUP BY dept_id
HAVING COUNT(*) > 1;
```

## 3. WHERE and HAVING together

```sql
SELECT dept_id, AVG(salary) AS average_salary
FROM emp
WHERE salary > 10000
GROUP BY dept_id
HAVING AVG(salary) > 30000;
```

First, rows with salary greater than 10000 are considered. Then the average is calculated per department. Finally, only groups with average salary greater than 30000 are returned.
