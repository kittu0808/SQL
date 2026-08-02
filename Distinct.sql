/*
====================================================
Topic       : DISTINCT Clause
Database    : student_management

Objective:
Learn how to retrieve unique values
from one or more columns using the
DISTINCT clause through real-world
business scenarios.

Concepts Covered:
- DISTINCT
- DISTINCT on Single Column
- DISTINCT on Multiple Columns

Author:
Shubham Kulkarni
====================================================
*/

-- Q1 Show all unique cities from which students come.

SELECT DISTINCT
    city
FROM
    students;

-- Q2 Show all unique courses offered by the college.
SELECT DISTINCT
    course
FROM
    students;
    
-- Q3 Show all unique combinations of City and Course.

SELECT DISTINCT city, course
FROM students;

-- Q4 Show all unique cities in alphabetical order.
SELECT DISTINCT
    city
FROM
    students
ORDER BY
    city ASC;











