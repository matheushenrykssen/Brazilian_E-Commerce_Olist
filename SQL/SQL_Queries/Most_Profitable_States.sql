USE Olist

								-- Verify the most profitable Sellers by State --

SELECT
	FORMAT(SUM(I.price), 'C2') AS Revenue_by_State,
	S.seller_state
FROM olist_sellers_dataset S
	INNER JOIN olist_order_items_dataset I
	ON I.seller_id = S.seller_id
GROUP BY S.seller_state
ORDER BY SUM(I.price) DESC

								-- Verify the most profitable Sellers by City --

SELECT TOP 50
	FORMAT(SUM(I.price), 'C2') AS Revenue_by_City,
	S.seller_city
FROM olist_sellers_dataset S
	INNER JOIN olist_order_items_dataset I
	ON I.seller_id = S.seller_id
GROUP BY S.seller_city
ORDER BY SUM(I.price) DESC


