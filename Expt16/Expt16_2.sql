--Qn1
CREATE TABLE bank_details ( 
accno NUMBER PRIMARY KEY, name1 VARCHAR2(100), 
balance NUMBER, 
adate DATE 
); 
CREATE TABLE bank_interest ( 
accno NUMBER PRIMARY KEY, 
interest NUMBER 
); 
INSERT INTO bank_details VALUES (1001, 'Aby', 3005, TO_DATE('10-OCT-2015', 'DD
MON-YYYY')); 
INSERT INTO bank_details VALUES (1002, 'Alan', 4000, TO_DATE('05-MAY-1995', 'DD
MON-YYYY')); 
INSERT INTO bank_details VALUES (1003, 'Amal', 5000, TO_DATE('16-MAR-1992', 'DD
MON-YYYY')); 
INSERT INTO bank_details VALUES (2020, 'Ben', 7000, TO_DATE('12-JAN-2020', 'DD
MON-YYYY')); 
INSERT INTO bank_details VALUES (2021, 'Cara', 6500, TO_DATE('23-FEB-2023', 'DD
MON-YYYY')); 
INSERT INTO bank_details VALUES (2022, 'Derek', 8200, TO_DATE('15-MAY-2025', 'DD
MON-YYYY')); 
INSERT INTO bank_details VALUES (2023, 'Eva', 5400, TO_DATE('30-JUL-2023', 'DD-MON
YYYY')); 
INSERT INTO bank_details VALUES (2024, 'Finn', 4800, TO_DATE('08-APR-2020', 'DD
MON-YYYY')); 
INSERT INTO bank_details VALUES (2025, 'Grace', 9100, TO_DATE('19-SEP-2025', 'DD
MON-YYYY')); 
INSERT INTO bank_details VALUES (2026, 'Hank', 7300, TO_DATE('27-NOV-2023', 'DD
MON-YYYY')); 

DECLARE
CURSOR bank_cur IS 
SELECT accno, balance FROM bank_details; 
v_accno bank_details.accno%TYPE; 
v_balance bank_details.balance%TYPE; 
v_interest NUMBER; 
BEGIN 
OPEN bank_cur; 
LOOP 
FETCH bank_cur INTO v_accno, v_balance; 
EXIT WHEN bank_cur%NOTFOUND; 
v_interest := 0.08 * v_balance; 
INSERT INTO bank_interest(accno, interest) VALUES (v_accno, v_interest); 
END LOOP; 
CLOSE bank_cur; 
COMMIT; 
END; 
select * from bank_interest;

--Qn2
CREATE TABLE student1 ( 
id NUMBER PRIMARY KEY, 
name VARCHAR2(50), 
m1 NUMBER, 
m2 NUMBER, 
m3 NUMBER, 
grade CHAR(1) 
); 
INSERT INTO student1 VALUES (1, 'Aby', 78, 85, 90, NULL); 
INSERT INTO student1 VALUES (2, 'Ben', 65, 70, 60, NULL); 
INSERT INTO student1 VALUES (3, 'Cara', 92, 88, 95, NULL); 
INSERT INTO student1 VALUES (4, 'Derek', 55, 60, 58, NULL); 
INSERT INTO student1 VALUES (5, 'Eva', 80, 75, 85, NULL); 
DECLARE 
CURSOR stu_cur IS 
SELECT id, m1, m2, m3 FROM student1; 
v_id student1.id%TYPE; 
v_m1 student1.m1%TYPE; 
v_m2 student1.m2%TYPE; 
v_m3 student1.m3%TYPE; 
v_total NUMBER; 
v_grade CHAR(1); 
BEGIN 
OPEN stu_cur; 
LOOP 
FETCH stu_cur INTO v_id, v_m1, v_m2, v_m3; 
EXIT WHEN stu_cur%NOTFOUND; 
v_total := v_m1 + v_m2 + v_m3;

 IF v_total >= 250 THEN 
      v_grade := 'A'; 
    ELSIF v_total >= 200 THEN 
      v_grade := 'B'; 
    ELSIF v_total >= 150 THEN 
      v_grade := 'C'; 
    ELSE 
      v_grade := 'D'; 
    END IF; 
 
 
    UPDATE student1 SET grade = v_grade WHERE id = v_id; 
  END LOOP; 
  CLOSE stu_cur; 
   
END; 
/ 
 
 
SELECT * FROM student1;

--Qn 3
CREATE TABLE people_list ( 
id NUMBER PRIMARY KEY, 
name VARCHAR2(100), 
dt_joining DATE, 
place VARCHAR2(100) 
); 
CREATE TABLE exp_list ( 
id NUMBER PRIMARY KEY, 
name VARCHAR2(100), 
experience NUMBER(5,2) 
); 
INSERT INTO people_list VALUES (1, 'Aby', TO_DATE('15-JAN-2010', 'DD-MON-YYYY'), 
'Kottayam'); 
INSERT INTO people_list VALUES (2, 'Ben', TO_DATE('20-MAR-2015', 'DD-MON-YYYY'), 
'Ernakulam'); 
INSERT INTO people_list VALUES (3, 'Cara', TO_DATE('10-JUL-2012', 'DD-MON-YYYY'), 
'Thrissur'); 
INSERT INTO people_list VALUES (4, 'Derek', TO_DATE('01-DEC-2020', 'DD-MON-YYYY'), 
'Kollam'); 
INSERT INTO people_list VALUES (5, 'Eva', TO_DATE('05-MAY-2008', 'DD-MON-YYYY'), 
'Alappuzha'); 
DECLARE 
CURSOR ppl_cur IS 
SELECT id, name, dt_joining FROM people_list; 
v_id people_list.id%TYPE; 
v_name people_list.name%TYPE; 
v_join people_list.dt_joining%TYPE; 
v_exp NUMBER(5,2); 
BEGIN 
OPEN ppl_cur; 
LOOP 
FETCH ppl_cur INTO v_id, v_name, v_join;

EXIT WHEN ppl_cur%NOTFOUND; -- Calculate experience in years 
v_exp := ROUND(MONTHS_BETWEEN(SYSDATE, v_join) / 12, 2); -- Insert into exp_list if experience > 10 years 
IF v_exp > 10 THEN 
INSERT INTO exp_list(id, name, experience) 
VALUES (v_id, v_name, v_exp); 
END IF; 
END LOOP; 
CLOSE ppl_cur; 
END; 
/ -- View results 
SELECT * FROM exp_list;

--Qn 4
CREATE TABLE employee_list ( 
  id NUMBER PRIMARY KEY, 
  name VARCHAR2(100), 
  monthly_salary NUMBER 
); 
INSERT INTO employee_list VALUES (1, 'Aby', 4500);     -- Annual: 54000 
INSERT INTO employee_list VALUES (2, 'Ben', 8000);     -- Annual: 96000 
INSERT INTO employee_list VALUES (3, 'Cara', 18000);   -- Annual: 216000 
INSERT INTO employee_list VALUES (4, 'Derek', 42000);  -- Annual: 504000 
INSERT INTO employee_list VALUES (5, 'Eva', 60000);    -- Annual: 720000 
select * from employee_list; 
 
DECLARE 
  CURSOR emp_cur IS 
    SELECT id, monthly_salary FROM employee_list; 
  v_id employee_list.id%TYPE; 
  v_salary employee_list.monthly_salary%TYPE; 
  v_annual NUMBER; 
  v_increment NUMBER; 
BEGIN 
  OPEN emp_cur; 
  LOOP 
    FETCH emp_cur INTO v_id, v_salary; 
    EXIT WHEN emp_cur%NOTFOUND; 
 
    v_annual := v_salary * 12; 
 
    -- Determine increment based on annual salary 
    IF v_annual < 60000 THEN 
      v_increment := v_salary * 0.25; 
    ELSIF v_annual BETWEEN 60000 AND 200000 THEN 
      v_increment := v_salary * 0.20; 
    ELSIF v_annual BETWEEN 200000 AND 500000 THEN

v_increment := v_salary * 0.15; 
ELSE 
v_increment := v_salary * 0.10; 
END IF; -- Update monthly salary 
UPDATE employee_list 
SET monthly_salary = v_salary + v_increment 
WHERE id = v_id; 
END LOOP; 
CLOSE emp_cur; 
END; 
/ -- View updated salaries 
SELECT * FROM employee_list;
