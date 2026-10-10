<div align="center">

# MySQL Database
### Complete Beginner-to-Advanced Learning Repository

**Learn · Practise · Query · Revise · Prepare for Interviews**

A topic-wise MySQL learning repository with explanations, practical queries, sample outputs, executable SQL scripts, relational database design notes, and interview practice.

![Database](https://img.shields.io/badge/Database-MySQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white)
![Language](https://img.shields.io/badge/Language-SQL-blue?style=for-the-badge)
![Documentation](https://img.shields.io/badge/Notes-Topic--wise-success?style=for-the-badge)
![Source Code](https://img.shields.io/badge/SQL%20Scripts-Included-brightgreen?style=for-the-badge)
![Level](https://img.shields.io/badge/Level-Beginner%20to%20Advanced-orange?style=for-the-badge)

</div>

---

## About This Repository

This repository organizes MySQL learning material into numbered Markdown lessons and executable `.sql` files. Each lesson explains the concept, syntax, practical use, and examples. Query exercises state the question first, then show the MySQL query and a representative result.

The topic order follows the organization of the author's Oracle SQL repository while adapting syntax and behavior to MySQL. Oracle-specific differences are identified where they help learners transition between the two systems.

## Repository Structure

| Path | Purpose |
|---|---|
| `01-Introduction-to-MySQL.md` | Database history, DBMS, RDBMS, SQL and MySQL |
| `02-MySQL-Data-Types.md` | Data type categories, ranges and examples |
| `03-Retrieving-Data-SELECT-Statement.md` | SELECT, projection, filtering and DISTINCT |
| `04-Case-Sensitivity-in-MySQL.md` | Identifier case, string comparisons and collations |
| `05-Constraints-in-MySQL.md` | NOT NULL, UNIQUE, CHECK, DEFAULT, PK and FK |
| `06-Tables-in-MySQL.md` | CREATE, ALTER, DESCRIBE, DROP and TRUNCATE |
| `07-Operators-in-MySQL.md` | Arithmetic and relational operators |
| `08-Column-Aliases-and-Concatenation.md` | Aliases, CONCAT and expressions |
| `09-DUAL-Table-and-Expressions.md` | Literal expressions and Oracle DUAL differences |
| `10-Keywords-as-Operators.md` | DISTINCT, BETWEEN, IN, IS NULL and related predicates |
| `11-Like-Operator-and-Logical-Operators/` | LIKE patterns and AND/OR/NOT |
| `12-ORDER-BY-Clause.md` | Sorting query results |
| `13-Functions/` | Character, numeric, date, conversion and aggregate functions |
| `14-GROUP-BY-Clause.md` | Grouping rows and aggregate calculations |
| `15-HAVING-Clause.md` | Filtering groups |
| `16-Subqueries-or-Nested-Queries.md` | Scalar, multi-row and correlated subqueries |
| `17-Joins/` | INNER, OUTER, CROSS and self joins |
| `18-Commands/` | DDL, DML, TCL, DCL and SELECT |
| `19-Miscellaneous-Queries.md` | Mixed practice questions |
| `20-Database-Objects/` | Views, indexes, procedures, triggers, events |
| `21-Difference-Between-Oracle-and-MySQL.md` | Practical syntax comparison |
| `22-ER-Diagrams/` | ER basics, case study and schema |
| `23-Normalization.md` | 1NF, 2NF, 3NF and BCNF |
| `24-Relational-Model-Assignment-Queries.md` | Relational model and SQL assignments |
| `25-MySQL-Interview-Questions-and-Answers.md` | Interview revision |
| `Source-Code/` | Numbered, runnable MySQL scripts |

## Recommended Learning Order

1. Read the numbered topic file.
2. Open the related script in `Source-Code/`.
3. Run the script in MySQL Workbench against a local MySQL Server.
4. Compare the result with the expected output in the lesson.
5. Try the practice questions without looking at the answers first.

## Sample Tables

The main practice schema uses the `emp`, `dept`, and `j_grade` tables from the supplied KodNest sample material. Their MySQL definitions and insert statements are in `Source-Code/00-KodNest-Sample-Tables.sql`. Additional tables such as `student`, `station`, `city`, and `country` are used only in lessons where the exercise needs them.

## MySQL Version Notes

Examples target modern MySQL 8.0. CHECK constraints are enforced in MySQL 8.0.16 and later. Window functions require MySQL 8.0+. Some administrative statements require suitable privileges.

## Author

**Shaik Mahaboob Basha**

- GitHub: https://github.com/smbashadev
- LinkedIn: https://www.linkedin.com/in/shaikbasha-dev/

## Educational Use

These notes are for learning and practice. Verify permission before redistributing any institute-owned source document. The examples and repository organization are intended to support independent study.
