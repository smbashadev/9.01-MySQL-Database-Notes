# Subqueries or Nested Queries

A **subquery** is a query nested inside another SQL statement. It can provide a value, a list of values, or a set of rows used by the outer query.

## 1. Scalar subquery

**Question:** Display employees earning more than the average salary.

```sql
SELECT emp_id, f_name, salary
FROM emp
WHERE salary > (SELECT AVG(salary) FROM emp);
```

The subquery returns one scalar value: the average salary.

## 2. IN with a subquery

**Question:** Display department ID and first name for employees working in the same department as Prabhakaran.

```sql
SELECT dept_id, f_name
FROM emp
WHERE dept_id IN (
    SELECT dept_id
    FROM emp
    WHERE f_name = 'Prabhakaran'
);
```

`IN` is useful if the subquery can return more than one department.

## 3. EXISTS

```sql
SELECT d.dept_id, d.dept_name
FROM dept AS d
WHERE EXISTS (
    SELECT 1
    FROM emp AS e
    WHERE e.dept_id = d.dept_id
);
```

`EXISTS` tests whether at least one matching row exists.

## 4. Correlated subquery

A correlated subquery refers to a value from the outer query.

```sql
SELECT e.emp_id, e.f_name, e.salary, e.dept_id
FROM emp AS e
WHERE e.salary > (
    SELECT AVG(e2.salary)
    FROM emp AS e2
    WHERE e2.dept_id = e.dept_id
);
```

This returns employees whose salary exceeds the average salary of their own department.

## 5. ANY and ALL

`> ANY (subquery)` means greater than at least one returned value. `> ALL (subquery)` means greater than every returned value. Empty result sets and NULL values require care when reasoning about these predicates.

## 6. NULL warning

`NOT IN (subquery)` can behave unexpectedly if the subquery returns NULL. `NOT EXISTS` is often a safer anti-match pattern when NULLs may occur.
