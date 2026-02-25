-- For each customer, count their orders
SELECT 
    CustomerID,
    CompanyName,
    (SELECT COUNT(*) FROM Orders WHERE Orders.CustomerID = Customers.CustomerID) AS OrderCount
FROM Customers
ORDER BY OrderCount DESC;