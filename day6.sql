
--finding customers's name and their order
SELECT
    CustomerName,
    (SELECT COUNT(*) FROM Orders) AS TotalOrders
FROM Customers;


SELECT
    OrderID,
    Amount,
    (SELECT AVG(Amount) FROM Orders) AS AvgOrderAmount
FROM Orders;


-- selecting orders above average amount
SELECT
    OrderID,
    Amount
FROM Orders
WHERE Amount > (
    SELECT AVG(Amount)
    FROM Orders
);

--using in (selecting customers who have placed at least one order)
SELECT *
FROM Customers
WHERE CustomerID IN (
    SELECT DISTINCT CustomerID
    FROM Orders
);


--using exist
SELECT *
FROM Customers c
WHERE EXISTS (
    SELECT 1
    FROM Orders o
    WHERE o.CustomerID = c.CustomerID
);

