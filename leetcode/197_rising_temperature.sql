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