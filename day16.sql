--SET Operator
DROP TABLE IF EXISTS student_2023;

--Create table
CREATE TABLE student_2023(
     student_id INT PRIMARY KEY,
	 student_name VARCHAR(100),
	 course VARCHAR(50)
);

--Insert data into the table
INSERT INTO student_2023(student_id , student_name , course)
VALUES(1 , 'Aarav Sharma' , 'Computer Science'),
	  (2,'Ishita Verma' , 'Mechanical Engineering'),
	  (3,'Kabir Patel' , 'Electronics'),
	  (4,'Annaya Desai' , 'Civil Eng'),
	  (5 , 'Rahul Gupta' , 'Computer Science');

SELECT * From student_2023

--Create  new table
CREATE TABLE student_2024(
     student_id INT PRIMARY KEY,
	 student_name VARCHAR(100),
	 course VARCHAR(50)
);

--Insert data into the table
INSERT INTO student_2024(student_id , student_name , course)
VALUES (3,'Kabir Patel' , 'Electronics'),
	  (4,'Annaya Desai' , 'Civil Eng'),
      (5, 'Merra Bano' , 'Computer Science'),
	  (6,'Vikram singh' , 'Mathematics'),
	  (7 , 'Sanya kapoor' , 'physics');

SELECT * From student_2024;


--UNION -> combine result , removes Duplicates
SELECT student_name , course 
FROM student_2023 
UNION
SELECT student_name , course
FROM student_2024;


--UNION ALL -> Combine results , keeps Duplicates
SELECT student_name , course 
FROM student_2023 
UNION ALL
SELECT student_name , course
FROM student_2024;


--INTERSECT -> Return commmon results
SELECT student_name , course 
FROM student_2023 
INTERSECT
SELECT student_name , course
FROM student_2024;



--EXCEPT -> Return result in first , not second
SELECT student_name , course 
FROM student_2023 
EXCEPT
SELECT student_name , course
FROM student_2024;






	  

