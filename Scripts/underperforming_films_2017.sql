SELECT f.film_id, f.title, SUM(p.amount) AS total_income
FROM film f
JOIN inventory i ON f.film_id = i.film_id
JOIN rental r ON i.inventory_id = r.inventory_id
JOIN payment p ON r.rental_id = p.rental_id
WHERE EXTRACT(YEAR FROM r.rental_date) = 2017
GROUP BY f.film_id, f.title
HAVING SUM(p.amount) < 30
ORDER BY total_income DESC
LIMIT 3;


select count(*)
from film 
where length > 100
and rating in ('G', 'PG', 'PG-13');