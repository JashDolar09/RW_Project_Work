from datetime import datetime
import os


class JournalManager:

    def __init__(self):
        self.file = "journal.txt"

    def add_entry(self):
        entry = input("Enter your journal entry: ")

        if entry == "":
            print("Entry cannot be empty.")
            return

        time = datetime.now().strftime("%Y-%m-%d %H:%M:%S")
        text = "[" + time + "] " + entry + "\n"

        try:
            with open(self.file, "x") as f:
                f.write(text)

            print("Entry added successfully!")

        except FileExistsError:

            try:
                with open(self.file, "a") as f:
                    f.write(text)

                print("Entry added successfully!")

            except PermissionError:
                print("Error: Permission denied.")

        except PermissionError:
            print("Error: Permission denied.")

    def view_entries(self):
        try:
            with open(self.file, "r") as f:
                data = f.read()

            if data == "":
                print("No journal entries found.")
            else:
                print("\nYour Journal Entries:")
                print(data)

        except FileNotFoundError:
            print("Error: The journal file does not exist.")
            print("Please add a new entry first.")

        except PermissionError:
            print("Error: Permission denied.")

    def search_entry(self):
        keyword = input("Enter a keyword or date to search: ")

        try:
            with open(self.file, "r") as f:
                lines = f.readlines()

            found = False

            print("\nMatching Entries:")

            for line in lines:
                if keyword.lower() in line.lower():
                    print(line, end="")
                    found = True

            if found == False:
                print("No entries were found for:", keyword)

        except FileNotFoundError:
            print("Error: The journal file does not exist.")

        except PermissionError:
            print("Error: Permission denied.")

    def delete_entries(self):

        if os.path.exists(self.file) == False:
            print("No journal entries to delete.")
            return

        confirm = input(
            "Are you sure you want to delete all entries? (yes/no): "
        )

        if confirm.lower() == "yes":

            try:
                with open(self.file, "w") as f:
                    f.write("")

                os.remove(self.file)

                print("All journal entries have been deleted.")

            except PermissionError:
                print("Error: Permission denied.")

        else:
            print("Delete operation cancelled.")


journal = JournalManager()


print("======================================")
print("Welcome to Personal Journal Manager!")
print("======================================")

while True:

    print("\n========== MENU ==========")
    print("1. Add a New Entry")
    print("2. View All Entries")
    print("3. Search for an Entry")
    print("4. Delete All Entries")
    print("5. Exit")

    choice = input("Enter your choice: ")

    if choice == "1":
        journal.add_entry()

    elif choice == "2":
        journal.view_entries()

    elif choice == "3":
        journal.search_entry()

    elif choice == "4":
        journal.delete_entries()

    elif choice == "5":
        print("Thank you for using Personal Journal Manager.")
        print("Goodbye!")
        break

    else:
        print("Invalid option. Please select a valid option.")