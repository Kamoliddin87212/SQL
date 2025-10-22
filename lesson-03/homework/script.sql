---------- Easy-Level Tasks (10)
-- Task 1. Define and explain the purpose of BULK INSERT in SQL Server.
-- The main purpose of BULK INSERT is to efficiently load large datasets from external files (like .csv, .txt, .dat) into SQL Server tables — much faster than inserting rows one by one with INSERT INTO.

-- Task 2. List four file formats that can be imported into SQL Server.
-- 1) CSV; 2) TXT; 3) XML; 4) JSON.

-- Task 3. Create a table Products with columns: ProductID (INT, PRIMARY KEY), ProductName (VARCHAR(50)), Price (DECIMAL(10,2)).
create table Products (ProductID int primary key, ProductName varchar(50), Price decimal(10,2))

-- Task 4. Insert three records into the Products table using INSERT INTO.
Insert into Products values (1, 'Plansheet', 2000), (2, 'Notebook', 5000), (3, 'Smartphone', 3000)

-- Task 5. Explain the difference between NULL and NOT NULL.
-- NULL means no value, unknown, or missing data. It does not mean 0 or an empty string — it literally means “nothing stored here.”
-- NOT NULL means the column must always have a value — it cannot be left empty. SQL will reject any insert or update that tries to set it to NULL.

-- Task 6. Add a UNIQUE constraint to the ProductName column in the Products table.
alter table Products
add constraint UQ_ProductName unique (ProductName);

-- Task 7. Write a comment in a SQL query explaining its purpose.
-- A UNIQUE constraint ensures that all values in a column (or a combination of columns) are different — no duplicates are allowed.

-- Task 8. Add CategoryID column to the Products table.
alter table Products
add CategoryID int;

-- Task 9. Create a table Categories with a CategoryID as PRIMARY KEY and a CategoryName as UNIQUE.
create table Categories (CategoryID int primary key, CategoryName varchar(50) unique)

-- Task 10. Explain the purpose of the IDENTITY column in SQL Server.
-- In SQL Server, an IDENTITY column is a special type of column that automatically generates unique numeric values for each new row inserted into a table.

---------- Medium-Level Tasks (10)
-- Task 11. Use BULK INSERT to import data from a text file into the Products table.
bulk insert Products
from 'C:\Users\user\Desktop\k.abdugafarov\emp_stat2.txt'
with(
	firstrow=2,
	fieldterminator=',',
	rowterminator='\n')
select * from products

-- Task 12. Create a FOREIGN KEY in the Products table that references the Categories table.
alter table Products
add constraint FK_Products_Categories
foreign key (CategoryID)
references Categories(CategoryID);

-- Task 13. Explain the differences between PRIMARY KEY and UNIQUE KEY.
-- Both PRIMARY KEY and UNIQUE KEY are constraints that ensure uniqueness of data in a table — but they have some key differences in purpose and behavior.
-- A PRIMARY KEY uniquely identifies each row in a table.
-- A UNIQUE KEY constraint ensures all values in a column (or group of columns) are unique, but NULLs are allowed.

-- Task 14. Add a CHECK constraint to the Products table ensuring Price > 0.
alter table Products
add constraint check_price CHECK (Price > 0);

-- Task 15. Modify the Products table to add a column Stock (INT, NOT NULL).
alter table Products
add Stock int not null default 1

-- Task 16. Use the ISNULL function to replace NULL values in Price column with a 0.
update Products
set Price = isnull(Price, 0)

-- Task 17. Describe the purpose and usage of FOREIGN KEY constraints in SQL Server.
-- A FOREIGN KEY constraint in SQL Server is used to link two tables together and ensure referential integrity between them. It means that the value in one table (the child) must exist in another table (the parent).

---------- Hard-Level Tasks (10)
-- Task 18. Write a script to create a Customers table with a CHECK constraint ensuring Age >= 18.
create table Customers (Age int check (Age >= 18))

-- Task 19. Create a table with an IDENTITY column starting at 100 and incrementing by 10.
create table a_table (ID int identity(100,10), name varchar(40))

-- Task 20. Write a query to create a composite PRIMARY KEY in a new table OrderDetails.
create table OrderDetails (
    OrderID int,
    ProductID int,
    Quantity int not null,
    Price decimal (10,2) not null,
    primary key (OrderID, ProductID)
)

-- Task 21. Explain the use of COALESCE and ISNULL functions for handling NULL values.
-- Both COALESCE() and ISNULL() are used to handle NULL values in SQL — meaning, they let you replace NULLs with a specific value when displaying or processing data.

-- Task 22. Create a table Employees with both PRIMARY KEY on EmpID and UNIQUE KEY on Email.
create table Employees (
    EmpID int primary key,
    EmpName varchar(50) not null,
    Email varchar(100) unique,
    Salary decimal(10,2)
)

-- Task 23. Write a query to create a FOREIGN KEY with ON DELETE CASCADE and ON UPDATE CASCADE options.
create table Departments2 (
    DeptID int primary key,
    DeptName varchar(50)
)

create table Employees2 (
    EmpID int primary key,
    EmpName varchar(50),
    DeptID int,
    foreign key (DeptID)
        references Departments(DeptID)
        on delete cascade
        on update cascade
)
