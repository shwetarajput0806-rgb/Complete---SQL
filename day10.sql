--IMPORT CSV FILE directly

--Drop the table if already exists
DROP TABLE IF EXISTS employee2;

--CReate the employee table
CREATE TABLE employee2(
	employee_id INT PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	department VARCHAR(50),
	salary NUMERIC(10,2),
	joining_date DATE NOT NULL,
	age INT 
)

SELECT * FROM employee2;