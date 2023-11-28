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