-- 02_WHERE.sql

/*
====================================================
Topic       : WHERE Clause
Session     : Day 3
Date        : 13-07-2026
Database    : student_management

Objective:
Learn how to filter data using the WHERE clause,
comparison operators, and logical operators
through real-world business scenarios.

Concepts Covered:
- WHERE
- >, <, >=, <=, =, !=
- AND
- OR
- NOT

Author:
Shubham Kulkarni
====================================================
*/

-- Q1. The principal asks: Show the Student ID, Student Name, and Percentage of students who scored more than 90%.
SELECT
    student_id,
    CONCAT(first_name, ' ', last_name) AS Student_Name,
    percentage
FROM students
WHERE percentage > 90;

-- Q2. The manager says:"I only want students who failed.The university considers:Percentage < 40 as a failure.
SELECT
    student_id,
    CONCAT(first_name, ' ', last_name) AS Student_Name,
    email,
    percentage
FROM students
WHERE percentage < 40;


SELECT
    MIN(percentage),
    MAX(percentage)
FROM students;

-- Q4.Show all students who scored 90% or above.
-- Show the Student ID, Student Name, and Percentage of all students who scored 90% or above.

SELECT 
    student_id,
    CONCAT(first_name, ' ', last_name) AS Student_Name,
    percentage
FROM
    students
WHERE
    percentage >= 90; 
    
-- Q5. The Admissions Office says:"Show all students who scored exactly 75%."
SELECT 
    CONCAT(first_name, ' ', last_name) AS Student_name
FROM
    students
WHERE
    percentage = 75;
    
-- Q6 Prepare a list of students who did NOT score 75%

SELECT 
    CONCAT(first_name, ' ', last_name) AS Student_name
FROM
    students
WHERE
    percentage != 75;

-- AND

-- Q7 Show the names of Female students who scored 90% or above.

SELECT 
    CONCAT(first_name, ' ', last_name) AS Student_Name
FROM
    students
WHERE
    gender = 'Female' AND percentage >= 90;

-- Q8 Show the names of students who are from Bengaluru OR Mysuru.

SELECT
    CONCAT(first_name, ' ', last_name) AS Student_Name
FROM
    students
WHERE
    city = 'Bengaluru'
    OR city = 'Mysuru';
    
-- Q9 Business Problem : The Admissions Office says: "Show the names of students who are NOT from Bengaluru."

SELECT 
    CONCAT(first_name, ' ', last_name) AS Student_name
FROM
    students
WHERE
    NOT city = 'Bengaluru';
    
-- Second Method

SELECT
    CONCAT(first_name, ' ', last_name) AS Student_Name
FROM
    students
WHERE
    city != 'Bengaluru';




