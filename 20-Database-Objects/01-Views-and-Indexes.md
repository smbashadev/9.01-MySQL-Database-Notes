# Views and Indexes

## 1. Views

A view is a named SELECT statement. It can simplify repeated queries and expose only selected columns, but its updatability depends on the view definition.

```sql
CREATE VIEW employee_public AS
SELECT emp_id, f_name, l_name, dept_id
FROM emp;

SELECT * FROM employee_public;
```

Remove a view:

```sql
DROP VIEW employee_public;
```

## 2. Indexes

An index can improve lookups, joins, and sorting, but uses storage and adds overhead to inserts, updates, and deletes.

```sql
CREATE INDEX idx_emp_dept_id ON emp(dept_id);
SHOW INDEX FROM emp;
DROP INDEX idx_emp_dept_id ON emp;
```

A primary key and a UNIQUE constraint create supporting indexes. Avoid adding indexes without considering query patterns and write costs.
