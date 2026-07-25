# 📘 Day-08 MySQL Practice (Part-2)
## Topic: Aggregate Functions, Sorting, Advanced JOIN & Foreign Key Cascade

---

# 📌 Database
```sql
CREATE DATABASE day_8db2;
USE day_8db2;
```

---

# 📌 Tables

## 1. City Table

Stores city information.

| Column | Data Type | Description |
|---------|-----------|-------------|
| CityID | INT | Primary Key |
| CityName | VARCHAR(50) | City Name |
| PinCode | VARCHAR(10) | Pin Code |
| StateName | VARCHAR(50) | State Name |
| CountryName | VARCHAR(50) | Country Name |

---

## 2. Customer Table

Stores customer details.

| Column | Data Type | Description |
|---------|-----------|-------------|
| CustomerID | INT | Primary Key |
| CustomerName | VARCHAR(50) | Customer Name |
| Gender | VARCHAR(10) | Gender |
| Age | INT | Age |
| Phone | VARCHAR(15) | Phone Number |
| Email | VARCHAR(100) | Email |
| CityID | INT | Foreign Key |

### Foreign Key

```sql
FOREIGN KEY (CityID)
REFERENCES City(CityID)
ON DELETE CASCADE
ON UPDATE CASCADE;
```

---

# 📌 Aggregate Functions with JOIN

## 1. Count customers in each city

```sql
SELECT CityName,
COUNT(Customer.CustomerID)
FROM City
LEFT JOIN Customer
ON City.CityID = Customer.CityID
GROUP BY City.CityID, CityName;
```

### Learned

- COUNT()
- LEFT JOIN
- GROUP BY

---

## 2. Count customers in each state

```sql
SELECT StateName,
COUNT(Customer.CustomerID)
FROM City
LEFT JOIN Customer
ON City.CityID = Customer.CityID
GROUP BY StateName;
```

### Learned

- GROUP BY State
- COUNT()

---

## 3. Average age of customers in each city

```sql
SELECT CityName,
AVG(Customer.Age)
FROM City
LEFT JOIN Customer
ON City.CityID = Customer.CityID
GROUP BY CityName;
```

### Learned

- AVG()

---

## 4. Maximum age of customers in each city

```sql
SELECT CityName,
MAX(Customer.Age)
FROM City
LEFT JOIN Customer
ON City.CityID = Customer.CityID
GROUP BY CityName;
```

### Learned

- MAX()

---

## 5. Cities having more than one customer

```sql
SELECT CityName,
COUNT(Customer.CustomerID)
FROM City
LEFT JOIN Customer
ON City.CityID = Customer.CityID
GROUP BY CityName
HAVING COUNT(Customer.CustomerID) > 1;
```

### Learned

- HAVING
- COUNT()

---

# 📌 Sorting

## 1. Customers sorted by name

```sql
SELECT CustomerName
FROM Customer
ORDER BY CustomerName ASC;
```

---

## 2. Cities sorted by State Name

> **Your query works, but there is a small mistake.**

You wrote:

```sql
ORDER BY CityName DESC;
```

Question says:

**Sort by StateName**

Correct Query

```sql
SELECT StateName, CityName
FROM City
ORDER BY StateName ASC;
```

---

## 3. Customers sorted by age

```sql
SELECT *
FROM Customer
ORDER BY Age DESC;
```

---

## 4. Cities sorted alphabetically

```sql
SELECT *
FROM City
ORDER BY CityName ASC;
```

---

# 📌 Advanced JOIN Practice

## 1. City having highest customers

```sql
SELECT CityName,
COUNT(Customer.CustomerID)
FROM City
LEFT JOIN Customer
ON City.CityID = Customer.CityID
GROUP BY City.CityID, CityName
ORDER BY COUNT(Customer.CustomerID) DESC
LIMIT 1;
```

### Learned

- ORDER BY COUNT()
- LIMIT

---

## 2. State having maximum customers

```sql
SELECT StateName,
COUNT(Customer.CustomerID) AS TotalCustomers
FROM City
LEFT JOIN Customer
ON City.CityID = Customer.CityID
GROUP BY StateName
ORDER BY TotalCustomers DESC
LIMIT 1;
```

---

## 3. Display customers with their city

```sql
SELECT Customer.CustomerName,
City.CityName
FROM City
LEFT JOIN Customer
ON City.CityID = Customer.CityID;
```

---

## 4. Cities having more than two customers

```sql
SELECT City.CityName,
COUNT(Customer.CustomerID)
FROM City
LEFT JOIN Customer
ON City.CityID = Customer.CityID
GROUP BY City.CityID, City.CityName
HAVING COUNT(Customer.CustomerID) > 2;
```

### Note

Do not write

```sql
HAVING COUNT(City.CityID)
```

Always count customer IDs.

---

## 5. Youngest customer from each city

Your query only returns the minimum age.

```sql
SELECT City.CityName,
MIN(Customer.Age)
FROM City
LEFT JOIN Customer
ON City.CityID = Customer.CityID
GROUP BY City.CityID, City.CityName;
```

If the question asks for **customer name also**, use a subquery or window function.

---

## 6. Oldest customer from each city

```sql
SELECT City.CityName,
MAX(Customer.Age)
FROM City
LEFT JOIN Customer
ON City.CityID = Customer.CityID
GROUP BY City.CityID, City.CityName;
```

---

# 📌 Foreign Key Practice

## ON UPDATE CASCADE

Update

```sql
UPDATE City
SET CityID = 10
WHERE CityID = 1;
```

### Result

Customer table automatically changes

```
1 → 10
```

No manual update required.

---

## ON DELETE CASCADE

Delete

```sql
DELETE FROM City
WHERE CityID = 4;
```

### Result

City deleted

↓

All customers whose CityID = 4 are automatically deleted.

---

## Insert New City

```sql
INSERT INTO City
VALUES
(7,'Pune','411001','Maharashtra','India');
```

---

## Insert New Customers

```sql
INSERT INTO Customer
VALUES
(108,'Arjun Patel','Male',26,'9876543217','arjun@gmail.com',7),

(109,'Sneha Joshi','Female',24,'9876543218','sneha@gmail.com',7);
```

---

## Display Updated Records

```sql
SELECT * FROM City;

SELECT * FROM Customer;
```

---

# 📌 Important SQL Concepts Covered

- Database Creation
- Table Creation
- Primary Key
- Foreign Key
- ON UPDATE CASCADE
- ON DELETE CASCADE
- INSERT
- UPDATE
- DELETE
- SELECT
- LEFT JOIN
- COUNT()
- AVG()
- MAX()
- MIN()
- GROUP BY
- HAVING
- ORDER BY
- LIMIT
- Aggregate Functions
- Sorting
- Advanced JOIN
- Foreign Key Constraints

---

# 📌 Mistakes to Remember

### ❌ Mistake 1

```sql
ORDER BY CityName
```

Question asked to sort by StateName.

✔ Correct

```sql
ORDER BY StateName;
```

---

### ❌ Mistake 2

```sql
HAVING COUNT(City.CityID)
```

✔ Correct

```sql
HAVING COUNT(Customer.CustomerID)
```

---

### ❌ Mistake 3

For "Youngest Customer"

Using

```sql
MIN(Age)
```

returns only the minimum age, **not the customer's name**.

---

# 🎯 Day-08 Learning Summary

By completing this practice, you learned:

- Designing Parent-Child tables
- Working with Foreign Keys
- Understanding ON DELETE CASCADE
- Understanding ON UPDATE CASCADE
- Writing Aggregate Queries
- Using GROUP BY and HAVING
- Sorting data with ORDER BY
- Applying LEFT JOIN
- Finding highest/lowest values
- Working with LIMIT
- Performing real-world SQL reporting queries