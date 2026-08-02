/*
====================================================
Topic       : ORDER BY Clause
Session     : Day 4
Database    : student_management

Objective:
Learn how to sort query results using the
ORDER BY clause in ascending and descending
order through real-world business scenarios.

Concepts Covered:
- ORDER BY
- ASC
- DESC

Author:
Shubham Kulkarni
====================================================
*/


-- Q1. Show the names of all students arranged from the highest percentage to the lowest percentage.

SELECT
    CONCAT(first_name, ' ', last_name) AS Student_Name,
    percentage
FROM
    students
ORDER BY
    percentage DESC;

-- Q2. Show all teachers from the highest salary to the lowest salary

SELECT 
    CONCAT(first_name, ' ', last_name) AS Teacher_name,
    department,
    salary
FROM
    teachers
ORDER BY salary DESC;

-- Q3 Show all students with their names and percentage, arranged alphabetically by first name.

SELECT 
    CONCAT(first_name, ' ', last_name) AS Student_Name,
    percentage
FROM
    students
ORDER BY first_name ASC;

-- Q4 Show all students arranged by city in alphabetical order.

SELECT 
    CONCAT(first_name, ' ', last_name) AS Student_Name,
    city,
    percentage
FROM
    students
ORDER BY city ASC;

--  Q5 Show all students with their names, city, and percentage.
--  Arrange them from the highest percentage to the lowest percentage.
-- If two students have the same percentage, arrange them alphabetically by first name.

SELECT 
    CONCAT(first_name, ' ', last_name) AS Student_Name,
    city,
    percentage
FROM
    students
ORDER BY percentage DESC , first_name ASC;

-- Q6 Show all students who have paid the highest fees first.

SELECT
    CONCAT(first_name, ' ', last_name) AS Student_Name,
    course,
    fee_paid
FROM
    students
ORDER BY
    fee_paid DESC;


-- Q7 Show all students from Bengaluru first. Within Bengaluru, arrange them by percentage from highest to lowest.
SELECT
    CONCAT(first_name, ' ', last_name) AS Student_Name,
    city,
    percentage
FROM
    students
WHERE
    city = 'Bengaluru'
ORDER BY
    percentage DESC;

-- Q8 Show only teachers from the Computer Science department, arranged from the highest salary to the lowest salary

SELECT
    CONCAT(first_name, ' ', last_name) AS Teacher_Name,
    department,
    salary
FROM
    teachers
WHERE
    department = 'Computer Science'
ORDER BY
    salary DESC;


-- Q9 Show all female students from Bengaluru. Arrange them by percentage from highest to lowest. 
-- If two students have the same percentage, arrange them alphabetically by first name.

SELECT
    CONCAT(first_name, ' ', last_name) AS Student_Name,
    city,
    percentage
FROM
    students
WHERE
    city = 'Bengaluru'
    AND gender = 'Female'
ORDER BY
    percentage DESC,
    first_name ASC;
    
    
-- Q8 Show all students arranged from the lowest percentage to the highest percentage.
SELECT
    CONCAT(first_name, ' ', last_name) AS Student_Name,
    percentage
FROM
    students
ORDER BY
    percentage ASC;
    
    
-- Q9 Show all teachers arranged alphabetically by department.
SELECT
    CONCAT(first_name, ' ', last_name) AS Teacher_Name,
    department,
    salary
FROM
    teachers
ORDER BY
    department ASC;

-- Q10 Show only students from Mysuru arranged by first name in alphabetical order

SELECT
    CONCAT(first_name, ' ', last_name) AS Student_Name,
    city,
    percentage
FROM
    students
WHERE
    city = 'Mysuru'
ORDER BY
    first_name ASC;
    
    
-- Q11 Show students who have paid more than ₹80,000. Arrange them from the highest fee paid to the lowest fee paid.
    
SELECT
    CONCAT(first_name, ' ', last_name) AS Student_Name,
    course,
    fee_paid
FROM
    students
WHERE
    fee_paid > 80000
ORDER BY
    fee_paid DESC;

-- Q12 Show female students who scored above 85%. Arrange them from the highest percentage to the lowest percentage.

SELECT
    CONCAT(first_name, ' ', last_name) AS Student_Name,
    percentage,
    city
FROM
    students
WHERE
    gender = 'Female'
    AND percentage > 85
ORDER BY
    percentage DESC;











