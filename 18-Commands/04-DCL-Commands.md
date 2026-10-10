# DCL: GRANT and REVOKE

DCL commands manage permissions.

## GRANT

```sql
GRANT SELECT ON training.* TO 'reader'@'localhost';
```

This grants the named account SELECT access to objects in the `training` database. The account must exist or be created according to the MySQL version and account-management policy.

## REVOKE

```sql
REVOKE SELECT ON training.* FROM 'reader'@'localhost';
```

This removes the granted privilege.

## Check privileges

```sql
SHOW GRANTS FOR 'reader'@'localhost';
```

These commands require suitable administrative privileges. Do not run account or privilege statements on a production server without authorization.
