# Retrieving Data: SELECT Statement

`SELECT` retrieves data from one or more tables or expressions. Selecting columns is often called **projection**; filtering rows is often called **selection**.

## 1. Syntax

```sql
SELECT [DISTINCT] column_name [, column_name ...]
FROM table_name
[WHERE condition]
[ORDER BY column_name [ASC | DESC]]
[LIMIT row_count];
```

## 2. Select all columns

**Question:** Display every row and column from `emp`.

```sql
SELECT * FROM emp;
```

`*` means all columns. In production queries, listing required columns is often clearer and avoids retrieving unnecessary data.

## 3. Select particular columns

**Question:** Display employee ID, first name, and salary.

```sql
SELECT emp_id, f_name, salary
FROM emp;
```

Representative output:

| emp_id | f_name | salary |
|---:|---|---:|
| 1 | Akash | 34000 |
| 2 | Prabhakaran | 45000 |
| 3 | DEEP | 55000 |

The complete result includes every matching employee; the table above shows representative rows.

## 4. Expressions in SELECT

**Question:** Display employee ID and salary after reducing salary by 1000.

```sql
SELECT emp_id, salary, salary - 1000 AS revised_salary
FROM emp;
```

An expression is calculated for each row. This query does not update the stored salary.

## 5. DISTINCT

`DISTINCT` removes duplicate result rows.

**Question:** Display each department ID used by an employee once.

```sql
SELECT DISTINCT dept_id
FROM emp;
```

If multiple employees belong to department 22, the result contains department 22 only once.

## 6. WHERE clause

`WHERE` filters rows before grouping.

**Question:** Display the name of the student whose age is 22.

```sql
SELECT name
FROM student
WHERE age = 22;
```

The `student` table must exist and contain data for this query to return rows.

## 7. Combining conditions

```sql
SELECT emp_id, f_name, salary, dept_id
FROM emp
WHERE salary > 30000
  AND dept_id = 22;
```

`AND` requires both conditions to be true. `OR` requires at least one condition to be true. Use parentheses when mixing them to make the intended logic explicit.

## 8. LIMIT

```sql
SELECT emp_id, f_name, salary
FROM emp
ORDER BY salary DESC
LIMIT 5;
```

`LIMIT` restricts the number of returned rows. Use `ORDER BY` when the required five rows must be determined by a ranking.

## 9. Query processing overview

A useful logical model is:

```text
FROM / JOIN
     ↓
WHERE
     ↓
GROUP BY
     ↓
HAVING
     ↓
SELECT
     ↓
DISTINCT
     ↓
ORDER BY
     ↓
LIMIT
```

This is a conceptual processing order, not necessarily the database engine's physical execution plan.

## 10. Common mistakes

- Use single quotes for string literals: `WHERE f_name = 'Akash'`.
- Use `IS NULL`, not `= NULL`.
- A `SELECT` expression does not modify stored data.
- Without `ORDER BY`, row order is not guaranteed.
