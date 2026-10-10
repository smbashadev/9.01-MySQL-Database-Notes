# ER Schema

An ER schema is the structured description of entities, attributes, keys, and relationships.

## Example schema

```text
DEPARTMENT(dept_id PK, dept_name)
EMPLOYEE(emp_id PK, emp_name, salary, dept_id FK)
```

The foreign key `EMPLOYEE.dept_id` references `DEPARTMENT.dept_id`.

## MySQL implementation

```sql
CREATE TABLE department (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(100) NOT NULL
);

CREATE TABLE employee (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(100) NOT NULL,
    salary DECIMAL(10,2),
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES department(dept_id)
);
```

A nullable `dept_id` means an employee may have no assigned department. Add `NOT NULL` if the business rule requires every employee to belong to a department.
