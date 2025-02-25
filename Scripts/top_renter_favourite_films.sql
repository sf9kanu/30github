SELECT 
    f.title,
    COUNT(*) AS rental_count
FROM rental r
JOIN inventory i ON r.inventory_id = i.inventory_id
JOIN film f ON i.film_id = f.film_id
WHERE r.customer_id = (
    SELECT customer_id 
    FROM rental 
    GROUP BY customer_id 
    ORDER BY COUNT(*) DESC 
    LIMIT 1
)
GROUP BY f.film_id, f.title
ORDER BY rental_count DESC
LIMIT 4;