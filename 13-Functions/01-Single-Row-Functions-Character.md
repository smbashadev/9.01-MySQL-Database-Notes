# Single-Row Character Functions

A character function transforms or examines text. The following examples use MySQL syntax and do not require `FROM dual`.

## 1. UPPER() and LOWER()

```sql
SELECT UPPER('Akash') AS upper_text,
       LOWER('Pandey') AS lower_text;
```

Output: `AKASH`, `pandey`.

**Question:** Display first and last names in uppercase for employees whose last name is Pandey.

```sql
SELECT UPPER(f_name) AS first_name,
       UPPER(l_name) AS last_name
FROM emp
WHERE l_name = 'Pandey';
```

## 2. CONCAT() and CONCAT_WS()

```sql
SELECT CONCAT('Akash', ' ', 'Pandey') AS full_name;
SELECT CONCAT_WS('-', '2026', '10', '10') AS date_text;
```

`CONCAT()` returns NULL if any argument is NULL. `CONCAT_WS()` skips NULL values after its separator argument.

## 3. LENGTH() and CHAR_LENGTH()

`LENGTH()` returns bytes; `CHAR_LENGTH()` returns characters.

```sql
SELECT LENGTH('SQL') AS bytes_count,
       CHAR_LENGTH('SQL') AS characters_count;
```

For ASCII text both values are 3, but multibyte characters can make the byte count larger.

## 4. SUBSTRING()

**Question:** Display five characters from `PRABHAKARAN` starting at position 2.

```sql
SELECT SUBSTRING('PRABHAKARAN', 2, 5) AS extracted_text;
```

Expected output: `RABHA`.

Positions begin at 1.

## 5. TRIM()

**Question:** Trim leading `m` characters from `malayalam`.

```sql
SELECT TRIM(LEADING 'm' FROM 'malayalam') AS trimmed_text;
```

This removes the specified trim string from the beginning, not every occurrence of `m` anywhere in the value.

## 6. LPAD() and RPAD()

**Question:** Display `Sharma` as `Sharma#!#!`.

```sql
SELECT RPAD('Sharma', 10, '#!') AS padded_text;
```

Expected output: `Sharma#!#!`. The requested total length is 10 characters; `RPAD()` repeats the pad string as needed and truncates it to fit.

## 7. REPLACE()

```sql
SELECT REPLACE('MySQL Database', 'Database', 'SQL') AS changed_text;
```

Expected output: `MySQL SQL`.

## 8. NULL and strings

Use `COALESCE(value, fallback)` when a fallback should be used for NULL. Avoid relying on concatenation to treat NULL as an empty string automatically.
