# Day 9 - MySQL JOIN Practice, Aggregate Functions & Foreign Key (ON DELETE / ON UPDATE)

## Topics Covered

- INNER JOIN
- LEFT JOIN
- RIGHT JOIN
- Filtering with JOIN
- Aggregate Functions with JOIN
- GROUP BY
- HAVING
- Sorting using ORDER BY
- Advanced JOIN Queries
- Foreign Key
- ON DELETE CASCADE
- ON UPDATE CASCADE

---

# Database

```sql
CREATE DATABASE day9_db;
USE day9_db;
```

---

# Tables

## Customers

| Column | Data Type |
|---------|-----------|
| CustomerID | INT (PK) |
| CustomerName | VARCHAR(50) |
| City | VARCHAR(30) |
| Phone | VARCHAR(15) |

---

## Orders

| Column | Data Type |
|---------|-----------|
| OrderID | INT (PK) |
| CustomerID | INT (FK) |
| ProductName | VARCHAR(50) |
| Quantity | INT |
| Price | DECIMAL(10,2) |
| OrderDate | DATE |

Foreign Key

```sql
FOREIGN KEY(CustomerID)
REFERENCES Customers(CustomerID)
ON DELETE CASCADE
ON UPDATE CASCADE;
```

---

# JOIN Revision

## INNER JOIN

Returns only matching records from both tables.

```sql
SELECT *
FROM Customers
INNER JOIN Orders
ON Customers.CustomerID = Orders.CustomerID;
```

---

## LEFT JOIN

Returns all customers.

If no order exists then order columns become NULL.

```sql
SELECT *
FROM Customers
LEFT JOIN Orders
ON Customers.CustomerID = Orders.CustomerID;
```

---

## RIGHT JOIN

Returns all orders.

If customer is missing then customer columns become NULL.

```sql
SELECT *
FROM Customers
RIGHT JOIN Orders
ON Customers.CustomerID = Orders.CustomerID;
```

---

# Filtering with JOIN

Example

```sql
SELECT *
FROM Customers
INNER JOIN Orders
ON Customers.CustomerID=Orders.CustomerID
WHERE City='Lucknow';
```

---

# Aggregate Functions

## COUNT()

```sql
SELECT CustomerName,
COUNT(OrderID)
FROM Customers
INNER JOIN Orders
ON Customers.CustomerID=Orders.CustomerID
GROUP BY CustomerName;
```

---

## SUM()

```sql
SELECT CustomerName,
SUM(Price)
FROM Customers
INNER JOIN Orders
ON Customers.CustomerID=Orders.CustomerID
GROUP BY CustomerName;
```

---

## AVG()

```sql
SELECT CustomerName,
AVG(Price)
FROM Customers
INNER JOIN Orders
ON Customers.CustomerID=Orders.CustomerID
GROUP BY CustomerName;
```

---

## MAX()

Highest priced product purchased by each customer.

```sql
SELECT CustomerName,
MAX(Price) AS HighestPrice
FROM Customers
INNER JOIN Orders
ON Customers.CustomerID=Orders.CustomerID
GROUP BY CustomerName;
```

### If you also want Product Name

```sql
SELECT
CustomerName,
ProductName,
Price
FROM Customers
INNER JOIN Orders
ON Customers.CustomerID=Orders.CustomerID
WHERE (Customers.CustomerID, Price) IN
(
SELECT CustomerID,
MAX(Price)
FROM Orders
GROUP BY CustomerID
);
```

---

# GROUP BY

Groups rows having the same value.

```sql
GROUP BY CustomerName;
```

---

# HAVING

Used to filter grouped data.

```sql
SELECT CustomerName,
COUNT(OrderID)
FROM Customers
INNER JOIN Orders
ON Customers.CustomerID=Orders.CustomerID
GROUP BY CustomerName
HAVING COUNT(OrderID)>1;
```

---

# ORDER BY

Ascending

```sql
ORDER BY Price ASC;
```

Descending

```sql
ORDER BY Price DESC;
```

---

# DISTINCT

Counts unique products.

```sql
COUNT(DISTINCT ProductName)
```

---

# BETWEEN

```sql
WHERE OrderDate
BETWEEN '2026-07-02'
AND '2026-07-06';
```

---

# LIMIT

Returns limited rows.

```sql
LIMIT 1;
```

---

# Foreign Key

A Foreign Key connects two tables.

Example

```text
Customers(CustomerID)
        |
        |
        ↓
Orders(CustomerID)
```

---

# ON UPDATE CASCADE

Parent table changes automatically update child table.

Example

```sql
UPDATE Customers
SET CustomerID=201
WHERE CustomerID=101;
```

Orders table CustomerID also becomes **201** automatically.

---

# ON DELETE CASCADE

Deleting parent record automatically deletes related child records.

Example

```sql
DELETE FROM Customers
WHERE CustomerID=103;
```

All orders of CustomerID **103** are deleted automatically.

---

# Important SQL Functions Learned

- COUNT()
- SUM()
- AVG()
- MAX()
- DISTINCT
- GROUP BY
- HAVING
- ORDER BY
- LIMIT
- BETWEEN

---

# Most Important Queries

### Customers with no orders

```sql
SELECT *
FROM Customers
LEFT JOIN Orders
ON Customers.CustomerID=Orders.CustomerID
WHERE Orders.OrderID IS NULL;
```

---

### Customer who spent more than ₹10000

```sql
SELECT CustomerName,
SUM(Price) AS TotalSpent
FROM Customers
INNER JOIN Orders
ON Customers.CustomerID=Orders.CustomerID
GROUP BY CustomerName
HAVING SUM(Price)>10000;
```

---

### Customer with maximum orders

```sql
SELECT CustomerName,
COUNT(OrderID) AS TotalOrders
FROM Customers
INNER JOIN Orders
ON Customers.CustomerID=Orders.CustomerID
GROUP BY CustomerName
ORDER BY TotalOrders DESC
LIMIT 1;
```

---

### Most expensive product purchased

```sql
SELECT CustomerName,
ProductName,
Price
FROM Customers
INNER JOIN Orders
ON Customers.CustomerID=Orders.CustomerID
ORDER BY Price DESC
LIMIT 1;
```

---

### City having highest sales

```sql
SELECT City,
SUM(Price) AS TotalSales
FROM Customers
INNER JOIN Orders
ON Customers.CustomerID=Orders.CustomerID
GROUP BY City
ORDER BY TotalSales DESC
LIMIT 1;
```

---

# Concepts Learned Today

✅ INNER JOIN

✅ LEFT JOIN

✅ RIGHT JOIN

✅ WHERE with JOIN

✅ Aggregate Functions

✅ COUNT()

✅ SUM()

✅ AVG()

✅ MAX()

✅ GROUP BY

✅ HAVING

✅ ORDER BY

✅ LIMIT

✅ DISTINCT

✅ BETWEEN

✅ Foreign Key

✅ ON DELETE CASCADE

✅ ON UPDATE CASCADE

---

# Interview Questions

### Q1 What is JOIN?

Used to combine records from two or more tables.

---

### Q2 Difference between INNER JOIN and LEFT JOIN?

INNER JOIN returns only matching rows.

LEFT JOIN returns all rows from the left table and matching rows from the right table.

---

### Q3 Why do we use GROUP BY?

To group similar records before applying aggregate functions.

---

### Q4 Difference between WHERE and HAVING?

WHERE filters rows before grouping.

HAVING filters groups after GROUP BY.

---

### Q5 What is ON DELETE CASCADE?

Automatically deletes child records when the parent record is deleted.

---

### Q6 What is ON UPDATE CASCADE?

Automatically updates child foreign key values when the parent key changes.

---

# Day 9 Summary

Today you practiced:

- Database creation
- Parent & Child tables
- Foreign Keys
- INNER JOIN
- LEFT JOIN
- RIGHT JOIN
- Aggregate Functions
- GROUP BY
- HAVING
- ORDER BY
- LIMIT
- DISTINCT
- Advanced JOIN queries
- ON DELETE CASCADE
- ON UPDATE CASCADE


# Author 
Asmit Singh