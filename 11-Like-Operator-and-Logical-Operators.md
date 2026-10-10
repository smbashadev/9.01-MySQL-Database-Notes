# LIKE Operator and Logical Operators

The detailed lessons are split into separate files to match the numbered-folder approach used in the Oracle SQL repository.

- [`01-LIKE-Operator.md`](11-Like-Operator-and-Logical-Operators/01-LIKE-Operator.md)
- [`02-LIKE-Operator-Advanced-Patterns.md`](11-Like-Operator-and-Logical-Operators/02-LIKE-Operator-Advanced-Patterns.md)
- [`03-Logical-Operators.md`](11-Like-Operator-and-Logical-Operators/03-Logical-Operators.md)

## Quick reference

| Pattern | Meaning |
|---|---|
| `'A%'` | Starts with A |
| `'%A'` | Ends with A |
| `'%A%'` | Contains A |
| `'A_'` | Two characters, beginning with A |
| `'__@%'` | `@` is the third character |

`%` matches zero or more characters. `_` matches exactly one character. The case sensitivity of LIKE depends on collation.
