# Case Sensitivity in MySQL

Case sensitivity means whether uppercase and lowercase letters are treated as equivalent. In MySQL, behavior depends on the operating system, object type, and collation.

## 1. Database and table names

Database and table identifier case sensitivity depends partly on the server's `lower_case_table_names` setting and the operating system's filesystem behavior. Do not assume that `EMP` and `emp` are interchangeable on every MySQL server. Use consistent lowercase names for portable projects.

```sql
SHOW VARIABLES LIKE 'lower_case_table_names';
```

Column names are generally not case-sensitive, but consistent naming is still recommended.

## 2. String comparisons

String comparison behavior depends on the column's collation. Many default MySQL collations are case-insensitive, while collations ending in `_cs` are typically case-sensitive.

```sql
SELECT 'Akash' = 'akash' AS comparison_result;
```

The result depends on the collation used for the expression. To request a binary, case-sensitive comparison:

```sql
SELECT BINARY 'Akash' = BINARY 'akash' AS exact_match;
```

Expected output:

| exact_match |
|---:|
| 0 |

## 3. Case-insensitive matching

**Question:** Display names and salaries where first name is Akash in any case.

```sql
SELECT f_name, l_name, salary
FROM emp
WHERE LOWER(f_name) = 'akash';
```

This normalizes the column value to lowercase before comparison. Applying a function to a column can affect index use; a suitable case-insensitive collation may be preferable for frequent searches.

## 4. Convert letter case

```sql
SELECT UPPER('Akash') AS uppercase_text,
       LOWER('PANDEY') AS lowercase_text;
```

Expected output:

| uppercase_text | lowercase_text |
|---|---|
| AKASH | pandey |

## 5. Oracle SQL comparison

Oracle identifier rules and string comparison behavior differ from MySQL's settings and collations. Oracle unquoted identifiers are normally stored in uppercase internally; do not transfer those assumptions directly to MySQL.
