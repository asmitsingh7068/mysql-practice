create database day10_db;
use day10_db;

create table Account(
AccountId int primary key,
Name varchar(50),
Balance Decimal(10,2)

);

insert into Account values
(101,'Asmit',100000),
(105,'Ravan',100000),
(106,'Alexgendar',100000),
(107,'Shom',100000),
(103,'Mohan',100000);

select * from Account;


start Transaction ;
update Account 
set Balance = Balance - 10000
where accountid= 101;

update Account 
set Balance = Balance + 10000
where accountid = 107;

commit;

rollback;


CREATE TABLE Accounts(
    AccountID INT PRIMARY KEY,
    Name VARCHAR(50),
    Balance DECIMAL(10,2)
);

INSERT INTO Accounts VALUES
(1,'Asmit',10000),
(2,'Komal',5000);


start transaction;

update Accounts
set Balance = balance + 3000
where AccountId  = 1;

update Accounts
set Balance = balance - 3000
where AccountId  = 2;

Commit;

##------------------------for the ROLLBACK--------------------------

START TRANSACTION;

UPDATE Accounts
SET Balance = Balance - 3000
WHERE AccountID = 2;

UPDATE Accounts
SET Balance = Balance + 3000
WHERE AccountID = 1;

SELECT * FROM Accounts;

ROLLBACK;

SELECT * FROM Accounts;

# ------------------------------Commit----------------------------------------

START TRANSACTION;

UPDATE Accounts
SET Balance = Balance - 3000
WHERE AccountID = 2;

UPDATE Accounts
SET Balance = Balance + 3000
WHERE AccountID = 1;

SELECT * FROM Accounts;

COMMIT;

SELECT * FROM Accounts;	





