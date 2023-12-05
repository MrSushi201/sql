--# SQL Basics: Repeat and Reverse
--# Table: monsters
--#     id
--#     name
--#     legs
--#     arms
--#     characteristics
--# Return the following table:
--#     name
--#     characteristics
--# Where the name is the original string repeated three times (no space).
--# And the characteristics are the original strings in reverse.
SELECT REPEAT(name, 3) AS name, REVERSE(characteristics) AS characteristics
FROM monsters;

--# Third Angle of a Triangle
--# You are given two interior angles (in degrees) of a triangle. 
--# Table: otherangle
--#     a
--#     b
--# Return a table with a, b, and res
SELECT a, b, (180 - (a + b)) AS res
FROM otherangle;