-- CREATE TABLES

CREATE TABLE Publisher(
    Publisher_id VARCHAR2(100) PRIMARY KEY,
    Publisher_Name VARCHAR2(100),
    Address VARCHAR(200),
    PhoneNo LONG
);

CREATE TABLE Author(
    Author_id VARCHAR2(100) PRIMARY KEY,
    Author_Name VARCHAR2(100),
    Email VARCHAR2(100),
    PhoneNo LONG
);

CREATE TABLE Book(
    Book_id VARCHAR2(100) PRIMARY KEY,
    Title VARCHAR2(100),
    Price INT,
    Publisher_id VARCHAR2(100),
    Author_id VARCHAR2(100),
    isbn INT,
    FOREIGN KEY (Publisher_id) REFERENCES Publisher(Publisher_id),
    FOREIGN KEY (Author_id) REFERENCES Author(Author_id)
);

CREATE TABLE Book_Author(
    Book_id VARCHAR2(100),
    Author_id VARCHAR2(100),
    PRIMARY KEY(Book_id, Author_id),
    FOREIGN KEY (Book_id) REFERENCES Book(Book_id),
    FOREIGN KEY (Author_id) REFERENCES Author(Author_id)
);

CREATE TABLE Member1(
    Member_id VARCHAR2(100) PRIMARY KEY,
    Member_Name VARCHAR2(100),
    Branch VARCHAR2(100),
    Year_of_join INT,
    RollNo INT,
    Email VARCHAR2(100),
    PhoneNo LONG,
    Status VARCHAR2(3)
);

CREATE TABLE Book_Issue(
    Issue_id VARCHAR2(100) PRIMARY KEY,
    Date_of_issue VARCHAR2(10),
    Book_id VARCHAR2(100),
    Member_id VARCHAR2(100),
    Exp_dateOf_return VARCHAR2(10),
    FOREIGN KEY (Book_id) REFERENCES Book(Book_id),
    FOREIGN KEY (Member_id) REFERENCES Member1(Member_id)
);

CREATE TABLE BookReturn(
    Issue_id VARCHAR2(100) PRIMARY KEY,
    Actual_dateOf_return VARCHAR2(10),
    LateDays VARCHAR2(10),
    LateFees INT,
    FOREIGN KEY (Issue_id) REFERENCES Book_Issue(Issue_id)
);

CREATE TABLE Fines(
    FromDate INT,
    ToDate INT,
    Amount INT
);

-- INSERT DATA

-- Publishers
INSERT INTO Publisher (Publisher_id, Publisher_Name, Address, PhoneNo) 
VALUES ('P001', 'DC Books', 'Kottayam, Kerala', 9400123456);

INSERT INTO Publisher (Publisher_id, Publisher_Name, Address, PhoneNo) 
VALUES ('P002', 'Mathrubhumi Publishing', 'Kozhikode, Kerala', 9800345678);

INSERT INTO Publisher (Publisher_id, Publisher_Name, Address, PhoneNo) 
VALUES ('P003', 'Green Books', 'Thrissur, Kerala', 9745681234);

-- Authors
INSERT INTO Author (Author_id, Author_Name, Email, PhoneNo) 
VALUES ('A001', 'K.R. Meera', 'kr.meera@keralalit.in', 9847000001);

INSERT INTO Author (Author_id, Author_Name, Email, PhoneNo) 
VALUES ('A002', 'Beniyamin', 'beniyamin@keralalit.in', 9847000002);

INSERT INTO Author (Author_id, Author_Name, Email, PhoneNo) 
VALUES ('A003', 'M.T. Vasudevan Nair', 'mt.vasudevan@keralalit.in', 9847000003);

-- Books
INSERT INTO Book (Book_id, Title, Price, Publisher_id, Author_id, isbn) 
VALUES ('B001', 'Aarachar', 450, 'P001', 'A001', 9788126412345);

INSERT INTO Book (Book_id, Title, Price, Publisher_id, Author_id, isbn) 
VALUES ('B002', 'Aadujeevitham', 350, 'P002', 'A002', 9788126456789);

INSERT INTO Book (Book_id, Title, Price, Publisher_id, Author_id, isbn) 
VALUES ('B003', 'Randamoozham', 400, 'P003', 'A003', 9788126498765);

-- Book Authors
INSERT INTO Book_Author (Book_id, Author_id) VALUES ('B001', 'A001');
INSERT INTO Book_Author (Book_id, Author_id) VALUES ('B002', 'A002');
INSERT INTO Book_Author (Book_id, Author_id) VALUES ('B003', 'A003');

-- Members
INSERT INTO Member1 (Member_id, Member_Name, Branch, Year_of_join, RollNo, Email, PhoneNo, Status) 
VALUES ('MB001', 'Karthik Krishnan', 'Computer Science', 2023, 45, 'karthik.krishnan@sjcet.ac.in', 9847000045, 'ACT');

INSERT INTO Member1 (Member_id, Member_Name, Branch, Year_of_join, RollNo, Email, PhoneNo, Status) 
VALUES ('MB002', 'Abijithraj', 'Mechanical Eng', 2023, 52, 'abijithraj@sjcet.ac.in', 9847000052, 'ACT');

INSERT INTO Member1 (Member_id, Member_Name, Branch, Year_of_join, RollNo, Email, PhoneNo, Status) 
VALUES ('MB003', 'Amjith Sajith', 'Electrical Eng', 2022, 61, 'amjith.sajith@sjcet.ac.in', 9847000061, 'INA');

-- Book Issues
INSERT INTO Book_Issue (Issue_id, Date_of_issue, Book_id, Member_id, Exp_dateOf_return) 
VALUES ('I001', '2025-07-01', 'B001', 'MB001', '2025-07-15');

INSERT INTO Book_Issue (Issue_id, Date_of_issue, Book_id, Member_id, Exp_dateOf_return) 
VALUES ('I002', '2025-07-05', 'B002', 'MB002', '2025-07-20'); 

INSERT INTO Book_Issue (Issue_id, Date_of_issue, Book_id, Member_id, Exp_dateOf_return) 
VALUES ('I003', '2025-07-10', 'B003', 'MB003', '2025-07-25');

-- Book Returns
INSERT INTO BookReturn (Issue_id, Actual_dateOf_return, LateDays, LateFees) 
VALUES ('I001', '2025-07-16', '1', 10);

INSERT INTO BookReturn (Issue_id, Actual_dateOf_return, LateDays, LateFees) 
VALUES ('I002', '2025-07-20', '0', 0);

INSERT INTO BookReturn (Issue_id, Actual_dateOf_return, LateDays, LateFees) 
VALUES ('I003', '2025-07-28', '3', 30);

-- Fines
INSERT INTO Fines (FromDate, ToDate, Amount) 
VALUES (TO_DATE('2025-07-01', 'YYYY-MM-DD'), TO_DATE('2025-07-05', 'YYYY-MM-DD'), 5);

INSERT INTO Fines (FromDate, ToDate, Amount) 
VALUES (TO_DATE('2025-07-06', 'YYYY-MM-DD'), TO_DATE('2025-07-10', 'YYYY-MM-DD'), 10);

INSERT INTO Fines (FromDate, ToDate, Amount) 
VALUES (TO_DATE('2025-07-11', 'YYYY-MM-DD'), TO_DATE('2025-07-15', 'YYYY-MM-DD'), 20);

-- ALTER DEFAULT VALUE FOR STATUS
ALTER TABLE Member1
MODIFY Status VARCHAR2(3) DEFAULT 'YES';

-- DELETE EXAMPLE
DELETE FROM Book
WHERE Book_id = '10';
