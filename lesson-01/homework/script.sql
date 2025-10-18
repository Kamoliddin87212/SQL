-- Task 1. Define the following terms: data, database, relational database, and table.
-- Answer:
-- Data: These are the raw, unorganized facts and figures. Think of them as individual pieces of information, like a name ('John Doe'), a number (34), or a date ('2025-10-08').
-- Database: A database is an organized and structured collection of data, stored electronically. It allows for efficient management, access, and updating of that data. It's like a digital filing cabinet for all your information.
-- Relational Database: This is a specific type of database that organizes data into one or more tables of columns and rows, with a unique key identifying each row. These tables can be linked—or related—to each other based on common data fields. For example, a Customers table could be related to an Orders table through a CustomerID.
-- Table: A table is the fundamental structure within a relational database. It organizes data into a grid of vertical columns (attributes like 'FirstName', 'LastName') and horizontal rows (records for each individual entry).

-- Task 2. List five key features of SQL Server.
-- Answer:
-- SQL Server, Microsoft's relational database management system, has many powerful features. Here are five key ones:
-- High Performance: It's engineered for speed, capable of handling large volumes of transactions and complex queries quickly and efficiently.
-- Robust Security: SQL Server provides strong security features, including data encryption, access control through user roles, and threat detection to protect sensitive information.
-- High Availability: It ensures that data is accessible with minimal downtime through features like Always On availability groups and failover clustering, which provide redundant copies of the database that can take over if the primary server fails.
-- Scalability: It can scale to meet the demands of applications of any size, from small departmental databases to massive enterprise-level systems handling millions of users.
-- Business Intelligence (BI) Integration: It includes a powerful suite of tools for data analysis and reporting, such as SQL Server Analysis Services (SSAS), SQL Server Reporting Services (SSRS), and SQL Server Integration Services (SSIS).

-- Task 3. What are the different authentication modes available when connecting to SQL Server? (Give at least 2)
-- Answer:
-- SQL Server offers two primary modes for authenticating users who are trying to connect to the database.
-- Windows Authentication Mode: This is the default and most secure mode. It leverages the Windows operating system's security system to validate users. When a user connects, SQL Server uses their logged-in Windows account credentials to grant access, so no separate password is required for the database. It's often called "integrated security."
-- Mixed Mode (SQL Server and Windows Authentication Mode): This mode provides flexibility by allowing connections using either Windows Authentication or SQL Server Authentication. With SQL Server Authentication, you create specific login names and passwords that are stored within SQL Server itself. This method is useful when users need to connect from non-Windows systems or over the internet.

-- Task 4. Create a new database in SSMS named SchoolDB.
-- Answer:
create database SchoolDB

-- Task 5. Write and execute a query to create a table called Students with columns:
StudentID (INT, PRIMARY KEY), Name (VARCHAR(50)), Age (INT).
-- Answer:
create table Students (StudentID int, Name varchar(50), Age int)

-- Task 6. Describe the differences between SQL Server, SSMS, and SQL.
-- Answer:
-- 1. SQL (Structured Query Language) – a language used to communicate with databases. It’s not software – it’s the standard syntax for working with data.
-- 2. SQL Server – a database management system (DBMS) developed by Microsoft.
-- 3. SSMS (SQL Server Management Studio) – A graphical tool (GUI) provided by Microsoft to interact with SQL Server.

-- Task 7. Research and explain the different SQL commands: DQL, DML, DDL, DCL, TCL with examples.
-- Answer
-- 1. DQL (Data Query Language): DQL is used to query or fetch data from the database. It's the most commonly used category for data analysis and reporting. The primary command is SELECT.
-- 2. DML (Data Manipulation Language): DML commands are used to manipulate—that is, add, modify, or remove—the actual data within the tables.
-- 3. DDL (Data Definition Language): DDL commands are used to define and manage the entire structure of your database and its objects (like tables, indexes, and users). These commands change the schema, not the data itself.
-- 4. DCL (Data Control Language): DCL commands are all about security and controlling who has access to do what within the database.
-- 5. TCL (Transaction Control Language): TCL commands are used to manage transactions. A transaction is a sequence of operations performed as a single logical unit of work. All changes in a transaction are temporary until they are either permanently saved or undone.

-- Task 8. Write a query to insert three records into the Students table.
insert into Students (StudentID, Name, Age)
values
    (1, 'Anvar', 21),
    (2, 'Sarvar', 20),
    (3, 'Zarina', 22);
