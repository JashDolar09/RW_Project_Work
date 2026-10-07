-- ============================================================
-- FINAL PROJECT
-- UNIVERSITY COURSE MANAGEMENT SYSTEM
-- ============================================================

-- ============================================================
-- DATABASE CREATION
-- ============================================================

CREATE DATABASE university_course_management;

USE university_course_management;

-- ============================================================
-- TABLE CREATION
-- ============================================================

CREATE TABLE Departments (
DepartmentID INT PRIMARY KEY,
DepartmentName VARCHAR(100)
);

CREATE TABLE Students (
StudentID INT PRIMARY KEY,
FirstName VARCHAR(50),
LastName VARCHAR(50),
Email VARCHAR(100),
BirthDate DATE,
EnrollmentDate DATE
);

CREATE TABLE Courses (
CourseID INT PRIMARY KEY,
CourseName VARCHAR(100),
DepartmentID INT,
Credits INT,
FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);

CREATE TABLE Instructors (
InstructorID INT PRIMARY KEY,
FirstName VARCHAR(50),
LastName VARCHAR(50),
Email VARCHAR(100),
DepartmentID INT,
Salary DECIMAL(10,2),
FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);

CREATE TABLE Enrollments (
EnrollmentID INT PRIMARY KEY,
StudentID INT,
CourseID INT,
EnrollmentDate DATE,
FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
FOREIGN KEY (CourseID) REFERENCES Courses(CourseID)
);

-- ============================================================
-- INSERT DATA
-- ============================================================

INSERT INTO Departments (DepartmentID, DepartmentName) VALUES
(1, 'Computer Science'),
(2, 'Mathematics'),
(3, 'Physics'),
(4, 'Business'),
(5, 'Engineering');

Query OK, 5 rows affected (0.01 sec)

INSERT INTO Students
(StudentID, FirstName, LastName, Email, BirthDate, EnrollmentDate)
VALUES
(1, 'John', 'Doe', '[john.doe@email.com](mailto:john.doe@email.com)', '2000-01-15', '2022-08-01'),
(2, 'Jane', 'Smith', '[jane.smith@email.com](mailto:jane.smith@email.com)', '1999-05-25', '2021-08-01'),
(3, 'Michael', 'Brown', '[michael.brown@email.com](mailto:michael.brown@email.com)', '2001-03-10', '2023-08-01'),
(4, 'Emily', 'Davis', '[emily.davis@email.com](mailto:emily.davis@email.com)', '2000-11-20', '2024-08-01'),
(5, 'David', 'Wilson', '[david.wilson@email.com](mailto:david.wilson@email.com)', '2002-07-12', '2025-08-01'),
(6, 'Alex', 'Taylor', '[alex.taylor@email.com](mailto:alex.taylor@email.com)', '2001-01-10', '2023-08-01'),
(7, 'Sarah', 'Miller', '[sarah.miller@email.com](mailto:sarah.miller@email.com)', '2000-02-15', '2023-08-01'),
(8, 'Chris', 'Wilson', '[chris.wilson@email.com](mailto:chris.wilson@email.com)', '2001-04-20', '2023-08-01'),
(9, 'Laura', 'Anderson', '[laura.anderson@email.com](mailto:laura.anderson@email.com)', '2000-06-12', '2023-08-01'),
(10, 'Kevin', 'Thomas', '[kevin.thomas@email.com](mailto:kevin.thomas@email.com)', '2002-07-18', '2023-08-01'),
(11, 'Emma', 'Martin', '[emma.martin@email.com](mailto:emma.martin@email.com)', '2001-09-25', '2023-08-01'),
(12, 'Ryan', 'Jackson', '[ryan.jackson@email.com](mailto:ryan.jackson@email.com)', '2000-10-05', '2023-08-01'),
(13, 'Olivia', 'White', '[olivia.white@email.com](mailto:olivia.white@email.com)', '2002-11-14', '2023-08-01'),
(14, 'Daniel', 'Harris', '[daniel.harris@email.com](mailto:daniel.harris@email.com)', '2001-12-20', '2023-08-01'),
(15, 'Sophia', 'Clark', '[sophia.clark@email.com](mailto:sophia.clark@email.com)', '2000-03-30', '2023-08-01'),
(16, 'James', 'Lewis', '[james.lewis@email.com](mailto:james.lewis@email.com)', '2002-05-08', '2023-08-01');

Query OK, 16 rows affected (0.01 sec)

INSERT INTO Courses
(CourseID, CourseName, DepartmentID, Credits)
VALUES
(101, 'Introduction to SQL', 1, 3),
(102, 'Data Structures', 2, 4),
(103, 'Database Management', 1, 3),
(104, 'Calculus', 2, 4),
(105, 'Physics Fundamentals', 3, 3);

Query OK, 5 rows affected (0.01 sec)

INSERT INTO Instructors
(InstructorID, FirstName, LastName, Email, DepartmentID, Salary)
VALUES
(1, 'Alice', 'Johnson', '[alice.johnson@univ.com](mailto:alice.johnson@univ.com)', 1, 60000.00),
(2, 'Bob', 'Lee', '[bob.lee@univ.com](mailto:bob.lee@univ.com)', 2, 55000.00),
(3, 'Robert', 'Patel', '[robert.patel@univ.com](mailto:robert.patel@univ.com)', 3, 65000.00),
(4, 'Priya', 'Shah', '[priya.shah@univ.com](mailto:priya.shah@univ.com)', 4, 50000.00),
(5, 'Daniel', 'Clark', '[daniel.clark@univ.com](mailto:daniel.clark@univ.com)', 5, 70000.00);

Query OK, 5 rows affected (0.01 sec)

INSERT INTO Enrollments
(EnrollmentID, StudentID, CourseID, EnrollmentDate)
VALUES
(1, 1, 101, '2022-08-01'),
(2, 2, 102, '2021-08-01'),
(3, 3, 103, '2023-08-01'),
(4, 4, 104, '2024-08-01'),
(5, 5, 105, '2025-08-01'),
(6, 6, 101, '2023-08-01'),
(7, 7, 101, '2023-08-01'),
(8, 8, 101, '2023-08-01'),
(9, 9, 101, '2023-08-01'),
(10, 10, 101, '2023-08-01'),
(11, 11, 101, '2023-08-01'),
(12, 12, 101, '2023-08-01'),
(13, 13, 101, '2023-08-01'),
(14, 14, 101, '2023-08-01'),
(15, 15, 101, '2023-08-01'),
(16, 16, 101, '2023-08-01');

Query OK, 16 rows affected (0.01 sec)

-- ============================================================
-- VERIFY TABLE DATA
-- ============================================================

SELECT * FROM Departments;

+--------------+------------------+
| DepartmentID | DepartmentName   |
+--------------+------------------+
|            1 | Computer Science |
|            2 | Mathematics      |
|            3 | Physics          |
|            4 | Business         |
|            5 | Engineering     |
+--------------+------------------+
5 rows in set (0.00 sec)

SELECT * FROM Students;

+-----------+-----------+----------+--------------------------+------------+---------------+
| StudentID | FirstName | LastName | Email                    | BirthDate  | EnrollmentDate|
+-----------+-----------+----------+--------------------------+------------+---------------+
|         1 | John      | Doe      | [john.doe@email.com](mailto:john.doe@email.com)       | 2000-01-15 | 2022-08-01    |
|         2 | Jane      | Smith    | [jane.smith@email.com](mailto:jane.smith@email.com)     | 1999-05-25 | 2021-08-01    |
|         3 | Michael   | Brown    | [michael.brown@email.com](mailto:michael.brown@email.com)  | 2001-03-10 | 2023-08-01    |
|         4 | Emily     | Davis    | [emily.davis@email.com](mailto:emily.davis@email.com)    | 2000-11-20 | 2024-08-01    |
|         5 | David     | Wilson   | [david.wilson@email.com](mailto:david.wilson@email.com)   | 2002-07-12 | 2025-08-01    |
|         6 | Alex      | Taylor   | [alex.taylor@email.com](mailto:alex.taylor@email.com)    | 2001-01-10 | 2023-08-01    |
|         7 | Sarah     | Miller   | [sarah.miller@email.com](mailto:sarah.miller@email.com)   | 2000-02-15 | 2023-08-01    |
|         8 | Chris     | Wilson   | [chris.wilson@email.com](mailto:chris.wilson@email.com)   | 2001-04-20 | 2023-08-01    |
|         9 | Laura     | Anderson | [laura.anderson@email.com](mailto:laura.anderson@email.com) | 2000-06-12 | 2023-08-01    |
|        10 | Kevin     | Thomas   | [kevin.thomas@email.com](mailto:kevin.thomas@email.com)   | 2002-07-18 | 2023-08-01    |
|        11 | Emma      | Martin   | [emma.martin@email.com](mailto:emma.martin@email.com)    | 2001-09-25 | 2023-08-01    |
|        12 | Ryan      | Jackson  | [ryan.jackson@email.com](mailto:ryan.jackson@email.com)   | 2000-10-05 | 2023-08-01    |
|        13 | Olivia    | White    | [olivia.white@email.com](mailto:olivia.white@email.com)   | 2002-11-14 | 2023-08-01    |
|        14 | Daniel    | Harris   | [daniel.harris@email.com](mailto:daniel.harris@email.com)  | 2001-12-20 | 2023-08-01    |
|        15 | Sophia    | Clark    | [sophia.clark@email.com](mailto:sophia.clark@email.com)   | 2000-03-30 | 2023-08-01    |
|        16 | James     | Lewis    | [james.lewis@email.com](mailto:james.lewis@email.com)    | 2002-05-08 | 2023-08-01    |
+-----------+-----------+----------+--------------------------+------------+---------------+
16 rows in set (0.00 sec)

SELECT * FROM Courses;

+----------+-----------------------+--------------+---------+
| CourseID | CourseName            | DepartmentID | Credits |
+----------+-----------------------+--------------+---------+
|      101 | Introduction to SQL  |            1 |       3 |
|      102 | Data Structures       |            2 |       4 |
|      103 | Database Management   |            1 |       3 |
|      104 | Calculus              |            2 |       4 |
|      105 | Physics Fundamentals  |            3 |       3 |
+----------+-----------------------+--------------+---------+
5 rows in set (0.00 sec)

SELECT * FROM Instructors;

+--------------+-----------+----------+----------------------------+--------------+----------+
| InstructorID | FirstName | LastName | Email                      | DepartmentID | Salary   |
+--------------+-----------+----------+----------------------------+--------------+----------+
|            1 | Alice     | Johnson  | [alice.johnson@univ.com](mailto:alice.johnson@univ.com)     |            1 | 60000.00 |
|            2 | Bob       | Lee      | [bob.lee@univ.com](mailto:bob.lee@univ.com)           |            2 | 55000.00 |
|            3 | Robert    | Patel    | [robert.patel@univ.com](mailto:robert.patel@univ.com)      |            3 | 65000.00 |
|            4 | Priya     | Shah     | [priya.shah@univ.com](mailto:priya.shah@univ.com)        |            4 | 50000.00 |
|            5 | Daniel    | Clark    | [daniel.clark@univ.com](mailto:daniel.clark@univ.com)      |            5 | 70000.00 |
+--------------+-----------+----------+----------------------------+--------------+----------+
5 rows in set (0.00 sec)

SELECT * FROM Enrollments;

+---------------+-----------+----------+----------------+
| EnrollmentID  | StudentID | CourseID | EnrollmentDate |
+---------------+-----------+----------+----------------+
|             1 |         1 |      101 | 2022-08-01     |
|             2 |         2 |      102 | 2021-08-01     |
|             3 |         3 |      103 | 2023-08-01     |
|             4 |         4 |      104 | 2024-08-01     |
|             5 |         5 |      105 | 2025-08-01     |
|             6 |         6 |      101 | 2023-08-01     |
|             7 |         7 |      101 | 2023-08-01     |
|             8 |         8 |      101 | 2023-08-01     |
|             9 |         9 |      101 | 2023-08-01     |
|            10 |        10 |      101 | 2023-08-01     |
|            11 |        11 |      101 | 2023-08-01     |
|            12 |        12 |      101 | 2023-08-01     |
|            13 |        13 |      101 | 2023-08-01     |
|            14 |        14 |      101 | 2023-08-01     |
|            15 |        15 |      101 | 2023-08-01     |
|            16 |        16 |      101 | 2023-08-01     |
+---------------+-----------+----------+----------------+
16 rows in set (0.00 sec)

-- ============================================================
-- QUERY 1: CRUD OPERATIONS
-- ============================================================

-- STUDENTS CRUD

INSERT INTO Students
(StudentID, FirstName, LastName, Email, BirthDate, EnrollmentDate)
VALUES
(17, 'Test', 'Student', '[test.student@email.com](mailto:test.student@email.com)', '2001-09-15', '2025-08-01');

Query OK, 1 row affected (0.01 sec)

SELECT * FROM Students
WHERE StudentID = 17;

+-----------+-----------+----------+-------------------------+------------+---------------+
| StudentID | FirstName | LastName | Email                   | BirthDate  | EnrollmentDate|
+-----------+-----------+----------+-------------------------+------------+---------------+
|        17 | Test      | Student  | [test.student@email.com](mailto:test.student@email.com)  | 2001-09-15 | 2025-08-01    |
+-----------+-----------+----------+-------------------------+------------+---------------+
1 row in set (0.00 sec)

UPDATE Students
SET Email = '[test.student@univ.com](mailto:test.student@univ.com)'
WHERE StudentID = 17;

Query OK, 1 row affected (0.01 sec)

SELECT * FROM Students
WHERE StudentID = 17;

+-----------+-----------+----------+------------------------+------------+---------------+
| StudentID | FirstName | LastName | Email                  | BirthDate  | EnrollmentDate|
+-----------+-----------+----------+------------------------+------------+---------------+
|        17 | Test      | Student  | [test.student@univ.com](mailto:test.student@univ.com) | 2001-09-15 | 2025-08-01    |
+-----------+-----------+----------+------------------------+------------+---------------+
1 row in set (0.00 sec)

DELETE FROM Students
WHERE StudentID = 17;

Query OK, 1 row affected (0.00 sec)

SELECT * FROM Students
WHERE StudentID = 17;

Empty set (0.00 sec)

-- COURSES CRUD

INSERT INTO Courses
(CourseID, CourseName, DepartmentID, Credits)
VALUES
(106, 'Web Development', 1, 3);

Query OK, 1 row affected (0.01 sec)

SELECT * FROM Courses
WHERE CourseID = 106;

+----------+-----------------+--------------+---------+
| CourseID | CourseName      | DepartmentID | Credits |
+----------+-----------------+--------------+---------+
|      106 | Web Development |            1 |       3 |
+----------+-----------------+--------------+---------+
1 row in set (0.00 sec)

UPDATE Courses
SET Credits = 4
WHERE CourseID = 106;

Query OK, 1 row affected (0.01 sec)

SELECT * FROM Courses
WHERE CourseID = 106;

+----------+-----------------+--------------+---------+
| CourseID | CourseName      | DepartmentID | Credits |
+----------+-----------------+--------------+---------+
|      106 | Web Development |            1 |       4 |
+----------+-----------------+--------------+---------+
1 row in set (0.00 sec)

DELETE FROM Courses
WHERE CourseID = 106;

Query OK, 1 row affected (0.00 sec)

SELECT * FROM Courses
WHERE CourseID = 106;

Empty set (0.00 sec)

-- INSTRUCTORS CRUD

INSERT INTO Instructors
(InstructorID, FirstName, LastName, Email, DepartmentID, Salary)
VALUES
(6, 'Kevin', 'Miller', '[kevin.miller@univ.com](mailto:kevin.miller@univ.com)', 1, 58000.00);

Query OK, 1 row affected (0.01 sec)

SELECT * FROM Instructors
WHERE InstructorID = 6;

+--------------+-----------+----------+--------------------------+--------------+----------+
| InstructorID | FirstName | LastName | Email                    | DepartmentID | Salary   |
+--------------+-----------+----------+--------------------------+--------------+----------+
|            6 | Kevin     | Miller   | [kevin.miller@univ.com](mailto:kevin.miller@univ.com)    |            1 | 58000.00 |
+--------------+-----------+----------+--------------------------+--------------+----------+
1 row in set (0.00 sec)

UPDATE Instructors
SET Salary = 60000.00
WHERE InstructorID = 6;

Query OK, 1 row affected (0.01 sec)

SELECT * FROM Instructors
WHERE InstructorID = 6;

+--------------+-----------+----------+--------------------------+--------------+----------+
| InstructorID | FirstName | LastName | Email                    | DepartmentID | Salary   |
+--------------+-----------+----------+--------------------------+--------------+----------+
|            6 | Kevin     | Miller   | [kevin.miller@univ.com](mailto:kevin.miller@univ.com)    |            1 | 60000.00 |
+--------------+-----------+----------+--------------------------+--------------+----------+
1 row in set (0.00 sec)

DELETE FROM Instructors
WHERE InstructorID = 6;

Query OK, 1 row affected (0.00 sec)

SELECT * FROM Instructors
WHERE InstructorID = 6;

Empty set (0.00 sec)

-- ENROLLMENTS CRUD

INSERT INTO Enrollments
(EnrollmentID, StudentID, CourseID, EnrollmentDate)
VALUES
(17, 5, 101, '2025-08-15');

Query OK, 1 row affected (0.01 sec)

SELECT * FROM Enrollments
WHERE EnrollmentID = 17;

+--------------+-----------+----------+----------------+
| EnrollmentID | StudentID | CourseID | EnrollmentDate |
+--------------+-----------+----------+----------------+
|           17 |         5 |      101 | 2025-08-15     |
+--------------+-----------+----------+----------------+
1 row in set (0.00 sec)

UPDATE Enrollments
SET EnrollmentDate = '2025-09-01'
WHERE EnrollmentID = 17;

Query OK, 1 row affected (0.01 sec)

SELECT * FROM Enrollments
WHERE EnrollmentID = 17;

+--------------+-----------+----------+----------------+
| EnrollmentID | StudentID | CourseID | EnrollmentDate |
+--------------+-----------+----------+----------------+
|           17 |         5 |      101 | 2025-09-01     |
+--------------+-----------+----------+----------------+
1 row in set (0.00 sec)

DELETE FROM Enrollments
WHERE EnrollmentID = 17;

Query OK, 1 row affected (0.00 sec)

SELECT * FROM Enrollments
WHERE EnrollmentID = 17;

Empty set (0.00 sec)

-- DEPARTMENTS CRUD

INSERT INTO Departments
(DepartmentID, DepartmentName)
VALUES
(6, 'Statistics');

Query OK, 1 row affected (0.01 sec)

SELECT * FROM Departments
WHERE DepartmentID = 6;

+--------------+------------+
| DepartmentID | DepartmentName |
+--------------+------------+
|            6 | Statistics |
+--------------+------------+
1 row in set (0.00 sec)

UPDATE Departments
SET DepartmentName = 'Data Science'
WHERE DepartmentID = 6;

Query OK, 1 row affected (0.01 sec)

SELECT * FROM Departments
WHERE DepartmentID = 6;

+--------------+-------------+
| DepartmentID | DepartmentName |
+--------------+-------------+
|            6 | Data Science |
+--------------+-------------+
1 row in set (0.00 sec)

DELETE FROM Departments
WHERE DepartmentID = 6;

Query OK, 1 row affected (0.00 sec)

SELECT * FROM Departments
WHERE DepartmentID = 6;

Empty set (0.00 sec)

-- ============================================================
-- QUERY 2: STUDENTS WHO ENROLLED AFTER 2022
-- ============================================================

SELECT *
FROM Students
WHERE EnrollmentDate > '2022-12-31';

+-----------+-----------+----------+--------------------------+------------+---------------+
| StudentID | FirstName | LastName | Email                    | BirthDate  | EnrollmentDate|
+-----------+-----------+----------+--------------------------+------------+---------------+
|         3 | Michael   | Brown    | [michael.brown@email.com](mailto:michael.brown@email.com)  | 2001-03-10 | 2023-08-01    |
|         4 | Emily     | Davis    | [emily.davis@email.com](mailto:emily.davis@email.com)    | 2000-11-20 | 2024-08-01    |
|         5 | David     | Wilson   | [david.wilson@email.com](mailto:david.wilson@email.com)   | 2002-07-12 | 2025-08-01    |
|         6 | Alex      | Taylor   | [alex.taylor@email.com](mailto:alex.taylor@email.com)    | 2001-01-10 | 2023-08-01    |
|         7 | Sarah     | Miller   | [sarah.miller@email.com](mailto:sarah.miller@email.com)   | 2000-02-15 | 2023-08-01    |
|         8 | Chris     | Wilson   | [chris.wilson@email.com](mailto:chris.wilson@email.com)   | 2001-04-20 | 2023-08-01    |
|         9 | Laura     | Anderson | [laura.anderson@email.com](mailto:laura.anderson@email.com) | 2000-06-12 | 2023-08-01    |
|        10 | Kevin     | Thomas   | [kevin.thomas@email.com](mailto:kevin.thomas@email.com)   | 2002-07-18 | 2023-08-01    |
|        11 | Emma      | Martin   | [emma.martin@email.com](mailto:emma.martin@email.com)    | 2001-09-25 | 2023-08-01    |
|        12 | Ryan      | Jackson  | [ryan.jackson@email.com](mailto:ryan.jackson@email.com)   | 2000-10-05 | 2023-08-01    |
|        13 | Olivia    | White    | [olivia.white@email.com](mailto:olivia.white@email.com)   | 2002-11-14 | 2023-08-01    |
|        14 | Daniel    | Harris   | [daniel.harris@email.com](mailto:daniel.harris@email.com)  | 2001-12-20 | 2023-08-01    |
|        15 | Sophia    | Clark    | [sophia.clark@email.com](mailto:sophia.clark@email.com)   | 2000-03-30 | 2023-08-01    |
|        16 | James     | Lewis    | [james.lewis@email.com](mailto:james.lewis@email.com)    | 2002-05-08 | 2023-08-01    |
+-----------+-----------+----------+--------------------------+------------+---------------+
14 rows in set (0.00 sec)

-- ============================================================
-- QUERY 3: COURSES IN MATHEMATICS DEPARTMENT
-- LIMIT 5
-- ============================================================

SELECT c.CourseID, c.CourseName, c.Credits
FROM Courses c
JOIN Departments d
ON c.DepartmentID = d.DepartmentID
WHERE d.DepartmentName = 'Mathematics'
LIMIT 5;

+----------+----------------+---------+
| CourseID | CourseName     | Credits |
+----------+----------------+---------+
|      102 | Data Structures|       4 |
|      104 | Calculus       |       4 |
+----------+----------------+---------+
2 rows in set (0.00 sec)

-- ============================================================
-- QUERY 4: COURSES WITH MORE THAN 5 STUDENTS
-- ============================================================

SELECT CourseID, COUNT(StudentID) AS StudentCount
FROM Enrollments
GROUP BY CourseID
HAVING COUNT(StudentID) > 5;

+----------+-------------+
| CourseID | StudentCount|
+----------+-------------+
|      101 |          12 |
+----------+-------------+
1 row in set (0.00 sec)

-- ============================================================
-- QUERY 5: STUDENTS ENROLLED IN BOTH COURSES
-- ============================================================

SELECT s.StudentID, s.FirstName, s.LastName
FROM Students s
JOIN Enrollments e
ON s.StudentID = e.StudentID
JOIN Courses c
ON e.CourseID = c.CourseID
WHERE c.CourseName IN ('Introduction to SQL', 'Data Structures')
GROUP BY s.StudentID, s.FirstName, s.LastName
HAVING COUNT(DISTINCT c.CourseID) = 2;

Empty set (0.00 sec)

-- ============================================================
-- QUERY 6: STUDENTS IN EITHER COURSE
-- ============================================================

SELECT DISTINCT s.StudentID, s.FirstName, s.LastName
FROM Students s
JOIN Enrollments e
ON s.StudentID = e.StudentID
JOIN Courses c
ON e.CourseID = c.CourseID
WHERE c.CourseName IN ('Introduction to SQL', 'Data Structures');

+-----------+-----------+----------+
| StudentID | FirstName | LastName |
+-----------+-----------+----------+
|         1 | John      | Doe      |
|         2 | Jane      | Smith    |
|         6 | Alex      | Taylor   |
|         7 | Sarah     | Miller   |
|         8 | Chris     | Wilson   |
|         9 | Laura     | Anderson |
|        10 | Kevin     | Thomas   |
|        11 | Emma      | Martin   |
|        12 | Ryan      | Jackson  |
|        13 | Olivia    | White    |
|        14 | Daniel    | Harris   |
|        15 | Sophia    | Clark    |
|        16 | James     | Lewis    |
+-----------+-----------+----------+
13 rows in set (0.00 sec)

-- ============================================================
-- QUERY 7: AVERAGE CREDITS
-- ============================================================

SELECT AVG(Credits) AS AverageCredits
FROM Courses;

+----------------+
| AverageCredits |
+----------------+
|         3.4000 |
+----------------+
1 row in set (0.00 sec)

-- ============================================================
-- QUERY 8: MAXIMUM SALARY IN COMPUTER SCIENCE
-- ============================================================

SELECT MAX(i.Salary) AS MaximumSalary
FROM Instructors i
JOIN Departments d
ON i.DepartmentID = d.DepartmentID
WHERE d.DepartmentName = 'Computer Science';

+---------------+
| MaximumSalary |
+---------------+
|      60000.00 |
+---------------+
1 row in set (0.00 sec)

-- ============================================================
-- QUERY 9: STUDENTS ENROLLED IN EACH DEPARTMENT
-- ============================================================

SELECT d.DepartmentName,
COUNT(DISTINCT e.StudentID) AS StudentCount
FROM Departments d
LEFT JOIN Courses c
ON d.DepartmentID = c.DepartmentID
LEFT JOIN Enrollments e
ON c.CourseID = e.CourseID
GROUP BY d.DepartmentID, d.DepartmentName;

+------------------+-------------+
| DepartmentName   | StudentCount|
+------------------+-------------+
| Computer Science |          13 |
| Mathematics      |           2 |
| Physics          |           1 |
| Business         |           0 |
| Engineering      |           0 |
+------------------+-------------+
5 rows in set (0.00 sec)

-- ============================================================
-- QUERY 10: INNER JOIN
-- STUDENTS AND CORRESPONDING COURSES
-- ============================================================

SELECT s.StudentID,
s.FirstName,
s.LastName,
c.CourseName
FROM Students s
INNER JOIN Enrollments e
ON s.StudentID = e.StudentID
INNER JOIN Courses c
ON e.CourseID = c.CourseID;

+-----------+-----------+----------+----------------------+
| StudentID | FirstName | LastName | CourseName           |
+-----------+-----------+----------+----------------------+
|         1 | John      | Doe      | Introduction to SQL  |
|         2 | Jane      | Smith    | Data Structures      |
|         3 | Michael   | Brown    | Database Management  |
|         4 | Emily     | Davis    | Calculus             |
|         5 | David     | Wilson   | Physics Fundamentals |
|         6 | Alex      | Taylor   | Introduction to SQL  |
|         7 | Sarah     | Miller   | Introduction to SQL  |
|         8 | Chris     | Wilson   | Introduction to SQL  |
|         9 | Laura     | Anderson | Introduction to SQL  |
|        10 | Kevin     | Thomas   | Introduction to SQL  |
|        11 | Emma      | Martin   | Introduction to SQL  |
|        12 | Ryan      | Jackson  | Introduction to SQL  |
|        13 | Olivia    | White    | Introduction to SQL  |
|        14 | Daniel    | Harris   | Introduction to SQL  |
|        15 | Sophia    | Clark    | Introduction to SQL  |
|        16 | James     | Lewis    | Introduction to SQL  |
+-----------+-----------+----------+----------------------+
16 rows in set (0.00 sec)

-- ============================================================
-- QUERY 11: LEFT JOIN
-- ALL STUDENTS AND THEIR COURSES
-- ============================================================

SELECT s.StudentID,
s.FirstName,
s.LastName,
c.CourseName
FROM Students s
LEFT JOIN Enrollments e
ON s.StudentID = e.StudentID
LEFT JOIN Courses c
ON e.CourseID = c.CourseID;

+-----------+-----------+----------+----------------------+
| StudentID | FirstName | LastName | CourseName           |
+-----------+-----------+----------+----------------------+
|         1 | John      | Doe      | Introduction to SQL  |
|         2 | Jane      | Smith    | Data Structures      |
|         3 | Michael   | Brown    | Database Management  |
|         4 | Emily     | Davis    | Calculus             |
|         5 | David     | Wilson   | Physics Fundamentals |
|         6 | Alex      | Taylor   | Introduction to SQL  |
|         7 | Sarah     | Miller   | Introduction to SQL  |
|         8 | Chris     | Wilson   | Introduction to SQL  |
|         9 | Laura     | Anderson | Introduction to SQL  |
|        10 | Kevin     | Thomas   | Introduction to SQL  |
|        11 | Emma      | Martin   | Introduction to SQL  |
|        12 | Ryan      | Jackson  | Introduction to SQL  |
|        13 | Olivia    | White    | Introduction to SQL  |
|        14 | Daniel    | Harris   | Introduction to SQL  |
|        15 | Sophia    | Clark    | Introduction to SQL  |
|        16 | James     | Lewis    | Introduction to SQL  |
+-----------+-----------+----------+----------------------+
16 rows in set (0.00 sec)

-- ============================================================
-- QUERY 12: SUBQUERY
-- COURSES WITH MORE THAN 10 STUDENTS
-- ============================================================

SELECT DISTINCT s.StudentID,
s.FirstName,
s.LastName
FROM Students s
JOIN Enrollments e
ON s.StudentID = e.StudentID
WHERE e.CourseID IN (
SELECT CourseID
FROM Enrollments
GROUP BY CourseID
HAVING COUNT(StudentID) > 10
);

+-----------+-----------+----------+
| StudentID | FirstName | LastName |
+-----------+-----------+----------+
|         1 | John      | Doe      |
|         6 | Alex      | Taylor   |
|         7 | Sarah     | Miller   |
|         8 | Chris     | Wilson   |
|         9 | Laura     | Anderson |
|        10 | Kevin     | Thomas   |
|        11 | Emma      | Martin   |
|        12 | Ryan      | Jackson  |
|        13 | Olivia    | White    |
|        14 | Daniel    | Harris   |
|        15 | Sophia    | Clark    |
|        16 | James     | Lewis    |
+-----------+-----------+----------+
12 rows in set (0.00 sec)

-- ============================================================
-- QUERY 13: EXTRACT YEAR FROM ENROLLMENT DATE
-- ============================================================

SELECT StudentID,
FirstName,
LastName,
YEAR(EnrollmentDate) AS EnrollmentYear
FROM Students;

+-----------+-----------+----------+---------------+
| StudentID | FirstName | LastName | EnrollmentYear|
+-----------+-----------+----------+---------------+
|         1 | John      | Doe      |          2022 |
|         2 | Jane      | Smith    |          2021 |
|         3 | Michael   | Brown    |          2023 |
|         4 | Emily     | Davis    |          2024 |
|         5 | David     | Wilson   |          2025 |
|         6 | Alex      | Taylor   |          2023 |
|         7 | Sarah     | Miller   |          2023 |
|         8 | Chris     | Wilson   |          2023 |
|         9 | Laura     | Anderson |          2023 |
|        10 | Kevin     | Thomas   |          2023 |
|        11 | Emma      | Martin   |          2023 |
|        12 | Ryan      | Jackson  |          2023 |
|        13 | Olivia    | White    |          2023 |
|        14 | Daniel    | Harris   |          2023 |
|        15 | Sophia    | Clark    |          2023 |
|        16 | James     | Lewis    |          2023 |
+-----------+-----------+----------+---------------+
16 rows in set (0.00 sec)

-- ============================================================
-- QUERY 14: CONCATENATE INSTRUCTOR NAME
-- ============================================================

SELECT InstructorID,
CONCAT(FirstName, ' ', LastName) AS InstructorName
FROM Instructors;

+--------------+----------------+
| InstructorID | InstructorName |
+--------------+----------------+
|            1 | Alice Johnson  |
|            2 | Bob Lee        |
|            3 | Robert Patel   |
|            4 | Priya Shah     |
|            5 | Daniel Clark   |
+--------------+----------------+
5 rows in set (0.00 sec)

-- ============================================================
-- QUERY 15: RUNNING TOTAL OF STUDENTS ENROLLED
-- ============================================================

SELECT EnrollmentID,
StudentID,
CourseID,
EnrollmentDate,
COUNT(*) OVER (
ORDER BY EnrollmentDate, EnrollmentID
) AS RunningTotal
FROM Enrollments;

+--------------+-----------+----------+----------------+-------------+
| EnrollmentID | StudentID | CourseID | EnrollmentDate | RunningTotal|
+--------------+-----------+----------+----------------+-------------+
|            2 |         2 |      102 | 2021-08-01     |           1 |
|            1 |         1 |      101 | 2022-08-01     |           2 |
|            3 |         3 |      103 | 2023-08-01     |           3 |
|            6 |         6 |      101 | 2023-08-01     |           4 |
|            7 |         7 |      101 | 2023-08-01     |           5 |
|            8 |         8 |      101 | 2023-08-01     |           6 |
|            9 |         9 |      101 | 2023-08-01     |           7 |
|           10 |        10 |      101 | 2023-08-01     |           8 |
|           11 |        11 |      101 | 2023-08-01     |           9 |
|           12 |        12 |      101 | 2023-08-01     |          10 |
|           13 |        13 |      101 | 2023-08-01     |          11 |
|           14 |        14 |      101 | 2023-08-01     |          12 |
|           15 |        15 |      101 | 2023-08-01     |          13 |
|           16 |        16 |      101 | 2023-08-01     |          14 |
|            4 |         4 |      104 | 2024-08-01     |          15 |
|            5 |         5 |      105 | 2025-08-01     |          16 |
+--------------+-----------+----------+----------------+-------------+
16 rows in set (0.00 sec)

-- ============================================================
-- QUERY 16: SENIOR OR JUNIOR
-- ============================================================

SELECT StudentID,
FirstName,
LastName,
EnrollmentDate,
CASE
WHEN EnrollmentDate < DATE_SUB(CURDATE(), INTERVAL 4 YEAR)
THEN 'Senior'
ELSE 'Junior'
END AS StudentLevel
FROM Students;

+-----------+-----------+----------+----------------+-------------+
| StudentID | FirstName | LastName | EnrollmentDate | StudentLevel|
+-----------+-----------+----------+----------------+-------------+
|         1 | John      | Doe      | 2022-08-01     | Senior      |
|         2 | Jane      | Smith    | 2021-08-01     | Senior      |
|         3 | Michael   | Brown    | 2023-08-01     | Junior      |
|         4 | Emily     | Davis    | 2024-08-01     | Junior      |
|         5 | David     | Wilson   | 2025-08-01     | Junior      |
|         6 | Alex      | Taylor   | 2023-08-01     | Junior      |
|         7 | Sarah     | Miller   | 2023-08-01     | Junior      |
|         8 | Chris     | Wilson   | 2023-08-01     | Junior      |
|         9 | Laura     | Anderson   | 2023-08-01     | Junior      |
|        10 | Kevin     | Thomas   | 2023-08-01     | Junior      |
|        11 | Emma      | Martin    | 2023-08-01     | Junior      |
|        12 | Ryan      | Jackson   | 2023-08-01     | Junior      |
|        13 | Olivia    | White     | 2023-08-01     | Junior      |
|        14 | Daniel    | Harris    | 2023-08-01     | Junior      |
|        15 | Sophia    | Clark     | 2023-08-01     | Junior      |
|        16 | James     | Lewis     | 2023-08-01     | Junior      |
+-----------+-----------+----------+----------------+-------------+
16 rows in set (0.00 sec)

-- ============================================================
-- PROJECT COMPLETED
-- ============================================================
