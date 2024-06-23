CREATE DATABASE company;

USE company;

CREATE TABLE employees (
id INT AUTO_INCREMENT PRIMARY KEY,
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50) NOT NULL,
email VARCHAR(100) UNIQUE NOT NULL,
hire_date DATE NOT NULL
);

INSERT INTO employees (first_name, last_name, email, hire_date) VALUES
('John', 'Doe', 'john.doe@example.com', '2023-01-15'),
('Jane', 'Smith', 'jane.smith@example.com', '2023-02-20'),
('Alice', 'Johnson', 'alice.johnson@example.com', '2023-03-10'),
('Bob', 'Brown', 'bob.brown@example.com', '2023-04-05');

ALTER TABLE employee RENAME TO staff;

ALTER TABLE staff ADD COLUMN phone_number VARCHAR(15);

CREATE TABLE employees_backup AS SELECT * FROM staff;

INSERT INTO staff (first_name, last_name, email, hire_date) VALUES
('Nigel', 'Kimutai', 'nigelkimutai@gmail.com', '2023-01-09');

INSERT INTO staff (first_name, last_name, email, hire_date) VALUES
('John', 'Doe', 'john.doe@example.com', '2023-01-15'),
('Jane', 'Smith', 'jane.smith@example.com', '2023-02-20');

UPDATE staff SET email = 'john.doe@newdomain.com' WHERE first_name = 'John'
AND last_name = 'Doe';