-- Write your schema here --
DROP DATABASE IF EXISTS tracker_db;
CREATE DATABASE tracker_db;

USE tracker_db;

DROP TABLE IF EXISTS department;
CREATE TABLE department (
  id INT PRIMARY KEY,
  name VARCHAR(30) NOT NULL,
);

DROP TABLE IF EXISTS role;
CREATE TABLE role (
  id INT PRIMARY KEY,
  title VARCHAR(30) NOT NULL,
  salary DECIMAL,
  department_id INT,
  FOREIGN KEY (department_id)
  REFERENCES department (id)
  ON DELETE SET NULL                
);

DROP TABLE IF EXISTS employee;
CREATE TABLE employee (
  id INT PRIMARY KEY,
  first_name VARCHAR(30) NOT NULL,                 
  last_name VARCHAR(30) NOT NULL,
  role_id INT,
  manager_id INT,
  FOREIGN KEY (role_id) 
  REFERENCES employee (id)
  ON DELETE SET NULL
  FOREIGN KEY (manager_id) 
  REFERENCES employee (id)
  ON DELETE SET NULL                
);
