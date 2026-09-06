/*
===============================================================================
Task: LeetCode #584 - Find Customer Referee
Dialect: Microsoft SQL Server (T-SQL)
Category: Basic Select & Three-Valued Logic (3VL)
Difficulty: Easy
URL: https://leetcode.com/problems/find-customer-referee/

Problem Statement:
  Find the names of the customer that are not referred by the customer with id = 2.
  Return the result table in any order.

Schema:
  Customer table:
  +-------------+---------+
  | Column Name | Type    |
  +-------------+---------+
  | id          | int     |
  | name        | varchar |
  | referee_id  | int     |
  +-------------+---------+
===============================================================================
*/

-- Verified Solution Query:
-- Note on Three-Valued Logic (3VL): In SQL, comparing NULL with '<>' evaluates
-- to UNKNOWN, which excludes NULL records unless explicitly handled with 'IS NULL'.
SELECT 
    name
FROM 
    Customer
WHERE 
    referee_id <> 2 
    OR referee_id IS NULL;
