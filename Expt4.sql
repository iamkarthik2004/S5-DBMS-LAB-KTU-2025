-- DBMS LAB EXPERIMENT 3


Create table employee(
emp_id int not null, 
emp_name varchar(30), 
emp_dept varchar(30),
emp_salary_in_us_dollar float,
primary key(emp_id));


insert into employee (emp_id, emp_name, emp_dept, emp_salary_in_us_dollar) 
values (1,'Dora','HR',10000);

insert into employee (emp_id, emp_name, emp_dept, emp_salary_in_us_dollar) 
values (2,'Olivia','Marketing',3000);

insert into employee (emp_id, emp_name, emp_dept, emp_salary_in_us_dollar)
values (3,'Canon','Production',4000);

insert into employee (emp_id, emp_name, emp_dept, emp_salary_in_us_dollar) 
values (4,'Aron','Sale',5000);

insert into employee (emp_id, emp_name, emp_dept, emp_salary_in_us_dollar) 
values (5,'Akhil','Sale',7000);


select * from employee;

--Qn 1
select emp_name from employee where emp_salary_in_us_dollar > 7000;

--Qn 3
insert into employee (emp_id, emp_name, emp_dept, emp_salary_in_us_dollar) 
values (6,'Daniel Haris','Production',60700);

--Qn 2
insert into employee (emp_id, emp_name, emp_dept, emp_salary_in_us_dollar) 
values (7,'David Smith','Marketing',802000);

--Qn 4 (delete the employee with emp_id = 3)
delete from employee where emp_id = 3;

--Qn 5
select emp_name from employee where emp_name not like 'D%' and emp_name not like 'O%';

--Qn 6
select emp_dept, SUM (emp_salary_in_us_dollar)
FROM employee 
GROUP BY emp_dept;

--Qn 7
Update employee set emp_salary_in_us_dollar = emp_salary_in_us_dollar + emp_salary_in_us_dollar * 1.05 where emp_dept='Production';

--Qn 8
delete from employee where emp_salary_in_us_dollar < 7000;

--Qn 9
select emp_name, emp_salary_in_us_dollar from employee where emp_salary_in_us_dollar = (select min(emp_salary_in_us_dollar) from employee); 



--Qn 10
Update employee set emp_salary_in_us_dollar = 8200 where emp_dept='Marketing';


--Qn 11
select emp_name from employee where emp_name like 'A%';

--Qn 12
select emp_name from employee where emp_name like '%it%';

--Qn 13
select upper(emp_dept) from employee;

--Qn 14
SELECT * FROM employee WHERE emp_dept LIKE 'M_r%' AND emp_dept LIKE '%ket%' ;

--Qn 15
select distinct upper(reverse(emp_dept)) from employee;
