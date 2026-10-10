# Outer Joins

Outer joins preserve rows from one side even when no matching row exists on the other side.

## 1. LEFT JOIN

```sql
SELECT e.emp_id, e.f_name, d.dept_name
FROM emp AS e
LEFT JOIN dept AS d
    ON e.dept_id = d.dept_id;
```

Every employee is retained. If no department matches, `dept_name` is NULL.

## 2. RIGHT JOIN

**Question:** Perform a right outer join between EMP and DEPT.

```sql
SELECT e.emp_id, e.f_name, d.dept_id, d.dept_name
FROM emp AS e
RIGHT JOIN dept AS d
    ON e.dept_id = d.dept_id;
```

Every department is retained, including departments without employees.

## 3. Full outer join workaround

MySQL does not directly implement `FULL OUTER JOIN`. Combine a left join with unmatched rows from the right table:

```sql
SELECT e.emp_id, e.f_name, d.dept_id, d.dept_name
FROM emp AS e
LEFT JOIN dept AS d
    ON e.dept_id = d.dept_id

UNION ALL

SELECT e.emp_id, e.f_name, d.dept_id, d.dept_name
FROM emp AS e
RIGHT JOIN dept AS d
    ON e.dept_id = d.dept_id
WHERE e.emp_id IS NULL;
```

The second query adds only departments that had no employee match, avoiding duplicates of matched rows. The selected columns and types must line up in both SELECT statements.
