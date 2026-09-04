I’ll make the **Project 4 README properly**, using the **actual results from my code run successful** and keeping it within the project requirements.

```text
C:\Disk J\RW\Practice_Work\Final Project\Project 4
```
# 🌍 Air Quality Analysis

<p align="center">
  <strong>Analyzing Pollution Trends and Their Relationship with Weather Conditions</strong>
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Python-3.x-blue?style=for-the-badge&logo=python" alt="Python">
  <img src="https://img.shields.io/badge/Pandas-Data%20Analysis-150458?style=for-the-badge&logo=pandas" alt="Pandas">
  <img src="https://img.shields.io/badge/Matplotlib-Visualization-orange?style=for-the-badge" alt="Matplotlib">
  <img src="https://img.shields.io/badge/Seaborn-Visualization-4C9BE8?style=for-the-badge" alt="Seaborn">
</p>

---

## 📌 Project Overview

Air pollution is an important environmental issue that can vary over time and can have relationships with weather conditions.

This project analyzes air quality measurements collected over time and explores pollution levels using Python. The analysis focuses on major pollutants such as **Carbon Monoxide (CO), Nitrogen Oxides (NOx), Nitrogen Dioxide (NO2), Non-Methane Hydrocarbons (NMHC), and Benzene-related measurements (C6H6)**.

The project also examines the relationship between pollution measurements and weather variables such as:

- 🌡️ Temperature
- 💧 Relative Humidity
- 🌫️ Absolute Humidity

The analysis uses **Pandas** for data processing and **Matplotlib** and **Seaborn** for visualization.

---

## 🎯 Objectives

The main objectives of this project are:

- Analyze air quality data over time.
- Clean and prepare the dataset for analysis.
- Study pollution levels using statistical summaries.
- Visualize daily pollution trends.
- Compare average pollution levels.
- Analyze the relationship between pollution and temperature.
- Analyze the relationship between pollution and humidity.
- Create a correlation heatmap for pollutants and weather conditions.
- Generate clear visualizations for understanding air quality patterns.

---

## 📊 Dataset

### Air Quality UCI Dataset

The project uses the **Air Quality UCI Dataset**.

Dataset Source:

https://archive.ics.uci.edu/dataset/360/air+quality

The dataset contains hourly air-quality measurements collected from an air-quality monitoring station.

### Dataset File

```text
AirQualityUCI.csv
```
### Dataset Information

The original dataset contains:

* **9,471 rows**
* **17 columns**

Two columns in the original CSV were empty (`Unnamed: 15` and `Unnamed: 16`) and were removed during data preprocessing.

After cleaning and creating the DateTime field, the analysis dataset contains:

```text
9,357 records
16 columns
```

---

## 🧪 Technologies Used

| Technology | Purpose                             |
| ---------- | ----------------------------------- |
| Python     | Main programming language           |
| Pandas     | Data loading, cleaning and analysis |
| Matplotlib | Data visualization                  |
| Seaborn    | Statistical visualization           |
| CSV        | Dataset format                      |

---

## 📁 Project Structure

```text
Project 4
│
├── Dataset
│   └── AirQualityUCI.csv
│
├── output
│   ├── co_trend.png
│   ├── nox_trend.png
│   ├── no2_trend.png
│   ├── co_vs_temperature.png
│   ├── co_vs_humidity.png
│   ├── air_quality_correlation_heatmap.png
│   └── average_pollution_levels.png
│
├── air_quality_analysis.py
└── README.md
```

---

## 🔄 Data Processing

The dataset was prepared before performing the analysis.

### 1. Load the Dataset

The CSV file was loaded using Pandas:

```python
data = pd.read_csv(
    "Dataset/AirQualityUCI.csv",
    sep=";",
    decimal=","
)
```

### 2. Remove Empty Columns

The two empty columns from the original dataset were removed:

```text
Unnamed: 15
Unnamed: 16
```

### 3. Convert Date and Time

The separate date and time values were converted into a single `DateTime` field to make time-based analysis easier.

### 4. Handle Missing Values

The UCI dataset uses `-200` to represent missing measurements.

These values were replaced with missing values and the required numerical columns were filled using their median values.

### 5. Prepare Daily Data

Hourly pollution measurements were grouped into daily averages to analyze pollution trends over time.

---

## 🌫️ Pollutants Analyzed

The following pollution measurements were included:

| Pollutant | Description                 |
| --------- | --------------------------- |
| CO(GT)    | Carbon Monoxide             |
| NMHC(GT)  | Non-Methane Hydrocarbons    |
| C6H6(GT)  | Benzene-related measurement |
| NOx(GT)   | Nitrogen Oxides             |
| NO2(GT)   | Nitrogen Dioxide            |

---

## 🌦️ Weather Variables

The project also analyzes the following weather measurements:

| Variable | Description       |
| -------- | ----------------- |
| T        | Temperature       |
| RH       | Relative Humidity |
| AH       | Absolute Humidity |

---

# 📊 Analysis Results

## Average Pollution Levels

The calculated average values were:

| Pollutant | Average |
| --------- | ------: |
| NOx(GT)   |  235.18 |
| NMHC(GT)  |  156.72 |
| NO2(GT)   |  112.37 |
| C6H6(GT)  |   10.01 |
| CO(GT)    |    2.09 |

Among the analyzed measurements, **NOx had the highest average value**, followed by NMHC and NO2.

---

## 🌡️ Correlation with Temperature

The correlation values between pollutants and temperature were:

| Pollutant | Correlation |
| --------- | ----------: |
| CO(GT)    |       0.006 |
| NMHC(GT)  |       0.030 |
| C6H6(GT)  |       0.199 |
| NOx(GT)   |      -0.246 |
| NO2(GT)   |      -0.169 |

The results show that **NOx had the strongest negative correlation with temperature** among the analyzed pollutants.

C6H6 showed a relatively small positive correlation with temperature.

---

## 💧 Correlation with Relative Humidity

The correlation values between pollutants and relative humidity were:

| Pollutant | Correlation |
| --------- | ----------: |
| CO(GT)    |       0.041 |
| NMHC(GT)  |      -0.047 |
| C6H6(GT)  |      -0.062 |
| NOx(GT)   |       0.184 |
| NO2(GT)   |      -0.082 |

NOx showed the strongest positive correlation with relative humidity among the analyzed pollutants.

The other relationships were relatively weak.

---

# 🔍 Key Insights

Based on the analysis:

* **NOx had the highest average measurement** among the selected pollutants.
* Pollution levels varied over time, which can be observed in the daily trend charts.
* **NOx showed a negative correlation with temperature (-0.246)**.
* **NO2 also showed a negative correlation with temperature (-0.169)**.
* **C6H6 had a small positive correlation with temperature (0.199)**.
* **NOx showed the strongest positive relationship with relative humidity (0.184)**.
* CO had almost no linear correlation with temperature or humidity in this analysis.
* The correlation values describe linear relationships and **do not prove that weather conditions cause changes in pollution levels**.

---

# ⚙️ How to Run the Project

## 1. Clone the Repository

```bash
git clone https://github.com/JashDolar09/RW_Project_Work.git
```

## 2. Navigate to the Project

```bash
cd RW_Project_Work/Final\ Project/Project\ 4
```

On Windows PowerShell, you can use:

```powershell
cd "Final Project\Project 4"
```

## 3. Install Required Libraries

```bash
pip install pandas matplotlib seaborn
```

## 4. Run the Python Program

```bash
python air_quality_analysis.py
```

Or in Windows PowerShell:

```powershell
python .\air_quality_analysis.py
```

## 5. View the Results

After successful execution, all generated charts will be available inside:

```text
output/
```

---

# 🖥️ Program Output

A successful execution displays information such as:

```text
Air Quality Analysis
--------------------
Dataset Shape: (9357, 16)

Pollution Statistics:
...

Average Pollution Levels:
...

Correlation with Temperature:
...

Correlation with Humidity:
...

Analysis completed successfully.
All visualizations are saved in the output folder.
```

---

# 🧠 Skills Demonstrated

This project demonstrates practical skills in:

* Python programming
* Pandas DataFrame manipulation
* Data cleaning
* Handling missing values
* Date and time processing
* Time-series analysis
* Statistical analysis
* Correlation analysis
* Data visualization
* Matplotlib
* Seaborn
* Interpreting data relationships

---
