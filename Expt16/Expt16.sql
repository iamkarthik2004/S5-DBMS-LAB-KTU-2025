--Q1
CREATE TABLE bank_details (
    accno NUMBER PRIMARY KEY,
    name VARCHAR2(100),
    balance NUMBER,
    adate DATE
);

-- 2. Create bank_interest table
CREATE TABLE bank_interest (
    accno NUMBER PRIMARY KEY,
    interest NUMBER
);

-- 3. Insert sample data
INSERT INTO bank_details VALUES (1001, 'Aby', 3005, TO_DATE('10-OCT-2015', 'DD-MON-YYYY'));
INSERT INTO bank_details VALUES (1002, 'Alan', 4000, TO_DATE('05-MAY-1995', 'DD-MON-YYYY'));
INSERT INTO bank_details VALUES (1003, 'Amal', 5000, TO_DATE('16-MAR-1992', 'DD-MON-YYYY'));
INSERT INTO bank_details VALUES (2020, 'Ben', 7000, TO_DATE('12-JAN-2020', 'DD-MON-YYYY'));
INSERT INTO bank_details VALUES (2021, 'Cara', 6500, TO_DATE('23-FEB-2023', 'DD-MON-YYYY'));
INSERT INTO bank_details VALUES (2022, 'Derek', 8200, TO_DATE('15-MAY-2025', 'DD-MON-YYYY'));
INSERT INTO bank_details VALUES (2023, 'Eva', 5400, TO_DATE('30-JUL-2023', 'DD-MON-YYYY'));
INSERT INTO bank_details VALUES (2024, 'Finn', 4800, TO_DATE('08-APR-2020', 'DD-MON-YYYY'));
INSERT INTO bank_details VALUES (2025, 'Grace', 9100, TO_DATE('19-SEP-2025', 'DD-MON-YYYY'));
INSERT INTO bank_details VALUES (2026, 'Hank', 7300, TO_DATE('27-NOV-2023', 'DD-MON-YYYY'));

COMMIT;

-- 4. PL/SQL block using cursor
SET SERVEROUTPUT ON;
DECLARE
    CURSOR bank_cur IS
        SELECT accno, balance FROM bank_details;
    v_accno bank_details.accno%TYPE;
    v_balance bank_details.balance%TYPE;
    v_interest NUMBER;
BEGIN
    OPEN bank_cur;
    LOOP
        FETCH bank_cur INTO v_accno, v_balance;
        EXIT WHEN bank_cur%NOTFOUND;
       
        v_interest := 0.08 * v_balance;
       
        INSERT INTO bank_interest (accno, interest)
        VALUES (v_accno, v_interest);
    END LOOP;
    CLOSE bank_cur;
    COMMIT;
END;
/

-- 5. Display the result
SELECT * FROM bank_interest;
