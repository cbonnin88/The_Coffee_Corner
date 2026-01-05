SELECT
  p.product_id,
  SUM(o.quantity * p.profit) AS total_profit
FROM `sql-practice-460514.Coffee_Shop.orders` AS o
JOIN `sql-practice-460514.Coffee_Shop.products` AS p
  ON o.product_reference_number = p.product_reference_number
GROUP BY
  1
ORDER BY
  2 DESC
LIMIT 5;
