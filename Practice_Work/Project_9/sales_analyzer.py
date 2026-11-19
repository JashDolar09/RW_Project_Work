import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import seaborn as sns


class SalesDataAnalyzer:
    def __init__(self):
        self.data = pd.DataFrame()
        self.last_plot = None
        self.last_plot_name = "sales_visualization.png"

    def __del__(self):
        pass

    def load_data(self, file_path):
        self.data = pd.read_csv(file_path)
        print("\nDataset loaded successfully.")
        print("Shape:", self.data.shape)

    def explore_data(self):
        if self.data.empty:
            print("\nPlease load the dataset first.")
            return

        print("\n--- Dataset Information ---")
        print(self.data.head())
        print("\nColumns:")
        print(list(self.data.columns))
        print("\nShape:", self.data.shape)
        print("\nData Types:")
        print(self.data.dtypes)
        print("\nMissing Values:")
        print(self.data.isnull().sum())

    def clean_data(self):
        if self.data.empty:
            print("\nPlease load the dataset first.")
            return

        self.data["Date"] = pd.to_datetime(self.data["Date"], errors="coerce")
        numeric_columns = ["Sales", "Profit", "Units", "Year"]
        for column in numeric_columns:
            self.data[column] = pd.to_numeric(self.data[column], errors="coerce")

        self.data["Profit"] = self.data["Profit"].fillna(self.data["Profit"].median())
        self.data["Region"] = self.data["Region"].fillna(self.data["Region"].mode()[0])

        print("\nMissing data handled successfully.")

    def mathematical_operations(self):
        if self.data.empty:
            print("\nPlease load the dataset first.")
            return

        self.data["Profit_Margin"] = (self.data["Profit"] / self.data["Sales"]) * 100
        self.data["Sales_per_Unit"] = self.data["Sales"] / self.data["Units"]

        sales_array = self.data["Sales"].to_numpy()
        print("\nSales as NumPy array:")
        print(sales_array[:10])

        print("\nFirst 5 rows using indexing:")
        print(self.data.iloc[:5])

        print("\nSales slicing:")
        print(self.data["Sales"].iloc[:5].to_numpy())

        print("\nElement-wise Sales + Profit:")
        print((self.data["Sales"] + self.data["Profit"]).head())

    def combine_data(self, other_dataframe):
        if self.data.empty:
            print("\nPlease load the dataset first.")
            return

        combined = pd.concat([self.data, other_dataframe], ignore_index=True)
        print("\nConcatenated DataFrame shape:", combined.shape)

        merged = pd.merge(
            self.data[["SalesID", "Product", "Region"]],
            other_dataframe[["SalesID", "Product"]],
            on="SalesID",
            how="inner",
            suffixes=("_left", "_right")
        )
        print("Merged DataFrame shape:", merged.shape)

        joined = self.data.set_index("SalesID").join(
            other_dataframe.set_index("SalesID"),
            lsuffix="_left",
            rsuffix="_right",
            how="inner"
        )
        print("Joined DataFrame shape:", joined.shape)

    def split_data(self):
        if self.data.empty:
            print("\nPlease load the dataset first.")
            return

        region = input("Enter region to split (North/West/South/East): ").strip().title()
        split = self.data[self.data["Region"] == region]

        if split.empty:
            print("No records found.")
        else:
            print("\nSplit data:")
            print(split.head())
            print("Rows:", len(split))

    def search_sort_filter(self):
        if self.data.empty:
            print("\nPlease load the dataset first.")
            return

        product = input("Enter product to search: ").strip().title()
        result = self.data[self.data["Product"].str.lower() == product.lower()]

        print("\nSearch result:")
        print(result.head())

        print("\nTop 5 sales:")
        print(self.data.sort_values("Sales", ascending=False)[
            ["Product", "Region", "Sales", "Profit"]
        ].head())

        print("\nSales greater than 50000:")
        print(self.data[self.data["Sales"] > 50000][
            ["Product", "Region", "Sales"]
        ].head(10))

    def aggregate_functions(self):
        if self.data.empty:
            print("\nPlease load the dataset first.")
            return

        print("\nTotal Sales:", self.data["Sales"].sum())
        print("Average Sales:", self.data["Sales"].mean())
        print("Total Profit:", self.data["Profit"].sum())
        print("Average Profit:", self.data["Profit"].mean())
        print("Total Units:", self.data["Units"].sum())
        print("\nSales by Region:")
        print(self.data.groupby("Region")["Sales"].agg(["sum", "mean", "count"]))

        print("\nSales by Product:")
        print(self.data.groupby("Product")["Sales"].agg(["sum", "mean", "count"]))

    def statistical_analysis(self):
        if self.data.empty:
            print("\nPlease load the dataset first.")
            return

        print("\n--- Descriptive Statistics ---")
        print(self.data[["Sales", "Profit", "Units"]].describe())

        print("\nStandard Deviation:")
        print(self.data[["Sales", "Profit", "Units"]].std())

        print("\nVariance:")
        print(self.data[["Sales", "Profit", "Units"]].var())

        print("\n25th, 50th and 75th Percentiles:")
        print(self.data[["Sales", "Profit", "Units"]].quantile([0.25, 0.50, 0.75]))

        print("\nMedian:")
        print(self.data[["Sales", "Profit", "Units"]].median())

    def create_pivot_table(self):
        if self.data.empty:
            print("\nPlease load the dataset first.")
            return

        pivot = pd.pivot_table(
            self.data,
            values=["Sales", "Profit", "Units"],
            index="Region",
            columns="Product",
            aggfunc="sum",
            fill_value=0
        )

        print("\n--- Pivot Table ---")
        print(pivot)

        print("\n--- GroupBy + Transform Example ---")
        self.data["Region_Average_Sales"] = self.data.groupby("Region")["Sales"].transform("mean")
        print(self.data[["Region", "Sales", "Region_Average_Sales"]].head())

    def visualize_data(self):
        if self.data.empty:
            print("\nPlease load the dataset first.")
            return

        self.data["Month"] = self.data["Date"].dt.to_period("M").astype(str)
        monthly_sales = self.data.groupby("Month")["Sales"].sum()
        product_sales = self.data.groupby("Product")["Sales"].sum()
        region_sales = self.data.groupby("Region")["Sales"].sum()

        fig, axes = plt.subplots(2, 2, figsize=(14, 10))

        axes[0, 0].bar(product_sales.index, product_sales.values)
        axes[0, 0].set_title("Sales by Product")
        axes[0, 0].tick_params(axis="x", rotation=30)

        axes[0, 1].plot(monthly_sales.index, monthly_sales.values, marker="o")
        axes[0, 1].set_title("Monthly Sales Trend")
        axes[0, 1].tick_params(axis="x", rotation=45)

        axes[1, 0].scatter(self.data["Units"], self.data["Sales"])
        axes[1, 0].set_title("Sales vs Units")
        axes[1, 0].set_xlabel("Units")
        axes[1, 0].set_ylabel("Sales")

        axes[1, 1].pie(region_sales.values, labels=region_sales.index, autopct="%1.1f%%")
        axes[1, 1].set_title("Sales by Region")

        plt.tight_layout()
        self.last_plot = fig
        self.last_plot_name = "sales_dashboard.png"
        plt.show()

        self._create_extra_plots()

    def _create_extra_plots(self):
        numeric = self.data[["Sales", "Profit", "Units"]]

        plt.figure(figsize=(8, 5))
        plt.hist(self.data["Sales"], bins=10)
        plt.title("Sales Distribution")
        plt.xlabel("Sales")
        plt.ylabel("Frequency")
        plt.tight_layout()
        plt.savefig("sales_histogram.png", dpi=150)
        plt.show()

        plt.figure(figsize=(8, 5))
        plt.stackplot(
            range(1, 6),
            self.data.groupby("Product")["Sales"].sum().sort_values(ascending=False).head(5).values,
            labels=self.data.groupby("Product")["Sales"].sum().sort_values(ascending=False).head(5).index
        )
        plt.title("Stack Plot of Top Products")
        plt.legend()
        plt.tight_layout()
        plt.savefig("sales_stackplot.png", dpi=150)
        plt.show()

        plt.figure(figsize=(8, 5))
        sns.boxplot(data=numeric)
        plt.title("Sales, Profit and Units Box Plot")
        plt.tight_layout()
        plt.savefig("sales_boxplot.png", dpi=150)
        plt.show()

        plt.figure(figsize=(8, 5))
        sns.heatmap(numeric.corr(), annot=True, cmap="coolwarm")
        plt.title("Sales Data Correlation Heatmap")
        plt.tight_layout()
        plt.savefig("sales_heatmap.png", dpi=150)
        plt.show()

    def save_visualization(self):
        if self.last_plot is None:
            print("\nPlease choose Data Visualization first.")
            return

        filename = input(
            "Enter filename (example: final_sales_dashboard.png): "
        ).strip()

        if not filename:
            filename = self.last_plot_name

        if not filename.lower().endswith((".png", ".jpg", ".jpeg")):
            filename += ".png"

        self.last_plot.savefig(filename, dpi=150, bbox_inches="tight")
        print("\nVisualization saved as:", filename)

    def export_data(self):
        if self.data.empty:
            return

        self.data.to_csv("cleaned_sales_data.csv", index=False)
        print("Cleaned data exported to cleaned_sales_data.csv")


def show_menu():
    print("\n" + "=" * 45)
    print("       SALES DATA ANALYZER")
    print("=" * 45)
    print("1. Load Dataset")
    print("2. Explore Data")
    print("3. Perform DataFrame Operations")
    print("4. Handle Missing Data")
    print("5. Generate Descriptive Statistics")
    print("6. Data Visualization")
    print("7. Save Visualization")
    print("8. Exit")
    print("=" * 45)


analyzer = SalesDataAnalyzer()

while True:
    show_menu()
    choice = input("Enter your choice: ").strip()

    if choice == "1":
        analyzer.load_data("sales_data.csv")

    elif choice == "2":
        analyzer.explore_data()

    elif choice == "3":
        print("\n1. Mathematical Operations")
        print("2. Combine DataFrames")
        print("3. Split Data")
        print("4. Search, Sort and Filter")
        print("5. Aggregate Functions")
        print("6. Pivot Table / GroupBy / Transform")
        sub_choice = input("Enter choice: ").strip()

        if sub_choice == "1":
            analyzer.mathematical_operations()
        elif sub_choice == "2":
            other = analyzer.data.sample(min(10, len(analyzer.data))).copy()
            analyzer.combine_data(other)
        elif sub_choice == "3":
            analyzer.split_data()
        elif sub_choice == "4":
            analyzer.search_sort_filter()
        elif sub_choice == "5":
            analyzer.aggregate_functions()
        elif sub_choice == "6":
            analyzer.create_pivot_table()
        else:
            print("Invalid choice.")

    elif choice == "4":
        analyzer.clean_data()

    elif choice == "5":
        analyzer.statistical_analysis()

    elif choice == "6":
        analyzer.visualize_data()

    elif choice == "7":
        analyzer.save_visualization()

    elif choice == "8":
        analyzer.export_data()
        print("\nThank you for using Sales Data Analyzer.")
        break

    else:
        print("\nInvalid choice. Please try again.")
