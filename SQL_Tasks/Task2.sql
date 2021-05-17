SELECT DISTINCT ShipCity FROM Orders
WHERE DATEDIFF(DAY, OrderDate , ShippedDate) > 10