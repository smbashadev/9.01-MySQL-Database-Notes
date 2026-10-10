CREATE DATABASE IF NOT EXISTS constraint_practice;
USE constraint_practice;

DROP TABLE IF EXISTS employee_child;
DROP TABLE IF EXISTS department_parent;

CREATE TABLE department_parent (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE employee_child (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(100) NOT NULL,
    email VARCHAR(120) UNIQUE,
    age INT CHECK (age >= 18),
    dept_id INT,
    status VARCHAR(20) DEFAULT 'active',
    CONSTRAINT fk_employee_department
        FOREIGN KEY (dept_id) REFERENCES department_parent(dept_id)
);

INSERT INTO department_parent VALUES (10, 'IT');
INSERT INTO employee_child (emp_id, emp_name, email, age, dept_id)
VALUES (1, 'Ravi', 'ravi@example.com', 22, 10);

SELECT * FROM department_parent;
SELECT * FROM employee_child;
SHOW CREATE TABLE employee_child;
