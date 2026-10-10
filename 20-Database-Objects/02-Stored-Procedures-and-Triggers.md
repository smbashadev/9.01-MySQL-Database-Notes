# Stored Procedures and Triggers

## 1. Stored procedure

A stored procedure is a named routine stored in the database and invoked with `CALL`.

```sql
DELIMITER //

CREATE PROCEDURE ListEmployees()
BEGIN
    SELECT emp_id, f_name, salary
    FROM emp
    ORDER BY emp_id;
END //

DELIMITER ;

CALL ListEmployees();
```

`DELIMITER` is a client command used by MySQL clients such as the command-line client and Workbench script editor; it is not part of the server's SQL grammar itself.

## 2. Trigger

A trigger runs automatically for a supported table event, such as INSERT, UPDATE, or DELETE.

```sql
CREATE TABLE salary_audit (
    audit_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    emp_id INT NOT NULL,
    old_salary DECIMAL(10,2),
    new_salary DECIMAL(10,2),
    changed_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
```

Example trigger:

```sql
DELIMITER //

CREATE TRIGGER emp_salary_audit
AFTER UPDATE ON emp
FOR EACH ROW
BEGIN
    IF NOT (OLD.salary <=> NEW.salary) THEN
        INSERT INTO salary_audit (emp_id, old_salary, new_salary)
        VALUES (OLD.emp_id, OLD.salary, NEW.salary);
    END IF;
END //

DELIMITER ;
```

`<=>` is MySQL's NULL-safe equality operator. Triggers should be designed carefully because they add automatic side effects to table changes.
