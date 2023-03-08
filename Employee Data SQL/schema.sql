-- create table of Departments
DROP TABLE Departments;

CREATE TABLE Departments (
	department_number VARCHAR(30) primary key,
	department_name VARCHAR(30) NOT NULL
);

SELECT * FROM Departments;

-- create table Titles
DROP TABLE Titles

CREATE TABLE Titles (
	title_id VARCHAR(30) primary key,
	title VARCHAR(30) NOT NULL
);

SELECT * FROM Titles;

-- create table Employees
DROP TABLE Employees

CREATE TABLE Employees (
	employee_number INT primary key,
	employee_title VARCHAR (30) NOT NULL,
	birth_date VARCHAR(12) NOT NULL,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	gender VARCHAR(2),
	hire_date VARCHAR (30) NOT NULL,
	foreign key (employee_title) references titles(title_id)
	
);

SELECT * FROM Employees;

-- create table Department Employee
DROP TABLE Department_Employees

CREATE TABLE Department_Employees (
	employee_number INT NOT NULL,
	foreign key (employee_number) references employees(employee_number),
	department_number VARCHAR (30) NOT NULL,
	foreign key (department_number) references departments(department_number),
	primary key (employee_number, department_number)
);

SELECT * FROM Department_Employees;

-- create table Department Manager
DROP TABLE Department_Manager

CREATE TABLE Department_Manager(
	department_number VARCHAR(30) NOT NULL,
	foreign key (department_number) references departments(department_number),
	employee_number INT NOT NULL,
	foreign key (employee_number) references employees(employee_number),
	primary key (employee_number, department_number)
);

SELECT * FROM Department_Manager;

-- create table Salaries 
DROP TABLE Salaries 

CREATE TABLE Salaries(
	employee_number INT NOT NULL,
	foreign key (employee_number) references employees(employee_number),
	salary INT NOT NULL
);

SELECT * FROM Salaries;

