# CROSS JOIN, Cartesian Product, and Self Join

## 1. CROSS JOIN

A cross join returns every combination of a row from the first table and a row from the second table. If the tables contain `m` and `n` rows, the result contains `m × n` combinations.

```sql
SELECT e.f_name, d.dept_name
FROM emp AS e
CROSS JOIN dept AS d;
```

This example is useful for understanding Cartesian products, but it may create a very large result.

## 2. Self join

A self join joins a table to itself. It is useful for relationships such as employee-to-manager, where both are stored in the same table.

```sql
SELECT e.f_name AS employee_name,
       m.f_name AS manager_name
FROM emp AS e
LEFT JOIN emp AS m
    ON e.manager_id = m.emp_id;
```

The supplied training data may use manager IDs that do not match an `emp_id`; in that case, `manager_name` is NULL. The query still demonstrates the self-join pattern.
