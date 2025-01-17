-- models/facts/fact_sales.sql
SELECT
    order_id,
    sku AS product_id,
    ship_city || '-' || ship_postal_code AS customer_id,
    TO_DATE(date, 'MM-DD-YY') AS date_id,
    qty,
    amount
FROM {{ ref('stg_sales') }}
