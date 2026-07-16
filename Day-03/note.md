# 📘 MySQL Day 03
 - DDL + DML + WHERE Clause Practice

## 📅 Day 03 Topics

- CREATE DATABASE
- USE DATABASE
- CREATE TABLE
- ALTER TABLE
- INSERT INTO
- SELECT
- WHERE Clause
- Comparison Operators
- Logical Operators
- BETWEEN
- IN / NOT IN
- DATE Filtering
- DELETE

---

# 📚 Database

```sql
CREATE DATABASE day2_db;
USE day2_db;
```

---

# Question 1 - Student Table

## Table

```sql
tbl_student_details
```

### Columns

| Column | Data Type |
|----------|------------|
| studentId | INT |
| studentName | VARCHAR(50) |
| studentAge | SMALLINT |
| grade | VARCHAR(20) |

### Operations Performed

- Created Student Table
- Inserted Student Records
- Used ALTER TABLE
- Displayed Structure using DESC

### Queries Practiced

- Display Student ID
- Display Student Name
- Display ID & Name
- Students Age < 16
- Students in 11th Grade
- Display only Ages
- Display only Names

---

# Question 2 - Book Table

## Table

```sql
tbl_book
```

### Columns

- BookId
- Title
- Author
- Price

### Queries Practiced

- Books having price = 350
- Books between 280 and 350
- Books having prices 299 and 400
- Books except price 280 and 350

### SQL Concepts

- WHERE
- BETWEEN
- NOT IN
- OR

---

# Question 3 - Employee Table

## Table

```sql
tbl_employee
```

### Columns

- EmpId
- Name
- Department
- Salary

### Queries Practiced

- Salary > 40000
- Salary <= 45000
- Salary BETWEEN 30000 AND 45000
- Employees in Sales & HR
- Employees NOT in IT

### SQL Concepts

- >
- <=
- BETWEEN
- OR
- !=

---

# Question 4 - Orders Table

## Table

```sql
tbl_order
```

### Columns

- OrderID
- CustomerName
- OrderDate

### Queries Practiced

- Orders after 2024-02-01
- Orders before 2024-03-01
- Orders between two dates
- Orders by Ankit and Sneha
- Orders not placed by Priya and Rohan

### SQL Concepts

- Date Comparison
- BETWEEN
- AND
- OR

---

# Question 5 - Product Table

## Table

```sql
tbl_product
```

### Columns

- ProductId
- ProductName
- Category
- Price

### Queries Practiced

- Price > 500
- Price <= 1200
- Price BETWEEN 100 and 2000
- Electronics and Furniture Products

### SQL Concepts

- Comparison Operators
- BETWEEN
- OR

---

# Question 6 - Marks Table

## Table

```sql
tbl_marks
```

### Columns

- MarkID (AUTO_INCREMENT)
- StudentID
- Subject
- Marks

### Queries Practiced

- Students scoring more than 85
- Delete English Subject Record

### SQL Concepts

- DELETE
- WHERE
- AUTO_INCREMENT

---

# SQL Operators Learned

## Comparison Operators

| Operator | Meaning |
|----------|----------|
| = | Equal |
| > | Greater Than |
| < | Less Than |
| >= | Greater Than Equal |
| <= | Less Than Equal |
| != | Not Equal |

---

## Logical Operators

| Operator | Purpose |
|----------|----------|
| AND | Both conditions true |
| OR | Any one condition true |
| NOT | Reverse condition |

---

## Special Operators

| Operator | Purpose |
|-----------|----------|
| BETWEEN | Range Search |
| IN | Match Multiple Values |
| NOT IN | Exclude Multiple Values |

---

# Important Commands Learned

```sql
CREATE DATABASE
USE
CREATE TABLE
ALTER TABLE
DESC
INSERT INTO
SELECT
WHERE
DELETE
```

---

# Concepts Covered

✅ Database Creation

✅ Table Creation

✅ Primary Key

✅ Auto Increment

✅ Data Types

✅ Insert Records

✅ Select Records

✅ Filtering Data

✅ Date Filtering

✅ Comparison Operators

✅ Logical Operators

✅ BETWEEN

✅ IN

✅ NOT IN

✅ DELETE Query

---

# Mini Project Tables Created

- Student
- Book
- Employee
- Orders
- Product
- Marks

---

# Day 02 Summary

Today I practiced SQL DDL and DML operations by creating multiple real-world tables and performing filtering using the WHERE clause.

I learned how to use:

- Comparison Operators
- Logical Operators
- BETWEEN
- IN
- NOT IN
- Date Filtering
- DELETE Statement

This practice strengthened my understanding of SQL querying and data manipulation.

---

## 🚀 Next Topics

- UPDATE
- ORDER BY
- LIMIT
- DISTINCT
- LIKE
- IS NULL
- IS NOT NULL

## Author
    Asmit Singh