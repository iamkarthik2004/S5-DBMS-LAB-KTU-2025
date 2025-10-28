--Qn1. Create a function factorial to find the factorial of a number. Use this function in PL/SQL Program.
Create or replace function factorial (n in number) return number is
  result number := 1;
begin
  for i in 1..n loop
    result := result*i;
  end loop;
  return result;
end;
/

set serveroutput on;
declare
  num number;
  fact number;
begin
  dbms_output.put_line('Enter a number:');
  num := &num;
  fact := factorial(num);
  dbms_output.put_line('Factorial of' || num || 'is' || fact);
end;
/

--Qn2. Create a table student_details(roll int, marks int, phone in). 
--Create a procedure pr1 to update all rows in the database. Boost the marks of all students by 5%
Create table student_details(roll int, marks in, phone int);
insert into student_details values(1,20,3429502939);
insert into student_details values(2,18,9899845235);
insert into student_details values(3,54,3450949503);
insert into student_details values(4,23,7849950394);
insert into student_details values(5,32,9134532959);
select * from student_details;

create or replace procedure pr2
as
begin
update student_details set marks=marks+marks*0.05;
end;
/

begin
pr2;
end;
/
select * from student_details;

--Qn3. Create a table student(id,name,m1,m2,m3,total,grade). Create a function f1 to calculate grade. Create a procedure p1 to update the total and grade.
--Read: id,name,m1,m2,m3 from the user.
--Insert the tuple into the database.
--Using function f1 calculate the grade
--Using procedure p1, update the grade value for the tuple
Create table student3(id int, name varchar(40), m1 int, m2 int, m3 int, total int, grade varchar(10));

CREATE OR REPLACE FUNCTION f1(total_marks IN NUMBER)
RETURN VARCHAR2
AS
grade VARCHAR2(2);
BEGIN
IF total_marks >= 240 THEN
grade := 'A';
ELSIF total_marks >= 180 THEN
grade := 'B';
ELSIF total_marks >= 120 THEN
grade := 'C';
ELSIF total_marks >= 60 THEN
grade := 'D';
ELSE
grade := 'F';
END IF;
RETURN grade;
END;
/

Create or replace procedure p1(stud_id in integer) as
totalM number;
st_grade varchar(5);
begin
select m1+m2+m3 into totalM from student3 where stud_id=id;
st_grade := f1(totalM);

update student3 set total = totalM, grade = st_grade where id=stud_id;
commit;
end;
/

declare
v_id int := &id;
v_name varchar(40) := &name;
v_m1 int := &m1;
v_m2 int := &m2;
v_m3 int := &m3;
begin
  insert into student3(id, name, m1, m2, m3) values (v_id,v_name,v_m1,v_m2,v_m3);
    p1(v_id);
end;
/

select * from student3;
