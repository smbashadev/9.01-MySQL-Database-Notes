# Normalization

Normalization organizes relational data to reduce unnecessary duplication and prevent insertion, update, and deletion anomalies.

## 1. Why normalization matters

Suppose a table repeats department names for every employee. If the department name changes, many rows must be updated. If some rows are missed, the data becomes inconsistent.

## 2. First Normal Form (1NF)

A relation is in 1NF when each cell contains a single value from its domain and repeating groups are not stored as multiple values in one field.

Avoid storing a comma-separated list of course names in one student row. Create separate enrollment rows instead.

## 3. Second Normal Form (2NF)

A relation is in 2NF when it is in 1NF and every non-key attribute depends on the whole candidate key, not only part of a composite candidate key.

For example, in `ENROLLMENT(student_id, course_id, student_name, grade)`, if the key is `(student_id, course_id)`, then `student_name` depends only on `student_id`, creating a partial dependency. Move student name to `STUDENT`.

## 4. Third Normal Form (3NF)

A relation is in 3NF when it is in 2NF and non-key attributes do not have inappropriate transitive dependencies on a key. If `emp_id` determines `dept_id` and `dept_id` determines `dept_name`, store department name in a separate DEPARTMENT table.

## 5. BCNF

A relation is in BCNF when every determinant is a candidate key. BCNF is stricter than 3NF in some cases.

## 6. Anomaly types

- Update anomaly: the same fact must be changed in multiple rows.
- Insertion anomaly: one fact cannot be added without an unrelated fact.
- Deletion anomaly: deleting one row unintentionally removes the only copy of another fact.

Normalization is guided by keys and functional dependencies. It is not simply splitting every table into as many tables as possible.
