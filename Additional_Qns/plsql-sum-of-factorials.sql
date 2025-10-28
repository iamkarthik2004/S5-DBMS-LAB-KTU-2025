SET SERVEROUTPUT ON;

-- Function to calculate factorial
CREATE OR REPLACE FUNCTION factorial(num IN NUMBER) RETURN NUMBER IS
    fact NUMBER := 1;
BEGIN
    FOR i IN 1..num LOOP
        fact := fact * i;
    END LOOP;
    RETURN fact;
END;
/
-- Main block to calculate sum of factorials
DECLARE
    n NUMBER := &n;          -- input number
    i NUMBER := 1;
    sum_fact NUMBER := 0;
    display_str VARCHAR2(2000) := '';
BEGIN
    WHILE i <= n LOOP
        sum_fact := sum_fact + factorial(i);
        
        IF i < n THEN
            display_str := display_str || i || '! + ';
        ELSE
            display_str := display_str || i || '! = ' || sum_fact;
        END IF;
        
        i := i + 1;
    END LOOP;

    DBMS_OUTPUT.PUT_LINE('N = ' || n);
    DBMS_OUTPUT.PUT_LINE('The factorial display is:');
    DBMS_OUTPUT.PUT_LINE(display_str);
END;
/
