--# Disemvowel Trolls
--# Trolls are attacking your comment section!
--# Your task is to write a function that takes a string and return a new string with all vowels removed.
--# Example: The string "This website is for losers LOL!" would become "Ths wbst s fr lsrs LL!"

--# Write your SQL statement here: 
--# You are given a table 'disemvowel' with column 'str', return a table with column 'str' and your result in a column named 'res'.
SELECT str, TRANSLATE(str, 'aeiouAEIOU', '') AS res
FROM disemvowel;

--# SQL Basics - Position
--# You have access to a table of monsters as follows:
--# monsters schema
--#     id
--#     name
--#     legs
--#     arms
--#     characteristics
--# In each row, the characteristic column has a single comma. 
--# Your job is to find it using position(). 
--# You must return a table with the format as follows:
--#     id
--#     name
--#     comma
SELECT id, name, POSITION(',' IN characteristics) AS comma
FROM monsters
ORDER BY comma;