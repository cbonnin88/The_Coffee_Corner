WITH daily_sales AS (
  SELECT
    order_date,
    SUM(total_sale) AS daily_revenue
  FROM `Coffee_Shop.orders`
  WHERE year = 2021
  GROUP BY order_date
)
SELECT
  order_date,
  daily_revenue,
  SUM(daily_sales.daily_revenue) OVER(ORDER BY order_date) AS cumulative_revenue
FROM daily_sales
ORDER BY
  order_date;