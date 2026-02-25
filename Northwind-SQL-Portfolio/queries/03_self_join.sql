-- Show employees and who they report to
SELECT 
    Employee.FirstName + ' ' + Employee.LastName AS Employee,
    Manager.FirstName + ' ' + Manager.LastName AS Manager
FROM Employees Employee
LEFT JOIN Employees Manager ON Employee.ReportsTo = Manager.EmployeeID;