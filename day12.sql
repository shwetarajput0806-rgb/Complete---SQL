--Comparision Operator -> equal to , Not equal to , Greater than , Less than , Greater than or equal , Less than or equal

--Drop the table if already exists
DROP TABLE IF EXISTS employee;

--CReate the employee table
CREATE TABLE employee(
	employee_id SERIAL PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	department VARCHAR(50),
	salary DECIMAL(10,2) CHECK(salary >0),
	joining_date DATE NOT NULL,
	age INT CHECK(age>=18)
)

SELECT * FROM employee;

--Insert data into the table
INSERT INTO employee( first_name , last_name , department, salary , joining_date , age)
VALUES('Amit' , 'Sharma' , 'IT' , 60000.00,'2022-05-01',29),
	('Neha' , 'Patel' , 'HR' ,55000.00 ,' 2021-08-15' , 30),
	('Ravi' , 'Kumar' , 'Finance' , 70000.00 , '2020-03-10',35),
	('Anjali' , 'Verma' , 'IT' ,65000.00 , '2019-11-22' ,28),
	('Suresh' , 'Reddy' , 'Operations' , 50000.00 , '2023-01-10',26);

--matches age 30
SELECT * FROM employee
WHERE age = 30;

--matches all except 30
SELECT first_name , age FROM employee2
WHERE age != 30;


--Salray greater than 50000
SELECT * FROM employee
WHERE salary >= 50000;

--Salray less than 50000
SELECT * FROM employee
WHERE salary <= 50000;
	
