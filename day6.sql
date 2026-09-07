
--Query toolbar
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
SELECT
	*
FROM
	USERS;

--insert the data into the table
INSERT INTO
	USERS (USERNAME, EMAIL, AGE, CITY)
VALUES
	('shweta', ' shweta@gmail.com', 20, 'jabalpur'),
	('arun', 'arun@gmail.com', 21, 'Gotegaon'),
	('Ram', 'ram@gmail.com', 22, 'Narsinghpur'),
	('abhijeet', 'abhi@gmail.com', 23, 'Gadarwara'),
	('Ratnesh', 'virus@gmail.com', 24, 'bhopal')

--update data using toolbar
SELECT
	*
FROM
	USERS
ORDER BY
	USER_ID ASC;
	  
