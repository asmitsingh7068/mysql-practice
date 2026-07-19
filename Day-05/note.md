# 📅 Day 05 - MySQL DML & DDL Practice

## 📌 Topics Covered
- UPDATE
- DELETE
- ALTER TABLE
- TRUNCATE TABLE
- SQL_SAFE_UPDATES

---

## 📚 Assignment Overview

This assignment contains practice on five different database tables:

1. Students
2. Books
3. Employees
4. Orders
5. Products

Each table includes practice of common SQL operations.

---

## ✅ Operations Performed

### 1. UPDATE
- Updated existing records using the `UPDATE` statement.
- Modified values such as:
  - Student grade
  - Employee salary
  - Product price
  - Customer name
  - Department

Example:

```sql
UPDATE students
SET grade = '11th'
WHERE id = 1;
```

---

### 2. DELETE

Deleted specific records using the `DELETE` statement.

Example:

```sql
DELETE FROM books
WHERE book_id = 4;
```

---

### 3. ALTER TABLE

Added new columns to existing tables.

Examples:

- City
- Publisher
- Email
- Status
- Stock

Example:

```sql
ALTER TABLE employees
ADD COLUMN email VARCHAR(100);
```

---

### 4. TRUNCATE TABLE

Removed all records from a table while keeping its structure.

Example:

```sql
TRUNCATE TABLE products;
```

---

### 5. SQL Safe Update Mode

Learned about MySQL Workbench Safe Update Mode.

When updating or deleting records using non-key columns, MySQL may show:

```
Error Code: 1175
```

Temporary solution:

```sql
SET SQL_SAFE_UPDATES = 0;
```

---

## 📖 Tables Used

### Students
- id
- name
- age
- grade

### Books
- book_id
- title
- author
- price

### Employees
- emp_id
- name
- department
- salary

### Orders
- order_id
- customer_name
- order_date

### Products
- product_id
- product_name
- category
- price

---

## 📚 Concepts Learned

- Difference between UPDATE and DELETE
- Importance of WHERE clause
- Primary Key usage
- ALTER TABLE
- TRUNCATE TABLE
- SQL Safe Update Mode
- DML Commands
- DDL Commands

---

## 🛠 Technologies

- MySQL 8.x
- MySQL Workbench

---

## 📁 Folder Structure

```
Day-05/
│
├── Day-05.sql
└── README.md
```

---

## 🎯 Learning Outcome

After completing this assignment, I can:

- Update existing records
- Delete records safely
- Add new columns to tables
- Remove all table data using TRUNCATE
- Understand SQL Safe Update Mode
- Work confidently with basic DML and DDL statements

---

## 👨‍💻 Author

**Asmit Singh**