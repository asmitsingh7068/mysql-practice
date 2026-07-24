# Day 8 - MySQL JOIN Notes

## Database
```sql
USE day8_db;
```

---

# What is JOIN?

A JOIN is used to combine rows from two or more tables based on a related column.

In our database:

Customers
```
CustomerID (PK)
CustomerName
City
Phone
```

Orders
```
OrderID (PK)
CustomerID (FK)
ProductName
Quantity
Price
OrderDate
```

Relation

```
Customers
+------------+
| CustomerID |------------------+
+------------+                  |
                                |
                                |
                                V
Orders
+------------+
| CustomerID |
+------------+
```

---

# Types of JOIN

```
JOIN
│
├── INNER JOIN
├── LEFT JOIN
├── RIGHT JOIN
└── FULL OUTER JOIN
(MySQL doesn't support directly)
```

---

# 1. INNER JOIN

## Definition

Returns only matching records from both tables.

```
Customers          Orders

101 Rahul     <-----> Laptop
102 Priya     <-----> Keyboard
103 Amit      <-----> Monitor

104 Neha      ❌

106 Anjali    ❌
```

Only matched rows are returned.

---

## Syntax

```sql
SELECT *
FROM Customers
INNER JOIN Orders
ON Customers.CustomerID = Orders.CustomerID;
```

---

## Example 1

Customer Name + Product Name

```sql
SELECT Customers.CustomerName,
Orders.ProductName
FROM Customers
INNER JOIN Orders
ON Customers.CustomerID = Orders.CustomerID;
```

---

## Example 2

Customer Name + City + Order Date

```sql
SELECT Customers.CustomerName,
Customers.City,
Orders.OrderDate
FROM Customers
INNER JOIN Orders
ON Customers.CustomerID = Orders.CustomerID;
```

---

## Example 3

Customer Name + Product + Price

```sql
SELECT Customers.CustomerName,
Orders.ProductName,
Orders.Price
FROM Customers
INNER JOIN Orders
ON Customers.CustomerID=Orders.CustomerID;
```

---

## Example 4

Phone Number + Product Name

```sql
SELECT Customers.Phone,
Orders.ProductName
FROM Customers
INNER JOIN Orders
ON Customers.CustomerID=Orders.CustomerID;
```

---

## Example 5

Customers who placed orders

```sql
SELECT DISTINCT Customers.*
FROM Customers
INNER JOIN Orders
ON Customers.CustomerID=Orders.CustomerID;
```

Why DISTINCT?

Rahul has two orders.

Without DISTINCT

```
Rahul
Rahul
Priya
Amit
Amit
```

With DISTINCT

```
Rahul
Priya
Amit
Rohan
```

---

# Important

These two queries produce the same result.

```sql
FROM Customers
INNER JOIN Orders
```

and

```sql
FROM Orders
INNER JOIN Customers
```

Reason:

INNER JOIN returns only matching records.

The order of writing tables doesn't affect the output (except column order when using `SELECT *`).

---

# JOIN vs INNER JOIN

```sql
JOIN
```

is exactly same as

```sql
INNER JOIN
```

Because JOIN means INNER JOIN by default.

---

# 2. LEFT JOIN

## Definition

Returns

- ALL rows from LEFT table
- Matching rows from RIGHT table

If no match exists

NULL is returned.

Diagram

```
Customers          Orders

Rahul        -> Laptop
Priya        -> Keyboard
Amit         -> Monitor
Neha         -> NULL
Anjali       -> NULL
```

---

## Syntax

```sql
SELECT *
FROM Customers
LEFT JOIN Orders
ON Customers.CustomerID=Orders.CustomerID;
```

---

## Example 1

Display customers with orders.

```sql
SELECT Customers.CustomerName,
Orders.ProductName,
Orders.OrderDate
FROM Customers
LEFT JOIN Orders
ON Customers.CustomerID=Orders.CustomerID;
```

---

## Example 2

Customers who have NOT placed any order.

```sql
SELECT Customers.*
FROM Customers
LEFT JOIN Orders
ON Customers.CustomerID=Orders.CustomerID
WHERE Orders.CustomerID IS NULL;
```

Remember

Wrong

```sql
WHERE Orders.CustomerID = NULL;
```

Correct

```sql
WHERE Orders.CustomerID IS NULL;
```

---

## Example 3

Customer Name + Product

```sql
SELECT Customers.CustomerName,
Orders.ProductName
FROM Customers
LEFT JOIN Orders
ON Customers.CustomerID=Orders.CustomerID;
```

---

## Example 4

Display all customers.

```sql
SELECT Customers.*,
Orders.*
FROM Customers
LEFT JOIN Orders
ON Customers.CustomerID=Orders.CustomerID;
```

---

# 3. RIGHT JOIN

## Definition

Returns

- ALL rows from RIGHT table
- Matching rows from LEFT table

Diagram

```
Customers        Orders

Rahul      <- Laptop
Rahul      <- Mouse
Priya      <- Keyboard
Amit       <- Monitor
Amit       <- Printer
Rohan      <- Headphone
```

If customer information doesn't exist

Customer columns become NULL.

---

## Example 1

All orders with customer details.

```sql
SELECT Customers.*,
Orders.*
FROM Customers
RIGHT JOIN Orders
ON Customers.CustomerID=Orders.CustomerID;
```

---

## Example 2

Display every order even if customer information is missing.

```sql
SELECT Customers.CustomerName,
Orders.ProductName
FROM Customers
RIGHT JOIN Orders
ON Customers.CustomerID=Orders.CustomerID;
```

---

# Filtering with JOIN

JOIN can be combined with

- WHERE
- ORDER BY
- GROUP BY
- HAVING

---

## Example 1

Orders from Lucknow customers

```sql
SELECT Customers.CustomerName,
Orders.ProductName,
Customers.City
FROM Customers
INNER JOIN Orders
ON Customers.CustomerID=Orders.CustomerID
WHERE Customers.City='Lucknow';
```

---

## Example 2

Customers who purchased Laptop

```sql
SELECT Customers.CustomerName,
Orders.ProductName
FROM Customers
INNER JOIN Orders
ON Customers.CustomerID=Orders.CustomerID
WHERE Orders.ProductName='Laptop';
```

---

## Example 3

Products costing more than 5000

```sql
SELECT Customers.CustomerName,
Orders.ProductName,
Orders.Price
FROM Customers
INNER JOIN Orders
ON Customers.CustomerID=Orders.CustomerID
WHERE Orders.Price>5000;
```

---

## Example 4

Customers starting with R

```sql
SELECT Customers.CustomerName,
Orders.ProductName
FROM Customers
INNER JOIN Orders
ON Customers.CustomerID=Orders.CustomerID
WHERE Customers.CustomerName LIKE 'R%';
```

---

## Example 5

Orders between two dates

```sql
SELECT Customers.CustomerName,
Orders.ProductName,
Orders.OrderDate
FROM Customers
INNER JOIN Orders
ON Customers.CustomerID=Orders.CustomerID
WHERE Orders.OrderDate
BETWEEN '2026-07-02' AND '2026-07-06';
```

---

# JOIN Summary

| JOIN | Returns |
|------|----------|
| INNER JOIN | Only matching records |
| LEFT JOIN | All left + matching right |
| RIGHT JOIN | All right + matching left |
| FULL JOIN | All records from both tables (Not directly supported in MySQL) |

---

# Important Points

✔ JOIN = INNER JOIN

✔ LEFT JOIN keeps every row of left table.

✔ RIGHT JOIN keeps every row of right table.

✔ INNER JOIN order doesn't matter.

✔ LEFT JOIN and RIGHT JOIN are NOT the same.

✔ Use DISTINCT to remove duplicate rows.

✔ NULL must always be checked using

```sql
IS NULL
```

or

```sql
IS NOT NULL
```

Never write

```sql
= NULL
```

---

# Quick Revision

```
INNER JOIN
Only Match

LEFT JOIN
All Left + Match

RIGHT JOIN
All Right + Match

JOIN
Means INNER JOIN

NULL Checking

IS NULL
IS NOT NULL

Duplicate

DISTINCT

Pattern Search

LIKE 'R%'

Range

BETWEEN

```

---

# Interview Questions

### Q1. Difference between JOIN and INNER JOIN?

Answer:
There is no difference.
JOIN is the default INNER JOIN.

---

### Q2. Why use DISTINCT after JOIN?

To remove duplicate rows caused by one-to-many relationships.

---

### Q3. Why use IS NULL instead of = NULL?

Because NULL represents an unknown value and cannot be compared using `=`. SQL provides `IS NULL` and `IS NOT NULL` for checking NULL values.

---

### Q4. Which J
OIN returns all records from the left table?

LEFT JOIN.

---

### Q5. Which JOIN returns only matching records?

INNER JOIN.

# Author 

    Asmit Singh