CREATE DATABASE IF NOT EXISTS transaction_practice;
USE transaction_practice;

DROP TABLE IF EXISTS account_demo;
CREATE TABLE account_demo (
    account_id INT PRIMARY KEY,
    balance DECIMAL(10,2) NOT NULL
) ENGINE = InnoDB;

INSERT INTO account_demo VALUES (1, 5000.00), (2, 1000.00);

START TRANSACTION;
UPDATE account_demo SET balance = balance - 500 WHERE account_id = 1;
UPDATE account_demo SET balance = balance + 500 WHERE account_id = 2;
SELECT * FROM account_demo;
ROLLBACK;

-- After ROLLBACK, original balances are restored.
SELECT * FROM account_demo;
