import os
import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns

file_path = "Dataset/2015.csv"
output_folder = "output"

os.makedirs(output_folder, exist_ok=True)

data = pd.read_csv(file_path)

print("=" * 60)
print("GLOBAL HAPPINESS REPORT ANALYSIS")
print("=" * 60)

print("\nDataset Shape:")
print(data.shape)

print("\nFirst 5 Rows:")
print(data.head())

print("\nColumn Names:")
print(data.columns.tolist())

print("\nMissing Values:")
print(data.isnull().sum())

data = data.dropna()

print("\nDataset Shape After Cleaning:")
print(data.shape)

print("\nBasic Statistics:")
print(data["Happiness Score"].describe())

top_10 = data.sort_values(
    by="Happiness Score",
    ascending=False
).head(10)

print("\nTop 10 Happiest Countries:")
print(
    top_10[
        ["Country", "Happiness Score", "Happiness Rank"]
    ].to_string(index=False)
)

plt.figure(figsize=(12, 7))

sns.barplot(
    data=top_10,
    x="Happiness Score",
    y="Country"
)

plt.title("Top 10 Happiest Countries - 2015")
plt.xlabel("Happiness Score")
plt.ylabel("Country")
plt.tight_layout()

plt.savefig(
    os.path.join(output_folder, "top_10_happiest.png"),
    dpi=300
)

plt.close()

plt.figure(figsize=(10, 6))

sns.scatterplot(
    data=data,
    x="Economy (GDP per Capita)",
    y="Happiness Score"
)

plt.title("GDP per Capita vs Happiness Score")
plt.xlabel("Economy (GDP per Capita)")
plt.ylabel("Happiness Score")
plt.tight_layout()

plt.savefig(
    os.path.join(output_folder, "gdp_vs_happiness.png"),
    dpi=300
)

plt.close()

plt.figure(figsize=(10, 6))

sns.scatterplot(
    data=data,
    x="Family",
    y="Happiness Score"
)

plt.title("Social Support vs Happiness Score")
plt.xlabel("Social Support (Family)")
plt.ylabel("Happiness Score")
plt.tight_layout()

plt.savefig(
    os.path.join(output_folder, "social_support_vs_happiness.png"),
    dpi=300
)

plt.close()

plt.figure(figsize=(10, 6))

sns.scatterplot(
    data=data,
    x="Health (Life Expectancy)",
    y="Happiness Score"
)

plt.title("Life Expectancy vs Happiness Score")
plt.xlabel("Health (Life Expectancy)")
plt.ylabel("Happiness Score")
plt.tight_layout()

plt.savefig(
    os.path.join(output_folder, "life_expectancy_vs_happiness.png"),
    dpi=300
)

plt.close()

correlation_data = data[
    [
        "Happiness Score",
        "Economy (GDP per Capita)",
        "Family",
        "Health (Life Expectancy)",
        "Freedom",
        "Trust (Government Corruption)",
        "Generosity"
    ]
]

correlations = correlation_data.corr()

print("\nCorrelation with Happiness Score:")
print(
    correlations["Happiness Score"]
    .sort_values(ascending=False)
)

plt.figure(figsize=(10, 8))

sns.heatmap(
    correlations,
    annot=True,
    cmap="coolwarm",
    fmt=".2f",
    linewidths=0.5
)

plt.title("Happiness Factors Correlation Heatmap")
plt.tight_layout()

plt.savefig(
    os.path.join(
        output_folder,
        "happiness_correlation_heatmap.png"
    ),
    dpi=300
)

plt.close()

gdp_correlation = correlations.loc[
    "Happiness Score",
    "Economy (GDP per Capita)"
]

family_correlation = correlations.loc[
    "Happiness Score",
    "Family"
]

health_correlation = correlations.loc[
    "Happiness Score",
    "Health (Life Expectancy)"
]

freedom_correlation = correlations.loc[
    "Happiness Score",
    "Freedom"
]

trust_correlation = correlations.loc[
    "Happiness Score",
    "Trust (Government Corruption)"
]

generosity_correlation = correlations.loc[
    "Happiness Score",
    "Generosity"
]

print("\n" + "=" * 60)
print("IMPORTANT OBSERVATIONS")
print("=" * 60)

print(
    "\n1. GDP per Capita correlation with Happiness:",
    round(gdp_correlation, 3)
)

print(
    "2. Social Support correlation with Happiness:",
    round(family_correlation, 3)
)

print(
    "3. Life Expectancy correlation with Happiness:",
    round(health_correlation, 3)
)

print(
    "4. Freedom correlation with Happiness:",
    round(freedom_correlation, 3)
)

print(
    "5. Trust correlation with Happiness:",
    round(trust_correlation, 3)
)

print(
    "6. Generosity correlation with Happiness:",
    round(generosity_correlation, 3)
)

print("\nAnalysis completed successfully.")

print("\nGenerated Files:")

print("1. output/top_10_happiest.png")
print("2. output/gdp_vs_happiness.png")
print("3. output/social_support_vs_happiness.png")
print("4. output/life_expectancy_vs_happiness.png")
print("5. output/happiness_correlation_heatmap.png")