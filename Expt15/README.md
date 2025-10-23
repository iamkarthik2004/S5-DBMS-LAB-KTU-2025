# 💡 Experiment 16 - Creation of Packages

## 🎯 AIM
To implement **Packages** in PL/SQL.

---

## 📘 THEORY
A **package** is a schema object that groups logically related PL/SQL types, variables, constants, subprograms, cursors, and exceptions.  
A package is compiled and stored in the database, where many applications can share its contents.

The general syntax for creating a package is:

```sql
CREATE [OR REPLACE] PACKAGE <package_name>
IS
    <sub_program and public element declaration>
END <package_name>;
```

### EXAMPLE
```sql
CREATE OR REPLACE PACKAGE Pk1 AS

    PROCEDURE proc1(a INT, b INT);

END Pk1;

/



CREATE OR REPLACE PACKAGE BODY Pk1 AS

    PROCEDURE proc1(a INT, b INT) IS

    BEGIN 

        DBMS_OUTPUT.PUT_LINE('Sum: ' || (a + b));

    END proc1; 

END Pk1;

/



SET SERVEROUTPUT ON;

DECLARE

    p INT := 10;

    q INT := 20;

BEGIN

    Pk1.proc1(p, q);

END;
```
