--# 1378. Replace Employee ID with The Unique Identifier
--# Table: Employees
--#     id INT
--#     name VARCHAR
--# Table: EmployeeUNI
--#     id INT
--#     unique_id INT
SELECT EmployeeUNI.unique_id, Employees.name
FROM Employees
LEFT JOIN EmployeeUNI ON Employees.id = EmployeeUNI.id;

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

--# 197. Rising Temperature
--# Table: Weather
--#     id INT PRIMARY KEY
--#     recordDate DATE
--#     temperature INT
--# Write a solution to find all dates' 'Id' with higher temperatures compared to its previous dates (yesterday).
SELECT id
FROM Weather t1
JOIN Weather t2
ON t1.recordDate = DATE_ADD(t2.recordDate, INTERVAL 1 DAY)
WHERE t1.temperature > t2.temperature;