create table student(
  s_id int not null primary key,
  s_name varchar(20),
  physics number,
  chemistry number,
  mathematics number,
  grade varchar(15));
  
INSERT INTO student(s_id, s_name,physics, chemistry, mathematics, grade)
VALUES(1,'James', 21,22,40,'Pass');

INSERT INTO student(s_id, s_name,physics, chemistry, mathematics, grade)
VALUES(2,'Appu', 11,25, 24, 'Fail');

INSERT INTO student(s_id, s_name,physics, chemistry, mathematics, grade)
VALUES(3,'Joel', 19,15,50, 'Pass');

INSERT INTO student(s_id, s_name,physics, chemistry, mathematics, grade)
VALUES(4,'Karthik', 25,25,50, 'Pass');

INSERT INTO student(s_id, s_name,physics, chemistry, mathematics, grade)
VALUES(5,'Melbin', 20,20,45, 'Pass');

INSERT INTO student(s_id, s_name,physics, chemistry, mathematics, grade)
VALUES(6,'Aswin',18,15,25, 'Pass');

INSERT INTO student(s_id, s_name,physics, chemistry, mathematics, grade)
VALUES(7, 'Kp', 24, 9, 24, 'Fail');

INSERT INTO student(s_id, s_name,physics, chemistry, mathematics, grade)
VALUES(8, 'Wicky', 9, 9, 26, 'Fail');

INSERT INTO student(s_id, s_name,physics, chemistry, mathematics, grade)
VALUES(9, 'Joy', 13, 20, 36, 'Pass');

INSERT INTO student(s_id, s_name,physics, chemistry, mathematics, grade)
VALUES(10, 'Hari', 21, 21, 31, 'Pass');

select * from student;

--Qn 1
SELECT AVG(physics) from student;

--Qn 2
SELECT MAX(mathematics) AS highest_marks_maths FROM student;

--Qn 3
SELECT MIN(chemistry) AS lowest_mark_chemistry FROM student;

--Qn 4
SELECT COUNT(*) FROM student where physics>12;

--Qn 5
SELECT * FROM student WHERE grade='Pass';

--Qn 6
SELECT s_name,(physics+chemistry+mathematics)AS total_marks, grade from student order by total_marks desc;

--Qn 7
SELECT (COUNT (*)/10)*100 AS pass_percentage FROM student WHERE mathematics>25;

--Qn 8
SELECT (COUNT(*)/10)*100 AS pass_percentage FROM student WHERE grade='Pass';

--Qn 9
SELECT AVG(physics+chemistry+mathematics) AS Avg_total FROM student;

--Qn 10
SELECT COUNT (*) FROM student WHERE physics>=12 AND chemistry>=12 AND mathematics>=25;

--Qn 11
SELECT s_id, total_marks FROM (
  SELECT s_id, (physics + chemistry + mathematics) AS total_marks
  FROM student
  ORDER BY (physics + chemistry + mathematics) DESC
)
WHERE ROWNUM <= 3;

--Qn 12
SELECT AVG(physics), AVG(chemistry), AVG(mathematics) FROM student;

--Qn 13
SELECT s_name 
FROM student 
WHERE physics = 25 OR chemistry = 25 OR mathematics = 50;

--Qn 14
select s_name,mathematics from student where mathematics >(select avg(mathematics)from student);
