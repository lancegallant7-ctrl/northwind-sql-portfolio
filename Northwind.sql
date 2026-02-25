-- Find all orders with customer names
SELECT Orders.OrderID, Orders.OrderDate, Customers.CompanyName
FROM Orders
INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID;
-- Find customers who never placed an order
SELECT Customers.CompanyName, Orders.OrderID
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID
WHERE Orders.OrderID IS NULL;
-- Show employees and who they report to
SELECT 
    Employee.FirstName + ' ' + Employee.LastName AS Employee,
    Manager.FirstName + ' ' + Manager.LastName AS Manager
FROM Employees Employee
LEFT JOIN Employees Manager ON Employee.ReportsTo = Manager.EmployeeID;
-- Calculate order statistics
SELECT 
    COUNT(*) AS TotalOrders,
    AVG(Freight) AS AverageShippingCost,
    SUM(Freight) AS TotalShippingCost
FROM Orders;
-- Count orders by country
SELECT 
    Customers.Country,
    COUNT(Orders.OrderID) AS NumberOfOrders
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID
GROUP BY Customers.Country
ORDER BY NumberOfOrders DESC;
-- Show only countries with more than 10 orders
SELECT 
    Customers.Country,
    COUNT(Orders.OrderID) AS NumberOfOrders
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID
GROUP BY Customers.Country
HAVING COUNT(Orders.OrderID) > 10
ORDER BY NumberOfOrders DESC;
-- Find products that cost more than average
SELECT ProductName, UnitPrice
FROM Products
WHERE UnitPrice > (SELECT AVG(UnitPrice) FROM Products);
-- For each customer, count their orders
SELECT 
    CustomerID,
    CompanyName,
    (SELECT COUNT(*) FROM Orders WHERE Orders.CustomerID = Customers.CustomerID) AS OrderCount
FROM Customers
ORDER BY OrderCount DESC;
-- Rank products by price within their category
SELECT 
    ProductName,
    CategoryID,
    UnitPrice,
    RANK() OVER (PARTITION BY CategoryID ORDER BY UnitPrice DESC) AS PriceRankInCategory
FROM Products;
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