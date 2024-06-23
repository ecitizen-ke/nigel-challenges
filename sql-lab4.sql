CREATE DATABASE CompanyDB;

USE CompanyDB;

--Departments table
CREATE TABLE Departments (
department_id INT AUTO_INCREMENT,
department_name VARCHAR(50),
PRIMARY KEY (department_id)
);

-- Insert data into Departments Table
INSERT INTO Departments (department_name) VALUES ('HR'), ('IT'), ('Finance');

-- Create Employees table
CREATE TABLE Employees (
employee_id INT AUTO_INCREMENT,
first_name VARCHAR(50),
last_name VARCHAR(50),
department_id INT,
salary DECIMAL(10, 2),
hire_date DATE,
PRIMARY KEY (employee_id),
FOREIGN KEY (department_id) REFERENCES Departments(department_id)
);

-- Insert data into Employees table
INSERT INTO Employees (first_name, last_name, department_id, salary, hire_date) VALUES
('John', 'Doe', 1, 50000, '2020-01-15'),
('Jane', 'Smith', 2, 60000, '2019-03-22'),
('Emily', 'Jones', 3, 75000, '2018-05-30'),
('Michael', 'Brown', 2, 80000, '2021-07-14'),
('Sarah', 'Davis', 1, 55000, '2020-11-11'),
('David', 'Wilson', 3, 72000, '2017-08-19'),
('Laura', 'Martinez', 1, 58000, '2019-10-05');

--Aggregate Functions

--Count of the number of employees name the column total_employees
SELECT COUNT(*) AS total_employees FROM Employees;

-- total salary of all employees name the column total_salary
SELECT SUM(salary) AS total_salary FROM Employees;

-- average salary of all employees name the column average_salary
SELECT AVG(salary) AS average_salary FROM Employees;

-- minimum salary name the column minimum_salary
SELECT MIN(salary) AS minimum_salary FROM Employees;

--maximum salary name the column maximum_salary
SELECT MAX(salary) AS maximum_salary FROM Employees;

--Data Constraints

-- Create Projects table
CREATE TABLE Projects (    
project_id INT AUTO_INCREMENT,     
project_name VARCHAR(100) NOT NULL,     
start_date DATE DEFAULT (CURRENT_DATE),     
end_date DATE,
budget DECIMAL(10, 2) CHECK (budget > 0),     
PRIMARY KEY (project_id),    
UNIQUE (project_name) );

-- Insert data into Projects
INSERT INTO Projects (project_name, end_date, budget) VALUES
('Project Alpha', '2022-12-31', 100000),
('Project Beta', '2023-06-30', 200000),
('Project Gamma', '2024-03-15', 150000),
('Project Delta', '2023-09-20', 250000),
('Project Epsilon', '2024-11-25', 175000),
('Project Zeta', '2025-02-10', 300000),
('Project Eta', '2023-05-05', 120000);

-- Create EmployeeProjects table
CREATE TABLE EmployeeProjects (
employee_id INT,
project_id INT,
assignment_date DATE,
PRIMARY KEY (employee_id, project_id),
FOREIGN KEY (employee_id) REFERENCES Employees(employee_id),
FOREIGN KEY (project_id) REFERENCES Projects(project_id)
);

-- Assign employees to projects
INSERT INTO EmployeeProjects (employee_id, project_id, assignment_date) VALUES
(1, 1, '2021-01-01'),
(2, 1, '2021-02-01'),
(3, 2, '2021-03-01'),
(4, 2, '2021-04-01'),
(5, 3, '2021-05-01'),
(6, 4, '2021-06-01'),
(7, 5, '2021-07-01'),
(1, 6, '2021-08-01'),
(2, 6, '2021-09-01'),
(3, 7, '2021-10-01');

-- Retrieve all employees and their department names
SELECT e.first_name, e.last_name, d.department_name
FROM Employees e
JOIN Departments d ON e.department_id = d.department_id;

-- Unique and Check Constraints

-- Attempt to insert a project with a negative budget.
INSERT INTO Projects (project_name, end_date, budget) VALUES ('Project Gamma',
'2024-12-31', -50000);

-- Attempt to insert a duplicate project name.
INSERT INTO Projects (project_name, end_date, budget) VALUES ('Project Alpha',
'2024-12-31', 150000);

--Retrieve all projects and the employees assigned to them.
SELECT p.project_name, e.first_name, e.last_name, ep.assignment_date
FROM EmployeeProjects ep
JOIN Projects p ON ep.project_id = p.project_id
JOIN Employees e ON ep.employee_id = e.employee_id;