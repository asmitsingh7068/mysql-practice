create database day_8db2;
use day_8db2;
CREATE TABLE City ( 
CityID INT PRIMARY KEY,
 CityName VARCHAR(50), 
 PinCode VARCHAR(10), 
 StateName VARCHAR(50), 
 CountryName VARCHAR(50)
 );
 
 CREATE TABLE Customer (
 CustomerID INT PRIMARY KEY, 
 CustomerName VARCHAR(50), 
 Gender VARCHAR(10),
 Age INT, 
 Phone VARCHAR(15), 
 Email VARCHAR(100), 
 CityID INT, 
 FOREIGN KEY (CityID) REFERENCES City(CityID) ON DELETE CASCADE ON UPDATE CASCADE 
 ); 
 
 INSERT INTO City VALUES 
 (1,'Lucknow','226001','Uttar Pradesh','India'), 
 (2,'Delhi','110001','Delhi','India'), 
 (3,'Jaipur','302001','Rajasthan','India'), 
 (4,'Kanpur','208001','Uttar Pradesh','India'), 
 (5,'Mumbai','400001','Maharashtra','India'),
 (6,'Bhopal','462001','Madhya Pradesh','India');
 
 INSERT INTO Customer VALUES (
 101,'Rahul Sharma','Male',25,'9876543210','rahul@gmail.com',1), 
 (102,'Priya Singh','Female',23,'9876543211','priya@gmail.com',2), 
 (103,'Amit Verma','Male',28,'9876543212','amit@gmail.com',1), 
 (104,'Neha Gupta','Female',24,'9876543213','neha@gmail.com',4), 
 (105,'Rohan Mishra','Male',27,'9876543214','rohan@gmail.com',5),
 (106,'Anjali Kapoor','Female',22,'9876543215','anjali@gmail.com',3),
 (107,'Karan Mehta','Male',30,'9876543216','karan@gmail.com',1);
 
 # F. Aggregate Functions with JOIN 
 -----------------------------------
	#1. Count the number of customers in each city. 
    select cityName,
    count(customer.customerId)
    from city 
    left join Customer
    on city.cityId = customer.cityId
    group by city.cityId, cityName;
    
	#2. Count the number of customers in each state. 
    select StateName,
    count(Customer.Customerid)
    from City
    left join Customer
    on City.cityId = customer.CityId
    group by StateName ;
    
    #3. Display the average age of customers in each city. 
    select cityName,
    avg(customer.age)
    from City 
    left join Customer
    on Customer.CityId = City.CityId
    group by cityName;
    
    #4. Display the maximum age of customers in each city. 
    select cityName,
    max(Customer.Age)
    from City
    left join  Customer
    on customer.CityId = City.CityId
    group by cityName;
    
    #5. Find cities having more than one customer. 
    select CityName,
    count(Customer.customerID)
    from City
    left join Customer
    on Customer.cityid = City.cityId
    group by CityName
    having Count(Customer.CustomerId) > 1 ;
        
    
#G. Sorting 
	#1. Display customers sorted by name. 
    select customerName from customer
    Order By customerName asc;
    
    #2. Display cities sorted by State Name. 
    select stateName , cityName 
    from City
    Order by CityName desc ;
    
    #3. Display customers sorted by age (highest first).
    select * from customer
    order by age desc;
    
    #4. Display cities sorted alphabetically.
	select * from city
    order by cityname asc;
    
# H. Advanced JOIN Practice 
	#1. Find the city having the highest number of customers. 
    SELECT CityName,
	COUNT(Customer.Customerid)
	FROM city
    left join Customer
	ON Customer.cityId = City.cityId
	GROUP BY  cityName ,city.cityId 
	ORDER BY COUNT(Customer.CustomerID) DESC
	LIMIT 1;
    
    #2. Find the state having the maximum customers.
    SELECT City.StateName,
       COUNT(Customer.CustomerID) AS TotalCustomers
	FROM City
	LEFT JOIN Customer
	ON Customer.CityID = City.CityID
	GROUP BY City.StateName
	ORDER BY TotalCustomers DESC
	LIMIT 1;
    
    #3. Display all customers living in the same city. 
    select customer.customerName, city.cityName
    from city
    left join customer 
    on customer.cityId = city.cityId;
   
    #4. Find cities where more than two customers live. 
    select city.cityname,
    count(customer.CustomerID)
    from city
    left join customer 
    on customer.cityid = city.cityid
    group by City.CityID, City.CityName
    having  count(city.cityId) > 2 ;
    
    #5. Display the youngest customer from each city.]
   select city.cityName,
    min(customer.age)
    from city
    left join customer
    on customer.cityid = city.cityid
    group by city.cityid , city.cityname;
    
    #6. Display the oldest customer from each city.
       select city.cityName,
    max(customer.age)
    from city
    left join customer
    on customer.cityid = city.cityid
    group by city.cityid , city.cityname;
    
#I. Foreign Key Practice (ON DELETE & ON UPDATE) 

	#1. Update CityID = 1 to 10 in the City table and verify that the Customer table is automatically updated because of ON UPDATE CASCADE. 
    update city set cityid = 10 where cityId = 1;
    SELECT * FROM City;
    SELECT * FROM Customer;
    
    #2. Delete the city with CityID = 4 and verify that all customers belonging to that city are automatically deleted because of ON DELETE CASCADE. 
    delete from city where  cityid = 4;
    select * from city;
    select * from customer;
    
    
    #3. Insert a new city and add two customers belonging to that city. 
    insert into City
VALUES (7, 'Pune', '411001', 'Maharashtra', 'India');
    insert into Customer
VALUES
(108, 'Arjun Patel', 'Male', 26, '9876543217', 'arjun@gmail.com', 7),
(109, 'Sneha Joshi', 'Female', 24, '9876543218', 'sneha@gmail.com', 7);



    #4. Display the updated records from both tables after performing Tasks 1-4. 
    
    select * from City;
	select * from Customer;
 
 