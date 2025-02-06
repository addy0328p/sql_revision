-- The following query concatenates three strings ('HEY', 'BUDDY', 'BUY!')
-- and returns a single string output. (Currently commented out)
-- SELECT CONCAT('HEY', 'BUDDY', 'BUY!');

-- This query retrieves all columns from the 'employees' table. (Currently commented out)
-- SELECT * FROM employees;

-- This query selects the 'emp_id' column and concatenates the 'name' column 
-- with the string 'ABCD', renaming the result as 'nameanddesicombine'.
SELECT emp_id, CONCAT(name, 'ABCD') AS nameanddesicombine FROM employees;



-- This query concatenates 'emp_id', 'name', and 'desig' using ':' as a separator.
-- CONCAT_WS() stands for "Concatenate With Separator".
-- SELECT CONCAT_WS(':', emp_id, name, desig) FROM employees;

-- This query extracts a substring from 'hey buddy', starting at position 1 
-- and taking the next 4 characters ('hey ').
-- SELECT SUBSTRING('hey buddy', 1, 4);

-- This query attempts to extract the last 4 characters of 'hey buddy'.
-- However, using a negative start index might not be supported in all databases.
-- SELECT SUBSTRING('hey buddy', -4);

-- This query extracts a substring from the 'emp_id' column, starting from the 2nd character onwards.
-- The result is given an alias 'EMPIID'. It also selects the 'name' column.
SELECT SUBSTRING(emp_id, 2) AS EMPIID, name FROM employees;
