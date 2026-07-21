# 📘 Day 06 - MySQL Aggregate Functions & GROUP BY

## 📌 Objective

The goal of this practice was to learn how to summarize and analyze data using MySQL Aggregate Functions along with the `GROUP BY`, `HAVING`, and `LIMIT` clauses.

---

# 📚 Topics Covered

- DISTINCT
- COUNT()
- SUM()
- AVG()
- MIN()
- MAX()
- GROUP BY
- HAVING
- ORDER BY
- LIMIT
- WHERE with GROUP BY
- Multiple Column GROUP BY

---

# 🔹 Aggregate Functions

Aggregate functions perform calculations on multiple rows and return a single result.

| Function | Description |
|----------|-------------|
| COUNT() | Counts the number of rows |
| SUM() | Calculates the total value |
| AVG() | Calculates the average value |
| MIN() | Returns the minimum value |
| MAX() | Returns the maximum value |

---

# 🔹 GROUP BY

`GROUP BY` is used to group rows that have the same values into summary rows.

### Example

```sql
SELECT department,
       COUNT(*) AS total_employees
FROM Employee
GROUP BY department;
```

---

# 🔹 HAVING Clause

`HAVING` filters grouped records after the `GROUP BY` operation.

### Example

```sql
SELECT department,
       AVG(salary) AS average_salary
FROM Employee
GROUP BY department
HAVING AVG(salary) > 50000;
```

---

# 🔹 WHERE vs HAVING

| WHERE | HAVING |
|--------|---------|
| Filters rows before grouping | Filters groups after grouping |
| Cannot use aggregate functions | Can use aggregate functions |
| Executed before GROUP BY | Executed after GROUP BY |

---

# 🔹 LIMIT Clause

The `LIMIT` clause is used to restrict the number of rows returned.

### Example

```sql
SELECT *
FROM Employee
LIMIT 10;
```

---

# 🔹 Second Highest Salary

```sql
SELECT DISTINCT salary
FROM Employee
ORDER BY salary DESC
LIMIT 1,1;
```

---

# 🔹 Query Execution Order

MySQL executes queries in the following order:

1. FROM
2. WHERE
3. GROUP BY
4. HAVING
5. SELECT
6. ORDER BY
7. LIMIT

---

# 📖 Practice Questions

### Employee Table

- Display unique departments.
- Count employees in each city.
- Find the maximum and minimum salary by city.
- Find the maximum and minimum age by gender.
- Calculate the total salary by department.
- Find the average age by department.
- Display departments where average salary is greater than ₹50,000.
- Retrieve the second highest salary.

### Candidates Table

- Count candidates by year.
- Calculate total fees by department.
- Calculate average fees by city.
- Count candidates by college.
- Find minimum fees by department.
- Calculate average age by city.
- Find maximum fees by college.
- Calculate total fees by year.
- Calculate average fees by college.
- Count candidates by department and year.
- Calculate total fees by department and city.

---
# 🧠 Key Learnings

- Learned how to summarize data using aggregate functions.
- Understood the importance of the `GROUP BY` clause.
- Learned the difference between `WHERE` and `HAVING`.
- Practiced filtering grouped records using `HAVING`.
- Used `LIMIT` for pagination and ranking.
- Improved SQL query writing and formatting skills.

---

# 🚀 Skills Practiced

- SQL Query Writing
- Aggregate Functions
- Data Analysis
- Data Grouping
- SQL Filtering
- Sorting Records
- Query Optimization Basics

---

# 📂 Folder Structure

```
Day-06/
│── Day-06-Aggregate-Functions-and-GROUP-BY.sql
├── notes.md
└── README.md
```

---

# ✅ Outcome

After completing this practice, I can confidently:

- Use Aggregate Functions effectively.
- Group records using `GROUP BY`.
- Filter grouped data using `HAVING`.
- Sort and limit query results.
- Write clean and readable SQL queries.
- Solve beginner to intermediate SQL aggregation problems.

---

**Author:** Asmit Singh  
**Technology:** MySQL 8.0  
**Day:** 06 - Aggregate Functions & GROUP BY