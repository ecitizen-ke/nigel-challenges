-- create database company
CREATE DATABASE company;
-- switch to database company

USE company;

-- create table employee
CREATE TABLE employee (
id INT AUTO_INCREMENT PRIMARY KEY,
first_name VARCHAR(50),
last_name VARCHAR(50),
email VARCHAR(100),
hire_date DATE,
KRA_PIN VARCHAR(15)
);

-- create table salary
CREATE TABLE salary (
first_name VARCHAR(50),
last_name VARCHAR(50),
email VARCHAR(100),
hire_date DATE,
salary DECIMAL(10, 2),
KRA_PIN VARCHAR(15)
);

-- insert data into table employee
INSERT INTO employee (first_name, last_name, email, hire_date, KRA_PIN) VALUES
('John', 'Doe', 'john.doe@example.com', '2020-01-15', 'A1234567B'),
('Jane', 'Smith', 'jane.smith@example.com', '2019-03-22', 'B2345678C'),
('Emily', 'Jones', 'emily.jones@example.com', '2021-07-01', 'C3456789D'),
('Michael', 'Brown', 'michael.brown@example.com', '2018-11-11', 'D4567890E'),
('Sarah', 'Davis', 'sarah.davis@example.com', '2022-05-20', 'E5678901F'),
('David', 'Wilson', 'david.wilson@example.com', '2017-04-04', 'F6789012G'),
('Laura', 'Martinez', 'laura.martinez@example.com', '2016-02-18', 'G7890123H'),
('Daniel', 'Taylor', 'daniel.taylor@example.com', '2023-01-01', 'H8901234I'),
('Olivia', 'Anderson', 'olivia.anderson@example.com', '2015-09-30', 'I9012345J'),
('Matthew', 'Thomas', 'matthew.thomas@example.com', '2020-06-25', 'J0123456K'),
('Sophia', 'Jackson', 'sophia.jackson@example.com', '2019-08-08', 'K1234567L'),
('James', 'White', 'james.white@example.com', '2021-12-12', 'L2345678M'),
('Emma', 'Harris', 'emma.harris@example.com', '2018-03-03', 'M3456789N'),
('Liam', 'Clark', 'liam.clark@example.com', '2022-07-07', 'N4567890O'),
('Isabella', 'Lewis', 'isabella.lewis@example.com', '2017-01-21', 'O5678901P'),
('Ethan', 'Robinson', 'ethan.robinson@example.com', '2016-11-15', 'P6789012Q'),
('Ava', 'Walker', 'ava.walker@example.com', '2023-05-05', 'Q7890123R'),
('Noah', 'Young', 'noah.young@example.com', '2015-10-10', 'R8901234S'),
('Mia', 'King', 'mia.king@example.com', '2020-12-12', 'S9012345T'),
('Alexander', 'Scott', 'alexander.scott@example.com', '2019-02-02', 'T0123456U');

-- insert data into table salary
INSERT INTO salary (first_name, last_name, email, hire_date, salary, KRA_PIN) VALUES
('John', 'Doe', 'john.doe@example.com', '2020-01-15', 60000, 'A1234567B'),
('Jane', 'Smith', 'jane.smith@example.com', '2019-03-22', 75000, 'B2345678C'),
('Emily', 'Jones', 'emily.jones@example.com', '2021-07-01', 50000, 'C3456789D'),
('Michael', 'Brown', 'michael.brown@example.com', '2018-11-11', 85000, 'D4567890E'),
('Sarah', 'Davis', 'sarah.davis@example.com', '2022-05-20', 62000, 'E5678901F'),
('David', 'Wilson', 'david.wilson@example.com', '2017-04-04', 72000, 'F6789012G'),
('Laura', 'Martinez', 'laura.martinez@example.com', '2016-02-18', 81000, 'G7890123H'),
('Daniel', 'Taylor', 'daniel.taylor@example.com', '2023-01-01', 67000, 'H8901234I'),
('Olivia', 'Anderson', 'olivia.anderson@example.com', '2015-09-30', 76000, 'I9012345J'),
('Matthew', 'Thomas', 'matthew.thomas@example.com', '2020-06-25', 55000, 'J0123456K'),
('Sophia', 'Jackson', 'sophia.jackson@example.com', '2019-08-08', 70000, 'K1234567L'),
('James', 'White', 'james.white@example.com', '2021-12-12', 58000, 'L2345678M'),
('Emma', 'Harris', 'emma.harris@example.com', '2018-03-03', 53000, 'M3456789N'),
('Liam', 'Clark', 'liam.clark@example.com', '2022-07-07', 64000, 'N4567890O'),
('Isabella', 'Lewis', 'isabella.lewis@example.com', '2017-01-21', 69000, 'O5678901P'),
('Ethan', 'Robinson', 'ethan.robinson@example.com', '2016-11-15', 74000, 'P6789012Q'),
('Ava', 'Walker', 'ava.walker@example.com', '2023-05-05', 61000, 'Q7890123R'),
('Noah', 'Young', 'noah.young@example.com', '2015-10-10', 87000, 'R8901234S'),
('Mia', 'King', 'mia.king@example.com', '2020-12-12', 68000, 'S9012345T'),
('Alexander', 'Scott', 'alexander.scott@example.com', '2019-02-02', 59000, 'T0123456U');

-- Select employees hired after January 1, 2020
SELECT * FROM employees WHERE hire_date > '2020-01-01';

-- Select employees with a salary greater than 60000
SELECT * FROM salary WHERE salary > 60000;

-- Select employees hired between January 1, 2019, and December 31, 2020
SELECT * FROM employee WHERE hire_date BETWEEN '2019-01-01' AND '2020-12-31';

-- Select employees with a salary between 60000 and 80000
SELECT * FROM salary WHERE salary BETWEEN 60000 AND 80000;

--- Select employees whose first name starts with 'J'
SELECT * FROM employee WHERE first_name LIKE 'J%';

-- Select employees whose email contains 'example'
SELECT * FROM employee WHERE email LIKE '%example%';

-- Select employees whose last name is either 'Smith' or 'Jones'
SELECT * FROM employee WHERE last_name IN ('Smith', 'Jones');

-- Select employees with salaries of either 60000, 70000, or 80000
SELECT * FROM salary WHERE salary IN (60000, 70000, 80000);

-- Select all employees ordered by hire date ascending
SELECT * FROM employee ORDER BY hire_date ASC;

-- Select all salaries ordered by salary in descending order
SELECT * FROM salary ORDER BY salary DESC;

-- Group employees by hire date
SELECT hire_date, COUNT(*) FROM employee GROUP BY hire_date;

-- Group salaries by hire date
SELECT hire_date, COUNT(*) FROM salary GROUP BY hire_date;

-- Group salaries by first name and hire date
SELECT first_name, hire_date, COUNT(*) FROM salary GROUP BY first_name, hire_date;

-- Group by hire date and filter groups with more than 1 employee 
SELECT first_name,last_name, COUNT(*) AS employee_count FROM employee GROUP BY first_name,last_name,hire_date HAVING COUNT(*) = 1;

-- Group by hire date and filter groups with more than 1 salary record
SELECT first_name,last_name, COUNT(*) AS employee_count FROM salary GROUP BY first_name,last_name,hire_date HAVING COUNT(*) > 1;

-- Select the first 5 employees
SELECT * FROM employee LIMIT 5;

-- Select 5 employees starting from the 6th record
SELECT * FROM employee WHERE id >=6;

-- Select the first 3 salary records
SELECT * FROM employee LIMIT 3;

-- Select 3 salary records starting from the 4th record
SELECT * FROM employee WHERE id >=4 LIMIT 3;