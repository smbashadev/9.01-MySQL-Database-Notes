# SQL Commands and DDL

DDL (Data Definition Language) defines or changes database objects.

## CREATE

```sql
CREATE TABLE course (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL
);
```

## ALTER

```sql
ALTER TABLE course ADD COLUMN duration_months INT;
```

## DROP

```sql
DROP TABLE course;
```

`DROP` removes the object definition and its data. Use it carefully.

## TRUNCATE

```sql
TRUNCATE TABLE course;
```

`TRUNCATE` removes all rows while retaining the table definition. Its transaction and identity-reset behavior differs from `DELETE`.

## MySQL note

Many MySQL DDL statements cause implicit commits. Do not assume that a DDL statement can always be rolled back like ordinary DML.
