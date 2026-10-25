# 📊 Excel Data Analysis Project

### Excel Functions, Data Analysis & Reporting

> A practical Excel project created to practice spreadsheet formulas, data analysis, lookup functions, date calculations, and data filtering.

---

## 👨‍💻 Author

**Jash Dolar**

---

## 👨‍💻 Project Overview

This Excel project was created to practice essential Excel functions used for **data analysis, calculations, data lookup, and reporting**.

The workbook contains three datasets:

- 🎓 Student Grade
- 🛒 Sale Data
- 👨‍💼 Employee Data

The project covers Excel concepts such as:

- 🧮 IF and Nested IF
- 🔗 Relative and Absolute References
- ✅ AND and OR
- 🔢 COUNTIFS, SUMIFS and AVERAGEIFS
- 🔍 VLOOKUP and XLOOKUP
- 📌 INDEX and MATCH
- 🔤 LEFT, FIND, UPPER and LOWER
- 🔄 XMATCH
- 🔗 INDIRECT and OFFSET
- 📅 Date and Time Calculations
- 💰 ROUND, CEILING and FLOOR
- 📊 FILTER
- 🎨 Cell Formatting and Data Presentation

---

## 📋 Workbook Information

| Item | Details |
|---|---|
| **Project Name** | Excel Data Analysis Project |
| **Software** | Microsoft Excel |
| **File Format** | `.xlsx` |
| **Project Type** | Data Analysis & Spreadsheet Functions |
| **Datasets** | Student Grade, Sale Data, Employee Data |

---

## 📚 Worksheets

### 🎓 1. Student Grade

The **Student Grade** sheet contains student information, subject marks, and enrollment dates.

**Columns include:**

`Student ID` · `Name` · `Math` · `Science` · `English` · `Enrollment Date`

**Tasks performed:**

1. Calculate total marks using `SUM()`.
2. Calculate average marks using `AVERAGE()`.
3. Assign grades using nested `IF()`.
4. Check qualification using `IF()` with `AND()`.
5. Check eligibility using `IF()` with `OR()`.
6. Count students meeting mark conditions using `COUNTIFS()`.
7. Calculate average Math marks using `AVERAGEIFS()`.
8. Convert names to uppercase and lowercase.
9. Extract the first word from student names using `LEFT()` and `FIND()`.
10. Retrieve student names using `VLOOKUP()`.
11. Filter students scoring above 80 using `FILTER()`.

---

### 🛒 2. Sale Data

The **Sale Data** sheet contains sales transactions, product names, regions, salespeople, amounts, and dates.

**Columns include:**

`Sales ID` · `Product` · `Region` · `Salesperson` · `Amount` · `Date`

**Tasks performed:**

1. Round sales amounts using `ROUND()`.
2. Calculate rounded-up values using `CEILING()`.
3. Calculate rounded-down values using `FLOOR()`.
4. Categorize sales using `IF()` and nested `IF()`.
5. Check sales eligibility using `IF()` with `OR()`.
6. Retrieve sales amounts using `VLOOKUP()`.
7. Find sales values using `INDEX()` and `MATCH()`.
8. Calculate regional and product sales totals using `SUMIFS()`.
9. Retrieve values dynamically using `INDIRECT()`.
10. Calculate totals for dynamic ranges using `OFFSET()`.
11. Find product positions using `XMATCH()`.
12. Retrieve salesperson sales amounts using `XLOOKUP()`.
13. Calculate the number of days between consecutive sales dates.
14. Calculate discount amounts using a fixed discount rate and an absolute cell reference.

---

### 👨‍💼 3. Employee Data

The **Employee Data** sheet contains employee details, departments, salaries, and joining dates.

**Columns include:**

`Employee ID` · `Name` · `Department` · `Salary` · `Joining Date`

**Tasks performed:**

1. Calculate years of service using joining dates.
2. Handle future joining dates using `IF()`.
3. Retrieve employee salaries using `XLOOKUP()`.
4. Retrieve employee departments using `INDEX()` and `MATCH()`.
5. Convert employee names to uppercase and lowercase.
6. Extract the first word from employee names using `LEFT()` and `FIND()`.

---

## 🔧 Excel Concepts Practiced

### 🧮 Logical Functions

- `IF()` — Assign grades and classify sales.
- Nested `IF()` — Apply multiple conditions.
- `AND()` — Check whether multiple conditions are true.
- `OR()` — Check whether at least one condition is true.

### 📊 Counting and Aggregation

- `COUNTIFS()` — Count records meeting specified conditions.
- `SUMIFS()` — Calculate totals based on multiple criteria.
- `AVERAGEIFS()` — Calculate averages for matching records.
- `SUM()` and `AVERAGE()` — Calculate totals and averages.

### 🔍 Lookup and Reference Functions

- `VLOOKUP()` — Retrieve information from a table.
- `XLOOKUP()` — Search for matching records.
- `INDEX()` and `MATCH()` — Retrieve values using matching positions.
- `XMATCH()` — Find the position of a matching item.
- `INDIRECT()` — Retrieve a value from a cell reference stored as text.
- `OFFSET()` — Create a reference to a range relative to a starting cell.

### 🔤 Text Functions

- `LEFT()` — Extract characters from the beginning of text.
- `FIND()` — Locate a character or text within a string.
- `UPPER()` — Convert text to uppercase.
- `LOWER()` — Convert text to lowercase.
- `TRIM()` — Remove unnecessary spaces where required.

### 📅 Date and Mathematical Functions

- Date subtraction — Calculate the number of days between dates.
- `DATEDIF()` — Calculate completed years of service.
- `ROUND()` — Round numbers to a specified position.
- `CEILING()` — Round numbers upward to a specified multiple.
- `FLOOR()` — Round numbers downward to a specified multiple.

### 🔄 Filtering

- `FILTER()` — Extract student records based on specified conditions.

### 🎨 Formatting

- Apply appropriate date and currency formats.
- Format headings and organize worksheet data.
- Use absolute and relative cell references.
- Present formulas and results in a clear, readable layout.

---

## 📝 Assumptions and Data Limitations

- The project uses the datasets provided for the assignment.
- Any grade boundaries, eligibility conditions, sales categories, and discount rules are based on the formulas and criteria applied in the workbook.
- The discount calculation uses the discount rate stored in a separate cell and an absolute reference.
- The supplied sales dataset contains product names and sales amounts, but does not provide a separate product price table or product codes.
- The supplied employee and student datasets do not contain dates of birth. Therefore, age calculations requiring dates of birth cannot be completed from the available data.

---

## 📁 Project Files

The Excel workbook contains the datasets, formulas, lookup calculations, and analysis results.

The completed workbook is saved in `.xlsx` format so that the worksheets and formulas can be reviewed in Microsoft Excel.

---

## 📸 Output Screenshots

Screenshots of the actual Excel worksheets and formula results can be included in the `Output` folder.

The screenshots should show the completed tasks and their results in Excel.

The workbook contains the formulas and calculations, while the screenshots provide a visual reference for reviewing the work.

---

## 📁 Project Structure

```text
Excel_Data_Analysis/
│
├── Output/
│   ├── Output1.png
│   ├── Output2.png
│   ├── Output3.png
│   └── ...
│
├── Excel_Data_Analysis.xlsx
│
└── README.md
```

---

## 🎯 Learning Outcome

This project provides practical experience with Excel formulas, logical conditions, lookup functions, text manipulation, date calculations, mathematical operations, filtering, and spreadsheet formatting.

It demonstrates how Excel can be used to organize datasets, perform calculations, retrieve information, and prepare results for data analysis.
