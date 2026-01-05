SELECT
  c.first_name,
  c.last_name,
  c.email,
  o.coffee_type,
  o.country
FROM `sql-practice-460514.Coffee_Shop.customers` AS c
JOIN `sql-practice-460514.Coffee_Shop.orders` AS o
  ON c.customer_reference_number = o.customer_reference_number
WHERE
  o.coffee_type = 'Ara'