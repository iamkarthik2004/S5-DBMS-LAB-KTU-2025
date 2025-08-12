CREATE TABLE Customer (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(100),
    ContactNo VARCHAR(20),
    Address VARCHAR(255),
    City VARCHAR(50),
    PostalCode VARCHAR(20),
    Country VARCHAR(50)
);
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    LastName VARCHAR(50),
    FirstName VARCHAR(50),
    BirthDate DATE,
    Photo VARCHAR(255)
);
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    EmployeeID INT,
    OrderDate DATE,
    ShipperID INT,
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID),
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);

-- Insert Customers
INSERT INTO Customer (CustomerID, CustomerName, ContactNo, Address, City, PostalCode, Country) 
VALUES (1, 'Karthik', '0471-1234567', 'Memury', 'Kottayam', '686671', 'India');

INSERT INTO Customer (CustomerID, CustomerName, ContactNo, Address, City, PostalCode, Country) 
VALUES (2, 'Melbin', '0473-2345678', 'Palai', 'Palai', '679541', 'USA');

INSERT INTO Customer (CustomerID, CustomerName, ContactNo, Address, City, PostalCode, Country) 
VALUES (3, 'Jameson', '0474-3456789', 'Bharananganam', 'Palai', '6866002', 'UK');

INSERT INTO Customer (CustomerID, CustomerName, ContactNo, Address, City, PostalCode, Country) 
VALUES (4, 'Joel', '0475-4567890', 'Changanassery', 'Thiruvalla', '689522', 'Germany');

INSERT INTO Customer (CustomerID, CustomerName, ContactNo, Address, City, PostalCode, Country) 
VALUES (5, 'Smith', '0476-5678901', 'Puthupally', 'Manarcad', '689541', 'Mexico');



-- Insert Employees
INSERT INTO Employees (EmployeeID, LastName, FirstName, BirthDate, Photo) 
VALUES (1, 'Biju', 'Jacob', TO_DATE('11-07-2005', 'DD-MM-YYYY'), 'jacob.jpg');

INSERT INTO Employees (EmployeeID, LastName, FirstName, BirthDate, Photo) 
VALUES (2, 'George', 'Ivin', TO_DATE('15-03-1990', 'DD-MM-YYYY'), 'ivin.jpg');

INSERT INTO Employees (EmployeeID, LastName, FirstName, BirthDate, Photo) 
VALUES (3, 'S', 'Hari', TO_DATE('22-11-1985', 'DD-MM-YYYY'), 'hari.jpg');

INSERT INTO Employees (EmployeeID, LastName, FirstName, BirthDate, Photo) 
VALUES (4, 'Kannan', 'Arjun', TO_DATE('05-08-1992', 'DD-MM-YYYY'), 'arjun.jpg');

INSERT INTO Employees (EmployeeID, LastName, FirstName, BirthDate, Photo) 
VALUES (5, 'Mathew', 'Robins', TO_DATE('30-12-1988', 'DD-MM-YYYY'), 'robins.jpg');


-- Insert Orders
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, ShipperID) 
VALUES (101, 1, 2, TO_DATE('2025-07-01', 'YYYY-MM-DD'), 1);

INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, ShipperID) 
VALUES (102, 3, 4, TO_DATE('2025-07-02', 'YYYY-MM-DD'), 2);

INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, ShipperID) 
VALUES (103, 2, 1, TO_DATE('2025-07-03', 'YYYY-MM-DD'), 1);

INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, ShipperID) 
VALUES (104, 5, 3, TO_DATE('2025-07-04', 'YYYY-MM-DD'), 3);

INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, ShipperID) 
VALUES (105, 4, 5, TO_DATE('2025-07-05', 'YYYY-MM-DD'), 2);


--Qn 1
SELECT * FROM Customer ORDER BY CustomerName ASC;

--Qn 2

