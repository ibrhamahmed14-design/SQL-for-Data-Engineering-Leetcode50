```sql
/*
===============================================================================
Task: LeetCode #1280 - Students and Examinations
Dialect: Microsoft SQL Server (T-SQL)
Category: JOINs & Aggregation
Difficulty: Easy
URL: https://leetcode.com/problems/students-and-examinations/

Problem Statement:
  Find the number of times each student attended each exam.

  Return the result table ordered by student_id and subject_name.

Schema:
  Students table:
  +-------------+---------+
  | Column Name | Type    |
  +-------------+---------+
  | student_id  | int     |
  | student_name| varchar |
  +-------------+---------+

  Subjects table:
  +--------------+---------+
  | Column Name  | Type    |
  +--------------+---------+
  | subject_name | varchar |
  +--------------+---------+

  Examinations table:
  +--------------+---------+
  | Column Name  | Type    |
  +--------------+---------+
  | student_id   | int     |
  | subject_name | varchar |
  +--------------+---------+
===============================================================================
*/

-- Verified Solution Query:
-- CROSS JOIN generates every possible Student + Subject combination.
-- LEFT JOIN keeps combinations even when the student did not attend the exam.
-- COUNT(E.student_id) counts only matching examination records,
-- therefore combinations with no exams correctly return 0.

SELECT
    S.student_id,
    S.student_name,
    Sub.subject_name,
    COUNT(E.student_id) AS attended_exams
FROM Students AS S
CROSS JOIN Subjects AS Sub
LEFT JOIN Examinations AS E
    ON E.student_id = S.student_id
    AND E.subject_name = Sub.subject_name
GROUP BY
    S.student_id,
    S.student_name,
    Sub.subject_name
ORDER BY
    S.student_id,
    Sub.subject_name;
```
