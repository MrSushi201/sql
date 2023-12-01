--# 1068. Product Sales Analysis 1
--# Table: Sales
--#     sale_id INT PRIMARY KEY
--#     product_id INT FOREIGN KEY
--#     year INT PRIMARY KEY
--#     quantity INT
--#     price
--# Table: Product
--#     product_id INT PRIMARY KEY
--#     product_name VARCHAR
--# Write a solution to report the 'product_name', 'year', and 'price' for each sale_id in the Sales table. 
SELECT Product.product_name, Sales.year, Sales.price
FROM Product
JOIN Sales ON Product.product_id = Sales.product_id
ORDER BY Product.product_name;