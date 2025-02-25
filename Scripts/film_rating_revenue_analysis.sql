WITH film_revenue AS (
    SELECT 
        f.film_id,
        f.title,
        f.rating,
        COALESCE(SUM(p.amount), 0) AS total_revenue
    FROM film f
    LEFT JOIN inventory i ON f.film_id = i.film_id
    LEFT JOIN rental r ON i.inventory_id = r.inventory_id
    LEFT JOIN payment p ON r.rental_id = p.rental_id
    GROUP BY f.film_id, f.title, f.rating
    HAVING COALESCE(SUM(p.amount), 0) < 55
)
SELECT DISTINCT 
    rating,
    COUNT(film_id) AS number_of_films,
    ROUND(AVG(total_revenue), 2) AS avg_revenue
FROM film_revenue
GROUP BY rating
ORDER BY rating;