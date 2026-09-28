# COVID-19 Data Analysis and Visualization

A Python project for analyzing the spread of COVID-19 over time and comparing confirmed cases, deaths, and recoveries across different countries and regions.

---

## 📌 Project Overview

This project analyzes COVID-19 data using Python and different data analysis and visualization libraries.

The project focuses on:

- Analyzing the spread of COVID-19 over time
- Analyzing confirmed cases across countries and regions
- Analyzing COVID-19 deaths across countries and regions
- Analyzing reported recoveries across countries and regions
- Comparing COVID-19 confirmed cases between selected countries
- Visualizing selected government interventions in India
- Creating static and interactive data visualizations

---

## 🎯 Project Objectives

The main objectives of this project are:

1. Analyze how COVID-19 cases changed over time.
2. Compare confirmed COVID-19 cases between countries.
3. Compare COVID-19 deaths between countries.
4. Compare reported COVID-19 recoveries between countries.
5. Visualize COVID-19 trends using different Python visualization libraries.
6. Visualize selected government intervention dates alongside India's COVID-19 case trend.
7. Create an interactive country comparison using Plotly.

---

## 📊 Dataset

This project uses the **Johns Hopkins University COVID-19 Dataset**.

The dataset contains time-series COVID-19 data for countries and regions around the world.

The project uses three datasets:

- Confirmed cases
- Deaths
- Recovered cases

### Dataset Files

```text
Dataset/
├── confirmed.csv
├── deaths.csv
└── recovered.csv
````

The original dataset is from the Johns Hopkins University Center for Systems Science and Engineering (JHU CSSE) COVID-19 Data Repository.

---

## 🛠️ Technologies and Libraries Used

| Technology / Library | Purpose                                        |
| -------------------- | ---------------------------------------------- |
| Python               | Main programming language                      |
| Pandas               | Data loading, cleaning, grouping, and analysis |
| Matplotlib           | Creating static visualizations                 |
| Seaborn              | Creating statistical bar charts                |
| Plotly               | Creating interactive visualizations            |

---

## 📁 Project Structure

```text
covid_19/
│
├── Dataset/
│   ├── confirmed.csv
│   ├── deaths.csv
│   └── recovered.csv
│
├── output/
│   ├── india_covid_trend.png
│   ├── top_10_countries.png
│   ├── top_10_deaths.png
│   ├── top_10_recovered.png
│   ├── covid_country_comparison.html
│   └── india_government_interventions.png
│
├── covid_analysis.py
└── README.md
```

---

# ⚙️ Installation

## 1. Install Python

Make sure Python is installed on your computer.

Check the Python version:

```bash
python --version
```

---

## 2. Install Required Libraries

Open PowerShell or Command Prompt and run:

```bash
pip install pandas matplotlib seaborn plotly
```

The project requires the following libraries:

```text
pandas
matplotlib
seaborn
plotly
```

---

# ▶️ How to Run the Project

Open PowerShell or Command Prompt inside the project folder.

Run:

```bash
python covid_analysis.py
```

The program will:

1. Load the COVID-19 datasets.
2. Clean the data.
3. Group the data by country/region.
4. Analyze confirmed cases.
5. Analyze deaths.
6. Analyze recoveries.
7. Create visualizations.
8. Create an interactive Plotly chart.
9. Visualize selected government interventions.
10. Save the results inside the `output` folder.

---

# 🔍 Data Analysis

## 1. COVID-19 Trend in India

The project analyzes the COVID-19 trend in India using:

* Confirmed cases
* Deaths
* Reported recoveries

The chart is created using **Matplotlib**.

### Output

```text
output/india_covid_trend.png
```

### Purpose

This visualization helps understand how COVID-19 cases, deaths, and reported recoveries changed over time in India.

---

# 2. Top 10 Countries by Confirmed Cases

The project calculates confirmed COVID-19 cases for each country and identifies the top 10 countries with the highest reported confirmed cases.

The visualization is created using **Seaborn**.

### Output

```text
output/top_10_countries.png
```

### Purpose

This chart provides a comparison of the countries with the highest reported confirmed COVID-19 cases.

---

# 3. Top 10 Countries by Deaths

The project compares countries based on their reported COVID-19 deaths.

The visualization is created using **Seaborn**.

### Output

```text
output/top_10_deaths.png
```

### Purpose

This chart helps compare the countries with the highest reported COVID-19 deaths in the dataset.

---

# 4. Top 10 Countries by Recoveries

The project compares countries based on reported recovered COVID-19 cases.

The Johns Hopkins recovered dataset does not contain useful recovery values through the final confirmed-case date.

Therefore, the program automatically finds the latest date where recovery data is available.

For this dataset, the program identifies:

```text
Recovery Data Available Until: 8/4/21
```

The visualization is created using **Seaborn**.

### Output

```text
output/top_10_recovered.png
```

### Purpose

This chart compares countries based on their reported COVID-19 recoveries for the latest available recovery-data date.

---

# 🌍 Country Comparison

The project compares confirmed COVID-19 cases for five countries:

```text
India
United States
Brazil
United Kingdom
Italy
```

The comparison is created using **Plotly**.

### Output

```text
output/covid_country_comparison.html
```

The Plotly visualization is interactive.

Users can:

* Hover over the chart.
* View values for different dates.
* Compare countries.
* Interact with the chart.

The HTML file is generated automatically by Plotly to display the interactive visualization.

---

# 🏛️ Government Interventions

The project visualizes selected government intervention dates in India together with the confirmed COVID-19 case trend.

The selected interventions are:

| Date          | Government Intervention |
| ------------- | ----------------------- |
| 25 March 2020 | Nationwide Lockdown     |
| 1 June 2020   | Unlock 1                |

These dates are displayed on the India COVID-19 confirmed-case trend using vertical lines.

### Output

```text
output/india_government_interventions.png
```

### Purpose

The visualization allows the COVID-19 case trend to be viewed alongside important government intervention dates.

It is used to observe the trend around these intervention periods.

> Note: This visualization shows the case trend alongside intervention dates. It does not claim that the interventions directly caused a particular change in COVID-19 cases.

---

# 📈 Project Outputs

The project generates the following output files:

| File                                 | Description                                                      |
| ------------------------------------ | ---------------------------------------------------------------- |
| `india_covid_trend.png`              | COVID-19 confirmed cases, deaths, and recoveries trend in India  |
| `top_10_countries.png`               | Top 10 countries by confirmed COVID-19 cases                     |
| `top_10_deaths.png`                  | Top 10 countries by reported deaths                              |
| `top_10_recovered.png`               | Top 10 countries by reported recoveries                          |
| `covid_country_comparison.html`      | Interactive country comparison using Plotly                      |
| `india_government_interventions.png` | India COVID-19 trend with selected government intervention dates |

---

# 🔄 Program Workflow

The project follows this workflow:

```text
Start
  ↓
Load COVID-19 CSV Files
  ↓
Clean Missing Values
  ↓
Group Data by Country/Region
  ↓
Analyze Confirmed Cases
  ↓
Analyze Deaths
  ↓
Analyze Recoveries
  ↓
Create India COVID-19 Trend
  ↓
Create Top 10 Confirmed Cases Chart
  ↓
Create Top 10 Deaths Chart
  ↓
Create Top 10 Recoveries Chart
  ↓
Create Plotly Country Comparison
  ↓
Visualize Government Interventions
  ↓
Save Output Files
  ↓
End
```

---

# 🧠 Python Concepts Used

The following Python concepts were used in this project:

* Reading CSV files
* Pandas DataFrames
* Data cleaning
* Handling missing values
* Grouping data
* Selecting rows and columns
* Sorting data
* Working with dates
* Data transformation
* Creating charts
* Creating interactive visualizations
* Saving files

---

# 📚 Pandas Usage

Pandas is used to load and analyze the COVID-19 datasets.

Example:

```python
confirmed = pd.read_csv("Dataset/confirmed.csv")
deaths = pd.read_csv("Dataset/deaths.csv")
recovered = pd.read_csv("Dataset/recovered.csv")
```

The data is then grouped by country or region:

```python
confirmed_total = confirmed.groupby("Country/Region")[date_columns].sum()
```

This allows the project to analyze COVID-19 data for individual countries and regions.

---

# 📊 Matplotlib Usage

Matplotlib is used to create the India COVID-19 trend and government intervention visualization.

Example:

```python
plt.plot(date_columns, india_confirmed, label="Confirmed Cases")
plt.plot(date_columns, india_deaths, label="Deaths")
plt.plot(date_columns, india_recovered, label="Recovered")
```

---

# 📊 Seaborn Usage

Seaborn is used to create the top 10 country comparison charts.

Example:

```python
sns.barplot(
    data=top_countries,
    x="Confirmed",
    y="Country"
)
```

Similar charts are created for deaths and recoveries.

---

# 📈 Plotly Usage

Plotly is used to create an interactive comparison of confirmed COVID-19 cases between selected countries.

Example:

```python
fig = px.line(
    comparison_data,
    x="Date",
    y="Confirmed Cases",
    color="Country",
    title="COVID-19 Confirmed Cases Comparison"
)
```

The interactive chart is saved as:

```text
covid_country_comparison.html
```

---

# 🔎 Key Observations

Based on the analysis:

1. COVID-19 confirmed cases increased significantly during the pandemic.
2. The number of reported cases varied significantly between countries.
3. Reported deaths also varied between countries.
4. Reported recovery data is not available consistently through the complete dataset period.
5. The Plotly comparison makes it easier to observe differences in COVID-19 case trends between countries.
6. The government intervention visualization allows important intervention dates to be compared with India's COVID-19 case trend.

---

# ⚠️ Data Limitations

The dataset has some limitations.

The reported recovery data is not consistently available for all countries and throughout the complete time period.

Because of this, the program automatically identifies the latest date with available recovery data instead of using the final confirmed-case date.

The analysis is therefore based on the reported data available in the dataset.

The government intervention visualization also shows intervention dates alongside the case trend. It should not be interpreted as proof that a specific intervention directly caused a change in COVID-19 cases.

---

# 🏁 Conclusion

This project demonstrates how Python can be used to analyze and visualize real-world COVID-19 data.

Pandas was used for data loading, cleaning, grouping, and analysis.

Matplotlib was used to create COVID-19 trend visualizations.

Seaborn was used to create country comparison bar charts.

Plotly was used to create an interactive country comparison.

The project also visualizes selected government intervention dates alongside India's COVID-19 case trend.

Overall, the project provides a simple analysis of COVID-19 trends across time, countries, deaths, recoveries, and selected government intervention periods.

---

# 👨‍💻 Project Information

**Project Name:** COVID-19 Data Analysis and Visualization

**Programming Language:** Python

**Libraries Used:**

```text
Pandas
Matplotlib
Seaborn
Plotly
```

**Dataset:** Johns Hopkins University COVID-19 Dataset

**Main Python File:**

```text
covid_analysis.py
```

**Output Folder:**

```text
output/
```

---

# ✅ Project Requirements Checklist

| Requirement                                 | Status      |
| ------------------------------------------- | ----------- |
| Analyze spread of COVID-19 over time        | ✅ Completed |
| Analyze cases across countries/regions      | ✅ Completed |
| Analyze recoveries across countries/regions | ✅ Completed |
| Analyze deaths across countries/regions     | ✅ Completed |
| Visualize government interventions          | ✅ Completed |
| Use Pandas                                  | ✅ Completed |
| Use Matplotlib                              | ✅ Completed |
| Use Seaborn                                 | ✅ Completed |
| Use Plotly                                  | ✅ Completed |

---

## 🎓 Final Project Status

**Project completed successfully.**

```
```
