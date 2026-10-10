# SQL Commands in MySQL

Training commonly classifies SQL statements as DDL, DML, DQL, DCL, and TCL. The labels are useful for learning, although classification conventions vary.

## Subtopic files

- [`01-SQL-Commands-and-DDL.md`](18-Commands/01-SQL-Commands-and-DDL.md)
- [`02-DML-Commands.md`](18-Commands/02-DML-Commands.md)
- [`03-TCL-Commands.md`](18-Commands/03-TCL-Commands.md)
- [`04-DCL-Commands.md`](18-Commands/04-DCL-Commands.md)
- [`05-DQL-Commands.md`](18-Commands/05-DQL-Commands.md)

## Quick reference

| Category | Statements | Purpose |
|---|---|---|
| DDL | CREATE, ALTER, DROP, TRUNCATE | Define objects |
| DML | INSERT, UPDATE, DELETE | Change table rows |
| DQL | SELECT | Retrieve data |
| DCL | GRANT, REVOKE | Manage privileges |
| TCL | COMMIT, ROLLBACK, SAVEPOINT | Manage transactions |

## Basic commands

```sql
SHOW DATABASES;
CREATE DATABASE IF NOT EXISTS training;
USE training;
SELECT DATABASE();
SHOW TABLES;
```
