# 🌍 Global Happiness Report Analysis

> **A beginner-friendly data analysis project exploring what factors are associated with happiness across 158 countries.**

---

## 📊 Project Overview

The **Global Happiness Report Analysis** project uses Python to explore the 2015 World Happiness Report dataset.

The goal is to understand how a country's **Happiness Score** is associated with factors such as:

- 💰 GDP per Capita
- 🤝 Social Support
- ❤️ Life Expectancy
- 🕊️ Freedom
- 🏛️ Trust in Government
- 🎁 Generosity

The project combines **data cleaning, statistical analysis, correlation analysis, and visualization** to turn the raw dataset into meaningful insights.

---

## 🎯 Project Objectives

This project aims to:

1. Load the World Happiness Report dataset using Pandas.
2. Inspect and clean the dataset.
3. Analyze the distribution of happiness scores.
4. Identify the **Top 10 happiest countries**.
5. Study the relationship between GDP per capita and happiness.
6. Study the relationship between social support and happiness.
7. Study the relationship between life expectancy and happiness.
8. Calculate correlations between happiness and selected factors.
9. Visualize relationships using scatter plots.
10. Present the correlations using a heatmap.
11. Generate reusable image outputs for the analysis.

---

## 🗂️ Dataset

### World Happiness Report — 2015

**Source:** Kaggle — World Happiness Report Dataset

**Dataset link:**  
https://www.kaggle.com/datasets/unsdsn/world-happiness

### Dataset Size

| Property | Value |
|---|---:|
| Countries | **158** |
| Columns | **12** |
| Year analyzed | **2015** |
| Missing values | **0** |

The dataset contains country-level happiness rankings, happiness scores, and several factors associated with those scores.

---

## 🧰 Technologies & Libraries

| Technology | Purpose |
|---|---|
| 🐍 Python | Main programming language |
| 🐼 Pandas | Data loading, cleaning, manipulation and analysis |
| 📈 Matplotlib | Creating and saving visualizations |
| 🎨 Seaborn | Statistical visualizations and correlation heatmap |

---

## 📋 Dataset Features

The dataset contains the following columns:

| Column | Description |
|---|---|
| `Country` | Country name |
| `Region` | Geographic region |
| `Happiness Rank` | Country's happiness ranking |
| `Happiness Score` | Overall happiness score |
| `Standard Error` | Standard error of the happiness score |
| `Economy (GDP per Capita)` | GDP per capita contribution |
| `Family` | Social-support-related measure |
| `Health (Life Expectancy)` | Life expectancy contribution |
| `Freedom` | Freedom to make life choices |
| `Trust (Government Corruption)` | Trust / perceived corruption measure |
| `Generosity` | Generosity contribution |
| `Dystopia Residual` | Dystopia residual component |

---

## 🔎 Data Preparation

The dataset was loaded using Pandas.

The analysis checked all columns for missing values.

### Result

```text
Missing values: 0
Records before cleaning: 158
Records after cleaning: 158
```

Since no missing values were found, all **158 country records** were retained for analysis.

---

# 🏆 Top 10 Happiest Countries

The Top 10 countries were identified by sorting the dataset according to `Happiness Score` in descending order.

| Rank | Country | Happiness Score |
|---:|---|---:|
| 1 | 🇨🇭 Switzerland | **7.587** |
| 2 | 🇮🇸 Iceland | **7.561** |
| 3 | 🇩🇰 Denmark | **7.527** |
| 4 | 🇳🇴 Norway | **7.522** |
| 5 | 🇨🇦 Canada | **7.427** |
| 6 | 🇫🇮 Finland | **7.406** |
| 7 | 🇳🇱 Netherlands | **7.378** |
| 8 | 🇸🇪 Sweden | **7.364** |
| 9 | 🇳🇿 New Zealand | **7.286** |
| 10 | 🇦🇺 Australia | **7.284** |

🥇 **Switzerland** has the highest Happiness Score in the 2015 dataset with a score of **7.587**.

---

# 📈 Happiness Score Statistics

The overall Happiness Score statistics are:

| Statistic | Value |
|---|---:|
| Count | 158 |
| Mean | **5.376** |
| Standard Deviation | **1.145** |
| Minimum | **2.839** |
| 25th Percentile | **4.526** |
| Median | **5.233** |
| 75th Percentile | **6.244** |
| Maximum | **7.587** |

The average Happiness Score across the 158 countries is approximately **5.376**.

---

# 🔗 Correlation Analysis

Correlation was used to measure the strength and direction of the linear relationship between the Happiness Score and selected factors.

### Correlation with Happiness Score

| Factor | Correlation |
|---|---:|
| 💰 GDP per Capita | **0.781** |
| 🤝 Social Support (`Family`) | **0.741** |
| ❤️ Life Expectancy | **0.724** |
| 🕊️ Freedom | **0.568** |
| 🏛️ Trust | **0.395** |
| 🎁 Generosity | **0.180** |

### 💡 Key Finding

**GDP per Capita has the strongest positive correlation with Happiness Score among the selected factors, at 0.781.**

Social support and life expectancy also show strong positive relationships with happiness.

> ⚠️ **Important:** Correlation indicates an association between variables. It does **not** prove that one factor causes another.

---

# 📊 Visualizations

The project creates **five visualization files**.

## 1. 🏆 Top 10 Happiest Countries

**File:**

```text
output/top_10_happiest.png
```

A horizontal bar chart comparing the Happiness Scores of the 10 highest-ranked countries.

---

## 2. 💰 GDP per Capita vs Happiness

**File:**

```text
output/gdp_vs_happiness.png
```

A scatter plot showing the relationship between GDP per capita and Happiness Score.

**Correlation: `0.781`**

The visualization shows a strong positive association between the two variables.

---

## 3. 🤝 Social Support vs Happiness

**File:**

```text
output/social_support_vs_happiness.png
```

A scatter plot showing the relationship between the `Family` variable and Happiness Score.

**Correlation: `0.741`**

The result indicates a strong positive association between social support and happiness.

---

## 4. ❤️ Life Expectancy vs Happiness

**File:**

```text
output/life_expectancy_vs_happiness.png
```

A scatter plot showing the relationship between Health (Life Expectancy) and Happiness Score.

**Correlation: `0.724`**

The result indicates a strong positive association between life expectancy and happiness.

---

## 5. 🔥 Happiness Correlation Heatmap

**File:**

```text
output/happiness_correlation_heatmap.png
```

A Seaborn heatmap displaying the correlations among Happiness Score and the selected happiness-related factors.

The heatmap makes it easier to visually compare the strength of relationships between variables.

---

# 📁 Project Structure

```text
Project 2
│
├── 📂 Dataset
│   └── 📄 2015.csv
│
├── 📂 output
│   ├── 🖼️ top_10_happiest.png
│   ├── 🖼️ gdp_vs_happiness.png
│   ├── 🖼️ social_support_vs_happiness.png
│   ├── 🖼️ life_expectancy_vs_happiness.png
│   └── 🖼️ happiness_correlation_heatmap.png
│
├── 🐍 happiness_analysis.py
└── 📖 README.md
```

---

# ⚙️ How to Run

## 1️⃣ Open the Project Folder

Open PowerShell and navigate to the project:

```powershell
cd "C:\Disk J\RW\Practice_Work\Final Project\Project 2"
```

## 2️⃣ Install Required Libraries

If the libraries are not already installed:

```powershell
pip install pandas matplotlib seaborn
```

## 3️⃣ Run the Analysis

```powershell
python .\happiness_analysis.py
```

## 4️⃣ Check the Results

After execution, the five visualization files will be available inside:

```text
output/
```

The terminal will also display:

- Dataset shape
- First five rows
- Column names
- Missing-value information
- Dataset statistics
- Top 10 happiest countries
- Correlation results
- Important observations
- Generated output files

---

# 🧠 Key Insights

### 🥇 1. Switzerland leads the dataset

Switzerland has the highest Happiness Score at **7.587**.

### 💰 2. GDP has the strongest relationship

GDP per capita has a correlation of **0.781** with Happiness Score, making it the strongest relationship among the selected factors.

### 🤝 3. Social support is highly associated with happiness

The `Family` variable has a correlation of **0.741**, showing a strong positive relationship.

### ❤️ 4. Health is strongly associated with happiness

Life expectancy has a correlation of **0.724**, also showing a strong positive relationship.

### 🕊️ 5. Freedom shows a moderate relationship

Freedom has a correlation of **0.568**, indicating a moderate positive relationship.

### 🏛️ 6. Trust shows a weaker positive relationship

Trust has a correlation of **0.395**.

### 🎁 7. Generosity has the weakest relationship

Generosity has a correlation of **0.180**, which is a weak positive relationship compared with the other selected factors.

---

# 🧪 Analysis Workflow

```text
📥 Load Dataset
      ↓
🔍 Inspect Data
      ↓
🧹 Check & Clean Data
      ↓
📊 Calculate Statistics
      ↓
🏆 Find Top 10 Countries
      ↓
📈 Create Relationship Charts
      ↓
🔗 Calculate Correlations
      ↓
🔥 Create Correlation Heatmap
      ↓
💡 Extract Key Insights
      ↓
💾 Save Visualizations
```

---

# 🚀 Future Improvements

This project currently focuses on the **2015** World Happiness Report.

Possible future improvements include:

- Analyze multiple years from 2015–2019.
- Compare changes in happiness over time.
- Analyze happiness by geographic region.
- Create interactive dashboards.
- Add more statistical analysis.
- Compare countries across multiple years.
- Explore additional relationships between happiness factors.

---

# 👨‍💻 Author

**Dolar Jash**

### Project

**Global Happiness Report Analysis**

### Category

**Python Data Analysis & Visualization**

---

# 📌 Final Summary

The Global Happiness Report Analysis demonstrates how Python can be used to transform a real-world dataset into understandable insights.

The analysis of **158 countries** shows that GDP per capita, social support, and life expectancy have the strongest positive correlations with Happiness Score among the selected factors.

The project combines:

**Python + Pandas + Matplotlib + Seaborn + Data Analysis + Data Visualization**

to provide a clear and structured exploration of global happiness.
