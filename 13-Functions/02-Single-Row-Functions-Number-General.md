# Numeric and General Functions

## 1. ROUND()

Rounds a number to the requested decimal position.

```sql
SELECT ROUND(1234.356, 1) AS result;
```

Expected output: `1234.4`.

A negative decimal position rounds to the left of the decimal point:

```sql
SELECT ROUND(2678.345, -2) AS nearest_hundred;
```

Expected output: `2700`.

## 2. TRUNCATE()

`TRUNCATE(number, decimals)` removes digits beyond the specified position without rounding.

```sql
SELECT TRUNCATE(2678.345, 2) AS result;
SELECT TRUNCATE(2678.345, -2) AS truncated_hundred;
```

Expected output: `2678.34` and `2600`.

## 3. ABS(), CEIL(), FLOOR(), MOD()

```sql
SELECT ABS(-12) AS absolute_value,
       CEIL(4.2) AS ceiling_value,
       FLOOR(4.8) AS floor_value,
       MOD(10, 3) AS remainder;
```

Expected output: `12`, `5`, `4`, `1`.

## 4. FORMAT()

**Question:** Display last name and salary with a dollar sign and two decimal places.

```sql
SELECT l_name,
       CONCAT('$', FORMAT(salary, 2)) AS formatted_salary
FROM emp;
```

`FORMAT()` returns formatted text and can use locale-specific separators. Do not use its string result for further numeric calculations.

## 5. NULL-handling functions

```sql
SELECT COALESCE(NULL, 'unknown') AS fallback_value;
SELECT NULLIF(10, 10) AS null_result;
```

`COALESCE()` returns the first non-NULL argument. `NULLIF(a,b)` returns NULL if the values are equal, otherwise it returns the first argument.

## 6. Conditional expression

```sql
SELECT emp_id, salary,
       IF(salary >= 30000, 'High', 'Standard') AS salary_band
FROM emp;
```

`CASE` is standard and more portable:

```sql
SELECT emp_id,
       CASE WHEN salary >= 30000 THEN 'High'
            ELSE 'Standard'
       END AS salary_band
FROM emp;
```
