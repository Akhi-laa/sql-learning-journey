-- TOPIC: JOINS

-- CONCEPTS:
-- INNER JOIN
-- LEFT JOIN
-- RIGHT JOIN
-- Table Relationships
-- Joining Data Using Foreign Keys

-- PROJECT:
-- Company Database Query Practice

-- JOIN combines rows from multiple tables using a related column.

-- INNER JOIN
-- Retrieve branch names along with their managers
-- Matching employee.emp_id with branch.mgr_id
SELECT employee.emp_id, employee.first_name, branch.branch_name -- since we are combining two tables, we can prefix another table -- 
FROM employee
JOIN branch -- inner JOIN
ON employee.emp_id = branch.mgr_id;  -- Join condition determines how rows are matched between tables

-- Retrieve employees along with their branch names
SELECT employee.emp_id, employee.first_name, branch.branch_name 
FROM employee
JOIN branch
ON employee.branch_id = branch.branch_id;


-- LEFT JOIN
-- Returns all rows from the LEFT table
-- Matching rows from the RIGHT table are included when available
-- Non-matching rows from the RIGHT table return NULL
SELECT employee.emp_id, employee.first_name, branch.branch_name
FROM employee
LEFT JOIN branch
ON employee.emp_id = branch.mgr_id;  -- Join condition determines how rows are matched between tables


-- RIGHT JOIN
-- Returns all rows from the RIGHT table
-- Matching rows from the LEFT table are included when available
-- Non-matching rows from the LEFT table return NULL
SELECT employee.emp_id, employee.first_name, branch.branch_name
FROM employee
RIGHT JOIN branch
ON employee.emp_id = branch.mgr_id;  -- Join condition determines how rows are matched between tables


-- FULL OUTER JOIN
-- Combines results of LEFT JOIN and RIGHT JOIN
-- Includes matching and non-matching rows from both tables
-- Not directly supported in MySQL