SELECT p.name, d.car_make, d.car_model, d.plate_number
FROM person p
JOIN drivers_license d ON p.license_id = d.id
WHERE d.gender = 'female' a
AND d.age < 40 
ORDER BY p.name ASC;
