create database day1_db;
use day1_db;

##1 Que 1
create table hospital(
HospitalID int,
HospitalName varchar(50),
City varchar(20),
TotalBed int
);

## Que 2
create table Doctor(
DoctorID int,
DoctorName varchar(50),
Specialization varchar(20),
Experience int,
Salary int
);

##3 
create table Patients(
PatientID int,
PatientName Varchar(50),
Age int ,
Gender ENUM('male' , 'female'),
Phone bigint,
Address text

);

##4
create table Movies(
MoviesID int,
MoviesName varchar(50),
Director varchar(20),
Title int,
ReleaseDate date,
Rating smallint
);

##5

create table Libraries (
LibraryID int,
LibraryName varchar(50),
City varchar(20),
TotalBook int,
ContactNo bigint
);

##6

create table Vehicles(
VehiclesID int,
VehiclesName varchar(50),
Brand varchar(20),
ModelYear varchar(50),
Price int,
Color varchar(20)
);

##7

create table Airlines(
AirlineID int,
AirlineName varchar(100),
Country varchar(20),
TotalFlight int
);

##8
create table flights(
FlightID int,
FlightName varchar(100),
Source varchar(20),
Destination varchar(50),
DepartureTime time
);

##9
create table  School (
SchoolID int,
SchoolName varchar(100),
PrincipalName varchar(20),
Destination varchar(50),
City varchar(50),
TotalStudent int
);

##10
create table  Exams (
ExamID int,
ExamName varchar(100),
Subject varchar(20),
 TotalMarks smallint,
ExamDate date
);

##11

create table Departments (
DepartmentsID int,
DepartmentsName varchar(100),
ManagerName varchar(20),
Budget bigint
);

##12

create table Sellers  (
 SellersID int,
 SellersName varchar(100),
Email varchar(20),
Phone bigint,
City varchar(50)
);

##13
create table tbl_Invoices  (
 InvoiceID int,
 CustomerName varchar(100),
Amount decimal(9,3),
InvoiceDate date,
PaymentStatus boolean
);

##14

create table tbl_Trainers  (
TrainerId int,
TrainerName varchar(50),
Subject varchar(100),
Experience smallint,
Email varchar(100),
phone bigint
);

##15

create table tbl_Projects  (
ProjectId smallint,
ProjectName varchar(100),
clientName varchar(50),
StartDate date,
EndDate date,
budget bigint
);

##16

create table tbl_Restaurants  (
 RestaurantId smallint,
 RestaurantsName varchar(100),
 Location varchar(100),
 Rating smallint
);

##17

create table tbl_Orders   (
OrderId smallint,
ProductName varchar(100),
quantity int,
TotalPrice int,
OrderDate date,
CustomerName varchar(50)
);

##18

create table tbl_BankAccounts   (
AccountID smallint,
AccountHolder varchar(100),
AccountType varchar(50),
 Balance bigint,
OpenDate date
);


##19

create table tbl_MobilePhones    (
phoneID smallint,
Brand varchar(100),
Model varchar(50),
Ram varchar(50),
Storage varchar(50),
Price bigint
);

##20

create table tbl_Events    (
EventID smallint,
EventName varchar(50),
Venue varchar(100),
EventDate date,
OrganizerName varchar(50),
TicketPrice int
);


