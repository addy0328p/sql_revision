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
