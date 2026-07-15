# 📅 Day 02 - CREATE DATABASE & CREATE TABLE Practice

## 🎯 Objective

The objective of today's practice was to understand how to:

- Create a new database
- Select a database using `USE`
- Create multiple tables
- Work with different MySQL data types
- Improve SQL syntax writing speed
- Practice real-world database table creation

---

# 📚 Topics Covered

- CREATE DATABASE
- USE DATABASE
- CREATE TABLE
- SQL Naming Conventions
- Data Types
- ENUM
- DATE
- TIME
- DECIMAL
- BOOLEAN
- BIGINT
- TEXT
- VARCHAR
- INT
- SMALLINT

---

# 🛠 Commands Learned

## Create Database

```sql
CREATE DATABASE day1_db;
```

Creates a new database.

---

## Select Database

```sql
USE day1_db;
```

Makes `day1_db` the active database.

---

## Create Table

```sql
CREATE TABLE Hospital(
    HospitalID INT,
    HospitalName VARCHAR(50),
    City VARCHAR(20),
    TotalBed INT
);
```

Creates a new table inside the selected database.

---

# 🗂 Tables Created

| No. | Table Name |
|-----|------------|
| 1 | Hospital |
| 2 | Doctor |
| 3 | Patients |
| 4 | Movies |
| 5 | Libraries |
| 6 | Vehicles |
| 7 | Airlines |
| 8 | Flights |
| 9 | School |
| 10 | Exams |
| 11 | Departments |
| 12 | Sellers |
| 13 | tbl_Invoices |
| 14 | tbl_Trainers |
| 15 | tbl_Projects |
| 16 | tbl_Restaurants |
| 17 | tbl_Orders |
| 18 | tbl_BankAccounts |
| 19 | tbl_MobilePhones |
| 20 | tbl_Events |

---

# 📖 Data Types Used

| Data Type | Purpose |
|------------|---------|
| INT | Stores integer values |
| SMALLINT | Stores small integer values |
| BIGINT | Stores very large numbers |
| VARCHAR(n) | Stores variable-length text |
| TEXT | Stores long text |
| DATE | Stores dates |
| TIME | Stores time values |
| DECIMAL(p,s) | Stores precise decimal numbers |
| ENUM | Restricts values to predefined options |
| BOOLEAN | Stores TRUE/FALSE values |

---

# 💡 Key Learnings

- A database must be created before creating tables.
- `USE` selects the database in which tables will be created.
- Each table should have a meaningful name.
- Different columns require different data types based on the information being stored.
- SQL keywords are generally written in uppercase for better readability.
- Table and column names should follow a consistent naming convention.

---

# ⚠ Improvements for Future Practice

During today's practice, the focus was on learning SQL syntax. In future exercises, the following improvements will be made:

- Add `PRIMARY KEY` to every table.
- Apply `NOT NULL` where required.
- Use `AUTO_INCREMENT` for ID columns.
- Add `UNIQUE` constraints where appropriate.
- Use `FOREIGN KEY` relationships.
- Follow consistent naming conventions.


---

# 📌 Practice Summary

- ✅ Created 1 Database
- ✅ Created 20 Tables
- ✅ Practiced multiple SQL data types
- ✅ Improved SQL syntax writing
- ✅ Learned real-world table design basics

---

# 🚀 Next Topic

Day 03

- Constraints
  - PRIMARY KEY
  - NOT NULL
  - UNIQUE
  - DEFAULT
  - CHECK
  - AUTO_INCREMENT

After learning constraints, all tables will be redesigned using proper database design principles.

---

**Status:** ✅ Completed

# Author 
        Asmit Singh.