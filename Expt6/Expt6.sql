--Part A

select 5*2 from dual;
SELECT SYSDATE, CEIL(8.29), FLOOR(9.76) FROM dual;

--Qn 1
SELECT CEIL(8.29) FROM dual;

--Qn 2
SELECT CEIL(-3.9) FROM DUAL;

--Qn 3
SELECT CEIL(17/3) FROM DUAL;

--Qn 4
SELECT FLOOR(9.76) FROM DUAL;

--Qn 5
SELECT FLOOR(-5.3) FROM DUAL;

--Qn 6
SELECT FLOOR(15/4) FROM DUAL;

--Qn 7
SELECT SQRT(625) FROM DUAL;

--Qn 8
SELECT SQRT(2) FROM DUAL;

--Qn 9
SELECT ABS(8.29) FROM DUAL;

--Qn 10
SELECT ABS(-3.14) FROM DUAL;

--Qn 11
SELECT ABS(-42) FROM DUAL;

--Qn 12
SELECT SYSDATE FROM DUAL;

--Qn 13
SELECT to_char(sysdate, 'dy') FROM DUAL;

--Qn 14
SELECT SYSTIMESTAMP FROM DUAL;

--Qn 15
SELECT LEAST('Karthik', 'Melbin', 'Joel') FROM DUAL;

--Qn 16
SELECT GREATEST('Karthik', 'Melbin', 'Joel') FROM DUAL;

--Qn 17
SELECT LTRIM('        TRIM ME') FROM DUAL;

--Qn 18
SELECT RTRIM('I love India          ') FROM DUAL;

--Qn 19
SELECT rpad('Karthik',15,'x') FROM DUAL;

--Qn 20
SELECT rpad('123','6','0') FROM DUAL;

--Qn 21
SELECT REVERSE('uoy evol I') FROM DUAL;

--Qn 22
SELECT REVERSE('racecar') FROM DUAL;

--Qn 23
SELECT LENGTH('Oracle Database') FROM DUAL;

--Qn 24
SELECT ('Oracle' | 'SQL' | 'is' | 'powerful' || 'flexible') FROM DUAL;

--Qn 25
SELECT CONCAT('Karthik', 'Krishnan') FROM DUAL;

--Qn 26
SELECT SUBSTR('India is my country',7,2) FROM DUAL;

--Qn 27
SELECT SUBSTR('Karthik',3,3) FROM DUAL;

--Qn 28
SELECT SUBSTR('Substring', 1,3) FROM DUAL;




