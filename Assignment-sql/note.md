## Project Name

Student Management System

## Author

Asmit Singh

## Description

This project was created to practice SQL fundamentals using MySQL.

The project demonstrates how to create a database, design a table, insert records, retrieve information, modify table structures, and perform basic SQL operations.

## Skills Practiced

- SQL Basics
- Database Design
- Table Design
- Constraints
- Data Retrieval
- Table Modification

## Total Records

20 Student Records

## Concepts Covered

- CREATE DATABASE
- USE
- CREATE TABLE
- INSERT
- UPDATE
- SELECT
- WHERE
- BETWEEN
- OR
- ALTER TABLE
- MODIFY
- ADD COLUMN

## Conclusion

This project strengthened my understanding of SQL fundamentals and improved my confidence in writing SQL queries independently.

## ⭐ GitHub Repository
https://github.com/asmitsingh7068/mysql-practice


## 📊 UML / ER Diagram

                    +--------------------------------------+
                    |             tbl_student              |
                    +--------------------------------------+
                    | PK StudentID                         |
                    | StudentName                          |
                    | StudentAge                           |
                    | Gender                               |
                    | Class                                |
                    | Section                              |
                    | City                                 |
                    | PhoneNumber (Unique)                 |
                    | Email (Unique)                       |
                    | AdmissionDate                        |
                    | BloodGroup                           |
                    +-------------------------------------+

## UML Class Diagram

+------------------------------------------------+
|                 Student                        |
+------------------------------------------------+
| - studentId : int                              |
| - studentName : String                         |
| - studentAge : int                             |
| - gender : Enum                               |
| - class : int                                  |
| - section : char                               |
| - city : String                                |
| - phoneNumber : long                           |
| - email : String                               |
| - admissionDate : DateTime                     |
| - bloodGroup : String                          |
+------------------------------------------------+