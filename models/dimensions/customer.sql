-- models/dimensions/dim_customer.sql
SELECT DISTINCT
    ship_city || '-' || ship_postal_code AS customer_id,
    ship_city,
    ship_state,
    ship_country,
    ship_postal_code
FROM {{ ref('stg_sales') }}

