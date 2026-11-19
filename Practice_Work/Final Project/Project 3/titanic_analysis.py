import os
import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns

file_path = "Dataset/train.csv"
output_folder = "output"

os.makedirs(output_folder, exist_ok=True)

data = pd.read_csv(file_path)

print("=" * 60)
print("TITANIC SURVIVAL ANALYSIS")
print("=" * 60)

print("\nDataset Shape:")
print(data.shape)

print("\nFirst 5 Rows:")
print(data.head())

print("\nColumn Names:")
print(data.columns.tolist())

print("\nMissing Values:")
print(data.isnull().sum())

data["Age"] = data["Age"].fillna(data["Age"].median())
data["Embarked"] = data["Embarked"].fillna(data["Embarked"].mode()[0])

print("\nMissing Values After Cleaning:")
print(data.isnull().sum())

print("\nBasic Statistics:")
print(data.describe())

survival_rate = data["Survived"].mean() * 100

print("\nOverall Survival Rate:")
print(round(survival_rate, 2), "%")

print("\nSurvival Count:")
print(data["Survived"].value_counts())

class_survival = data.groupby("Pclass")["Survived"].mean() * 100

print("\nSurvival Rate by Class:")
print(class_survival)

gender_survival = data.groupby("Sex")["Survived"].mean() * 100

print("\nSurvival Rate by Gender:")
print(gender_survival)

age_survival = data.groupby(
    pd.cut(
        data["Age"],
        bins=[0, 12, 18, 35, 60, 100],
        labels=[
            "Child",
            "Teenager",
            "Adult",
            "Middle Age",
            "Senior"
        ]
    )
)["Survived"].mean() * 100

print("\nSurvival Rate by Age Group:")
print(age_survival)

plt.figure(figsize=(8, 6))

sns.countplot(
    data=data,
    x="Survived"
)

plt.title("Titanic Survival Count")
plt.xlabel("Survival")
plt.ylabel("Number of Passengers")
plt.xticks(
    [0, 1],
    ["Did Not Survive", "Survived"]
)

plt.tight_layout()

plt.savefig(
    os.path.join(
        output_folder,
        "survival_count.png"
    ),
    dpi=300
)

plt.close()

plt.figure(figsize=(8, 6))

sns.barplot(
    data=data,
    x="Pclass",
    y="Survived"
)

plt.title("Survival Rate by Passenger Class")
plt.xlabel("Passenger Class")
plt.ylabel("Survival Rate")

plt.tight_layout()

plt.savefig(
    os.path.join(
        output_folder,
        "survival_by_class.png"
    ),
    dpi=300
)

plt.close()

plt.figure(figsize=(8, 6))

sns.barplot(
    data=data,
    x="Sex",
    y="Survived"
)

plt.title("Survival Rate by Gender")
plt.xlabel("Gender")
plt.ylabel("Survival Rate")

plt.tight_layout()

plt.savefig(
    os.path.join(
        output_folder,
        "survival_by_gender.png"
    ),
    dpi=300
)

plt.close()

plt.figure(figsize=(10, 6))

sns.barplot(
    data=data,
    x="Pclass",
    y="Survived",
    hue="Sex"
)

plt.title("Survival Rate by Class and Gender")
plt.xlabel("Passenger Class")
plt.ylabel("Survival Rate")

plt.tight_layout()

plt.savefig(
    os.path.join(
        output_folder,
        "survival_by_class_gender.png"
    ),
    dpi=300
)

plt.close()

plt.figure(figsize=(10, 6))

sns.histplot(
    data=data,
    x="Age",
    hue="Survived",
    bins=20,
    kde=True
)

plt.title("Age Distribution by Survival")
plt.xlabel("Age")
plt.ylabel("Number of Passengers")

plt.tight_layout()

plt.savefig(
    os.path.join(
        output_folder,
        "age_distribution_survival.png"
    ),
    dpi=300
)

plt.close()

plt.figure(figsize=(10, 6))

sns.barplot(
    data=data,
    x="Embarked",
    y="Survived"
)

plt.title("Survival Rate by Port of Embarkation")
plt.xlabel("Port of Embarkation")
plt.ylabel("Survival Rate")

plt.tight_layout()

plt.savefig(
    os.path.join(
        output_folder,
        "survival_by_embarked.png"
    ),
    dpi=300
)

plt.close()

plt.figure(figsize=(10, 6))

sns.boxplot(
    data=data,
    x="Survived",
    y="Fare"
)

plt.title("Fare Distribution by Survival")
plt.xlabel("Survival")
plt.ylabel("Fare")
plt.xticks(
    [0, 1],
    ["Did Not Survive", "Survived"]
)

plt.tight_layout()

plt.savefig(
    os.path.join(
        output_folder,
        "fare_by_survival.png"
    ),
    dpi=300
)

plt.close()

correlation_data = data[
    [
        "Survived",
        "Pclass",
        "Age",
        "SibSp",
        "Parch",
        "Fare"
    ]
]

correlations = correlation_data.corr()

print("\nCorrelation with Survival:")
print(
    correlations["Survived"]
    .sort_values(ascending=False)
)

plt.figure(figsize=(8, 6))

sns.heatmap(
    correlations,
    annot=True,
    cmap="coolwarm",
    fmt=".2f",
    linewidths=0.5
)

plt.title("Titanic Survival Correlation Heatmap")
plt.tight_layout()

plt.savefig(
    os.path.join(
        output_folder,
        "survival_correlation_heatmap.png"
    ),
    dpi=300
)

plt.close()

print("\n" + "=" * 60)
print("IMPORTANT OBSERVATIONS")
print("=" * 60)

highest_class = class_survival.idxmax()
highest_class_rate = class_survival.max()

highest_gender = gender_survival.idxmax()
highest_gender_rate = gender_survival.max()

print(
    "\n1. Overall survival rate:",
    round(survival_rate, 2),
    "%"
)

print(
    "2. Passenger class with highest survival rate:",
    highest_class,
    "with",
    round(highest_class_rate, 2),
    "%"
)

print(
    "3. Gender with highest survival rate:",
    highest_gender,
    "with",
    round(highest_gender_rate, 2),
    "%"
)

print(
    "4. Pclass correlation with survival:",
    round(correlations.loc["Survived", "Pclass"], 3)
)

print(
    "5. Age correlation with survival:",
    round(correlations.loc["Survived", "Age"], 3)
)

print(
    "6. Fare correlation with survival:",
    round(correlations.loc["Survived", "Fare"], 3)
)

print("\nAnalysis completed successfully.")

print("\nGenerated Files:")

print("1. output/survival_count.png")
print("2. output/survival_by_class.png")
print("3. output/survival_by_gender.png")
print("4. output/survival_by_class_gender.png")
print("5. output/age_distribution_survival.png")
print("6. output/survival_by_embarked.png")
print("7. output/fare_by_survival.png")
print("8. output/survival_correlation_heatmap.png")