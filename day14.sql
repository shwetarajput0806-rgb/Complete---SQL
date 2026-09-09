--Between Like and In operator

SELECT * FROM employee;

--Q1-> Retrive employee whose salary is between 40000 and 60000 - use BETWEEN opertair
SELECT first_name ,last_name , salary 
FROM employee
WHERE salary BETWEEN 40000 AND 60000;

--Q2-> find the employee whose email address end with gmail.com - use LIKE operator
SELECT first_name , last_name 
FROM employee
WHERE first_name  LIKE '%a'; --first name end with a


SELECT first_name , last_name 
FROM employee
WHERE first_name  LIKE 'A%'; --First_name start with A

SELECT first_name , last_name 
FROM employee
WHERE first_name  LIKE '%a%'; --Mid m a


--IN operator
--Q3 -> Retrive employee who belong to either the 'Finance ' or 'Marketing ' department - use IN opeartor
SELECT first_name , last_name , department
FROM employee
WHERE department IN('Finance' , 'IT');

