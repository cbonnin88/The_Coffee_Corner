SELECT
  customer_reference_number,
  first_name,
  last_name,
  loyalty_card,
  country
FROM `sql-practice-460514.Coffee_Shop.customers`
WHERE
  country = 'United Kingdom' AND loyalty_card = true;