SELECT MAX(rental_count) AS most_rented_count
FROM (
    SELECT inventory.film_id, COUNT(*) AS rental_count
    FROM rental
    JOIN inventory ON rental.inventory_id = inventory.inventory_id
    GROUP BY inventory.film_id
) AS film_rentals;