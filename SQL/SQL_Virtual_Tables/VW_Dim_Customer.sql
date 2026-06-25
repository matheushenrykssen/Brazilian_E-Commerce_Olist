
								-- Create Virtual tabels for optimize Power BI --

-- Dim_Customer

CREATE VIEW VW_Dim_Customer AS
SELECT
	customer_id,
	customer_city,
	customer_state
FROM olist_customers_dataset


