SELECT FirstName, LastName, COUNT([Order Details].Quantity) AS Quantity FROM Employees
INNER JOIN Orders
ON Employees.EmployeeID = Orders.EmployeeID
INNER JOIN [Order Details]
ON Orders.OrderID = [Order Details].OrderID
WHERE Orders.OrderDate BETWEEN '1996-09-01' AND '1996-11-30'
GROUP BY FirstName, LastName
