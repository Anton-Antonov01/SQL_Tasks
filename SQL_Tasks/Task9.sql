SELECT TOP (1) Categories.CategoryName
FROM [Order Details] JOIN Orders ON [Order Details].OrderID = Orders.OrderID
JOIN Customers ON Orders.CustomerID = Customers.CustomerID
JOIN Products ON [Order Details].ProductID = Products.ProductID
JOIN Categories ON Products.CategoryID = Categories.CategoryID
WHERE Customers.Fax IS NOT NULL AND
YEAR(Orders.OrderDate) = 1997 
GROUP BY Categories.CategoryName, Customers.CompanyName
ORDER BY COUNT(*) DESC;
