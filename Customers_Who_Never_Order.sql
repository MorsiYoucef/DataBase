# Write your MySQL query statement below
SELECT name AS Customers
FROM Customers
WHERE NOT EXISTS (
    SELECT 1 
    FROM Orders 
    WHERE Orders.customerId = Customers.id
);