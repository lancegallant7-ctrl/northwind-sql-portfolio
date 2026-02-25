-- Count orders by country
SELECT 
    Customers.Country,
    COUNT(Orders.OrderID) AS NumberOfOrders
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID
GROUP BY Customers.Country
ORDER BY NumberOfOrders DESC;