# MySQL Functions

MySQL functions take values as arguments and return a result. A **single-row function** returns a result for each input row. An **aggregate function** returns a result for a group of rows.

## Subtopic files

- [`01-Single-Row-Functions-Character.md`](13-Functions/01-Single-Row-Functions-Character.md)
- [`02-Single-Row-Functions-Number-General.md`](13-Functions/02-Single-Row-Functions-Number-General.md)
- [`03-Date-And-Conversion-Functions.md`](13-Functions/03-Date-And-Conversion-Functions.md)
- [`04-Multirow-Functions.md`](13-Functions/04-Multirow-Functions.md)

## Quick examples

```sql
SELECT UPPER('Akash') AS uppercase_text;
SELECT ROUND(2678.345, -2) AS rounded_hundred;
SELECT DATE_ADD('2014-02-14', INTERVAL 9 MONTH) AS new_date;
SELECT MIN(salary) AS minimum_salary FROM emp;
```

MySQL's `TRUNCATE(number, decimals)` truncates numeric decimals; Oracle's `TRUNC(number, decimals)` has the analogous purpose. For dates, use MySQL date functions such as `DATE_ADD()` and `DATE_FORMAT()`.
