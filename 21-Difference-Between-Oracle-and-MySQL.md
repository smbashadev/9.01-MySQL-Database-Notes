# Differences Between Oracle SQL and MySQL

The core SQL concepts are highly transferable, but syntax and behavior are not identical. Use this guide when converting Oracle SQL exercises to MySQL.

| Task | Oracle SQL | MySQL |
|---|---|---|
| Concatenate strings | `first_name || last_name` | `CONCAT(first_name, last_name)` |
| Current date/time | `SYSDATE` | `NOW()` or `CURRENT_DATE()` depending on need |
| Add months to date | `ADD_MONTHS(d, 9)` | `DATE_ADD(d, INTERVAL 9 MONTH)` |
| Format date | `TO_CHAR(d, 'DD-MON-YYYY')` | `DATE_FORMAT(d, '%d-%b-%Y')` |
| Truncate number | `TRUNC(n, 2)` | `TRUNCATE(n, 2)` |
| Limit rows | `FETCH FIRST 5 ROWS ONLY` in modern Oracle | `LIMIT 5` |
| Variable-length text | `VARCHAR2(n)` | `VARCHAR(n)` |
| General numeric | `NUMBER` | `DECIMAL`, `INT`, `FLOAT`, etc. |
| Generated integer key | Sequence or identity column | `AUTO_INCREMENT` |
| DUAL for literal SELECT | Commonly used | Not required |
| Full outer join | Supported | Emulate using LEFT JOIN plus unmatched right rows |
| Empty string | Oracle treats zero-length character strings as NULL | MySQL distinguishes `''` from NULL |

## Examples

Oracle:

```sql
-- Oracle SQL
SELECT UPPER('Akash') FROM dual;
```

MySQL:

```sql
SELECT UPPER('Akash') AS uppercase_text;
```

Oracle:

```sql
-- Oracle SQL
SELECT ADD_MONTHS(DATE '2014-02-14', 9) FROM dual;
```

MySQL:

```sql
SELECT DATE_ADD('2014-02-14', INTERVAL 9 MONTH) AS new_date;
```

## Important practice rule

Do not replace every Oracle function mechanically. Confirm the required data type, NULL behavior, formatting, time zone, and version support in MySQL.
