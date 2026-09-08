--drop the table if it is already exist
DROP TABLE IF EXISTS USERS;

--Create the table 
CREATE TABLE IF NOT EXISTS USERS (
	USER_ID SERIAL PRIMARY KEY,
	USERNAME VARCHAR(100) NOT NULL,
	EMAIL VARCHAR(100) NOT NULL,
	AGE INT,
	CITY VARCHAR(50)
);
	
--select the table 
SELECT * FROM USERS;

--insert the data into the table
INSERT INTO
	USERS (USERNAME, EMAIL, AGE, CITY)
VALUES
	('shweta', ' shweta@gmail.com', 20, 'jabalpur'),
	('arun', 'arun@gmail.com', 21, 'Gotegaon'),
	('Ram', 'ram@gmail.com', 22, 'Narsinghpur'),
	('abhijeet', 'abhi@gmail.com', 23, 'Gadarwara'),
	('Ratnesh', 'virus@gmail.com', 24, 'bhopal')


--to rename the username to full name
ALTER TABLE users
RENAME COLUMN username TO fullname;


--TO change the age column datatype from int to SmallINT
ALTER TABLE users
ALTER COLUMN age TYPE SMALLINT;

--TO add the constraints NOT NULL to city column
ALTER TABLE users
ALTER COLUMN city SET NOT NULL;

--to add the CHECK contstraints check >= 18
ALTER TABLE users
ADD CONSTRAINT age CHECK(age>=18);

ALTER TABLE users
DROP CONSTRAINT age;

INSERT INTO users(fullname , email , age , city)
VALUES('vinod' , 'vin@gmail.com' , 14 , ' Kolkata')

--chnage the table name
ALTER TABLE users
RENAME TO customers;

SELECT * FROM customers;

