SET SERVEROUTPUT ON;

-- Create the procedure
CREATE OR REPLACE PROCEDURE check_palindrome(num IN NUMBER) IS
    temp NUMBER := num;
    rem NUMBER;
    rev NUMBER := 0;
BEGIN
    -- reverse the number
    WHILE temp > 0 LOOP
        rem := MOD(temp, 10);
        rev := (rev * 10) + rem;
        temp := FLOOR(temp / 10);
    END LOOP;
    
    -- check palindrome
    IF rev = num THEN
        DBMS_OUTPUT.PUT_LINE(num || ' is a Palindrome number.');
    ELSE
        DBMS_OUTPUT.PUT_LINE(num || ' is NOT a Palindrome number.');
    END IF;
END;
/
-- Execute the procedure
BEGIN
    check_palindrome(&num);
END;
/
