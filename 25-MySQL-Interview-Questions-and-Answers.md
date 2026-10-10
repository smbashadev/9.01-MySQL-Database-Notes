# MySQL Interview Questions and Answers

## Fundamentals

### 1. What is MySQL?
MySQL is a relational database management system that stores data in tables and supports SQL queries, constraints, indexes, transactions, and programmable objects.

### 2. What is the difference between DBMS and RDBMS?
A DBMS manages stored data. An RDBMS organizes data into relations and supports relational concepts such as tables, keys, and integrity constraints.

### 3. What is a primary key?
A primary key uniquely identifies each row and does not allow NULL. A table can define a composite primary key using multiple columns.

### 4. What is a foreign key?
A foreign key enforces a relationship to a referenced key and protects referential integrity.

### 5. WHERE versus HAVING?
`WHERE` filters rows before grouping. `HAVING` filters grouped results, commonly using aggregate expressions.

### 6. DELETE versus TRUNCATE versus DROP?
`DELETE` removes rows and can filter with WHERE. `TRUNCATE` removes all rows but retains the table. `DROP` removes the table object itself. Their transaction and trigger behavior differs.

### 7. CHAR versus VARCHAR?
`CHAR` is fixed-length character storage, while `VARCHAR` stores variable-length strings up to its declared limit. Actual storage behavior also includes encoding and length overhead.

### 8. What does NULL mean?
NULL represents missing or unknown data. Test it with `IS NULL`, not `= NULL`.

### 9. What is an index?
An index is a data structure that can accelerate retrieval, joins, and sorting. It requires storage and can slow data modifications.

### 10. What is a view?
A view is a named SELECT query that can simplify access to data. Its updatability depends on its definition.

## Query questions

### 11. Find the second-highest distinct salary.

```sql
SELECT DISTINCT salary
FROM emp
ORDER BY salary DESC
LIMIT 1 OFFSET 1;
```

### 12. Find employees earning above the company average.

```sql
SELECT emp_id, f_name, salary
FROM emp
WHERE salary > (SELECT AVG(salary) FROM emp);
```

### 13. Count employees per department.

```sql
SELECT dept_id, COUNT(*) AS employee_count
FROM emp
GROUP BY dept_id;
```

### 14. Find departments with no employees.

```sql
SELECT d.dept_id, d.dept_name
FROM dept AS d
LEFT JOIN emp AS e ON e.dept_id = d.dept_id
WHERE e.emp_id IS NULL;
```

### 15. Explain MySQL's full outer join limitation.
MySQL does not support direct `FULL OUTER JOIN` syntax. A common workaround combines a LEFT JOIN with unmatched rows from the right table using `UNION ALL`.

## Oracle SQL transition

### 16. What replaces Oracle `SYSDATE`?
Use `NOW()` when a date and time are needed, or `CURRENT_DATE()` when the session's current date is needed.

### 17. What replaces Oracle `ADD_MONTHS()`?
Use `DATE_ADD(date_value, INTERVAL n MONTH)`.

### 18. What replaces Oracle `VARCHAR2`?
MySQL generally uses `VARCHAR`, with a length chosen for the column and supported character set.
