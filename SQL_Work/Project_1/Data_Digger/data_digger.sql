-- DATA DIGGER PROJECT

CREATE DATABASE data_digger;
USE data_digger;

-- 1. CUSTOMERS

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(100),
    Address VARCHAR(200)
);

INSERT INTO Customers (CustomerID, Name, Email, Address)
VALUES
(1, 'Alice', 'alice@gmail.com', 'Surat'),
(2, 'Rahul', 'rahul@gmail.com', 'Mumbai'),
(3, 'Priya', 'priya@gmail.com', 'Ahmedabad'),
(4, 'John', 'john@gmail.com', 'Delhi'),
(5, 'Neha', 'neha@gmail.com', 'Pune');

SELECT * FROM Customers;

+------------+-------+-----------------+-----------+
| CustomerID | Name  | Email           | Address   |
+------------+-------+-----------------+-----------+
|          1 | Alice | alice@gmail.com | Surat     |
|          2 | Rahul | rahul@gmail.com | Mumbai    |
|          3 | Priya | priya@gmail.com | Ahmedabad |
|          4 | John  | john@gmail.com  | Delhi     |
|          5 | Neha  | neha@gmail.com  | Pune      |
+------------+-------+-----------------+-----------+
5 rows in set (0.00 sec)

UPDATE Customers
SET Address = 'vodadara'
WHERE CustomerID = 1;

Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

DELETE FROM Customers
WHERE CustomerID = 5;

Query OK, 1 row affected (0.00 sec)

SELECT * FROM Customers
WHERE Name = 'Alice';

+------------+-------+-----------------+----------+
| CustomerID | Name  | Email           | Address  |
+------------+-------+-----------------+----------+
|          1 | Alice | alice@gmail.com | vodadara |
+------------+-------+-----------------+----------+
1 row in set (0.00 sec)


-- 2. ORDERS

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    TotalAmount DECIMAL(10,2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

Query OK, 0 rows affected (0.02 sec)

INSERT INTO Orders (OrderID, CustomerID, OrderDate, TotalAmount)
VALUES
(101, 1, '2026-09-28', 1500.00),
(102, 2, '2026-09-20', 2500.00),
(103, 3, '2026-09-10', 800.00),
(104, 4, '2026-08-20', 3000.00),
(105, 1, '2026-09-01', 1200.00);

Query OK, 5 rows affected (0.00 sec)
Records: 5  Duplicates: 0  Warnings: 0

SELECT * FROM Orders
WHERE CustomerID = 1;

+---------+------------+------------+-------------+
| orderID | CustomerID | OrderDate  | TotalAmount |
+---------+------------+------------+-------------+
|     101 |          1 | 2026-09-28 |     1500.00 |
|     105 |          1 | 2026-09-01 |     1200.00 |
+---------+------------+------------+-------------+
2 rows in set (0.00 sec)

UPDATE Orders
SET TotalAmount = 1800.00
WHERE OrderID = 101;

Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

DELETE FROM Orders
WHERE OrderID = 105;

Query OK, 1 row affected (0.00 sec)

SELECT * FROM Orders
WHERE OrderDate >= CURDATE() - INTERVAL 30 DAY;

+---------+------------+------------+-------------+
| orderID | CustomerID | OrderDate  | TotalAmount |
+---------+------------+------------+-------------+
|     101 |          1 | 2026-09-28 |     1800.00 |
|     102 |          2 | 2026-09-20 |     2500.00 |
|     103 |          3 | 2026-09-10 |      800.00 |
+---------+------------+------------+-------------+
3 rows in set (0.00 sec)

SELECT MAX(TotalAmount) AS HighestOrder,
       MIN(TotalAmount) AS LowestOrder,
       AVG(TotalAmount) AS AverageOrder
FROM Orders;

+--------------+-------------+--------------+
| HighestOrder | LowestOrder | AverageOrder |
+--------------+-------------+--------------+
|      3000.00 |      800.00 |  2025.000000 |
+--------------+-------------+--------------+
1 row in set (0.00 sec)


-- 3. PRODUCTS

CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Price DECIMAL(10,2),
    Stock INT
);

Query OK, 0 rows affected (0.01 sec)

INSERT INTO Products (ProductID, ProductName, Price, Stock)
VALUES
(201, 'Smart Watch', 1500.00, 20),
(202, 'Headphones', 2500.00, 10),
(203, 'Backpack', 1200.00, 15),
(204, 'Keyboard', 700.00, 0),
(205, 'Mouse', 400.00, 25);

Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

SELECT * FROM Products
ORDER BY Price DESC;

+-----------+-------------+---------+-------+
| ProductID | ProductName | Price   | Stock |
+-----------+-------------+---------+-------+
|       202 | Headphones  | 2500.00 |    10 |
|       201 | Smart Watch | 1500.00 |    20 |
|       203 | Backpack    | 1200.00 |    15 |
|       204 | Keyboard    |  700.00 |     0 |
|       205 | Mouse       |  400.00 |    25 |
+-----------+-------------+---------+-------+
5 rows in set (0.00 sec)

UPDATE Products
SET Price = 1800.00
WHERE ProductID = 201;

Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

DELETE FROM Products
WHERE ProductID = 204 AND Stock = 0;

Query OK, 1 row affected (0.01 sec)

SELECT * FROM Products
WHERE Price BETWEEN 500 AND 2000;

+-----------+-------------+---------+-------+
| ProductID | ProductName | Price   | Stock |
+-----------+-------------+---------+-------+
|       201 | Smart Watch | 1800.00 |    20 |
|       203 | Backpack    | 1200.00 |    15 |
+-----------+-------------+---------+-------+
2 rows in set (0.00 sec)

SELECT MAX(Price) AS MostExpensivePrice,
       MIN(Price) AS CheapestPrice
FROM Products;

+--------------------+---------------+
| MostExpensivePrice | CheapestPrice |
+--------------------+---------------+
|            2500.00 |        400.00 |
+--------------------+---------------+
1 row in set (0.00 sec)


-- 4. ORDER DETAILS

CREATE TABLE OrderDetails (
    OrderDetailID INT PRIMARY KEY,
    OrderID INT,
    ProductID INT,
    Quantity INT,
    SubTotal DECIMAL(10,2),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

Query OK, 0 rows affected (0.03 sec)

INSERT INTO OrderDetails (OrderDetailID, OrderID, ProductID, Quantity, SubTotal)
VALUES
(301, 101, 201, 2, 3600.00),
(302, 101, 203, 1, 1200.00),
(303, 102, 202, 2, 5000.00),
(304, 103, 205, 3, 1200.00),
(305, 104, 201, 1, 1800.00);

Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

SELECT * FROM OrderDetails
WHERE OrderID = 101;

+---------------+---------+-----------+----------+----------+
| OrderDetailID | OrderID | ProductID | Quantity | SubTotal |
+---------------+---------+-----------+----------+----------+
|           301 |     101 |       201 |        2 |  3600.00 |
|           302 |     101 |       203 |        1 |  1200.00 |
+---------------+---------+-----------+----------+----------+
2 rows in set (0.00 sec)

SELECT SUM(SubTotal) AS TotalRevenue
FROM OrderDetails;

+--------------+
| TotalRevenue |
+--------------+
|     12800.00 |
+--------------+
1 row in set (0.00 sec)

SELECT ProductID, SUM(Quantity) AS TotalQuantity
FROM OrderDetails
GROUP BY ProductID
ORDER BY TotalQuantity DESC
LIMIT 3;

+-----------+---------------+
| ProductID | TotalQuantity |
+-----------+---------------+
|       201 |             3 |
|       205 |             3 |
|       202 |             2 |
+-----------+---------------+
3 rows in set (0.00 sec)

SELECT COUNT(*) AS TimesSold
FROM OrderDetails
WHERE ProductID = 201;

+-----------+
| TimesSold |
+-----------+
|         2 |
+-----------+
1 row in set (0.00 sec)