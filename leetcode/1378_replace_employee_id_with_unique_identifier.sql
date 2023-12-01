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