-- Show only countries with more than 10 orders
SELECT 
    Customers.Country,
    COUNT(Orders.OrderID) AS NumberOfOrders
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID
GROUP BY Customers.Country
HAVING COUNT(Orders.OrderID) > 10
ORDER BY NumberOfOrders DESC;