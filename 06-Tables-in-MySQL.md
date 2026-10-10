# Tables in MySQL

A table is a database object that stores related records in rows and describes each field with a column name and data type.

## 1. CREATE TABLE

```sql
CREATE TABLE student (
    id INT,
    name VARCHAR(50),
    age INT
);
```

A column definition usually contains its name and data type, and may include a size or precision where the type supports it and constraints.

## 2. Create a table with multiple data types

```sql
CREATE TABLE product (
    product_id BIGINT UNSIGNED PRIMARY KEY,
    product_name VARCHAR(120) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    quantity INT UNSIGNED DEFAULT 0,
    created_on DATE
);
```

## 3. Select a database and inspect tables

```sql
USE training;
SELECT DATABASE();
SHOW TABLES;
DESCRIBE student;
SHOW CREATE TABLE student;
```

`DESCRIBE` shows columns, types, nullability, keys, defaults, and related metadata. `SHOW CREATE TABLE` shows the SQL definition.

## 4. ALTER TABLE

Add a column:

```sql
ALTER TABLE student ADD COLUMN email VARCHAR(120);
```

Change a column definition:

```sql
ALTER TABLE student MODIFY COLUMN name VARCHAR(100) NOT NULL;
```

Rename a column in modern MySQL:

```sql
ALTER TABLE student RENAME COLUMN email TO email_address;
```

Check the exact syntax supported by the MySQL version being used.

## 5. DROP versus TRUNCATE versus DELETE

| Statement | Effect |
|---|---|
| `DELETE FROM student WHERE id = 1;` | Removes matching rows |
| `TRUNCATE TABLE student;` | Removes all rows efficiently; table remains |
| `DROP TABLE student;` | Removes the table definition and its data |

These statements have different transaction, trigger, and auto-increment behavior. Do not use them interchangeably.

## 6. Inspect rows

```sql
SELECT * FROM student;
SELECT * FROM student LIMIT 10;
```

A table can exist with zero rows. An empty result from `SELECT` does not mean the table was not created.

## 7. Practice

**Question:** Create an employee table with ID, name, salary, and joining date.

```sql
CREATE TABLE employee_demo (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100) NOT NULL,
    salary DECIMAL(10,2),
    joining_date DATE
);

DESCRIBE employee_demo;
```
