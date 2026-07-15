create database day2_db;
use day2_db;

# Que 1.=================================
create table tbl_Student_details(
studentId int primary key ,
studentName varchar(50),
studentAge smallint,
grade varchar(20)
);

insert into tbl_Student_details 
values (1,'Anvi',15,'10th');

DESC tbl_Student_details;
alter  table tbl_Student_details 
modify grade varchar(20);

desc  tbl_Student_details;

insert into tbl_Student_details 
values (1,'Anvi',15,'10th');

insert into tbl_Student_details() 
values (2,'Mahi',14,'9th'),
(3,'kabir',16,'11th'),
(4,'Meera',15,'10th');

## ----Display the ID and Name of all students.

select studentId  from tbl_Student_details;
select studentId , studentName from tbl_Student_details;

##•	Show the students whose Age is less than 16.
select * from tbl_Student_details where studentAge <16;

##•	Display the Name and Age of students studying in '11th' grade.
select studentName , studentAge from tbl_Student_details where grade = '11th';

##•	Display the Age of all students
select studentAge from tbl_Student_details;

##•	Show the Name of all students.
select studentName  from tbl_Student_details;

## Que 2 Book Table==========================================================

create table tbl_book(
Bookid int primary key,
Title varchar(100),
Auther varchar(100) ,
Price double(5,2) 
);

insert into tbl_book () 
values(1,'The Alchemist', 'Paulo Coelho ' , 299),
(2,'Wings of Fire', 'A P J Abdul Kalam ' , 350),
(3,'1984', 'George Orwell ' , 280),
(4,'Think like a Monk', 'Jay Shetty' ,400);


##•	Display the books whose price is 350.
select Title from tbl_book where Price = 350; 

## Find the books whose price is between 280 and 350.
select Title from tbl_book where Price between 280 and 350;

## Display the books with prices 299 and 400.
select Title from tbl_book where Price = 299 or Price = 350;

##•	Show all books except those priced at 280 and 350.
select Title from tbl_book where Price not in  (280,350); 

# Que 3 Employee=======================================================
 create table tbl_Epmloyee(
 EmpId int primary key ,
 Name  varchar(50),
 Department varchar(500),
 Salry bigint
 );
 alter table tbl_Epmloyee
 RENAME TO tbl_Employee;
 
 insert into tbl_Employee()
 value(1, 'Rahul', 'Sales',30000),
 (2,'Sneha','HR',40000),
 (3,'Amit','it',50000),
 (4,'Pooja','Finance',45000);
  desc tbl_Employee;
  
 ## Display the employees whose salary is greater than 40000.
 select Name from tbl_employee where Salry >40000;
 
 ## Show the names of employees whose salary is less than or equal to 45000.
 select Name from tbl_employee where Salry<= 45000;
 
 ## Find the employees whose salary is between 30000 and 45000.
  select Name from tbl_employee where Salry between 30000 and 45000;
 
 ## Display the employees working in Sales and HR departments.
 select Name from tbl_employee where Department = 'Sales' or Department = 'HR';
 
 # Show the employees who are not working in the IT department.
 select Name from tbl_employee where Department != 'it';
 
 ## Que 4  Orders ================================
 create table tbl_Order(
 OrderID int primary key,
 CustomerName varchar(50),
 OrderDate datetime 
 );
 
 insert into tbl_Order()
 values (1,'Ankit','2024-01-10 10:30:00'),
 (2,'Priya','2024-02-15 14:45:00'),
 (3,'Sneha','2024-03-21 12:00:00') ;
 insert into tbl_Order value(4,'Rohan','2024-03-05 09:20:00');
 
 ## Display the orders placed after 2024-02-01.
 select * from tbl_Order where OrderDate > '2024-02-01';
 ## Show the orders placed before 2024-03-01.
  select * from tbl_Order where OrderDate < '2024-03-01';
  
  ## Find the orders placed between 2024-02-01 and 2024-03-31.
  select * from tbl_Order where OrderDate between '2024-02-01'and '2024-03-31';
 
 ##  Display the orders placed by Ankit and Sneha'
 select * from tbl_Order where CustomerName = 'Ankit' or CustomerName = 'Sneha';
 
##	Show the orders not placed by Priya and Rohan.
 select * from tbl_Order where CustomerName != 'Priya' and CustomerName != 'Rohan';
 
 
 ##Que 5  Product Tables=======================================================================
 
 create table tbl_product(
 ProductId int primary key,
 ProductName varchar(50),
 Category varchar(50),
 Price int
 );
 
 insert into tbl_product()
 values(1,'Pen','Stationery',10),
 (2,'Laptop','Electonics',55000),
 (3,'Chair','Furniture',1200),
 (4,'Bottle','Kitchen',150);
 
 ## Display the products whose price is greater than 500
 select * from tbl_product where Price > 500;
 
 ## Show the products whose price is less than or equal to 1200.
 select * from tbl_product where Price <= 1200;
 
 ##	Find the products whose price is between 100 and 2000.
  select * from tbl_product where Price between 100 and 2000;
  
  ## Display the products in the Electronics and Furniture categories.
   select ProductName from tbl_product where 
   Category = 'Electonics' or Category = 'Furniture';
 
 ##6.Marks Table
 create table tbl_marks(
 MarkID int primary key auto_increment,
 StudentID int ,
 Subject varchar(50),
 Marks int 
 );
 
 insert into tbl_marks(StudentID, Subject,Marks)
 values (1,'Math',88),
 (2,'Science',92),
 (2,'English',78),
 (3,'Chemistry',85),
 (3,'Math',79),
 (4,'Biology',95),
 (5,'Math',86);
 
 ## Show names of students who scored more than 85 in any subject..
 Select * from tbl_marks where Marks > 85;
 ##5.	Delete the marks record where subject is ‘English’
 delete from tbl_marks where subject = 'English';
 
 
 