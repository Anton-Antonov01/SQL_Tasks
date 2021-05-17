SELECT ContactName FROM Customers
INNER JOIN Orders
ON Customers.CustomerID = Orders.CustomerID
WHERE Customers.City COLLATE Latin1_general_CI_AI != Orders.ShipCity COLLATE Latin1_general_CI_AI
