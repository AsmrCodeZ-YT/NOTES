-- ################################## person_id NOT NULL : U CANT 
CREATE TABLE people (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(32) NOT NULL,
    last_name VARCHAR(32) NOT NULL,
);

CREATE TABLE phone_number (
    id SERIAL PRIMARY KEY,
    person_id INTEGER UNIQUE NOT NULL REFERENCES people (id) ON DELETE CASCADE,
    country_id CHAR(3) NOT NULL,
    phone_number CHAR(3) NOT NULL,
);

-- ################################## person_id NULL BEACUSE WHEN U WANT DELETE ITEM
CREATE TABLE people (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(32) NOT NULL,
    last_name VARCHAR(32) NOT NULL,
);

CREATE TABLE phone_number (
    id SERIAL PRIMARY KEY,
    person_id CHAR(10) UNIQUE NULL REFERENCES people (national_code) ON DELETE CASCADE,
    country_id CHAR(3) NOT NULL,
    phone_number CHAR(3) NOT NULL,
);

-- ################################## ONE TO MENY : NO UNIQUE
CREATE TABLE people (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(32) NOT NULL,
    last_name VARCHAR(32) NOT NULL,
);

CREATE TABLE phone_number (
    id SERIAL PRIMARY KEY,
    person_id CHAR(10) NULL REFERENCES people (national_code) ON DELETE CASCADE,
    country_id CHAR(3) NOT NULL,
    phone_number CHAR(3) NOT NULL,
);