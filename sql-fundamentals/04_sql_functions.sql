-- TOPIC: SQL Functions and Aggregations

-- CONCEPTS:
-- COUNT()
-- AVG()
-- SUM()
-- GROUP BY
-- Filtering with WHERE
-- Aggregated Analysis

-- PROJECT:
-- Company Database Query Practice


-- Find the number of employees (this will give the number of items which has values) 
SELECT COUNT(emp_id)
FROM employee;


-- Count female employees born after 1970
-- Using 1971-01-01 to include only employees born after 1970
SELECT COUNT(emp_id)
FROM employee
WHERE sex  = 'F' AND birth_date > 1971-01-01 ;

SELECT *
FROM employee
WHERE sex  = 'F' AND birth_date > 1971-01-01 ;


-- Calculate average employee salary
SELECT AVG(salary)
FROM employee;


-- Calculate average salary for male employees
SELECT AVG(salary)
FROM employee
WHERE sex = 'M';


-- SUM --
SELECT SUM(salary)
FROM employee;


-- Count employees grouped by gender
SELECT COUNT(sex), sex
FROM employee
GROUP BY sex;


-- Calculate total sales per employee
SELECT SUM(total_sales), emp_id
FROM works_with
GROUP BY emp_id;


-- Calculate total amount spent by each client
SELECT SUM(total_sales), client_id
FROM works_with
GROUP BY client_id;