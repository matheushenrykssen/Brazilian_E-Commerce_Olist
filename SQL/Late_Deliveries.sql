USE Olist

									        -- Verify Late Deliveries --

SELECT
	order_delivered_customer_date,
	order_estimated_delivery_date	
FROM olist_orders_dataset
WHERE 
	order_estimated_delivery_date < order_delivered_customer_date


                                            -- Days delivery delay --

SELECT
    order_id,
    order_delivered_customer_date,
    order_estimated_delivery_date,
    DATEDIFF(DAY,
        order_estimated_delivery_date,
        order_delivered_customer_date) AS Days_Late   
FROM olist_orders_dataset
WHERE 
    order_delivered_customer_date > order_estimated_delivery_date

                                    -- Average numbers of days of delay -- 

SELECT
    AVG(DATEDIFF(DAY,
            order_estimated_delivery_date,
            order_delivered_customer_date)) AS Avg_Days_Late
FROM olist_orders_dataset
WHERE order_delivered_customer_date > order_estimated_delivery_date
