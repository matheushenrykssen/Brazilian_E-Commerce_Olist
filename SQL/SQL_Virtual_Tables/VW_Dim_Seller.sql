                                
                                -- Create virtual tabels for optimize Power BI --
                         
-- Dim_Seller

CREATE VIEW VW_Dim_Seller AS
SELECT
    seller_id,
    seller_city,
    seller_state
FROM olist_sellers_dataset