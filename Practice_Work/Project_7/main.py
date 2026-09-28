import datetime
import time
import math
import random
import uuid

from toolkit import file_utils
from toolkit import math_utils

def datetime_menu():

    while True:

        print("\n===== Datetime and Time Operations =====")
        print("1. Current Date and Time")
        print("2. Difference Between Dates")
        print("3. Custom Date Format")
        print("4. Stopwatch")
        print("5. Countdown Timer")
        print("6. Back")

        choice = input("Enter your choice: ")

        if choice == "1":

            now = datetime.datetime.now()
            print("Current Date and Time:", now)

        elif choice == "2":

            d1 = input("Enter first date (YYYY-MM-DD): ")
            d2 = input("Enter second date (YYYY-MM-DD): ")

            date1 = datetime.datetime.strptime(d1, "%Y-%m-%d")
            date2 = datetime.datetime.strptime(d2, "%Y-%m-%d")

            difference = abs(date2 - date1)

            print("Difference:", difference.days, "days")

        elif choice == "3":

            now = datetime.datetime.now()

            print("Formatted Date:",
                  now.strftime("%d-%m-%Y %H:%M:%S"))

        elif choice == "4":

            print("Stopwatch started...")
            input("Press Enter to stop.")

            print("Stopwatch stopped.")

        elif choice == "5":

            n = int(input("Enter countdown seconds: "))

            while n > 0:
                print(n)
                time.sleep(1)
                n = n - 1

            print("Time's up!")

        elif choice == "6":
            break

        else:
            print("Invalid choice.")

def math_menu():

    while True:

        print("\n===== Mathematical Operations =====")
        print("1. Factorial")
        print("2. Compound Interest")
        print("3. Trigonometry")
        print("4. Area of Shape")
        print("5. Logarithm")
        print("6. Back")

        choice = input("Enter your choice: ")

        if choice == "1":

            n = int(input("Enter number: "))

            print("Factorial:", math_utils.factorial(n))

        elif choice == "2":

            p = float(input("Enter principal amount: "))
            r = float(input("Enter rate of interest: "))
            t = float(input("Enter time in years: "))

            amount = math_utils.compound_interest(p, r, t)

            print("Final Amount:", round(amount, 2))

        elif choice == "3":

            angle = float(input("Enter angle in degrees: "))

            radian = math.radians(angle)

            print("Sin:", math.sin(radian))
            print("Cos:", math.cos(radian))
            print("Tan:", math.tan(radian))

        elif choice == "4":

            print("1. Circle")
            print("2. Square")

            shape = input("Enter choice: ")

            if shape == "1":

                r = float(input("Enter radius: "))

                print("Area:", math_utils.circle_area(r))

            elif shape == "2":

                side = float(input("Enter side: "))

                print("Area:", math_utils.square_area(side))

            else:
                print("Invalid shape.")

        elif choice == "5":

            n = float(input("Enter number: "))

            print("Natural Log:", math.log(n))

        elif choice == "6":
            break

        else:
            print("Invalid choice.")

def random_menu():

    while True:

        print("\n===== Random Data Generation =====")
        print("1. Random Number")
        print("2. Random List")
        print("3. Random Password")
        print("4. Random OTP")
        print("5. Random Sample")
        print("6. Back")

        choice = input("Enter your choice: ")

        if choice == "1":

            print("Random Number:",
                  random.randint(1, 100))

        elif choice == "2":

            numbers = []

            for i in range(5):
                numbers.append(random.randint(1, 100))

            print("Random List:", numbers)

        elif choice == "3":

            length = int(input("Enter password length: "))

            characters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789@#$"

            password = ""

            for i in range(length):
                password = password + random.choice(characters)

            print("Random Password:", password)

        elif choice == "4":

            otp = random.randint(100000, 999999)

            print("Random OTP:", otp)

        elif choice == "5":

            data = [10, 20, 30, 40, 50, 60, 70]

            print("Dataset:", data)
            print("Random Sample:", random.sample(data, 3))

        elif choice == "6":
            break

        else:
            print("Invalid choice.")

def uuid_menu():

    print("\n===== UUID Generator =====")

    print("Generated UUID4:")
    print(uuid.uuid4())

def file_menu():

    while True:

        print("\n===== File Operations =====")
        print("1. Create File")
        print("2. Write File")
        print("3. Read File")
        print("4. Append File")
        print("5. Back")

        choice = input("Enter your choice: ")

        if choice == "1":

            name = input("Enter file name: ")

            file_utils.create_file(name)

        elif choice == "2":

            name = input("Enter file name: ")
            data = input("Enter data: ")

            file_utils.write_file(name, data)

        elif choice == "3":

            name = input("Enter file name: ")

            file_utils.read_file(name)

        elif choice == "4":

            name = input("Enter file name: ")
            data = input("Enter data: ")

            file_utils.append_file(name, data)

        elif choice == "5":
            break

        else:
            print("Invalid choice.")

def explore_module():

    print("\n===== Module Explorer =====")

    print("1. math")
    print("2. random")
    print("3. datetime")
    print("4. Custom math_utils")
    print("5. Custom file_utils")

    choice = input("Enter choice: ")

    if choice == "1":
        print(dir(math))

    elif choice == "2":
        print(dir(random))

    elif choice == "3":
        print(dir(datetime))

    elif choice == "4":
        print(dir(math_utils))

    elif choice == "5":
        print(dir(file_utils))

    else:
        print("Invalid choice.")

def main():

    while True:

        print("\n====================================")
        print("      MULTI-UTILITY TOOLKIT")
        print("====================================")

        print("1. Datetime and Time Operations")
        print("2. Mathematical Operations")
        print("3. Random Data Generation")
        print("4. Generate UUID")
        print("5. File Operations")
        print("6. Explore Module Attributes")
        print("7. Exit")

        choice = input("Enter your choice: ")

        if choice == "1":
            datetime_menu()

        elif choice == "2":
            math_menu()

        elif choice == "3":
            random_menu()

        elif choice == "4":
            uuid_menu()

        elif choice == "5":
            file_menu()

        elif choice == "6":
            explore_module()

        elif choice == "7":

            print("\nThank you for using Multi-Utility Toolkit!")
            print("Goodbye!")
            break

        else:
            print("Invalid choice.")

if __name__ == "__main__":
    main()