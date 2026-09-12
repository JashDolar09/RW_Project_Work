import os
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns

class LibraryDashboard:

    def __init__(self):
        self.data = None
        self.output_folder = "output"

        if not os.path.exists(self.output_folder):
            os.makedirs(self.output_folder)

        print("Library Dashboard initialized.")

    def __del__(self):
        print("Library Dashboard closed.")

    def load_data(self, file_path):
        print("\n--- Loading Dataset ---")

        if not os.path.exists(file_path):
            print("Error: File not found.")
            return False

        if not file_path.lower().endswith(".csv"):
            print("Error: Please provide a CSV file.")
            return False

        try:
            data = pd.read_csv(file_path)
        except Exception as error:
            print("Error while reading CSV:", error)
            return False

        required_columns = [
            "Transaction ID",
            "Date",
            "User ID",
            "Book Title",
            "Genre",
            "Borrowing Duration (Days)"
        ]

        missing_columns = []

        for column in required_columns:
            if column not in data.columns:
                missing_columns.append(column)

        if len(missing_columns) > 0:
            print("Missing required columns:", missing_columns)
            return False

        data["Date"] = pd.to_datetime(data["Date"], errors="coerce")

        data["Borrowing Duration (Days)"] = pd.to_numeric(
            data["Borrowing Duration (Days)"],
            errors="coerce"
        )

        invalid_dates = data["Date"].isna().sum()
        invalid_duration = data["Borrowing Duration (Days)"].isna().sum()

        if invalid_dates > 0:
            print("Invalid dates found:", invalid_dates)

        if invalid_duration > 0:
            print("Invalid borrowing durations found:", invalid_duration)

        data["Day"] = data["Date"].dt.day_name()

        if "Time" not in data.columns:
            times = [
                "09:00", "10:00", "11:00", "12:00",
                "13:00", "14:00", "15:00", "16:00",
                "17:00", "18:00"
            ]

            generated_times = []

            for index in range(len(data)):
                generated_times.append(times[index % len(times)])

            data["Time"] = generated_times

        data["Time"] = pd.to_datetime(
            data["Time"],
            format="%H:%M",
            errors="coerce"
        ).dt.strftime("%H:%M")

        data["Late Return"] = np.where(
            data["Borrowing Duration (Days)"] > 14,
            "Yes",
            "No"
        )

        data["Frequent Borrower"] = (
            data["User ID"].map(data["User ID"].value_counts()) >= 3
        ).map({
            True: "Yes",
            False: "No"
        })

        self.data = data

        print("Dataset loaded successfully.")
        print("Shape:", self.data.shape)
        print("Columns:", list(self.data.columns))

        return True

    def explore_data(self):
        if self.data is None:
            print("Please load the dataset first.")
            return

        print("\n--- Dataset Exploration ---")

        print("\nFirst 5 Records:")
        print(self.data.head())

        print("\nDataset Shape:")
        print(self.data.shape)

        print("\nData Types:")
        print(self.data.dtypes)

        print("\nMissing Values:")
        print(self.data.isnull().sum())

        print("\nDuplicate Rows:")
        print(self.data.duplicated().sum())

    def clean_data(self):
        if self.data is None:
            print("Please load the dataset first.")
            return

        print("\n--- Data Cleaning ---")

        before = len(self.data)

        self.data = self.data.drop_duplicates()

        for column in self.data.columns:
            if self.data[column].isnull().sum() > 0:

                if self.data[column].dtype == "object":
                    mode_value = self.data[column].mode()

                    if len(mode_value) > 0:
                        self.data[column] = self.data[column].fillna(
                            mode_value[0]
                        )

                else:
                    median_value = self.data[column].median()
                    self.data[column] = self.data[column].fillna(
                        median_value
                    )

        self.data = self.data[
            self.data["Borrowing Duration (Days)"] >= 0
        ]

        after = len(self.data)

        print("Rows before cleaning:", before)
        print("Rows after cleaning:", after)
        print("Duplicate rows removed:", before - after)

        print("\nMissing Values After Cleaning:")
        print(self.data.isnull().sum())

    def calculate_statistics(self):
        if self.data is None:
            print("Please load the dataset first.")
            return

        print("\n--- Library Statistics ---")

        book_counts = self.data["Book Title"].value_counts()

        most_borrowed_book = book_counts.idxmax()
        most_borrowed_count = book_counts.max()

        duration_array = self.data[
            "Borrowing Duration (Days)"
        ].to_numpy()

        average_duration = np.mean(duration_array)
        standard_deviation = np.std(duration_array)

        busiest_day = self.data["Day"].value_counts().idxmax()
        busiest_day_count = self.data["Day"].value_counts().max()

        print("Most Borrowed Book:", most_borrowed_book)
        print("Borrowings:", most_borrowed_count)

        print(
            "Average Borrowing Duration:",
            round(average_duration, 2),
            "days"
        )

        print(
            "Standard Deviation:",
            round(standard_deviation, 2),
            "days"
        )

        print("Busiest Day:", busiest_day)
        print("Transactions on Busiest Day:", busiest_day_count)

    def filter_transactions(self, condition=None):
        if self.data is None:
            print("Please load the dataset first.")
            return

        print("\n--- Filter Transactions ---")
        print("1. Filter by Genre")
        print("2. Filter by Date Range")
        print("3. Filter by Borrowing Duration")
        print("4. Filter by Book Title")

        choice = input("Enter your choice: ")

        filtered_data = self.data.copy()

        if choice == "1":
            genre = input("Enter genre: ")
            filtered_data = filtered_data[
                filtered_data["Genre"].str.lower() == genre.lower()
            ]

        elif choice == "2":
            start_date = input("Enter start date (YYYY-MM-DD): ")
            end_date = input("Enter end date (YYYY-MM-DD): ")

            start = pd.to_datetime(start_date, errors="coerce")
            end = pd.to_datetime(end_date, errors="coerce")

            if pd.isna(start) or pd.isna(end):
                print("Invalid date entered.")
                return

            filtered_data = filtered_data[
                (filtered_data["Date"] >= start)
                & (filtered_data["Date"] <= end)
            ]

        elif choice == "3":
            minimum = input("Enter minimum borrowing duration: ")
            maximum = input("Enter maximum borrowing duration: ")

            try:
                minimum = float(minimum)
                maximum = float(maximum)
            except ValueError:
                print("Invalid duration.")
                return

            filtered_data = filtered_data[
                (filtered_data["Borrowing Duration (Days)"] >= minimum)
                & (filtered_data["Borrowing Duration (Days)"] <= maximum)
            ]

        elif choice == "4":
            book = input("Enter book title: ")
            filtered_data = filtered_data[
                filtered_data["Book Title"].str.lower() == book.lower()
            ]

        else:
            print("Invalid choice.")
            return

        if len(filtered_data) == 0:
            print("No matching transactions found.")
        else:
            print("\nFiltered Transactions:")
            print(filtered_data.to_string(index=False))
            print("\nFiltered Records:", len(filtered_data))

    def generate_report(self):
        if self.data is None:
            print("Please load the dataset first.")
            return

        print("\n--- Library Summary Report ---")

        total_transactions = len(self.data)
        total_users = self.data["User ID"].nunique()
        total_books = self.data["Book Title"].nunique()
        total_genres = self.data["Genre"].nunique()

        book_counts = self.data["Book Title"].value_counts()

        most_borrowed_book = book_counts.idxmax()
        most_borrowed_count = book_counts.max()

        duration_array = self.data[
            "Borrowing Duration (Days)"
        ].to_numpy()

        average_duration = np.mean(duration_array)

        busiest_day = self.data["Day"].value_counts().idxmax()

        late_returns = (
            self.data["Late Return"] == "Yes"
        ).sum()

        report = f"""
E-LIBRARY DATA INSIGHTS REPORT
================================

Total Transactions: {total_transactions}
Total Users: {total_users}
Total Books: {total_books}
Total Genres: {total_genres}

Most Borrowed Book: {most_borrowed_book}
Number of Borrowings: {most_borrowed_count}

Average Borrowing Duration: {average_duration:.2f} days

Busiest Day: {busiest_day}

Late Returns: {late_returns}

================================
"""

        print(report)

        report_file = os.path.join(
            self.output_folder,
            "library_summary_report.txt"
        )

        with open(report_file, "w") as file:
            file.write(report)

        print("Report saved as:", report_file)

    def create_visualizations(self):
        if self.data is None:
            print("Please load the dataset first.")
            return

        sns.set_theme(style="whitegrid")

        print("\n--- Creating Visualizations ---")

        # 1. Top 5 Most Borrowed Books
        top_books = self.data["Book Title"].value_counts().head(5)

        plt.figure(figsize=(10, 6))
        top_books.plot(kind="bar")
        plt.title("Top 5 Most Borrowed Books")
        plt.xlabel("Book Title")
        plt.ylabel("Number of Borrowings")
        plt.xticks(rotation=30)
        plt.tight_layout()

        plt.savefig(
            os.path.join(
                self.output_folder,
                "top_5_books.png"
            )
        )

        plt.show()
        plt.close()

        # 2. Monthly Borrowing Trends
        monthly_data = self.data.copy()

        monthly_data["Month"] = (
            monthly_data["Date"]
            .dt.to_period("M")
            .astype(str)
        )

        monthly_borrowings = (
            monthly_data.groupby("Month")
            .size()
        )

        plt.figure(figsize=(12, 6))
        plt.plot(
            monthly_borrowings.index,
            monthly_borrowings.values,
            marker="o"
        )

        plt.title("Borrowing Trends Over Months")
        plt.xlabel("Month")
        plt.ylabel("Number of Borrowings")
        plt.xticks(rotation=45)
        plt.tight_layout()

        plt.savefig(
            os.path.join(
                self.output_folder,
                "monthly_borrowing_trends.png"
            )
        )

        plt.show()
        plt.close()

        # 3. Genre Distribution
        genre_counts = self.data["Genre"].value_counts()

        plt.figure(figsize=(8, 8))
        plt.pie(
            genre_counts.values,
            labels=genre_counts.index,
            autopct="%1.1f%%"
        )

        plt.title("Distribution of Books Borrowed by Genre")
        plt.tight_layout()

        plt.savefig(
            os.path.join(
                self.output_folder,
                "genre_distribution.png"
            )
        )

        plt.show()
        plt.close()

        # 4. Borrowing Activity Heatmap
        heatmap_data = self.data.copy()

        heatmap_data["Time"] = pd.to_datetime(
            heatmap_data["Time"],
            format="%H:%M"
        )

        heatmap_data["Hour"] = (
            heatmap_data["Time"].dt.hour
        )

        day_order = [
            "Monday",
            "Tuesday",
            "Wednesday",
            "Thursday",
            "Friday",
            "Saturday",
            "Sunday"
        ]

        activity = pd.crosstab(
            heatmap_data["Day"],
            heatmap_data["Hour"]
        )

        activity = activity.reindex(
            day_order,
            fill_value=0
        )

        plt.figure(figsize=(12, 6))

        sns.heatmap(
            activity,
            annot=True,
            fmt="d",
            cmap="YlGnBu"
        )

        plt.title("Borrowing Activity by Day and Time")
        plt.xlabel("Hour")
        plt.ylabel("Day")
        plt.tight_layout()

        plt.savefig(
            os.path.join(
                self.output_folder,
                "borrowing_activity_heatmap.png"
            )
        )

        plt.show()
        plt.close()

        print("\nAll required visualizations created successfully.")

    def display_grouped_analysis(self):
        if self.data is None:
            print("Please load the dataset first.")
            return

        print("\n--- Grouped Analysis ---")

        print("\nBorrowings by Genre:")
        print(
            self.data.groupby("Genre").size()
            .sort_values(ascending=False)
        )

        print("\nBorrowings by User:")
        print(
            self.data.groupby("User ID").size()
            .sort_values(ascending=False)
            .head(10)
        )

        print("\nTotal Borrowings per Book:")
        print(
            self.data.groupby("Book Title").size()
            .sort_values(ascending=False)
        )

        print("\nAverage Borrowing Duration by Genre:")
        print(
            self.data.groupby("Genre")[
                "Borrowing Duration (Days)"
            ].mean()
            .round(2)
            .sort_values(ascending=False)
        )

    def show_menu(self):
        while True:
            print("\n========================================")
            print("     E-LIBRARY DATA INSIGHTS DASHBOARD")
            print("========================================")
            print("1. Load Dataset")
            print("2. Explore Data")
            print("3. Clean Data")
            print("4. Calculate Statistics")
            print("5. Filter Transactions")
            print("6. Grouped Data Analysis")
            print("7. Generate Report")
            print("8. Create Visualizations")
            print("9. Exit")

            choice = input("\nEnter your choice: ")

            if choice == "1":
                file_path = input(
                    "Enter CSV file path: "
                )
                self.load_data(file_path)

            elif choice == "2":
                self.explore_data()

            elif choice == "3":
                self.clean_data()

            elif choice == "4":
                self.calculate_statistics()

            elif choice == "5":
                self.filter_transactions()

            elif choice == "6":
                self.display_grouped_analysis()

            elif choice == "7":
                self.generate_report()

            elif choice == "8":
                self.create_visualizations()

            elif choice == "9":
                print(
                    "\nThank you for using "
                    "E-Library Data Insights Dashboard."
                )
                break

            else:
                print("Invalid choice. Please enter a valid option.")

dashboard = LibraryDashboard()
dashboard.load_data("library_transactions.csv")
dashboard.explore_data()
dashboard.calculate_statistics()
dashboard.display_grouped_analysis()
dashboard.generate_report()
dashboard.create_visualizations()