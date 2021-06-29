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

