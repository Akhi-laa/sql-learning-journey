-- -- TOPIC: Wildcards and LIKE Operator

-- CONCEPTS:
-- LIKE
-- Wildcards (% and _)
-- Pattern Matching

-- PROJECT:
-- Company Database Query Practice


-- Wildcards are used for pattern matching instead of exact values.
-- Useful when the exact value is unknown but part of the pattern is known.
-- The LIKE operator is used inside WHERE for text pattern matching.

-- Wildcard Characters:
-- %  = zero or more characters
-- _  = exactly one character


-- Example patterns

-- Starts with "J"
SELECT *
FROM employee
WHERE first_name LIKE 'J%';

-- Ends with "a"
SELECT *
FROM employee
WHERE first_name LIKE '%a';

-- Contains "ar"
SELECT *
FROM employee
WHERE first_name LIKE '%ar%';

-- Second character is "a"
SELECT *
FROM employee
WHERE first_name LIKE '_a%';


-- Find any clients who are LLC 
SELECT *
FROM client
WHERE client_name LIKE '%LLC';

-- Find branch suppliers related to labels
SELECT *
FROM branch_supplier
WHERE supplier_name LIKE '%Labels%';


-- Find employees born in October
-- Date format: YYYY-MM-DD
-- Using underscores (_) to ignore unknown year and day values
SELECT *
FROM employee
WHERE birth_date LIKE'____-10%';

-- Find any clients who are schools 
SELECT *
FROM client
WHERE client_name LIKE '%school%';
