--Practice Exercises - DAY 4:	
-----------------------------VIEWS AND INDEXES----

USE EmployeeDatabase

----------Views:

--The View to show all the customers from the table
CREATE VIEW DisplayEmployees
AS
	SELECT * FROM Employee

SELECT * FROM DisplayEmployees


--The View to show all the customers from Management department
CREATE VIEW EmployeeDepartment
AS
	SELECT * FROM Employee WHERE Department = 'Management'

SELECT * FROM EmployeeDepartment


--The View to show employees whose age is greater than the average age of the employees in the table
CREATE VIEW AverageAgeOfEmployees
AS
	SELECT * FROM Employee WHERE Age > (SELECT AVG(Age) FROM Employee)

SELECT * FROM AverageAgeOfEmployees


--The View to show employees whose salary is greater than 75000
CREATE VIEW SalaryOfEmployees
AS
	SELECT * FROM Employee WHERE Salary > '75000'

SELECT * FROM SalaryOfEmployees


--To Create Or Replace a View:
CREATE OR ALTER VIEW EmployeeDepartment
AS
	SELECT EmployeeName, Age, Department FROM Employee WHERE Department = 'Management';

SELECT * FROM EmployeeDepartment
