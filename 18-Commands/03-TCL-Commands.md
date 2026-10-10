# TCL: Transaction Control Language

Transactions group changes so they can be committed or rolled back as a unit.

## START TRANSACTION and COMMIT

```sql
START TRANSACTION;
UPDATE account SET balance = balance - 500 WHERE account_id = 1;
UPDATE account SET balance = balance + 500 WHERE account_id = 2;
COMMIT;
```

Commit makes the transactional changes permanent.

## ROLLBACK

```sql
START TRANSACTION;
UPDATE account SET balance = balance - 500 WHERE account_id = 1;
ROLLBACK;
```

Rollback undoes uncommitted changes for transactional tables.

## SAVEPOINT

```sql
START TRANSACTION;
UPDATE student SET marks = marks + 2 WHERE id = 1;
SAVEPOINT after_first_update;
UPDATE student SET marks = marks + 2 WHERE id = 2;
ROLLBACK TO SAVEPOINT after_first_update;
COMMIT;
```

The second update is rolled back to the savepoint; the first update is committed.

## Important

Transaction support depends on the storage engine and statement type. MySQL DDL can cause implicit commits, so transaction examples should use DML on transactional tables.
