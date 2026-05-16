-- TOPIC: UNION

-- CONCEPTS:
-- UNION
-- Combining Results from Multiple Tables
-- Column Aliasing (AS)
-- Column Compatibility

-- PROJECT:
-- Company Database Query Practice

-- UNION combines the results of multiple SELECT statements into a single result set.

-- Rules for UNION:
-- Each SELECT statement must return the same number of columns
-- Corresponding columns should have compatible data types


-- Combine employee, branch, and client names into a single result set
-- Output column name defaults to the first SELECT column
SELECT first_name
FROM employee
UNION
SELECT branch_name
FROM branch
UNION
SELECT client_name
FROM client;

-- changed the title -- 
SELECT first_name AS Company_names
FROM employee
UNION
SELECT branch_name
FROM branch
UNION
SELECT client_name
FROM client;


-- Find the list of all client and branch suppliers name along with the brach ID 
-- Using table prefixes to avoid ambiguity when column names exist in multiple tables
SELECT client_name, branch_id
FROM client
UNION 
SELECT supplier_name, branch_id 
FROM branch_supplier;

-- both the tables have a branch id, so we can prefix the column name
-- only to make it more readable 
SELECT client_name, client.branch_id
FROM client
UNION 
SELECT supplier_name, branch_supplier.branch_id 
FROM branch_supplier;


-- Combine salary expenses and sales values into a single result set
-- The comapny earns money by the sales 
-- The compnay spends money by giving salary to the employees
SELECT salary
FROM employee
UNION
SELECT total_sales
FROM works_with;