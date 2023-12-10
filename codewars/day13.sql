--# Remove First and Last Character
--# Your goal is to return strings where the first and last characters are removed. 
--# You are given a table 'removechar' with column 's'. Return the result in a column named 'res'.
SELECT SUBSTRING(s, 1, LENGTH(s)-1) AS res
FROM removechar;

SELECT s,
    CASE
        WHEN LENGTH(s) > 2
        THEN SUBSTRING(s, 2, LENGTH(s)-2)
        ELSE ''
    END AS res
FROM removechar;