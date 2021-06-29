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
Address varchar(30), 
CONSTRAINT DF_Address DEFAULT 'Indian' FOR Address

--UC9-Extend the EmployeePayroll table with Basic Pay,Deduction,Taxable Pay,Income Tax,Net Pay
Alter Table EmployeePayroll Add
BasicPay float,
Deduction float,
TaxablePay float,
IncomeTax float,
NetPay float;


--UC10-Insert Value for Terissa and update her details and also update details for remaining Employee
Insert into EmployeePayroll(EmployeeName,Salary,StartDate)
VALUES ('Terissa', 70000.00 , '2021-05-26'),
	   ('Terissa', 90000.00 , '2021-05-26')
UPDATE EmployeePayroll set Gender ='Female' where EmployeeName='Terissa'
UPDATE EmployeePayroll set PhoneNumber ='9888886897', Department='Sales & Marketing', Address='Pune',BasicPay=25000, Deduction=3000,TaxablePay=1000,IncomeTax=200,NetPay=17000 where EmployeeName='Kumar Shubham'
UPDATE EmployeePayroll set PhoneNumber ='9888846788', Department='HR', Address='Delhi',BasicPay=15000, Deduction=4000,TaxablePay=1000,IncomeTax=400,NetPay=19000 where EmployeeName='Abhishek Kumar'
UPDATE EmployeePayroll set PhoneNumber ='9900044556', Department='Support', Address='Gurgaon',BasicPay=18000, Deduction=5000,TaxablePay=1000,IncomeTax=400,NetPay=21000 where EmployeeName='Roshan Thakur'
UPDATE EmployeePayroll set PhoneNumber ='9878787777', Department='Installation', Address='Kolkata',BasicPay=32000, Deduction=7000,TaxablePay=2000,IncomeTax=200,NetPay=18000 where EmployeeName='Vivek Verma'
UPDATE EmployeePayroll set PhoneNumber ='9798989899', Department='HR', Address='Amritsar',BasicPay=30000, Deduction=5000,TaxablePay=1000,IncomeTax=200,NetPay=19000 where EmployeeName='Puja Raj'
UPDATE EmployeePayroll set PhoneNumber ='9234567834', Department='Sales & Marketing', Address='Delhi',BasicPay=31000, Deduction=2000,TaxablePay=500,IncomeTax=300,NetPay=18000 where EmployeeName='Rekha'
UPDATE EmployeePayroll set PhoneNumber ='7889809999', Department='Sales & Marketing', Address='Mumbai',BasicPay=35000, Deduction=2000,TaxablePay=1000,IncomeTax=200,NetPay=18000 where EmployeeName='Terissa'
UPDATE EmployeePayroll set PhoneNumber ='7889809999', Department='Sales & Marketing', Address='Mumbai',BasicPay=35000, Deduction=2000,TaxablePay=1000,IncomeTax=200,NetPay=18000 where EmployeeName='Terissa'



