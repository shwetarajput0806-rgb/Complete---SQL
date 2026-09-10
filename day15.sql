--Other Operator -> IS NULL operator , ORDER BY Operator , LIMIT Operator , DISTINCT opeartor

SELECT * FROM employee;

--Find employee where the email , column is NULL if(applicable)
SELECT first_name , last_name , email
FROM employee
WHERE email IS NULL;

--List employee sorted by salary in Descending order
SELECT first_name , last_name , salary
FROM employee
ORDER BY salary DESC;

--Retrive the top 5 highest paid salary
SELECT first_name , last_name , salary
FROM employee
ORDER BY salary DESC
LIMIT 3;

--Retrive a list of  department
SELECT DISTINCT department
FROM employee;

SELECT COUNT (DISTINCT department) AS dep_unique_count
FROM employee; -- count thee unique department
