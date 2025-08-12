# Experiment 3 – Database Initialization and DDL Commands

## 🎯 Aim
To study the database initialization and DDL commands such as `CREATE`, `ALTER`, `TRUNCATE`, and `DROP`.

---

## 📚 Theory

- **`CREATE`** – Create an object such as a database, table, triggers, index, functions, stored procedures, etc.  
- **`DROP`** – Deletes objects such as tables or a database.  
- **`ALTER`** – Alters the existing database or its object structures.  
- **`TRUNCATE`** – Removes records from tables.  
- **`RENAME`** – Renames database objects.  

---

## 📝 Question

Write SQL commands to:  

1. Create a database named **Library**.  
2. Create DDL statements and create the tables and constraints (from the design) in the database created (**Library**).  
3. Insert values to each table as per the requirement stated below:  

**Tables:**
- **BOOK**  
  `(Book_Id, Title, Language_Id, MRP, Publisher_Id, Published_Date, Volume, Status)`  
  - `Language_Id`, `Publisher_Id` are Foreign Keys (FK)

- **AUTHOR**  
  `(Author_Id, Name, Email, Phone_Number, Status)`

- **BOOK_AUTHOR**  
  `(Book_Id, Author_Id)` – Many-to-many relationship, both columns are PKFK (Primary Key + Foreign Key)

- **PUBLISHER**  
  `(Publisher_Id, Name, Address)`

- **MEMBER**  
  `(Member_Id, Name, Branch_Code, Roll_Number, Phone_Number, Email_Id, Date_of_Join, Status)`

- **BOOK_ISSUE**  
  `(Issue_Id, Date_Of_Issue, Book_Id, Member_Id, Expected_Date_Of_Return, Status)`  
  - `Book_Id` and `Member_Id` are Foreign Keys

- **BOOK_RETURN**  
  `(Issue_Id, Actual_Date_Of_Return, LateDays, LateFee)`  
  - `Issue_Id` is Primary Key and Foreign Key

- **LANGUAGE**  
  `(Language_Id, Name)` – Static table for storing permanent data

- **LATE_FEE_RULE**  
  `(FromDays, ToDays, Amount)` – Composite Key

---

## 📌 Requirement
A library wants to maintain the record of books, members, book issue, book return, and fines collected for late returns in a database.  

- The database can be loaded with book information.  
- Students can register with the library to be a member.  
- Books can be issued to students with a valid library membership.  
- A student can keep an issued book for a maximum period of two weeks from the date of issue, beyond which a fine will be charged.  

**Fine Calculation:**
- **0–7 days late:** Rs 10  
- **7–30 days late:** Rs 100  
- **Above 30 days late:** Rs 10 per day  

---

## 📋 Additional Questions

4. **Alter Table** – Add a new column `ISBN` to the **BOOK** table.  
5. **Alter Table** – Modify the data type of column `roll_number` in the **MEMBER** table.  
6. **Truncate Table** – Remove all records from the **PUBLISHER** table.  

> **Note:** In Oracle, you cannot directly use the `TRUNCATE TABLE` command without disabling referential constraints. If there are foreign key constraints referencing the table, Oracle will not allow truncation.

7. **Drop Table** – Delete the **AUTHOR** table from the database.  
8. **Rename Table** – Change the name of the **LATE_FEE_RULE** table to **FINE** table.  

---

## 🖥 Queries and Output
Write the queries and output here.

---

## ✅ Result
The queries were executed successfully and output has been verified. **CO2** has been attained.
