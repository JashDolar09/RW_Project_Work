-- DATA TRANSFORMER PROJECT

CREATE DATABASE data_transformer;
USE data_transformer;

-- CREATE CUSTOMERS TABLE

CREATE TABLE Customers (
CustomerID INT PRIMARY KEY,
FirstName VARCHAR(50),
LastName VARCHAR(50),
Email VARCHAR(100),
RegistrationDate DATE
);

INSERT INTO Customers (CustomerID, FirstName, LastName, Email, RegistrationDate)
VALUES
(1, 'John', 'Doe', '[john.doe@email.com](mailto:john.doe@email.com)', '2022-03-15'),
(2, 'Jane', 'Smith', '[jane.smith@email.com](mailto:jane.smith@email.com)', '2021-11-02'),
(3, 'Michael', 'Brown', '[michael.brown@email.com](mailto:michael.brown@email.com)', '2022-06-10'),
(4, 'Emily', 'Davis', '[emily.davis@email.com](mailto:emily.davis@email.com)', '2023-01-25'),
(5, 'David', 'Wilson', '[david.wilson@email.com](mailto:david.wilson@email.com)', '2023-05-18');

SELECT * FROM Customers;

+------------+-----------+----------+-------------------------+------------------+
| CustomerID | FirstName | LastName | Email                   | RegistrationDate |
+------------+-----------+----------+-------------------------+------------------+
|          1 | John      | Doe      | [john.doe@email.com](mailto:john.doe@email.com)      | 2022-03-15       |
|          2 | Jane      | Smith    | [jane.smith@email.com](mailto:jane.smith@email.com)    | 2021-11-02       |
|          3 | Michael   | Brown    | [michael.brown@email.com](mailto:michael.brown@email.com) | 2022-06-10       |
|          4 | Emily     | Davis    | [emily.davis@email.com](mailto:emily.davis@email.com)   | 2023-01-25       |
|          5 | David     | Wilson   | [david.wilson@email.com](mailto:david.wilson@email.com)  | 2023-05-18       |
+------------+-----------+----------+-------------------------+------------------+
5 rows in set (0.02 sec)

-- CREATE ORDERS TABLE

CREATE TABLE Orders (
OrderID INT PRIMARY KEY,
CustomerID INT,
OrderDate DATE,
TotalAmount DECIMAL(10,2),
FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

INSERT INTO Orders (OrderID, CustomerID, OrderDate, TotalAmount)
VALUES
(101, 1, '2023-07-01', 150.50),
(102, 2, '2023-07-03', 200.75),
(103, 3, '2023-07-05', 650.00),
(104, 4, '2023-07-10', 1200.00),
(105, 5, '2023-07-15', 450.25);

SELECT * FROM Orders;

+---------+------------+------------+-------------+
| OrderID | CustomerID | OrderDate  | TotalAmount |
+---------+------------+------------+-------------+
|     101 |          1 | 2023-07-01 |      150.50 |
|     102 |          2 | 2023-07-03 |      200.75 |
|     103 |          3 | 2023-07-05 |      650.00 |
|     104 |          4 | 2023-07-10 |     1200.00 |
|     105 |          5 | 2023-07-15 |      450.25 |
+---------+------------+------------+-------------+
5 rows in set (0.00 sec)

-- CREATE EMPLOYEES TABLE

CREATE TABLE Employees (
EmployeeID INT PRIMARY KEY,
FirstName VARCHAR(50),
LastName VARCHAR(50),
Department VARCHAR(50),
HireDate DATE,
Salary DECIMAL(10,2)
);

INSERT INTO Employees (EmployeeID, FirstName, LastName, Department, HireDate, Salary)
VALUES
(1, 'Mark', 'Johnson', 'Sales', '2020-01-15', 50000.00),
(2, 'Susan', 'Lee', 'HR', '2021-03-20', 55000.00),
(3, 'Robert', 'Patel', 'IT', '2019-07-10', 70000.00),
(4, 'Priya', 'Shah', 'Finance', '2022-02-18', 45000.00),
(5, 'Daniel', 'Clark', 'Sales', '2023-04-05', 60000.00);

SELECT * FROM Employees;

+------------+-----------+----------+------------+------------+----------+
| EmployeeID | FirstName | LastName | Department | HireDate   | Salary   |
+------------+-----------+----------+------------+------------+----------+
|          1 | Mark      | Johnson  | Sales      | 2020-01-15 | 50000.00 |
|          2 | Susan     | Lee      | HR         | 2021-03-20 | 55000.00 |
|          3 | Robert    | Patel    | IT         | 2019-07-10 | 70000.00 |
|          4 | Priya     | Shah     | Finance    | 2022-02-18 | 45000.00 |
|          5 | Daniel    | Clark    | Sales      | 2023-04-05 | 60000.00 |
+------------+-----------+----------+------------+------------+----------+
5 rows in set (0.00 sec)

-- QUERY 1: INNER JOIN

SELECT
o.OrderID,
c.CustomerID,
c.FirstName,
c.LastName,
c.Email,
o.OrderDate,
o.TotalAmount
FROM Orders o
INNER JOIN Customers c
ON o.CustomerID = c.CustomerID;

+---------+------------+-----------+----------+-------------------------+------------+-------------+
| OrderID | CustomerID | FirstName | LastName | Email                   | OrderDate  | TotalAmount |
+---------+------------+-----------+----------+-------------------------+------------+-------------+
|     101 |          1 | John      | Doe      | [john.doe@email.com](mailto:john.doe@email.com)      | 2023-07-01 |      150.50 |
|     102 |          2 | Jane      | Smith    | [jane.smith@email.com](mailto:jane.smith@email.com)    | 2023-07-03 |      200.75 |
|     103 |          3 | Michael   | Brown    | [michael.brown@email.com](mailto:michael.brown@email.com) | 2023-07-05 |      650.00 |
|     104 |          4 | Emily     | Davis    | [emily.davis@email.com](mailto:emily.davis@email.com)   | 2023-07-10 |     1200.00 |
|     105 |          5 | David     | Wilson   | [david.wilson@email.com](mailto:david.wilson@email.com)  | 2023-07-15 |      450.25 |
+---------+------------+-----------+----------+-------------------------+------------+-------------+
5 rows in set (0.01 sec)

-- QUERY 2: LEFT JOIN

SELECT
c.CustomerID,
c.FirstName,
c.LastName,
c.Email,
o.OrderID,
o.OrderDate,
o.TotalAmount
FROM Customers c
LEFT JOIN Orders o
ON c.CustomerID = o.CustomerID;

+------------+-----------+----------+-------------------------+---------+------------+-------------+
| CustomerID | FirstName | LastName | Email                   | OrderID | OrderDate  | TotalAmount |
+------------+-----------+----------+-------------------------+---------+------------+-------------+
|          1 | John      | Doe      | [john.doe@email.com](mailto:john.doe@email.com)      |     101 | 2023-07-01 |      150.50 |
|          2 | Jane      | Smith    | [jane.smith@email.com](mailto:jane.smith@email.com)    |     102 | 2023-07-03 |      200.75 |
|          3 | Michael   | Brown    | [michael.brown@email.com](mailto:michael.brown@email.com) |     103 | 2023-07-05 |      650.00 |
|          4 | Emily     | Davis    | [emily.davis@email.com](mailto:emily.davis@email.com)   |     104 | 2023-07-10 |     1200.00 |
|          5 | David     | Wilson   | [david.wilson@email.com](mailto:david.wilson@email.com)  |     105 | 2023-07-15 |      450.25 |
+------------+-----------+----------+-------------------------+---------+------------+-------------+
5 rows in set (0.00 sec)

-- QUERY 3: RIGHT JOIN

SELECT
o.OrderID,
o.OrderDate,
o.TotalAmount,
c.CustomerID,
c.FirstName,
c.LastName,
c.Email
FROM Orders o
RIGHT JOIN Customers c
ON o.CustomerID = c.CustomerID;

+---------+------------+-------------+------------+-----------+----------+-------------------------+
| OrderID | OrderDate  | TotalAmount | CustomerID | FirstName | LastName | Email                   |
+---------+------------+-------------+------------+-----------+----------+-------------------------+
|     101 | 2023-07-01 |      150.50 |          1 | John      | Doe      | [john.doe@email.com](mailto:john.doe@email.com)      |
|     102 | 2023-07-03 |      200.75 |          2 | Jane      | Smith    | [jane.smith@email.com](mailto:jane.smith@email.com)    |
|     103 | 2023-07-05 |      650.00 |          3 | Michael   | Brown    | [michael.brown@email.com](mailto:michael.brown@email.com) |
|     104 | 2023-07-10 |     1200.00 |          4 | Emily     | Davis    | [emily.davis@email.com](mailto:emily.davis@email.com)   |
|     105 | 2023-07-15 |      450.25 |          5 | David     | Wilson   | [david.wilson@email.com](mailto:david.wilson@email.com)  |
+---------+------------+-------------+------------+-----------+----------+-------------------------+
5 rows in set (0.00 sec)

-- QUERY 4: FULL OUTER JOIN
-- MySQL does not directly support FULL OUTER JOIN

SELECT
c.CustomerID,
c.FirstName,
c.LastName,
o.OrderID,
o.OrderDate,
o.TotalAmount
FROM Customers c
LEFT JOIN Orders o
ON c.CustomerID = o.CustomerID

UNION

SELECT
c.CustomerID,
c.FirstName,
c.LastName,
o.OrderID,
o.OrderDate,
o.TotalAmount
FROM Customers c
RIGHT JOIN Orders o
ON c.CustomerID = o.CustomerID;

+------------+-----------+----------+---------+------------+-------------+
| CustomerID | FirstName | LastName | OrderID | OrderDate  | TotalAmount |
+------------+-----------+----------+---------+------------+-------------+
|          1 | John      | Doe      |     101 | 2023-07-01 |      150.50 |
|          2 | Jane      | Smith    |     102 | 2023-07-03 |      200.75 |
|          3 | Michael   | Brown    |     103 | 2023-07-05 |      650.00 |
|          4 | Emily     | Davis    |     104 | 2023-07-10 |     1200.00 |
|          5 | David     | Wilson   |     105 | 2023-07-15 |      450.25 |
+------------+-----------+----------+---------+------------+-------------+
5 rows in set (0.00 sec)

-- QUERY 5: CUSTOMERS WITH ORDERS ABOVE AVERAGE

SELECT
c.CustomerID,
c.FirstName,
c.LastName,
o.TotalAmount
FROM Customers c
JOIN Orders o
ON c.CustomerID = o.CustomerID
WHERE o.TotalAmount > (
SELECT AVG(TotalAmount)
FROM Orders
);

+------------+-----------+----------+-------------+
| CustomerID | FirstName | LastName | TotalAmount |
+------------+-----------+----------+-------------+
|          3 | Michael   | Brown    |      650.00 |
|          4 | Emily     | Davis    |     1200.00 |
+------------+-----------+----------+-------------+
2 rows in set (0.00 sec)

-- QUERY 6: EMPLOYEES WITH ABOVE AVERAGE SALARY

SELECT
EmployeeID,
FirstName,
LastName,
Department,
Salary
FROM Employees
WHERE Salary > (
SELECT AVG(Salary)
FROM Employees
);

+------------+-----------+----------+------------+----------+
| EmployeeID | FirstName | LastName | Department | Salary   |
+------------+-----------+----------+------------+----------+
|          3 | Robert    | Patel    | IT         | 70000.00 |
|          5 | Daniel    | Clark    | Sales      | 60000.00 |
+------------+-----------+----------+------------+----------+
2 rows in set (0.00 sec)

-- QUERY 7: EXTRACT YEAR AND MONTH

SELECT
OrderID,
OrderDate,
YEAR(OrderDate) AS OrderYear,
MONTH(OrderDate) AS OrderMonth
FROM Orders;

+---------+------------+-----------+------------+
| OrderID | OrderDate  | OrderYear | OrderMonth |
+---------+------------+-----------+------------+
|     101 | 2023-07-01 |      2023 |          7 |
|     102 | 2023-07-03 |      2023 |          7 |
|     103 | 2023-07-05 |      2023 |          7 |
|     104 | 2023-07-10 |      2023 |          7 |
|     105 | 2023-07-15 |      2023 |          7 |
+---------+------------+-----------+------------+
5 rows in set (0.00 sec)

-- QUERY 8: DIFFERENCE IN DAYS

SELECT
OrderID,
OrderDate,
DATEDIFF(CURDATE(), OrderDate) AS DaysDifference
FROM Orders;

+---------+------------+----------------+
| OrderID | OrderDate  | DaysDifference |
+---------+------------+----------------+
|     101 | 2023-07-01 |           1193 |
|     102 | 2023-07-03 |           1191 |
|     103 | 2023-07-05 |           1189 |
|     104 | 2023-07-10 |           1184 |
|     105 | 2023-07-15 |           1179 |
+---------+------------+----------------+
5 rows in set (0.00 sec)

-- QUERY 9: FORMAT ORDER DATE

SELECT
OrderID,
OrderDate,
DATE_FORMAT(OrderDate, '%d-%b-%Y') AS FormattedOrderDate
FROM Orders;

+---------+------------+--------------------+
| OrderID | OrderDate  | FormattedOrderDate |
+---------+------------+--------------------+
|     101 | 2023-07-01 | 01-Jul-2023        |
|     102 | 2023-07-03 | 03-Jul-2023        |
|     103 | 2023-07-05 | 05-Jul-2023        |
|     104 | 2023-07-10 | 10-Jul-2023        |
|     105 | 2023-07-15 | 15-Jul-2023        |
+---------+------------+--------------------+
5 rows in set (0.00 sec)

-- QUERY 10: CONCAT FIRST NAME AND LAST NAME

SELECT
CustomerID,
CONCAT(FirstName, ' ', LastName) AS FullName
FROM Customers;

+------------+---------------+
| CustomerID | FullName      |
+------------+---------------+
|          1 | John Doe      |
|          2 | Jane Smith    |
|          3 | Michael Brown |
|          4 | Emily Davis   |
|          5 | David Wilson  |
+------------+---------------+
5 rows in set (0.00 sec)

-- QUERY 11: REPLACE JOHN WITH JONATHAN

SELECT
CustomerID,
FirstName,
REPLACE(FirstName, 'John', 'Jonathan') AS UpdatedFirstName
FROM Customers;

+------------+-----------+------------------+
| CustomerID | FirstName | UpdatedFirstName |
+------------+-----------+------------------+
|          1 | John      | Jonathan         |
|          2 | Jane      | Jane             |
|          3 | Michael   | Michael          |
|          4 | Emily     | Emily            |
|          5 | David     | David            |
+------------+-----------+------------------+
5 rows in set (0.00 sec)

-- QUERY 12: UPPERCASE AND LOWERCASE

SELECT
CustomerID,
UPPER(FirstName) AS UpperFirstName,
LOWER(LastName) AS LowerLastName
FROM Customers;

+------------+----------------+---------------+
| CustomerID | UpperFirstName | LowerLastName |
+------------+----------------+---------------+
|          1 | JOHN           | doe           |
|          2 | JANE           | smith         |
|          3 | MICHAEL        | brown         |
|          4 | EMILY          | davis         |
|          5 | DAVID          | wilson        |
+------------+----------------+---------------+
5 rows in set (0.00 sec)

-- QUERY 13: TRIM EMAIL

SELECT
CustomerID,
TRIM(Email) AS CleanEmail
FROM Customers;

+------------+-------------------------+
| CustomerID | CleanEmail              |
+------------+-------------------------+
|          1 | [john.doe@email.com](mailto:john.doe@email.com)      |
|          2 | [jane.smith@email.com](mailto:jane.smith@email.com)    |
|          3 | [michael.brown@email.com](mailto:michael.brown@email.com) |
|          4 | [emily.davis@email.com](mailto:emily.davis@email.com)   |
|          5 | [david.wilson@email.com](mailto:david.wilson@email.com)  |
+------------+-------------------------+
5 rows in set (0.00 sec)

-- QUERY 14: RUNNING TOTAL

SELECT
OrderID,
OrderDate,
TotalAmount,
SUM(TotalAmount) OVER (
ORDER BY OrderDate, OrderID
) AS RunningTotal
FROM Orders;

+---------+------------+-------------+--------------+
| OrderID | OrderDate  | TotalAmount | RunningTotal |
+---------+------------+-------------+--------------+
|     101 | 2023-07-01 |      150.50 |       150.50 |
|     102 | 2023-07-03 |      200.75 |       351.25 |
|     103 | 2023-07-05 |      650.00 |      1001.25 |
|     104 | 2023-07-10 |     1200.00 |      2201.25 |
|     105 | 2023-07-15 |      450.25 |      2651.50 |
+---------+------------+-------------+--------------+
5 rows in set (0.00 sec)

-- QUERY 15: RANK ORDERS BY TOTAL AMOUNT

SELECT
OrderID,
TotalAmount,
RANK() OVER (
ORDER BY TotalAmount DESC
) AS OrderRank
FROM Orders;

+---------+-------------+-----------+
| OrderID | TotalAmount | OrderRank |
+---------+-------------+-----------+
|     104 |     1200.00 |         1 |
|     103 |      650.00 |         2 |
|     105 |      450.25 |         3 |
|     102 |      200.75 |         4 |
|     101 |      150.50 |         5 |
+---------+-------------+-----------+
5 rows in set (0.00 sec)

-- QUERY 16: DISCOUNT USING CASE

SELECT
OrderID,
TotalAmount,
CASE
WHEN TotalAmount > 1000 THEN 10
WHEN TotalAmount > 500 THEN 5
ELSE 0
END AS DiscountPercent
FROM Orders;

+---------+-------------+-----------------+
| OrderID | TotalAmount | DiscountPercent |
+---------+-------------+-----------------+
|     101 |      150.50 |               0 |
|     102 |      200.75 |               0 |
|     103 |      650.00 |               5 |
|     104 |     1200.00 |              10 |
|     105 |      450.25 |               0 |
+---------+-------------+-----------------+
5 rows in set (0.00 sec)

-- QUERY 17: EMPLOYEE SALARY CATEGORY

-- Assumption:
-- High = 60000 or more
-- Medium = 50000 to 59999
-- Low = below 50000

SELECT
EmployeeID,
FirstName,
LastName,
Salary,
CASE
WHEN Salary >= 60000 THEN 'High'
WHEN Salary >= 50000 THEN 'Medium'
ELSE 'Low'
END AS SalaryCategory
FROM Employees;

+------------+-----------+----------+----------+----------------+
| EmployeeID | FirstName | LastName | Salary   | SalaryCategory |
+------------+-----------+----------+----------+----------------+
|          1 | Mark      | Johnson  | 50000.00 | Medium         |
|          2 | Susan     | Lee      | 55000.00 | Medium         |
|          3 | Robert    | Patel    | 70000.00 | High           |
|          4 | Priya     | Shah     | 45000.00 | Low            |
|          5 | Daniel    | Clark    | 60000.00 | High           |
+------------+-----------+----------+----------+----------------+
5 rows in set (0.00 sec)
