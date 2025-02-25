SELECT 
    f.rating,
    COUNT(DISTINCT f.film_id) AS number_of_films,
    SUM(p.amount) AS total_revenue
FROM film f
LEFT JOIN inventory i ON f.film_id = i.film_id
LEFT JOIN rental r ON i.inventory_id = r.inventory_id
LEFT JOIN payment p ON r.rental_id = p.rental_id
GROUP BY f.rating
HAVING SUM(p.amount) < 55
ORDER BY total_revenue ASC;