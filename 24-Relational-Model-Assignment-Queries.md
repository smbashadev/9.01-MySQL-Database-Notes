# Relational Model Assignment Queries

This chapter combines relational-model concepts with MySQL query practice. Some KodNest assignments use HackerRank-style `STATION`, `CITY`, `COUNTRY`, and `EMPLOYEE` tables. Create the table definitions and load the assignment dataset before running the queries.

## 1. CITY names that do not start with a vowel

```sql
SELECT city
FROM station
WHERE city NOT REGEXP '^[AEIOUaeiou]';
```

## 2. Number of duplicate city names

```sql
SELECT COUNT(city) - COUNT(DISTINCT city) AS duplicate_count
FROM station;
```

If the exercise defines the total number of entries as all rows, including NULL city values, use `COUNT(*) - COUNT(DISTINCT city)` instead.

## 3. Sum city populations for countries in Asia

```sql
SELECT SUM(ci.population) AS total_population
FROM city AS ci
JOIN country AS co
  ON co.code = ci.countrycode
WHERE co.continent = 'Asia';
```

Use the exact column names from the assignment dataset. The `CITY` and `COUNTRY` schemas may differ from the KodNest EMP/DEPT practice schema.

## 4. Employee assignment table

For a common assignment schema:

```sql
SELECT name
FROM employee
WHERE months < 10
ORDER BY employee_id;
```

This query assumes `employee(employee_id, name, months, salary)`. Check the exact question's condition before using it.

## 5. Practice discipline

1. Identify the table and required output columns.
2. Identify filters and grouping.
3. Check whether duplicate results are allowed.
4. Determine the required sort order.
5. Write the query and test it against the supplied data.
