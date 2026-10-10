# GROUP BY Clause

`GROUP BY` combines rows that share the same grouping values. Aggregate functions can then calculate one result for each group.

## 1. Total salary by department

**Question:** Display department ID and the sum of salary for employees in each department.

```sql
SELECT dept_id, SUM(salary) AS total_salary
FROM emp
GROUP BY dept_id
ORDER BY dept_id;
```

## 2. Count employees by job

```sql
SELECT job_id, COUNT(*) AS employee_count
FROM emp
GROUP BY job_id
ORDER BY job_id;
```

## 3. Group by multiple columns

```sql
SELECT dept_id, job_id, AVG(salary) AS average_salary
FROM emp
GROUP BY dept_id, job_id;
```

Each distinct `(dept_id, job_id)` combination forms a group.

## 4. WHERE versus GROUP BY

`WHERE` filters individual rows before grouping. `HAVING` filters groups after aggregate values have been calculated.

## 5. MySQL grouping behavior

With `ONLY_FULL_GROUP_BY` enabled, selected nonaggregate expressions generally must be grouped or functionally dependent on grouped columns. Do not rely on arbitrary values from rows that are not part of the grouping rule.
