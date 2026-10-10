# Date and Conversion Functions

## 1. Current date and time

```sql
SELECT CURRENT_DATE() AS today,
       CURRENT_TIME() AS current_time,
       NOW() AS current_datetime;
```

`NOW()` returns the current date and time according to the session time zone.

## 2. DATE_ADD()

**Question:** Add nine months to 14-Feb-2014.

```sql
SELECT DATE_ADD('2014-02-14', INTERVAL 9 MONTH) AS new_date;
```

Expected output: `2014-11-14`.

## 3. Date parts and formatting

```sql
SELECT YEAR('2026-10-10') AS year_value,
       MONTH('2026-10-10') AS month_value,
       DAY('2026-10-10') AS day_value;

SELECT DATE_FORMAT('2026-10-10', '%d-%b-%Y') AS formatted_date;
```

Format tokens are specific to MySQL. For example, `%Y` is a four-digit year and `%m` is a two-digit month.

## 4. DATEDIFF()

```sql
SELECT DATEDIFF('2026-10-10', '2026-10-01') AS day_difference;
```

Expected output: `9`.

## 5. Conversion

```sql
SELECT CAST('123' AS UNSIGNED) AS numeric_value,
       CAST('2026-10-10' AS DATE) AS date_value;
```

Conversion behavior depends on input validity and SQL mode. Validate user input in applications rather than assuming every string is a valid date or number.

## 6. Oracle comparison

Oracle's `SYSDATE`, `ADD_MONTHS`, and `TO_CHAR` are commonly replaced in MySQL by `NOW()` or `CURRENT_DATE()`, `DATE_ADD()`, and `DATE_FORMAT()` depending on the required result.
