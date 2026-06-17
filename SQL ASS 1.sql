
CREATE DATABASE employee;
use employee ;
CREATE TABLE Departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(25)
);

CREATE TABLE Location (
    location_id INT PRIMARY KEY,
    location_name VARCHAR(25)
);

SHOW TABLES;

CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(25),
    gender ENUM('M','F'),
    age INT,
    hire_date DATE,
    designation VARCHAR(25),
    salary DECIMAL(10,2),
    department_id INT,
    location_id INT,

    FOREIGN KEY (department_id)
        REFERENCES Departments(department_id),

    FOREIGN KEY (location_id)
        REFERENCES Location(location_id)
);
SHOW TABLES;
ALTER TABLE Employees
ADD email VARCHAR(25);
DESC Employees;
SHOW TABLES;
ALTER TABLE Employees
MODIFY designation VARCHAR(200);
ALTER TABLE Employees
DROP COLUMN age;
ALTER TABLE Employees
RENAME COLUMN hire_date TO date_of_joining;
DESC Employees;
RENAME TABLE Departments TO Departments_Info;
RENAME TABLE Location TO Locations;
SHOW TABLES;
TRUNCATE TABLE Employees;
DROP TABLE Employees;
DROP DATABASE employee;
CREATE DATABASE employee;
USE employee;
CREATE TABLE Departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(25) NOT NULL UNIQUE
);
CREATE TABLE Locations (
    location_id INT AUTO_INCREMENT PRIMARY KEY,
    location_name VARCHAR(25) NOT NULL UNIQUE
);
CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,

    employee_name VARCHAR(50) NOT NULL,

    gender ENUM('M','F'),

    age INT CHECK (age >= 18),

    hire_date DATE DEFAULT (CURRENT_DATE),

    designation VARCHAR(100),

    salary DECIMAL(10,2),

    department_id INT,

    location_id INT,

    FOREIGN KEY (department_id)
        REFERENCES Departments(department_id),

    FOREIGN KEY (location_id)
        REFERENCES Locations(location_id)
);
CREATE DATABASE employee;
USE employee;

DESC Departments;
DESC Locations;
DESC Employees;
DESC Locations;
DESC Departments;
DESC Locations;
SHOW TABLES;
DESC Employees;
SHOW TABLES;
DESC Departments;
DESC Locations;

SHOW CREATE TABLE Employees;
