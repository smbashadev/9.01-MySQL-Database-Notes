# Database Objects in MySQL

A database object is a named structure or programmable component managed by the database server.

## Subtopic files

- [`01-Views-and-Indexes.md`](20-Database-Objects/01-Views-and-Indexes.md)
- [`02-Stored-Procedures-and-Triggers.md`](20-Database-Objects/02-Stored-Procedures-and-Triggers.md)
- [`03-Sequences-Synonyms-and-Events.md`](20-Database-Objects/03-Sequences-Synonyms-and-Events.md)

## Main objects

| Object | Purpose |
|---|---|
| Table | Stores rows and columns |
| View | Named query presented like a virtual table |
| Index | Helps the server locate rows efficiently |
| Stored procedure | Stored routine invoked with `CALL` |
| Stored function | Routine that returns a value |
| Trigger | Runs in response to table events |
| Event | Scheduled server-side task |

MySQL does not have Oracle-style standalone sequences and synonyms with the same semantics. Auto-increment columns are commonly used for generated integer keys.
