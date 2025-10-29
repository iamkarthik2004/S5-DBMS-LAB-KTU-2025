SET SERVEROUTPUT ON;
DECLARE
  a NUMBER;
  b NUMBER;
  c NUMBER;
  largest NUMBER;
  fact NUMBER := 1;
BEGIN
  -- Take input from user
  a := &a;
  b := &b;
  c := &c;

  -- Find the largest number
  IF (a >= b) AND (a >= c) THEN
    largest := a;
  ELSIF (b >= a) AND (b >= c) THEN
    largest := b;
  ELSE
    largest := c;
  END IF;

  -- Find factorial of the largest number
  FOR i IN 1..largest LOOP
    fact := fact * i;
  END LOOP;

  -- Display the results
  DBMS_OUTPUT.PUT_LINE('The largest number is: ' || largest);
  DBMS_OUTPUT.PUT_LINE('The factorial of ' || largest || ' is: ' || fact);
END;
/
