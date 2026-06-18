USE Olist

										-- Primary Key (PK) validation --

										    -- Testing one by one --

-----------------------------------------
-- Verify null values
SELECT 
	COUNT(*) AS 'Null_Values'
FROM olist_orders_dataset
WHERE 
	order_id IS NULL

-- Verify duplicate values

SELECT 
	D.order_id,
	COUNT(*) AS 'Duplicate_Values'
FROM olist_orders_dataset D
GROUP BY D.order_id
HAVING COUNT(*) > 1


-----------------------------------------

SELECT 
	COUNT(*) AS 'Null_Values'
FROM olist_customers_dataset
WHERE 
	customer_id IS NULL

SELECT 
	customer_id,
	COUNT(*) AS 'Duplicate_Values'
FROM olist_customers_dataset
GROUP BY customer_id
HAVING COUNT(*) > 1


-----------------------------------------

SELECT 
	COUNT(*) AS 'Null_Values'
FROM olist_products_dataset
WHERE 
	product_id IS NULL

SELECT 
	product_id,
	COUNT(*) AS 'Duplicate_Values'
FROM olist_products_dataset
GROUP BY product_id
HAVING COUNT(*) > 1


-----------------------------------------

SELECT 
	COUNT(*) AS 'Null_Values'
FROM olist_sellers_dataset
WHERE 
	seller_id IS NULL

SELECT 
	seller_id,
	COUNT(*) AS 'Duplicate_Values'
FROM olist_sellers_dataset
GROUP BY seller_id
HAVING COUNT(*) > 1


-----------------------------------------

SELECT 
	COUNT(*) AS 'Null_Values'
FROM olist_order_reviews_dataset
WHERE 
	review_id IS NULL

SELECT 
	review_id,
	COUNT(*) AS 'Duplicate_Values'
FROM olist_order_reviews_dataset
GROUP BY review_id
HAVING COUNT(*) > 1

-- In REVIEWS are duplicate values



-----------------------------------------

SELECT 
	COUNT(*) AS 'Null_Values'
FROM olist_order_items_dataset
WHERE 
	order_id IS NULL
	OR order_item_id IS NULL

SELECT 
	order_id,
	order_item_id,
	COUNT(*) AS 'Duplicate_Values'
FROM olist_order_items_dataset
GROUP BY order_id, order_item_id
HAVING COUNT(*) > 1



-----------------------------------------

SELECT 
	COUNT(*) AS 'Null_Values'
FROM olist_order_payments_dataset
WHERE 
	order_id IS NULL
	OR payment_sequential IS NULL

SELECT 
	order_id,
	payment_sequential,
	COUNT(*) AS 'Duplicate_Values'
FROM olist_order_payments_dataset
GROUP BY order_id, payment_sequential
HAVING COUNT(*) > 1

										-- Testing duplicate REVIEW --

SELECT
    review_id,
    COUNT(*) AS QTD
FROM olist_order_reviews_dataset
GROUP BY review_id
HAVING COUNT(*) > 1
ORDER BY QTD DESC

-- First review_id DESC

SELECT
	*
FROM olist_order_reviews_dataset
WHERE
	review_id = '44e9f871226d8a130de3fc39dfbdf0c5'


-- Testing order_id for PK

SELECT
    order_id,
    COUNT(*) AS 'Duplicate_Values'
FROM olist_order_reviews_dataset
GROUP BY order_id
HAVING COUNT(*) > 1

SELECT
    review_id,
    order_id,
    COUNT(*) AS 'Duplicate_Values'
FROM olist_order_reviews_dataset
GROUP BY review_id, order_id
HAVING COUNT(*) > 1;