--# 1148. Article Views 1
--# Table: Views
--#     article_id INT
--#     author_id INT
--#     viewer_id INT
--#     view_date DATE
--# Write a solution to find all the authors that viewed at least one of their own article. 
--# Return the result table sorted by id in ascending order.
SELECT DISTINCT(author_id) AS id
FROM Views
WHERE author_id = viewer_id
ORDER BY id;