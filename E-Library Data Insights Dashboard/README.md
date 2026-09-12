# 📚 E-Library Data Insights Dashboard

> A Python-based data analysis dashboard for exploring library borrowing activity, identifying popular books and genres, analyzing user activity, and discovering borrowing trends over time.

---

## 📌 Project Overview

The **E-Library Data Insights Dashboard** is a Python data-analysis project designed to process and analyze library transaction data.

The dashboard combines **Object-Oriented Programming, Control Structures, NumPy, Pandas, Matplotlib, and Seaborn** to transform raw library transaction data into meaningful statistics, reports, and visualizations.

The project provides insights into:

* 📖 Most borrowed books
* 👥 User borrowing activity
* 📚 Genre popularity
* 📅 Borrowing trends over time
* ⏱️ Borrowing duration
* 🗓️ Busiest borrowing days
* ⚠️ Late returns
* 🔥 Frequent borrowers

---

## 🎯 Objectives

The main objectives of this project are to:

1. Process library transaction data from a CSV file.
2. Validate and clean the dataset.
3. Analyze book, genre, and user borrowing patterns.
4. Calculate borrowing duration statistics using NumPy.
5. Perform data manipulation and aggregation using Pandas.
6. Generate useful library reports.
7. Create professional data visualizations using Matplotlib and Seaborn.
8. Apply Object-Oriented Programming concepts to the dashboard.

---

## 🛠️ Technologies & Libraries

| Technology    | Purpose                                        |
| ------------- | ---------------------------------------------- |
| 🐍 Python     | Core programming language                      |
| 🐼 Pandas     | Data loading, cleaning, filtering and analysis |
| 🔢 NumPy      | Numerical and statistical calculations         |
| 📊 Matplotlib | Data visualization                             |
| 🎨 Seaborn    | Statistical visualization and heatmaps         |

---

## 📂 Project Structure

```text
E-Library Data Insights Dashboard/
│
├── 📄 library_dashboard.py
├── 📄 library_transactions.csv
├── 📄 README.md
│
└── 📁 output/
    ├── 📊 top_5_books.png
    ├── 📈 monthly_borrowing_trends.png
    ├── 🥧 genre_distribution.png
    ├── 🔥 borrowing_activity_heatmap.png
    └── 📄 library_summary_report.txt
```

---

## 📊 Dataset

The project uses an **AI-generated sample dataset** named:

```text
library_transactions.csv
```

The dataset contains **100 library transaction records**.

### Dataset Columns

| Column                      | Description                          |
| --------------------------- | ------------------------------------ |
| `Transaction ID`            | Unique ID for each transaction       |
| `Date`                      | Date of the borrowing transaction    |
| `User ID`                   | Unique library user identifier       |
| `Book Title`                | Name of the borrowed book            |
| `Genre`                     | Genre/category of the book           |
| `Borrowing Duration (Days)` | Number of days the book was borrowed |

The program also creates additional analysis fields:

| Generated Column    | Purpose                                                  |
| ------------------- | -------------------------------------------------------- |
| `Day`               | Day of the week calculated from the transaction date     |
| `Time`              | Borrowing activity time used for time-based analysis     |
| `Late Return`       | Identifies borrowing duration above the 14-day threshold |
| `Frequent Borrower` | Identifies users with 3 or more transactions             |

---

# ✨ Features

## 1. 📥 Data Input & Validation

The dashboard validates the input dataset before analysis.

It checks:

* CSV file availability
* File format
* Required columns
* Invalid dates
* Invalid borrowing durations
* Missing values
* Duplicate records

---

## 2. 🧹 Data Cleaning

The project handles common data-quality problems using Pandas.

The cleaning process included:

* Removing duplicate rows
* Handling missing values
* Filling missing numerical values using the median
* Filling missing categorical values using the mode
* Removing invalid negative borrowing durations

---

## 3. 📊 Dataset Exploration

The dashboard provides basic dataset exploration including:

* First five records
* Dataset shape
* Data types
* Missing-value count
* Duplicate-row count

---

## 4. 🧮 Statistical Analysis

NumPy and Pandas are used to calculate important statistics such as:

* Average borrowing duration
* Standard deviation
* Most borrowed book
* Busiest borrowing day
* Total transactions
* Total users
* Total books
* Total genres
* Late returns

---

## 5. 🔎 Transaction Filtering

Users can filter library transactions based on:

* Genre
* Date range
* Borrowing duration
* Book title

This makes it easier to investigate specific parts of the dataset.

---

## 6. 👥 Grouped Data Analysis

The dashboard performs grouped analysis for:

* Borrowings by genre
* Borrowings by user
* Total borrowings per book
* Average borrowing duration by genre

---

## 7. 📈 Data Visualizations

The dashboard generates four required visualizations.

### 📚 Top 5 Most Borrowed Books

Displays the five books with the highest number of borrowing transactions.

**Output:**

```text
output/top_5_books.png
```

---

### 📈 Monthly Borrowing Trends

Shows the number of borrowing transactions across different months.

**Output:**

```text
output/monthly_borrowing_trends.png
```

---

### 🥧 Genre Distribution

Displays the distribution of borrowed books across different genres.

**Output:**

```text
output/genre_distribution.png
```

---

### 🔥 Borrowing Activity Heatmap

Displays borrowing activity based on the **day of the week and borrowing time**.

**Output:**

```text
output/borrowing_activity_heatmap.png
```

---

# 📋 Analysis Results

The dashboard produced the following results from the sample dataset.

| Metric                      |           Result |
| --------------------------- | ---------------: |
| Total Transactions          |          **100** |
| Total Users                 |           **14** |
| Total Books                 |           **10** |
| Total Genres                |            **5** |
| Most Borrowed Book          | **Harry Potter** |
| Most Borrowed Count         |           **16** |
| Average Borrowing Duration  |   **12.51 days** |
| Standard Deviation          |    **4.13 days** |
| Busiest Day                 |       **Sunday** |
| Transactions on Busiest Day |           **17** |
| Late Returns                |           **33** |

---

## 📚 Borrowings by Genre

| Genre      | Borrowings |
| ---------- | ---------: |
| Fiction    |         28 |
| Fantasy    |         26 |
| Finance    |         20 |
| Self-Help  |         16 |
| Technology |         10 |

**Fiction** was the most frequently borrowed genre with **28 transactions**.

---

## ⏱️ Average Borrowing Duration by Genre

| Genre      | Average Duration |
| ---------- | ---------------: |
| Technology |       19.60 days |
| Self-Help  |       14.25 days |
| Finance    |       13.55 days |
| Fantasy    |       13.19 days |
| Fiction    |        7.61 days |

**Technology** books had the highest average borrowing duration at **19.60 days**.

---

# 💡 Key Insights

Based on the analysis:

* 📖 **Harry Potter** was the most borrowed book with **16 transactions**.
* 📚 **Fiction** was the most borrowed genre with **28 transactions**.
* 📅 **Sunday** was the busiest borrowing day with **17 transactions**.
* ⏱️ The average borrowing duration was **12.51 days**.
* 📊 The standard deviation of borrowing duration was **4.13 days**.
* 💻 **Technology** books had the highest average borrowing duration at **19.60 days**.
* ⚠️ The dataset contained **33 late returns** based on the project's 14-day threshold.
* ✅ No duplicate rows or missing values remained after the dataset was processed.

---

# 🧱 Object-Oriented Design

The project uses a main class:

```python
LibraryDashboard
```

### Main Methods

```text
__init__()
__del__()
load_data()
explore_data()
clean_data()
calculate_statistics()
filter_transactions()
display_grouped_analysis()
generate_report()
create_visualizations()
show_menu()
```

The class encapsulates the dataset, analysis operations, report generation, and visualization functionality.

---

# 🖥️ Dashboard Menu

The program provides an interactive menu:

```text
========================================
     E-LIBRARY DATA INSIGHTS DASHBOARD
========================================
1. Load Dataset
2. Explore Data
3. Clean Data
4. Calculate Statistics
5. Filter Transactions
6. Grouped Data Analysis
7. Generate Report
8. Create Visualizations
9. Exit
```

---

# ⚙️ Installation

## 1. Clone the Repository

```bash
git clone <your-repository-url>
```

## 2. Open the Project Folder

```bash
cd "E-Library Data Insights Dashboard"
```

## 3. Install Required Libraries

```bash
python -m pip install pandas numpy matplotlib seaborn
```

---

# ▶️ How to Run

Run the Python dashboard using:

```bash
python .\library_dashboard.py
```

The program will:

1. Load the library dataset.
2. Validate and process the data.
3. Explore the dataset.
4. Calculate statistics.
5. Perform grouped analysis.
6. Generate a summary report.
7. Create the required visualizations.

---

# 📄 Generated Report

The dashboard automatically generates a text report:

```text
output/library_summary_report.txt
```

The report contains important library statistics including:

* Total transactions
* Total users
* Total books
* Total genres
* Most borrowed book
* Average borrowing duration
* Busiest day
* Late returns

---

# 🎓 Learning Outcomes

This project demonstrates practical implementation of:

* ✅ Python variables and data types
* ✅ Conditional statements
* ✅ Loops
* ✅ File handling
* ✅ CSV data processing
* ✅ Object-Oriented Programming
* ✅ Classes and methods
* ✅ NumPy arrays
* ✅ Pandas DataFrames
* ✅ Data cleaning
* ✅ Data filtering
* ✅ GroupBy operations
* ✅ Statistical analysis
* ✅ Matplotlib
* ✅ Seaborn
* ✅ Data visualization
* ✅ Report generation

---

# 🚀 Conclusion

The **E-Library Data Insights Dashboard** demonstrates how Python can be used to convert raw library transaction data into meaningful information.

By combining **Control Structures, OOP, NumPy, Pandas, Matplotlib, and Seaborn**, the project provides a complete workflow for data validation, cleaning, analysis, reporting, and visualization.

The dashboard can help a library understand which books are popular, which genres receive the most attention, when borrowing activity is highest, and how long users typically keep books.

---

## 👨‍💻 Project

**E-Library Data Insights Dashboard**

**Language:** Python

**Data Analysis:** Pandas & NumPy

**Visualization:** Matplotlib & Seaborn

**Dataset:** AI-generated sample library transaction dataset
