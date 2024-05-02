SELECT title FROM film
ORDER BY title ASC;

SELECT DISTINCT rating FROM film
ORDER by rating ASC

SELECT title,rating,rental_rate FROM film
WHERE rating LIKE "%PG-13" or rating LIKE "%PG"
ORDER by rental_rate DESC,title ASC

SELECT c1.city, c2.country FROM city c1
JOIN country c2 ON c1.country_id = c2.country_id;

SELECT c.country, COUNT(ci.city) AS cantidad_ciudades FROM country c
JOIN city ci ON c.country_id = ci.country_id
GROUP BY c.country ORDER BY cantidad_ciudades DESC;

SELECT c.country, COUNT(ci.city) AS CantidAdDeciUdadeS FROM country c
JOIN city ci ON c.country_id = ci.country_id
GROUP BY c.country
HAVING COUNT(ci.city) > 2
ORDER BY CantidAdDeciUdadeS DESC;

SELECT rental_date AS mas_nueva, rental_date AS mas_vieja FROM rental
ORDER by mas_nueva DESC, mas_vieja DESC;
