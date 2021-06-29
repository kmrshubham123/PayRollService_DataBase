--UC1:-Ability to Create a payroll service database
create database Payroll_Service
use Payroll_Service

--UC2:-Ability to Create employee Payroll Table
create Table EmployeePayroll(
EmployeeID int Identity(1,1) primary key,
EmployeeName varchar(32),
Salary float,
StartDate date
)

--UC3-Ability to create Employee Payrolls Data 
Insert into EmployeePayroll(EmployeeName,Salary,StartDate)
VALUES ('Kumar Shubham', 50000.00 , '2021-06-28'),
        ('Abhishek Kumar',55000.00, '2021-07-22'),
		('Roshan Thakur',45000.00, '2021-08-26'),
		('Vivek Verma',40000.00, '2021-09-25'),
		('Puja Raj',42000.00, '2021-03-25'),
		('Rekha',36000.00, '2021-02-15');

--UC4-Select all data from Table
select * from EmployeePayroll;

--UC5-Salary Data for particular Employee and who have joined in a particular date Range
Select Salary from EmployeePayroll Where EmployeeName='Kumar Shubham'
Select Salary from EmployeePayroll Where StartDate BETWEEN CAST('2021-06-01' as date) and GetDate();

--UC6 Add a column to the table and update gender at given condition
Alter Table EmployeePayroll
Add Gender varchar(32);

UPDATE EmployeePayroll set Gender ='Male' where EmployeeName='Kumar Shubham'
UPDATE EmployeePayroll set Gender ='Male' where EmployeeName='Abhishek Kumar'
UPDATE EmployeePayroll set Gender ='Male' where EmployeeName='Roshan Thakur'
UPDATE EmployeePayroll set Gender ='Male' where EmployeeName='Vivek Verma'
UPDATE EmployeePayroll set Gender ='Female' where EmployeeName='Puja Raj'
UPDATE EmployeePayroll set Gender ='Female' where EmployeeName='Rekha'

--UC7 Use of Sum, Avg, Min, Max, Count Functions
Select SUM(Salary) from EmployeePayroll
Select AVG(Salary) from EmployeePayroll
Select MIN(Salary) from EmployeePayroll
Select MAX(Salary) from EmployeePayroll
Select Count(EmployeeID) from EmployeePayroll
Select SUM(Salary) from EmployeePayroll where Gender = 'Female' GROUP BY Gender;
Select SUM(Salary) from EmployeePayroll where Gender = 'Male' GROUP BY Gender;

--Section 2:-(ER Diagram)
--UC8-Extend the EmployeePayroll table with Phone, address and department
Alter Table EmployeePayroll Add
PhoneNumber varchar(10),
Department varchar(30),
Adreess varchar(30), 
CONSTRAINT DF_Address DEFAULT 'Indian' FOR Address

