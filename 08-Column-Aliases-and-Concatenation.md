# Column Aliases, Expressions, and Concatenation

## 1. Column aliases

An alias gives a result column a readable label. `AS` is optional for many aliases, but using it improves clarity.

```sql
SELECT emp_id AS employee_id,
       f_name AS first_name,
       salary * 1.10 AS salary_after_hike
FROM emp;
```

Aliases label the output. They do not rename the underlying table columns.

## 2. CONCAT()

MySQL `CONCAT()` combines strings. If any argument is NULL, the result is NULL.

**Question:** Concatenate first name and last name from `emp` as a full name.

```sql
SELECT CONCAT(f_name, ' ', l_name) AS full_name
FROM emp;
```

Representative output:

| full_name |
|---|
| Akash Pandey |
| Prabhakaran Ganeshan |
| DEEP Nair |

## 3. CONCAT_WS()

`CONCAT_WS(separator, value1, value2, ...)` inserts a separator between values and skips NULL values after the separator.

```sql
SELECT CONCAT_WS(' ', 'Akash', 'Pandey') AS full_name;
```

Expected output: `Akash Pandey`.

## 4. Arithmetic expressions and labels

```sql
SELECT emp_id,
       salary,
       salary - 1000 AS reduced_salary,
       salary * 0.10 AS ten_percent
FROM emp;
```

These are calculated results; no row is updated.

## 5. Concatenating with NULL

```sql
SELECT CONCAT('1111', NULL) AS result;
```

Expected output: `NULL`.

If NULL should be replaced by a fallback, use `COALESCE`:

```sql
SELECT CONCAT('1111', COALESCE(NULL, ''));
```

Expected output: `1111`.

## 6. Oracle comparison

Oracle uses `||` as a string-concatenation operator. MySQL supports `CONCAT()` and also supports `||` as logical OR by default; do not assume `||` means concatenation unless `PIPES_AS_CONCAT` SQL mode is enabled.
