--# Easy SQL - Ordering
--# Your task is to sort the information in the provided table 'companies' by number of employee (high to low).
--# Returned table should be in the same format as provided:
--# Table: companies
--#     id
--#     ceo
--#     motto
--#     employees
SELECT id, ceo, motto, employees
FROM companies
ORDER BY employees DESC;

--# SQL: Right and Left
--# Table: repositories
--#     project
--#     commits
--#     contributors
--#     address
--# Task - For each row, return first x characters of the project name where x = commits.
--#        Return last y characters of each address where y = contributors.
--#        Return only project and address.
--#        project name in length of x commits
--#        address in length of y contributors.
SELECT 
  LEFT(project, commits) AS project,
  RIGHT(address, contributors) AS address
FROM repositories;