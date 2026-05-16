-- TOPIC: Foreign Keys and ON DELETE Behavior

-- CONCEPTS:
-- Foreign Keys
-- ON DELETE SET NULL
-- ON DELETE CASCADE
-- Referential Integrity

-- PROJECT:
-- Company Database Relationship Management

-- ON DELETE defines what happens to related records
-- when a referenced row is deleted.


-- ON DELETE SET NULL
-- If the referenced employee is deleted,
-- the related foreign key value becomes NULL
-- instead of deleting the row.

-- Example:
-- If a branch manager is deleted from employee,
-- branch.mgr_id becomes NULL
CREATE TABLE branch(
branch_id INT PRIMARY KEY,
branch_name VARCHAR (40),
mgr_id INT,     -- foreign key
mgr_start_date DATE,
FOREIGN KEY(mgr_id) REFERENCES employee (emp_id) ON DELETE SET NULL
);

-- Demonstration query:
-- Deleting employee 102 to observe SET NULL behavior
DELETE FROM employee
WHERE emp_id = 102;


-- ON DELETE CASCADE
-- If the referenced row is deleted,
-- related rows depending on that foreign key
-- are automatically deleted as well.

-- Example:
-- If a branch is deleted,
-- related branch_supplier rows are also deleted
CREATE TABLE branch_supplier (
branch_id INT,
supplier_name VARCHAR (40),
supply_type VARCHAR (40),
PRIMARY KEY (branch_id, supplier_name),
FOREIGN KEY(branch_id) REFERENCES branch(branch_id) ON DELETE CASCADE
);

-- Demonstration query:
-- Deleting branch 102 to observe CASCADE behavior
DELETE FROM branch
WHERE branch_id = 2;