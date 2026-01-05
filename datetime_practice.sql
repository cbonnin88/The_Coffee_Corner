-- DATETIME
SELECT
  job_title AS title,
  job_country AS country,
  DATETIME(job_posted_date, 'EST') AS date_time
FROM `sql-practice-460514`.`data_jobs`.`job_postings_fact`
WHERE job_title LIKE '%Product%Analyst%'
ORDER BY 3 DESC;

-- EXTRACT
SELECT
  job_title AS title,
  job_country AS country,
  DATETIME(job_posted_date,'EST') AS date_time,
  EXTRACT(MONTH FROM job_posted_date) AS month,
  EXTRACT(YEAR FROM job_posted_date) AS date_year
FROM
  `data_jobs.job_postings_fact`
WHERE
  job_title LIKE '%Product%Analyst%'
ORDER BY
  3 DESC
LIMIT 10;

-- Trending Product Analyst Jobs
SELECT
  COUNT(job_id) AS job_posted_count,
  EXTRACT(MONTH FROM job_posted_date) AS date_month
FROM
  `data_jobs.job_postings_fact`
WHERE
  job_title LIKE '%Product%Analyst%'
GROUP BY
  2
ORDER BY
  1 DESC;