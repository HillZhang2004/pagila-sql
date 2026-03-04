SELECT last_name, COUNT(*) AS last_name_count
FROM actor
GROUP BY last_name
HAVING COUNT(*) >= 2
ORDER BY last_name_count DESC;
