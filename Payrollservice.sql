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
