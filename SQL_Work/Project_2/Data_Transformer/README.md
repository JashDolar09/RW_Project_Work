# 🔄 Data Transformer

### MySQL Data Analysis & Transformation Project

> A practical MySQL project created to practice SQL operations used for data analysis and data transformation.

---
## 👨‍💻 Author

**Jash Dolar**

---

## 👨‍💻 Project Overview

The **Data Transformer** project is a MySQL project created to practice SQL operations used for **data analysis and data transformation**.

The project works with three tables:

* 👤 Customers
* 🛒 Orders
* 👨‍💼 Employees

The project covers SQL concepts such as:

* 🔗 INNER JOIN
* ⬅️ LEFT JOIN
* ➡️ RIGHT JOIN
* 🔄 FULL OUTER JOIN equivalent
* 🔍 Subqueries
* 📅 Date functions
* 🔤 String functions
* 📊 Window functions
* 🏆 RANK()
* 📈 Running totals
* 🧠 CASE statements

---

## 🗃️ Database Information

| Item                | Details                     |
| ------------------- | --------------------------- |
| **Database Name**   | `data_transformer`          |
| **Database System** | MySQL                       |
| **Project Type**    | Data Analysis & Transformation |

---

## 📋 Database Tables

### 👤 1. Customers

The **Customers** table contains customer information.

**Columns:**

`CustomerID` · `FirstName` · `LastName` · `Email` · `RegistrationDate`

**Total Records:** **5**

---

### 🛒 2. Orders

The **Orders** table contains sales order information.

**Columns:**

`OrderID` · `CustomerID` · `OrderDate` · `TotalAmount`

**Total Records:** **5**

**Relationship:**

`CustomerID` → `Customers.CustomerID`

The `CustomerID` column is connected to the Customers table using a foreign key.

---

### 👨‍💼 3. Employees

The **Employees** table contains employee information.

**Columns:**

`EmployeeID` · `FirstName` · `LastName` · `Department` · `HireDate` · `Salary`

**Total Records:** **5**

---

## 🔧 SQL Tasks Performed

### 🔗 Joins

1. **INNER JOIN** - Display orders with customer details.
2. **LEFT JOIN** - Display all customers with their corresponding orders.
3. **RIGHT JOIN** - Display all orders with their corresponding customers.
4. **FULL OUTER JOIN** - Display all customers and orders using LEFT JOIN, RIGHT JOIN and UNION because MySQL does not directly support FULL OUTER JOIN.

---

### 🔍 Subqueries

5. Find customers who placed orders above the average order amount.
6. Find employees whose salary is above the average salary.

---

### 📅 Date Functions

7. Extract the year and month from `OrderDate`.
8. Calculate the difference in days between `OrderDate` and the current date.
9. Format `OrderDate` as `DD-MMM-YYYY`.

---

### 🔤 String Functions

10. Combine `FirstName` and `LastName` using `CONCAT()`.
11. Replace John with Jonathan.
12. Convert `FirstName` to uppercase and `LastName` to lowercase.
13. Remove extra spaces from Email using `TRIM()`.

---

### 📊 Window Functions

14. Calculate the running total of order amounts.
15. Rank orders according to `TotalAmount` using `RANK()`.

---

### 🧠 CASE Statements

16. Calculate discount percentage based on order amount.
17. Categorize employee salaries as High, Medium or Low.

---

## 📝 Assumptions

The assignment provided two sample records for each table.

For this project, three additional records were added to each table so that every table contains five records.

### 💰 Salary Categories

| Category | Salary Range |
| -------- | ------------ |
| **High** | 60000 or more |
| **Medium** | 50000 to 59999 |
| **Low** | below 50000 |

### 🏷️ Discount Rules

| Order Amount | Discount |
| ------------ | -------- |
| **Above 1000** | 10% discount |
| **Above 500** | 5% discount |
| **500 or below** | No discount |

These assumptions were made to complete and demonstrate the required SQL tasks.

---

## 📁 SQL File

The `data_transformer.sql` file contains:

* 🗄️ Database creation
* 🏗️ Table creation
* ➕ Data insertion
* 🔧 All required SQL queries
* 📊 Query results in a readable format

All SQL tasks were performed by me personally.

The queries in the `.sql` file are the queries that were run during the project. The SQL statements and outputs have also been formatted in a clean and readable way so that the work is easy to understand and review.

---

## 📸 Output Screenshots

The actual queries were executed in MySQL.

The real outputs from MySQL have been captured as screenshots and placed inside the `Output` folder.

The screenshots are included as proof of the actual execution and results of the SQL queries.

The `.sql` file is used for the complete SQL work, while the screenshots in the `Output` folder show the actual MySQL execution results.

---

## 📁 Project Structure

```text
Data_Transformer/
│
├── Output/
│   ├── Output1.png
│   ├── Output2.png
│   ├── Output3.png
│   └── ...
│
├── data_transformer.sql
│
└── README.md
