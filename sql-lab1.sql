-- CREATE A DATABASE
CREATE DATABASE companydb;

--Switch to the new database:
USE companydb;

-- CREATE TABLE projects
CREATE TABLE projects(id INT AUTO_INCREMENT PRIMARY KEY, project_name VARCHAR(50), start_date DATE, end_date DATE, budget FLOAT);

--INSERT ELEMENT INTO A TABLE projects
INSERT INTO projects(project_name, start_date, end_date, budget) values('Real Estate Software', '2020-03-23', '2021-03-23',700000);
INSERT INTO projects(project_name, start_date, end_date, budget) values('NTSP', '2021-12-03', '2022-02-10',790000);
INSERT INTO projects(project_name, start_date, end_date, budget) values('eCitizen Cloud Deployment', '2023-12-14', '2024-01-10',800000);
INSERT INTO projects(project_name, start_date, end_date, budget) values('Project Alpha', '2021-11-18', '2022-11-18',1500000);
INSERT INTO projects(project_name, start_date, end_date, budget) values('Project Gamma', '2012-12-12', '2015-12-12',900000);

--Retrieve only the `project_name` and `budget` for all projects:
SELECT project_name, budget FROM projects;

--Retrieve projects with a budget greater than 60000:
SELECT * FROM projects WHERE budget > 60000;

--Sort projects by `start_date` in ascending order:
SELECT * FROM projects ORDER BY start_date ASC;

--Update the budget for `Project Alpha` to 120000:
UPDATE projects SET budget= 120000 WHERE project_name = 'Project Alpha';

--Delete `Project Gamma`:
DELETE FROM projects WHERE project_name = 'Project Gamma';
