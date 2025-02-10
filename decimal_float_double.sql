-- Creating a table with DECIMAL, FLOAT, and DOUBLE columns
CREATE TABLE numbers (
    id INT PRIMARY KEY,
    decimal_value DECIMAL(10, 5),  -- Fixed precision: 10 total digits, 5 after decimal
    float_value FLOAT(7, 4),       -- Approximate precision: 7 total digits, 4 after decimal
    double_value DOUBLE(16, 8)     -- Higher precision: 16 total digits, 8 after decimal
);

-- Inserting values to observe precision behavior
INSERT INTO numbers (id, decimal_value, float_value, double_value) VALUES
(1, 123.45678, 123.4567, 123.45678912),  -- Stored accurately in all columns
(2, 98765.54321, 98765.5432, 98765.5432109876),  -- FLOAT may lose precision
(3, 1.234567, 1.234567, 1.23456789),  -- FLOAT rounds after 4 decimals
(4, 99999.99999, 99999.99999, 99999.99999999); -- FLOAT loses precision, DOUBLE retains more

-- Selecting values to observe precision issues
SELECT * FROM numbers;
