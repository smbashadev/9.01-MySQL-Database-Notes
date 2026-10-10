# DQL: SELECT Queries

SELECT retrieves data and does not by itself modify stored rows.

## Select columns

```sql
SELECT emp_id, f_name, salary
FROM emp;
```

## Filter and sort

```sql
SELECT emp_id, f_name, salary
FROM emp
WHERE salary > 30000
ORDER BY salary DESC;
```

## Aggregate

```sql
SELECT dept_id, COUNT(*) AS employee_count
FROM emp
GROUP BY dept_id;
```

## Subquery

```sql
SELECT emp_id, f_name, salary
FROM emp
WHERE salary > (SELECT AVG(salary) FROM emp);
```

## Row limiting

```sql
SELECT emp_id, f_name, salary
FROM emp
ORDER BY salary DESC
LIMIT 5;
```

MySQL uses `LIMIT`; Oracle's row-limiting syntax differs.
