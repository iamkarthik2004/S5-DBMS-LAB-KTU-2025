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

--Qn2. Create a table student_details(roll int, marks int, phone in). Create a procedure pr1 to update all rows in the database. Boost the marks of all students by 5%
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
