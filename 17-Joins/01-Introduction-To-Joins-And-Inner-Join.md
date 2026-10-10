# Introduction to Joins and INNER JOIN

## 1. Why joins are needed

Related information is often normalized into different tables. For example, `emp.dept_id` identifies an employee's department, while `dept.dept_name` stores the department name. A join retrieves both in one result.

## 2. INNER JOIN

```sql
SELECT e.emp_id, e.f_name, e.salary, d.dept_name
FROM emp AS e
INNER JOIN dept AS d
    ON e.dept_id = d.dept_id;
```

Only employees whose department ID matches a row in `dept` appear.

## 3. Join two arbitrary tables

**Question:** Display rows from two tables where their `column2` values are equal.

```sql
SELECT t1.*, t2.*
FROM table1 AS t1
INNER JOIN table2 AS t2
    ON t1.column2 = t2.column2;
```

Replace the example table and column names with real schema names before executing it.

## 4. Join condition versus WHERE

The join condition describes how rows match. `WHERE` then filters the joined result. For an inner join, many conditions can be written in either place, but for outer joins, moving a right-table filter from `ON` to `WHERE` can change the result.
