-- TOPIC: Triggers

-- CONCEPTS:
-- CREATE TRIGGER
-- BEFORE INSERT
-- FOR EACH ROW
-- Automated Database Actions

-- PROJECT:
-- Company Database Trigger Practice

-- A trigger is automated SQL code that runs
-- when a specific database event occurs.

-- Common trigger events:
-- INSERT
-- UPDATE
-- DELETE


-- Table used to store trigger messages
 CREATE TABLE trigger_test (
    message VARCHAR(100)
);

-- Create trigger
-- Runs before a new employee record is inserted
-- Executes once for every inserted row

DELIMITER $$

CREATE TRIGGER my_trigger
BEFORE INSERT
ON employee
FOR EACH ROW
BEGIN
    INSERT INTO trigger_test
    VALUES ('added new employee');
END $$

DELIMITER ;

-- Adding new employee
INSERT INTO employee VALUES (110, 'Kevin', 'Eleven', '1961-05-11', 'M', 120000, 100, 1);

-- Verify trigger execution
-- A message should be added automatically
SELECT *
FROM trigger_test;


-- NOTES:
-- Triggers execute automatically
-- BEFORE runs prior to an action
-- AFTER runs after an action
-- FOR EACH ROW executes once per affected row
