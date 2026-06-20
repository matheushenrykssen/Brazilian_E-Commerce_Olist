USE Olist

								     -- Verify the most profitable products --

SELECT 
	ISNULL(P.product_category_name, 'Uncantegorized') AS Category,
	FORMAT(SUM(D.price),'C2') AS Revenue_by_Category,
	FORMAT(AVG(D.price), 'C2') AS Average_Item_Price
FROM olist_order_items_dataset D 
	INNER JOIN olist_products_dataset P 
	ON P.product_id = D.product_id
GROUP BY P.product_category_name
ORDER BY SUM(D.price) DESC 



