# LIKE Operator

`LIKE` filters text using a pattern. The percent sign `%` matches zero or more characters, and underscore `_` matches exactly one character.

## 1. Starts with

**Question:** Display department IDs and names where the department name starts with `AC`.

```sql
SELECT dept_id, dept_name
FROM dept
WHERE dept_name LIKE 'AC%';
```

## 2. Ends with

```sql
SELECT f_name, l_name
FROM emp
WHERE l_name LIKE '%an';
```

## 3. Contains

```sql
SELECT f_name, email
FROM emp
WHERE email LIKE '%gmail%';
```

## 4. Character at a fixed position

**Question:** Display employees whose email has `@` as the third character.

```sql
SELECT emp_id, email
FROM emp
WHERE email LIKE '__@%';
```

The first two underscores each match one character, so `@` must appear in position three.

## 5. Case behavior

Whether LIKE is case-sensitive depends on the expression's collation. Use an appropriate collation or `LOWER()` when a case-insensitive match is required consistently.

## 6. Escape wildcard characters

If `%` or `_` must be matched literally, escape it. For example:

```sql
SELECT id, name
FROM college_student
WHERE name LIKE '%\\%%';
```

The exact escaping required can depend on SQL mode and client string handling. Test literal wildcard searches in the target server.
