def create_file(name):
    """Create a new file."""

    try:
        with open(name, "x") as f:
            f.write("")
        print("File created successfully!")

    except FileExistsError:
        print("File already exists.")


def write_file(name, data):
    """Write data to a file."""

    with open(name, "w") as f:
        f.write(data)

    print("Data written successfully!")


def read_file(name):
    """Read data from a file."""

    try:
        with open(name, "r") as f:
            print("\nFile Content:")
            print(f.read())

    except FileNotFoundError:
        print("File not found.")


def append_file(name, data):
    """Append data to a file."""

    with open(name, "a") as f:
        f.write(data)

    print("Data appended successfully!")