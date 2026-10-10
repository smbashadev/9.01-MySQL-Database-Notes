# ER Diagram Basics

## 1. Entity and attributes

A Student entity might have `student_id`, `student_name`, and `email`. A key attribute identifies one student uniquely.

## 2. Relationships and cardinality

- One-to-one: one row relates to at most one row on the other side.
- One-to-many: one department can have many employees.
- Many-to-many: a student can enroll in many courses, and each course can have many students. A junction table is used to implement this in a relational database.

## 3. Participation

Total participation means every instance must take part in a relationship. Partial participation means participation is optional. Database constraints should reflect the business rule where possible.

## 4. Relational mapping

- Entity becomes a table.
- Simple attribute becomes a column.
- Entity key becomes a primary key.
- One-to-many relationship commonly becomes a foreign key on the many side.
- Many-to-many relationship becomes a junction table with foreign keys.
