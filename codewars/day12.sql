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