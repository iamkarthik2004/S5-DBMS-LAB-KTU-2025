SET SERVEROUTPUT ON;

CREATE OR REPLACE PROCEDURE check_odd_even(num IN NUMBER) AS
BEGIN
   IF MOD(num, 2) = 0 THEN
      DBMS_OUTPUT.PUT_LINE(num || ' is EVEN');
   ELSE
      DBMS_OUTPUT.PUT_LINE(num || ' is ODD');
   END IF;
END;
/

-- Execution:
BEGIN
   check_odd_even(&num);
END;
/

