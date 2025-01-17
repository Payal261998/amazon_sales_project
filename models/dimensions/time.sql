-- models/dimensions/dim_time.sql
SELECT DISTINCT
    TO_DATE(date, 'MM-DD-YY') AS date_id,
    TO_DATE(date, 'MM-DD-YY') AS order_date,
    EXTRACT(YEAR FROM TO_DATE(date, 'MM-DD-YY')) AS year,
    EXTRACT(MONTH FROM TO_DATE(date, 'MM-DD-YY')) AS month,
    CASE
        WHEN EXTRACT(MONTH FROM TO_DATE(date, 'MM-DD-YY')) IN (12, 1, 2) THEN 'Winter'
        WHEN EXTRACT(MONTH FROM TO_DATE(date, 'MM-DD-YY')) IN (3, 4, 5) THEN 'Spring'
        WHEN EXTRACT(MONTH FROM TO_DATE(date, 'MM-DD-YY')) IN (6, 7, 8) THEN 'Summer'
        ELSE 'Fall'
    END AS season
FROM {{ ref('stg_sales') }}
