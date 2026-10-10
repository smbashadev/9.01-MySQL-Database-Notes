# Sequences, Synonyms, and Events: MySQL Notes

## 1. Sequences and generated IDs

Oracle commonly uses standalone sequences. MySQL commonly generates numeric IDs using `AUTO_INCREMENT`.

```sql
CREATE TABLE customer (
    customer_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL
);

INSERT INTO customer (customer_name) VALUES ('Asha');
SELECT * FROM customer;
```

## 2. Synonyms

Oracle has synonym objects. MySQL does not provide a directly equivalent standalone synonym object. A view or application-level abstraction may solve some related requirements, but it is not identical to an Oracle synonym.

## 3. Events

MySQL Event Scheduler can run scheduled statements when enabled and configured.

```sql
CREATE EVENT daily_cleanup
ON SCHEDULE EVERY 1 DAY
DO
    DELETE FROM temporary_log
    WHERE created_at < CURRENT_TIMESTAMP - INTERVAL 30 DAY;
```

Do not create a cleanup event without verifying the table, schedule, server configuration, and intended retention policy. The event scheduler must be enabled for events to execute.
