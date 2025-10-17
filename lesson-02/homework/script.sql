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


