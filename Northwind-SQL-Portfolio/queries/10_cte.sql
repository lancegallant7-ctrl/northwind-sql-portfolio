-- Create a temporary list, then filter it
WITH CustomerOrders AS (
    SELECT 
        Customers.CustomerID,
        Customers.CompanyName,
        COUNT(Orders.OrderID) AS OrderCount
    FROM Customers
    LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID
    GROUP BY Customers.CustomerID, Customers.CompanyName
)
SELECT * FROM CustomerOrders WHERE OrderCount > 10;