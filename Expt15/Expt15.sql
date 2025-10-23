CREATE OR REPLACE PACKAGE Mypk1 AS
	PROCEDURE proc1 (a IN NUMBER, b IN NUMBER, sum OUT NUMBER, avg OUT NUMBER, prod OUT NUMBER);
	PROCEDURE proc2 (num IN NUMBER, result OUT NUMBER);
	FUNCTION fn11 (num IN NUMBER) RETURN VARCHAR2;
	FUNCTION fn22 (a IN NUMBER, b IN NUMBER, c IN NUMBER) RETURN NUMBER;
END Mypk1;
/

	PROCEDURE proc1 (a IN NUMBER, b IN NUMBER, sum OUT NUMBER, avg OUT NUMBER, prod OUT NUMBER) IS
	BEGIN 
		sum := a + b;
		avg := (a + b)/2;
		prod := a * b;
	END proc1;
	PROCEDURE proc2(num IN NUMBER, result OUT NUMBER) IS
	BEGIN
		result := SQRT(num);
	END proc2;
	FUNCTION fn11 (num IN NUMBER) RETURN VARCHAR2 IS
	BEGIN
		IF MOD(num, 2) = 0 THEN
			RETURN 'Even';
		ELSE
			RETURN 'Odd';
		END IF;
	END fn11;
	FUNCTION fn22 (a IN NUMBER, b IN NUMBER, c IN NUMBER) RETURN NUMBER IS
	BEGIN
		RETURN a + b + c;
	END fn22;
END Mypk1;
/

SET SERVEROUTPUT ON;
DECLARES
	a1 NUMBER;
	b1 NUMBER;
	a2 NUMBER;
	b2 NUMBER;
	s NUMBER;
	av NUMBER;
	p NUMBER;
	sqr NUMBER;
	evennum NUMBER;
	res_even NUMBER;
	n1 NUMBER;
	n2 NUMBER;
	n3 NUMBER;
	total NUMBER;
BEGIN
	a1 := &first_number_for_addition;
	b1 := &second_number_for_addition;
	Mypk1.proc1(a1,b1,s,av,p);
	DBMS_OUTPUT.PUT_LINE('Sum of' || al || 
and' || b1 || '=' || s);
	DBMS_OUTPUT.PUT_LINE(
