# Day 10 - MySQL Transactions (COMMIT & ROLLBACK)

## 📅 Date
01 August 2026

---

# Objective

Today I learned how transactions work in MySQL and how to use **START TRANSACTION**, **COMMIT**, and **ROLLBACK** to maintain data consistency while transferring money between accounts.

---

# Topics Covered

- Creating Database
- Creating Tables
- Inserting Records
- START TRANSACTION
- COMMIT
- ROLLBACK
- Money Transfer Example
- ACID Concept (Basic Understanding)

---

# Database Creation

```sql
CREATE DATABASE day10_db;
USE day10_db;
```

---

# Account Table

```sql
CREATE TABLE Account(
    AccountId INT PRIMARY KEY,
    Name VARCHAR(50),
    Balance DECIMAL(10,2)
);
```

---

# Insert Records

```sql
INSERT INTO Account VALUES
(101,'Asmit',100000),
(105,'Ravan',100000),
(106,'Alexgendar',100000),
(107,'Shom',100000),
(103,'Mohan',100000);
```

---

# Transaction Example

Transferred ₹10,000 from Account 101 to Account 107.

```sql
START TRANSACTION;

UPDATE Account
SET Balance = Balance - 10000
WHERE AccountId = 101;

UPDATE Account
SET Balance = Balance + 10000
WHERE AccountId = 107;

COMMIT;
```

### Result

- Account 101 Balance decreased by ₹10,000.
- Account 107 Balance increased by ₹10,000.
- Changes became permanent after COMMIT.

---

# COMMIT

### Definition

COMMIT permanently saves all changes made during the current transaction.

Example:

```sql
COMMIT;
```

Once COMMIT is executed, changes cannot be undone using ROLLBACK.

---

# ROLLBACK

### Definition

ROLLBACK cancels all changes made after START TRANSACTION if they have not been committed.

Example:

```sql
START TRANSACTION;

UPDATE Accounts
SET Balance = Balance - 3000
WHERE AccountID = 2;

UPDATE Accounts
SET Balance = Balance + 3000
WHERE AccountID = 1;

ROLLBACK;
```

### Result

- Database returns to its previous state.
- No changes are saved.

---

# COMMIT Example

```sql
START TRANSACTION;

UPDATE Accounts
SET Balance = Balance - 3000
WHERE AccountID = 2;

UPDATE Accounts
SET Balance = Balance + 3000
WHERE AccountID = 1;

COMMIT;
```

### Result

The balance update becomes permanent.

---

# Difference Between COMMIT and ROLLBACK

| COMMIT | ROLLBACK |
|---------|----------|
| Saves changes permanently | Cancels changes |
| Cannot be undone | Restores previous data |
| Used after successful transaction | Used when an error occurs |

---

# Key Commands

```sql
START TRANSACTION;
```

Starts a new transaction.

```sql
COMMIT;
```

Permanently saves changes.

```sql
ROLLBACK;
```

Undoes all uncommitted changes.

---

# Real-Life Example

Imagine transferring money from one bank account to another.

1. Deduct money from Sender.
2. Add money to Receiver.
3. If both operations succeed → COMMIT.
4. If any operation fails → ROLLBACK.

This ensures that money is never lost or duplicated.

---

# What I Learned

- How to start a transaction.
- Difference between COMMIT and ROLLBACK.
- How to perform money transfer safely.
- Why transactions are important in banking systems.
- Basic understanding of data consistency.

---

# Conclusion

Transactions help maintain data integrity by executing multiple SQL statements as a single unit of work. COMMIT permanently saves successful changes, while ROLLBACK restores the previous state if an error occurs.



# Author 

        Asmit Singh