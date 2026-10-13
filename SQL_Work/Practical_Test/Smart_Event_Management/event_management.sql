-- SMART EVENT MANAGEMENT SYSTEM
-- Database: MySQL 8.0

CREATE DATABASE IF NOT EXISTS event_management;
USE event_management;

-- ==========================================
-- 1. CREATE TABLES
-- ==========================================

CREATE TABLE Venues (
    venue_id INT PRIMARY KEY,
    venue_name VARCHAR(100),
    location VARCHAR(100),
    capacity INT
);

CREATE TABLE Organizers (
    organizer_id INT PRIMARY KEY,
    organizer_name VARCHAR(100),
    contact_email VARCHAR(100),
    phone_number VARCHAR(20)
);

CREATE TABLE Attendees (
    attendee_id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    phone_number VARCHAR(20)
);

CREATE TABLE Events (
    event_id INT PRIMARY KEY,
    event_name VARCHAR(100),
    event_date DATE,
    venue_id INT,
    organizer_id INT,
    ticket_price DECIMAL(10,2),
    total_seats INT,
    available_seats INT,
    FOREIGN KEY (venue_id) REFERENCES Venues(venue_id),
    FOREIGN KEY (organizer_id) REFERENCES Organizers(organizer_id)
);

CREATE TABLE Tickets (
    ticket_id INT PRIMARY KEY,
    event_id INT,
    attendee_id INT,
    booking_date DATE,
    status ENUM('Confirmed', 'Cancelled', 'Pending'),
    FOREIGN KEY (event_id) REFERENCES Events(event_id),
    FOREIGN KEY (attendee_id) REFERENCES Attendees(attendee_id),
    UNIQUE (event_id, attendee_id)
);

CREATE TABLE Payments (
    payment_id INT PRIMARY KEY,
    ticket_id INT,
    amount_paid DECIMAL(10,2),
    payment_status ENUM('Success', 'Failed', 'Pending'),
    payment_date DATETIME,
    FOREIGN KEY (ticket_id) REFERENCES Tickets(ticket_id)
);

-- ==========================================
-- 2. INSERT SAMPLE DATA
-- ==========================================

INSERT INTO Venues VALUES
(1, 'City Convention Hall', 'Surat', 500),
(2, 'Grand Music Arena', 'Ahmedabad', 800),
(3, 'Art Centre', 'Surat', 250),
(4, 'Riverside Ground', 'Vadodara', 1000),
(5, 'Sports Complex', 'Ahmedabad', 400);

INSERT INTO Organizers VALUES
(1, 'Bright Events', 'bright@example.com', '9876500001'),
(2, 'Star Organizers', 'star@example.com', '9876500002'),
(3, 'Creative Planners', 'creative@example.com', '9876500003'),
(4, 'Community Events', NULL, '9876500004');

INSERT INTO Attendees VALUES
(1, ' John Patel ', 'john@example.com', '9876510001'),
(2, 'Priya Shah', 'priya@example.com', '9876510002'),
(3, 'Rahul Mehta', NULL, '9876510003'),
(4, 'Neha Desai', 'neha@example.com', '9876510004'),
(5, 'Amit Joshi', 'amit@example.com', '9876510005'),
(6, 'Sara Khan', 'sara@example.com', '9876510006'),
(7, 'Karan Dave', 'karan@example.com', '9876510007'),
(8, 'Mira Patel', 'mira@example.com', '9876510008');

INSERT INTO Events VALUES
(101, 'Tech Summit', '2026-12-15', 1, 1, 100.00, 200, 30),
(102, 'Music Fest', '2026-11-20', 2, 1, 80.00, 300, 120),
(103, 'Art Expo', '2026-12-22', 3, 1, 40.00, 100, 70),
(104, 'Startup Meetup', '2026-12-05', 1, 1, 50.00, 80, 10),
(105, 'Food Carnival', '2027-01-20', 4, 1, 30.00, 500, 400),
(106, 'Sports Day', '2026-12-10', 5, 2, 60.00, 150, 75),
(107, 'Book Fair', '2027-01-05', 3, 3, 25.00, 200, 200),
(108, 'Charity Gala', '2027-02-14', 4, 4, 150.00, 100, 50);

INSERT INTO Tickets VALUES
(201, 101, 1, CURDATE() - INTERVAL 2 DAY, 'Confirmed'),
(202, 101, 2, CURDATE() - INTERVAL 1 DAY, 'Confirmed'),
(203, 102, 1, CURDATE() - INTERVAL 10 DAY, 'Confirmed'),
(204, 102, 3, CURDATE() - INTERVAL 3 DAY, 'Pending'),
(205, 103, 4, CURDATE() - INTERVAL 5 DAY, 'Confirmed'),
(206, 104, 5, CURDATE() - INTERVAL 1 DAY, 'Confirmed'),
(207, 105, 6, CURDATE() - INTERVAL 15 DAY, 'Confirmed'),
(208, 106, 7, CURDATE() - INTERVAL 4 DAY, 'Pending'),
(209, 101, 8, CURDATE() - INTERVAL 6 DAY, 'Confirmed'),
(210, 103, 1, CURDATE() - INTERVAL 8 DAY, 'Confirmed'),
(211, 106, 2, CURDATE() - INTERVAL 2 DAY, 'Confirmed'),
(212, 104, 3, CURDATE() - INTERVAL 9 DAY, 'Cancelled');

INSERT INTO Payments VALUES
(301, 201, 100.00, 'Success', NOW() - INTERVAL 2 DAY),
(302, 202, 100.00, 'Success', NOW() - INTERVAL 1 DAY),
(303, 203, 80.00, 'Success', NOW() - INTERVAL 10 DAY),
(304, 204, 80.00, 'Pending', NOW() - INTERVAL 3 DAY),
(305, 205, 40.00, 'Success', NOW() - INTERVAL 5 DAY),
(306, 206, 50.00, 'Success', NOW() - INTERVAL 1 DAY),
(307, 207, 30.00, 'Failed', NOW() - INTERVAL 15 DAY),
(308, 208, 60.00, 'Pending', NOW() - INTERVAL 4 DAY),
(309, 209, 100.00, 'Success', NOW() - INTERVAL 6 DAY),
(310, 210, 40.00, 'Success', NOW() - INTERVAL 8 DAY),
(311, 211, 60.00, 'Success', NOW() - INTERVAL 2 DAY),
(312, 212, 50.00, 'Failed', NOW() - INTERVAL 9 DAY);

-- ==========================================
-- 3. VIEW TABLE DATA
-- ==========================================

SELECT * FROM Venues;
SELECT * FROM Organizers;
SELECT * FROM Attendees;
SELECT * FROM Events;
SELECT * FROM Tickets;
SELECT * FROM Payments;

-- ==========================================
-- 4. CRUD OPERATIONS
-- Temporary records are used for testing.
-- ==========================================

-- CREATE: Add a test venue
INSERT INTO Venues
VALUES (99, 'Test Venue', 'Surat', 100);

-- READ: Find the test venue
SELECT * FROM Venues WHERE venue_id = 99;

-- UPDATE: Change its capacity
UPDATE Venues SET capacity = 150 WHERE venue_id = 99;

-- DELETE: Remove the test venue
DELETE FROM Venues WHERE venue_id = 99;

-- Search events
SELECT * FROM Events WHERE event_name LIKE '%Tech%';

-- Add, read, update and delete a test organizer
INSERT INTO Organizers
VALUES (99, 'Test Organizer', 'test@example.com', '9876599999');

SELECT * FROM Organizers WHERE organizer_id = 99;

UPDATE Organizers
SET organizer_name = 'Updated Organizer'
WHERE organizer_id = 99;

DELETE FROM Organizers WHERE organizer_id = 99;

-- Add, read, update and delete a test attendee
INSERT INTO Attendees
VALUES (99, 'Test Attendee', 'testattendee@example.com', '9876599998');

SELECT * FROM Attendees WHERE attendee_id = 99;

UPDATE Attendees
SET name = 'Updated Attendee'
WHERE attendee_id = 99;

DELETE FROM Attendees WHERE attendee_id = 99;

-- Add, read, update and delete a test event
INSERT INTO Events VALUES
(199, 'Test Event', '2027-03-01', 1, 1, 20.00, 50, 50);

SELECT * FROM Events WHERE event_id = 199;

UPDATE Events
SET ticket_price = 25.00
WHERE event_id = 199;

DELETE FROM Events WHERE event_id = 199;

-- Add, read, update and delete a test ticket
INSERT INTO Tickets
VALUES (299, 107, 7, CURDATE(), 'Pending');

SELECT * FROM Tickets WHERE ticket_id = 299;

UPDATE Tickets
SET status = 'Cancelled'
WHERE ticket_id = 299;

DELETE FROM Tickets WHERE ticket_id = 299;

-- Add, read, update and delete a test payment
INSERT INTO Payments
VALUES (399, 208, 60.00, 'Pending', NOW());

SELECT * FROM Payments WHERE payment_id = 399;

UPDATE Payments
SET payment_status = 'Failed'
WHERE payment_id = 399;

DELETE FROM Payments WHERE payment_id = 399;

-- ==========================================
-- 5. SQL CLAUSES: WHERE, HAVING, LIMIT
-- ==========================================

-- Upcoming events in Surat
SELECT E.event_name, E.event_date, V.location
FROM Events E
INNER JOIN Venues V ON E.venue_id = V.venue_id
WHERE V.location = 'Surat'
  AND E.event_date >= CURDATE();

-- Top 5 events by successful payment revenue
SELECT E.event_name, SUM(P.amount_paid) AS total_revenue
FROM Events E
JOIN Tickets T ON E.event_id = T.event_id
JOIN Payments P ON T.ticket_id = P.ticket_id
WHERE P.payment_status = 'Success'
GROUP BY E.event_id, E.event_name
ORDER BY total_revenue DESC
LIMIT 5;

-- Attendees who booked in the last 7 days
SELECT A.name, T.booking_date
FROM Attendees A
JOIN Tickets T ON A.attendee_id = T.attendee_id
WHERE T.booking_date >= CURDATE() - INTERVAL 7 DAY
  AND T.booking_date <= CURDATE();

-- Events with more than one booking
SELECT E.event_name, COUNT(T.ticket_id) AS ticket_count
FROM Events E
JOIN Tickets T ON E.event_id = T.event_id
GROUP BY E.event_id, E.event_name
HAVING COUNT(T.ticket_id) > 1;

-- ==========================================
-- 6. SQL OPERATORS: AND, OR, NOT
-- ==========================================

-- December events with more than 50% seats available
SELECT *
FROM Events
WHERE MONTH(event_date) = 12
  AND available_seats > total_seats * 0.50;

-- Attendees who booked a ticket or have a pending payment
SELECT DISTINCT A.attendee_id, A.name
FROM Attendees A
LEFT JOIN Tickets T ON A.attendee_id = T.attendee_id
LEFT JOIN Payments P ON T.ticket_id = P.ticket_id
WHERE T.ticket_id IS NOT NULL
   OR P.payment_status = 'Pending';

-- Events that are not fully booked
SELECT *
FROM Events
WHERE NOT available_seats = 0;

-- ==========================================
-- 7. SORTING AND GROUPING
-- ==========================================

-- Sort events by date
SELECT * FROM Events
ORDER BY event_date ASC;

-- Count tickets per event
SELECT E.event_name, COUNT(T.ticket_id) AS attendee_count
FROM Events E
LEFT JOIN Tickets T
    ON E.event_id = T.event_id AND T.status = 'Confirmed'
GROUP BY E.event_id, E.event_name;

-- Successful revenue per event
SELECT E.event_name,
       COALESCE(SUM(
           CASE WHEN P.payment_status = 'Success'
                THEN P.amount_paid ELSE 0 END
       ), 0) AS total_revenue
FROM Events E
LEFT JOIN Tickets T ON E.event_id = T.event_id
LEFT JOIN Payments P ON T.ticket_id = P.ticket_id
GROUP BY E.event_id, E.event_name;

-- ==========================================
-- 8. AGGREGATE FUNCTIONS
-- ==========================================

-- Total revenue from successful payments
SELECT SUM(amount_paid) AS total_revenue
FROM Payments
WHERE payment_status = 'Success';

-- Event with the highest number of confirmed attendees
SELECT E.event_name, COUNT(T.ticket_id) AS attendee_count
FROM Events E
JOIN Tickets T ON E.event_id = T.event_id
WHERE T.status = 'Confirmed'
GROUP BY E.event_id, E.event_name
ORDER BY attendee_count DESC
LIMIT 1;

-- Average ticket price
SELECT AVG(ticket_price) AS average_ticket_price
FROM Events;

-- Other aggregate examples
SELECT MAX(ticket_price) AS highest_ticket_price FROM Events;
SELECT MIN(ticket_price) AS lowest_ticket_price FROM Events;
SELECT COUNT(*) AS total_events FROM Events;

-- ==========================================
-- 9. PRIMARY KEY AND FOREIGN KEY
-- ==========================================

-- Tickets have a unique primary key.
-- The UNIQUE constraint prevents the same attendee
-- from booking the same event more than once.
-- Payments.ticket_id references Tickets.ticket_id.

SHOW CREATE TABLE Tickets;
SHOW CREATE TABLE Payments;

-- ==========================================
-- 10. JOINS
-- ==========================================

-- INNER JOIN: Events with venue details
SELECT E.event_name, E.event_date, V.venue_name, V.location
FROM Events E
INNER JOIN Venues V ON E.venue_id = V.venue_id;

-- LEFT JOIN: Attendees with incomplete payments
SELECT A.name, E.event_name, P.payment_status
FROM Attendees A
JOIN Tickets T ON A.attendee_id = T.attendee_id
JOIN Events E ON T.event_id = E.event_id
LEFT JOIN Payments P ON T.ticket_id = P.ticket_id
WHERE P.payment_status IS NULL
   OR P.payment_status IN ('Pending', 'Failed');

-- RIGHT JOIN: Events without any tickets
SELECT E.event_id, E.event_name
FROM Tickets T
RIGHT JOIN Events E ON T.event_id = E.event_id
WHERE T.ticket_id IS NULL;

-- FULL OUTER JOIN equivalent in MySQL:
-- LEFT JOIN plus unmatched rows from RIGHT JOIN
SELECT A.attendee_id, A.name, T.ticket_id
FROM Attendees A
LEFT JOIN Tickets T ON A.attendee_id = T.attendee_id

UNION

SELECT A.attendee_id, A.name, T.ticket_id
FROM Attendees A
RIGHT JOIN Tickets T ON A.attendee_id = T.attendee_id;

-- Attendees who have not booked any ticket
SELECT A.attendee_id, A.name
FROM Attendees A
LEFT JOIN Tickets T ON A.attendee_id = T.attendee_id
WHERE T.ticket_id IS NULL;

-- ==========================================
-- 11. SUBQUERIES
-- ==========================================

-- Events with revenue above average event revenue
SELECT E.event_id, E.event_name,
       COALESCE(SUM(
           CASE WHEN P.payment_status = 'Success'
                THEN P.amount_paid ELSE 0 END
       ), 0) AS total_revenue
FROM Events E
LEFT JOIN Tickets T ON E.event_id = T.event_id
LEFT JOIN Payments P ON T.ticket_id = P.ticket_id
GROUP BY E.event_id, E.event_name
HAVING total_revenue > (
    SELECT AVG(event_revenue)
    FROM (
        SELECT E2.event_id,
               COALESCE(SUM(
                   CASE WHEN P2.payment_status = 'Success'
                        THEN P2.amount_paid ELSE 0 END
               ), 0) AS event_revenue
        FROM Events E2
        LEFT JOIN Tickets T2 ON E2.event_id = T2.event_id
        LEFT JOIN Payments P2 ON T2.ticket_id = P2.ticket_id
        GROUP BY E2.event_id
    ) AS RevenueByEvent
);

-- Attendees who booked multiple different events
SELECT attendee_id, name
FROM Attendees
WHERE attendee_id IN (
    SELECT attendee_id
    FROM Tickets
    GROUP BY attendee_id
    HAVING COUNT(DISTINCT event_id) > 1
);

-- Organizers who manage more than 3 events
SELECT organizer_id, organizer_name
FROM Organizers
WHERE organizer_id IN (
    SELECT organizer_id
    FROM Events
    GROUP BY organizer_id
    HAVING COUNT(*) > 3
);

-- ==========================================
-- 12. DATE AND TIME FUNCTIONS
-- ==========================================

-- Extract the month from event dates
SELECT event_name, MONTH(event_date) AS event_month
FROM Events;

-- Days remaining until upcoming events
SELECT event_name,
       DATEDIFF(event_date, CURDATE()) AS days_remaining
FROM Events
WHERE event_date >= CURDATE();

-- Format payment dates
SELECT payment_id,
       DATE_FORMAT(payment_date, '%Y-%m-%d %H:%i:%s') AS formatted_date
FROM Payments;

-- ==========================================
-- 13. STRING FUNCTIONS
-- ==========================================

-- Organizer names in uppercase
SELECT UPPER(organizer_name) AS organizer_name
FROM Organizers;

-- Remove extra spaces around attendee names
SELECT TRIM(name) AS attendee_name
FROM Attendees;

-- Replace NULL email fields
SELECT name,
       COALESCE(email, 'Not Provided') AS email
FROM Attendees;

SELECT organizer_name,
       COALESCE(contact_email, 'Not Provided') AS contact_email
FROM Organizers;

-- ==========================================
-- 14. WINDOW FUNCTIONS
-- ==========================================

-- Rank events by successful revenue
SELECT event_name, total_revenue,
       RANK() OVER (ORDER BY total_revenue DESC) AS revenue_rank
FROM (
    SELECT E.event_id, E.event_name,
           COALESCE(SUM(
               CASE WHEN P.payment_status = 'Success'
                    THEN P.amount_paid ELSE 0 END
           ), 0) AS total_revenue
    FROM Events E
    LEFT JOIN Tickets T ON E.event_id = T.event_id
    LEFT JOIN Payments P ON T.ticket_id = P.ticket_id
    GROUP BY E.event_id, E.event_name
) AS EventRevenue;

-- Cumulative sum of successful ticket sales
SELECT T.ticket_id, T.booking_date, P.amount_paid,
       SUM(
           CASE WHEN P.payment_status = 'Success'
                THEN P.amount_paid ELSE 0 END
       ) OVER (
           ORDER BY T.booking_date, T.ticket_id
       ) AS cumulative_sales
FROM Tickets T
JOIN Payments P ON T.ticket_id = P.ticket_id;

-- Running total of confirmed attendees by event
SELECT E.event_name, T.ticket_id, T.booking_date,
       COUNT(*) OVER (
           PARTITION BY E.event_id
           ORDER BY T.booking_date, T.ticket_id
       ) AS running_attendees
FROM Events E
JOIN Tickets T ON E.event_id = T.event_id
WHERE T.status = 'Confirmed';

-- ==========================================
-- 15. CASE EXPRESSIONS
-- ==========================================

-- Categorize events by available seats
SELECT event_name, available_seats, total_seats,
       CASE
           WHEN available_seats < total_seats * 0.20
               THEN 'High Demand'
           WHEN available_seats <= total_seats * 0.50
               THEN 'Moderate Demand'
           ELSE 'Low Demand'
       END AS demand_category
FROM Events;

-- Categorize payment statuses
SELECT payment_id, payment_status,
       CASE
           WHEN payment_status = 'Success' THEN 'Successful'
           WHEN payment_status = 'Failed' THEN 'Failed'
           ELSE 'Pending'
       END AS status_category
FROM Payments;

-- ==========================================
-- END OF SMART EVENT MANAGEMENT SYSTEM
-- ==========================================