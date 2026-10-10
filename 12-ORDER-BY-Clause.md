# ORDER BY Clause

`ORDER BY` sorts the query result. `ASC` means ascending and is the default; `DESC` means descending.

## 1. Sort by one column

**Question:** Display salaries in descending order.

```sql
SELECT emp_id, f_name, salary
FROM emp
ORDER BY salary DESC;
```

## 2. Sort by multiple columns

```sql
SELECT dept_id, f_name, salary
FROM emp
ORDER BY dept_id ASC, salary DESC;
```

Rows are first ordered by department ID, then by salary within each department.

## 3. Sort by an expression

```sql
SELECT emp_id, f_name, salary * 1.10 AS proposed_salary
FROM emp
ORDER BY proposed_salary DESC;
```

## 4. Limit a sorted result

```sql
SELECT DISTINCT salary
FROM emp
ORDER BY salary DESC
LIMIT 1 OFFSET 1;
```

This returns the second-highest distinct salary. `OFFSET 1` skips the highest distinct salary, and `LIMIT 1` returns the next.

## 5. Important notes

- Without `ORDER BY`, output order is not guaranteed.
- When sorting on non-unique values, add a tie-breaker such as a primary key for deterministic ordering.
- MySQL's NULL ordering behavior should be considered when a sort column can contain NULL.
