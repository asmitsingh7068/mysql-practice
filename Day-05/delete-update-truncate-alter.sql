create database day5_db;
use day5_db;

#----------Assignment Question 1-------------------

CREATE TABLE students (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    grade VARCHAR(10)
);

INSERT INTO students (id, name, age, grade)
VALUES
(1, 'Anvi', 15, '10th'),
(2, 'Mahi', 14, '9th'),
(3, 'Kabir', 16, '11th'),
(4, 'Meera', 15, '10th');

 # Q1 Update the grade of student Anvi from 10th to 11th. 
 update students  
 set grade = 11 
 where id = 1;
 
# Q2 Update the age of student whose ID = 2 to 15. 
update students 
set age = 15 
where id = 2;

#Q3 Delete the record of the student named Kabir. 
delete from students where id = 3;  # with id we can esaly delete but 
delete from students where name = 'Kabir' ; #  with name it will give a problem using safe update mode ka problem dega ...


# Q4 Add a new column City with datatype VARCHAR(50) to the Students table.

alter table students
add column city varchar(50);

# Q5 Truncate the Students table. 
truncate table students ;

#---------------------------------------------------------------------------------------------------------------------

#--------------Assignmet Question 2--------------

CREATE TABLE books (
    book_id INT PRIMARY KEY,
    title VARCHAR(100),
    author VARCHAR(100),
    price INT
);

INSERT INTO books (book_id, title, author, price)
VALUES
(1, 'The Alchemist', 'Paulo Coelho', 299),
(2, 'Wings of Fire', 'A.P.J. Abdul Kalam', 350),
(3, '1984', 'George Orwell', 280),
(4, 'Think Like a Monk', 'Jay Shetty', 400);

# Q1 Update the price of The Alchemist to 350.
UPDATE books
SET price = 350
WHERE book_id =1;

# Q2 Update the author of 1984. 
UPDATE books
SET author ='asmit'
WHERE book_id =3;


# Q3 Delete the book whose BookID = 4. 
delete from books
where book_id = 4;

# Q4 Add a column Publisher VARCHAR(100) to the Books table. 
alter table books 
add column publisher varchar(100);

# Q5 Truncate the Books table.
truncate table  books;


#-------------------Assignment 3------------------------------

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(50),
    salary INT
);

INSERT INTO employees (emp_id, name, department, salary)
VALUES
(1, 'Rahul', 'Sales', 30000),
(2, 'Sneha', 'HR', 40000),
(3, 'Amit', 'IT', 50000),
(4, 'Pooja', 'Finance', 45000);

SET SQL_SAFE_UPDATES = 0;  # safe mode disable karne k liye ye tha ....

# Q1 Update the salary of employee Rahul to 35000. 
update employees 
set salary = 35000
where name = 'Rahul';

# Q2 Change the department of Sneha from HR to Admin. 
update employees
set department = 'admin'
where department = 'HR' ;

# Q3  Delete the employee working in the Finance department. 
delete from employees
where department = 'finance';

# Q4 Add a new column Email VARCHAR(100) to the Employees table. 
alter table employees
add column email varchar(100);


# Q5 Truncate the Employees table.
truncate table employees;

#--------------------------------------------------------------------------------------------------------
#--------------Assignment  4 -------------------------
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    order_date DATETIME
);
 
 
 INSERT INTO orders (order_id, customer_name, order_date)
VALUES
(1, 'Ankit', '2024-01-10 10:30:00'),
(2, 'Priya', '2024-02-15 14:45:00'),
(3, 'Rohan', '2024-03-05 09:20:00'),
(4, 'Sneha', '2024-03-21 12:00:00');

# Q1 Update the order date of OrderID = 2.
update orders 
set order_date = '2026-07-19 05:36:00'
where order_id = 2;
 
# Q2 Change the customer name from Rohan to Rohit. 
update orders
set customer_name = 'Rohit'
where customer_name = 'Rohan' ;

# Q3 Delete the order placed by Sneha. 
delete from orders 
where customer_name = 'Sneha';


# Q4 Add a new column Status VARCHAR(20) to the Orders table. 
alter table orders
add column Status varchar(20);

# Q5 Truncate the Orders table. 
truncate table orders;

#----------------------------------------------------------------------
# -------------------------Assignment Q5----------------------------------
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price INT
);

INSERT INTO products (product_id, product_name, category, price)
VALUES
(1, 'Pen', 'Stationery', 10),
(2, 'Laptop', 'Electronics', 55000),
(3, 'Chair', 'Furniture', 1200),
(4, 'Bottle', 'Kitchen', 150);


# Q1 Update the price of Laptop to 60000. 
update products
set price = 60000
where product_name = 'Laptop';

# Q2 Change the category of Bottle from Kitchen to Home Essentials. 
update products
set category = 'Home Essentials'
where product_name = 'bottle';

# Q3 delete the product named Chair. 
delete from products
where product_name = 'Chair';

# Q4 Add a column Stock INT to the Products table. 
alter table products 
add column Stock int ;


# Q5 truncate the Products table. 
truncate table products ;

