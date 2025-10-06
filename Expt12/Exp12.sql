--(i)
CREATE TABLE BANK2(
  bankcode1 VARCHAR(3) PRIMARY KEY,
  bankname1 VARCHAR(50) NOT NULL,
  headoffice VARCHAR(50),
  branches INT CHECK(branches>0)
);

SELECT * FROM BANK2;

INSERT INTO BANK2 VALUES('SBT','State Bank of Travancore','New Delhi',8);
INSERT INTO BANK2 VALUES('ICBI','Indian CC Bank India','Eranakulam',2);
INSERT INTO BANK2 VALUES('KNB','Kerala Gramin Bank','Kottayam',6);
INSERT INTO BANK2 VALUES('PNB','Punjab National Bank','Eranakulam',3);
INSERT INTO BANK2 VALUES('HSB','Himalayan State Bank','Kottayam',12);
INSERT INTO BANK2 VALUES('EB','Ettumanoor Bank','Kottayam',1);
INSERT INTO BANK2 VALUES('SBN','State Bank of Norvey','New Delhi',9);


--(ii)
CREATE TABLE Branch2 (
  branchid INT PRIMARY KEY,
  branchname VARCHAR(50) DEFAULT 'New Delhi',
  bankid VARCHAR(3),
  FOREIGN KEY (bankid) REFERENCES BANK2(bankcode1) ON DELETE CASCADE
);

INSERT INTO Branch2 VALUES(101,'Kallara','SBT');
INSERT INTO Branch2 VALUES(102,'Manjoor','KNB');
INSERT INTO Branch2 VALUES(103,'Palai','EB');
INSERT INTO Branch2 VALUES(104,'Ettumanoor','PNB');
INSERT INTO Branch2 VALUES(105,'Kottayam','HSB');

Select * from Bank2;
Select * from Branch2;

--(iii)
DELETE FROM Bank2 WHERE bankcode1 = 'SBT';

--(iv)
ALTER TABLE Branch2 DROP Primary Key;

--(v)
CREATE VIEW bank_head_office AS
SELECT *
FROM BANK2
WHERE headoffice = 'Eranakulam';

select * from bank_head_office;

--(vi)
CREATE VIEW bank_branch AS
SELECT b.bankcode1, b.bankname1, br.branchname, br.branchid
FROM BANK2 b
JOIN Branch2 br ON b.bankcode1 = br.bankid
WHERE br.branchname = 'Kottayam';
SELECT * FROM bank_branch;

--(vii)
CREATE VIEW banks_5_branches AS
SELECT *
FROM BANK2
WHERE branches > 5;
select * from banks_5_branches;

--(viii)
CREATE VIEW banks_in_region AS
SELECT *
FROM BANK2
WHERE headoffice = 'New Delhi';
select * from banks_in_region;

select * from BANK2;








