								
								-- Create virtual tabels for optimize Power BI --

-- Dim_Product

CREATE VIEW VW_Fact_Sales AS
SELECT
    O.order_id,
    O.customer_id,
    I.product_id,
    I.seller_id,
    O.order_purchase_timestamp,
    O.order_delivered_customer_date,
    O.order_estimated_delivery_date,
    I.price,
    I.freight_value,
    CASE
        WHEN order_delivered_customer_date > order_estimated_delivery_date
            THEN 1
        ELSE 0
    END AS Delayed_Order,

    CASE
        WHEN order_delivered_customer_date > order_estimated_delivery_date
            THEN 'Late'
        ELSE 'On Time'
    END AS Delivery_Status
FROM olist_orders_dataset O
    INNER JOIN olist_order_items_dataset I
    ON O.order_id = I.order_id