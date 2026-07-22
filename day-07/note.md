# Day 07 - MySQL Practice Notes

## Topics Covered

### 1. GROUP BY
- Used to group rows having the same values.
- Commonly used with aggregate functions.

### Aggregate Functions
- COUNT() → Counts rows.
- SUM() → Calculates total value.
- AVG() → Calculates average value.
- MIN() → Finds minimum value.
- MAX() → Finds maximum value.

### Example
```sql
SELECT department, COUNT(*)
FROM candidates
GROUP BY department;
```

---

### 2. HAVING Clause
- Used to filter grouped data.
- HAVING works after GROUP BY.
- WHERE filters rows before grouping.

### Example
```sql
SELECT department, AVG(fees)
FROM candidates
GROUP BY department
HAVING AVG(fees) < 1600;
```

---

### Difference Between WHERE and HAVING

| WHERE | HAVING |
|--------|---------|
| Filters rows | Filters groups |
| Executes before GROUP BY | Executes after GROUP BY |
| Cannot use aggregate functions directly | Can use aggregate functions |

Example:

```sql
SELECT department, COUNT(*)
FROM candidates
WHERE year = 2025
GROUP BY department
HAVING COUNT(*) > 2;
```

---

## Database Relationships

### Primary Key (PK)
- Uniquely identifies each record.
- Cannot contain NULL values.
- Duplicate values are not allowed.

Example:

```sql
CREATE TABLE Categories (
    CategoryID INT PRIMARY KEY,
    CategoryName VARCHAR(100)
);
```

---

### Foreign Key (FK)
- Creates a relationship between two tables.
- References the Primary Key of another table.
- Maintains referential integrity.

Example:

```sql
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    CategoryID INT,
    FOREIGN KEY (CategoryID)
    REFERENCES Categories(CategoryID)
);
```

---

## Tables Created

- Candidates
- Categories
- Products
- Customers
- Orders
- OrderItems
- ProductImages
- Reviews

---

## SQL Concepts Practiced

- Database Creation
- Table Creation
- Data Insertion
- GROUP BY
- HAVING
- COUNT()
- SUM()
- AVG()
- MIN()
- MAX()
- Primary Key
- Foreign Key
- Parent Table
- Child Table
- One-to-Many Relationship

---

## Key Learnings

- GROUP BY groups similar records.
- HAVING filters grouped results.
- Aggregate functions summarize data.
- Primary Key uniquely identifies records.
- Foreign Key connects related tables.
- Parent and Child tables maintain database relationships.
- Proper database design improves data consistency.

---

## Practice Completed

✔ GROUP BY Queries

✔ HAVING Queries

✔ Aggregate Functions

✔ Parent & Child Tables

✔ Primary Key

✔ Foreign Key

✔ Referential Integrity

---

**Author:** Asmit Singh

**Day:** 07

**Topic:** GROUP BY, HAVING, Aggregate Functions, Primary Key & Foreign Key