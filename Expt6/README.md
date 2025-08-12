# Experiment 6 – Built-in Functions in RDBMS using Temporary Tables

## 🎯 Aim
To implement built-in functions in RDBMS using temporary tables.

---

## 📚 Theory

### Built-in Functions

- **`SQRT`** – Returns the square root of a given non-negative number.
- **`CONCAT`** – Adds two or more strings together.
- **`LENGTH`** – Returns the length of a string.
- **`REVERSE`** – Reverses a string and returns the value.
- **`FLOOR`** – Rounds the specified number down and returns the largest number that is less than or equal to the specified number.
- **`CEIL`** – Rounds the specified number up and returns the smallest number that is greater than or equal to the specified number.
- **`ABS`** – Returns the absolute value of a number.
- **`LTRIM`, `RTRIM`** – Removes specified characters from the left or right side of a string.
- **`RPAD`** – Pads a string with a specified character to the right.  
  *Syntax:*  
  `RPAD(string, length, pad_char)`
- **`SUBSTRING`** – Extracts a specified portion of a string.

---

## 🗂 Temporary Table – DUAL Table (Oracle)
The **DUAL** table is a special one-row, one-column table automatically created by Oracle in every database.

### Uses
1. **Perform calculations without querying a real table**
    ```sql
    SELECT 2 * 5 FROM dual;
    -- Output: 10
    ```

2. **Call built-in functions**
    ```sql
    SELECT SYSDATE, CEIL(8.29), FLOOR(9.76) FROM dual;
    ```

---

## 🛠 Hint for Part B

1. Create table `angle` with 7 columns and set `angle` as the primary key.
    ```sql
    CREATE TABLE angle (
        angle NUMBER PRIMARY KEY,
        sin NUMBER,
        cos NUMBER,
        tan NUMBER,
        cot NUMBER,
        sec NUMBER,
        csc NUMBER
    );
    ```

2. Insert values into `angle`.
    ```sql
    INSERT INTO angle(angle) VALUES (0);
    INSERT INTO angle(angle) VALUES (30);
    INSERT INTO angle(angle) VALUES (45);
    INSERT INTO angle(angle) VALUES (60);
    INSERT INTO angle(angle) VALUES (90);
    -- Continue as needed
    ```

3. Update trigonometric values:
    ```sql
    UPDATE angle
    SET sin = SIN(angle * (3.14 / 180)),
        cos = COS(angle * (3.14 / 180)),
        tan = TAN(angle * (3.14 / 180)),
        cot = 1 / TAN(angle * (3.14 / 180)),
        sec = 1 / COS(angle * (3.14 / 180)),
        csc = 1 / SIN(angle * (3.14 / 180));
    ```

---
