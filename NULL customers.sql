SELECT
  c.customer_reference_number,
  c.email
FROM `Coffee_Shop.customers` AS c
LEFT JOIN `Coffee_Shop.orders` AS o
  ON c.customer_reference_number = o.customer_reference_number
WHERE
  o.order_id IS NULL;