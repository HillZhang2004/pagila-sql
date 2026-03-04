SELECT c.name, SUM(1)
FROM category AS c
JOIN film_category AS fc ON c.category_id = fc.category_id
JOIN film AS f ON fc.film_id = f.film_id
JOIN language AS l ON f.language_id = l.language_id
WHERE l.name = 'English'
GROUP BY c.name
ORDER BY c.name;
