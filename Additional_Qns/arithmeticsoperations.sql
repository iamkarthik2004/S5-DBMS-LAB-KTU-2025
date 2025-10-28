SET SERVEROUTPUT ON;

-- Create the procedure
CREATE OR REPLACE PROCEDURE calc_operations(a IN NUMBER, b IN NUMBER) IS
    sum1 NUMBER;
    diff NUMBER;
    prod NUMBER;
    divi NUMBER;
BEGIN
    sum1 := a + b;
    diff := a - b;
    prod := a * b;

    IF b <> 0 THEN
        divi := a / b;
    ELSE
        divi := NULL;
    END IF;

    DBMS_OUTPUT.PUT_LINE('A = ' || a || ', B = ' || b);
    DBMS_OUTPUT.PUT_LINE('Sum = ' || sum1);
    DBMS_OUTPUT.PUT_LINE('Difference = ' || diff);
    DBMS_OUTPUT.PUT_LINE('Product = ' || prod);

    IF divi IS NOT NULL THEN
        DBMS_OUTPUT.PUT_LINE('Division = ' || divi);
    ELSE
        DBMS_OUTPUT.PUT_LINE('Division not possible (divide by zero)');
    END IF;
END;
/
-- Execute the procedure
BEGIN
    calc_operations(10, 5);
END;
/
