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