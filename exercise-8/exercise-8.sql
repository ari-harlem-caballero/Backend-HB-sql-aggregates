-- rank of film category by times rented
-- include the name, count, and rank
SELECT
  category.name,
  COUNT(*),
  RANK() OVER (ORDER BY COUNT(rental.rental_id) DESC)
FROM
  rental
LEFT JOIN
  inventory
ON
  inventory.inventory_id = rental.inventory_id
LEFT JOIN
  film
ON
  film.film_id = inventory.film_id
LEFT JOIN
  film_category
ON
  film_category.film_id = film.film_id
LEFT JOIN
  category
ON
  category.category_id = film_category.category_id
GROUP BY
  category.name;