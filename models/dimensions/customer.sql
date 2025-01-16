-- models/dimensions/dim_product.sql
SELECT DISTINCT
    sku AS product_id,
    style,
    category,
    size
FROM {{ ref('stg_sales') }}
