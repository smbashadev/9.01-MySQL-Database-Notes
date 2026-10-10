# ER Diagrams and ER Schema

An Entity-Relationship (ER) model describes the data a system needs and the relationships among entities before implementation as tables.

## Subtopic files

- [`01-ER-Diagram-Basics.md`](22-ER-Diagrams/01-ER-Diagram-Basics.md)
- [`02-ER-Diagram-Case-Study.md`](22-ER-Diagrams/02-ER-Diagram-Case-Study.md)
- [`03-ER-Schema.md`](22-ER-Diagrams/03-ER-Schema.md)

## Core vocabulary

- **Entity:** A type of thing about which data is stored, such as Student.
- **Attribute:** A property such as student name or email.
- **Relationship:** An association between entities.
- **Cardinality:** The number of related instances, such as one-to-one, one-to-many, or many-to-many.
- **Primary key:** Attribute(s) that identify an entity occurrence.
- **Foreign key:** Attribute(s) that reference a key in another table.

## Example

A department can have many employees, while each employee belongs to zero or one department.

```text
DEPARTMENT 1 -------- N EMPLOYEE
 dept_id (PK)          emp_id (PK)
 dept_name             emp_name
                       dept_id (FK)
```

This one-to-many relationship maps naturally to a foreign key in `EMPLOYEE`.
