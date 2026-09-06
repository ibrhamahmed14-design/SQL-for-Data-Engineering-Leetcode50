/*
===============================================================================
Task: LeetCode #1757 - Recyclable and Low Fat Products
Dialect: Microsoft SQL Server (T-SQL)
Category: Basic Select & Filtering
Difficulty: Easy
URL: https://leetcode.com/problems/recyclable-and-low-fat-products/

Problem Statement:
  Write a solution to find the ids of products that are both low fat and recyclable.
  Return the result table in any order.

Schema:
  Products table:
  +-------------+---------+
  | Column Name | Type    |
  +-------------+---------+
  | product_id  | int     |
  | low_fats    | enum/char
  | recyclable  | enum/char
  +-------------+---------+
===============================================================================
*/

-- Verified Solution Query:
SELECT 
    product_id
FROM 
    Products
WHERE 
    low_fats = 'Y' 
    AND recyclable = 'Y';
