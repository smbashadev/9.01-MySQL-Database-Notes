# Joins: Practical Queries

## 1. Employee and department names

```sql
SELECT e.emp_id, CONCAT(e.f_name, ' ', e.l_name) AS employee_name,
       d.dept_name
FROM emp AS e
JOIN dept AS d ON d.dept_id = e.dept_id;
```

## 2. Departments with no employees

```sql
SELECT d.dept_id, d.dept_name
FROM dept AS d
LEFT JOIN emp AS e ON e.dept_id = d.dept_id
WHERE e.emp_id IS NULL;
```

## 3. Employees with salary-grade bands

```sql
SELECT e.emp_id, e.f_name, e.salary, g.grade
FROM emp AS e
JOIN j_grade AS g
  ON e.salary BETWEEN g.low_sal AND g.high_sal;
```

The supplied salary-grade intervals can overlap, so one employee may match multiple grade rows. Inspect the source intervals before treating the grade as unique.

## 4. Join three tables

```sql
SELECT e.emp_id, e.f_name, d.dept_name, g.grade
FROM emp AS e
LEFT JOIN dept AS d ON d.dept_id = e.dept_id
LEFT JOIN j_grade AS g
  ON e.salary BETWEEN g.low_sal AND g.high_sal;
```

## 5. Debugging joins

- Verify key names and compatible data types.
- Decide whether unmatched rows should be retained.
- Check for duplicate keys on the joined side.
- Use qualified column names such as `e.dept_id` when names overlap.
