# 🎟️ Smart Event Management System

### MySQL Database Management Project

> A database project designed to manage events, venues, organizers, attendee registrations, ticket bookings, and payments using MySQL.

**Author:** Jash Dolar

---

## 🎯 Project Objective

The objective of this project is to develop a Smart Event Management System using MySQL. It demonstrates database management, CRUD operations, filtering, sorting, joins, subqueries, aggregate functions, date functions, string functions, window functions, and CASE expressions.

## 🗄️ Database Information

| Detail | Information |
|---|---|
| Database Name | `event_management` |
| Database Language | MySQL |
| Tables | 6 |
| SQL Version | MySQL 8.0 |
| Project Type | Final Practical Project |

## 📋 Database Tables

### 1. 🎪 Events

Stores event information, dates, ticket prices, and seat availability.

**Columns:** `event_id`, `event_name`, `event_date`, `venue_id`, `organizer_id`, `ticket_price`, `total_seats`, `available_seats`

### 2. 📍 Venues

Stores venue names, locations, and capacities.

**Columns:** `venue_id`, `venue_name`, `location`, `capacity`

### 3. 👥 Organizers

Stores organizer names and contact details.

**Columns:** `organizer_id`, `organizer_name`, `contact_email`, `phone_number`

### 4. 🧑 Attendees

Stores attendee information.

**Columns:** `attendee_id`, `name`, `email`, `phone_number`

### 5. 🎫 Tickets

Stores ticket bookings, booking dates, and booking statuses.

**Columns:** `ticket_id`, `event_id`, `attendee_id`, `booking_date`, `status`

### 6. 💳 Payments

Stores ticket payment amounts, payment dates, and payment statuses.

**Columns:** `payment_id`, `ticket_id`, `amount_paid`, `payment_status`, `payment_date`

---

## 🔗 Database Relationships

- Each event is connected to a venue.
- Each event is managed by an organizer.
- Each ticket is connected to an event and an attendee.
- Each payment is connected to a ticket.
- An attendee can book multiple events but cannot book the same event twice.

**Primary Keys:** Identify unique records in each table.

**Foreign Keys:** Maintain relationships between related tables.

## ⚙️ SQL Operations Implemented

| No. | Topic | Operations |
|---|---|---|
| 1 | CRUD | INSERT, SELECT, UPDATE, DELETE |
| 2 | SQL Clauses | WHERE, HAVING, LIMIT |
| 3 | Operators | AND, OR, NOT |
| 4 | Sorting and Grouping | ORDER BY, GROUP BY |
| 5 | Aggregate Functions | SUM, AVG, MAX, MIN, COUNT |
| 6 | Keys | Primary Key, Foreign Key, UNIQUE |
| 7 | Joins | INNER, LEFT, RIGHT, FULL OUTER JOIN equivalent |
| 8 | Subqueries | Revenue, multiple bookings, organizer reports |
| 9 | Date Functions | MONTH, DATEDIFF, DATE_FORMAT |
| 10 | String Functions | UPPER, TRIM, COALESCE |
| 11 | Window Functions | RANK, SUM OVER, COUNT OVER |
| 12 | CASE Expressions | Event demand and payment categories |

## 📊 Project Highlights

- Manage events, venues, organizers, attendees, tickets, and payments.
- Identify upcoming events and popular events.
- Calculate revenue from successful payments.
- Find attendees with pending or failed payments.
- Identify events without bookings.
- Analyze ticket sales and attendee registrations.
- Rank events by revenue.
- Categorize event demand and payment statuses.

## 📝 Project Assumptions

1. Sample records are included to demonstrate the required queries.
2. Successful payments are counted as received revenue; failed and pending payments are excluded.
3. The same attendee cannot book the same event more than once.
4. Cancelled tickets remain in the database for record keeping.
5. MySQL does not directly support FULL OUTER JOIN. A combination of LEFT JOIN and RIGHT JOIN with UNION is used instead.
6. Available seats are sample values and are not automatically changed when tickets are booked or cancelled.

## 📁 Project Structure

```text
Smart_Event_Management/
│
├── Output/
│   ├── Output1.png
│   ├── Output2.png
│   ├── Output3.png
│   └── ...
│
├── event_management.sql
└── README.md
```

The `Output` folder is intended for screenshots of actual SQL execution results.

## ▶️ How to Run

**Step 1:** Open MySQL Workbench or the MySQL command line.

**Step 2:** Open `event_management.sql`.

**Step 3:** Execute the script to create the database, tables, sample records, and queries.

**Step 4:** Review the query results and save screenshots in the `Output` folder.

## 🛠️ Tools Used

- MySQL 8.0
- MySQL Workbench
- SQL
- Git and GitHub

## ✅ Project Status

**Status:** SQL script and documentation prepared.

## 👨‍💻 Author

**Jash Dolar**

*Smart Event Management System — MySQL Final Practical Project*
