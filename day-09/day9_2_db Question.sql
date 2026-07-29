create database day9_2_db;
use day9_2_db;

# ------------Online Shopping System -----------

CREATE TABLE City ( CityID INT PRIMARY KEY, 
CityName VARCHAR(50),
 PinCode VARCHAR(10), StateName VARCHAR(50), 
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
FOREIGN KEY (CityID) REFERENCES City(CityID) ON DELETE CASCADE ON UPDATE CASCADE );

INSERT INTO City
 VALUES (1,'Lucknow','226001','Uttar Pradesh','India'), 
(2,'Delhi','110001','Delhi','India'),
 (3,'Jaipur','302001','Rajasthan','India'),
 (4,'Kanpur','208001','Uttar Pradesh','India'), 
 (5,'Mumbai','400001','Maharashtra','India'), 
(6,'Bhopal','462001','Madhya Pradesh','India'); 

INSERT INTO Customer VALUES (101,'Rahul Sharma','Male',25,'9876543210','rahul@gmail.com',1), 
(102,'Priya Singh','Female',23,'9876543211','priya@gmail.com',2), 
(103,'Amit Verma','Male',28,'9876543212','amit@gmail.com',1),
 (104,'Neha Gupta','Female',24,'9876543213','neha@gmail.com',4), 
 (105,'Rohan Mishra','Male',27,'9876543214','rohan@gmail.com',5), 
 (106,'Anjali Kapoor','Female',22,'9876543215','anjali@gmail.com',3), 
(107,'Karan Mehta','Male',30,'9876543216','karan@gmail.com',1); 


#Practice Questions 
#A. Basic Retrieval 
	#1. Display all records from the City table.
	select * from city;
    
	#2. Display all records from the Customer table.
    select * from Customer;
    
	#3. Display only City Name and State Name. 
    select cityName , StateName from City;
    
	#4. Display Customer Name and Phone Number. 
    select CustomerName, Phone from Customer;
    
	#5. Display customers whose age is greater than 25. 
    select Customer.age from customer where age > 25;
    
#B. INNER JOIN 
	#1. Display Customer Name and City Name. 
    select CustomerNAme ,CityName
    from customer 
    inner join city 
    on customer.cityId = city.cityId;
    
	#2. Display Customer Name, City Name and State Name. 
	select CustomerNAme ,CityName, stateName
    from customer 
    inner join city 
    on customer.cityId = city.cityId;
    
	#3. Display Customer Name, Country Name and Phone Number.
    select CustomerNAme ,CityName, Phone
    from customer 
    inner join city 
    on customer.cityId = city.cityId;
    
	#4. Display Customer Name, Pin Code and Email. 
    select CustomerNAme ,PinCode,Email
    from customer 
    inner join city 
    on customer.cityId = city.cityId;
    
	#5. Display all customers along with their city details.
    select CustomerNAme ,City.*
    from customer 
    inner join city  
    on customer.cityId = city.cityId;

    
 #C.#LEFT JOIN 
	#1. Display all cities along with their customers. 
    select customername , cityname 
    from city 
    left join customer
    on city.cityId = Customer.CityId;
    
	#2. Find cities that have no customers.
    select cityname 
    from city 
    left join customer
    on city.cityId = Customer.CityId
    where customer.customerName is null;
    
    
    #3. Display City Name and Customer Name (if available).
    select cityname , customerName 
    from city 
    left join customer
    on city.cityId = Customer.CityId;
    
    #4. Display all cities even if no customer belongs to them. 
    select customerName , cityNAme 
    from city 
    left join customer
    on city.cityId = Customer.CityId;
    
    #D. RIGHT JOIN 
    #1. Display all customers with city details.
    select customer.*, city.*
    from customer 
    right join city
    on customer.cityid = city.cityid;
    
    # 2. Display every customer even if city information is unavailable.
    select customer.customername , city.*
    from city 
    right join customer
    on customer.cityid = city.cityid;
    
    #E. Filtering with JOIN 
    #1. Display customers from Lucknow. 
    select  customerName, cityName
    from customer
    left join city
    on customer.cityid = city.cityid
    where cityname = 'Lucknow' ;
    
    
    #2. Display customers belonging to Uttar Pradesh.
    select  customerName, statename
    from customer
    left join city
    on customer.cityid = city.cityid
    where statename = 'UTTAR Pradesh' ;
    
    #3. Display customers from India. 
    select  customerName, CountryName
    from customer
    left join city
    on customer.cityid = city.cityid
    where countryName = 'India' ;
    
    
    #4. Display customers whose names start with A along with their city. 
    select  customerName, CityName
    from customer
    left join city
    on customer.cityid = city.cityid
    where customerName like "A%";
    
    #5. Display customers from cities having Pin Code 226001. 
    select  customerName, CityName, pincode
    from customer
    left join city
    on customer.cityid = city.cityid
    where pincode  = 226001;
    
    
    #F. Aggregate Functions with JOIN 
    #1. Count the number of customers in each city.
    select cityID ,count(CustomerName) from customer
    group by cityId;
    
    #2. Count the number of customers in each state. 
     select city.statename ,count(customer.Customerid)
     from city
     left join customer
     on city.CityId = customer.CityId
    group by city.stateName;
    
    # 3. Display the average age of customers in each city. 
    select city.cityName ,avg(customer.age)
     from city
     left join customer
     on city.CityId = customer.CityId
    group by city.CityId, city.CityName;
    
    #4. Display the maximum age of customers in each city. 
    select city.cityName , max(customer.age)
     from city
     left join customer
     on city.CityId = customer.CityId
    group by  city.CityId,city.CityName ;
    

   # 5. Find cities having more than one customer. 
   SELECT city.CityName,
       COUNT(customer.CustomerId) 
	FROM city
	inner join  customer
	on city.CityId = customer.CityId
	group by  city.CityId, city.CityName
	having  COUNT(customer.CustomerId) > 1;
   
    #G. Sorting 
    #1. Display customers sorted by name.
    select customerName from customer 
    order by customername asc;
    
   # 2. Display cities sorted by State Name. 
    select cityName from city 
    order by cityName asc;
    
    # 3. Display customers sorted by age (highest first). 
    select CustomerName, Age
	from customer
	order by  Age DESC;
    
    #4. Display cities sorted alphabetically. 
     select CityName
	from city
	order by  CityName ASC;
    
    
    #H. Advanced JOIN Practice 
    # 1. Find the city having the highest number of customers.
    select city.CityName,
       COUNT(customer.CustomerId) AS TotalCustomers
	from city
	left join customer
	ON city.CityId = customer.CityId
	group by  city.CityId, city.CityName
	order by  TotalCustomers DESC
	limit 1;
    
    # 2. Find the state having the maximum customers.
    select city.stateName,
      count(customer.customerid)
	from city
	left join customer
	ON city.CityId = customer.CityId
	group by city.statename
	order by count(customer.customerid) DESC
	limit 1;
    
    3. Display all customers living in the same city. 
    4. Find cities where more than two customers live. 
    5. Display the youngest customer from each city. 
    6. Display the oldest customer from each city. 
    #I. Foreign Key Practice (ON DELETE & ON UPDATE) 
    #1. Update CityID = 1 to 10 in the City table and verify that the Customer table is automatically updated because of ON UPDATE CASCADE. 
			update city
			set CityId = 10
			where CityId = 1;
    select * from city;
    
    #2. Delete the city with CityID = 4 and verify that all customers belonging to that city are automatically deleted because of ON DELETE CASCADE. 
    delete from  city
	where CityId = 4;
    
    #3. Insert a new city and add two customers belonging to that city.
    INSERT INTO city (CityId, CityName, StateName)
VALUES (7, 'Varanasi', 'Uttar Pradesh');

INSERT INTO customer (CustomerId, CustomerName, Age, Gender, CityId)
VALUES
(111, 'Asmit', 24, 'Male', 5),
(112, 'Komal', 22, 'Female', 5);
    
    
   #  4. Display the updated records from both tables after performing Tasks 1-4. 
    select * from city;
    select * from Customer;
    
    