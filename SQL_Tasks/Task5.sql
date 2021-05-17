SELECT COUNT(ShipCity) FROM Orders
WHERE EmployeeID = 1 AND 
ShipCountry = 'France' AND
YEAR(OrderDate) = 1997 