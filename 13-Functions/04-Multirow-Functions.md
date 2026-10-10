# Aggregate (Multi-Row) Functions

Aggregate functions calculate a result from multiple rows. Without `GROUP BY`, an aggregate normally returns one result for the selected set of rows.

## 1. Common aggregates

| Function | Purpose |
|---|---|
| `COUNT(*)` | Counts rows |
| `COUNT(column)` | Counts non-NULL values in a column |
| `SUM(column)` | Adds non-NULL values |
| `AVG(column)` | Calculates average of non-NULL values |
| `MIN(column)` | Finds the smallest value |
| `MAX(column)` | Finds the largest value |

## 2. Minimum salary

**Question:** Display the minimum salary in EMP.

```sql
SELECT MIN(salary) AS minimum_salary
FROM emp;
```

## 3. Latest hire date

**Question:** Display the latest hire date in EMP.

```sql
SELECT MAX(hire_date) AS latest_hire_date
FROM emp;
```

## 4. Count rows and values

```sql
SELECT COUNT(*) AS employee_count,
       COUNT(commission_pct) AS employees_with_commission_value
FROM emp;
```

`COUNT(commission_pct)` excludes NULL commission values, while `COUNT(*)` counts every row.

## 5. SUM and AVG

```sql
SELECT SUM(salary) AS total_salary,
       AVG(salary) AS average_salary
FROM emp;
```

## 6. NULL behavior

Most aggregates ignore NULL inputs. `COUNT(*)` is the exception because it counts rows rather than values. If no rows qualify, `COUNT` returns zero while `SUM`, `AVG`, `MIN`, and `MAX` generally return NULL.
