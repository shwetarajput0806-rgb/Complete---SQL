--drop the table if it is already exist
DROP TABLE IF EXISTS users;

--Create the table 
CREATE TABLE IF NOT EXISTS users(
	user_id SERIAL PRIMARY KEY,
	username VARCHAR(100) NOT NULL,
	email VARCHAR(100) NOT NULL,
	age INT,
	city VARCHAR(50)
);

--select the table 
SELECT * FROM users;

--insert the data into the table
INSERT INTO users(username , email , age ,city)
VALUES('shweta' , ' shweta@gmail.com' , 20 , 'jabalpur'),
	  ('arun' , 'arun@agmail.com' , 21 , 'Gotegaon'),
	  ('Ram' , 'ram@ymail.com', 22 , 'Narsinghpur'),
	  ('abhijeet' , 'abhi@gymail.com' ,23 , 'Gadarwara'),
	  ('Ratnesh' , 'virus@gail.com' , 24 , 'Chindwara')


--show the specific column
SELECT user_id FROM users;

SELECT user_id , username FROM users;

--update 
UPDATE users
SET age = 26
WHERE username = 'abhijeet'

--serial wise ascending order arrage
SELECT * From users ORDER BY user_id ASC;

--arrange based on the username 
SELECT * From users ORDER BY username ASC;

--update the city
UPDATE users
SET city='Bhopal'
WHERE username = 'Ratnesh'


--update the city
UPDATE users
SET city = 'Banglor'
WHERE age < 21

--update two condition
UPDATE users
SET age = 31 , city = 'Nagpur'
WHERE username = 'arun'

--update using like 
UPDATE users
SET age = age+1
WHERE email LIKE '%@gmail.com'


	  
