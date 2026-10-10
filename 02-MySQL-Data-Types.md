# MySQL Data Types

A **data type** defines the kind of value a column or expression can store. Choosing a suitable type improves correctness, storage use, and query behavior.

## 1. Classification tree

```text
MySQL Data Types
├── Numeric
│   ├── Integers: TINYINT, SMALLINT, MEDIUMINT, INT, BIGINT
│   ├── Exact decimal: DECIMAL, NUMERIC
│   ├── Approximate: FLOAT, DOUBLE
│   └── Bit: BIT
├── Date and time
│   ├── DATE, TIME, DATETIME, TIMESTAMP, YEAR
├── String
│   ├── CHAR, VARCHAR
│   ├── BINARY, VARBINARY
│   └── TINYTEXT, TEXT, MEDIUMTEXT, LONGTEXT
├── Binary large objects
│   └── TINYBLOB, BLOB, MEDIUMBLOB, LONGBLOB
├── Boolean alias
│   └── BOOL / BOOLEAN (alias for TINYINT(1))
└── Spatial
    └── GEOMETRY, POINT, LINESTRING, POLYGON and related types
```

## 2. Integer types and ranges

Integer types can be signed or unsigned. Signed types allow negative and positive values. Unsigned types allow zero and positive values only.

For an integer with `n` storage bits:

- Signed range: \(-2^{n-1}\) through \(2^{n-1}-1\)
- Unsigned range: \(0\) through \(2^n-1\)

| Type | Storage | Signed range | Unsigned range |
|---|---:|---:|---:|
| `TINYINT` | 1 byte | -128 to 127 | 0 to 255 |
| `SMALLINT` | 2 bytes | -32,768 to 32,767 | 0 to 65,535 |
| `MEDIUMINT` | 3 bytes | -8,388,608 to 8,388,607 | 0 to 16,777,215 |
| `INT` / `INTEGER` | 4 bytes | -2,147,483,648 to 2,147,483,647 | 0 to 4,294,967,295 |
| `BIGINT` | 8 bytes | -2^63 to 2^63-1 | 0 to 2^64-1 |

The integer range is determined by storage bits, not by a display-width number. For example, `INT(10)` does not store ten digits by virtue of `(10)`; integer display width is deprecated in modern MySQL.

## 3. Exact decimal types

`DECIMAL(p,s)` stores exact decimal values. `p` is total precision and `s` is scale, the number of digits after the decimal point. The maximum precision supported by MySQL is 65 digits; scale can be up to 30, subject to precision.

For `DECIMAL(10,2)`, there are 10 total digits and 2 after the decimal point, so up to 8 digits are before the decimal point. Use `DECIMAL` for money where exact decimal arithmetic is required.

```sql
CREATE TABLE product (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    price DECIMAL(10,2)
);

INSERT INTO product VALUES (1, 'Keyboard', 1499.50);
SELECT * FROM product;
```

Expected output:

| product_id | product_name | price |
|---:|---|---:|
| 1 | Keyboard | 1499.50 |

## 4. FLOAT and DOUBLE

`FLOAT` and `DOUBLE` store approximate binary floating-point values. `DOUBLE` normally offers greater precision than `FLOAT`. Binary floating-point cannot represent every decimal fraction exactly, so avoid it for values that require exact financial arithmetic.

## 5. Character types

| Type | Use |
|---|---|
| `CHAR(n)` | Fixed-length character data |
| `VARCHAR(n)` | Variable-length character data up to the declared limit |
| `TINYTEXT`, `TEXT`, `MEDIUMTEXT`, `LONGTEXT` | Text with increasing maximum capacity |
| `BINARY(n)`, `VARBINARY(n)` | Binary byte strings |
| `ENUM` | One value from a defined list |
| `SET` | Zero or more values from a defined list |

Use `VARCHAR` for names, email addresses, and phone numbers. Phone numbers should generally be strings because they may contain leading zeros, `+`, spaces, or hyphens and are not used for arithmetic.

## 6. Date and time types

| Type | Purpose | Example |
|---|---|---|
| `DATE` | Calendar date | `'2026-10-10'` |
| `TIME` | Time or duration | `'14:30:00'` |
| `DATETIME` | Date and time | `'2026-10-10 14:30:00'` |
| `TIMESTAMP` | Date/time value with time-zone conversion behavior | `'2026-10-10 14:30:00'` |
| `YEAR` | Year value | `2026` |

MySQL commonly accepts ISO-style `YYYY-MM-DD` date literals. Exact supported ranges and time-zone behavior depend on the type and server configuration.

## 7. Boolean and bit types

`BOOLEAN` and `BOOL` are aliases for `TINYINT(1)` in MySQL. Conventionally, `0` represents false and nonzero values represent true. `BIT(n)` stores bit values.

## 8. Binary and spatial types

BLOB types store binary data such as file bytes. Spatial types store geometry such as points, lines, and polygons for geographic or geometric operations.

## 9. Choosing a type

- Employee identifier: `INT` or `BIGINT`
- Employee name: `VARCHAR(100)`
- Salary: `DECIMAL(10,2)`
- Birth date: `DATE`
- Event timestamp: `DATETIME` or `TIMESTAMP`, depending on requirements
- Active status: `BOOLEAN` / `TINYINT(1)`
- Phone number: `VARCHAR(20)`

## 10. Oracle SQL comparison

Oracle uses types such as `NUMBER`, `VARCHAR2`, and `DATE`. MySQL commonly uses `DECIMAL`, `VARCHAR`, and separate `DATE`, `TIME`, `DATETIME`, and `TIMESTAMP` types. Choose the MySQL type according to the intended values rather than translating names mechanically.
