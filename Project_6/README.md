# Personal Journal Manager

## Project

File Operator

## Screenshots

### Output 1

![Output 1](Output/Output1.png)

### Output 2

![Output 2](Output/Output2.png)

### Output 3

![Output 3](Output/Output3.png)

---

## Features

- Add a New Journal Entry
- View All Journal Entries
- Search Journal Entries
- Delete All Journal Entries
- Timestamp for Each Entry
- File Creation and Management
- Error Handling
- Menu Driven Program
- Exit the Program

---

## OOP Concepts Used

### Class

The project uses a `JournalManager` class to manage journal operations.

### Object

An object of the `JournalManager` class is created:

```python
journal = JournalManager()
```

### Instance Methods

The class contains methods for:

- Adding entries
- Viewing entries
- Searching entries
- Deleting entries

---

## File Handling

The program stores journal entries in:

```text
journal.txt
```

The following file modes are demonstrated:

### `x` Mode

Creates a new journal file when it does not already exist.

### `a` Mode

Adds new journal entries to an existing file without removing previous entries.

### `r` Mode

Reads journal entries from the file.

### `w` Mode

Clears the contents of the file before it is deleted.

---

## Exception Handling

The program handles common file-related errors.

### FileNotFoundError

Used when the journal file does not exist while trying to read it.

### PermissionError

Used when the program does not have permission to access the file.

### FileExistsError

Used when trying to create a file with `x` mode that already exists.

---

## Concepts Used

- Python Classes
- Objects
- Instance Methods
- Constructor
- File Handling
- Read Mode (`r`)
- Write Mode (`w`)
- Append Mode (`a`)
- Create Mode (`x`)
- `FileNotFoundError`
- `FileExistsError`
- `PermissionError`
- Exception Handling
- `datetime`
- `os` Module
- `while` Loop
- `if-elif-else`
- User Input
- Menu Driven Program

---

## How to Run

```bash
python Journal_Manager.py
```

---

## Journal Entry Format

Each journal entry contains a timestamp and the user's text.

Example:

```text
[2026-08-15 10:30:20] Today I learned Python file handling.
```

---

## Menu Options

```text
1. Add a New Entry
2. View All Entries
3. Search for an Entry
4. Delete All Entries
5. Exit
```

### Add a New Entry

Allows the user to enter a journal entry with the current date and time.

### View All Entries

Displays all saved journal entries.

### Search for an Entry

Searches entries using a keyword or date.

### Delete All Entries

Asks for confirmation and deletes the journal file.

### Exit

Closes the Personal Journal Manager.

---

## Assumptions

- Journal entries are stored only in a `.txt` file.
- The journal file is named `journal.txt`.
- Empty journal entries are not allowed.
- Each entry automatically receives a timestamp.
- The user must confirm before deleting all entries.
- The search is not case-sensitive.
- The program creates the journal file when the first entry is added.

---

## Author

Project created for the **File Operator** assignment using Python.