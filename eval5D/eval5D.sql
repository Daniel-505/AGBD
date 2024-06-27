1_ SELECT j.job_title,
COUNT(e.employee_id) AS cantidad_de_empleados,
SUM(e.salary)
FROM jobs j
JOIN employees e ON j.job_id = e.job_id
GROUP BY j.job_title
ORDER BY cantidad_de_empleados DESC;

2_ SELECT e.first_name, e.last_name, j.job_title, d.department_name
FROM employees e
JOIN jobs j ON e.job_id = j.job_id
JOIN departments d ON e.department_id = d.department_id;

3_ SELECT employee_id, first_name, last_name, email, department_id, phone_number
FROM employees 
WHERE phone_number IS NULL;

UPDATE employees
SET phone_number = '303.404.505'
WHERE phone_number IS NULL;

4_ UPDATE employees
SET salary = salary * 1.35 
WHERE salary < 8000
AND job_id IN (SELECT job_id FROM jobs WHERE job_title = 'Programmer' OR job_title = 'Accountant');

5_ SELECT location_id
FROM locations
WHERE street_address = '2004 Charade Rd' AND city = 'Seattle';

INSERT INTO departments (department_name, location_id)
VALUES ('consultants', (SELECT location_id FROM locations WHERE street_address = '2004 Charade Rd' AND city = 'Seattle'));

INSERT INTO jobs (job_title, min_salary, max_salary)
VALUES ('consultant',5000, 8000);

INSERT INTO employees (first_name, last_name, email, phone_number, hire_date, salary, manager_id, job_id, department_id)
VALUES 
  ('Raul', 'Lopez', 'rlopez@gmail.com', '1.231.231.122', '2024-06-27', 5000, 100, (SELECT job_id FROM jobs WHERE job_title = 'consultant'), (SELECT department_id FROM departments WHERE department_name = 'consultants')),
  ('Andres', 'Gonzalez', 'agonzalez@gmail.com', '1.231.231.122', '2024-06-27', 5000, 100, (SELECT job_id FROM jobs WHERE job_title = 'consultant'), (SELECT department_id FROM departments WHERE department_name = 'consultants')),
  ('Laura', 'Fernandez', 'lfernandez@gmail.com', '1.231.231.122', '2024-06-27', 5000, 100, (SELECT job_id FROM jobs WHERE job_title = 'consultant'), (SELECT department_id FROM departments WHERE department_name = 'consultants'));

6_  DELETE FROM employees
WHERE department_id IN (SELECT department_id FROM departments WHERE location_id IN (SELECT location_id FROM locations
WHERE country_id = (SELECT country_id FROM countries WHERE country_name = 'Canada')));

DELETE FROM departments
WHERE location_id IN (SELECT location_id FROM locations WHERE country_id = (SELECT country_id FROM countries
WHERE country_name = 'Canada'));

DELETE FROM locations
WHERE country_id = (SELECT country_id FROM countries
WHERE country_name = 'Canada');

DELETE FROM countries
WHERE country_name = 'Canada';

7_  DELETE FROM jobs
WHERE job_id IN (SELECT job_id FROM jobs WHERE NOT EXISTS (SELECT 1 FROM employees
WHERE employees.job_id = jobs.job_id));

