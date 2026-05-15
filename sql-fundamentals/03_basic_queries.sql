
-- TOPIC: Basic SQL Queries

-- CONCEPTS:
-- SELECT
-- ORDER BY
-- LIMIT
-- DISTINCT
-- Column Aliasing (AS)

-- PROJECT:
-- Company Database Query Practice

-- Retrieve all employee records
SELECT * 
FROM employee;
    
    
-- Find all employees ordered by salary 
SELECT *
FROM employee
ORDER BY salary DESC; -- DESC for descending order and ASC for ascending order-- 


-- Find all employees ordered by SEX then NAME 
SELECT *
FROM employee
ORDER BY sex, first_name, last_name;


-- Find the first 5 employees in the table 
SELECT *
FROM employee
LIMIT 5;


-- Retrieve the first and last name of the employees
SELECT first_name, last_name
FROM employee;


-- Rename the column title : first name = forename and last name = surname 
SELECT first_name AS forename, last_name AS surname
FROM employee;


-- Find all the different genders of the employees (basically gives out the distinct values in the given column)
SELECT DISTINCT sex
FROM employee;
