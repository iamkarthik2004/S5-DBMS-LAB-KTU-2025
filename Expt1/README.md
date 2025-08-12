**Flowchart Maker and Online Diagram Software**  
Link: [https://app.diagrams.net/](https://app.diagrams.net/)  
The ER diagram for this project has been created using **draw.io (diagrams.net)**.  

---

## Aim
Design a database schema for an application with an ER diagram for a problem description.  

---

## Requirement
A library wants to maintain the record of books, members, book issue, book return, and fines collected for late returns in a database. The database can be loaded with book information.  
Students can register with the library to be a member. Books can be issued to students with a valid library membership. A student can keep an issued book for a maximum period of two weeks from the date of issue, beyond which a fine will be charged.  

Fine calculation rules:  
- **0–7 days late:** Rs 10  
- **8–30 days late:** Rs 100  
- **More than 30 days:** Rs 10 per day  

---

## Sample Database Design

**BOOK**  
(Book_Id, Title, Language_Id, MRP, Publisher_Id, Published_Date, Volume, Status)  
`Language_Id`, `Publisher_Id` → **FK**

**AUTHOR**  
(Author_Id, Name, Email, Phone_Number, Status)

**BOOK_AUTHOR**  
(Book_Id, Author_Id) → **PKFK** (many-to-many relationship)

**PUBLISHER**  
(Publisher_Id, Name, Address)

**MEMBER**  
(Member_Id, Name, Branch_Code, Roll_Number, Phone_Number, Email_Id, Date_of_Join, Status)

**BOOK_ISSUE**  
(Issue_Id, Date_Of_Issue, Book_Id, Member_Id, Expected_Date_Of_Return, Status)  
`Book_Id` and `Member_Id` → **FK**

**BOOK_RETURN**  
(Issue_Id, Actual_Date_Of_Return, LateDays, LateFee)  
`Issue_Id` → **PKFK**

**LANGUAGE**  
(Language_Id, Name) — *Static table for storing permanent data*

**LATE_FEE_RULE**  
(FromDays, ToDays, Amount) — Composite Key

---

## Introduction to ER Diagram

An **Entity Relationship Diagram (ERD)** shows the relationships of entity sets stored in a database.  
An entity is an object or component of data. An entity set is a collection of similar entities.  
Entities have **attributes** that define their properties.  

By defining the entities, their attributes, and showing the relationships between them, an ER diagram illustrates the **logical structure** of a database.

---

## Components of ER Diagram

- **Entities** — Represented in rectangles. Examples: *Book*, *Member*.  
- **Attributes** — Represented in ovals. Examples: *Book_Id*, *Name*. Attributes can be simple, composite, or derived.  
- **Relationships** — Represented by diamonds, illustrating how entities are related.

---

## ER Diagram
*Paste your ER diagram here.*

---

## Result
The ER diagram has been completed using **Lucidchart** and verified. **CO1** is attained.
