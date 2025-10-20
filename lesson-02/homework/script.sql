-- Task 1. Create a table Employees with columns: EmpID INT, Name (VARCHAR(50)), and Salary (DECIMAL(10,2)).
create table Employees (EmpID int, Name varchar(50), Salary decimal(10, 2))
select * from Employees

-- Task 2. Insert three records into the Employees table using different INSERT INTO approaches (single-row insert and multiple-row insert).
--- 1st approach
insert into Employees (EmpID, Name, Salary)
values (1, 'Adxam', 90)
--- 2nd approach
insert into Employees (EmpID, Name, Salary)
values
    (2, 'Lola', 75),
    (3, 'Sarvar', 80)

-- Task 3. Update the Salary of an employee to 7000 where EmpID = 1.
update Employees
set Salary = 100
where EmpID = 101

-- Task 4. Delete a record from the Employees table where EmpID = 2.
delete from Employees
where EmpID = 2

-- Task 5. Give a brief definition for difference between DELETE, TRUNCATE, and DROP.
--- DELETE: Removes specific rows from a table.
--- TRUNCATE: Removes all rows from a table.
--- DROP: Removes the entire table.

-- Task 6. Modify the Name column in the Employees table to VARCHAR(100).
alter table Employees
alter column Name varchar(100)

-- Task 7. Add a new column Department (VARCHAR(50)) to the Employees table.
alter table Employees
add Department varchar(50)

-- Task 8. Change the data type of the Salary column to FLOAT.
alter table Employees
alter column Salary float

-- Task 9. Create another table Departments with columns DepartmentID (INT, PRIMARY KEY) and DepartmentName (VARCHAR(50)).
create table Departments (DepartmentID INT primary key, DepartmentName VARCHAR(50))

-- Task 10. Remove all records from the Employees table without deleting its structure.
truncate table Employees

-- Task 11. Insert five records into the Departments table using INSERT INTO SELECT method (you can write anything you want as data).
create table Departments2 (DepartmentID INT primary key, DepartmentName VARCHAR(50))
insert into Departments2 values (1, 'Hisoblar')
insert into Departments2 values (2, 'Narx')
insert into Departments2 values (3, 'Xalqaro')
insert into Departments2 values (4, 'Sanoat')
insert into Departments2 values (5, 'Xizmatlar')

insert into Departments (DepartmentID, DepartmentName)
select DepartmentID, DepartmentName
from Departments2

-- Task 12. Update the Department of all employees where Salary > 5000 to 'Management'.
alter table Departments
add Salary decimal(10, 2)

update Departments
set Salary = 6000
where DepartmentID = 1

update Departments
set Salary = 4500
where DepartmentID = 2

update Departments
set Salary = 4800
where DepartmentID = 3

update Departments
set Salary = 5500
where DepartmentID = 4

update Departments
set Salary = 5600
where DepartmentID = 5

update Departments
set DepartmentName = 'Management'
where Salary > 5000;

-- Task 13. Write a query that removes all employees but keeps the table structure intact.delete Employees
delete Employees

-- Task 14. Drop the Department column from the Employees table.
alter table Departments
drop column DepartmentName

-- Task 15. Rename the Employees table to StaffMembers using SQL commands.
exec sp_rename 'Employees', 'StaffMembers';

-- Task 16. Write a query to completely remove the Departments table from the database.
drop table Departments

-- Task 17. Create a table named Products with at least 5 columns, including: ProductID (Primary Key), ProductName (VARCHAR), Category (VARCHAR), Price (DECIMAL)
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Price DECIMAL(10, 2),
    Category VARCHAR(50)
)

-- Task 18. Add a CHECK constraint to ensure Price is always greater than 0.
--- 1st way
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Price DECIMAL(10, 2) CHECK (Price > 0),
    Category VARCHAR(50)
);

--- 2nd way
ALTER TABLE Products
ADD CONSTRAINT chk_price_positive CHECK (Price > 0)

-- Task 19. Modify the table to add a StockQuantity column with a DEFAULT value of 50.
ALTER TABLE Products
ADD StockQuantity INT DEFAULT 50

-- Task 20. Rename Category to ProductCategory
EXEC sp_rename 'Products.Category', 'ProductCategory', 'COLUMN';

-- Task 21. Insert 5 records into the Products table using standard INSERT INTO queries.
INSERT INTO Products VALUES
(1, 'Laptop', 1200.00, 'Electronics', 30),
(2, 'Smartphone', 800.00, 'Electronics', 50),
(3, 'Tablet', 400.00, 'Electronics', 40),
(4, 'Monitor', 250.00, 'Electronics', 60),
(5, 'Keyboard', 50.00, 'Accessories', 100)

-- Task 22. Use SELECT INTO to create a backup table called Products_Backup containing all Products data.
SELECT *
INTO Products_Backup
FROM Products;

-- Task 23. Rename the Products table to Inventory.
exec sp_rename 'Products', 'Inventory'

-- Task 24. Alter the Inventory table to change the data type of Price from DECIMAL(10,2) to FLOAT.
alter table Inventory
alter column Price float

-- Task 25. Add an IDENTITY column named ProductCode that starts from 1000 and increments by 5 to Inventory table.
SELECT 
    IDENTITY(INT, 1000, 5) AS ProductCode,
    *
INTO Inventory2
FROM Inventory;
DROP TABLE inventory;
EXEC sp_rename 'Inventory2', 'Inventory'
