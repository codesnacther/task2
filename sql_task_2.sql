CREATE TABLE employees (
    emp_id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    age INTEGER,
    department TEXT,
    salary INTEGER DEFAULT 30000
);

INSERT INTO employees (emp_id, name, age, department, salary)
VALUES (1, 'Alice', 28, 'HR', 40000);

INSERT INTO employees (emp_id, name)
VALUES (2, 'Bob');

INSERT INTO employees (emp_id, name, age, department, salary)
VALUES (3, 'Charlie', NULL, 'IT', NULL);

UPDATE employees
SET department = 'Finance', salary = 35000
WHERE emp_id = 2;

UPDATE employees
SET salary = salary + 5000
WHERE department = 'HR' OR department = 'Finance';

DELETE FROM employees
WHERE emp_id = 3;

BEGIN TRANSACTION;
DELETE FROM employees WHERE emp_id = 1;
ROLLBACK;
