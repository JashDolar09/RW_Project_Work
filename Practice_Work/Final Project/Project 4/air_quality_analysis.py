import pandas as pd
import matplotlib.pyplot as plt
import os
import seaborn as sns

file_path = "Dataset/AirQualityUCI.csv"

data = pd.read_csv(
    file_path,
    sep=";",
    decimal=","
)

data = data.drop(columns=["Unnamed: 15", "Unnamed: 16"])

data["Date"] = pd.to_datetime(data["Date"], dayfirst=True)

data["Time"] = data["Time"].str.replace(".", ":", regex=False)

data["DateTime"] = pd.to_datetime(
    data["Date"].dt.strftime("%Y-%m-%d") + " " + data["Time"],
    errors="coerce"
)

pollutants = [
    "CO(GT)",
    "NMHC(GT)",
    "C6H6(GT)",
    "NOx(GT)",
    "NO2(GT)"
]

weather = [
    "T",
    "RH",
    "AH"
]

data[pollutants] = data[pollutants].replace(-200, pd.NA)
data[weather] = data[weather].replace(-200, pd.NA)

for column in pollutants + weather:
    data[column] = pd.to_numeric(data[column], errors="coerce")

data["CO(GT)"] = data["CO(GT)"].fillna(data["CO(GT)"].median())
data["NMHC(GT)"] = data["NMHC(GT)"].fillna(data["NMHC(GT)"].median())
data["C6H6(GT)"] = data["C6H6(GT)"].fillna(data["C6H6(GT)"].median())
data["NOx(GT)"] = data["NOx(GT)"].fillna(data["NOx(GT)"].median())
data["NO2(GT)"] = data["NO2(GT)"].fillna(data["NO2(GT)"].median())

data["T"] = data["T"].fillna(data["T"].median())
data["RH"] = data["RH"].fillna(data["RH"].median())
data["AH"] = data["AH"].fillna(data["AH"].median())

data = data.dropna(subset=["DateTime"])

os.makedirs("output", exist_ok=True)

print("Air Quality Analysis")
print("--------------------")
print("Dataset Shape:", data.shape)
print("\nColumns:")
print(data.columns.tolist())

print("\nPollution Statistics:")
print(data[pollutants].describe())

daily_data = data.set_index("DateTime")[pollutants].resample("D").mean()

plt.figure(figsize=(12, 6))
plt.plot(daily_data.index, daily_data["CO(GT)"])
plt.title("Daily Carbon Monoxide (CO) Trend")
plt.xlabel("Date")
plt.ylabel("CO Concentration")
plt.xticks(rotation=45)
plt.tight_layout()
plt.savefig("output/co_trend.png")
plt.close()

plt.figure(figsize=(12, 6))
plt.plot(daily_data.index, daily_data["NOx(GT)"])
plt.title("Daily Nitrogen Oxides (NOx) Trend")
plt.xlabel("Date")
plt.ylabel("NOx Concentration")
plt.xticks(rotation=45)
plt.tight_layout()
plt.savefig("output/nox_trend.png")
plt.close()

plt.figure(figsize=(12, 6))
plt.plot(daily_data.index, daily_data["NO2(GT)"])
plt.title("Daily Nitrogen Dioxide (NO2) Trend")
plt.xlabel("Date")
plt.ylabel("NO2 Concentration")
plt.xticks(rotation=45)
plt.tight_layout()
plt.savefig("output/no2_trend.png")
plt.close()

plt.figure(figsize=(10, 6))
sns.scatterplot(data=data, x="T", y="CO(GT)")
plt.title("Carbon Monoxide vs Temperature")
plt.xlabel("Temperature")
plt.ylabel("CO Concentration")
plt.tight_layout()
plt.savefig("output/co_vs_temperature.png")
plt.close()

plt.figure(figsize=(10, 6))
sns.scatterplot(data=data, x="RH", y="CO(GT)")
plt.title("Carbon Monoxide vs Relative Humidity")
plt.xlabel("Relative Humidity")
plt.ylabel("CO Concentration")
plt.tight_layout()
plt.savefig("output/co_vs_humidity.png")
plt.close()

correlation_data = data[
    pollutants + weather
].corr()

plt.figure(figsize=(10, 7))
sns.heatmap(
    correlation_data,
    annot=True,
    cmap="coolwarm",
    fmt=".2f"
)
plt.title("Air Quality and Weather Correlation")
plt.tight_layout()
plt.savefig("output/air_quality_correlation_heatmap.png")
plt.close()

average_pollution = data[pollutants].mean().sort_values(ascending=False)

plt.figure(figsize=(10, 6))
average_pollution.plot(kind="bar")
plt.title("Average Pollution Levels")
plt.xlabel("Pollutant")
plt.ylabel("Average Concentration")
plt.xticks(rotation=45)
plt.tight_layout()
plt.savefig("output/average_pollution_levels.png")
plt.close()

print("\nAverage Pollution Levels:")
print(average_pollution)

print("\nCorrelation with Temperature:")
print(data[pollutants + ["T"]].corr()["T"].drop("T"))

print("\nCorrelation with Humidity:")
print(data[pollutants + ["RH"]].corr()["RH"].drop("RH"))

print("\nAnalysis completed successfully.")
print("All visualizations are saved in the output folder.")