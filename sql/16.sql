SELECT f.title, SUM(p.amount) AS profit
FROM film AS f
JOIN inventory AS i ON f.film_id = i.film_id
JOIN rental AS r ON i.inventory_id = r.inventory_id
JOIN payment AS p ON r.rental_id = p.rental_id
GROUP BY f.title
ORDER BY profit DESC;
