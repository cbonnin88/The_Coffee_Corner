WITH customer_spend AS (
  SELECT
    c.country,
    c.customer_reference_number,
    c.first_name,
    SUM(o.total_sale) AS total_spend
  FROM `Coffee_Shop.orders` AS o
  JOIN `Coffee_Shop.customers` AS c
    ON o.customer_reference_number = c.customer_reference_number
  GROUP BY
    1,2,3
)
SELECT * FROM (
  SELECT
    *,
    RANK() OVER(PARTITION BY country ORDER BY total_spend DESC) AS rank_in_country
  FROM customer_spend
)
WHERE rank_in_country <= 3;