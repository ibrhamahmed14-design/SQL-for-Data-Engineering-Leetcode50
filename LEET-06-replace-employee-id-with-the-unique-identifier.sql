/*
  ============================================================
  LeetCode - Replace Employee ID With The Unique Identifier
  ============================================================
  
  Table Schema:
  Table: Employees
  +---------------+---------+
  | Column Name   | Type    |
  +---------------+---------+
  | id            | int     |
  | name          | varchar |
  +---------------+---------+
  id is the primary key for this table.
  
  Table: EmployeeUNI
  +---------------+---------+
  | Column Name   | Type    |
  +---------------+---------+
  | id            | int     |
  | unique_id     | int     |
  +---------------+---------+
  (id, unique_id) is the primary key for this table.
  
  Problem Statement:
  Write a solution to show the unique ID of each user, If a user does not have a unique ID replace just show null.
  Return the result table in any order.
  
  Logic:
  - Select from Employees and LEFT JOIN EmployeeUNI on id.
  - This ensures all employees are returned, showing NULL for those without a unique ID.
  ============================================================
*/

SELECT eu.unique_id, e.name
FROM Employees e
LEFT JOIN EmployeeUNI eu ON e.id = eu.id;
