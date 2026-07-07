print("=====================")
print("WELCOME TO THE INTERACTIVE PERSONAL DATA COLLECTOR")
print("=====================")
print()

# -----------------------
# Collect user info.
# -------------------------

name = input("Enter your name: ")

age = int(input("Enter your age: "))

height = float(input("Enter your height (in meters): "))

favorite_number = int(input("Enter your favourite number: "))

# ------------------------
# Data processing here
# ------------------------

current_year = 2026

birth_year = current_year - age

height_integer = int(height)

# ------------------------
# display variable info.
# -------------------

print()
print("=====================")
print("Variable details")
print("===================")

print()
print("Name")
print("-----")
print("Value :", name)
print("Data Type :", type(name))
print("Memory Address :", id(name))

print()
print("Age")
print("----")
print("Value :", age)
print("Data Type :", type(age))
print("Memory Address :", id(age))

print()
print("Height")
print("------")
print("Value :", height)
print("Data Type :", type(height))
print("Memory Address :", id(height))

print()
print("Favourite no.")
print("----------------")
print("Value :", favorite_number)
print("Data Type :", type(favorite_number))
print("Memory Address :", id(favorite_number))

# ----------------------
# Type casting do
# --------------------

print()
print("====================")
print("Type casting")
print("==================")

print("Original Height :", height)
print("Original Data Type :", type(height))

print("Converted Height :", height_integer)
print("Converted Data Type :", type(height_integer))

# -----------------------
# Arithmetic operations
# ---------------------

addition = age + favorite_number
subtraction = age - favorite_number
multiplication = age * favorite_number
division = age / favorite_number

print()
print("====================")
print("Calculations")
print("========================")

print("Current Year :", current_year)
print("Approximate Birth Year :", birth_year)

print()
print("Arithmetic operations")

print(age, "+", favorite_number, "=", addition)
print(age, "-", favorite_number, "=", subtraction)
print(age, "*", favorite_number, "=", multiplication)
print(age, "/", favorite_number, "=", division)

# -------------------
# Final summary
# ---------------------

print()
print("====================")
print("Personal Information Summary")
print("====================")

print("Name :", name)
print("Age :", age)
print("Height :", height, "meters")
print("Favourite Number :", favorite_number)
print("Approximate Birth Year :", birth_year)

print()
print("===================")
print("Thank you for using the Personal Data Collector!")
print("===================")