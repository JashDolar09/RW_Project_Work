import yfinance as yf
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import seaborn as sns
import os

os.makedirs("output", exist_ok=True)

ticker = "AAPL"

data = yf.download(
    ticker,
    start="2020-01-01",
    end="2025-01-01",
    auto_adjust=False
)

data.columns = data.columns.get_level_values(0)

data = data.reset_index()

data["Date"] = pd.to_datetime(data["Date"])

data["20_Day_MA"] = data["Close"].rolling(window=20).mean()
data["50_Day_MA"] = data["Close"].rolling(window=50).mean()

data["Daily_Return"] = data["Close"].pct_change() * 100

data["Price_Change"] = data["Close"].diff()

highest_price = np.max(data["Close"])
lowest_price = np.min(data["Close"])
average_price = np.mean(data["Close"])
average_volume = np.mean(data["Volume"])

print("Stock Market Analysis")
print("--------------------")
print("Stock:", ticker)
print("Dataset Shape:", data.shape)
print("Start Date:", data["Date"].min().date())
print("End Date:", data["Date"].max().date())

print("\nStock Price Statistics:")
print("Highest Closing Price:", round(highest_price, 2))
print("Lowest Closing Price:", round(lowest_price, 2))
print("Average Closing Price:", round(average_price, 2))
print("Average Trading Volume:", round(average_volume, 2))

plt.figure(figsize=(12, 6))
plt.plot(data["Date"], data["Close"])
plt.title("Apple Stock Closing Price Trend")
plt.xlabel("Date")
plt.ylabel("Closing Price")
plt.xticks(rotation=45)
plt.tight_layout()
plt.savefig("output/stock_price_trend.png")
plt.close()

plt.figure(figsize=(12, 6))
plt.plot(data["Date"], data["Close"], label="Closing Price")
plt.plot(data["Date"], data["20_Day_MA"], label="20-Day Moving Average")
plt.plot(data["Date"], data["50_Day_MA"], label="50-Day Moving Average")
plt.title("Apple Stock Price with Moving Averages")
plt.xlabel("Date")
plt.ylabel("Price")
plt.legend()
plt.xticks(rotation=45)
plt.tight_layout()
plt.savefig("output/moving_averages.png")
plt.close()

plt.figure(figsize=(12, 6))
plt.bar(data["Date"], data["Volume"])
plt.title("Apple Trading Volume")
plt.xlabel("Date")
plt.ylabel("Trading Volume")
plt.xticks(rotation=45)
plt.tight_layout()
plt.savefig("output/trading_volume.png")
plt.close()

plt.figure(figsize=(10, 6))
sns.histplot(data["Daily_Return"].dropna(), bins=50, kde=True)
plt.title("Distribution of Daily Stock Returns")
plt.xlabel("Daily Return (%)")
plt.ylabel("Frequency")
plt.tight_layout()
plt.savefig("output/daily_returns_distribution.png")
plt.close()

correlation_data = data[
    ["Open", "High", "Low", "Close", "Volume"]
].corr()

plt.figure(figsize=(8, 6))
sns.heatmap(
    correlation_data,
    annot=True,
    cmap="coolwarm",
    fmt=".2f"
)
plt.title("Stock Market Correlation Heatmap")
plt.tight_layout()
plt.savefig("output/stock_correlation_heatmap.png")
plt.close()

monthly_data = data.set_index("Date")["Close"].resample("ME").mean()

plt.figure(figsize=(12, 6))
plt.plot(monthly_data.index, monthly_data.values)
plt.title("Monthly Average Closing Price")
plt.xlabel("Date")
plt.ylabel("Average Closing Price")
plt.xticks(rotation=45)
plt.tight_layout()
plt.savefig("output/monthly_average_price.png")
plt.close()

print("\nLatest Moving Average Values:")
print("20-Day Moving Average:", round(data["20_Day_MA"].iloc[-1], 2))
print("50-Day Moving Average:", round(data["50_Day_MA"].iloc[-1], 2))

print("\nDaily Return Statistics:")
print(data["Daily_Return"].describe())

print("\nAnalysis completed successfully.")
print("All visualizations are saved in the output folder.")