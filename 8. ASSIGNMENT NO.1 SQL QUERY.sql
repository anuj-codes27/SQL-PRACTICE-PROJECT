DROP TABLE IF EXISTS employees;
CREATE TABLE employees(
  employees_id SERIAL PRIMARY KEY,
  first_name VARCHAR(50)NOT NULL,
  last_name VARCHAR(50) NOT NULL,
  department VARCHAR(50),
  salary DECIMAL (10,2) CHECK (salary>=0),
  joining_date DATE NOT NULL,
  age INT CHECK (age>=18)
);

SELECT * FROM employees;

INSERT INTO employees(first_name,last_name,department,salary,joining_date,age)
VALUES('Amit','Sharma','IT',60000.00,'2022-05-01',29),
       ('Neha','Patel','HR',55000.00,'2021-08-15',32),
	   ('Ravi','Kumar','Finance',70000.00,'2020-03-10',35),
	   ('Anjali','Verma','IT',65000.00,'2019-11-22',28),
	   ('Suresh','Reddy','Operations',50000.00,'2023-01-10',26);
	   
  -- ASSIGNMENT QUESTIONS ...

-- Q.1 Retrieve all employees first_name and their departments.

SELECT first_name , department FROM employees;

-- Q.2 Update the salary of all employess in IT department by 10%.

UPDATE employees
SET salary = salary + (salary*0.1)
WHERE department = 'IT';

SELECT * FROM employees;
SELECT * FROM employees ORDER BY employees_id ASC;

-- Q.3 Delete all employees who are older than 34 years 

DELETE FROM employees
WHERE age>34;

SELECT * FROM employees;
SELECT * FROM employees ORDER BY employees_id ASC;

-- Q.4 Add a new column email into table 

ALTER TABLE employees
ADD COLUMN email VARCHAR(50);

SELECT * FROM employees;

-- Q.5 Rename department to dept_name.

ALTER TABLE employees
RENAME department TO dept_name;

SELECT * FROM employees;

-- Q.6 Retrieve the name of employees who joined after January 01,2021.

SELECT first_name , last_name,joining_date from employees
WHERE joining_date>'2021-01-01';

--Q.7 Change the data type of salary column to INTEGER.

ALTER TABLE employees
ALTER COLUMN salary TYPE INTEGER;

SELECT * FROM employees;

-- Q.8 List all employees in descending order by their age and salary.

SELECT * FROM employees ORDER BY age,salary DESC;

-- Q.9 Insert a new employee.

INSERT INTO employees(first_name,last_name,dept_name,salary,joining_date,age)
VALUES('Raj','Singh','Marketing',60000,'2023-09-15',30);

SELECT * FROM employees;
SELECT * FROM employees ORDER BY employees_id ASC;

--Q.10 Update age of all employee by +1.

UPDATE employees
SET age = age+1;

SELECT * FROM employees;
SELECT * FROM employees ORDER BY employees_id ASC;
