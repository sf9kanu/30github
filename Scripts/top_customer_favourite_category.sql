WITH top_customer AS (
    SELECT 
        customer_id
    FROM rental 
    GROUP BY customer_id
    ORDER BY COUNT(*) DESC
    LIMIT 1
)
SELECT 
    c.name AS category_name,
    COUNT(*) AS rental_count
FROM rental r
JOIN inventory i ON r.inventory_id = i.inventory_id
JOIN film f ON i.film_id = f.film_id
JOIN film_category fc ON f.film_id = fc.film_id
JOIN category c ON fc.category_id = c.category_id
JOIN top_customer tc ON r.customer_id = tc.customer_id
GROUP BY c.name
ORDER BY rental_count DESC
LIMIT 1;