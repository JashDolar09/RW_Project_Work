print("======================================")
print("Data Analyzer and Transformer Program")
print("======================================")

data = []
summary = ""

def input_data():
    """Input 1D List"""

    global data

    print("\n1. Manual Data")
    print("2. Sample Data")

    ch = input("Enter choice: ")

    if ch == "1":

        nums = input("Enter numbers separated by space: ")
        data = []

        for i in nums.split():
            data.append(int(i))

    elif ch == "2":

        data = [34, 12, 56, 78, 43, 21, 90]

    print("Data Stored Successfully!")

def display_summary():
    """Display Summary"""

    global summary

    if len(data) == 0:
        print("No Data.")
        return

    total = sum(data)
    avg = total / len(data)

    summary = "Total Values = " + str(len(data))

    print("\nData Summary")
    print("Length :", len(data))
    print("Minimum :", min(data))
    print("Maximum :", max(data))
    print("Sum :", total)
    print("Average :", avg)

def average():
    """Average"""

    total = sum(data)
    return total / len(data)

def duplicates():
    """Find Duplicate Values"""

    found = []

    for i in data:

        if data.count(i) > 1:

            if i not in found:
                found.append(i)

    print("Duplicate Values :", found)

def unique():
    """Display Unique Values"""

    print("Unique Values :", list(set(data)))

def show_args(*args):
    """Display *args"""

    print("Values are:")

    for i in args:
        print(i)

def show_kwargs(**kwargs):
    """Display **kwargs"""

    print("\nDataset Information")

    for k, v in kwargs.items():
        print(k, ":", v)

def factorial(n):
    """Factorial"""

    if n == 1:
        return 1

    return n * factorial(n - 1)

def lambda_filter():
    """Lambda Filter"""

    value = int(input("Enter Threshold: "))

    result = list(filter(lambda x: x >= value, data))

    print(result)

def global_demo():
    """Global Variable"""

    global summary

    print(summary)

def statistics():
    """Return Multiple Values"""

    total = sum(data)
    avg = total / len(data)

    return min(data), max(data), avg

def sort_data():
    """Sorting"""

    print("1. Ascending")
    print("2. Descending")

    ch = input("Enter Choice: ")

    if ch == "1":

        data.sort()

        print(data)

    elif ch == "2":

        data.sort(reverse=True)

        print(data)

def two_d():
    """2D List"""

    arr = [
        [10,20,30],
        [40,50,60],
        [70,80,90]
    ]

    print("\n2D List")

    for row in arr:

        for col in row:
            print(col,end="\t")

        print()

    print("\nSorted Rows")

    print(sorted(arr))

while True:

    print("\n========== MENU ==========")
    print("1. Input Data")
    print("2. Display Summary")
    print("3. Average")
    print("4. Duplicate Values")
    print("5. Unique Values")
    print("6. *args Demo")
    print("7. **kwargs Demo")
    print("8. Factorial")
    print("9. Lambda Filter")
    print("10. Global Variable")
    print("11. Statistics")
    print("12. Sort Data")
    print("13. 2D List")
    print("14. Function Descriptions")
    print("15. Exit")

    choice = input("Enter Choice: ")

    if choice == "1":
        input_data()

    elif choice == "2":
        display_summary()

    elif choice == "3":

        if len(data) == 0:
            print("No Data")
        else:
            print("Average =", average())

    elif choice == "4":

        if len(data) == 0:
            print("No Data")
        else:
            duplicates()

    elif choice == "5":

        if len(data) == 0:
            print("No Data")
        else:
            unique()

    elif choice == "6":

        show_args(10,20,30,40,50)

    elif choice == "7":

        show_kwargs(Name="Student Dataset", Total=len(data))

    elif choice == "8":

        n = int(input("Enter Number: "))
        print("Factorial =", factorial(n))

    elif choice == "9":

        if len(data) == 0:
            print("No Data")
        else:
            lambda_filter()

    elif choice == "10":

        global_demo()

    elif choice == "11":

        if len(data) == 0:
            print("No Data")
        else:
            a,b,c = statistics()

            print("Minimum =",a)
            print("Maximum =",b)
            print("Average =",c)

    elif choice == "12":

        if len(data) == 0:
            print("No Data")
        else:
            sort_data()

    elif choice == "13":

        two_d()

    elif choice == "14":

        print(input_data.__doc__)
        print(display_summary.__doc__)
        print(average.__doc__)
        print(duplicates.__doc__)
        print(unique.__doc__)
        print(show_args.__doc__)
        print(show_kwargs.__doc__)
        print(factorial.__doc__)
        print(lambda_filter.__doc__)
        print(global_demo.__doc__)
        print(statistics.__doc__)
        print(sort_data.__doc__)
        print(two_d.__doc__)

    elif choice == "15":

        print("Thank You!")
        break

    else:

        print("Invalid Choice")