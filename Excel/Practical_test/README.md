# 📊 Excel Dashboard Project – Supermart Grocery Sales Analysis

### Excel Data Cleaning, Sales Analysis & Interactive Dashboard

> A practical Excel dashboard project created to clean and analyse retail sales data, understand regional and category-wise sales performance, evaluate profit, practise Excel formulas, and build an interactive dashboard for business reporting.

---

## 👨‍💻 Author

**Jash Dolar**

---

## 🎥 Project Explanation Video

An explanation video can be added here to demonstrate the Excel concepts learned during the assessment and their practical application in this project.

---

## 👨‍💻 Project Overview

This Excel project uses the Supermart Grocery Sales – Retail Analytics dataset to practise data cleaning, formula-based analysis, Pivot Tables, data visualization, and interactive dashboard development.

The main objective is to convert raw retail sales data into useful information about sales performance across different regions and product categories.

The project covers Excel concepts such as:

- 🧹 Data cleaning and duplicate removal.
- 🔍 Missing value identification using `COUNTBLANK()`.
- 📅 Date formatting and correction.
- 🧮 Sales and profit calculations using `SUMIF()`.
- 🔎 Data retrieval using `VLOOKUP()`.
- 📌 Lookup analysis using `INDEX()` and `MATCH()`.
- 🔀 Conditional analysis using `IF()` and Nested `IF()`.
- 🎨 Conditional Formatting using colour scales.
- 📊 Pivot Tables for regional and category-wise analysis.
- 📈 Column and bar charts for data visualization.
- 🎛️ Interactive filtering using Slicers.
- 📅 Date filtering using Timeline.
- 📋 Interactive dashboard creation using Excel.

---

## 📋 Workbook Information

| Item                 | Details                                            |
| -------------------- | -------------------------------------------------- |
| **Project Name**     | Excel Dashboard – Supermart Grocery Sales Analysis |
| **Software**         | Microsoft Excel Desktop                            |
| **File Format**      | `.xlsx`                                            |
| **Project Type**     | Retail Sales Analysis & Interactive Dashboard      |
| **Source Dataset**   | Supermart Grocery Sales – Retail Analytics         |
| **Dataset Source**   | Kaggle                                             |
| **Records**          | Approximately 9,994 source records                 |
| **Columns**          | 11                                                 |
| **Excel Table Name** | `CleanData`                                        |

**Dataset Link:** [Supermart Grocery Sales – Retail Analytics](https://www.kaggle.com/datasets/mohamedharris/supermart-grocery-sales-retail-analytics-dataset)

---

## 📚 Workbook Worksheets

### 🗂️ 1. Raw_Data

The **Raw_Data** sheet contains the original imported Supermart Grocery Sales dataset.

**Source columns include:**

`Order ID` · `Customer Name` · `Category` · `Sub Category` · `City` · `Order Date` · `Region` · `Sales` · `Discount` · `Profit` · `State`

**Tasks performed:**

1. Imported the original retail sales dataset into Excel.
2. Preserved the original data for reference.
3. Used the source data to prepare the cleaned working dataset.

---

### 🧹 2. Clean_Data

The **Clean_Data** sheet contains the cleaned and prepared dataset used for analysis.

**Tasks performed:**

1. Created a working copy of the original dataset.
2. Removed duplicate Order IDs.
3. Checked missing values across all 11 columns using `COUNTBLANK()`.
4. Verified that the missing value checks returned zero for all columns.
5. Corrected inconsistent Order Date formats.
6. Converted date values into proper Excel date values.
7. Formatted Sales and Profit as numerical values with two decimal places.
8. Formatted Discount as a percentage.
9. Converted the cleaned data into an Excel Table named `CleanData`.
10. Applied Conditional Formatting to Sales and Profit columns using colour scales.

---

### 🧮 3. Analysis

The **Analysis** sheet contains formula-based calculations and lookup analysis.

**Tasks performed:**

1. Checked missing values in the dataset using `COUNTBLANK()`.
2. Calculated region-wise sales using `SUMIF()`.
3. Categorized sales performance using `IF()`.
4. Retrieved customer names using Order IDs with `VLOOKUP()`.
5. Retrieved sales values using customer names with `INDEX()` and `MATCH()`.
6. Applied Nested `IF()` conditions to categorize sales performance.

**Excel formulas used:**

- `COUNTBLANK()`
- `SUMIF()`
- `VLOOKUP()`
- `INDEX()`
- `MATCH()`
- `IF()`
- Nested `IF()`

---

### 📊 4. Pivot_Region

The **Pivot_Region** sheet contains a Pivot Table for regional sales analysis.

**Analysis performed:**

1. Calculated total sales for each region.
2. Compared sales performance across Central, East, North, South, and West.
3. Identified regional differences in total sales.

**Pivot Table result:**

| Region          |    Total Sales |
| --------------- | -------------: |
| Central         |      3,468,156 |
| East            |      4,248,368 |
| North           |          1,254 |
| South           |      2,440,461 |
| West            |      4,798,743 |
| **Grand Total** | **14,956,982** |

---

### 📊 5. Pivot_Category

The **Pivot_Category** sheet contains a Pivot Table for product category-wise sales analysis.

**Analysis performed:**

1. Calculated total sales for each product category.
2. Compared sales contribution across different categories.
3. Identified the highest and lowest sales categories.

**Pivot Table result:**

| Category          |    Total Sales |
| ----------------- | -------------: |
| Bakery            |      2,112,281 |
| Beverages         |      2,085,313 |
| Eggs, Meat & Fish |      2,267,401 |
| Food Grains       |      2,115,272 |
| Fruits & Veggies  |      2,100,727 |
| Oil & Masala      |      2,038,442 |
| Snacks            |      2,237,546 |
| **Grand Total**   | **14,956,982** |

---

### 📊 6. Pivot_Profit

The **Pivot_Profit** sheet contains a Pivot Table for region-wise profit analysis.

**Analysis performed:**

1. Calculated total profit for each region.
2. Compared regional profit performance.
3. Identified differences in profit contribution across regions.

**Pivot Table result:**

| Region          |     Total Profit |
| --------------- | ---------------: |
| Central         |       856,806.84 |
| East            |     1,074,345.58 |
| North           |           401.28 |
| South           |       623,562.89 |
| West            |     1,192,004.61 |
| **Grand Total** | **3,747,121.20** |

---

### 📈 7. Dashboard

The **Dashboard** sheet brings the important sales and profit visualizations together in one interactive view.

**Dashboard charts include:**

1. **Category-wise Sales Chart:** Compares sales across product categories.
2. **Region-wise Sales Chart:** Compares sales performance across different regions.
3. **Region-wise Profit Chart:** Displays profit performance across regions.

**Interactive dashboard features:**

- Region Slicer for filtering regional data.
- Category Slicer for filtering product categories.
- Order Date Timeline for selecting date ranges.
- Connected Pivot Tables and charts for interactive filtering.
- Dynamic data source using the `CleanData` Excel Table.

These features help users explore sales and profit performance by selecting different regions, categories, and date ranges.

---

### 📝 8. Documentation

The **Documentation** sheet contains a summary of the project.

**Information included:**

1. Dataset information and source.
2. Data cleaning activities.
3. Pivot Table analysis.
4. Excel formulas used.
5. Dashboard charts and interactive features.
6. Tools and Excel concepts used in the project.

---

## 📊 Key Business Insights

The following results were calculated from the cleaned retail sales dataset:

### Sales and Profit Summary

| Metric                       |       Result |
| ---------------------------- | -----------: |
| **Total Sales**              |   14,956,982 |
| **Total Profit**             | 3,747,121.20 |
| **Total Regions**            |            5 |
| **Total Product Categories** |            7 |

### Regional Performance

- **Highest Sales Region:** West – 4,798,743.
- **Lowest Sales Region:** North – 1,254.
- **Highest Profit Region:** West – 1,192,004.61.
- East generated the second-highest regional sales and profit.

### Category Performance

- **Highest Sales Category:** Eggs, Meat & Fish – 2,267,401.
- **Lowest Sales Category:** Oil & Masala – 2,038,442.
- Snacks was the second-highest sales category.

### 🔎 Business Interpretation

- West recorded the highest sales and profit among the five regions.
- Eggs, Meat & Fish generated the highest sales among the seven product categories.
- Regional sales and profit comparisons help identify differences in business performance.
- Category-wise analysis provides a better understanding of product category contribution.

These findings help demonstrate how Excel can be used to understand retail sales performance and prepare reports for business decision-making.

---

## 🔧 Excel Concepts Practiced

### 🧹 Data Cleaning and Preparation

- Remove Duplicates — Removes repeated Order IDs.
- `COUNTBLANK()` — Identifies missing values.
- Date Formatting — Converts dates into consistent Excel date values.
- Number Formatting — Formats Sales and Profit values.
- Percentage Formatting — Displays Discount values as percentages.
- Excel Tables — Organizes the cleaned dataset into a structured table.

### 🧮 Excel Formula Functions

- `SUMIF()` — Calculates sales based on a selected region.
- `VLOOKUP()` — Retrieves customer information using Order ID.
- `INDEX()` — Returns a value from a specified position.
- `MATCH()` — Finds the position of a matching customer name.
- `IF()` — Applies logical conditions to sales values.
- Nested `IF()` — Applies multiple conditions.
- `COUNTBLANK()` — Counts empty cells.

### 🎨 Data Visualization and Formatting

- Conditional Formatting using colour scales.
- Clustered Column Charts.
- Clustered Bar Charts.
- Pivot Tables and Pivot-based analysis.
- Dashboard chart arrangement.

### 🎛️ Interactive Dashboard Tools

- Region Slicer.
- Category Slicer.
- Order Date Timeline.
- Pivot Table Report Connections.
- Excel Table-based dynamic data source.

---

## 📝 Assumptions and Data Limitations

- The project uses the Supermart Grocery Sales – Retail Analytics dataset downloaded from Kaggle.
- The original dataset contains approximately 9,994 records and 11 columns.
- Duplicate Order IDs were removed from the cleaned working dataset.
- Missing value checks returned zero for all 11 columns.
- The original Raw_Data sheet was retained separately from the cleaned working data.
- Sales and Profit are displayed as numerical values, while Discount is displayed as a percentage.
- Pivot Table totals and dashboard results are based on the cleaned dataset.
- The analysis represents the supplied dataset and should not be treated as current market performance.

---

## 📸 Output Screenshots

Screenshots of the completed Excel workbook can be saved in the `output` folder.

Suggested screenshots include:

- Raw_Data sheet.
- Clean_Data sheet after data preparation.
- Analysis sheet with formula results.
- Region-wise Sales Pivot Table.
- Category-wise Sales Pivot Table.
- Region-wise Profit Pivot Table.
- Dashboard with all three charts.
- Dashboard with Region and Category slicers.
- Dashboard with Order Date Timeline.
- Documentation sheet.

The screenshots provide a visual reference for reviewing the completed Excel project and its analysis.

---

## 📁 Project Structure

```text
ExcelDashboard_Project/
│
├── output/
│   ├── Output1.png
│   ├── Output2.png
│   ├── Output3.png
│   ├── Output4.png
│   ├── Output5.png
│   └── ...
│
├── Jash Dolar ExcelDashboard.xlsx
│
└── README.md
```

---

## 🎯 Learning Outcome

This project provided practical experience in analysing retail sales data using Microsoft Excel.

It strengthened my understanding of data cleaning, duplicate removal, missing value checks, date formatting, Excel formulas, lookup functions, Pivot Tables, conditional formatting, charts, slicers, Timeline filters, and interactive dashboard development.

The project demonstrates how raw retail data can be cleaned, analysed, and presented through an interactive Excel dashboard to understand regional sales, product category performance, and profit contribution.

---

**Project Status:** Completed ✅
