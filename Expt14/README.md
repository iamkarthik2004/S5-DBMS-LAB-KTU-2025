# 🧪 Experiment 14: Creation of Procedures, Triggers, and Functions

## 🎯 AIM:
To **create Procedures, Triggers, and Functions** in a PL/SQL program.

---

## 🧠 THEORY:

### 🔹 **Procedures**
A **procedure** is a subprogram that performs an action but **does not return a value directly**.  
It is mainly used to execute a specific task or operation in the database.

#### 📝 Syntax:
```sql
CREATE [OR REPLACE] PROCEDURE procedure_name
[ (parameter [, parameter]) ]
IS
   [declaration_section]
BEGIN
   executable_section
[EXCEPTION
   exception_section]
END [procedure_name];
```

# Triggers
Triggers are stored programs, which are automatically executed or fired when some events occur.
Triggers are, in fact, written to be executed in response to any of the following events −

- A database manipulation (DML) statement (DELETE, INSERT, or UPDATE)
- A database definition (DDL) statement (CREATE, ALTER, or DROP).
- A database operation (SERVERERROR, LOGON, LOGOFF, STARTUP, or SHUTDOWN).

## Syntax
```
CREATE [OR REPLACE ] TRIGGER trigger_name
{BEFORE | AFTER | INSTEAD OF }
{INSERT [OR] | UPDATE [OR] | DELETE}
[OF col_name]
ON table_name
[REFERENCING OLD AS o NEW AS n]
[FOR EACH ROW]
WHEN (condition)
DECLARE
Declaration-statements
BEGIN
Executable-statements
EXCEPTION
exception_section
END;
```

# Functions

A standalone function is created using the CREATE FUNCTION statement. The simplified syntax for
the CREATE OR REPLACE PROCEDURE statement is as follows

## Syntax
```
CREATE [OR REPLACE] FUNCTION function_name
[(parameter_name [IN | OUT | IN OUT] type [, ...])]
RETURN return_datatype
{IS | AS}
BEGIN
< function_body >
END [function_name];
```
