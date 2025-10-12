--1. Program to find factorial of a number
declare
f number := 1;
i number := 1;
n number;
begin
n := &n;
while i<= loop
f := f*i;
i := i+1;
end loop;
dbms_output.put_line('Factorial of' || n || '=' || f);
end;
/
