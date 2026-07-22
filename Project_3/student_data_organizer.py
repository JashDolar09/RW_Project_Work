print("===================================")
print("Welcome to Student Data Organizer")
print("===================================")

students = []
student_data = {}
subjects_set = set()

while True:

    print("\nMenu")
    print("1. Add Student")
    print("2. Display All Students")
    print("3. Update Student")
    print("4. Delete Student")
    print("5. Display Subjects Offered")
    print("6. Exit")

    choice = input("Enter your choice: ")

    # ---------------- Add Student ----------------

    if choice == "1":

        sid = input("Student ID: ")
        name = input("Name: ")
        age = int(input("Age: "))
        grade = input("Grade: ")
        dob = input("Date of Birth (YYYY-MM-DD): ")
        subjects = input("Subjects (comma separated): ")

        subject_list = subjects.split(",")

        student = {
            "name": name,
            "age": age,
            "grade": grade,
            "subjects": subject_list
        }

        student_data[sid] = student

        info = (sid, dob)     # Tuple

        students.append(info) # List

        for s in subject_list:
            subjects_set.add(s.strip())   # Set

        print("\nStudent Added Successfully!")

    # ---------------- Display Students ----------------

    elif choice == "2":

        if len(students) == 0:
            print("No student found.")

        else:

            print("\nStudent Records\n")

            for item in students:

                sid = item[0]
                dob = item[1]

                print("Student ID :", sid)
                print("Name       :", student_data[sid]["name"])
                print("Age        :", student_data[sid]["age"])
                print("Grade      :", student_data[sid]["grade"])
                print("DOB        :", dob)
                print("Subjects   :", ", ".join(student_data[sid]["subjects"]))
                print("-----------------------------")

    # ---------------- Update ----------------

    elif choice == "3":

        sid = input("Enter Student ID: ")

        if sid in student_data:

            age = int(input("New Age: "))
            subjects = input("New Subjects (comma separated): ")

            student_data[sid]["age"] = age
            student_data[sid]["subjects"] = subjects.split(",")

            for s in subjects.split(","):
                subjects_set.add(s.strip())

            print("Student Updated Successfully!")

        else:
            print("Student not found.")

    # ---------------- Delete ----------------

    elif choice == "4":

        sid = input("Enter Student ID to Delete: ")

        found = False

        for i in range(len(students)):

            if students[i][0] == sid:

                del students[i]
                del student_data[sid]

                found = True
                print("Student Deleted Successfully!")
                break

        if found == False:
            print("Student not found.")

    # ---------------- Display Subjects ----------------

    elif choice == "5":

        print("\nSubjects Offered")

        for s in subjects_set:
            print(s)

    # ---------------- Exit ----------------

    elif choice == "6":

        print("\nThank you for using Student Data Organizer.")
        print("Goodbye!")
        break

    else:
        print("Invalid Choice.")