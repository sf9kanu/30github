SELECT COUNT(*) AS number_of_films
FROM film f 
WHERE length = 100
AND rating IN ('G', 'R');