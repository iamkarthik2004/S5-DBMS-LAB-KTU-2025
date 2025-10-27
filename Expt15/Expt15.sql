CREATE OR REPLACE PACKAGE Mypk1 AS
PROCEDURE proc1(a IN NUMBER, b IN NUMBER, sum1 OUT NUMBER, avg1 OUT NUMBER, prod OUT NUMBER);
PROCEDURE Proc2(num1 IN NUMBER, result1 OUT NUMBER);
FUNCTION fn11(num2 IN NUMBER) RETURN VARCHAR2;
FUNCTION fn22(a IN NUMBER, b IN NUMBER, c IN NUMBER) RETURN NUMBER;
END Mypk1;

CREATE OR REPLACE PACKAGE BODY Mypk1 AS
PROCEDURE proc1(a IN NUMBER, b IN NUMBER, sum1 OUT NUMBER, avg1 OUT NUMBER, prod OUT NUMBER) IS
BEGIN
sum1 := a + b;
avg1 := (a + b) / 2;
prod := a * b;
END proc1;

PROCEDURE proc2(num1 IN NUMBER, result1 OUT NUMBER) IS
BEGIN
result1 := SQRT(num1);
END proc2;

FUNCTION fn11(num2 IN NUMBER)RETURN VARCHAR2 IS
BEGIN
IF MOD(num2,2) = 0 THEN
RETURN 'Even';
ELSE
RETURN 'Odd';
END IF;
END fn11;

FUNCTION fn22(a IN NUMBER, b IN NUMBER, c IN NUMBER) RETURN NUMBER IS
BEGIN
RETURN a + b + c;
END fn22;

END Mypk1;
SET SERVEROUTPUT ON;

DECLARE
  a1 NUMBER;
  b1 NUMBER;
  s NUMBER;
  av NUMBER;
  p NUMBER;
  sqr NUMBER;
  evennum NUMBER;
  res_even VARCHAR2(10);
  n1 NUMBER;
  n2 NUMBER;
  n3 NUMBER; 
  total NUMBER;
BEGIN
  a1 := &first_number_for_addition;
  b1 := &second_number_for_addition;

  MyPk1.proc1(a1,b1,s,av,p);
  DBMS_OUTPUT.PUT_LINE('Sum of ' || a1 || ' and ' || b1 || ' is ' || s);
  DBMS_OUTPUT.PUT_LINE('Average of ' || a1 || ' and ' || b1 || ' is ' || av);
  DBMS_OUTPUT.PUT_LINE('Product of ' || a1 || ' and ' || b1 || ' is ' || p);

  n1 := &number_for_square_root;

  MyPk1.proc2(n1,sqr);
  DBMS_OUTPUT.PUT_LINE('Square root of ' || n1 || ' is ' || sqr);

  evennum := &number_for_even_odd_check;

  res_even := MyPk1.fn11(evennum);
  DBMS_OUTPUT.PUT_LINE(evennum || ' is ' || res_even);

  n1 := &num1_for_sum3;
  n2 := &num2_for_sum3;
  n3 := &num3_for_sum3;

  total := MyPk1.fn22(n1,n2,n3);
  DBMS_OUTPUT.PUT_LINE('Sum of ' || n1 || ',' || n2 || ' and ' || n3 || ' = ' || total);
END;
/
