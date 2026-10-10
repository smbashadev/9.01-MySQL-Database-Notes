# Joins in MySQL

A join combines related rows from two or more tables using a join condition.

## Subtopic files

- [`01-Introduction-To-Joins-And-Inner-Join.md`](17-Joins/01-Introduction-To-Joins-And-Inner-Join.md)
- [`02-Outer-Joins.md`](17-Joins/02-Outer-Joins.md)
- [`03-Cross-Cartesian-And-Self-Join.md`](17-Joins/03-Cross-Cartesian-And-Self-Join.md)
- [`04-Joins-Practical-Queries.md`](17-Joins/04-Joins-Practical-Queries.md)

## Join type summary

| Join | Result |
|---|---|
| `INNER JOIN` | Only rows with matching join keys |
| `LEFT JOIN` | All left rows and matching right rows; unmatched right columns are NULL |
| `RIGHT JOIN` | All right rows and matching left rows |
| `CROSS JOIN` | Cartesian product |
| Self join | A table joined to itself |
| Full outer join | Not directly supported as `FULL OUTER JOIN` in MySQL; emulate with `LEFT JOIN` and unmatched rows from the right side |

Use explicit `JOIN ... ON ...` syntax to make relationships clear.
