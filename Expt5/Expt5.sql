CREATE TABLE Employee (
    Emp_id INT PRIMARY KEY,
    Emp_name VARCHAR(50),
    Dept VARCHAR(50),
    Salary DECIMAL(10,2)
);

INSERT INTO Employee VALUES (1, 'David Smith', 'HR', 7500.00);
INSERT INTO Employee VALUES (2, 'Onion', 'Marketing', 6900.00)
INSERT INTO Employee VALUES (3, 'Charles Brown', 'Production', 7200.00);
INSERT INTO Employee VALUES (4, 'Arjun Kannan', 'Sales', 8800.00);
INSERT INTO Employee VALUES (5, 'Athul George', 'Production', 6600.00);

select * from Employee;

--1. Select employees with salaries greater than 7000
SELECT * FROM Employee WHERE Salary > 7000;

--2. Update the salary of 'David Smith' to 8200.00
UPDATE Employee SET Salary = 8200.00 WHERE Emp_name = 'David Smith';

--3. Insert a new employee (Emp_id = 6)
INSERT INTO Employee VALUES (6, 'Daniel Harris', 'Production', 6700.00);

--4. Delete the employee with Emp_id = 3 ('Charles Brown')
DELETE FROM Employee WHERE Emp_id = 3;

--5. Select employees whose names do NOT start with 'D' or 'O'
SELECT * FROM Employee WHERE Emp_name NOT LIKE 'D%' AND Emp_name NOT LIKE 'O%';

--6. Calculate total salary expense for each department
 SELECT Dept, SUM(Salary) AS Total_SalaryFROM Employee GROUP BY Dept;

--7. Update salary of employees in 'Production' dept by 5%
UPDATE Employee SET Salary = Salary * 1.05 WHERE Dept = 'Production';

--8. Delete all employees with salaries below 7000
DELETE FROM Employee WHERE Salary < 7000;

--9. Find employee with the lowest salary (name + salary)
SELECT Emp_name, Salary FROM Employee WHERE Salary = (SELECT MIN(Salary) FROM Employee);

--10. Update salary of employees in 'Marketing' dept to 8200.00
UPDATE Employee SET Salary = 8200.00 WHERE Dept = 'Marketing';

--11. Find names of all employees starting with 'A'
SELECT Emp_name FROM Employee WHERE Emp_name LIKE 'A%';

--12. List names of employees whose names contain substring 'it'
SELECT Emp_name FROM Employee WHERE Emp_name LIKE '%it%';

--13. List all departments in UPPER CASE format
SELECT DISTINCT UPPER(Dept) AS Department_Upper FROM Employee;

--14. List employee details whose department starts with 'M', 3rd letter is 'r', and contains 'ket'
SELECT * FROM Employee WHERE Dept LIKE 'M_r%' AND Dept LIKE '%ket%';

--15. List all departments in reverse in uppercase format (no duplicates)
SELECT DISTINCT REVERSE(UPPER(Dept)) AS Reversed_Dept FROM Employee;
