# Wesley Thuto Sephai
# MySQL Assignment

# 1.
CREATE DATABASE Company;
SHOW DATABASES;
# 2.
USE Company;

CREATE TABLE Employees (
    EmployeeID INT auto_increment PRIMARY KEY,
    FirstName varchar(50) NOT NULL,
    LastName varchar(50) NOT NULL,
    DepartmentID varchar(100) NOT NULL

);
CREATE TABLE Departments (
    DepartmentID INT auto_increment PRIMARY KEY,
    DepartmentName varchar(100) NOT NULL,
    Location varchar(100) NOT NULL
);
    CREATE TABLE Projects (
    ProjectID INT auto_increment PRIMARY KEY,
    ProjectName varchar(100) NOT NULL,
    StartDate DATE,
    EndDate DATE
);
USE Company;
SHOW TABLES;

DESCRIBE Employees;
DESCRIBE Departments;
DESCRIBE Projects;

# 3.
ALTER TABLE Employees
ADD COLUMN email varchar(100);
ALTER TABLE Employees
MODIFY COLUMN age INT(3);
ALTER TABLE Employees
DROP COLUMN salary;
RENAME TABLE Projects TO EmployeeProjects;
USE Company;

# 4.
INSERT INTO Employees (id, name, age) VALUES
(1, 'Wesley Sephai', 35),
(2, 'Thabang Malapane', 48),
(3, 'Mpendulo Mthembu', 24);
INSERT INTO Departments (dept_id, dept_name) VALUES
(1, 'Physics'),
(2, 'Mathematics'),
(3, 'Chemistry');
INSERT INTO Projects (proj_id, proj_name) VALUES
(1, 'Project A'),
(2, 'Project B'),
(3, 'Project C');
USE Company;

# 5.
SELECT name, age
FROM Employees
WHERE age > 30;

SELECT name, age
FROM Employees
WHERE age > 30 AND department_id = 2;

# The WHERE clause is essential for querying specific subsets of data and performing operations based on conditions.

# 6.
UPDATE Employees
SET name = 'Ken'
WHERE id = 2;

# 7.
DROP TABLE Projects;

