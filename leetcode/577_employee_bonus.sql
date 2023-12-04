--# 577. Employee Bonus
--# Table: Employee
--# +-------------+---------+
--# | Column Name | Type    |
--# +-------------+---------+
--# | empId       | int     |
--# | name        | varchar |
--# | supervisor  | int     |
--# | salary      | int     |
--# +-------------+---------+
--# empId is the column with unique values for this table.
--# Each row of this table indicates the name and the ID of an employee in addition to their salary and the id of their manager.

--# Table: Bonus
--# +-------------+------+
--# | Column Name | Type |
--# +-------------+------+
--# | empId       | int  |
--# | bonus       | int  |
--# +-------------+------+
--# empId is the column of unique values for this table.
--# empId is a foreign key (reference column) to empId from the Employee table.
--# Each row of this table contains the id of an employee and their respective bonus.

--# Write a solution to report the name and bonus amounth of each employee with a bonus less than 1000.
--# Output: name and bonus
SELECT Employee.name, Bonus.bonus
FROM Employee 
LEFT JOIN Bonus
ON Employee.empId = Bonus.empId 
WHERE Bonus.bonus < 1000 OR Bonus.bonus IS NULL
ORDER BY Bonus.bonus;