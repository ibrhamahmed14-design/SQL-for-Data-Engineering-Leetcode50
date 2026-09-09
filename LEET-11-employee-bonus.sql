/*
  ============================================================
  LeetCode 577 - Employee Bonus
  ============================================================
  
  Table Schema:
  
  Table: Employee
  +-------------+---------+
  | Column Name | Type    |
  +-------------+---------+
  | empId       | int     |
  | name        | varchar |
  | supervisor  | int     |
  | salary      | int     |
  +-------------+---------+
  empId is the column with unique values for this table.
  Each row of this table indicates the name and ID of an employee,
  their salary, and the id of their manager.

  Table: Bonus
  +-------------+---------+
  | Column Name | Type    |
  +-------------+---------+
  | empId       | int     |
  | bonus       | int     |
  +-------------+---------+
  empId is the column of unique values for this table.
  empId is a foreign key to Employee(empId).
  Each row contains the id of an employee and their respective bonus.
  
  Description & Problem Statement:
  Write a solution to report the name and bonus amount of each employee 
  who satisfies either of the following conditions:
  - The employee has a bonus less than 1000.
  - The employee did not receive any bonus (bonus is NULL).

  Return the result table in any order.
  
  Logic:
  - Use a LEFT JOIN from Employee to Bonus on empId to retain all employees,
    including those who have no matching record in the Bonus table.
  - Filter rows where the bonus is strictly less than 1000 OR is NULL.
  - Handle Three-Valued Logic (3VL) properly by explicitly checking `bonus IS NULL`.
  ============================================================
*/

SELECT 
    e.name,
    b.bonus
FROM Employee AS e
LEFT JOIN Bonus AS b 
    ON e.empId = b.empId
WHERE b.bonus < 1000 
   OR b.bonus IS NULL;
