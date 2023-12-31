--# 1661. Average Time of Process per Machine
--# Table: Activity
--#     machine_id INT PRIMARY KEY UNIQUE
--#     process_id INT PRIMARY KEY UNIQUE
--#     activity_type ENUM
--#     timestamp FLOAT
--# Write a solution to find the average time each machine takes to complete a process. 
--# The time to complete a process is the 'end' timestamp minus the 'start' timestamp. 
--# The average time is calculated by the total time to complete every process in the machine divided by the number of processes that were run. 
SELECT a1.machine_id, AVG(a2.timestamp - a1.timestamp) AS processing_time
FROM Activity a1
JOIN Activity a2
ON a1.machine_id = a2.machine_id 
AND a1.process_id = a2.process_id
AND a1.activity_type = 'start' 
AND a2.activity_type = 'end'
GROUP BY a1.machine_id;