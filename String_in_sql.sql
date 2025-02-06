-- The following query concatenates three strings ('HEY', 'BUDDY', 'BUY!')
-- and returns a single string output. (Currently commented out)
-- SELECT CONCAT('HEY', 'BUDDY', 'BUY!');

-- This query retrieves all columns from the 'employees' table. (Currently commented out)
-- SELECT * FROM employees;

-- This query selects the 'emp_id' column and concatenates the 'name' column 
-- with the string 'ABCD', renaming the result as 'nameanddesicombine'.
SELECT emp_id, CONCAT(name, 'ABCD') AS nameanddesicombine FROM employees;
