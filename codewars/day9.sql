--# Sum of Triangular Numbers
--# Write a solution to return the sum of Triangular numbers up-to-and-including the nth Triangular number.
--# A triangular number is obtained by continued summation of the natural numbers. 

--# 1 -> 0 + 1 = 1
--# 2 -> 0 + 1 + 2 = 3
--# 3 -> 0 + 1 + 2 + 3 = 6
--# n -> 0 + 1 + 2 + ... + (n - 1) + n = (n * (n + 1)) / 2

--# You are given a table 'sumtriangular' with column 'n'.
--# Return a table with this column and your result in a column 'res'
SELECT n, 
CASE
    WHEN n < 0 THEN 0
    ELSE (n * (n + 1) / 2)
END AS res
FROM sumtriangular;

--# Collect Tuition (SQL for Beginners #4)
--# Table: students
--#     name TEXT
--#     age INT
--#     semester INT
--#     mentor TEXT
--#     tuition_received BOOLEAN
--# Write a SELECT statement to get a list of all students who have not paid their tuition yet.
--# The list should include all the data available about these students.
SELECT *
FROM students
WHERE tuition_received = False;s