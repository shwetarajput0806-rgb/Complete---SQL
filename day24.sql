--JOINS

--Type of joins
/*
1 Inner join - retrieves records with matching values in both tAbles
2 Left join (left outer join) - retrieves all records from the left table and matching records from the right table . non matching records in the right table result is null
3 Right join( right outer join) - retrieves all records from the right table and matching record from the left table . non matching record in the left table result
4 Full join(Full outeer join) - Retrieves all records from both tables , with -- non matching row in entire table
5 Cross join - Combines all rows from both tables , resulting in a cartesian position
6 SElf Join - joins a table to itself

*/

DROP TABLE IF EXISTS employee3;
 
-- create employee table
CREATE TABLE employee3(
      employee_id SERIAL PRIMARY KEY,
	  first_name VARChAR(50),
	  last_name VARCHAR(50),
	  department_id INT
);

--Insert data
INSERT INTO employee3(first_name , last_name , department_id)
VALUES('Rahul' , 'Sharma' , 101),
('Priya' , 'Mehta' , 102),
('Ankit' , 'Verma ' , 103),
('Simran' , 'Kaur' , NULL),
('aman'  , 'Singh' , 101) ;

SELECT  * FROM employee3;

--Create table department
CREATE TABLE Departments(
		department_id INT PRIMARY KEY ,
		department_name VARCHAR(50)
);

--Insert data
INSERT INTO Departments(department_id , department_name)
VALUES ( 101, 'Sales'),
		(102 , 'Marketing'),
		(103 , 'IT'),
		(104 , 'HR');

SELECT * FROM Departments;


--INNER joins - Retrieve employee3 an their department names where a match exists

SELECT * FROM Departments;

SELECT  e.employee_id , e.first_name , e.last_name, d.department_id , d.department_name
FROM employee3 e
INNER JOIN
Departments d
ON e.department_id = d.department_id;


--Left join - Reterive all employee3 and their department name , including those without a department
SELECT  e.employee_id , e.first_name , e.last_name, d.department_id , d.department_name
FROM employee3 e
LEFT JOIN
Departments d
ON e.department_id = d.department_id;


--Right join - Reterive all employee3 and their department name , including those without a department
SELECT  e.employee_id , e.first_name , e.last_name, d.department_id , d.department_name
FROM employee3 e
RIGHT JOIN
Departments d
ON e.department_id = d.department_id;




