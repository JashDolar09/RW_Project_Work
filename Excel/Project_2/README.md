# 📊 Excel Project 2 – Analyzer

### Advanced Excel, Statistical Analysis & Dashboard Reporting

> A practical Excel project created to analyse sales data, identify high-value customers, perform statistical analysis, evaluate discount scenarios, and present business insights through Pivot Tables, charts, and a dashboard.

---

## 👨‍💻 Author

**Jash Dolar**

---

## 🎥 Project Explanation Video

An explanation video will be added after the project walkthrough is recorded. It will demonstrate the Excel techniques used in this project, the analysis performed, and the final dashboard.

**Video Link:** "https://drive.google.com/file/d/1Ld2pSR0mGD1Mbwiklxz5mcyaoDfc8eDa/view?usp=sharing"

---

## 👨‍💻 Project Overview

This project was created to practise **advanced Excel data analysis and reporting techniques** using a sales dataset provided for the assignment.

The dataset contains **200 sales records** and the following nine fields:

- Customer ID
- Customer Name
- Region
- Product Category
- Sales
- Quantity
- Discount
- Order Date
- Profit

The project covers the following Excel concepts:

- 🎨 Conditional Formatting – highlight the top 10 customers by total sales.
- 📊 What-If Analysis – estimate the effect of different discount scenarios on profit.
- 📈 Linear Regression – analyse the relationship between Sales and Profit.
- 📋 Descriptive Statistics – summarise Sales and Profit using the Analysis ToolPak.
- 🔢 Custom Number Formatting – display positive and negative monthly sales growth with arrows.
- 🕒 Date and Time – create a timestamp using `NOW()`.
- 🔍 Customer Analysis – use `UNIQUE()`, `SUMIF()`, `COUNTIF()`, `XLOOKUP()`, `INDEX()`, and `MATCH()`.
- 📌 Pivot Tables – analyse sales by region and product category.
- 📊 Charts – create bar, line, and pie charts to visualise sales information.
- 📍 Dashboard and Data Storytelling – present KPIs and key business insights.

---

## 📋 Workbook Information

| Item | Details |
|---|---|
| **Project Name** | Excel Project 2 – Analyzer |
| **Software** | Microsoft Excel Desktop |
| **File Format** | `.xlsx` |
| **Project Type** | Sales Data Analysis, Statistical Analysis & Dashboard Reporting |
| **Dataset Size** | 200 sales records |
| **Source Columns** | 9 columns, plus a timestamp column added in the workbook |
| **Analysis Tool** | Excel Analysis ToolPak |

---

## 📚 Worksheets

### 🗂️ 1. Raw_Data

The **Raw_Data** sheet contains the original 200 sales records provided for the assignment.

**Columns include:**

`Customer_ID` · `Customer_Name` · `Region` · `Product_Category` · `Sales` · `Quantity` · `Discount` · `Order_Date` · `Profit`

**Tasks performed:**

1. Preserve the original sales records for analysis.
2. Add a `Timestamp` column using `NOW()`.
3. Format the timestamp to display the date and time.

### 👥 2. Analysis

The **Analysis** sheet summarises sales information by Customer ID.

**Columns include:**

`Customer_ID` · `Customer_Name` · `Total_Sales` · `Total_Profit` · `Total_Orders` · `Sales_Rank`

**Tasks performed:**

1. Generate a customer list using `UNIQUE()`.
2. Calculate customer-wise sales using `SUMIF()`.
3. Retrieve customer names using `XLOOKUP()`.
4. Calculate customer-wise profit using `SUMIF()`.
5. Count customer records using `COUNTIF()`.
6. Rank customers by total sales using `RANK.EQ()`.
7. Highlight the top 10 customers using Conditional Formatting.
8. Identify the highest-value customer using `INDEX()` and `MATCH()`.
9. Use filters to review customer results and rankings.

### 💰 3. What_If_Analysis

The **What_If_Analysis** sheet compares estimated profit under different discount scenarios.

**Tasks performed:**

1. Prepare discount scenarios of 0%, 5%, 10%, 15%, 20%, and 25%.
2. Calculate total sales and current total profit.
3. Calculate the sales-weighted average discount using `SUMPRODUCT()`.
4. Estimate profit for each discount scenario.
5. Compare the estimated results to understand how changing the discount may affect profit.

### 📈 4. Linear Regression

The **Linear Regression** sheet contains the Sales and Profit data used for statistical analysis.

**Tasks performed:**

1. Prepare the 200 Sales and Profit observations.
2. Run Linear Regression using the Excel Analysis ToolPak.
3. Review Regression Statistics, ANOVA, and coefficient results.
4. Run Descriptive Statistics for Sales and Profit.
5. Review mean, median, standard deviation, variance, minimum, maximum, range, sum, and count.

**Linear Regression result:**

| Metric | Result |
|---|---:|
| Observations | 200 |
| Multiple R | 0.773403 |
| R Square | 0.598152 |
| Adjusted R Square | 0.596123 |
| Sales Coefficient | 0.350856 |
| Intercept | -1.03155 |

The model shows a positive relationship between Sales and Profit. The R Square value indicates that approximately **59.82% of the variation in Profit** is explained by Sales in this linear model. This describes an association in the dataset and does not by itself establish causation.

### 📅 5. Monthly_Analysis

The **Monthly_Analysis** sheet summarises monthly sales and compares each month with the previous month.

**Columns include:**

`Month` · `Monthly_Sales` · `Previous_Month_Sales` · `Sales_Growth`

**Tasks performed:**

1. Prepare the monthly periods using `EDATE()`.
2. Calculate monthly sales using `SUMIFS()`.
3. Retrieve previous-month sales.
4. Calculate month-over-month sales growth.
5. Apply Percentage formatting.
6. Use Custom Number Formatting to display green upward arrows for positive growth and red downward arrows for negative growth.
7. Create a monthly sales line chart.

### 📊 6. Pivot_Analysis

The **Pivot_Analysis** sheet contains a Pivot Table that summarises total sales by region and product category.

**Tasks performed:**

1. Create a Pivot Table from the Raw_Data dataset.
2. Place Region in Rows, Product Category in Columns, and Sales in Values.
3. Summarise Sales using Sum.
4. Compare regional sales and product-category sales.
5. Create a bar chart to visualise sales by region and product category.
6. Prepare product-category sales totals for the category contribution chart.

**Key Pivot Table results:**

| Analysis | Result |
|---|---:|
| Total Sales | 195,217.76 |
| Highest Sales Region | West – 44,083.58 |
| Lowest Sales Region | East – 32,441.64 |
| Highest Sales Category | Books – 47,002.46 |
| Lowest Sales Category | Office Supplies – 28,630.82 |

### 📍 7. Dashboard

The **Dashboard** sheet brings together the main project KPIs and business insights in one place.

**KPIs include:**

- Total Sales: 195,217.76
- Total Profit: 68,287.01
- Total Records: 200
- Unique Customers: 30
- Average Discount: 9.73%
- Total Quantity: 1,999

**Business insights include:**

1. West is the highest-sales region.
2. East is the lowest-sales region.
3. Books is the highest-sales product category.
4. Office Supplies is the lowest-sales product category.
5. Total recorded sales are 195,217.76.

The dashboard is intended to display the regional sales bar chart, monthly sales line chart, and product-category sales pie chart. Before final submission, check that all three corrected charts are visible on the Dashboard.

---

## 🔧 Excel Concepts Practiced

### 🎨 Conditional Formatting and Custom Formatting

- Conditional Formatting – highlight the top 10 customer sales values.
- Custom Number Formatting – display positive and negative growth with up/down arrows.

### 🧮 Calculation and Summary Functions

- `SUM()` – calculate total sales and profit.
- `SUMIF()` – calculate totals for each customer.
- `SUMIFS()` – calculate monthly sales using date conditions.
- `COUNTIF()` – count records for each customer.
- `COUNT()` and `COUNTA()` – check numeric and non-empty records.
- `AVERAGE()` – calculate average discount.
- `SUMPRODUCT()` – calculate the sales-weighted average discount.

### 🔍 Lookup and Ranking Functions

- `UNIQUE()` – return a list of unique Customer IDs.
- `XLOOKUP()` – retrieve a customer name from the source data.
- `INDEX()` and `MATCH()` – identify the highest-value customer.
- `RANK.EQ()` – rank customers by total sales.

### 📅 Date and Time Functions

- `NOW()` – create a current date-and-time timestamp.
- `EDATE()` – move between monthly dates.
- `SUMIFS()` with date criteria – calculate monthly sales.

### 📊 Statistical Analysis

- Linear Regression using the Analysis ToolPak.
- Descriptive Statistics using the Analysis ToolPak.
- Interpretation of R Square, coefficients, and regression significance.

### 📈 Data Visualisation and Reporting

- Pivot Tables – summarise sales by region and product category.
- Bar Charts – compare sales across regions and categories.
- Line Charts – show monthly sales trends.
- Pie Charts – show product-category sales contribution.
- Dashboard – present KPIs and business insights.

---

## 📝 Assumptions and Data Limitations

- The project uses the 200 sales records provided for the assignment.
- Customer ID is used as the main customer identifier when summarising customer sales and profit.
- Some Customer IDs in the source data are associated with more than one Customer Name. The customer summary is therefore grouped by Customer ID; `XLOOKUP()` returns the first matching name for display. These name inconsistencies should be reviewed before using the results for real business decisions.
- The `GROUPBY()` function was not available in the installed Excel version. Customer summaries were created using compatible functions such as `UNIQUE()` and `SUMIF()` instead.
- The What-If Analysis is an estimate. It assumes sales volume and costs remain unchanged while the discount changes. It is not a complete financial forecast.
- The discount scenarios use the sales-weighted average discount as the current comparison point.
- The timestamp created with `NOW()` is a volatile formula and may update when Excel recalculates the workbook. It is not a fixed historical timestamp.
- The dataset covers April 2024 to April 2025. The April 2025 data is partial, with records only through 7 April 2025, so the last month's sales should not be compared with full months without considering this limitation.
- Regression results describe the relationship between Sales and Profit in the supplied dataset. They do not prove that changes in Sales cause changes in Profit.

---

## 📁 Project Files

The Excel workbook contains the original dataset, customer analysis, What-If calculations, statistical analysis, monthly sales analysis, Pivot Table, charts, and dashboard.

The completed workbook is saved in `.xlsx` format so that the formulas, worksheets, Pivot Table, and analysis results can be reviewed in Microsoft Excel Desktop.

---

## 📸 Output Screenshots

Screenshots of the completed Excel worksheets and analysis results can be included in the `Output` folder.

Suggested screenshots:

- Raw_Data with the timestamp column.
- Analysis with customer totals, rankings, and Top 10 Conditional Formatting.
- What_If_Analysis with discount scenarios and estimated profit.
- Linear Regression report and Descriptive Statistics output.
- Monthly_Analysis with sales growth and arrows.
- Pivot_Analysis with the regional and product-category Pivot Table.
- Dashboard with KPIs, charts, and business insights.

The workbook contains the formulas and calculations, while the screenshots provide a visual reference for reviewing the work.

---

## 📁 Project Structure

```text
Project_2/
│
├── Output/
│   ├── Output1.png
│   ├── Output2.png
│   ├── Output3.png
│   └── ...
│
├── Project_2_Analyzer.xlsx
│
└── README.md
```

---

## 🎯 Learning Outcome

This project provides practical experience with Excel customer analysis, Conditional Formatting, What-If Analysis, statistical tools, Linear Regression, Descriptive Statistics, date and time functions, Pivot Tables, charts, and dashboard reporting.

It demonstrates how Excel can be used to organise sales data, calculate customer-wise performance, examine monthly trends, analyse relationships between business measures, compare discount scenarios, and communicate key findings through visual reports.
