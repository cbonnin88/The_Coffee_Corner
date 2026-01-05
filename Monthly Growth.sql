WITH monthly_revenue AS (
  SELECT
    DATE_TRUNC(DATE(order_date), MONTH) as sales_month,
    SUM(total_sale) as revenue
  FROM `Coffee_Shop.orders`
  GROUP BY 1
)
SELECT
  sales_month,
  ROUND(revenue,2),
  ROUND(LAG(revenue) OVER (ORDER BY sales_month),2) as previous_month_revenue,
  ROUND((revenue - LAG(revenue) OVER (ORDER BY sales_month)) / LAG(revenue) OVER (ORDER BY sales_month) * 100, 2) as growth_pct
FROM monthly_revenue
ORDER BY sales_month;