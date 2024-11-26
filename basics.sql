-- 1. SELECT - Retrieving Data
-- Select all columns from a table
SELECT * FROM employees;

-- Select specific columns
SELECT first_name, last_name FROM employees;

-- 2. WHERE - Filtering Data
-- Select rows with a specific condition
SELECT * FROM employees WHERE age > 30;

-- Select rows with multiple conditions using AND/OR
SELECT * FROM employees WHERE department = 'Sales' AND salary > 50000;

-- 3. INSERT - Inserting Data
-- Insert a new record into the table
INSERT INTO employees (first_name, last_name, age, department, salary)
VALUES ('John', 'Doe', 28, 'HR', 45000);

-- 4. UPDATE - Modifying Data
-- Update data in a table
UPDATE employees
SET salary = 55000
WHERE first_name = 'John' AND last_name = 'Doe';

-- 5. DELETE - Removing Data
-- Delete a specific record
DELETE FROM employees WHERE first_name = 'John' AND last_name = 'Doe';

-- 6. ORDER BY - Sorting Data
-- Select data and sort it by a column
SELECT * FROM employees ORDER BY salary DESC;

-- Sort by multiple columns
SELECT * FROM employees ORDER BY department ASC, age DESC;

-- 7. LIMIT - Limiting the Number of Results
-- Get the first 5 rows
SELECT * FROM employees LIMIT 5;

-- 8. GROUP BY - Grouping Data
-- Grouping rows by a column and calculating aggregate functions
SELECT department, COUNT(*) AS num_employees
FROM employees
GROUP BY department;

-- 9. HAVING - Filtering Grouped Data
-- Using HAVING to filter groups
SELECT department, AVG(salary) AS avg_salary
FROM employees
GROUP BY department
HAVING AVG(salary) > 50000;

-- 10. JOIN - Combining Data from Multiple Tables
-- Inner Join example (combining data from two tables)
SELECT employees.first_name, employees.last_name, departments.department_name
FROM employees
INNER JOIN departments
ON employees.department_id = departments.department_id;

-- Left Join example (includes all rows from the left table)
SELECT employees.first_name, employees.last_name, departments.department_name
FROM employees
LEFT JOIN departments
ON employees.department_id = departments.department_id;

-- 11. DISTINCT - Removing Duplicates
-- Select unique values
SELECT DISTINCT department FROM employees;

-- 12. CREATE TABLE - Creating a Table
-- Create a new table
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    age INT,
    department VARCHAR(50),
    salary DECIMAL(10, 2)
);

-- 13. ALTER TABLE - Modifying a Table
-- Add a new column
ALTER TABLE employees ADD email VARCHAR(100);

-- Modify an existing column
ALTER TABLE employees MODIFY COLUMN salary DECIMAL(12, 2);

-- 14. DROP TABLE - Deleting a Table
-- Drop a table (delete the table and all its data)
DROP TABLE employees;
