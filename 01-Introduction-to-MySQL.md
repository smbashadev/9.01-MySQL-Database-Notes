# Introduction to MySQL and Databases

## 1. What is data?

**Data** is a collection of raw facts, values, or observations. Examples include a student's name, age, marks, an employee's salary, a product price, or a transaction date.

Information is data that has been organized or interpreted so it becomes useful. For example, individual attendance entries are data; a monthly attendance percentage is information derived from that data.

## 2. How data was stored before databases

Before database management systems became common, organizations stored information in paper registers, ledgers, index cards, and separate computer files. A school might keep student details in one spreadsheet, fees in another, and attendance in a third.

This approach creates common problems:

- **Redundancy:** the same student's details may be copied into several files.
- **Inconsistency:** a phone number may be updated in one file but not another.
- **Difficult retrieval:** finding all students with unpaid fees requires manual work or custom programs.
- **Limited sharing:** different programs may use incompatible file formats.
- **Weak integrity and security:** rules and access control must be implemented separately by each program.
- **Backup and concurrency problems:** simultaneous changes can overwrite each other.

Database systems centralize managed storage and provide query, integrity, access-control, transaction, and recovery features.

## 3. DBMS and RDBMS

A **Database Management System (DBMS)** is software used to create, store, retrieve, update, and manage data. A **Relational Database Management System (RDBMS)** stores data in relations, commonly represented as tables, and supports relationships through keys.

Examples of relational database products include MySQL, Oracle Database, PostgreSQL, Microsoft SQL Server, and SQLite.

## 4. What is SQL?

**SQL (Structured Query Language)** is the language used to define relational database structures and retrieve or manipulate their data. SQL includes statements for creating objects, querying rows, changing data, managing permissions, and controlling transactions.

Common command groups used in training are:

| Category | Purpose | Examples |
|---|---|---|
| DDL | Define or change database objects | `CREATE`, `ALTER`, `DROP`, `TRUNCATE` |
| DML | Change rows | `INSERT`, `UPDATE`, `DELETE` |
| DQL | Retrieve rows, a common teaching category | `SELECT` |
| DCL | Manage privileges | `GRANT`, `REVOKE` |
| TCL | Control transactions | `COMMIT`, `ROLLBACK`, `SAVEPOINT` |

The DQL label is a common educational classification. In SQL references, `SELECT` is often treated as a statement rather than a separate formal category.

## 5. What is MySQL?

MySQL is an RDBMS that stores structured data in tables and supports SQL, indexes, keys, views, joins, transactions, and programmable database objects. **MySQL Server** manages databases and executes statements. **MySQL Workbench** is a graphical client that can connect to a server, run queries, and inspect schemas.

## 6. Typical workflow

```text
User / Application
        |
        v
MySQL Workbench or application driver
        |
        v
      MySQL Server
        |
        v
Database -> Tables -> Rows and columns
```

## 7. Basic database commands

```sql
SHOW DATABASES;

CREATE DATABASE IF NOT EXISTS training;

USE training;

SELECT DATABASE();

SHOW TABLES;
```

Example output for `SELECT DATABASE()` after `USE training;`:

| DATABASE() |
|---|
| training |

## 8. Real-world example

An online store can keep customers, products, orders, and payments in related tables. A primary key identifies each row, while foreign keys connect an order to the customer who placed it. SQL lets the store find orders, calculate sales, and update stock without maintaining separate unrelated files.

## 9. Questions and answers

**Question:** Which software manages relational tables and SQL queries?

**Answer:** An RDBMS such as MySQL Server.

**Question:** Which SQL statement selects the database for subsequent commands in a MySQL session?

```sql
USE training;
```

**Question:** How can the currently selected database be checked?

```sql
SELECT DATABASE();
```

## 10. Oracle SQL comparison

Oracle Database and MySQL both use SQL, so core statements such as `SELECT`, `WHERE`, `GROUP BY`, and `JOIN` are similar. Database creation, date functions, row limiting, concatenation, data types, and administrative behavior differ. See `21-Difference-Between-Oracle-and-MySQL.md`.
