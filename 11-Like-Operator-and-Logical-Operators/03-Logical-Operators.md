# Logical Operators

## 1. AND

All conditions must be true.

**Question:** Display employees whose department ID is 22 and manager ID is 100.

```sql
SELECT emp_id, f_name, dept_id, manager_id
FROM emp
WHERE dept_id = 22
  AND manager_id = 100;
```

## 2. OR

At least one condition must be true.

**Question:** Display grades where the grade is A or the high salary is greater than 80000.

```sql
SELECT grade, low_sal, high_sal
FROM j_grade
WHERE grade = 'A'
   OR high_sal > 80000;
```

## 3. NOT

Negates a predicate.

```sql
SELECT emp_id, f_name, commission_pct
FROM emp
WHERE commission_pct IS NOT NULL;
```

## 4. Mixing AND and OR

**Question:** Display presidents or sales representatives who earn more than 25000.

```sql
SELECT emp_id, f_name, job_id, salary
FROM emp
WHERE (job_id = 'AD_PRES' OR job_id = 'SA_REP')
  AND salary > 25000;
```

Parentheses ensure the salary condition applies to both job categories.
