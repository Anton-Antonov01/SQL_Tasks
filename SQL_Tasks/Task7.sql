SELECT ProductName FROM Products
WHERE ProductID IN
(SELECT ProductID FROM [Order Details]
GROUP BY ProductID
HAVING SUM(Quantity) < 1000)
