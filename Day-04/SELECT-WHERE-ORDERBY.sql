CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50) NOT NULL,
    department VARCHAR(30) NOT NULL,
    salary DECIMAL(10,2),
    joining_date DATE,
    gender CHAR(1),
    age INT,
    city VARCHAR(30)
);

INSERT INTO employees
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

# 1.	Retrieve all employee records.
select * from employees ;

#2.	Display only emp_name and salary of all employees.
select  emp_name ,salary from  employees;

# 3.	Show all employees who work in the IT department.
select emp_name from employees where department = 'IT';

# 4.	Find employees whose salary is more than 50,000.
select * from employees where salary > 50000;

# 5.	List employees who joined after 2020.
select * from employees where joining_date >'2020-12-31';

# 6.	Find employees who live in Kanpur or Mumbai.
select * from employees where city='Kanpur' or city = 'Mumbai';

# 7.	Show employees whose name starts with 'A'.
SELECT *
FROM employees
WHERE emp_name LIKE 'A%';

# 8.	List employees with an age between 25 and 30.
select * from employees where age between 25 and 30;

#===================Shorting ==============================

# 1.	Sort employees by salary in descending order.
select * from employees order by salary desc;

# 2.	Sort employees alphabetically by their name.
select * from employees order by emp_name asc;

# 3.	Find employees with the highest salary.
select max(salary) from employees;

# 4.	Find employees with the lowest salary.
select min(salary) from employees;

# 5.	Show employees who joined before 2022 but are in the Finance department.
SELECT *
FROM employees
WHERE joining_date < '2022-01-01'
AND department = 'Finance';





