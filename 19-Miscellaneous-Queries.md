# Miscellaneous MySQL Queries

This chapter collects short practice queries that combine common functions and predicates.

## 1. Display uppercase text

```sql
SELECT UPPER('Akash') AS uppercase_text;
```

Output: `AKASH`.

## 2. Display names and their lengths

**Question:** Display first name, last name, and name lengths. If both lengths are equal, show NULL; otherwise show the first-name length.

```sql
SELECT f_name, l_name,
       CASE
         WHEN CHAR_LENGTH(f_name) = CHAR_LENGTH(l_name) THEN NULL
         ELSE CHAR_LENGTH(f_name)
       END AS first_name_length
FROM emp;
```

## 3. Second-highest distinct salary

```sql
SELECT DISTINCT salary
FROM emp
ORDER BY salary DESC
LIMIT 1 OFFSET 1;
```

## 4. Department and manager filters

**Question:** Display employees whose department ID is 22 and manager ID is 100.

```sql
SELECT emp_id, f_name, dept_id, manager_id
FROM emp
WHERE dept_id = 22 AND manager_id = 100;
```

## 5. Count distinct cities

```sql
SELECT COUNT(city) - COUNT(DISTINCT city) AS duplicate_city_count
FROM station;
```

This counts non-NULL CITY entries minus distinct non-NULL city names. If the exercise defines N as every row, including rows with NULL city values, use `COUNT(*)` instead of `COUNT(city)`.

## 6. City names that do not start with vowels

```sql
SELECT city
FROM station
WHERE city NOT REGEXP '^[AEIOUaeiou]';
```

## 7. Practical caution

Always confirm table names, column names, sample rows, and the intended treatment of NULL values before relying on an answer.
