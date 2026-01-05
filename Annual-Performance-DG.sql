SELECT
  EXTRACT(YEAR FROM order_date) AS year,
  COUNT(order_id) AS total_orders,
  ROUND(SUM(quantity * unit_price),2) AS total_revenue_eur
FROM
  `sql-practice-460514.Coffee_Shop.orders`
GROUP BY
  1;