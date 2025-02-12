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



-- Calculating the difference between two dates
-- Returns the number of days between the two dates
-- Negative result because the first date is earlier than the second date
SELECT DATEDIFF('2023-04-12', '2025-01-21');

-- Adding 1 year to the current date and time
-- Useful for calculating expiration dates or future events
SELECT DATE_ADD(NOW(), INTERVAL 1 YEAR);

-- Subtracting 1 year from the current date and time
-- Useful for finding the date 1 year ago from today
SELECT DATE_SUB(NOW(), INTERVAL 1 YEAR);

-- Calculating the difference between two times
-- The second time is invalid (hours > 24), so it will return NULL
SELECT TIMEDIFF('23:00:00', '30:43:23');

-- Creating a table named blogs to store blog posts
-- 'text' column stores the blog content
-- 'created_at' column automatically stores the timestamp when a row is created
-- 'updated_at' column automatically updates the timestamp when a row is updated
CREATE TABLE blogs (
    text VARCHAR(120),
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME ON UPDATE CURRENT_TIMESTAMP
);

-- Describing the table structure
-- Shows the columns, data types, and default values
DESC blogs;

-- Inserting a new blog post
-- 'created_at' will store the current timestamp automatically
-- 'updated_at' will also be set to the current timestamp
INSERT INTO blogs (text)
VALUES ('this is my first blog');

-- Viewing all the data from the blogs table
-- Displays the text, created_at, and updated_at columns
SELECT * FROM blogs;

-- Disabling Safe Update Mode temporarily to allow updating without a WHERE clause
-- Be cautious when doing this as it can affect all rows in the table
SET SQL_SAFE_UPDATES = 0;

-- Updating the text of all blog posts
-- Since no WHERE clause is used, it will update all rows in the table
UPDATE blogs 
SET text = 'this is my second blog not first';

-- Re-enabling Safe Update Mode after the update
-- It's good practice to turn it back on to avoid accidental updates
SET SQL_SAFE_UPDATES = 1;

-- Viewing the updated data in the blogs table
-- 'text' should now be updated for all rows
-- 'updated_at' should also reflect the new timestamp
SELECT * FROM blogs;

DATEDIFF() calculates the difference in days between two dates.
DATE_ADD() and DATE_SUB() are used for date arithmetic.
TIMEDIFF() calculates the difference between two times but returns NULL if the second time is invalid.
CURRENT_TIMESTAMP in created_at and updated_at automatically tracks creation and update times.
SQL_SAFE_UPDATES is disabled temporarily to update all rows without a WHERE clause but should be re-enabled afterward.
