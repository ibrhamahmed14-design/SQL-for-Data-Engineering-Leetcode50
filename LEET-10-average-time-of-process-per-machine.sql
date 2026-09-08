/*
  ============================================================
  LeetCode - Average Time of Process per Machine
  ============================================================
  
  Table Schema:
  Table: Activity
  +---------------+---------+
  | Column Name   | Type    |
  +---------------+---------+
  | machine_id    | int     |
  | process_id    | int     |
  | activity_type | enum    |
  | timestamp     | float   |
  +---------------+---------+
  
  Problem Statement:
  There is a factory website that has several machines each running the same number of processes. Write a solution to find the average time each machine takes to complete a process.
  
  Logic:
  - Perform a self-join on the Activity table matching machine_id and process_id.
  - Filter w1 for 'start' activity and w2 for 'end' activity.
  - Calculate the difference (w2.timestamp - w1.timestamp), find the AVG for each machine, and round to 3 decimal places.
  ============================================================
*/

SELECT 
    w1.machine_id,
    ROUND(AVG(w2.timestamp - w1.timestamp), 3) AS processing_time
FROM Activity w1
JOIN Activity w2 
  ON w1.machine_id = w2.machine_id 
  AND w1.process_id = w2.process_id
  AND w1.activity_type = 'start'
  AND w2.activity_type = 'end'
GROUP BY w1.machine_id;
