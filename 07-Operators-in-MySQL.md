# Operators in MySQL

Operators combine, compare, or transform values in SQL expressions.

## 1. Arithmetic operators

| Operator | Meaning | Example |
|---|---|---|
| `+` | Addition | `salary + 1000` |
| `-` | Subtraction | `salary - 1000` |
| `*` | Multiplication | `salary * 1.10` |
| `/` | Division | `salary / 12` |
| `%` or `MOD()` | Remainder | `MOD(10,3)` |

**Question:** Display employee ID, department ID, and salary after a 10% hike without changing stored data.

```sql
SELECT emp_id, dept_id, salary,
       salary * 1.10 AS salary_after_hike
FROM emp;
```

## 2. Relational operators

| Operator | Meaning |
|---|---|
| `=` | Equal |
| `<>` or `!=` | Not equal |
| `>` | Greater than |
| `<` | Less than |
| `>=` | Greater than or equal |
| `<=` | Less than or equal |

**Question:** Display employee ID, first name, and last name where salary is less than or equal to 34000.

```sql
SELECT emp_id, f_name, l_name
FROM emp
WHERE salary <= 34000;
```

## 3. Logical operators

- `AND`: all conditions must be true.
- `OR`: at least one condition must be true.
- `NOT`: reverses a Boolean condition.

```sql
SELECT *
FROM emp
WHERE dept_id = 22
  AND manager_id = 100;
```

## 4. Operator precedence

Parentheses make complex conditions clear. Arithmetic multiplication and division generally occur before addition and subtraction. Comparisons are evaluated before logical combinations; `NOT` precedes `AND`, which precedes `OR` in common SQL precedence rules.

```sql
SELECT *
FROM emp
WHERE (job_id = 'AD_PRES' OR job_id = 'SA_REP')
  AND salary > 25000;
```

## 5. Keywords used as operators

`BETWEEN`, `IN`, `LIKE`, `IS NULL`, and `EXISTS` are predicates that help express conditions. See `10-Keywords-as-Operators.md` and the `11-Like-Operator-and-Logical-Operators/` folder.

## 6. Important NULL behavior

`NULL` represents missing or unknown data. Comparisons such as `commission_pct = NULL` do not work as intended. Use `IS NULL` or `IS NOT NULL`. Arithmetic involving NULL generally yields NULL.
