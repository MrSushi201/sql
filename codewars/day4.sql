--# Write your SQL statement here: 
--# You are given a table 'multiplication' with column 'number'. 
--# Return a table with column 'number' and your result in a column named 'res'.
SELECT number, (CASE WHEN number % 2 = 0 
                     THEN number * 8 
                     ELSE number * 9 
                END) AS res
FROM multiplication;

--# Adults only (SQL for Beginners #1)
--# In your application, there is a section for adults only. 
--# You need to get a list of names and ages of users from the users table, who are 18 years old or older.
--# users table schema
--#     name
--#     age
--# NOTE: Your solution should use pure SQL. Ruby is used within the test cases just to validate your answer.
SELECT name, age
FROM users
WHERE age >= 18;