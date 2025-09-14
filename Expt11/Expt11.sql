--1. Table Creatin
CREATE TABLE bank(
  bankname VARCHAR2(50),
  headoffice VARCHAR2(50),
  branch VARCHAR2(50),
  branchcode VARCHAR2(10) PRIMARY KEY
);

--2. Insert Records (before savepoint)
INSERT INTO bank VALUES('SBI','Mumbai','Kochi','B001');
INSERT INTO bank VALUES('SBI','Mumbai','Chennai','B002');
INSERT INTO bank VALUES('HDFC','Mumbai','Bengaluru','B003');

--savepoint sp1
savepoint sp1;

--3. Insert more records (after savepoint)
INSERT INTO bank VALUES('ICICI','Mumbai','Delhi','B004');

savepoint sp2;


--4. Perform updates and deletes
UPDATE bank set branch='Hyderabad' WHERE branchcode='B004';
DELETE FROM bank WHERE branchcode='B003';
select * from bank;

--5. Rollback to Savepoint
Rollback to sp2;
Rollback to sp1;

--6. Commit the Transaction
commit;
Rollback;

--Expt 11
INSERT INTO bank VALUES('ICICI','Mumbai','Delhi','B004');
INSERT INTO bank VALUES('GraminBank','Kerala','Kottayam','B005');

Grant select on Bank to c23csb46;
select * from c23csb46.bank;

Revoke select on Bank from c23csb46;
select * from c23csb46.bank;
