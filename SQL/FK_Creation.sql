USE Olist

									-- Create ALL FK's with ALTER TABLE --

-- CUSTOMERS TO ORDERS 

ALTER TABLE olist_orders_dataset
ADD CONSTRAINT FK_Orders_Customers
FOREIGN KEY (customer_id)
REFERENCES olist_customers_dataset(customer_id)

-- ORDERS TO ORDER ITEMS 

ALTER TABLE olist_order_items_dataset
ADD CONSTRAINT FK_OrderItems_Orders
FOREIGN KEY (order_id)
REFERENCES olist_orders_dataset(order_id)

-- ORDERS TO PAYMENTES

ALTER TABLE olist_order_payments_dataset
ADD CONSTRAINT FK_Payments_Orders
FOREIGN KEY (order_id)
REFERENCES olist_orders_dataset(order_id)

-- ORDERS TO REVIEWS

ALTER TABLE olist_order_reviews_dataset
ADD CONSTRAINT FK_Reviews_Orders
FOREIGN KEY (order_id)
REFERENCES olist_orders_dataset(order_id)

-- PRODUCTS TO ORDER ITEMS 

ALTER TABLE olist_order_items_dataset
ADD CONSTRAINT FK_OrderItems_Products
FOREIGN KEY (product_id)
REFERENCES olist_products_dataset(product_id)

-- SELLERS TO ORDER ITEMS

ALTER TABLE olist_order_items_dataset
ADD CONSTRAINT FK_OrderItems_Sellers
FOREIGN KEY (seller_id)
REFERENCES olist_sellers_dataset(seller_id)

-- PRODUCTS TO PRODUCT CATEGORY TRANSLATION **

ALTER TABLE olist_products_dataset
ADD CONSTRAINT FK_Products_Category
FOREIGN KEY (product_category_name)
REFERENCES product_category_name_translation(product_category_name)
