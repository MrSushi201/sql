--# Remove String Spaces
--# Write a function that removes the spaces from the string, then return the resultant string. 
--# Examples: Input --> Output
--#           "8 j 8   mBliB8g  imjB8B8  jl  B" -> "8j8mBliB8gimjB8B8jlB"
--#           "8aaaaa dddd r     " -> "8aaaaaddddr"

--# Write your SQL statement here: 
--# You are given a table 'nospace' with column 'x'.
--# Return a table with column 'x' and your result in a column named 'res'.
SELECT x, REPLACE(x, ' ', '') AS res
FROM nospace;

--# Keep Hydrated!
--# Nathan drinks 0.5 litres of water per hour of cycling. 
--# You get tiven the time in hours and you need to return the number of litres Nathan will drink, rounded to the smallest value. 
--# Examples: Input --> Output
--#           hours = 3 --> liters = 1
--#           hours = 6.7 --> liters = 3
--#           hours = 11.8 --> liters = 5

--# Input data is available from the table cycling, which has:
--#     id
--#     hours
--# For each row, you have to return 3 columns:
--#     id
--#     hours
--#     liters
SELECT id, hours, FLOOR(0.5 * hours) AS liters
FROM cycling;