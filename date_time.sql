-- Creating a table with DATE, TIME, and DATETIME columns
CREATE TABLE person (
    jd DATE,        -- Stores only the date (YYYY-MM-DD)
    jt TIME,        -- Stores only the time (HH:MI:SS)
    jdt DATETIME    -- Stores both date and time (YYYY-MM-DD HH:MI:SS)
);

-- Inserting sample values into the table
INSERT INTO person VALUES 
('2024-02-10', '21:00:00', '2024-05-14 22:05:02');

-- Selecting all data from the person table
SELECT * FROM person;

-- Fetching the current date, current time, and full timestamp
SELECT CURDATE();   -- Returns the current system date (YYYY-MM-DD)
SELECT CURTIME();   -- Returns the current system time (HH:MI:SS)
SELECT NOW();       -- Returns the current date and time (YYYY-MM-DD HH:MI:SS)

-- Inserting the current date, time, and full timestamp into the table
INSERT INTO person VALUES (CURDATE(), CURTIME(), NOW());

-- Fetching all records from the person table to check inserted values
SELECT * FROM person;

-- Fetching the day name of a specific date
SELECT DAYNAME('2025-02-17');  -- Returns 'Monday'

-- Fetching the day name of the current date
SELECT DAYNAME(CURDATE());

-- Fetching the day of the month from the current date
SELECT DAYOFMONTH(CURDATE());  -- Returns the day number (1-31)

-- Fetching the day of the week from the current date
SELECT DAYOFWEEK(CURDATE());   -- Returns day index (1 = Sunday, 7 = Saturday)

-- Fetching the month name from the stored date column
SELECT jd, MONTHNAME(jd) FROM person;

-- Fetching the day name from the stored date column
SELECT jd, DAYNAME(jd) FROM person;

-- Fetching the hour from the stored time column
SELECT jt, HOUR(jt) FROM person;

-- Fetching the minute from the stored time column
SELECT jt, MINUTE(jt) FROM person;

-- Formatting the current date into different styles using DATE_FORMAT()
SELECT DATE_FORMAT(NOW(), '%d/%m/%y');      -- Returns '07/02/25' (DD/MM/YY)
SELECT DATE_FORMAT(NOW(), '%d %a at %k');   -- Returns '07 Wed at 13' (Day Abbreviation, 24-hour format)

-- Additional Examples

-- Extracting the second from the current time
SELECT SECOND(CURTIME());   -- Returns the current second (0-59)

-- Extracting the year from a date
SELECT YEAR(jd) FROM person;

-- Adding 10 days to the current date
SELECT DATE_ADD(CURDATE(), INTERVAL 10 DAY);   -- Returns the date after 10 days

-- Subtracting 5 days from the current date
SELECT DATE_SUB(CURDATE(), INTERVAL 5 DAY);    -- Returns the date 5 days ago

-- Finding the difference between two dates in days
SELECT DATEDIFF('2025-02-17', '2024-02-07');   -- Returns the number of days between two dates

-- Extracting the last day of the month for a given date
SELECT LAST_DAY('2024-02-07');  -- Returns '2024-02-29' (for February in a leap year)

-- Finding the week number of the year for a given date
SELECT WEEK('2024-02-07');   -- Returns the week number in the year (1-52)

-- Extracting the current timestamp
SELECT CURRENT_TIMESTAMP;    -- Equivalent to NOW(), returns date and time

-- Getting the UTC time instead of local time
SELECT UTC_TIMESTAMP();      -- Returns the current UTC date and time



✅ DATE stores only YYYY-MM-DD (e.g., 2024-02-07).
✅ TIME stores only HH:MI:SS (e.g., 21:00:00).
✅ DATETIME stores both date and time (e.g., 2024-05-14 22:05:02).
✅ NOW() returns both date & time, while CURDATE() and CURTIME() return only date or time.
✅ DATE_FORMAT() is used to customize date output.
