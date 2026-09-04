I’ll make the **Project 5 README properly**, using the **actual results from my code run successful** and keeping it within the project requirements.

```text
C:\Disk J\RW\Practice_Work\Final Project\Project 5
```

# 📈 Stock Market Analysis

## 📌 Project Overview

This project analyzes historical stock market data to identify trends and patterns in stock prices over time.

The project uses historical **Apple Inc. (AAPL)** stock data collected through the `yfinance` library. The analysis focuses on stock price trends, moving averages, trading volume, daily returns, monthly average prices, and relationships between major stock indicators.

The project fulfills the **Stock Market Analysis** assignment by using Python data analysis and visualization libraries.

---

## 🎯 Objectives

The main objectives of this project are:

- Analyze historical Apple stock prices.
- Identify stock price trends over time.
- Calculate and visualize moving averages.
- Analyze daily stock returns.
- Examine trading volume.
- Analyze monthly average closing prices.
- Study correlations between stock market indicators.
- Create clear visualizations to understand stock performance.

---

## 📊 Dataset

The stock market data was obtained using the **Yahoo Finance** data source through the `yfinance` Python library.

### Stock

**Apple Inc. (AAPL)**

### Date Range

- Start Date: **2020-01-01**
- End Date: **2025-01-01**
- Actual trading data available from: **2020-01-02 to 2024-12-31**

### Dataset Information

- Total Records: **1,258**
- Features after analysis calculations: **11**

The dataset contains stock market information such as:

- Date
- Open Price
- High Price
- Low Price
- Close Price
- Adjusted Close Price
- Trading Volume
- 20-Day Moving Average
- 50-Day Moving Average
- Daily Return
- Price Change

---

## 🛠️ Technologies Used

### Programming Language

- Python

### Libraries

- **Pandas** – Data manipulation and analysis
- **NumPy** – Numerical calculations
- **Matplotlib** – Data visualization
- **Seaborn** – Statistical visualization
- **yfinance** – Downloading historical Yahoo Finance stock data

---

## 🔍 Analysis Performed

### 1. Stock Price Trend

The historical closing price of Apple stock was analyzed to understand how the stock price changed between 2020 and 2024.

### 2. Moving Averages

Two moving averages were calculated:

- 20-Day Moving Average
- 50-Day Moving Average

Moving averages help identify the general direction of stock prices and reduce short-term price fluctuations.

### 3. Trading Volume

Trading volume represents the number of Apple shares traded during a trading period.

The project visualizes daily trading volume to identify periods of higher or lower market activity.

### 4. Daily Returns

Daily returns were calculated to measure the percentage change in Apple's closing price from one trading day to the next.

### 5. Monthly Average Price

The average closing price was calculated for each month to observe longer-term price patterns.

### 6. Correlation Analysis

A correlation matrix was created to examine relationships between:

- Open
- High
- Low
- Close
- Volume

---

## 📊 Key Results

The analysis produced the following results:

| Metric | Result |
|---|---:|
| Highest Closing Price | **$259.02** |
| Lowest Closing Price | **$56.09** |
| Average Closing Price | **$154.11** |
| Average Trading Volume | **90,571,034.66 shares** |
| 20-Day Moving Average | **$249.81** |
| 50-Day Moving Average | **$237.60** |

### Daily Return Statistics

| Statistic | Value |
|---|---:|
| Mean | **0.1157%** |
| Standard Deviation | **1.9957%** |
| Minimum | **-12.8647%** |
| 25th Percentile | **-0.8425%** |
| Median | **0.1172%** |
| 75th Percentile | **1.1989%** |
| Maximum | **11.9808%** |

---

## 💡 Key Observations

- Apple's closing price showed significant changes during the analyzed period.
- The highest closing price in the dataset was **$259.02**.
- The lowest closing price was **$56.09**.
- The average closing price was approximately **$154.11**.
- Apple had an average daily trading volume of approximately **90.57 million shares**.
- The latest 20-day moving average was **$249.81**.
- The latest 50-day moving average was **$237.60**.
- The average daily return was approximately **0.12%**.
- Daily returns show that Apple's stock experienced both positive and negative price movements during the period.

---

## 📁 Project Structure

```text
Project 5/
│
├── output/
│   ├── stock_price_trend.png
│   ├── moving_averages.png
│   ├── trading_volume.png
│   ├── daily_returns_distribution.png
│   ├── stock_correlation_heatmap.png
│   └── monthly_average_price.png
│
├── stock_market_analysis.py
└── README.md
````

---

## ▶️ How to Run the Project

### Step 1: Install Required Libraries

Open PowerShell or Command Prompt and run:

```bash
pip install yfinance pandas matplotlib seaborn numpy
```

### Step 2: Navigate to the Project Folder

```powershell
cd "C:\Disk J\RW\Practice_Work\Final Project\Project 5"
```

### Step 3: Run the Python Program

```powershell
python .\stock_market_analysis.py
```

The program downloads the Apple stock data, performs the analysis, displays the results in the terminal, and saves all visualizations inside the `output` folder.

---

## 📌 Important Note

The stock data is downloaded directly using the `yfinance` library. Therefore, the available historical data and values may change if the project is executed again in the future.

The analysis describes historical market data and should not be considered financial advice or a prediction of future stock performance.

---

## 🎓 Skills Demonstrated

This project demonstrates practical knowledge of:

* Python programming
* Pandas DataFrame operations
* NumPy numerical calculations
* Historical financial data analysis
* Moving average calculations
* Percentage return calculations
* Trading volume analysis
* Correlation analysis
* Matplotlib visualization
* Seaborn visualization
* Data interpretation
* Financial data exploration

---