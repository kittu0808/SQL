/*
====================================================
Topic       : LIMIT Clause
Session     : Day 5
Database    : student_management

Objective:
Learn how to restrict the number of rows
returned by a query using the LIMIT clause
through real-world business scenarios.

Concepts Covered:
- LIMIT
- LIMIT with ORDER BY
- Top N Records

Author:
Shubham Kulkarni
====================================================
*/

-- Q1 Show me only the Top 5 students based on percentage.
SELECT
    CONCAT(first_name, ' ', last_name) AS Student_Name,
    percentage
FROM
    students
ORDER BY
    percentage DESC
LIMIT 5;

-- Q2 Show the top 3 highest-paid teachers.
SELECT
    CONCAT(first_name, ' ', last_name) AS Teacher_Name,
    department,
    salary
FROM
    teachers
ORDER BY
    salary DESC
LIMIT 3;

-- Q3 Show the first 10 students from Bengaluru.
SELECT
    CONCAT(first_name, ' ', last_name) AS Student_Name,
    city,
    percentage
FROM
    students
WHERE
    city = 'Bengaluru'
LIMIT 10;

-- Q4 Show the bottom 5 students based on percentage.

SELECT
    CONCAT(first_name, ' ', last_name) AS Student_Name,
    percentage
FROM
    students
ORDER BY
    percentage ASC
LIMIT 5;

-- Q5 Show the top 10 students with the highest percentage.

SELECT
    CONCAT(first_name, ' ', last_name) AS Student_Name,
    percentage
FROM
    students
ORDER BY
    percentage DESC
LIMIT 10;

SHOW COLUMNS FROM students;

-- Q6 Show the top 5 students from Bengaluru based on percentage."

SELECT
    CONCAT(first_name, ' ', last_name) AS Student_Name,
    city,
    percentage
FROM
    students
WHERE
    city = 'Bengaluru'
ORDER BY
    percentage DESC
LIMIT 5;




















