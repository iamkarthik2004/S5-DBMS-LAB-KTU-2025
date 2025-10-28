SET SERVEROUTPUT ON;

-- Function to reverse a string
CREATE OR REPLACE FUNCTION reverse_string(s IN VARCHAR2) RETURN VARCHAR2 IS
    rev VARCHAR2(200) := '';
BEGIN
    FOR i IN REVERSE 1..LENGTH(s) LOOP
        rev := rev || SUBSTR(s, i, 1);
    END LOOP;
    RETURN rev;
END;
/
-- Main program block
DECLARE
    input_str VARCHAR2(200) := '&input_str';
    result_str VARCHAR2(200);
BEGIN
    result_str := reverse_string(input_str);
    
    DBMS_OUTPUT.PUT_LINE('Original String: ' || input_str);
    DBMS_OUTPUT.PUT_LINE('Reversed String: ' || result_str);
END;
/
