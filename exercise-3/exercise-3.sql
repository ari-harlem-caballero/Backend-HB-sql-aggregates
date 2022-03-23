-- the average rental amount by country
-- include the country name and avg amount
-- use AVG to average the amount
SELECT
  country,
  AVG(amount) as avg
FROM
  address
INNER JOIN
  city
ON
  city.city_id = address.city_id
INNER JOIN
  country
ON
  country.country_id = city.country_id
INNER JOIN
  customer
ON
  customer.address_id = address.address_id
INNER JOIN
  payment
ON
  payment.customer_id = customer.customer_id
GROUP BY
  country
ORDER BY
  avg DESC
LIMIT
  10;