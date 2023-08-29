-- create contacts table
DROP TABLE contacts;

CREATE TABLE contacts (
	contact_id SERIAL PRIMARY KEY,
	email VARCHAR,
	first_name TEXT,
	last_name TEXT
);

SELECT * FROM contacts;

-- create category table
DROP TABLE category;

CREATE TABLE category (
	category_ids VARCHAR PRIMARY KEY,
	category TEXT);
	
SELECT * FROM category;

-- create subcategory table
DROP TABLE subcategory; 

CREATE TABLE subcategory (
	subcategory_ids VARCHAR PRIMARY KEY,
	subcategory TEXT);
	
SELECT * FROM subcategory;

-- create campaign table
DROP TABLE campaign;

CREATE TABLE campaign (
	cf_id SERIAL,
	contact_id SERIAL,
	FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
	company_name VARCHAR,
	description VARCHAR,
	goal FLOAT,
	pledged FLOAT,
	outcome TEXT,
	backers_count INT,
	country TEXT,
	currency TEXT,
	launch_date DATE,
	end_date DATE,
	category_ids VARCHAR,
	FOREIGN KEY (category_ids) REFERENCES category(category_ids),
	subcategory_ids VARCHAR,
	FOREIGN KEY (subcategory_ids) REFERENCES subcategory(subcategory_ids));
	
SELECT * FROM campaign;
	