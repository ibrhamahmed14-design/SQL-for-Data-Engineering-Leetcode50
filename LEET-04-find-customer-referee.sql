/*
  ============================================================
  LeetCode - Find Customer Referee
  ============================================================
  
  Table Schema:
  +---------------+---------+
  | Column Name   | Type    |
  +---------------+---------+
  | article_id    | int     |
  | author_id     | int     |
  | viewer_id     | int     |
  | view_date     | date    |
  +---------------+---------+
  
  Description:
  There is no primary key for this table, the table may have duplicate rows.
  Each row of this table indicates that some viewer viewed an article written by some author on some date.
  Note that equal author_id and viewer_id indicate the same person.
  
  Problem Statement:
  Write a solution to find all the authors that viewed at least one of their own articles.
  Return the result table sorted by id in ascending order.
  
  Logic:
  - Filter rows where the author viewed their own article (author_id = viewer_id).
  - Use DISTINCT to remove duplicate IDs.
  - Sort the result in ascending order by id.
  ============================================================
*/

SELECT DISTINCT author_id AS id
FROM Views
WHERE author_id = viewer_id
ORDER BY id ASC;
