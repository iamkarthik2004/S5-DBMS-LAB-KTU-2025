# 💡 Experiment 16 - Creation of Cursors

## 🎯 AIM
To create a **Cursor** in PL/SQL.

---

## 📘 THEORY
A **cursor** is a pointer to the **context area** — a memory region that stores the result set of a SQL query executed by Oracle.  
Cursors allow **row-by-row processing** of query results in PL/SQL.

You use them when a query returns more than one row, and you need to process each row individually.

---

## 🧩 TYPES OF CURSORS

### 🔹 Implicit Cursor
Created **automatically** by Oracle when you run a DML statement (`INSERT`, `UPDATE`, `DELETE`, or `SELECT INTO`) inside PL/SQL.

### 🔹 Explicit Cursor
Defined **manually by the programmer** to handle queries that return multiple rows.

---

## 🧠 SYNTAX

```sql
DECLARE
    variable1 datatype;
    variable2 datatype;

    CURSOR cursor_name IS
        SELECT column1, column2 FROM table_name WHERE condition;

BEGIN
    OPEN cursor_name;

    LOOP
        FETCH cursor_name INTO variable1, variable2;
        EXIT WHEN cursor_name%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE('Processing record');
    END LOOP;

    CLOSE cursor_name;
END;
/
