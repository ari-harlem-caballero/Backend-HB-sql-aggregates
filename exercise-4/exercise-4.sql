-- the average film length by category
-- include the category name and avg length
SELECT
  category.name,
  AVG(length) AS avg
FROM
  film_category
INNER JOIN
  film
ON
  film.film_id = film_category.film_id
INNER JOIN
  category
ON
  category.category_id = film_category.category_id
GROUP BY
  category.name
-- ORDER BY
--   avg DESC;