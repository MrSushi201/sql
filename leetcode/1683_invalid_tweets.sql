--# 1683. Invalid Tweets
--# Table: Tweets
--#     tweet_id INT
--#     content VARCHAR
--# Write a solution to find the IDs of the invalid tweets.
--# The tweet is invalid if the number of characters used in the content of the tweet is strictly greater than 15.
--# Return the result table in any order.
SELECT tweet_id
FROM Tweets
WHERE LENGTH(content) > 15;