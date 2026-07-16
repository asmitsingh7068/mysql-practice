create database student_management_db;
use student_management_db;

## -----Student Management System Assignment-----

create table tbl_student(
StudentID int primary key,
StudentName varchar(50) not null,
StudentAge smallint,
Gendar enum ('male','female'),
Class smallint,
Section char(1),
City varchar(50),
PhoneNumber bigint unique,
Email varchar(50) unique,
AdmissionDate datetime

);

INSERT INTO tbl_student
(StudentID, StudentName, StudentAge, Gendar, Class, Section, City, PhoneNumber, Email, AdmissionDate)
VALUES
(1,'Asmit Singh',15,'male',10,'A','Lucknow',9876543210,'asmit@gmail.com','2025-04-10 09:30:00'),

(2,'Sachin Yadaw',16,'female',11,'B','Kanpur',9876543211,'sachin@gmail.com','2025-04-12 10:15:00'),

(3,'Ethan Walker',17,'male',12,'A','Delhi',9876543212,'ethan@gmail.com','2025-04-14 11:00:00'),

(4,'Olivia Brown',15,'female',10,'C','Noida',9876543213,'olivia@gmail.com','2025-04-15 09:45:00'),

(5,'Liam Johnson',16,'male',11,'B','Agra',9876543214,'liam@gmail.com','2025-04-16 08:30:00'),

(6,'Emma Davis',17,'female',12,'A','Varanasi',9876543215,'emma@gmail.com','2025-04-18 10:20:00'),

(7,'Noah Wilson',15,'male',10,'B','Prayagraj',9876543216,'noah@gmail.com','2025-04-20 09:10:00'),

(8,'Sophia Miller',16,'female',11,'C','Lucknow',9876543217,'sophia@gmail.com','2025-04-22 11:30:00'),

(9,'James Anderson',17,'male',12,'A','Kanpur',9876543218,'james@gmail.com','2025-04-24 10:40:00'),

(10,'Charlotte Moore',15,'female',10,'B','Delhi',9876543219,'charlotte@gmail.com','2025-04-26 09:00:00'),

(11,'Benjamin Taylor',16,'male',11,'A','Noida',9876543220,'benjamin@gmail.com','2025-04-28 10:25:00'),

(12,'Amelia Thomas',17,'female',12,'C','Agra',9876543221,'amelia@gmail.com','2025-05-01 09:15:00'),

(13,'Henry Martin',15,'male',10,'A','Varanasi',9876543222,'henry@gmail.com','2025-05-03 11:10:00'),

(14,'Mia Jackson',16,'female',11,'B','Lucknow',9876543223,'mia@gmail.com','2025-05-05 08:50:00'),

(15,'Alexander White',17,'male',12,'C','Kanpur',9876543224,'alexander@gmail.com','2025-05-07 10:00:00'),

(16,'Ava Harris',15,'female',10,'A','Prayagraj',9876543225,'ava@gmail.com','2025-05-09 09:35:00'),

(17,'Daniel Clark',16,'male',11,'B','Delhi',9876543226,'daniel@gmail.com','2025-05-11 10:45:00'),

(18,'Grace Lewis',17,'female',12,'A','Noida',9876543227,'grace@gmail.com','2025-05-13 11:20:00'),

(19,'Michael Hall',15,'male',10,'C','Agra',9876543228,'michael@gmail.com','2025-05-15 09:05:00'),

(20,'Emily Young',16,'female',11,'B','Varanasi',9876543229,'emily@gmail.com','2025-05-17 10:30:00');

UPDATE tbl_student
SET Gendar = 'male'
WHERE StudentID = 2; 


## Question-1  ==>  Display all student records.
select * from tbl_student;

## Question-2  ==>   Display only Student Name and City.
select StudentName , City from tbl_student;

## Question-3  ==>  Display students whose age is greater than 16.
select StudentName from tbl_student where StudentAge >16;   # only show name 
select * from tbl_student where StudentAge >16;       # show all data 


## Question-4	==>Display students studying in Class 10th
select StudentName from tbl_student where  Class = 10;   # show only name not whole Details.
select * from tbl_student where  Class = 10;			# Show All Data 

## Question-5   ==> Display students from Lucknow.
select StudentName from tbl_student where  City = 'Lucknow';   # show only name not whole Details.
select * from tbl_student where  City = 'Lucknow';			# Show All Data 

##  Question-6   ==>  Display Female Students.
select StudentName from tbl_student where  Gendar = 'female';   # show only name not whole Details.
select * from tbl_student where  Gendar = 'female';			# Show All Data 

## Question-7	==> Display students from Section A.
select StudentName from tbl_student where  Section = 'A';   # show only name not whole Details.
select * from tbl_student where Section = 'A';				# Show All Data 

## Question-8	==> Display students whose age is between 15 and 17.
select StudentName from tbl_student where  StudentAge between 15 and 17;   # show only name not whole Details.
select * from tbl_student where  StudentAge between 15 and 17;				# Show All Data 

## Question-9  ==> Display students whose city is Delhi or Noida.
select StudentName from tbl_student where City = 'Delhi' or City = 'Noida';    # show only name not whole Details.
select * from tbl_student where  City = 'Delhi' or City = 'Noida';   			# Show All Data .

## Question-10  ==> Display student whose Student ID is 10.
select StudentName from tbl_student where StudentID = 10;    # show only name not whole Details.
select * from tbl_student where  StudentID = 10;  			# Show All Data .

##==============Table Modification Tasks===============================

# Task-1  ==>Increase the size of Student Name column.
alter table tbl_student
modify StudentName varchar(100);

# Task-2   ==> Increase the size of Email column.
alter table tbl_student
modify Email varchar(100);

desc tbl_student;

# Task-3  ==> Add one new column: Blood Group

alter table tbl_student
add BloodGroup varchar(10);
desc tbl_student;



