print("==========================================")
print("Python OOP Project: Employee Management")
print("==========================================")

class Employee:

    def __init__(self, name, age, employee_id="Not Given", salary=0):
        self.name = name
        self.age = age
        self.__employee_id = employee_id
        self.__salary = salary

    def get_id(self):
        return self.__employee_id

    def set_id(self, employee_id):
        self.__employee_id = employee_id

    def get_salary(self):
        return self.__salary

    def set_salary(self, salary):
        self.__salary = salary

    def display(self):
        print("Name:", self.name)
        print("Age:", self.age)
        print("Employee ID:", self.__employee_id)
        print("Salary:", self.__salary)

    def __del__(self):
        print("Employee object deleted")


class Manager(Employee):

    def __init__(self, name, age, employee_id, salary, department):
        super().__init__(name, age, employee_id, salary)
        self.department = department

    def display(self):
        print("Manager Details:")
        print("Name:", self.name)
        print("Age:", self.age)
        print("Employee ID:", self.get_id())
        print("Salary:", self.get_salary())
        print("Department:", self.department)


class Developer(Employee):

    def __init__(self, name, age, employee_id, salary, programming_language):
        super().__init__(name, age, employee_id, salary)
        self.programming_language = programming_language

    def display(self):
        print("Developer Details:")
        print("Name:", self.name)
        print("Age:", self.age)
        print("Employee ID:", self.get_id())
        print("Salary:", self.get_salary())
        print("Programming Language:", self.programming_language)


employee = None
manager = None
developer = None

while True:

    print("\n========== MENU ==========")
    print("1. Create Employee")
    print("2. Create Manager")
    print("3. Create Developer")
    print("4. Show Employee Details")
    print("5. Show Manager Details")
    print("6. Show Developer Details")
    print("7. Update Salary")
    print("8. Check Inheritance")
    print("9. Exit")

    choice = input("Enter your choice: ")

    # Create Employee
    if choice == "1":

        name = input("Enter Name: ")
        age = int(input("Enter Age: "))
        eid = input("Enter Employee ID: ")
        salary = float(input("Enter Salary: "))

        employee = Employee(name, age, eid, salary)

        print("Employee created successfully!")

    # Create Manager
    elif choice == "2":

        name = input("Enter Name: ")
        age = int(input("Enter Age: "))
        eid = input("Enter Employee ID: ")
        salary = float(input("Enter Salary: "))
        department = input("Enter Department: ")

        manager = Manager(name, age, eid, salary, department)

        print("Manager created successfully!")

    # Create Developer
    elif choice == "3":

        name = input("Enter Name: ")
        age = int(input("Enter Age: "))
        eid = input("Enter Employee ID: ")
        salary = float(input("Enter Salary: "))
        language = input("Enter Programming Language: ")

        developer = Developer(name, age, eid, salary, language)

        print("Developer created successfully!")

    # Employee Details
    elif choice == "4":

        if employee == None:
            print("Employee not created.")
        else:
            employee.display()

    # Manager Details
    elif choice == "5":

        if manager == None:
            print("Manager not created.")
        else:
            manager.display()

    # Developer Details
    elif choice == "6":

        if developer == None:
            print("Developer not created.")
        else:
            developer.display()

    # Update Salary
    elif choice == "7":

        eid = input("Enter Employee ID: ")
        salary = float(input("Enter New Salary: "))

        if employee != None and employee.get_id() == eid:
            employee.set_salary(salary)
            print("Salary updated!")

        elif manager != None and manager.get_id() == eid:
            manager.set_salary(salary)
            print("Salary updated!")

        elif developer != None and developer.get_id() == eid:
            developer.set_salary(salary)
            print("Salary updated!")

        else:
            print("Employee not found.")

    # Inheritance Check
    elif choice == "8":

        print("Manager is subclass of Employee:",
              issubclass(Manager, Employee))

        print("Developer is subclass of Employee:",
              issubclass(Developer, Employee))

    # Exit
    elif choice == "9":

        print("Exiting the system.")
        print("Goodbye!")
        break

    else:
        print("Invalid choice.")