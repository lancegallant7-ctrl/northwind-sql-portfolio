-- Find all orders with customer names
SELECT Orders.OrderID, Orders.OrderDate, Customers.CompanyName
FROM Orders
INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID;