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



-- Replaces occurrences of '10' with '1000' in the 'emp_id' column (if applicable)
SELECT REPLACE(emp_id, 10, 1000) AS newemp_id FROM employees;

-- Reverses the string 'hello' and returns 'olleh'
SELECT REVERSE('hello'); 

-- Reverses the values in the 'name' column for each employee
SELECT REVERSE(name) FROM employees;

-- Converts the string 'abcdxyz' to uppercase ('ABCDXYZ')
SELECT UPPER('abcdxyz');

-- Converts the string 'ADDY' to lowercase ('addy')
SELECT LOWER('ADDY');

-- Returns the number of characters in the string 'fasasf' (which is 6)
SELECT CHAR_LENGTH('fasasf');

-- Retrieves all employees whose 'name' column has more than 9 characters
SELECT * FROM employees WHERE CHAR_LENGTH(name) > 9;

-- Inserts 'add' at the 6th position in the string 'hello as' without replacing any characters
SELECT INSERT('hello as', 6, 0, 'add');

-- Returns the first 3 characters from the left side of 'adsa' ('ads')
SELECT LEFT('adsa', 3);

-- Returns the last 2 characters from the right side of 'asas' ('as')
SELECT RIGHT('asas', 2);

-- Repeats the character 'a' 9 times ('aaaaaaaaa')
SELECT REPEAT('a', 9);

-- Removes leading and trailing spaces from '   asdasd     ', returning 'asdasd'
SELECT TRIM('   asdasd     ');
