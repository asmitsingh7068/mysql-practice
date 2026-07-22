create database day7_db;
use day7_db;
CREATE TABLE candidates ( 
id INT PRIMARY KEy auto_increment, 
name VARCHAR(100), 
college VARCHAR(100), 
phone VARCHAR(15),    
 city VARCHAR(50), 
 department VARCHAR(50),  
 fees DECIMAL(10, 2), 
 year INT,    
 dob DATE);  
 
INSERT INTO candidates (name, college, phone, city, department, 
fees, year, dob) VALUES  
('Alice Johnson', 'ABC University', '1234567890', 'New York', 
'Computer Science', 1500.00, 2025, '2003-05-15'), 
('Bob Smith', 'XYZ College', '1234567891', 'Los Angeles', 
'Mechanical Engineering', 1600.00, 2025, '2002-08-22'), 
('Charlie Brown', 'LMN Institute', '1234567892', 'Chicago', 
'Electrical Engineering', 1550.00, 2025, '2003-01-10'), 
('Diana Prince', 'PQR University', '1234567893', 'Houston', 'Civil 
Engineering', 1620.00, 2024, '2002-12-30'), 
('Ethan Hunt', 'STU College', '1234567894', 'Phoenix', 'Information 
Technology', 1580.00, 2025, '2003-03-25'), 
('Fiona Apple', 'GHI University', '1234567895', 'Philadelphia', 
'Biotechnology', 1650.00, 2024, '2002-09-18'), 
('George Clooney', 'JKL Institute', '1234567896', 'San Antonio', 
'Physics', 1500.00, 2025, '2003-07-07'), 
('Hannah Montana', 'MNO College', '1234567897', 'San Diego', 
'Mathematics', 1525.00, 2024, '2002-11-11'), 
('Ian Malcolm', 'RST University', '1234567898', 'Dallas', 
'Chemistry', 1575.00, 2025, '2003-04-04'), 
('Julia Roberts', 'UVW College', '1234567899', 'San Jose', 
'Economics', 1610.00, 2024, '2002-06-14'), 
('Kevin Spacey', 'XYZ University', '1234567800', 'Austin', 'Business 
Administration', 1590.00, 2025, '2003-02-20'), 
('Laura Croft', 'ABC Institute', '1234567801', 'Jacksonville', 
'Graphic Design', 1540.00, 2024, '2002-10-30'), 
('Ursula K. Le Guin', 'DEF Institute', '1234567810', 'Milwaukee', 
'Literature Studies', 1550.00, 2025, '2003-04-11'), 
('Victor Hugo', 'GHI University', '1234567811', 'Memphis', 'History 
Studies', 1620.00, 2024, '2002-09-29'), 
('Walt Disney', 'JKL College', '1234567812', 'Baltimore', 'Animation 
Studies', 1515.00, 2025, '2003-03-10'), 
('Xena Warrior Princess', 'MNO Institute', '1234567813', 'Colorado 
Springs', 'Martial Arts Studies', 1580.00, 2024, '2002-11-23'), 
('Yoda Jedi Master', 'RST University', '1234567814', 'Albuquerque', 
'Philosophy Studies', 1640.00, 2025, '2003-02-14'), 
('Zoe Saldana', 'UVW College', '1234567815', 'Tucson', 'Dance 
Studies', 1560.00, 2024, '2002-10-05'), 
('Aaron Paul', 'XYZ Institute', '1234567816', 'Fresno', 'Psychology 
Studies', 1530.00, 2025, '2003-07-17'), 
('Bella Swan', 'ABC University', '1234567817', 'Sacramento', 
'Biochemistry Studies', 1615.00, 2024, '2002-12-24'), 
('Chris Hemsworth', 'DEF College', '1234567818', 'Kansas City', 
'Astrophysics Studies', 1599.99, 2025, '2003-01-01'), 
('Daisy Ridley', 'GHI Institute', '1234567819', 'Long Beach', 
'Environmental Science Studies', 1549.50, 2024, '2002-04-16'), 
('Elijah Wood', 'JKL University', '1234567820', 'Virginia Beach', 
'Creative Writing Studies', 1501.75, 2025, '2003-08-19'), 
('Freddie Mercury', 'MNO College', '1234567821', 'Atlanta', 
'Sociology Studies', 1637.30, 2024, '2002-11-28'), 
('Gandalf the Grey', 'RST Institute', '1234567822', 'Colorado 
Springs', 'Theology Studies', 1566.80, 2025, '2003-02-20'), 
('Olivia Benson', 'ABC University', '1234567830', 'New York', 
'Criminal Justice', 1450.00, 2025, '2003-01-15'), 
('Peter Parker', 'XYZ College', '1234567831', 'Los Angeles', 
'Photography', 1580.00, 2025, '2002-07-20'), 
('Quinn Fabray', 'LMN Institute', '1234567832', 'Chicago', 'Theater 
Arts', 1500.00, 2024, '2002-10-25'), 
('Rick Grimes', 'PQR University', '1234567833', 'Houston', 
'Emergency Management', 1600.00, 2025, '2003-04-12'), 
('Samantha Carter', 'STU College', '1234567834', 'Phoenix', 
'Astrophysics', 1650.00, 2024, '2002-05-30'), 
('Tony Stark', 'GHI University', '1234567835', 'Philadelphia', 
'Engineering Management', 1700.00, 2025, '2003-06-15'), 
('Uma Thurman', 'JKL Institute', '1234567836', 'San Antonio', 'Film 
Studies', 1550.00, 2024, '2002-09-10');

#-----------------------Question ------------------------
# 1. Find the number of candidates per year 

select year ,
count(*)
from candidates
group by year;


# 2. Show total fees per department. 
select department,
sum(fees)
from candidates
group by department;

# 3. Retrieve average fees paid by candidates from each city. 
select city,
avg(fees)
from candidates
group by city;

# 4. Find the number of candidates per college. 
select college,
count(*)
from candidates
group by college;

 # 5. Show the minimum fees paid by candidates from each department. 
select department,
min(fees)
from candidates
group by department;


# having
# 1. List cities with fewer than 3 candidates. 
select city,
count(*)
from candidates
group by city
having count(*) < 3;

# 2. Show colleges with total fees over 5000.00.
select college,
sum(fees) 
from  candidates
group by college
having sum(fees) > 5000 ;

 
# 3. Retrieve departments with an average fee below 1600.00. 
select department,
avg(fees)
from candidates
group by department
having avg(fees) < 1600;

# 4. Find years with more than 5 candidates.
select year ,
count(*)
from candidates
group by year
having count(*) >5;
 
# 5. Show colleges where the maximum fee is less than 1650.00. 
select college,
max(fees)
from candidates
group by college
having max(fees)< 1650;

#========================================================================
# 2. Create the following tables with Primary Key (PK) and Foreign Key (FK).
#========================================================================


# 1. Categories(CategoryID PK, CategoryName) 
create table Categories(
CategoryID int primary key,
CategoryName varchar (100)
); 
insert into Categories (CategoryID, CategoryName)
VALUES
(1, 'Electronics'),
(2, 'Clothing'),
(3, 'Books'),
(4, 'Home Appliances'),
(5, 'Sports');

#2 Products(ProductID PK, CategoryID FK, ProductName, Price, Stock)
create table Products(
ProductID int primary key,
ProductName varchar(200),
Price int,
Stock int,

CategoryID 	int ,
foreign key (CategoryID)
references Categories(CategoryID)

);

INSERT INTO Products (ProductID, ProductName, Price, Stock, CategoryID)
VALUES
(101, 'Laptop', 55000, 10, 1),
(102, 'Smartphone', 25000, 25, 1),
(103, 'T-Shirt', 799, 50, 2),
(104, 'Java Programming Book', 499, 30, 3),
(105, 'Microwave Oven', 8999, 8, 4);
 
 # Customers(CustomerID PK, Name, Email, Phone) 
 create table Customers(
 CustomerID  int primary key,
 Name varchar(50),
 Email varchar(200),
 Phone bigint 
 );
 INSERT INTO Customers (CustomerID, Name, Email, Phone)
VALUES
(101, 'Asmit Singh', 'asmit@gmail.com', 9876543210),
(102, 'Rahul Sharma', 'rahul@gmail.com', 9876543211),
(103, 'Priya Verma', 'priya@gmail.com', 9876543212),
(104, 'Aman Kumar', 'aman@gmail.com', 9876543213),
(105, 'Neha Gupta', 'neha@gmail.com', 9876543214);
 
 # Orders(OrderID PK, CustomerID FK, OrderDate, TotalAmount, Status) 
 create table Orders(
 OrderID  int primary key,
 
 CustomerID int ,
 foreign key (CustomerID)
 references Customers(CustomerID),
 
 OrderDate date,
 TotalAmount int ,
 Status text
 
 );
 INSERT INTO Orders (OrderID, CustomerID, OrderDate, TotalAmount, Status)
VALUES
(1001, 101, '2026-07-01', 55000, 'Delivered'),
(1002, 102, '2026-07-03', 25000, 'Shipped'),
(1003, 103, '2026-07-05', 799, 'Pending'),
(1004, 104, '2026-07-07', 499, 'Delivered'),
(1005, 105, '2026-07-10', 8999, 'Processing');
 
# OrderItems(OrderItemID PK, OrderID FK, ProductID FK, Quantity, Price) 
create table OrderItems(
OrderItemID int primary key,

OrderID int ,
foreign key (OrderId)
references Orders(OrderId),

ProductID int,
foreign key (ProductId)
references Products(ProductId),

Quantity int ,
Price int

);

INSERT INTO OrderItems (OrderItemID, OrderID, ProductID, Quantity, Price)
VALUES
(1, 1001, 101, 1, 55000),
(2, 1002, 102, 2, 25000),
(3, 1003, 103, 3, 799),
(4, 1004, 104, 1, 499),
(5, 1005, 105, 2, 8999);


# ProductImages(ImageID PK, ProductID FK, ImageURL) 
create table ProductImages(
ImageID  int primary key,

ProductID int,
foreign key (ProductId)
references Products(ProductId),

ImageURL varchar(200)
);

INSERT INTO ProductImages (ImageID, ProductID, ImageURL)
VALUES
(1, 101, 'laptop.jpg'),
(2, 102, 'smartphone.jpg'),
(3, 103, 'tshirt.jpg'),
(4, 104, 'java_book.jpg'),
(5, 105, 'microwave.jpg');


# Reviews(ReviewID PK, ProductID FK, CustomerID FK, Rating, Comment) 
create table Reviews(
ReviewID int primary key,

ProductID int ,
foreign key (ProductId)
references Products(ProductId),

CustomerID int,
foreign key (CustomerId)
references Customers(CustomerId),

Rating smallint,
Comment text
);


INSERT INTO Reviews (ReviewID, ProductID, CustomerID, Rating, Comment)
VALUES
(1, 101, 101, 5, 'Excellent Laptop'),
(2, 102, 102, 4, 'Very Good Smartphone'),
(3, 103, 103, 5, 'Amazing T-Shirt'),
(4, 104, 104, 4, 'Useful Java Book'),
(5, 105, 105, 5, 'Best Microwave');



