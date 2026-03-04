SELECT f.film_id, f.title, l.language_id, l.name
FROM film AS f
JOIN language AS l ON f.language_id = l.language_id
WHERE l.name = 'English'
  AND (f.title LIKE 'K%' OR f.title LIKE 'Q%')
ORDER BY f.title;
