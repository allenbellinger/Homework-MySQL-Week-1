USE employees;

SELECT *
FROM employees
WHERE birth_date < '1965-01-01';

SELECT *
FROM employees
WHERE gender = 'F' AND hire_date > '1990-12-31';

SELECT 
	first_name, 
    last_name
FROM employees
WHERE last_name LIKE 'F%'
LIMIT 50;

INSERT INTO employees
VALUES (100, '1987-05-02', 'George', 'Smith', 'M', '2013-01-10'),
	   (101, '1992-10-25', 'Amy', 'Johnson', 'F', '2014-05-01'),
	   (102, '1963-01-05', 'Margaret', 'Bremstetter', 'F', '1986-07-24');

UPDATE employees
SET first_name = 'Bob'
WHERE emp_no = 10023;

UPDATE employees
SET hire_date = '2002-01-01'
WHERE first_name LIKE 'P%' OR last_name LIKE 'P%';

DELETE FROM employees
WHERE emp_no < 10000;

DELETE FROM employees
WHERE emp_no IN (10048, 10099, 10234, 20089);