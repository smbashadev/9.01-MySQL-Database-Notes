# Keywords as Operators

These SQL predicates make filtering easier to read than writing every comparison separately.

## 1. DISTINCT

Returns unique result values.

```sql
SELECT DISTINCT dept_id
FROM emp;
```

## 2. BETWEEN

`BETWEEN low AND high` includes both endpoints.

**Question:** Display employees whose commission percentage is between 1.2 and 1.5.

```sql
SELECT emp_id, f_name, commission_pct
FROM emp
WHERE commission_pct BETWEEN 1.2 AND 1.5;
```

The source sample stores commission values such as `1.20` and `1.50`; compare against the values as stored.

## 3. IN and NOT IN

```sql
SELECT grade, low_sal, high_sal
FROM j_grade
WHERE grade NOT IN ('A', 'B', 'D');
```

Be careful when the `IN` list or compared column contains NULL because SQL uses three-valued logic.

## 4. IS NULL / IS NOT NULL

**Question:** Display employees who do not take any commission, represented by a NULL commission value.

```sql
SELECT emp_id, f_name, commission_pct
FROM emp
WHERE commission_pct IS NULL;
```

A commission of `0` is different from a NULL commission.

## 5. LIKE

See the detailed LIKE lessons in `11-Like-Operator-and-Logical-Operators/`.

## 6. EXISTS

`EXISTS` is true when its subquery returns at least one row.

```sql
SELECT d.dept_id, d.dept_name
FROM dept AS d
WHERE EXISTS (
    SELECT 1
    FROM emp AS e
    WHERE e.dept_id = d.dept_id
);
```

This returns departments with at least one matching employee.
