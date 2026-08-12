create database day14_db;
use day14_db;
-- customer table -6
create table customers(
 customer_id  int primary key,
 name varchar(50) not null,
 email varchar(100) unique,
 city varchar(50)  default'Lucknow',
 age int check (age >=18)

);

INSERT INTO customers (customer_id, name, email, city, age)
VALUES
(101, 'Ram', 'ram@gmail.com', 'Lucknow', 22),
(102, 'Shyam', 'shyam@gmail.com', 'Kanpur', 24),
(103, 'Ravi', 'ravi@gmail.com', 'Delhi', 21),
(104, 'Priya', 'priya@gmail.com', 'Mumbai', 23),
(105, 'Rohit', 'rohit@gmail.com', 'Lucknow', 26),
(106, 'Anjali', 'anjali@gmail.com', 'Jaipur', 20);

-- product table -8:
create table products(
 product_id  int primary key,
 product_name varchar(100) not null,
 category varchar(100) not null,
  price int check (price >0),
 stock int default 0

);
INSERT INTO products (product_id, product_name, category, price, stock)
VALUES
(201, 'HP Laptop', 'Laptop', 55000, 10),
(202, 'Dell Laptop', 'Laptop', 65000, 5),
(203, 'Samsung Mobile', 'Mobile', 25000, 15),
(204, 'iPhone 15', 'Mobile', 60000, 8),
(205, 'HP Keyboard', 'Keyboard', 1500, 20),
(206, 'Logitech Mouse', 'Mouse', 800, 25),
(207, 'LG Monitor', 'Monitor', 12000, 7),
(208, 'Sony Headphone', 'Headphone', 5000, 12);


-- order table-8

create table orders(
	order_id int primary key,
 customer_id  int ,
order_date date not null,
status varchar(20) default'pending',

foreign key (customer_id) references customers(customer_id)

);

INSERT INTO orders (order_id, customer_id, order_date, status)
VALUES
(301, 101, '2026-08-01', 'Delivered'),
(302, 102, '2026-08-02', 'Shipped'),
(303, 103, '2026-08-03', 'Pending'),
(304, 101, '2026-08-04', 'Delivered'),
(305, 104, '2026-08-05', 'Cancelled'),
(306, 105, '2026-08-06', 'Shipped'),
(307, 106, '2026-08-07', 'Pending'),
(308, 102, '2026-08-08', 'Delivered');


# order details-12:

create table order_details(
order_details_id int primary key,
order_id  int ,
product_id  int ,
quantity int check (quantity >0 ),
foreign key (order_id) references orders(order_id),
foreign key (product_id) references products(product_id)

);

INSERT INTO order_details (order_details_id, order_id, product_id, quantity)
VALUES
(401, 301, 201, 1),
(402, 301, 205, 2),
(403, 302, 203, 1),
(404, 302, 206, 2),
(405, 303, 204, 1),
(406, 304, 202, 1),
(407, 304, 208, 2),
(408, 305, 207, 1),
(409, 306, 201, 1),
(410, 307, 203, 2),
(411, 308, 205, 1),
(412, 308, 206, 3);

# Question releted to table-----

#1. customers table se un customers ka name, email aur city nikalo jo Lucknow mein rehte hain.
select name, email, city 
from customers
where city = 'lucknow';

#2.Aise products find karo jinki price 10,000 se zyada hai aur stock 10 se zyada hai.
select *
from products 
where price >10000 and stock >10;

#3 Aise customers find karo jinke name ka first letter R hai.
select *
from customers 
where name like 'r%';

#4 Har city mein kitne customers hain, ye find karo.
select city ,
count(*)
from customers
group by city;



#5 Sirf un cities ko show karo jahan 2 ya usse zyada customers hain.
select city ,
count(*)
from customers
group by city
having count(*) >= 2;


#6 Customer ka name, order_id, order_date aur status show karo.
select 
    customers.name,
    orders.order_id,
    orders.order_date,
    orders.status
from customers
inner join orders
on customers.customer_id = orders.customer_id;


#7 Customer ka name, product name aur quantity show karo.
SELECT 
    customers.name,
    products.product_name,
    order_details.quantity
FROM customers
INNER JOIN orders
    ON customers.customer_id = orders.customer_id
INNER JOIN order_details
    ON orders.order_id = order_details.order_id
INNER JOIN products
    ON order_details.product_id = products.product_id;


#8 Sabhi customers show karo, including those who have no order.
select
    customers.name,
    orders.order_id
from customers
left join orders
on customers.customer_id = orders.customer_id;



#9 Har customer ne kitne orders kiye hain, find karo.
select
    customers.name,
    COUNT(orders.order_id) AS total_orders
from customers
left join orders
    on customers.customer_id = orders.customer_id
group by customers.customer_id, customers.name;


#10 Sabse expensive product find karo.
select *
 from products 
 order by price desc
 limit 1;





