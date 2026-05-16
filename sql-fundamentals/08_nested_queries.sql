-- TOPIC: Nested Queries (Subqueries)

-- CONCEPTS:
-- Subqueries
-- WHERE IN
-- Nested SELECT Statements
-- Filtering Using Related Tables

-- PROJECT:
-- Company Database Query Practice

-- A nested query (subquery) is a query placed inside another query.
-- Used to retrieve data based on the result of another query.



-- Retrieve employees who made sales above 30000
-- Step 1:
-- Retrieve employee IDs from works_with
-- where total sales exceed 30000
 SELECT works_with.emp_id
	FROM works_with
	WHERE works_with.total_sales > 30000;

-- Step 2:
-- Use the employee IDs from the subquery
-- to retrieve employee names
 SELECT employee.first_name, employee.last_name
 FROM employee
 WHERE employee.emp_id IN (
		SELECT works_with.emp_id
		FROM works_with
		WHERE works_with.total_sales > 30000
    );


-- Retrieve clients handled by Michael Scott's branch
-- Assuming Michael Scott's employee ID is known
-- Step 1:
-- Retrieve the branch managed by Michael Scott
SELECT branch.branch_id
FROM branch
WHERE branch.mgr_id = 102;

-- Step 2:
-- Use the branch ID from the subquery
-- to retrieve associated clients
SELECT client.client_name
FROM client
WHERE client.branch_id = (
	SELECT branch.branch_id
	FROM branch
	WHERE branch.mgr_id = 102
    LIMIT 1);  -- -- LIMIT 1 ensures only one branch_id is returned


-- NOTES:
-- '=' expects a single value
-- Use '=' when the subquery returns one result

-- 'IN' can handle multiple values
-- Use 'IN' when the subquery may return multiple results
