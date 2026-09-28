# 📊 Data Digger

### E-Commerce Store Database Project

> A practical MySQL project for managing customers, orders, products, and order details using a structured relational database.

---

## 👨‍💻 Author

**Jash Dolar**

---

## 🎯 Project Objective

The **Data Digger** project is designed to create and manage a relational database for an **E-Commerce Store** using MySQL.

The project demonstrates practical SQL operations including:

* 🗄️ Database and table creation
* 🔑 Primary Keys and Foreign Keys
* ➕ Insert records
* 🔍 Retrieve records
* ✏️ Update records
* 🗑️ Delete records
* ↕️ Sorting and filtering
* 📈 Aggregate functions
* 📊 Grouping and ordering data

---

## 🗃️ Database Information

| Item                | Details             |
| ------------------- | ------------------- |
| **Database Name**   | `data_digger`       |
| **Database System** | MySQL               |
| **Project Type**    | Relational Database |
| **Domain**          | E-Commerce Store    |

---

## 📋 Database Tables

### 👤 1. Customers

Stores information about customers.

**Fields:**

`CustomerID` · `Name` · `Email` · `Address`

---

### 🛒 2. Orders

Stores customer order information.

**Fields:**

`OrderID` · `CustomerID` · `OrderDate` · `TotalAmount`

**Relationship:**
`CustomerID` → `Customers.CustomerID`

---

### 📦 3. Products

Stores product information.

**Fields:**

`ProductID` · `ProductName` · `Price` · `Stock`

---

### 🧾 4. OrderDetails

Stores the products and quantities included in each order.

**Fields:**

`OrderDetailID` · `OrderID` · `ProductID` · `Quantity` · `SubTotal`

**Relationships:**

`OrderID` → `Orders.OrderID`
`ProductID` → `Products.ProductID`

---

## 🔧 SQL Operations

### 👤 Customers

* Insert sample customers
* Display all customers
* Update customer address
* Delete customer using `CustomerID`
* Find customers named **Alice**

### 🛒 Orders

* Insert sample orders
* Find orders for a specific customer
* Update order amount
* Delete an order using `OrderID`
* Find orders from the last 30 days
* Find highest, lowest, and average order amounts

### 📦 Products

* Insert sample products
* Sort products by price
* Update product price
* Delete an out-of-stock product
* Find products priced between 500 and 2000
* Find the most expensive and cheapest product

### 🧾 OrderDetails

* Insert sample order details
* Find details for a specific order
* Calculate total revenue
* Find the top 3 most ordered products
* Count sales of a specific product

---

## 📊 SQL Functions Used

| Function / Clause | Purpose                       |
| ----------------- | ----------------------------- |
| `MAX()`           | Find maximum value            |
| `MIN()`           | Find minimum value            |
| `AVG()`           | Calculate average             |
| `SUM()`           | Calculate total               |
| `COUNT()`         | Count records                 |
| `WHERE`           | Filter records                |
| `BETWEEN`         | Filter a value within a range |
| `ORDER BY`        | Sort records                  |
| `GROUP BY`        | Group records                 |
| `LIMIT`           | Limit the number of results   |

---

## 📁 Project Structure

```text
Data_Digger/
│
├── data_digger.sql
│
└── README.md
```

---

## ▶️ How to Run

### 1. Open MySQL

Open the MySQL Command Line Client.

### 2. Select the database

```sql
USE data_digger;
```

### 3. Run the SQL file

Execute the queries from:

```text
data_digger.sql
```

The SQL file contains the **database setup, table creation, sample data, required queries, and their outputs**.

---

## 🛠️ Tools Used

**MySQL** · **SQL** · **MySQL Command Line Client**

---

## ✅ Project Status

**Completed**

---

<div align="center">

### 📊 Data Digger

**E-Commerce Store Database**

**Created by Jash Dolar**

</div>