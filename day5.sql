--creating table customer

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(50),
    City VARCHAR(50),
    Email VARCHAR(100),
    Phone VARCHAR(20),
    Country VARCHAR(50)
);

--inserting values
INSERT INTO Customers VALUES
(1, 'Alice', 'New York', 'alice@example.com', '123-456-7890', 'USA'),
(2, 'Bob', 'Chicago', 'bob@example.com', '987-654-3210', 'USA'),
(3, 'Charlie', 'Los Angeles', 'charlie@example.com', '555-555-5555', 'USA'),
(4, 'David', 'Miami', 'david@example.com', '444-444-4444', 'USA');

--creating table orders
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    OrderDate DATE,
    Amount DECIMAL(10,2),
    CustomerID INT,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

--inserting values
INSERT INTO Orders VALUES
(101, '2025-06-15', 250.00, 1),
(102, '2025-06-16', 450.00, 2),
(103, '2025-06-17', 300.00, 2),
(104, '2025-06-18', 150.00, 5);


--left join

SELECT 
    c.CustomerID,
    c.CustomerName,
    c.Email,
    c.Phone,
    c.Country,
    o.OrderID,
    o.Amount
FROM Customers c
LEFT JOIN Orders o
    ON c.CustomerID = o.CustomerID;


--right join

SELECT 
    c.CustomerID,
    c.CustomerName,
    c.Email,
    c.Phone,
    c.Country,
    o.OrderID,
    o.Amount
FROM Customers c
RIGHT JOIN Orders o
    ON c.CustomerID = o.CustomerID;


--full join
SELECT 
    c.CustomerID,
    c.CustomerName,
    c.Email,
    c.Phone,
    c.Country,
    o.OrderID,
    o.Amount
FROM Customers c
FULL JOIN Orders o
    ON c.CustomerID = o.CustomerID;
