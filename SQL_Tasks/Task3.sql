SELECT DISTINCT Customers.ContactName FROM Orders
INNER JOIN Customers
ON Orders.CustomerID = Customers.CustomerID
WHERE ShippedDate is NULL 
