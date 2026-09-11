# Project 9 — Pandas Analyzer & Data Visualization

## Objective

Develop a comprehensive Sales Data Analysis and Visualization tool in Python using **Pandas, NumPy, Matplotlib and Seaborn**.

## Requirements Covered

- CSV sales dataset
- Jupyter Notebook
- Pandas DataFrame operations
- NumPy array conversion, indexing and slicing
- Element-wise mathematical operations
- DataFrame concat, merge and join
- Data splitting by region
- Search, sorting and filtering
- Aggregate functions: sum, mean and count
- Statistical analysis: standard deviation, variance, percentiles, quantile and describe
- Pivot table
- GroupBy and transform
- Matplotlib bar, line, scatter, pie, histogram and stack plot
- Matplotlib legends, titles and subplots
- PNG/JPEG visualization saving
- Seaborn heatmap and box plot
- OOP class `SalesDataAnalyzer`
- `__init__` and `__del__`
- Menu-driven interface with choices 1–8

## Project Structure

```text
Project_9/
├── Pandas_Analyzer_Sales_Analysis.ipynb
├── sales_analyzer.py
├── sales_data.csv
├── README.md
├── sales_dashboard.png
├── sales_histogram.png
├── sales_stackplot.png
├── sales_boxplot.png
├── sales_heatmap.png
└── cleaned_sales_data.csv
```

## Installation

Open PowerShell in this folder:

```powershell
pip install jupyter pandas numpy matplotlib seaborn
```

## Run in Jupyter Notebook

```powershell
jupyter notebook
```

Open:

```text
Pandas_Analyzer_Sales_Analysis.ipynb
```

Run the cells from top to bottom.

## Main Menu

```text
1. Load Dataset
2. Explore Data
3. Perform DataFrame Operations
4. Handle Missing Data
5. Generate Descriptive Statistics
6. Data Visualization
7. Save Visualization
8. Exit
```

## Dataset

The included CSV is a synthetic sales dataset created for learning and demonstration. It contains 100 sales records with:

- SalesID
- Date
- Product
- Region
- Sales
- Profit
- Units
- Year

A few missing values are intentionally included so the missing-data handling requirement can be demonstrated.

## Visualizations

The project creates:

1. Sales by Product — Bar Chart
2. Monthly Sales Trend — Line Chart
3. Sales vs Units — Scatter Plot
4. Sales by Region — Pie Chart
5. Sales Distribution — Histogram
6. Top Products — Stack Plot
7. Sales/Profit/Units — Seaborn Box Plot
8. Correlation — Seaborn Heatmap

## Conclusion

This project demonstrates how Pandas can be used to load, clean, manipulate, analyze and summarize sales data. NumPy is used for array operations, while Matplotlib and Seaborn are used to create meaningful visualizations. The menu-driven OOP design keeps the analysis organized and beginner-friendly.