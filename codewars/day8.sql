--# SQL Basics: Mod
--# Given the following table 'decimals'
--#     id
--#     number1
--#     number2
--# Return a table with one column (mod) which is the output of number1 modulus number2.
SELECT MOD(number1, number2) AS mod
FROM decimals;

--# Century FROM Year
--# The first century spans from the year 1 up to and including the year 100. 
--# Task: Given a year, return the century it is in.
--# Examples:
--#           1705 --> 18
--#           1900 --> 19
--#           1601 --> 17
--#           2000 --> 20
--# In SQL, you will be given a table 'years' with column 'yr' for the year.
--# Return a table wit a column 'century'.
SELECT (FLOOR((yr - 1) / 100)  + 1) AS century
FROM years;