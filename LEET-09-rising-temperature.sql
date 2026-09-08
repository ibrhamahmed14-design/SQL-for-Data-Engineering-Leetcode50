/*
  ============================================================
  LeetCode - Rising Temperature
  ============================================================
  
  Table Schema:
  Table: Weather
  +---------------+---------+
  | Column Name   | Type    |
  +---------------+---------+
  | id            | int     |
  | recordDate    | date    |
  | temperature   | int     |
  +---------------+---------+
  id is the column with unique values for this table.
  
  Problem Statement:
  Write a solution to find all dates' id with higher temperatures compared to its previous dates (yesterday).
  Return the result table in any order.
  
  Logic:
  - Perform a self-join on the Weather table to compare two days (w1 for current day, w2 for previous day).
  - Use DATEDIFF to ensure w1 is exactly 1 day after w2.
  - Filter rows where w1's temperature is strictly greater than w2's temperature.
  ============================================================
*/

SELECT w1.id
FROM Weather w1
JOIN Weather w2 
  ON DATEDIFF(w1.recordDate, w2.recordDate) = 1
WHERE w1.temperature > w2.temperature;
