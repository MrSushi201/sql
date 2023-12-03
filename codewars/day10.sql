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