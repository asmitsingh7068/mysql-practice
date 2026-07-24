use day8_db;
CREATE TABLE Customers (
 CustomerID INT PRIMARY KEY, 
 CustomerName VARCHAR(50), 
 City VARCHAR(30), 
 Phone VARCHAR(15)
 ); 
 
 CREATE TABLE Orders ( 
 OrderID INT PRIMARY KEY, 
 CustomerID INT,
 ProductName VARCHAR(50), 
 Quantity INT,
 Price DECIMAL(10,2), 
 OrderDate DATE, 
 FOREIGN KEY (CustomerID) 
 REFERENCES Customers(CustomerID) ON DELETE CASCADE ON UPDATE CASCADE 
 );

INSERT INTO Customers VALUES 
(101,'Rahul Sharma','Lucknow','9876543210'),
(102,'Priya Singh','Delhi','9876543211'), 
(103,'Amit Verma','Kanpur','9876543212'), 
(104,'Neha Gupta','Noida','9876543213'), 
(105,'Rohan Mishra','Agra','9876543214'),
 (106,'Anjali Kapoor','Jaipur','9876543215'); 
 
 INSERT INTO Orders VALUES (1001,101,'Laptop',1,55000,'2026-07-01'),
 (1002,101,'Mouse',2,800,'2026-07-02'), 
 (1003,102,'Keyboard',1,1500,'2026-07-03'), 
 (1004,103,'Monitor',1,12000,'2026-07-05'), 
 (1005,103,'Printer',1,9000,'2026-07-06'), 
 (1006,105,'Headphones',2,2500,'2026-07-08'); 

#Practice Questions 
#A. Basic Retrieval 
	#1. Display all records from the Customers table. 
     select * from Customers; 
     
    #2. Display all records from the Orders table. 
    select * from Orders; 
    
    #3. Display only Customer Name and City. 
    select CustomerName , city from Customers;
    
    #4. Display Product Name and Price. 
    select ProductName , Price from Orders;
    
    #5. Display all orders placed after 2026-07-03. 
    select * from Orders where OrderDate > '2026-07-03';
    

# B. INNER JOIN 
	# 1. Display Customer Name and Product Name.
    select * from Customers
    inner join  Orders 
    on Customers.CustomerId = Orders.CustomerId;
    
    select * from Customers;
    select * from Orders;
    
    
	# 2. Display Customer Name, City and Order Date.
    select Customers.CustomerName,
    Customers.City,
    Orders.OrderDate
    from Customers
    inner join Orders
    on Customers.CustomerId = Orders.CustomerID;
    
    # 3. Display Customer Name, Product Name and Price.
    select Customers.CustomerNAme,
    Orders.ProductName,
    Orders.Price
    from Customers
    inner join Orders
    on Customers.CustomerId = Orders.CustomerId;
    #----------------------yha o/p per koi effect ni hoga kyiki inner join work kr rha hai match data k based per empact hoga left join pr ...
    select Customers.CustomerNAme,
    Orders.ProductName,
    Orders.Price
    from Orders
    inner join Customers
    on Customers.CustomerId = Orders.CustomerId;
    
    # 4. Display Customer Phone Number with Product Name.
    select Customers.Phone,
    Orders.ProductName
    from Customers   # here we can write Order because it is  inner join
    inner join Orders # same here we can write Customers   but remember it only possible in inner join 
    on Customers.CustomerId = Orders.CustomerId ;
    
    # 5. Display all customers who have placed orders. 
    select Customers.*    # ok but it will give me all customer name like 2 and 3 times
    from Customers
    inner join Orders 
    on Customers.CustomerId = Orders.CustomerId ;
    #--------------------------------------------
    select distinct Customers.*     # only every customer show data one times...
    from Customers
    inner join Orders 
    on Customers.CustomerId = Orders.CustomerId ;
    #------------------------------------ Difference between inner join and join => join ka by default hota hai inner join...

 select distinct Customers.*     # only every customer show data one times...
    from Customers
    inner join Orders 
    on Customers.CustomerId = Orders.CustomerId ;
    
#========================================================
# C. LEFT JOIN 
-----------------
	# 1. Display all customers along with their orders. 
	select Customers.CustomerName,
    Orders.Productname,
    Orders.OrderDate
    from Customers
    left join Orders
    on Customers.CustomerId = Orders.CustomerId;
    
    # 2. Find customers who have not placed any order. 
    select Customers.*
    from Customers
    left join Orders
    on Customers.CustomerId = Orders.CustomerId 
    where Orders.CustomerId is null;  # here we cant use 'null', null with = operator.
    
    # 3. Display Customer Name and Product Name (if available). 
    Select customers.customerName ,
    Orders.ProductName
    from Customers
    left join Orders
    on Customers.CustomerID = Orders.CustomerId;
    
    # 4. Display all customers even if they have no orders. 
    select Customers.*,
    Orders.*
    from Customers
	left join Orders
    on Customers.CustomerId = Orders.CustomerId
    
# D. RIGHT JOIN 
---------------
	#1. Display all orders with customer details. 
     select  Customers.*,
    Orders.*
    from Orders 
    right join Customers
    on Customers.CustomerId = Orders.CustomerId
    
	# 2. Display every order even if customer information is unavailable. 
    select customers.customerName,
    Orders.ProductName
    from Customers
    right join orders
    on Customers.CustomerId = Orders.CustomerId;
	
#E. Filtering with JOIN 
	#1. Display orders placed by customers from Lucknow. 
    select Customers.CustomerName,
    Orders.ProductName,
    Customers.city
    from Customers
    right join Orders
    on Customers.CustomerId = Orders.Customerid
    where Customers.city = 'Lucknow';
    
   #  2. Display customers who purchased a Laptop. 
   select Customers.CustomerName,
   Orders.ProductName
   from Customers
   right join Orders
   on Customers.CustomerId = Orders.Customerid
   where Orders.ProductName = 'Laptop';
   
   select * From Orders 
   
    # 3. Display products costing more than ₹5000 with customer names. 
    select Customers.customerName,
    Orders.Price
    from customers
    right join Orders
    on  Customers.CustomerId = Orders.Customerid
    where Orders.Price > 5000;
    
    # 4. Display customers whose names start with R along with their orders. 
    select Customers.*,
    Orders.*
    from customers
    right join Orders
    on  Customers.CustomerId = Orders.Customerid
    where Customers.CustomerName like 'R%';
    
    # 5. Display orders placed between 2026-07-02 and 2026-07-06.
    select Customers.customername ,
    Orders.ProductName,
    orders.OrderDate
    from Customers
    right join Orders 
    on Customers.customerId = Orders.CustomerId
    where OrderDate between  '2026-07-02' and '2026-07-06' ;
    
    
    select * from orders;
    

