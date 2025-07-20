
-- CREATE TABLES

CREATE TABLE Publisher(
    Publisher_id INT PRIMARY KEY,
    Publisher_Name VARCHAR2(100),
    Address VARCHAR(200),
    PhoneNo LONG
);

CREATE TABLE Author(
    Author_id INT PRIMARY KEY,
    Author_Name VARCHAR2(100),
    Email VARCHAR2(100),
    PhoneNo LONG
);

CREATE TABLE Book(
    Book_id INT PRIMARY KEY,
    Title VARCHAR2(100),
    Price INT,
    Publisher_id INT,
    Author_id INT,
    isbn INT,
    FOREIGN KEY (Publisher_id) REFERENCES Publisher(Publisher_id),
    FOREIGN KEY (Author_id) REFERENCES Author(Author_id)
);

CREATE TABLE Book_Author(
    Book_id INT,
    Author_id INT,
    PRIMARY KEY(Book_id, Author_id),
    FOREIGN KEY (Book_id) REFERENCES Book(Book_id),
    FOREIGN KEY (Author_id) REFERENCES Author(Author_id)
);

CREATE TABLE Member1(
    Member_id INT PRIMARY KEY,
    Member_Name VARCHAR2(100),
    Branch VARCHAR2(100),
    Year_of_join INT,
    RollNo INT,
    Email VARCHAR2(100),
    PhoneNo LONG,
    Status VARCHAR2(3)
);

CREATE TABLE Book_Issue(
    Issue_id INT PRIMARY KEY,
    Date_of_issue VARCHAR2(10),
    Book_id INT,
    Member_id INT,
    Exp_dateOf_return VARCHAR2(10),
    FOREIGN KEY (Book_id) REFERENCES Book(Book_id),
    FOREIGN KEY (Member_id) REFERENCES Member1(Member_id)
);

CREATE TABLE BookReturn(
    Issue_id INT PRIMARY KEY,
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
INSERT INTO Publisher VALUES (1, 'DC Books', 'Kottayam, Kerala', 9400123456);
INSERT INTO Publisher VALUES (2, 'Mathrubhumi Publishing', 'Kozhikode, Kerala', 9800345678);
INSERT INTO Publisher VALUES (3, 'Green Books', 'Thrissur, Kerala', 9745681234);

-- Authors
INSERT INTO Author VALUES (1, 'K.R. Meera', 'kr.meera@keralalit.in', 9847000001);
INSERT INTO Author VALUES (2, 'Beniyamin', 'beniyamin@keralalit.in', 9847000002);
INSERT INTO Author VALUES (3, 'M.T. Vasudevan Nair', 'mt.vasudevan@keralalit.in', 9847000003);

-- Books
INSERT INTO Book VALUES (1, 'Aarachar', 450, 1, 1, 9788126412345);
INSERT INTO Book VALUES (2, 'Aadujeevitham', 350, 2, 2, 9788126456789);
INSERT INTO Book VALUES (3, 'Randamoozham', 400, 3, 3, 9788126498765);

-- Book Authors
INSERT INTO Book_Author VALUES (1, 1);
INSERT INTO Book_Author VALUES (2, 2);
INSERT INTO Book_Author VALUES (3, 3);

-- Members
INSERT INTO Member1 VALUES (1, 'Karthik Krishnan', 'Computer Science', 2023, 45, 'karthik.krishnan@sjcet.ac.in', 9847000045, 'ACT');
INSERT INTO Member1 VALUES (2, 'Abijithraj', 'Mechanical Eng', 2023, 52, 'abijithraj@sjcet.ac.in', 9847000052, 'ACT');
INSERT INTO Member1 VALUES (3, 'Amjith Sajith', 'Electrical Eng', 2022, 61, 'amjith.sajith@sjcet.ac.in', 9847000061, 'INA');

-- Book Issues
INSERT INTO Book_Issue VALUES (1, '2025-07-01', 1, 1, '2025-07-15');
INSERT INTO Book_Issue VALUES (2, '2025-07-05', 2, 2, '2025-07-20'); 
INSERT INTO Book_Issue VALUES (3, '2025-07-10', 3, 3, '2025-07-25');

-- Book Returns
INSERT INTO BookReturn VALUES (1, '2025-07-16', '1', 10);
INSERT INTO BookReturn VALUES (2, '2025-07-20', '0', 0);
INSERT INTO BookReturn VALUES (3, '2025-07-28', '3', 30);

-- Fines
INSERT INTO Fines VALUES (20250701, 20250705, 5);
INSERT INTO Fines VALUES (20250706, 20250710, 10);
INSERT INTO Fines VALUES (20250711, 20250715, 20);

-- ALTER DEFAULT VALUE FOR STATUS
ALTER TABLE Member1
MODIFY Status VARCHAR2(3) DEFAULT 'YES';

-- DELETE EXAMPLE
DELETE FROM Book WHERE Book_id = 10;
