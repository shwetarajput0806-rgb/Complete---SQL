--CREATE TABLE
CREATE TABLE employee(
	employee_id SERIAL PRIMARY KEY,
	name VARCHAR(100) NOT NULL,
	position VARCHAR(50),
	department VARCHAR(50),
	hire_date DATE,
	salary NUMERIC(10,2)
);

--Select the employee table and show the column name
SELECT * FROM employee; 


--INSERTING the data in the table
INSERT INTO employee(employee_name , position , department , hire_date , salary)
VALUES('shweta' , 'student' , 'AIML' , '2023-08-01' , 250000),
     ('Arun' , 'Manager' , 'HR' , '2020-08-09' , 450000),
	 ('Ram' , 'student' , 'DS' , '2025-09-01' , 240000),
	 ('Abhijeet' , 'DataAnalyst' ,'Data science' ,' 2019-05-18' , 600000);


--Upadte the column name  'name ' -> employee_name
ALTER TABLE employee
RENAME  COLUMN name TO  employee_name;

--Delete the all the rows
TRUNCATE TABLE employee RESTART IDENTITY;





