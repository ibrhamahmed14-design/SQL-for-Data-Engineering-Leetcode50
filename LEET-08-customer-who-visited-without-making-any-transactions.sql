/*
  ============================================================
  LeetCode - Customer Who Visited without Making Any Transactions
  ============================================================
  
  Table Schema:
  Table: Visits
  +-------------+---------+
  | Column Name | Type    |
  +-------------+---------+
  | visit_id    | int     |
  | customer_id | int     |
  +-------------+---------+
  
  Table: Transactions
  +----------------+---------+
  | Column Name    | Type    |
  +----------------+---------+
  | transaction_id | int     |
  | visit_id       | int     |
  | amount         | int     |
  +----------------+---------+
  
  Problem Statement:
  Write a solution to find the IDs of the users who visited without making any transactions and the number of times they made these types of visits.
  
  Logic:
  - Use LEFT JOIN between Visits and Transactions on visit_id.
  - Filter for rows where transaction_id IS NULL (meaning no transaction was made during that visit).
  - Group by customer_id and count the number of visits using COUNT(visit_id).
  ============================================================
*/

SELECT v.customer_id, COUNT(v.visit_id) AS count_no_trans
FROM Visits v
LEFT JOIN Transactions t ON v.visit_id = t.visit_id
WHERE t.transaction_id IS NULL
GROUP BY v.customer_id;
