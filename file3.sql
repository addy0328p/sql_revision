-- Selects distinct department names from the employees table
SELECT DISTINCT dept FROM employees;

-- Selects all employee records and orders them alphabetically by first name
SELECT * FROM employees ORDER BY fname;

-- Selects all employee records and orders them in descending order by first name
SELECT * FROM employees ORDER BY fname DESC;

-- Selects department and first name, ordering first by department and then by first name
SELECT dept, fname FROM employees ORDER BY dept, fname;

-- Selects all employees whose designation contains the letter 'I' (case-sensitive)
SELECT * FROM employees WHERE desig LIKE "%I%";

-- Selects employees whose first name has exactly 4 letters
SELECT * FROM employees WHERE fname LIKE "____";

-- Selects employees whose first name starts with 'J' and is followed by exactly 3 characters
SELECT * FROM employees WHERE fname LIKE "J___";

-- Adds a new column 'salary' to the employees table, ensuring it's non-null with decimal values
ALTER TABLE employees ADD salary DECIMAL(10,2) NOT NULL;

-- Selects all records from the employees table
SELECT * FROM employees;

-- Selects 3 records starting from the 4th record (pagination: skips first 3, returns next 3)
SELECT * FROM employees LIMIT 3,3;

-- Updates salary for specific employees based on emp_id
UPDATE employees SET salary = 1111 WHERE emp_id = 1;
UPDATE employees SET salary = 12222 WHERE emp_id = 2;
UPDATE employees SET salary = 33223 WHERE emp_id = 3;
UPDATE employees SET salary = 2323232 WHERE emp_id = 4;
UPDATE employees SET salary = 3223 WHERE emp_id = 5;

-- Selects all employees and orders them by salary in ascending order
SELECT * FROM employees ORDER BY salary;

-- Selects top 2 highest-paid employees
SELECT * FROM employees ORDER BY salary DESC LIMIT 2;

-- Counts the total number of employees in the table
SELECT COUNT(*) FROM employees;

-- Counts the number of distinct departments in the employees table
SELECT COUNT(DISTINCT dept) FROM employees;


-- Selects the first 3 records from the employees table (used for pagination)
SELECT * FROM employees LIMIT 3;

-- Selects all employees whose first name starts with 'R'
SELECT * FROM employees WHERE fname LIKE "R%";

-- Selects all employees whose last name has exactly 4 letters
SELECT * FROM employees WHERE lname LIKE "____";

-- Selects unique department names by grouping employees by department
SELECT dept FROM employees GROUP BY dept;

-- Counts the number of employees in each designation and groups them by designation
SELECT desig, COUNT(emp_id) FROM employees GROUP BY desig;

-- Selects the highest salary from the employees table
SELECT MAX(salary) FROM employees;

-- Selects the emp_id, first name, and salary of the employee(s) with the highest salary
SELECT emp_id, fname, salary FROM employees
WHERE salary = (SELECT MAX(salary) FROM employees);
