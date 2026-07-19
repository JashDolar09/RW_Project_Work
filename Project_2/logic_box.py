print("==========================================")
print("Welcome to Pattern Generator and Number Analyzer!")
print("==========================================")

while True:

    print("\nMenu")
    print("1. Generate Pattern")
    print("2. Analyze Numbers")
    print("3. Exit")

    choice = input("Enter your choice: ")

    if choice == "1":

        rows = int(input("Enter number of rows: "))

        if rows <= 0:
            print("Invalid row count.")
            break

        print("\nRight Angled Triangle\n")

        for i in range(1, rows + 1):
            for j in range(i):
                print("*", end="")
            print()

    elif choice == "2":

        start = int(input("Enter start number: "))
        end = int(input("Enter end number: "))

        if end < start:
            print("End number must be greater than start number.")
            continue

        total = 0

        print()

        for num in range(start, end + 1):

            if num == 0:
                pass

            if num % 2 == 0:
                print("Number", num, "is Even")
            else:
                print("Number", num, "is Odd")

            total = total + num

        print("\nSum of all numbers =", total)

    elif choice == "3":

        print("Exiting the program...")
        print("Goodbye!")
        break

    else:
        print("Invalid choice. Please try again.")