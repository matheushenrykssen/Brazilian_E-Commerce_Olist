# Brazilian E-Commerce Sales & Logistics Analysis

## Project Overview
The objective of this project is to present a descriptive analysis of the public database, Brazilian E-Commerce, focusing on sales and logistics. 
The project highlights the states with the highest sales, the most popular product types by category, and also provides an evaluation of deliveries.
To this end, data processing and validation steps were carried out using SQL, including the creation of primary keys (PKs) and foreign keys (FKs), 
as well as integrity checks. Subsequently, the data was modeled and analyzed in Power BI through the creation of an interactive dashboard featuring key performance indicators (KPIs), 
time-series analysis, and business segmentations.
The project aims to transform raw data into meaningful insights to support decision-making and to demonstrate proficiency in data modeling, EXCEL, SQL, Power BI, and data analysis.

## Business Problem
Questions answered by the analysis:
-	Which states generate the highest revenue?
-	Which product categories contribute most to sales?
- Which months have the highest revenues?
- How much more was sold compared to the same month of the previous year?
-	How has revenue evolved over time?
-	How efficient is the delivery operation?
- What is the average shipping cost to the states?
-	Which states have the highest delivery delay rates?

## Dataset
###	Brazilian E-Commerce Public Dataset by Olist
According to the database's own summary:

*This dataset was generously provided by Olist, the largest department store in Brazilian marketplaces. 
Olist connects small businesses from all over Brazil to channels without hassle and with a single contract. 
Those merchants are able to sell their products through the Olist Store and ship them directly to the customers using Olist logistics partners. 
See more on our website: www.olist.com
After a customer purchases the product from Olist Store a seller gets notified to fulfill that order. 
Once the customer receives the product, or the estimated delivery date is due, the customer gets a satisfaction survey by email where he 
can give a note for the purchase experience and write down some comments.*

Available at: https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce

(Files can also be downloaded from the dataset folder here.)

-	Main data for analysis: Customers, Orders, Products, Sellers, Payments and Deliveries

-	Tables analyzed:
    - olist_customers_dataset.csv
    - olist_geolocation_dataset.csv
    - olist_order_items_dataset.csv
    - olist_order_payments_dataset.csv
    - olist_order_reviews_dataset.csv
    - olist_orders_dataset.csv
    - olist_products_dataset.csv
    - olist_sellers_dataset.csv

## SQL Data Preparation
### Data Validation
Performed validations such as:
-	Duplicate checks
-	Null value analysis
-	Date consistency validation
-	Revenue consistency validation
-	Referential integrity validation
- Database Modeling
- Creation and validation of:
    -	Primary Keys (PK)
    -	Foreign Keys (FK)
- Relationships established between transactional tables.
- SQL Views. Views created for performance and analytical consumption:
    -	VW_Fact_Sales
    -	VW_Dim_Customer
    -	VW_Dim_Product
    -	VW_Dim_Seller

## Dimensional Modeling
Star Schema designed for analytical reporting.
Fact Table:
-	Fact_Sales
    - order_id
    - customer_id
    - product_id
    - seller_id
    - order_purchase_timestamp
    - olist_order_items_dataset
    - order_delivered_customer_date
    - order_estimated_delivery_date
    - price
    - freight_value
    - Delivery_Status
    - Delayed_Order
    
Dimension Tables:
-	Dim_Customer
    - customer_city
    - customer_id
    - customer_state
    
-	Dim_Product
    - product_id
    - product_category_name
    - product_weight_g
    - product_length_cm
    - product_height_cm
    - product_width_cm
    
-	Dim_Seller
    - seller_id
    - seller_city
    - seller_state
    
-	Dim_Calendar
    - Date
    - Year
    - Month
    - Month Day
    - Quarter(Number)
    - Week of the Year
    - Week of the Month
    - Day
    - Name of the Day
    - Short_Month
    - YearMonth
    - YearMonth_desc
    
![Schema](Images/Power_BI/Star_Schema.JPG)


## Power Query Transformations
Main transformations performed:
- Data type corrections
- Product name standardization
- Date treatment
- Column renaming
- Creation of calculated columns

## Calendar Table
Custom calendar table created to support Time Intelligence calculations.
Features:
- Date
- Year
- Month
- Month Day
- Quarter(Number)
- Week of the Year
- Week of the Month
- Day
- Name of the Day
- Short_Month
- YearMonth
- YearMonth_desc

## DAX Measures
Revenue Metrics
-	Sales
-	Sales AVG
-	Sales Last YEar
-	Sales Last Year Delta
-	Sales Last Year Delta %
-	Sales Percent by Category
-	Sales Percent by State
-	Sales Year to Date
-	Sales Year to Date Last Year

Order Metrics
-	Order Quantity
-	Freight Value Average

Logistics Metrics
-	Deliveries
-	Deliveries Late
-	Deliveries Late %
-	Deliveries On Time
-	Deliveries On Time %

## Dashboards
### Sales Overview:

![Sales_Overview](Images/Dashboard/Sales_Overview.JPG)

Main KPIs:
-	Sales
-	Orders
-	Average Ticket
-	Sales by State
-	Sales by Category

### State Detail (Drillthrough):

![Sales_Overview](Images/Dashboard/Drillthrough.JPG)

Main KPIs:
-	Sales
-	Orders
-	Top Categories
-	Top Cities
-	Revenue Comparison

### Deliveries Overview

![Sales_Overview](Images/Dashboard/Deliveries_Overview.JPG)

Main KPIs:
-	Deliveries
-	On-Time Deliveries
-	Late Deliveries
-	On-Time Rate
-	Freight Average

### All background images and color scheme can be downloaded here:
`Images/Power_BI_Design`

## Key Insights Examples:
-	São Paulo generated the highest revenue.
-	Health & Beauty was among the top categories.
-	More than 90% of deliveries were completed on time.
-	Delivery delays were concentrated in a few states.
-	Freight costs varied significantly among categories.

## Technologies Used
-    Excel
-	SQL Server
-	Power BI
-	DAX
-	Power Query
-	Git
-	GitHub
-----------------------------------------------------------
## Author

Matheus Henrykssen

<p align="center">
  <a href="https://www.linkedin.com/in/matheus-goncalves-45534a414/">
    🔗 LinkedIn
  </a>
  &nbsp; | &nbsp;
  <a href="https://github.com/matheushenrykssen">
    💻 GitHub
  </a>
</p>
