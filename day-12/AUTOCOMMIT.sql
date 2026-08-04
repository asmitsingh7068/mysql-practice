Create database  day12_db;
use day12_db;

create table account(
accountid int primary key ,
name varchar(50),
balance decimal(10,2)
);

insert into account(accountid ,name,balance)
values (101,'asmit',50000),
(102,'asu',20000),
(103,'goldi',40000);

# check autocommit is on or off
select @@autocommit;

UPDATE Account
SET Balance = Balance + 1000
WHERE AccountID = 101;


select * from account;
rollback;

#=====AutoCommit================

SET AUTOCOMMIT = 0;   #// auto save band hai

UPDATE Account			# // here update is possible
SET Balance = Balance + 1000
WHERE AccountID = 1001;

COMMIT;				# means last update save ....

UPDATE Account      # now again  update table.....second time
SET Balance = Balance + 2000
WHERE AccountID = 1001;

ROLLBACK;  		# means last update delete and save .....
 
SELECT * FROM Account;    #  then output will be show laste second update as ---> 101000 


