--CREATE TABLE
CREATE TABLE employee2(
	employee_id INT PRIMARY KEY,
	name VARCHAR(100) NOT NULL,
	position VARCHAR(50),
	department VARCHAR(50),
	hire_date DATE,
	salary NUMERIC(10,2)
);

--Select the employee table and show the column name
SELECT * FROM employee2; 

--INSert the data
INSERT INTO employee2( employee_id , name , position , department , hire_date , salary)
VALUES (101 , 'shweta' , 'Machine Learning eng' , 'AIML' , '2020-02-01' , 400000),
        (102 , 'Arun' , 'Manager' , 'HR' , '2023-06-01' , 450000),
		(103 , 'Ram' , ' Data Analyst' , 'DS' ,' 2024-04-01' , 650000),
		(104 , 'Abhijeet' , 'AI eng' , 'AI' ,'2025-03-01',700000);

--Delete Specific row
DELETE FROM employee2
WHERE department = 'AI'

--Delete Specific Column
ALTER TABLE employee2
DROP COLUMN salary

--Delete the table -> employee 3 dose not exist
DROP TABLE IF EXISTS employee3;


--Delete the database -> company2 does not exist
DROP DATABASE IF EXISTS company2;







