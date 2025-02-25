SELECT COUNT(*) AS total_films_rented
FROM rental
WHERE rental_date >= '2017-01-01' AND rental_date < '2018-01-01';