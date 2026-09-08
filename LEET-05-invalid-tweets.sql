/*
  ============================================================
  LeetCode - Invalid Tweets
  ============================================================
  
  Table Schema:
  +----------------+---------+
  | Column Name    | Type    |
  +----------------+---------+
  | tweet_id       | int     |
  | content        | varchar |
  +----------------+---------+
  
  Description:
  tweet_id is the primary key (column with unique values) for this table.
  content consists of alphanumeric characters, '!', or ' ' and no other special characters.
  This table contains all the tweets in a social media app.
  
  Problem Statement:
  Write a solution to find the IDs of the invalid tweets. 
  The tweet is invalid if the number of characters used in the content of the tweet is strictly greater than 15.
  Return the result table in any order.
  
  Logic:
  - Filter rows where the character count of the content column is greater than 15.
  - Using LEN() / LENGTH() to check length condition.
  ============================================================
*/

SELECT tweet_id
FROM Tweets
WHERE LEN(content) > 15;
