--# On the Canadian Border
--# You are a border guard sitting on the Canadian border.
--# You were given a list of travelers who have arrived at your gate today.
--# You know that American, Mexican, and Canadian citizens don't need visas, so they can just continue their trips.
--# You don't need to check their passports for visas!
--# You only need to check the passports of citizens of all other countries!

--# Select names, and countries of origin of all the travelers, excluding anyone from Canada, Mexico, or The US.
--# Table's description for travelers:
--#     name
--#     country

--# NOTE 1: The United States is written as 'USA' in the table. 
--# NOTE 2: Your solution should use pure SQL. Ruby is used within the test cases just to validate your answer. 
SELECT name, country
FROM travelers
WHERE country NOT IN ('Canada', 'Mexico', 'USA');

--# Easy SQL: Rounding Decimals
--# Given the following table 'decimals':
--#     id
--#     number1
--#     number2
--# Return a table with two columns (number1, number2), the value in number1 should be rounded down and the value in number2 should be rounded up.
SELECT FLOOR(number1) as number1, CEILING(number2) as number2
FROM decimals;