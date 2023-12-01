--# 595. Big Countries
--# Table: World
--#     name VARCHAR
--#     continent VARCHAR
--#     area INT
--#     population INT
--#     gdp BIGINT
--# Write a solution to find the name, population, and area of the big countries.
--# A country is big if:
--#     It has an area of at least 3000000 km2, or
--#     It has a population of at least 25000000 
SELECT name, population, area
FROM World
WHERE area > 3000000
OR population > 25000000;