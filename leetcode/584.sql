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