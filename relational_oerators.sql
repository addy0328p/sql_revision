-- Select all employees with a salary less than 65000
select * from employees where salary < 65000;

-- Select all employees with a salary of 2332 and in the IT department
select * from employees where salary = 2332 and dept = 'IT';

-- Select all employees in the Account, Cash, or Loan departments (using OR)
select * from employees where dept = 'Account' or dept = 'cash' or dept = 'loan';

-- Select all employees in the Account, Cash, or Loan departments (using IN for better readability)
select * from employees where dept in ('account', 'cash', 'loan');

-- Select all employees NOT in the Account, Cash, or Loan departments
select * from employees where dept not in ('account', 'cash', 'loan');

-- Select all employees with a salary between 40000 and 60000 (inclusive)
select * from employees where salary between 40000 and 60000;



-- Select first name and salary, and categorize salary as 'higher salary' or 'low salary'
select fname, salary, 
    case 
        when salary >= 30000 then 'higher salary'
        else 'low salary'
    end as 'salary category'
from employees;

-- Select all employees where the account field is NULL
select * from employees where acc is null;

-- Select all employees whose first name does not start with 'A'
select * from employees where fname not like 'A%';


-- Constraints in SQL

-- Create a table with a unique constraint on the name column
create table contacts (
    name varchar(10) unique
);

-- Create a table with a unique mobile number and a check constraint for minimum length
create table contacts (
    mob varchar(15) unique check(length(mob) >= 10)
);

-- Create a table with a named check constraint for mobile number length
create table contacts (
    mob varchar(15) unique,
    constraint mob_less_than_10_digits check(length(mob) >= 10)
);

-- Add a new column 'city' to the contacts table
alter table contacts add column city varchar(50);

-- Rename the column 'name' to 'fullname' in the contacts table
alter table contacts rename column name to fullname;

-- Rename the table 'contacts' to 'mycontacts'
alter table contacts rename to mycontacts;

-- Modify the 'mob' column to have a default value of 'unknown'
alter table contacts modify mob varchar(20) default 'unknown';
