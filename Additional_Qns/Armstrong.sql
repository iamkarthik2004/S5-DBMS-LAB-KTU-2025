-- Function to check Armstrong number
CREATE OR REPLACE FUNCTION is_armstrong(n IN NUMBER) RETURN VARCHAR2 IS
  num NUMBER := n;
  digit NUMBER;
  sum1 NUMBER := 0;
  len NUMBER := LENGTH(n);
BEGIN
  WHILE num > 0 LOOP
    digit := MOD(num, 10);
    sum1 := sum1 + POWER(digit, len);
    num := TRUNC(num / 10);
  END LOOP;

  IF sum1 = n THEN
    RETURN 'Armstrong number';
  ELSE
    RETURN 'Not an Armstrong number';
  END IF;
END;
/

DECLARE
  n NUMBER;
  result VARCHAR2(50);
BEGIN
  n := &n;  -- user input
  result := is_armstrong(n);
  DBMS_OUTPUT.PUT_LINE('Number: ' || n);
  DBMS_OUTPUT.PUT_LINE(result);
END;
/
