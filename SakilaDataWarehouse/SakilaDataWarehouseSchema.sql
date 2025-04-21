--DROP DATABASE SakilaDataWarehouse;

CREATE DATABASE SakilaDataWarehouse;
GO
USE SakilaDataWarehouse;

CREATE TABLE Dim_Customer
(
  customer_id INT NOT NULL,
  first_name VARCHAR(45) NOT NULL,
  last_name VARCHAR(45) NOT NULL,
  email VARCHAR(50) NULL,
  active_status CHAR(1) NOT NULL,
  city VARCHAR(50) NOT NULL,
  country VARCHAR(50) NOT NULL,
  customer_key INT NOT NULL IDENTITY(1,1),
  PRIMARY KEY (customer_key)
);

CREATE TABLE Dim_Film
(
  film_id INT NOT NULL,
  title VARCHAR(255) NOT NULL,
  release_year VARCHAR(4) NULL,
  rental_rate DECIMAL(4,2) NOT NULL,
  length SMALLINT NULL,
  category VARCHAR(25) NOT NULL,
  film_key INT NOT NULL IDENTITY(1,1),
  PRIMARY KEY (film_key)
);

CREATE TABLE Dim_Store
(
  store_id INT NOT NULL,
  manager_id INT NOT NULL,
  city VARCHAR(50) NOT NULL,
  country VARCHAR(50) NOT NULL,
  store_key INT NOT NULL IDENTITY(1,1),
  PRIMARY KEY (store_key)
);

CREATE TABLE Dim_Staff
(
  staff_id INT NOT NULL,
  first_name VARCHAR(45) NOT NULL,
  last_name VARCHAR(45) NOT NULL,
  staff_key INT NOT NULL IDENTITY(1,1),
  PRIMARY KEY (staff_key)
);

CREATE TABLE Dim_Date
(
  date_key INT NOT NULL IDENTITY(1,1),
  full_date DATETIME NOT NULL,
  year SMALLINT NOT NULL,
  quarter TINYINT NOT NULL,
  day_of_week TINYINT NOT NULL,
  month TINYINT NOT NULL,
  PRIMARY KEY (date_key)
);

CREATE TABLE Rental_fact_table
(
  rental_duration TINYINT NOT NULL,
  payment_amount DECIMAL(5,2) NOT NULL,
  late_fee DECIMAL(7,2) NOT NULL,
  store_key INT NOT NULL,
  staff_key INT NOT NULL,
  film_key INT NOT NULL,
  customer_key INT NOT NULL,
  date_key INT NOT NULL,
  FOREIGN KEY (store_key) REFERENCES Dim_Store(store_key),
  FOREIGN KEY (staff_key) REFERENCES Dim_Staff(staff_key),
  FOREIGN KEY (film_key) REFERENCES Dim_Film(film_key),
  FOREIGN KEY (customer_key) REFERENCES Dim_Customer(customer_key),
  FOREIGN KEY (date_key) REFERENCES Dim_Date(date_key)
);