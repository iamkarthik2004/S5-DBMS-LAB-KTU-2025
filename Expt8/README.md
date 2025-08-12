# Experiment 8 – Implementation of ORDER BY, GROUP BY, and HAVING Clause

## 🎯 Aim
Implementation of `ORDER BY`, `GROUP BY`, and `HAVING` clauses in SQL.

---

## 📚 Theory

- **`ORDER BY`**  
  The `ORDER BY` command is used to sort the result set in ascending or descending order.  
  - By default, it sorts in **ascending** order.  
  - To sort in **descending** order, use the `DESC` keyword.  

- **`GROUP BY`**  
  The `GROUP BY` statement groups rows that have the same values into summary rows.  
  Example: *Find the number of customers in each country.*  
  - Often used with aggregate functions such as:
    - `COUNT()`
    - `MAX()`
    - `MIN()`
    - `SUM()`
    - `AVG()`

- **`HAVING`**  
  The `HAVING` clause was introduced because the `WHERE` keyword **cannot** be used with aggregate functions.  
  It is used to filter records after the `GROUP BY` aggregation is performed.

---

## 📝 Syntax
```sql
SELECT column_name(s)
FROM table_name
WHERE condition
GROUP BY column_name(s)
HAVING condition
ORDER BY column_name(s);
