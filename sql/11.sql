SELECT f.film_id, f.title, COUNT(i.inventory_id)
FROM film AS f
JOIN inventory AS i ON f.film_id = i.film_id
WHERE f.title LIKE 'H%'
GROUP BY f.film_id, f.title
ORDER BY f.title DESC;
