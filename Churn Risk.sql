SELECT
  customer_reference_number,
  MAX(DATE(order_date)) AS last_order_date,
  DATE_DIFF(CURRENT_DATE(),MAX(DATE(order_date)),DAY) AS days_since_last_order
FROM `Coffee_Shop.orders`
GROUP BY
  1
ORDER BY
  2 DESC;