select f.title , count(fa.actor_id) as actor_count
from film f 
join film_actor fa on f.film_id = fa.film_id 
group by f.film_id 
order by actor_count desc
limit 1;

SELECT f.title
FROM film f
JOIN film_actor fa1 ON f.film_id = fa1.film_id
JOIN actor a1 ON fa1.actor_id = a1.actor_id
JOIN film_actor fa2 ON f.film_id = fa2.film_id
JOIN actor a2 ON fa2.actor_id = a2.actor_id
WHERE a1.first_name = 'Fred' AND a1.last_name = 'Costner'
  AND a2.first_name = 'Thora' AND a2.last_name = 'Temple';
