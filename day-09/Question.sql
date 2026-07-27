create database day9_db;
use day9_db;
#               Task 1:
# Parent Table----
 CREATE TABLE Customers ( 
 CustomerID INT PRIMARY KEY, 
 CustomerName VARCHAR(50), 
 City VARCHAR(30),
 Phone VARCHAR(15) 
 ); 
 
 INSERT INTO Customers VALUES (101,'Rahul Sharma','Lucknow','9876543210'), 
 (102,'Priya Singh','Delhi','9876543211'), 
 (103,'Amit Verma','Kanpur','9876543212'), 
 (104,'Neha Gupta','Noida','9876543213'), 
 (105,'Rohan Mishra','Agra','9876543214'), 
 (106,'Anjali Kapoor','Jaipur','9876543215');
 
 
 CREATE TABLE Orders ( 
 OrderID INT PRIMARY KEY,
 CustomerID INT, 
 ProductName VARCHAR(50),
 Quantity INT, 
 Price DECIMAL(10,2),
 OrderDate DATE, 
 FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID) ON DELETE CASCADE ON UPDATE CASCADE ); 

INSERT INTO Orders VALUES (1001,101,'Laptop',1,55000,'2026-07-01'),
 (1002,101,'Mouse',2,800,'2026-07-02'),
 (1003,102,'Keyboard',1,1500,'2026-07-03'), 
 (1004,103,'Monitor',1,12000,'2026-07-05'),
 (1005,103,'Printer',1,9000,'2026-07-06'),
 (1006,105,'Headphones',2,2500,'2026-07-08'); 

# Practice Questions 
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
        select * from Orders where OrderDate >'2026-07-03';
        
	#B. INNER JOIN 
		#1. Display Customer Name and Product Name.
        select CustomerName ,ProductName
        from Customers
        inner join Orders
        on Customers.CustomerId = orders.CustomerId;
        
        #2. Display Customer Name, City and Order Date. 
        select CustomerName, City,OrderDate
        from Customers
        inner join Orders 
        on Customers.CustomerId = Orders.CustomerId;
        
        #3. Display Customer Name, Product Name and Price.
        select CustomerName , ProductName , Price
        from Customers
        inner join Orders 
        on Customers.CustomerId = Orders.CustomerId;
        
       #  4. Display Customer Phone Number with Product Name. 
       select customerName , phone, ProductName
        from Customers
        inner join Orders 
        on Customers.CustomerId = Orders.CustomerId;
       
        #5. Display all customers who have placed orders. 
        select *
        from Customers
        inner join Orders 
        on Customers.CustomerId = Orders.CustomerId;
     

	#C. LEFT JOIN 
		#1. Display all customers along with their orders. 
        select * from Customers 
        left join orders
        on Customers.customerId = Orders.customerId;
        
        #2. Find customers who have not placed any order.
        select * from Customers 
        left join orders
        on Customers.customerId = Orders.customerId
        where OrderDate is null;
        
        #3. Display Customer Name and Product Name (if available).
        select CustomerName, ProductName from customers
        left join orders
        on Customers.customerId = Orders.customerId;
        
        #4. Display all customers even if they have no orders.
        select * from customers
        left join orders
        on Customers.customerId = Orders.customerId
        where OrderDate is null;
	#D. RIGHT JOIN 
		#1. Display all orders with customer details.
        select * from Customers
        right join orders
        on Customers.customerId = Orders.CustomerId;
        
     #   2. Display every order even if customer information is unavailable.
        select * from Customers
        right join orders
        on Customers.customerId = Orders.CustomerId;

	#E. Filtering with JOIN 
		#1. Display orders placed by customers from Lucknow. 
        select * 
        from Customers
        left join Orders
        on Customers.customerId = Orders.CustomerId
        where Customers.city = 'Lucknow';
        
        #2. Display customers who purchased a Laptop.
        select customerName 
        from Customers
        left join Orders
        on Customers.customerId = Orders.CustomerId
        where Orders.ProductName= 'Laptop';
        
		#5. Display orders placed between 2026-07-02 and 2026-07-06.
             select * 
        from Customers
        left join Orders
        on Customers.customerId = Orders.CustomerId
        where Orders.OrderDate between '2026-07-02' and '2026-07-06';
        
	
	#F. Aggregate Functions with JOIN 
    
    #1. Count the number of orders placed by each customer.
    SELECT CustomerName,
       COUNT(Orders.OrderID) 
	FROM Customers
	INNER JOIN Orders
	ON Customers.CustomerID = Orders.CustomerID
	GROUP BY CustomerName;
    
    #2. Display the total amount spent by each customer. 
    select CustomerName,
       sum(Orders.Price) 
	from Customers
	inner join  Orders
	on Customers.CustomerID = Orders.CustomerID
	group by CustomerName;

    # 3. Display the average order amount for each customer. 
    select CustomerName,
       avg(Orders.Price) 
	from Customers
	inner join  Orders
	on Customers.CustomerID = Orders.CustomerID
	group by CustomerName;
    
    
    # 4. Find the highest-priced product purchased by each customer.
   ????????????????????????????????????
   ????????????????????????????????????
   >>???????????????????????????????
   ????????????????????????????//
    
    # 5. Find customers who placed more than one order. 
		select  CustomerName,
       COUNT(OrderID) 
	from Customers
	inner join Orders
	ON Customers.CustomerID = Orders.CustomerID
	GROUP BY CustomerName
	HAVING COUNT(OrderID) > 1;
    
    #G. Sorting 
    # 1. Display all orders sorted by price in descending order. 
    select orders.ProductName , Orders.Price from orders 
	Order by  Orders.Price desc;
    
    # 2. Display customer names in alphabetical order with their products. 
    select customerNAme , ProductName
    from Customers
    inner join Orders
    on Customers.CustomerId = Orders.CustomerId
    Order by  CustomerNAme asc;
    
   # 3. Display orders sorted by Order Date. 
   select customerNAme , OrderDate
    from Customers
    inner join Orders
    on Customers.CustomerId = Orders.CustomerId
    Order by  OrderDate asc;
    
    
    # 4. Display customers sorted by city. 
    select customerNAme , City
    from Customers
    Order by  city asc;
    
    #H. Advanced JOIN Practice 
   # 1. Find customers who purchased more than one different product.
		select CustomerName,
       COUNT(DISTINCT ProductName)
	FROM Customers
	inner join  Orders
	ON Customers.CustomerID = Orders.CustomerID
	group by customerName
	having COUNT(DISTINCT ProductName) > 1;
   
    # 2. Display the total revenue generated from all orders.
    select 
       sum(price)
	FROM 
	  Orders;
    
    #3. Find the city with the highest sales amount. 
    SELECT City,
       SUM(Orders.Price) 
		from Customers
		 inner join Orders
		on Customers.CustomerID = Orders.CustomerID
	group by  City
	order by   SUM(Orders.Price)  DESC
		limit 1;
        
    # 4. Display customers who spent more than ₹10,000. 
    select  CustomerName,
       SUM(Orders.Price) AS TotalSpent
		from Customers
		inner join Orders
		on Customers.CustomerID = Orders.CustomerID
		group by CustomerName
		 having SUM(Orders.Price) > 10000;
    
    
   # 5. Display the customer who placed the most orders.
	SELECT CustomerName,
       COUNT(OrderID) AS TotalOrders
	from Customers
	inner join  Orders
	ON Customers.CustomerID = Orders.CustomerID
	group by CustomerName
		order by TotalOrders DESC
	limit  1;
   
   # 6. Find the customer who purchased the most expensive product. 
   SELECT CustomerName,
       ProductName,
       Price
	from Customers
	inner join  Orders
	 on Customers.CustomerID = Orders.CustomerID
	order by  Price DESC
	limit 1;
    
    
	#I. Foreign Key Practice (ON DELETE & ON UPDATE) 
    # 1. Update CustomerID = 101 to 201. Verify that the CustomerID is automatically updated in the Orders table. 
    update Customers
		set CustomerID = 201
	where CustomerID = 101;
    
    #2. Delete the customer with CustomerID = 103. Verify that all related orders are automatically deleted. 
	delete from Customers
		where  CustomerID = 103;
    
    # 3. Insert a new customer and place two orders for that customer. 
    INSERT INTO Customers
VALUES (107, 'Asmit', 'Kanpur', '9876543210');
INSERT INTO Orders
VALUES
(1007, 107, 'Smart Watch', 1, 4500, '2026-07-10'),
(1008, 107, 'Bluetooth Speaker', 2, 3000, '2026-07-11');

    
    #4. Display the updated records from both tables after performing task 1 to 4. 
    select * from Orders;
    select * from Customers;
