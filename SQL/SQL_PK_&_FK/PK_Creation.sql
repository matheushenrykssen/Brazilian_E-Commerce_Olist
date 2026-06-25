USE Olist

									-- Create ALL PK's with ALTER TABLE --

-- CUSTOMERS 
ALTER TABLE olist_customers_dataset
ADD CONSTRAINT PK_Customers
PRIMARY KEY(customer_id)

-- ORDERS 
ALTER TABLE olist_orders_dataset
ADD CONSTRAINT PK_Orders
PRIMARY KEY (order_id)

-- PRODUCTS 
ALTER TABLE olist_products_dataset
ADD CONSTRAINT PK_Products
PRIMARY KEY (product_id)

-- SELLERS 
ALTER TABLE olist_sellers_dataset
ADD CONSTRAINT PK_Sellers
PRIMARY KEY (seller_id)

-- ORDER ITEMS 
ALTER TABLE olist_order_items_dataset
ADD CONSTRAINT PK_Order_Items
PRIMARY KEY (order_id, order_item_id)

-- ORDER PAYMENTS 
ALTER TABLE olist_order_payments_dataset
ADD CONSTRAINT PK_Order_Payments
PRIMARY KEY (order_id, payment_sequential)

-- ORDER REVIEWS
ALTER TABLE olist_order_reviews_dataset
ADD CONSTRAINT PK_Order_Reviews
PRIMARY KEY (review_id, order_id)

-- TRANSLATION
ALTER TABLE product_category_name_translation
ADD CONSTRAINT PK_Product_Category
PRIMARY KEY (product_category_name)