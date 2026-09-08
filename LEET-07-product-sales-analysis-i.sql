/*
  ============================================================
  LeetCode - Product Sales Analysis I
  ============================================================
  
  Table Schema:
  Table: Sales
  +-------------+-------+
  | Column Name | Type  |
  +-------------+-------+
  | sale_id     | int   |
  | product_id  | int   |
  | year        | int   |
  | quantity    | int   |
  | price       | int   |
  +-------------+-------+
  (sale_id, year) is the primary key of this table.
  
  Table: Product
  +--------------+---------+
  | Column Name  | Type    |
  +--------------+---------+
  | product_id   | int     |
  | product_name | varchar |
  +--------------+---------+
  product_id is the primary key of this table.
  
  Problem Statement:
  Write a solution to report the product_name, year, and price for each sale_id in the Sales table.
  Return the resulting table in any order.
  
  Logic:
  - Select product_name from Product table, and year, price from Sales table.
  - Use INNER JOIN on product_id to match each sale with its corresponding product name.
  ============================================================
*/

SELECT p.product_name, s.year, s.price
FROM Sales s
JOIN Product p ON s.product_id = p.product_id;
