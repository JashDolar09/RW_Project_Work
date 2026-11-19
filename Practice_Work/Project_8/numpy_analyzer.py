import numpy as np


class DataAnalytics:

    def __init__(self, data):
        self.data = np.array(data)

    def __check_data(self):
        if self.data.size == 0:
            print("No data available.")
            return False
        return True

    def indexing(self):
        if self.__check_data():
            print("Array:")
            print(self.data)
            print("First Element:", self.data.flat[0])

    def slicing(self):
        if self.__check_data():
            if self.data.ndim == 1:
                print("Sliced Array:")
                print(self.data[1:4])
            else:
                print("Sliced Array:")
                print(self.data[0:2, 0:2])

    def math_operation(self, choice):
        if not self.__check_data():
            return

        second = np.ones(self.data.shape) * 2

        print("Original Array:")
        print(self.data)

        print("Second Array:")
        print(second)

        if choice == "1":
            print("Addition:")
            print(self.data + second)

        elif choice == "2":
            print("Subtraction:")
            print(self.data - second)

        elif choice == "3":
            print("Multiplication:")
            print(self.data * second)

        elif choice == "4":
            print("Division:")
            print(self.data / second)

        elif choice == "5":
            if self.data.ndim == 2:
                print("Dot Product:")
                print(np.dot(self.data, second.T))
            else:
                print("Dot product requires a 2D array.")

        elif choice == "6":
            if self.data.ndim == 2:
                print("Matrix Multiplication:")
                print(np.matmul(self.data, second.T))
            else:
                print("Matrix multiplication requires a 2D array.")

        else:
            print("Invalid choice.")

    def combine(self):
        if not self.__check_data():
            return

        second = np.ones(self.data.shape, dtype=int) * 5

        print("Original Array:")
        print(self.data)

        print("Second Array:")
        print(second)

        print("Combined Array:")
        print(np.concatenate((self.data, second)))

    def split(self):
        if not self.__check_data():
            return

        result = np.array_split(self.data, 2)

        print("Split Arrays:")

        for i in result:
            print(i)

    def search(self):
        if not self.__check_data():
            return

        value = int(input("Enter value to search: "))

        result = np.where(self.data == value)

        print("Search Result:", result)

    def sort_array(self):
        if not self.__check_data():
            return

        print("1. Ascending")
        print("2. Descending")

        choice = input("Enter choice: ")

        if choice == "1":
            result = np.sort(self.data)

        elif choice == "2":
            result = np.sort(self.data)
            result = result[::-1]

        else:
            print("Invalid choice.")
            return

        print("Sorted Array:")
        print(result)

    def filter_array(self):
        if not self.__check_data():
            return

        value = int(input("Enter threshold: "))

        result = self.data[self.data > value]

        print("Values greater than", value, ":")
        print(result)

    def aggregates(self):
        if not self.__check_data():
            return

        print("Array:")
        print(self.data)

        print("Sum:", np.sum(self.data))
        print("Mean:", np.mean(self.data))
        print("Median:", np.median(self.data))
        print("Standard Deviation:", np.std(self.data))
        print("Variance:", np.var(self.data))
        print("Minimum:", np.min(self.data))
        print("Maximum:", np.max(self.data))

    def percentile(self):
        if not self.__check_data():
            return

        value = float(input("Enter percentile (0-100): "))

        if value < 0 or value > 100:
            print("Enter a value between 0 and 100.")
            return

        print("Percentile:", np.percentile(self.data, value))

    def correlation(self):
        if not self.__check_data():
            return

        first = self.data.flatten()
        second = np.arange(1, self.data.size + 1)

        print("Original Data:", first)
        print("Second Data:", second)

        print("Correlation Coefficient:")
        print(np.corrcoef(first, second)[0, 1])

    @classmethod
    def sample_array(cls):
        return cls([10, 20, 30, 40, 50, 60])

    @staticmethod
    def show_info():
        print("NumPy Analyzer uses NumPy arrays for data analysis.")


print("======================================")
print("       Welcome to NumPy Analyzer")
print("======================================")

data = None

while True:

    print("\n========== MAIN MENU ==========")
    print("1. Create a NumPy Array")
    print("2. Indexing and Slicing")
    print("3. Mathematical Operations")
    print("4. Combine or Split Arrays")
    print("5. Search, Sort, or Filter")
    print("6. Aggregates and Statistics")
    print("7. Percentile")
    print("8. Correlation")
    print("9. Class and Static Method Demo")
    print("10. Exit")

    choice = input("Enter your choice: ")

    if choice == "1":

        print("\n1. 1D Array")
        print("2. 2D Array")
        print("3. 3D Array")
        print("4. Sample Array")

        ch = input("Enter choice: ")

        if ch == "1":

            values = input("Enter numbers separated by space: ")
            numbers = [int(x) for x in values.split()]

            data = DataAnalytics(numbers)

            print("1D Array Created:")
            print(data.data)

        elif ch == "2":

            rows = int(input("Enter rows: "))
            cols = int(input("Enter columns: "))

            values = input("Enter numbers separated by space: ")
            numbers = [int(x) for x in values.split()]

            if len(numbers) != rows * cols:
                print("Number of elements does not match rows and columns.")
            else:
                data = DataAnalytics(
                    np.array(numbers).reshape(rows, cols)
                )

                print("2D Array Created:")
                print(data.data)

        elif ch == "3":

            x = int(input("Enter first dimension: "))
            y = int(input("Enter second dimension: "))
            z = int(input("Enter third dimension: "))

            numbers = list(range(1, x * y * z + 1))

            data = DataAnalytics(
                np.array(numbers).reshape(x, y, z)
            )

            print("3D Array Created:")
            print(data.data)

        elif ch == "4":

            data = DataAnalytics.sample_array()

            print("Sample Array Created:")
            print(data.data)

        else:
            print("Invalid choice.")

    elif choice == "2":

        if data is None:
            print("Create an array first.")
        else:

            print("\n1. Indexing")
            print("2. Slicing")

            ch = input("Enter choice: ")

            if ch == "1":
                data.indexing()

            elif ch == "2":
                data.slicing()

            else:
                print("Invalid choice.")

    elif choice == "3":

        if data is None:
            print("Create an array first.")
        else:

            print("\n1. Addition")
            print("2. Subtraction")
            print("3. Multiplication")
            print("4. Division")
            print("5. Dot Product")
            print("6. Matrix Multiplication")

            ch = input("Enter choice: ")

            data.math_operation(ch)

    elif choice == "4":

        if data is None:
            print("Create an array first.")
        else:

            print("\n1. Combine Arrays")
            print("2. Split Array")

            ch = input("Enter choice: ")

            if ch == "1":
                data.combine()

            elif ch == "2":
                data.split()

            else:
                print("Invalid choice.")

    elif choice == "5":

        if data is None:
            print("Create an array first.")
        else:

            print("\n1. Search")
            print("2. Sort")
            print("3. Filter")

            ch = input("Enter choice: ")

            if ch == "1":
                data.search()

            elif ch == "2":
                data.sort_array()

            elif ch == "3":
                data.filter_array()

            else:
                print("Invalid choice.")

    elif choice == "6":

        if data is None:
            print("Create an array first.")
        else:
            data.aggregates()

    elif choice == "7":

        if data is None:
            print("Create an array first.")
        else:
            data.percentile()

    elif choice == "8":

        if data is None:
            print("Create an array first.")
        else:
            data.correlation()

    elif choice == "9":

        print("\nClass Method Demo:")

        sample = DataAnalytics.sample_array()

        print(sample.data)

        print("\nStatic Method Demo:")

        DataAnalytics.show_info()

        print("\nIs DataAnalytics a class?")

        print(isinstance(sample, DataAnalytics))

    elif choice == "10":

        print("\nThank you for using NumPy Analyzer!")
        print("Goodbye!")
        break

    else:

        print("Invalid choice.")