CREATE TABLE Items(
  Itemid INT PRIMARY KEY,
  Itemname VARCHAR(50),
  Category1 VARCHAR(50),
  Price Decimal,
  Instock INT NOT NULL
);

CREATE TABLE Customers(
  Custid INT NOT NULL PRIMARY KEY,
  CustName VARCHAR(50),
  Address VARCHAR(50),
  State VARCHAR(50)
);

CREATE TABLE Orderss(
  OrderId INT NOT NULL PRIMARY KEY,
  Quantity INT,
  Orderdate DATE,
  Itemid INT,
  Custid INT,
  FOREIGN KEY (Itemid) REFERENCES Items(Itemid),
  FOREIGN KEY (Custid) REFERENCES Customers(Custid)
);

CREATE TABLE Delivery(
  deliveryid INT NOT NULL PRIMARY KEY,
  Custid INT,
  Orderid INT,
  FOREIGN KEY (Custid) REFERENCES Customers(Custid),
  FOREIGN KEY (Orderid) REFERENCES Orderss(Orderid)
);

--ITEMS
INSERT INTO Items(Itemid, Itemname, Category1, Price, Instock)
VALUES(1, 'Samsung GalaxyS4', 'Smart Phone', 35999, 12);

INSERT INTO Items(Itemid, itemname, Category1, Price, Instock)
VALUES(2, 'Lenovo', 'Laptop', 78599, 5);

INSERT INTO Items(Itemid, itemname, Category1, Price, Instock)
VALUES(3, 'Jio Phone', 'Mobile', 4000, 60);

INSERT INTO Items(Itemid, itemname, Category1, Price, Instock)
VALUES(4, 'Samsung TV', 'TV', 51688, 1);

INSERT INTO Items(Itemid, itemname, Category1, Price, Instock)
VALUES(5, 'BOTS N200', 'Earbuds', 5000, 80);

-- CUSTOMERS
INSERT INTO Customers(Custid, CustName, Address, State)
VALUES (101, 'Elvin', 'Elonplaza', 'Goa');

INSERT INTO Customers(Custid, CustName, Address, State)
VALUES (102, 'Smith', 'Puthiyaveed', 'Tamil Nadu');

INSERT INTO Customers(Custid, CustName, Address, State)
VALUES (103, 'Sodeed', 'SodeedHouse', 'Jammu Kashmeer');

INSERT INTO Customers(Custid, CustName, Address, State)
VALUES (104, 'Melbin', 'NelliyaniHouse', 'Kerala');

INSERT INTO Customers(Custid, CustName, Address, State)
VALUES (105, 'Joel', 'PalaHouse', 'Andra Pradesh');

SELECT * FROM orderss;
--ORDERS 
INSERT INTO Orderss(OrderId, Quantity, Orderdate, Itemid, Custid)
VALUES (1141, 2, DATE '2013-01-21', 1, 101);

INSERT INTO Orderss(OrderId, Quantity, Orderdate, Itemid, Custid)
VALUES (1142, 1, DATE'2025-07-12', 4, 102);

INSERT INTO Orderss(OrderId, Quantity, Orderdate, Itemid, Custid)
VALUES (1143, 3, DATE'2024-09-28', 3, 103);

INSERT INTO Orderss(OrderId, Quantity, Orderdate, Itemid, Custid)
VALUES (1144, 2, DATE'2012-01-05', 2, 104);

INSERT INTO Orderss(OrderId, Quantity, Orderdate, Itemid, Custid)
VALUES (1145, 5, DATE'2025-09-04', 5, 105);

--DELIVERY
INSERT INTO delivery(deliveryid, Custid, Orderid)
VALUES (21, 101, 1144);

INSERT INTO delivery(deliveryid, Custid, Orderid)
VALUES (22, 102, 1141);

INSERT INTO delivery(deliveryid, Custid, Orderid)
VALUES (23, 103, 1142);

INSERT INTO delivery(deliveryid, Custid, Orderid)
VALUES (24, 104, 1143);

INSERT INTO delivery(deliveryid, Custid, Orderid)
VALUES (25, 105, 1145);


--Qn 1
SELECT * FROM Customers c join orderss o on c.custid=o.custid;

--Qn 2
SELECT * FROM Customers c join delivery d on c.custid=d.custid;

--Qn 3
SELECT c.CustName, o.Orderdate FROM customers c join orderss o on c.custid = o.custid where CustName like 'S%';

--Qn 4
SELECT c.CustName='Elvin' 
