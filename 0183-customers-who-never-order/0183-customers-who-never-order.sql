# Write your MySQL query statement below
SELECT name Customers
FROM Customers 
WHERE id NOT IN (SELECT CUSTOMERID FROM Orders)