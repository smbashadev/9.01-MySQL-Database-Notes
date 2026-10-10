# ER Diagram Case Study: College

## Requirements

A college stores students and courses. A student can enroll in multiple courses, and a course can have multiple students. Each enrollment stores the enrollment date and grade.

## Entity outline

```text
STUDENT 1 --- N ENROLLMENT N --- 1 COURSE
```

## MySQL schema

```sql
CREATE TABLE student (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(100) NOT NULL
);

CREATE TABLE course (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE enrollment (
    student_id INT NOT NULL,
    course_id INT NOT NULL,
    enrollment_date DATE NOT NULL,
    grade CHAR(2),
    PRIMARY KEY (student_id, course_id),
    FOREIGN KEY (student_id) REFERENCES student(student_id),
    FOREIGN KEY (course_id) REFERENCES course(course_id)
);
```

`ENROLLMENT` resolves the many-to-many relationship. The composite primary key prevents the same student-course pair from being enrolled twice. If repeat attempts are allowed, add an attempt number to the key.
