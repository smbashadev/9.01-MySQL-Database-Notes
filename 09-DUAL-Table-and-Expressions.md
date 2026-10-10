# DUAL Table and Expressions

## 1. Literal expressions

A literal expression uses constant values rather than table columns.

```sql
SELECT 10 + 20 AS total,
       UPPER('mysql') AS uppercase_text,
       CURRENT_DATE() AS today;
```

MySQL can evaluate expressions without a `FROM` clause.

## 2. Oracle DUAL comparison

Oracle lessons commonly use `FROM dual` to evaluate expressions. MySQL does not require DUAL for this purpose, although MySQL provides a special one-row `DUAL` table name for compatibility.

Oracle style:

```sql
-- Oracle SQL
SELECT UPPER('Akash') FROM dual;
```

MySQL style:

```sql
SELECT UPPER('Akash') AS uppercase_text;
```

Expected output:

| uppercase_text |
|---|
| AKASH |

## 3. Complex concatenation

```sql
SELECT CONCAT('Bond', ' ', '7777') AS movie_character;
```

Expected output: `Bond 7777`.

## 4. Functions without a table

```sql
SELECT ROUND(1234.356, 1) AS rounded_value;
```

Expected output: `1234.4`.

## 5. Important note

The SQL mode affects some operators and parsing behavior. Prefer explicit MySQL functions such as `CONCAT()` for readable, portable MySQL queries.
