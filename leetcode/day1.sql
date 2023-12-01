--# 1757. Recyclable and Low Fat Products
--# Table: Products
--#     product_id INT
--#     low_fats ENUM (Y / N)
--#     recyclable ENUM (Y / N)
--# Write a solution to find the ids of products that are both Low Fat and Recyclable.
SELECT product_id
FROM Products
WHERE low_fats = 'Y'
AND recyclable = 'Y';

--# 584. Find Customer Referee
--# Table: Customer
--#     id INT
--#     name VARCHAR
--#     referee_id INT
--# Find the names of the customer that are not referred by the customer with id = 2.
--# Return the result table in any order.
SELECT name
FROM Customer
WHERE referee_id != 2
OR referee_id IS NULL;

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

--# 1148. Article Views 1
--# Table: Views
--#     article_id INT
--#     author_id INT
--#     viewer_id INT
--#     view_date DATE
--# Write a solution to find all the authors that viewed at least one of their own article. 
--# Return the result table sorted by id in ascending order.
SELECT DISTINCT(author_id) AS id
FROM Views
WHERE author_id = viewer_id
ORDER BY id;

--# 1683. Invalid Tweets
--# Table: Tweets
--#     tweet_id INT
--#     content VARCHAR
--# Write a solution to find the IDs of the invalid tweets.
--# The tweet is invalid if the number of characters used in the content of the tweet is strictly greater than 15.
--# Return the result table in any order.
SELECT tweet_id
FROM Tweets
WHERE LENGTH(content) > 15;