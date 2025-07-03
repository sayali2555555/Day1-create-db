
--creating view 
CREATE VIEW CustomerOrderSummary AS
SELECT
    c.CustomerID,
    c.CustomerName,
    c.Country,
    COUNT(o.OrderID) AS TotalOrders,
    SUM(o.Amount) AS TotalAmount
FROM
    Customers c
LEFT JOIN Orders o ON c.CustomerID = o.CustomerID
GROUP BY
    c.CustomerID, c.CustomerName, c.Country;


SELECT * FROM CustomerOrderSummary
WHERE Country = 'USA';



--creating view for abstraction eg only revenue is visible to finance team
CREATE VIEW RevenueSummary AS
SELECT
    SUM(Amount) AS TotalRevenue
FROM
    Orders;


SELECT * FROM RevenueSummary;

--creating view for security to show only name, country,idand hiding imp info like email,phone no
CREATE VIEW PublicCustomers AS
SELECT
    CustomerID,
    Name,
    Country
FROM
    Customers;


SELECT * FROM PublicCustomers;
