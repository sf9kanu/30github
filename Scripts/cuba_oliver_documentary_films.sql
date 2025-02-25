SELECT 
    a.actor_id,
    a.first_name,
    a.last_name,
    c.name AS category_name,
    COUNT(DISTINCT f.film_id) AS number_of_films
FROM actor a
JOIN film_actor fa ON a.actor_id = fa.actor_id
JOIN film f ON fa.film_id = f.film_id
JOIN film_category fc ON f.film_id = fc.film_id
JOIN category c ON fc.category_id = c.category_id
WHERE a.first_name = 'Cuba' AND a.last_name = 'Oliver' AND c.name = 'Documentary'
GROUP BY a.actor_id, a.first_name, a.last_name, c.name;