
CREATE TABLE category

(
	category_id VARCHAR(4) PRIMARY KEY NOT NULL,
	category VARCHAR(30)


);




CREATE TABLE subcategory

(
	subcategory_id VARCHAR(8) PRIMARY KEY NOT NULL,
	sub_category VARCHAR(30)



);



CREATE TABLE contacts  

(

	contact_id int PRIMARY KEY NOT NULL,
	first_name VARCHAR(30),
	last_name VARCHAR(30),
	email VARCHAR(50)
	
);





CREATE TABLE campaign
(	
	cf_id int PRIMARY KEY NOT NULL,
	contact_id int NOT NULL,
	company_name VARCHAR(100),
	description VARCHAR(100),
	goal FLOAT,
	pledged FLOAT,
	outcome VARCHAR(100),
	backers_count int,
	country VARCHAR(2),
	currency VARCHAR(3),
	launch_date DATE,
	end_date DATE,
	category_id VARCHAR(4),
	subcategory_id VARCHAR(8),
	FOREIGN KEY(subcategory_id) REFERENCES subcategory(subcategory_id),
	FOREIGN KEY(category_id) REFERENCES category(category_id),
	FOREIGN KEY(contact_id) REFERENCES contacts(contact_id)
	
	


);



SELECT * FROM contacts
SELECT * FROM campaign
SELECT * FROM category
SELECT * FROM subcategory







