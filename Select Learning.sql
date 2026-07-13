-- 01_SELECT.sql

/*
====================================================
Topic       : SELECT
Session     : Day 1
Date        : 12-07-2026
Database    : student_management

Objective:
Learn how to retrieve data using SELECT by solving
real business problems.

Author:
Shubham Kulkarni
====================================================
*/

-- Q1. The principal says: I need a report containing every student's information.

SELECT 
    *
FROM
    students;

-- Q2 The principal says:I don't need every detail. I only want each student's first name and last name.

SELECT first_name, last_name FROM students;

-- Q3 The HR department needs a report. They ask: Show me every teacher in the organization.
SELECT * FROM teachers;

-- Q4 The Academic Office asks:"Give me the names of every course offered by the institution."
SELECT Course_name FROM Courses;

-- Q5 The Dean asks:"Prepare a report showing each student's:First Name,Last Name,Course,Percentage"
Select First_name,last_name,Course,percentage FROM students;

-- Q6 The Finance Office asks:"Generate a report containing:Student ID,First Name,Course,Fee Paid"
SELECT student_id,First_name,Course,Fee_paid FROM students;

-- Q7 The Admissions Office asks:"Create a report containing:Student Name (First + Last),Email,Phone,Admission Date,Percentage"
SELECT concat(first_name,' ',last_name) AS Student_name,email,phone,admission_date,percentage FROM students;

-- Q8 You're working for the admissions team.They want an ID card report. The report should contain:
-- Student ID,Student Name (First + Last),Email,Course,Percentage
-- And they want the column names to be:ID,Student_Name,Email,Course,Percentage
SELECT student_id AS ID,
       CONCAT(first_name, ' ', last_name) AS Student_Name,
       email,
       course,
       percentage
FROM students;















