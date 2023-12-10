-- 570. Managers with at least 5 Direct Reports
-- Table: Employee

-- +-------------+---------+
-- | Column Name | Type    |
-- +-------------+---------+
-- | id          | int     |
-- | name        | varchar |
-- | department  | varchar |
-- | managerId   | int     |
-- +-------------+---------+
-- id is the primary key (column with unique values) for this table.
-- Each row of this table indicates the name of an employee, their department, and the id of their manager.
-- If managerId is null, then the employee does not have a manager.
-- No employee will be the manager of themself.
 

-- Write a solution to find managers with at least five direct reports.
-- Return the result table in any order.
-- The result format is in the following example.
SELECT a.name
FROM Employee a
JOIN Employee b
ON a.managerId = b.id
GROUP BY a.managerId
HAVING COUNT(a.managerId) >= 5;

SELECT name
FROM Employee
WHERE id IN
    (SELECT managerId 
    FROM Employee
    GROUP BY managerId
    HAVING COUNT(*) >= 5);