# Constraints in MySQL

A **constraint** is a rule enforced by the database to protect data validity and consistency. For example, a student ID should not be duplicated, a required name should not be missing, and an employee's department should reference an existing department.

## 1. NOT NULL

`NOT NULL` requires a value to be supplied for a column. It does not prevent duplicate values.

```sql
CREATE TABLE example_not_null (
    id INT,
    name VARCHAR(50) NOT NULL
);

INSERT INTO example_not_null VALUES (1, 'Ravi');
-- Invalid: name cannot be NULL
-- INSERT INTO example_not_null VALUES (2, NULL);
```

## 2. UNIQUE

`UNIQUE` prevents duplicate non-NULL values in the constrained column or column combination. MySQL permits multiple `NULL` values in a UNIQUE index because NULL is not treated as equal to another NULL for uniqueness enforcement.

```sql
CREATE TABLE example_unique (
    email VARCHAR(100) UNIQUE
);

INSERT INTO example_unique VALUES ('ravi@example.com');
INSERT INTO example_unique VALUES ('asha@example.com');
-- Invalid duplicate:
-- INSERT INTO example_unique VALUES ('ravi@example.com');
```

## 3. PRIMARY KEY

A primary key uniquely identifies each row. It enforces uniqueness and non-nullability. A table has one primary-key constraint, which may consist of one or multiple columns.

```sql
CREATE TABLE example_pk (
    id INT PRIMARY KEY,
    name VARCHAR(50)
);

INSERT INTO example_pk VALUES (1, 'Ravi');
-- Invalid: duplicate primary key
-- INSERT INTO example_pk VALUES (1, 'Asha');
```

## 4. FOREIGN KEY

A foreign key requires child-table values to match a referenced parent key, unless the foreign-key column permits NULL. It protects referential integrity.

```sql
CREATE TABLE department_parent (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50) NOT NULL
);

CREATE TABLE employee_child (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50) NOT NULL,
    dept_id INT,
    CONSTRAINT fk_employee_department
        FOREIGN KEY (dept_id) REFERENCES department_parent(dept_id)
);

INSERT INTO department_parent VALUES (10, 'IT');
INSERT INTO employee_child VALUES (1, 'Ravi', 10);
-- Invalid when department 99 does not exist:
-- INSERT INTO employee_child VALUES (2, 'Asha', 99);
```

For InnoDB, the referenced and referencing columns must have compatible definitions, and referenced columns must be indexed appropriately.

## 5. CHECK

`CHECK` requires a condition to evaluate to TRUE or UNKNOWN for a row to be accepted; a FALSE result is rejected. MySQL enforces CHECK constraints from version 8.0.16 onward.

```sql
CREATE TABLE example_check (
    age INT CHECK (age >= 18)
);

INSERT INTO example_check VALUES (21);
-- Invalid: age is below 18
-- INSERT INTO example_check VALUES (16);
```

## 6. DEFAULT

`DEFAULT` supplies a value when an INSERT omits the column or uses the `DEFAULT` keyword. It does not automatically replace an explicitly supplied NULL unless the column definition and SQL mode behavior dictate otherwise.

```sql
CREATE TABLE example_default (
    id INT PRIMARY KEY,
    gender VARCHAR(10) DEFAULT 'male'
);

INSERT INTO example_default (id) VALUES (1);
SELECT * FROM example_default;
```

Expected output:

| id | gender |
|---:|---|
| 1 | male |

## 7. Combining constraints

```sql
CREATE TABLE citizen (
    id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(120) UNIQUE,
    age INT CHECK (age >= 0),
    gender VARCHAR(20) DEFAULT 'male'
);
```

## 8. How to inspect constraints

```sql
SHOW CREATE TABLE citizen;
```

This displays the table definition, including constraints.

## 9. Constraint summary

| Constraint | Main rule | Example use |
|---|---|---|
| `NOT NULL` | Value is required | Student name |
| `UNIQUE` | Duplicate non-NULL key values are rejected | Email |
| `PRIMARY KEY` | Unique, non-NULL row identifier | Student ID |
| `FOREIGN KEY` | Referenced parent row must exist | Employee department |
| `CHECK` | Value must satisfy a condition | Age must be non-negative |
| `DEFAULT` | Supplies an omitted value | Default status |

## 10. Practice question

**Question:** Create a citizen table with integer ID, required name, and gender defaulting to `male`.

```sql
CREATE TABLE citizen_default (
    id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    gender VARCHAR(20) DEFAULT 'male'
);
```
