-- Challange 2

-- Creating the database

CREATE DATABASE IF NOT EXISTS car_dealership;
USE car_dealership;

-- Now creating the tables

DROP TABLE IF EXISTS cars;

CREATE TABLE cars (
    id INT AUTO_INCREMENT,
    vin VARCHAR(30),
    manufacturer VARCHAR(40),
    model VARCHAR(30),
    year INT,
    color VARCHAR(30),
    PRIMARY KEY (id)
);
 
 CREATE TABLE customers (
    id INT AUTO_INCREMENT,
    customer_id INT,
    name VARCHAR(40),
    phone VARCHAR(15),
    email VARCHAR(50),
    address VARCHAR(100),
    city VARCHAR(15),
    state VARCHAR(15),
    country VARCHAR(30),
    zip VARCHAR(10),
    PRIMARY KEY (id)
);


CREATE TABLE salespersons (
    id INT AUTO_INCREMENT,
    staff_id VARCHAR(30),
    name VARCHAR(40),
    store VARCHAR(30),
    PRIMARY KEY (id)
);


CREATE TABLE invoices (
    id INT AUTO_INCREMENT,
    invoice_nr VARCHAR(30),
    date DATE,
    car INT,
    customer INT,
    salesperson INT,
    PRIMARY KEY (id),
    FOREIGN KEY (car) REFERENCES cars(id),
    FOREIGN KEY (customer) REFERENCES customers(id),
    FOREIGN KEY (salesperson) REFERENCES salespersons(id)
);

