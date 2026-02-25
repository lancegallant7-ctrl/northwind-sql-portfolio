-- Rank products by price within their category
SELECT 
    ProductName,
    CategoryID,
    UnitPrice,
    RANK() OVER (PARTITION BY CategoryID ORDER BY UnitPrice DESC) AS PriceRankInCategory
FROM Products;