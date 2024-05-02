SELECT first_name,last_name,salary FROM employees
WHERE salary < 6000

SELECT E.first_name, E.last_name, D.department_name, L.city, L.state_province FROM employees E 
JOIN departments D ON E.department_id = D.department_id  
JOIN locations L ON D.location_id = L.location_id;