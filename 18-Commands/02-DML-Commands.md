# DML Commands: INSERT, UPDATE, DELETE

## INSERT

```sql
INSERT INTO student (id, name, age)
VALUES (1, 'Ravi', 22);
```

List the target columns explicitly so the statement is less dependent on table column order.

## UPDATE

**Question:** Increase salary by 10% for employees in department 22.

```sql
UPDATE emp
SET salary = salary * 1.10
WHERE dept_id = 22;
```

This changes stored values. It is different from a SELECT expression that only displays a proposed salary. Always check the WHERE condition before executing an UPDATE.

## DELETE

```sql
DELETE FROM student
WHERE id = 1;
```

Without a WHERE clause, DELETE removes every row in the table.

## Safer workflow

```sql
SELECT * FROM emp WHERE dept_id = 22;

START TRANSACTION;
UPDATE emp SET salary = salary * 1.10 WHERE dept_id = 22;
SELECT * FROM emp WHERE dept_id = 22;
ROLLBACK;
```

This rollback demonstration works when the table uses a transactional engine such as InnoDB and no implicit-commit statement is run inside the transaction.
