create database employees_db;
 use employees_db ;
 
 CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    department VARCHAR(30),
    salary DECIMAL(10,2),
    age INT,
    city VARCHAR(30)
);

INSERT INTO employees
(emp_id, emp_name, department, salary, age, city)
VALUES
(1, 'Asmit',    'IT',      50000, 25, 'Delhi'),
(2, 'Rahul',   'HR',      40000, 28, 'Kanpur'),
(3, 'Komal',    'IT',      60000, 30, 'Delhi'),
(4, 'Priya',   'Sales',   45000, 27, 'Lucknow'),
(5, 'Sachin',   'HR',      55000, 32, 'Kanpur'),
(6, 'Riya',    'IT',      70000, 29, 'Delhi'),
(7, 'Asmit',   'Sales',   38000, 24, 'Lucknow'),
(8, 'Anjali',  'HR',      48000, 26, 'Delhi'),
(9, 'Vikas',   'IT',      65000, 31, 'Kanpur'),
(10,'Sneha',   'Finance', 72000, 29, 'Delhi'),
(11,'Asmit',   'Finance', 68000, 34, 'Lucknow'),
(12,'Pooja',   'Sales',   42000, 23, 'Kanpur'),
(13,'Rohit',   'IT',      58000, 27, 'Delhi'),
(14,'Simran',  'HR',      51000, 30, 'Lucknow'),
(15,'Deepak',  'Finance', 75000, 35, 'Kanpur');

# Question 1
#-----------
#Show the total number of employees in each department whose salary is greater than or equal to 50,000.

SELECT department ,
count(*) as total_employee from employees
where salary >= 50000 
GROUP BY department ;

# Question 2
#-----------
# Show the average salary of employees in each city whose age is 25 years or above.
select city ,
avg(salary) as avg_salary
from employees
where age >= 25
group by city;

# Question 3
------------
#Show the total salary paid in each department for employees whose salary is greater than 45,000

select department, 
sum(salary) as total_salary
from employees
where salary > 45000
group by department;

# Question 4
------------
# Show the total number of employees in each city who work in the IT department.

SELECT city,
       COUNT(*) AS total_employee
FROM employees
WHERE department = 'IT'
GROUP BY city;

# Question 5 
------------
#Show the minimum salary in each city for employees whose age is less than 30 years.

select city ,
min(salary) as minimum_salary
from employees
where age < 30
group by city;

# Question 6
-------------
# Show the total salary paid in each city for employees whose age is greater than 25 years.


# Question 7 
------------
# Show the total number of employees in each department whose city is 'Delhi'.

select department ,
count(*) as total_empl
from employees
where city = 'Delhi'
group by department;

# Question 8
------------
# Show the highest salary in each department for employees whose age is between 25 and 30 years.

select department ,
max(salary) as max_salary
from employees
where age between 25 and 30
group by department;

# Question 9
------------
# Show the average salary in each department for employees whose age is between 24 and 32 years.

select department,
avg(salary) as avg_salary
from employees
where age between 24 and 32
group by department ;

# Question 10
-------------
#Show the total number of employees in each department whose city is either 'Delhi' or 'Kanpur'.

select department ,
count(*) as total_no_emply
from employees
where city IN ('Delhi', 'Kanpur')
group by department ;
