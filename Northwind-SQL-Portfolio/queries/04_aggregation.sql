-- Calculate order statistics
SELECT 
    COUNT(*) AS TotalOrders,
    AVG(Freight) AS AverageShippingCost,
    SUM(Freight) AS TotalShippingCost
FROM Orders;