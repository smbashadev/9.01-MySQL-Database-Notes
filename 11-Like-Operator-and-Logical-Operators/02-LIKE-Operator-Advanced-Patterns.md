# LIKE Operator: Advanced Patterns

## 1. Match a fixed-length value

```sql
-- Names containing exactly four characters
SELECT name
FROM student
WHERE name LIKE '____';
```

## 2. Wildcard characters inside stored text

`%` and `_` are wildcards in a LIKE pattern. To search for a literal percent sign in a name:

```sql
SELECT id, name
FROM college_student
WHERE name LIKE '%!%%' ESCAPE '!';
```

Here `!` is explicitly defined as the escape character, so `!%` means a literal percent sign.

To search for a literal underscore:

```sql
SELECT id, name
FROM college_student
WHERE name LIKE '%!_%' ESCAPE '!';
```

## 3. Pattern at a particular position

```sql
-- Third character is '@'
SELECT emp_id, email
FROM emp
WHERE email LIKE '__@%';
```

## 4. Practical notes

- Pattern matching can be affected by collation.
- A leading wildcard such as `'%text'` often prevents a normal B-tree index from being used for a prefix lookup.
- Use `ESCAPE` to make special pattern characters unambiguous.
