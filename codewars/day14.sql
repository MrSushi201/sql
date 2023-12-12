--# SQL Basics - Trimming the Field
--# You have access to a table of monsters as follows:
--# Table: monsters
--#     id
--#     name
--#     legs
--#     arms
--#     characteristics
--# The monsters have too many characteristics, they really only need one each.
--# Your job is to trim the characteristics down so that each monster only has one.
--# If there is only one already, provide that. 
--# If there are multiple, provide only the first one (do not leave any commas in there).
--# You must return a table with the format as follows:
--#     id
--#     name
--#     characteristics
--# Order by id
SELECT id, name, 
    CASE
        WHEN CHAR_LENGTH(characteristics) = 0 THEN NULL
        WHEN POSITION(',' IN characteristics) = 0 THEN characteristics
        ELSE SUBSTRING(characteristics, 1, (POSITION(',' IN characteristics) - 1))
    END AS characteristic
FROM monsters
ORDER BY id;