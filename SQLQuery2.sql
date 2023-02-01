--task1
Create Database Product
use Product

Create Table Departments
(
	Id int identity Primary Key ,
	Name nvarchar(100) Not Null Check(Len(Name) > 2)
)

Create Table Employees
(
	Id int identity Primary Key ,
	FullName nvarchar(100)  Not Null Check(Len(FullName)>3),
	Salary money Constraint CK_Employees_Salary Check(Salary>0),
	DepartmentId int Not Null Foreign Key References Departments(Id),
	Email nvarchar(100) Not Null Unique
)

Insert into Departments
Values

	('Marketing'),
	('Finance')


Insert into Employees 
Values

('Nermin Qapciyeva' , 2600,1,'nermin@gmail.com'),
('Hemide Xelilova' , 2500,1,'hemide@gmail.com'),
('Fatime Qayxanova' , 2400,2,'fatime@gmail.com'),
('Gulsen Memmedova ' , 2450,2,'gulsen@gmail.com')


Select Employees.FullName,Salary,Departments.Name,Employees.Email from Employees
Join Departments
on Employees.DepartmentId=Departments.Id

--task2
Create Table Brands
(
 Id int identity Primary Key,
 Name nvarchar(10) Not Null
)

Create Table Notebooks
(
 Id int identity Primary Key,
 Name nvarchar(10) Not Null,
 Price money 
)
Create Table Phones
(
 Id int identity Primary Key,
 Name nvarchar(10) Not Null,
 Price money 
)
--1) Notebook ve Brand Arasinda Mentiqe Uygun Relation Qurun.
Alter table Notebooks
Add BrandId int Not Null Foreign Key References Brands(Id)

--2) Phones ve Brand Arasinda Mentiqe Uygun Relation Qurun.
Alter table Phones
Add BrandId int Not Null Foreign Key References Brands(Id)
