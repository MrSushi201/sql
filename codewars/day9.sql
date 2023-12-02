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