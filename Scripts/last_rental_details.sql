SELECT 
    f.title AS film_name,
    c.first_name AS customer_first_name,
    c.last_name AS customer_last_name,
    staff.first_name AS employee_first_name,
    staff.last_name AS employee_last_name,
    a.address AS store_address
FROM rental r
JOIN inventory i ON r.inventory_id = i.inventory_id
JOIN film f ON i.film_id = f.film_id
JOIN customer c ON r.customer_id = c.customer_id
JOIN staff ON r.staff_id = staff.staff_id
JOIN store s ON staff.store_id = s.store_id
JOIN address a ON s.address_id = a.address_id
WHERE r.rental_date = (
    SELECT MAX(rental_date) 
    FROM rental
);
