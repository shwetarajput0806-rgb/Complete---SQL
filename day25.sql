--FULL  outer join -> Retrieve all employee3 and department , including non macthing records from both tables

SELECT  e.employee_id , e.first_name , e.last_name, d.department_id , d.department_name
FROM employee3 e
FULL OUTER JOIN
Departments d
ON e.department_id = d.department_id;


--CROss join
SELECT e.first_name , e.last_name , d.department_name 
FROM employee3 e
CROSS JOIN 
     Departments d;


--SElf join  -  find employee3 who share the same department
SELECT e1.first_name AS employee_name1,
		e2.first_name AS employee_name2,
		department_name
		
FROM employee3 e1 JOIN employee3 e2
ON e1.department_id = e2.department_id AND e1.employee_id != e2.employee_id
JOIN
Departments d
ON
e1.department_id = d.department_id;





	 
