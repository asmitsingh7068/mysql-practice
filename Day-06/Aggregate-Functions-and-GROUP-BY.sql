create database day6_db;
use day6_db;

CREATE TABLE Employee (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    department VARCHAR(30),
    salary DECIMAL(10,2),
    joining_date DATE,
    gender CHAR(1),
    age INT,
    city VARCHAR(50)
);


INSERT INTO Employee
(emp_id, emp_name, department, salary, joining_date, gender, age, city)
VALUES
(101, 'Vaibhav', 'IT', 60000.00, '2021-06-15', 'M', 25, 'Kanpur'),
(102, 'Priya', 'HR', 45000.00, '2022-01-10', 'F', 28, 'Lucknow'),
(103, 'Amit', 'IT', 72000.00, '2020-09-05', 'M', 30, 'Delhi'),
(104, 'Neha', 'Marketing', 50000.00, '2023-03-01', 'F', 26, 'Kanpur'),
(105, 'Raj', 'Finance', 55000.00, '2019-11-20', 'M', 35, 'Mumbai'),
(106, 'Simran', 'HR', 48000.00, '2021-12-12', 'F', 24, 'Lucknow'),
(107, 'Rohit', 'IT', 65000.00, '2022-07-08', 'M', 29, 'Noida'),
(108, 'Sneha', 'Finance', 53000.00, '2020-05-15', 'F', 31, 'Mumbai'),
(109, 'Ankit', 'Marketing', 47000.00, '2023-01-25', 'M', 27, 'Delhi'),
(110, 'Tina', 'HR', 46000.00, '2021-04-19', 'F', 22, 'Kanpur'),
(111, 'Karan', 'IT', 75000.00, '2018-08-10', 'M', 32, 'Pune'),
(112, 'Divya', 'Finance', 51000.00, '2022-03-03', 'F', 29, 'Lucknow'),
(113, 'Arjun', 'Marketing', 52000.00, '2019-06-06', 'M', 34, 'Jaipur'),
(114, 'Meena', 'HR', 44000.00, '2023-05-14', 'F', 23, 'Noida'),
(115, 'Suresh', 'IT', 71000.00, '2020-01-01', 'M', 31, 'Kanpur'),
(116, 'Alisha', 'Finance', 58000.00, '2019-09-18', 'F', 33, 'Delhi'),
(117, 'Manoj', 'Marketing', 49500.00, '2021-11-30', 'M', 36, 'Pune'),
(118, 'Pooja', 'IT', 68000.00, '2022-10-22', 'F', 26, 'Mumbai'),
(119, 'Ravi', 'Finance', 54000.00, '2023-02-17', 'M', 28, 'Kanpur'),
(120, 'Isha', 'HR', 47000.00, '2020-07-07', 'F', 27, 'Jaipur');

select * from employee;

select distinct gender from employee;
select distinct gender , age from employee;
select distinct gender , city from employee;
select distinct department from employee;

# select total number of employee from each city 
select * from employee order by city;
select city ,count(*) from employee group by city;

# select max and min salary from each city 

select city , max(salary),min(salary) from employee
group by city;

# select max and min age of male an female.
select  max(age),min(age) from employee
group by gender;	

# where clause 
#  select min age and max age of male and female  employee from kanpur city..

# select -> where -> group by -> order by.

select min(age), max(age) , gender from employee 
where city = 'Kanpur' group by gender;


# select those city an no of employee more than 2 employee are registered

#4.	Show the total salary paid per department.
select sum(salary) where department = 'it';


# 5.	Count the number of employees per city.

#6.	Show average age per department.


#7.	Find departments where average salary is greater than 50,000.
select department ,
avg(salary) as 'avg salary'
from employee
group by department
having avg(salary) > 50000;

# limit- boundation of selected no of records (pagination )
select * from empolyee limit 10;

# select second highest salary from table
select distinct salary from employee order by salary desc limit 1,1;

# Select -> where -> group by -> having -> order by -> limit.

# =================================------------------------------------------===================================

	CREATE TABLE candidates
 (   id INT PRIMARY KEy auto_increment,
    name VARCHAR(100),
	college VARCHAR(100),
    phone VARCHAR(15),    
	city VARCHAR(50),
    department VARCHAR(50),   
	fees DECIMAL(10, 2),
    year INT,    
	dob DATE);


INSERT INTO candidates (name, college, phone, city, department, fees, year, dob) VALUES 
('Alice Johnson', 'ABC University', '1234567890', 'New York', 'Computer Science', 1500.00, 2025, '2003-05-15'),
('Bob Smith', 'XYZ College', '1234567891', 'Los Angeles', 'Mechanical Engineering', 1600.00, 2025, '2002-08-22'),
('Charlie Brown', 'LMN Institute', '1234567892', 'Chicago', 'Electrical Engineering', 1550.00, 2025, '2003-01-10'),
('Diana Prince', 'PQR University', '1234567893', 'Houston', 'Civil Engineering', 1620.00, 2024, '2002-12-30'),
('Ethan Hunt', 'STU College', '1234567894', 'Phoenix', 'Information Technology', 1580.00, 2025, '2003-03-25'),
('Fiona Apple', 'GHI University', '1234567895', 'Philadelphia', 'Biotechnology', 1650.00, 2024, '2002-09-18'),
('George Clooney', 'JKL Institute', '1234567896', 'San Antonio', 'Physics', 1500.00, 2025, '2003-07-07'),
('Hannah Montana', 'MNO College', '1234567897', 'San Diego', 'Mathematics', 1525.00, 2024, '2002-11-11'),
('Ian Malcolm', 'RST University', '1234567898', 'Dallas', 'Chemistry', 1575.00, 2025, '2003-04-04'),
('Julia Roberts', 'UVW College', '1234567899', 'San Jose', 'Economics', 1610.00, 2024, '2002-06-14'),
('Kevin Spacey', 'XYZ University', '1234567800', 'Austin', 'Business Administration', 1590.00, 2025, '2003-02-20'),
('Laura Croft', 'ABC Institute', '1234567801', 'Jacksonville', 'Graphic Design', 1540.00, 2024, '2002-10-30'),
('Ursula K. Le Guin', 'DEF Institute', '1234567810', 'Milwaukee', 'Literature Studies', 1550.00, 2025, '2003-04-11'),
('Victor Hugo', 'GHI University', '1234567811', 'Memphis', 'History Studies', 1620.00, 2024, '2002-09-29'),
('Walt Disney', 'JKL College', '1234567812', 'Baltimore', 'Animation Studies', 1515.00, 2025, '2003-03-10'),
('Xena Warrior Princess', 'MNO Institute', '1234567813', 'Colorado Springs', 'Martial Arts Studies', 1580.00, 2024, '2002-11-23'),
('Yoda Jedi Master', 'RST University', '1234567814', 'Albuquerque', 'Philosophy Studies', 1640.00, 2025, '2003-02-14'),
('Zoe Saldana', 'UVW College', '1234567815', 'Tucson', 'Dance Studies', 1560.00, 2024, '2002-10-05'),
('Aaron Paul', 'XYZ Institute', '1234567816', 'Fresno', 'Psychology Studies', 1530.00, 2025, '2003-07-17'),
('Bella Swan', 'ABC University', '1234567817', 'Sacramento', 'Biochemistry Studies', 1615.00, 2024, '2002-12-24'),
('Chris Hemsworth', 'DEF College', '1234567818', 'Kansas City', 'Astrophysics Studies', 1599.99, 2025, '2003-01-01'),
('Daisy Ridley', 'GHI Institute', '1234567819', 'Long Beach', 'Environmental Science Studies', 1549.50, 2024, '2002-04-16'),
('Elijah Wood', 'JKL University', '1234567820', 'Virginia Beach', 'Creative Writing Studies', 1501.75, 2025, '2003-08-19'),
('Freddie Mercury', 'MNO College', '1234567821', 'Atlanta', 'Sociology Studies', 1637.30, 2024, '2002-11-28'),
('Gandalf the Grey', 'RST Institute', '1234567822', 'Colorado Springs', 'Theology Studies', 1566.80, 2025, '2003-02-20'),
('Olivia Benson', 'ABC University', '1234567830', 'New York', 'Criminal Justice', 1450.00, 2025, '2003-01-15'),
('Peter Parker', 'XYZ College', '1234567831', 'Los Angeles', 'Photography', 1580.00, 2025, '2002-07-20'),
('Quinn Fabray', 'LMN Institute', '1234567832', 'Chicago', 'Theater Arts', 1500.00, 2024, '2002-10-25'),
('Rick Grimes', 'PQR University', '1234567833', 'Houston', 'Emergency Management', 1600.00, 2025, '2003-04-12'),
('Samantha Carter', 'STU College', '1234567834', 'Phoenix', 'Astrophysics', 1650.00, 2024, '2002-05-30'),
('Tony Stark', 'GHI University', '1234567835', 'Philadelphia', 'Engineering Management', 1700.00, 2025, '2003-06-15'),
('Uma Thurman', 'JKL Institute', '1234567836', 'San Antonio', 'Film Studies', 1550.00, 2024, '2002-09-10');


# --------------Question Depend on this table --------------
# 16.	Find the number of candidates per year.
select year , 
count(*) age 
from candidates 
group by year;

# 17.	Show total fees per department.
select department ,
sum(fees) as total_fee
from candidates
group by department
;

# 18.	Retrieve average fees paid by candidates from each city.
select city ,
avg(fees) as avg_fees
from candidates
group by city;

 # 19.	Find the number of candidates per college.
 select college,
 count(*) id
 from candidates
 group by college ;
 
# 20.	Show the minimum fees paid by candidates from each department.
select department ,
min(fees)
from candidates
group by department;

# 21.	Find the average age of candidates from each city.
select city,
avg(dob)
from candidates
group by city;

# 22.	Show the total number of candidates per year.
select year,
count(*)
from candidates
group by year;

# 23.	Retrieve the maximum fees from each college.
select college ,
max(fees)
from candidates
group by college;

# 24.	Find the total fees per year.
select year ,
sum(fees)
from candidates
group by year;

# 25.Show the average fees per college.
select college,
avg(fees)
from candidates
group by college;

# 26.Retrieve the number of candidates from each year of study.
select year,
count(*)
from candidates
group by year;

# 27.	Show the total fees collected from each college.
select college,
sum(fees)
from candidates
group by college;

# 28.	Find the average fees per department.
select department,
avg(fees)
from candidates
group by department;


#### 29.Retrieve the number of candidates from each city who are in their final year.
select city ,
count(*)
from candidates
where year = 2025   # why hard coded year suppose year may be 2016.
group by city

# 30.	Show the minimum and maximum fees from each college.
select college,
min(fees) , max(fees)
from candidates
group by college;



# 31.	Retrieve the sum of fees for candidates born after the year 2002, grouped by city.
select city ,
sum(fees)
from candidates
where dob > '2002-12-31'
group by city;

# 32.	Show the number of candidates in each department for each year.
select department, year,
count(*)
from candidates
group by department , year ;

# 33.	Find the total fees collected from each department for each city.
select department, city,
sum(fees)
from candidates
group by department , city ;

 # 34.	Show the average, minimum, and maximum fees for each year of study.
 select year ,
 avg(fees),min(fees),max(fees)
 from candidates
 group by year






