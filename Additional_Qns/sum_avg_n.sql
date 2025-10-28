SET SERVEROUTPUT ON;

CREATE OR REPLACE PROCEDURE sum_avg_n(n IN NUMBER) AS
   s NUMBER := 0;
   i NUMBER;
   avg1 NUMBER;
BEGIN
   FOR i IN 1..n LOOP
      s := s + i;
   END LOOP;
   
   avg1 := s / n;
   
   DBMS_OUTPUT.PUT_LINE('Sum of first ' || n || ' numbers = ' || s);
   DBMS_OUTPUT.PUT_LINE('Average = ' || avg1);
END;
/

-- Execution
BEGIN
   sum_avg_n(&n);
END;
/
