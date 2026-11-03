# 📊 Final Excel Project – Customer Transaction Analysis

### Excel Data Analysis, Customer Insights & Interactive Dashboard

> A practical Excel project created to analyse customer transactions, identify high-value customers, study product and regional performance, perform statistical analysis, and build an interactive dashboard for business reporting.

---

## 👨‍💻 Author

**Jash Dolar**

---

## 🎥 Project Explanation Video

An explanation video can be added here to demonstrate the Excel concepts learned during the course and their practical application in this project.

**Video Link:** Add the Project Explanation Video link here after recording.

---

## 👨‍💻 Project Overview

This final Excel project uses a customer transaction dataset to practise data preparation, formula-based analysis, statistical analysis, What-If Analysis, Pivot Tables, charts, and dashboard reporting.

The objective is to convert transaction-level data into useful information about revenue, customers, products, regions, and purchasing behaviour.

The project covers Excel concepts such as:

- 📅 Date and time functions: `TODAY()`, `NOW()`, `DATEDIF()`, and `EOMONTH()`
- 🔎 Dynamic filtering using `FILTER()`
- 🧮 Customer and product summaries using `UNIQUE()`, `COUNTIF()`, and `SUMIF()`
- 🔍 Lookup and ranking using `XLOOKUP()`, `INDEX()`, `MATCH()`, and `RANK.EQ()`
- 🎨 Conditional Formatting with colour scales, icons, and arrows
- 🔄 What-If Analysis using Scenario Manager and Goal Seek
- 📈 Linear Regression using the Data Analysis ToolPak
- 📊 Descriptive Statistics using the Data Analysis ToolPak
- 🧾 Pivot Tables and Pivot Charts
- 🎛️ Slicers and Timeline filters
- 🔤 Text functions for creating customer abbreviations
- 📌 KPI indicators, business insights, and data storytelling

---

## 📋 Workbook Information

| Item | Details |
|---|---|
| **Project Name** | Final Excel Project – Customer Transaction Analysis |
| **Software** | Microsoft Excel Desktop |
| **File Format** | `.xlsx` |
| **Project Type** | Customer Transaction Analysis & Dashboard Reporting |
| **Source Dataset** | Final Project Dataset |
| **Records** | 250 customer transactions |
| **Columns** | 14 source columns |
| **Date Range** | 11-Apr-2024 to 11-Apr-2025 |

---

## 📚 Workbook Worksheets

### 🗂️ 1. Raw_Data

The **Raw_Data** sheet contains the original customer transaction dataset. The data is formatted as an Excel Table named `Transactions`.

**Source columns include:**

`Transaction_ID` · `Date` · `Customer_ID` · `Customer_Name` · `Product_ID` · `Product_Name` · `Category` · `Quantity` · `Unit_Price` · `Payment_Method` · `Region` · `Customer_Segment` · `Customer_Since` · `Total_Amount`

**Tasks performed:**

1. Imported the 250 transaction records into the workbook.
2. Formatted the source data as an Excel Table.
3. Used the table as the source for formulas and Pivot Tables.
4. Added a `Created_Timestamp` column using `NOW()` with iterative calculation enabled.

---

### 🧮 2. Analysis

The **Analysis** sheet contains formula-based calculations and customer/product analysis.

**Tasks performed:**

1. Linked transaction IDs, dates, customer IDs, and customer-since dates from `Raw_Data`.
2. Calculated customer tenure in completed years using `DATEDIF()` and `TODAY()`.
3. Calculated the end of each transaction month using `EOMONTH()`.
4. Used `FILTER()` to return all transaction records for a selected Customer ID.
5. Used `UNIQUE()` to list distinct products and customers.
6. Used `COUNTIF()` to count the number of transactions for each product and customer.
7. Used `SUMIF()` to calculate total quantity and revenue by product or customer.
8. Identified the most frequently purchased product using a product summary and lookup formulas.
9. Compared the complete customer list with the Premium customer list and returned matching names using `FILTER()` and `COUNTIF()`.
10. Created customer initials using `LEFT()`, `MID()`, `FIND()`, and `UPPER()`.
11. Built a high-value customer summary using `UNIQUE()`, `XLOOKUP()`, `SUMIF()`, `COUNTIF()`, and `RANK.EQ()`.
12. Used Conditional Formatting with icon sets/arrows and Top 10 highlighting to identify high-revenue customers.
13. Prepared a What-If model to estimate revenue under different assumed discount scenarios.
14. Used Scenario Manager to compare discount scenarios of 0%, 5%, 10%, 15%, and 20%.
15. Used Goal Seek to find the discount percentage associated with a target revenue of approximately ₹206,273.22.
16. Prepared Quantity and Total Amount as inputs for Linear Regression and Descriptive Statistics.

**Note:** The Excel version used for this project may not support the `GROUPBY()` function. Customer grouping was therefore performed with a formula-based alternative using `UNIQUE()` and `SUMIF()`.

---

### 📊 3. Visualizations

The **Visualizations** sheet contains Pivot Tables and Pivot Charts created from the `Transactions` table.

**Pivot Table analysis includes:**

1. Total revenue by Region and Category.
2. Total revenue by Region.
3. Monthly revenue grouped by Year and Month.
4. Total revenue by Product Category.

**Pivot Charts created:**

- **Bar Chart:** Revenue by Region.
- **Line Chart:** Monthly Revenue Trend.
- **Pie Chart:** Revenue Contribution by Category.

**Interactive filters:**

- Slicers for Region, Category, and Customer Segment.
- A Timeline based on the transaction Date field.

These Pivot Tables and charts help compare regional performance, category contribution, and monthly revenue trends.

---

### 📈 4. Dashboard

The **Dashboard** sheet brings the important KPIs, charts, filters, and business findings together in one view.

**KPI indicators include:**

- Total Revenue
- Total Transactions
- Unique Customers
- Total Units Sold
- Average Transaction Value
- Top Customer
- Top Customer Revenue
- Most Frequently Purchased Product

**Dashboard visuals and reporting include:**

1. Regional Revenue Bar Chart.
2. Monthly Revenue Trend Line Chart.
3. Revenue Contribution by Category Pie Chart.
4. Region, Category, and Customer Segment slicers.
5. Date Timeline.
6. Summary business insights for management reporting.

---

## 📊 Key Business Insights

The following results were calculated from the 250 transaction records:

| Metric | Result |
|---|---:|
| **Total Revenue** | ₹229,192.47 |
| **Total Transactions** | 250 |
| **Unique Customers** | 50 |
| **Total Units Sold** | 753 |
| **Average Transaction Value** | ₹916.77 |
| **Highest Revenue Region** | East – ₹59,288.39 |
| **Lowest Revenue Region** | South – ₹36,398.75 |
| **Highest Revenue Category** | Electronics – ₹171,756.05 |
| **Top Customer** | Mark Carter – ₹15,659.65 |
| **Most Frequently Purchased Product** | Bookshelf – 35 transactions |
| **Most Units Sold for a Product** | Bookshelf – 102 units |
| **Highest Revenue Product** | Laptop – ₹67,499.25 |

### 🔎 Business Interpretation

- East generated the highest regional revenue, while South generated the lowest.
- Electronics was the leading category by revenue.
- Mark Carter was the highest-revenue customer in the supplied transaction dataset.
- Bookshelf had the highest transaction frequency and the highest total quantity sold.
- Laptop generated the highest revenue among the individual products.

These insights can help identify strong-performing regions and products, understand customer contribution, and highlight areas for further sales improvement.

---

## 📉 Statistical Analysis Results

### Linear Regression

Linear Regression was performed using the Excel Data Analysis ToolPak with **Quantity** as the independent variable (X) and **Total_Amount** as the dependent variable (Y).

| Metric | Result |
|---|---:|
| **Observations** | 250 |
| **R Square** | 0.209838 |
| **Adjusted R Square** | 0.206651 |
| **Quantity Coefficient** | 353.793 |
| **Significance F** | 2.26E-14 |

The model shows a positive relationship between Quantity and Total Amount. Quantity explains approximately 20.98% of the variation in transaction amount in this dataset. This is an association and does not establish causation; transaction amounts also vary by product and unit price.

### Descriptive Statistics

Descriptive Statistics were calculated for Quantity and Total Amount using the Data Analysis ToolPak.

| Statistic | Quantity | Total Amount |
|---|---:|---:|
| **Mean** | 3.012 | 916.7699 |
| **Median** | 3 | 499.98 |
| **Mode** | 3 | 299.98 |
| **Standard Deviation** | 1.336789 | 1,032.453 |
| **Minimum** | 1 | 59.99 |
| **Maximum** | 5 | 4,499.95 |
| **Sum** | 753 | 229,192.47 |
| **Count** | 250 | 250 |

---

## 🔧 Excel Concepts Practiced

### 📅 Date and Time Functions

- `TODAY()` — Returns the current date.
- `NOW()` — Returns the current date and time; used in the timestamp column with iterative calculation.
- `DATEDIF()` — Calculates completed years between two dates.
- `EOMONTH()` — Returns the last date of a month.

### 🔎 Dynamic Array and Lookup Functions

- `FILTER()` — Returns multiple matching transaction or customer records.
- `UNIQUE()` — Returns distinct customer and product values.
- `SORT()` — Sorts a list of unique values.
- `XLOOKUP()` — Retrieves a customer name using Customer ID.
- `INDEX()` and `MATCH()` — Finds and returns the value associated with a matching position.

### 🧮 Counting, Aggregation, and Ranking

- `COUNTIF()` — Counts transactions that match a customer or product.
- `SUMIF()` — Calculates revenue and quantity totals by customer or product.
- `RANK.EQ()` — Ranks customers by total revenue.

### 🔤 Text Functions

- `LEFT()` — Extracts the first character of a name.
- `MID()` — Extracts a character from a specified position.
- `FIND()` — Locates the space between first and last names.
- `UPPER()` — Converts initials to uppercase.

### 📊 Analysis and Reporting Tools

- Conditional Formatting with Top 10 rules and icon sets.
- Scenario Manager and Goal Seek.
- Linear Regression and Descriptive Statistics using the Data Analysis ToolPak.
- Pivot Tables, Pivot Charts, Slicers, and Timeline.
- KPI indicators, business insights, and data storytelling.

---

## 📝 Assumptions and Data Limitations

- The project uses the transaction records provided in the Final Project Dataset.
- The dataset contains 250 transactions, 50 unique Customer IDs, 10 products, 3 categories, and 5 regions.
- The source dataset does not contain an actual discount column or product cost/profit field. The What-If exercise therefore uses an **assumed discount applied to existing revenue**. It estimates revenue as base revenue multiplied by one minus the assumed discount, while holding transaction volume and product mix constant. It is not a profit or margin forecast.
- The Goal Seek target of ₹206,273.22 is an analysis target used for the exercise, not a target supplied in the source data.
- The timestamp created with `NOW()` records the time at which the timestamp formula is first calculated and retained through iterative calculation. It is not the original transaction creation time.
- Customer tenure is calculated from the `Customer_Since` value on each transaction row. The supplied `Customer_Since` date can vary across records for the same Customer ID, so it should not be treated as a single verified customer master date without further data validation.
- Linear Regression uses Quantity to explain variation in Total Amount. Product prices differ, so Quantity alone does not explain all transaction value differences.
- The workbook's `GROUPBY()` concept is implemented through `UNIQUE()` and `SUMIF()` formulas where the `GROUPBY()` function is unavailable in the Excel version used.

---

## 📸 Output Screenshots

Screenshots of the completed Excel worksheets, formula results, statistical reports, Pivot Tables, charts, slicers, Timeline, and Dashboard can be saved in the `output` folder.

The workbook contains the formulas, calculations, and reports, while the screenshots provide a visual reference for reviewing the completed work.

---

## 📁 Project Structure

```text
Final_Project/
│
├── output/
│   ├── Output1.png
│   ├── Output2.png
│   ├── Output3.png
│   └── ...
│
├── Final_Project_Analyzer.xlsx
│
└── README.md
```

Excel may also contain supporting worksheets automatically generated by tools such as Scenario Manager and the Data Analysis ToolPak (for example, Scenario Summary and Descriptive Statistics reports).

---

## 🎯 Learning Outcome

This project provided practical experience in analysing customer transactions using Microsoft Excel. It strengthened the use of date and time functions, dynamic array formulas, lookup and text functions, customer grouping, conditional formatting, What-If Analysis, statistical tools, Pivot Tables, charts, slicers, and dashboard reporting.

The project demonstrates how transaction data can be organised, analysed, and presented as meaningful business information to support better understanding of customers, products, and regional sales performance.
