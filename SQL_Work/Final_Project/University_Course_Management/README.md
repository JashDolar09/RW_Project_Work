# 🎓 University Course Management System

### University Database Management Project

> A practical MySQL project for managing students, courses, instructors, departments, and enrollments using a structured relational database.

---

## 👨‍💻 Author

**Jash Dolar**

---

## 🎯 Project Objective

The **University Course Management System** project is designed to create and manage a relational database for a **University Course Management System** using MySQL.

The project demonstrates practical SQL operations including:

* 🗄️ Database and table creation
* 🔑 Primary Keys and Foreign Keys
* ➕ Insert records
* 🔍 Retrieve records
* ✏️ Update records
* 🗑️ Delete records
* 🔗 INNER JOIN and LEFT JOIN
* 📊 Aggregate functions
* 📈 GROUP BY and HAVING
* 🔎 Subqueries
* 📅 Date functions
* 🔤 String functions
* 🔢 CASE statements
* 📋 LIMIT
* 📈 Running totals

---

## 🗃️ Database Information

| Item                | Details                        |
| ------------------- | ------------------------------ |
| **Database Name**   | `university_course_management` |
| **Database System** | MySQL                          |
| **Project Type**    | Relational Database            |
| **Domain**          | University Course Management   |

---

## 📋 Database Tables

### 🏢 1. Departments

Stores information about university departments.

**Fields:**

`DepartmentID` · `DepartmentName`

---

### 👨‍🎓 2. Students

Stores information about university students.

**Fields:**

`StudentID` · `FirstName` · `LastName` · `Email` · `BirthDate` · `EnrollmentDate`

---

### 📚 3. Courses

Stores information about university courses.

**Fields:**

`CourseID` · `CourseName` · `DepartmentID` · `Credits`

**Relationship:**

`DepartmentID` → `Departments.DepartmentID`

---

### 👨‍🏫 4. Instructors

Stores information about university instructors.

**Fields:**

`InstructorID` · `FirstName` · `LastName` · `Email` · `DepartmentID` · `Salary`

**Relationship:**

`DepartmentID` → `Departments.DepartmentID`

---

### 📝 5. Enrollments

Stores information about students enrolled in courses.

**Fields:**

`EnrollmentID` · `StudentID` · `CourseID` · `EnrollmentDate`

**Relationships:**

`StudentID` → `Students.StudentID`

`CourseID` → `Courses.CourseID`

---

## 🔧 SQL Operations

### 🏢 Departments

* Insert department records
* Display department records
* Update department name
* Delete department using `DepartmentID`

### 👨‍🎓 Students

* Insert student records
* Display student records
* Update student information
* Delete student using `StudentID`
* Find students enrolled after 2022
* Extract enrollment year
* Classify students as Senior or Junior

### 📚 Courses

* Insert course records
* Display course records
* Update course credits
* Delete course using `CourseID`
* Find Mathematics department courses
* Limit results using `LIMIT`
* Calculate average course credits

### 👨‍🏫 Instructors

* Insert instructor records
* Display instructor records
* Update instructor salary
* Delete instructor using `InstructorID`
* Find maximum salary in Computer Science
* Concatenate instructor first and last names

### 📝 Enrollments

* Insert enrollment records
* Display enrollment records
* Update enrollment date
* Delete enrollment using `EnrollmentID`
* Count students enrolled in each course
* Find courses with more than 5 students
* Find students in courses with more than 10 students
* Calculate running enrollment totals

---

## 📊 Assignment Queries

The project completes the following **16 required tasks**:

| No.    | Task                                                                  |
| ------ | --------------------------------------------------------------------- |
| **1**  | Perform CRUD operations on all tables                                 |
| **2**  | Retrieve students who enrolled after 2022                             |
| **3**  | Retrieve Mathematics courses with `LIMIT 5`                           |
| **4**  | Find courses with more than 5 students                                |
| **5**  | Find students enrolled in both required courses                       |
| **6**  | Find students enrolled in either required course                      |
| **7**  | Calculate average credits of all courses                              |
| **8**  | Find maximum instructor salary in Computer Science                    |
| **9**  | Count students enrolled in each department                            |
| **10** | Perform INNER JOIN between students and courses                       |
| **11** | Perform LEFT JOIN for all students and courses                        |
| **12** | Use a subquery to find students in courses with more than 10 students |
| **13** | Extract enrollment year                                               |
| **14** | Concatenate instructor names                                          |
| **15** | Calculate running total of enrollments                                |
| **16** | Classify students as Senior or Junior                                 |

---

## 📊 SQL Functions and Clauses Used

| Function / Clause | Purpose                                 |
| ----------------- | --------------------------------------- |
| `COUNT()`         | Count students and records              |
| `AVG()`           | Calculate average course credits        |
| `MAX()`           | Find maximum instructor salary          |
| `YEAR()`          | Extract year from enrollment date       |
| `CONCAT()`        | Combine instructor first and last names |
| `CASE`            | Classify students as Senior or Junior   |
| `DATE_SUB()`      | Compare enrollment dates                |
| `WHERE`           | Filter records                          |
| `GROUP BY`        | Group records                           |
| `HAVING`          | Filter grouped results                  |
| `INNER JOIN`      | Match related records                   |
| `LEFT JOIN`       | Keep all records from the left table    |
| `IN`              | Match values from a list or subquery    |
| `LIMIT`           | Limit query results                     |
| `DISTINCT`        | Remove duplicate records                |
| `OVER()`          | Calculate running total                 |

---

## 🔗 Database Relationships

```text
Departments
    │
    ├─────────────── Courses
    │                   │
    │                   │
    └─────────────── Instructors
                        
Students
    │
    │
    └─────────────── Enrollments ─────────────── Courses
```

### Relationships

```text
Departments.DepartmentID
        ↓
Courses.DepartmentID

Departments.DepartmentID
        ↓
Instructors.DepartmentID

Students.StudentID
        ↓
Enrollments.StudentID

Courses.CourseID
        ↓
Enrollments.CourseID
```

---

## 📝 Project Assumptions

The assignment provided sample records, and additional records were added where required to properly demonstrate the assigned queries.

### 1. Additional Student Records

The project contains **16 students** instead of only the initial sample records.

Additional students were added because Query 4 and Query 12 require courses with more than 5 and more than 10 enrolled students.

### 2. Additional Enrollment Records

Additional enrollment records were added so that **Introduction to SQL** contains more than 10 students.

This allows Query 4 and Query 12 to produce meaningful results.

### 3. Instructor Salary

The original instructor fields did not include a salary field, but Query 8 requires the maximum instructor salary.

Therefore, the following field was added:

`Salary DECIMAL(10,2)`

### 4. Senior / Junior Classification

For Query 16:

* **Senior** = Enrollment date is more than 4 years before the current date.
* **Junior** = Enrollment date is within the last 4 years.

### 5. SQL File and Outputs

All tasks were performed personally.

The `.sql` file contains the queries performed for the project. The SQL has been formatted clearly for proper understanding and readability.

The actual MySQL outputs were captured as screenshots and stored inside the `Output` folder.

---

## 📁 Project Structure

```text
University_Course_Management/

│
├── Output/
│   ├── Output1.png
│   ├── Output2.png
│   ├── Output3.png
│   └── Output4.png
│
├── university_course_management.sql
│
└── README.md
```

---

## ▶️ How to Run

### 1. Open MySQL

Open the **MySQL Command Line Client** or **MySQL Workbench**.

### 2. Create and select the database

The SQL file contains:

```sql
CREATE DATABASE university_course_management;

USE university_course_management;
```

### 3. Run the SQL file

Execute the queries from:

```text
university_course_management.sql
```

The SQL file contains the **database creation, table creation, sample data, CRUD operations, required assignment queries, and MySQL outputs**.

### 4. Check the outputs

The actual query results are available as screenshots inside:

```text
Output/
```

---

## 🛠️ Tools Used

**MySQL** · **SQL** · **MySQL Command Line Client** · **MySQL Workbench** · **VS Code**

---

## 📌 Project Highlights

* 🗄️ **5 relational tables**
* 👨‍🎓 **16 student records**
* 📚 **5 course records**
* 👨‍🏫 **5 instructor records**
* 🏢 **5 department records**
* 📝 **16 enrollment records**
* 🔑 Primary and Foreign Keys
* 🔄 Complete CRUD operations
* 🔗 Multiple JOIN operations
* 🔎 Subquery implementation
* 📊 Aggregate functions
* 📈 Running total
* 📅 Date and year functions
* 🔤 String concatenation
* 🔢 CASE-based classification

---

## ✅ Project Status

**Completed**

All required tasks from the University Course Management System assignment have been completed.

---

<div align="center">

### 🎓 University Course Management System

**University Database Management Project**

**Created by Jash Dolar**

</div>
