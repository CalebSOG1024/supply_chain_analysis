-- NAME: AJUWON CALEB SEGUN
-- EMAIL: ajucaleb@gmail.com
-- GITHUB: 
-- PHONE NUMBER: +2349021314839
-- DATE: September 2025 - October 2025
-- TITLE: SUPPLY CHAIN ANALYSIS
-- REASON FOR THE PROJECT: This project is aimed at showcasing a full view of sales, profits, customers, products and delivery performance for a business; this examines and evaluates the flow of goods, services and information from raw materials to end customers. It involves analyzing the various stages of the supply chain, including sourcing, production, logistics and distribution, to identify areas of improvement and optimize performance.
-- KEY ASPECTS OF SUPPLY CHAIN ANALYSIS:
	SELECT 
    *
FROM
    supply_chain;

CREATE TABLE supply_chain_new LIKE supply_chain;

INSERT INTO supply_chain_new
SELECT *
FROM supply_chain;

SELECT 
    *
FROM
    supply_chain_new;

# Now, after duplicating the dataset, I have to spot the duplicate rows from the dataset. Inorder to spot the duplicte rows, I'd to use the ROW_NUMBER() function to assign numbers on the primary identifier each row.

SELECT *,
ROW_NUMBER() OVER(
PARTITION BY `Customer Id`) AS row_num
FROM supply_chain_new;

SELECT 
    *
FROM
    supply_chain_new
WHERE
    `Customer Id` = 18109;

# After verifying and knowing for sure that the rows were actually duplicates, then I had to use a CTE statement to filter out the duplicates, and delete them.

WITH cte2 AS
(
SELECT *,
ROW_NUMBER() OVER(
PARTITION BY `Customer Id`) AS row_num
FROM supply_chain_new
)
SELECT *
FROM cte2
WHERE row_num > 1;

CREATE TABLE `supply_chain_new2` (
    `Type` TEXT,
    `Days for shipping (real)` INT DEFAULT NULL,
    `Days for shipment (scheduled)` INT DEFAULT NULL,
    `Benefit per order` DOUBLE DEFAULT NULL,
    `Sales per customer` DOUBLE DEFAULT NULL,
    `Delivery Status` TEXT,
    `Late_delivery_risk` INT DEFAULT NULL,
    `Category Id` INT DEFAULT NULL,
    `Category Name` TEXT,
    `Customer City` TEXT,
    `Customer Country` TEXT,
    `Customer Email` TEXT,
    `Customer Fname` TEXT,
    `Customer Id` INT DEFAULT NULL,
    `Customer Lname` TEXT,
    `Customer Password` TEXT,
    `Customer Segment` TEXT,
    `Customer State` TEXT,
    `Customer Street` TEXT,
    `Customer Zipcode` INT DEFAULT NULL,
    `Department Id` INT DEFAULT NULL,
    `Department Name` TEXT,
    `Latitude` DOUBLE DEFAULT NULL,
    `Longitude` DOUBLE DEFAULT NULL,
    `Market` TEXT,
    `Order City` TEXT,
    `Order Country` TEXT,
    `Order Customer Id` INT DEFAULT NULL,
    `order date (DateOrders)` TEXT,
    `Order Id` INT DEFAULT NULL,
    `Order Item Cardprod Id` INT DEFAULT NULL,
    `Order Item Discount` DOUBLE DEFAULT NULL,
    `Order Item Discount Rate` DOUBLE DEFAULT NULL,
    `Order Item Id` INT DEFAULT NULL,
    `Order Item Product Price` DOUBLE DEFAULT NULL,
    `Order Item Profit Ratio` DOUBLE DEFAULT NULL,
    `Order Item Quantity` INT DEFAULT NULL,
    `Sales` DOUBLE DEFAULT NULL,
    `Order Item Total` DOUBLE DEFAULT NULL,
    `Order Profit Per Order` DOUBLE DEFAULT NULL,
    `Order Region` TEXT,
    `Order State` TEXT,
    `Order Status` TEXT,
    `Order Zipcode` TEXT,
    `Product Card Id` INT DEFAULT NULL,
    `Product Category Id` INT DEFAULT NULL,
    `Product Description` TEXT,
    `Product Image` TEXT,
    `Product Name` TEXT,
    `Product Price` DOUBLE DEFAULT NULL,
    `Product Status` INT DEFAULT NULL,
    `shipping date (DateOrders)` TEXT,
    `Shipping Mode` TEXT,
    `row_num` INT
)  ENGINE=INNODB DEFAULT CHARSET=UTF8MB4 COLLATE = UTF8MB4_0900_AI_CI;

# Then, I had to insert the information in my dataset into the new table I created. 

INSERT INTO supply_chain_new2
SELECT *,
ROW_NUMBER() OVER(
PARTITION BY `Customer Id`) AS row_num
FROM supply_chain_new;

SELECT 
    *
FROM
    supply_chain_new2
WHERE
    row_num > 1;

DELETE FROM supply_chain_new2 
WHERE
    row_num > 1;

-- Standardizing the data

SELECT 
    *
FROM
    supply_chain_new2;

SELECT 
    `Type`, TRIM(`Type`)
FROM
    supply_chain_new2;

UPDATE supply_chain_new2 
SET 
    `Type` = TRIM(`Type`);

SELECT 
    `Days for shipping (real)`, TRIM(`Days for shipping (real)`)
FROM
    supply_chain_new2;

UPDATE supply_chain_new2 
SET 
    `Days for shipping (real)` = TRIM(`Days for shipping (real)`);

SELECT 
    `Days for shipment (scheduled)`,
    TRIM(`Days for shipment (scheduled)`)
FROM
    supply_chain_new2;

UPDATE supply_chain_new2 
SET 
    `Days for shipment (scheduled)` = TRIM(`Days for shipment (scheduled)`);

SELECT 
    `Benefit per order`, ROUND(TRIM(`Benefit per order`), 3)
FROM
    supply_chain_new2;

UPDATE supply_chain_new2 
SET 
    `Benefit per order` = ROUND(TRIM(`Benefit per order`), 3);

SELECT 
    `Sales per customer`, ROUND(TRIM(`Sales per customer`), 3)
FROM
    supply_chain_new2;

UPDATE supply_chain_new2 
SET 
    `Sales per customer` = ROUND(TRIM(`Sales per customer`), 3);

SELECT 
    `Sales per customer`, ROUND(TRIM(`Sales per customer`), 3)
FROM
    supply_chain_new2;

UPDATE supply_chain_new2 
SET 
    `Sales per customer` = ROUND(TRIM(`Sales per customer`), 3);

SELECT 
    `Delivery Status`, TRIM(`Delivery Status`)
FROM
    supply_chain_new2;

UPDATE supply_chain_new2 
SET 
    `Delivery Status` = TRIM(`Delivery Status`);

SELECT 
    Late_delivery_risk, TRIM(Late_delivery_risk)
FROM
    supply_chain_new2;

UPDATE supply_chain_new2 
SET 
    Late_delivery_risk = TRIM(Late_delivery_risk);

SELECT 
    `Category Id`, TRIM(`Category Id`)
FROM
    supply_chain_new2;

UPDATE supply_chain_new2 
SET 
    `Category Id` = TRIM(`Category Id`);

SELECT 
    `Category Name`, TRIM(`Category Name`)
FROM
    supply_chain_new2;

UPDATE supply_chain_new2 
SET 
    `Category Name` = TRIM(`Category Name`);

SELECT 
    `Customer City`, TRIM(`Customer City`)
FROM
    supply_chain_new2;

UPDATE supply_chain_new2 
SET 
    `Customer City` = TRIM(`Customer City`);

SELECT 
    `Customer Country`, TRIM(`Customer Country`)
FROM
    supply_chain_new2;

UPDATE supply_chain_new2 
SET 
    `Customer Country` = TRIM(`Customer Country`);

SELECT 
    `Customer Fname`, TRIM(`Customer Fname`)
FROM
    supply_chain_new2;

UPDATE supply_chain_new2 
SET 
    `Customer Fname` = TRIM(`Customer Fname`);

SELECT 
    `Customer Id`, TRIM(`Customer Id`)
FROM
    supply_chain_new2;

UPDATE supply_chain_new2 
SET 
    `Customer Id` = TRIM(`Customer Id`);

SELECT 
    `Customer Lname`, TRIM(`Customer Lname`)
FROM
    supply_chain_new2;

UPDATE supply_chain_new2 
SET 
    `Customer Lname` = TRIM(`Customer Lname`);

SELECT 
    `Customer Segment`, TRIM(`Customer Segment`)
FROM
    supply_chain_new2;

UPDATE supply_chain_new2 
SET 
    `Customer Segment` = TRIM(`Customer Segment`);

SELECT 
    `Customer State`, TRIM(`Customer State`)
FROM
    supply_chain_new2;

UPDATE supply_chain_new2 
SET 
    `Customer State` = TRIM(`Customer State`);

SELECT 
    `Customer Street`, TRIM(`Customer Street`)
FROM
    supply_chain_new2;

UPDATE supply_chain_new2 
SET 
    `Customer Street` = TRIM(`Customer Street`);

SELECT 
    `Customer Zipcode`, TRIM(`Customer Zipcode`)
FROM
    supply_chain_new2;

UPDATE supply_chain_new2 
SET 
    `Customer Zipcode` = TRIM(`Customer Zipcode`);

SELECT 
    `Department Id`, TRIM(`Department Id`)
FROM
    supply_chain_new2;

UPDATE supply_chain_new2 
SET 
    `Department Id` = TRIM(`Department Id`);

SELECT 
    `Department Name`, TRIM(`Department Name`)
FROM
    supply_chain_new2;

UPDATE supply_chain_new2 
SET 
    `Department Name` = TRIM(`Department Name`);

SELECT 
    *
FROM
    supply_chain_new2;

SELECT 
    Latitude, ROUND(TRIM(Latitude), 2)
FROM
    supply_chain_new2;

UPDATE supply_chain_new2 
SET 
    Latitude = ROUND(TRIM(Latitude), 2);

SELECT 
    Longitude, ROUND(TRIM(Longitude), 2)
FROM
    supply_chain_new2;

UPDATE supply_chain_new2 
SET 
    Longitude = ROUND(TRIM(Longitude), 2);

SELECT 
    Market, TRIM(Market)
FROM
    supply_chain_new2;

UPDATE supply_chain_new2 
SET 
    Market = TRIM(Market);

SELECT 
    `Order City`, TRIM(`Order City`)
FROM
    supply_chain_new2;

UPDATE supply_chain_new2 
SET 
    `Order City` = TRIM(`Order City`);

SELECT 
    `Order Country`, TRIM(`Order Country`)
FROM
    supply_chain_new2;

UPDATE supply_chain_new2 
SET 
    `Order Country` = TRIM(`Order Country`);

SELECT 
    `Order Customer Id`, TRIM(`Order Customer Id`)
FROM
    supply_chain_new2;

UPDATE supply_chain_new2 
SET 
    `Order Customer Id` = TRIM(`Order Customer Id`);

SELECT 
    `order date (DateOrders)`, TRIM(`order date (DateOrders)`)
FROM
    supply_chain_new2;

UPDATE supply_chain_new2 
SET 
    `order date (DateOrders)` = TRIM(`order date (DateOrders)`);

SELECT 
    `Order Id`, TRIM(`Order Id`)
FROM
    supply_chain_new2;

UPDATE supply_chain_new2 
SET 
    `Order Id` = TRIM(`Order Id`);

SELECT 
    `Order Item Cardprod Id`, TRIM(`Order Item Cardprod Id`)
FROM
    supply_chain_new2;

UPDATE supply_chain_new2 
SET 
    `Order Item Cardprod Id` = TRIM(`Order Item Cardprod Id`);

SELECT 
    `Order Item Discount`, ROUND(TRIM(`Order Item Discount`), 2)
FROM
    supply_chain_new2;

UPDATE supply_chain_new2 
SET 
    `Order Item Discount` = ROUND(TRIM(`Order Item Discount`), 2);

SELECT 
    `Order Item Discount Rate`,
    ROUND(TRIM(`Order Item Discount Rate`), 2)
FROM
    supply_chain_new2;

UPDATE supply_chain_new2 
SET 
    `Order Item Discount Rate` = ROUND(TRIM(`Order Item Discount Rate`), 2);

SELECT 
    `Order Item Id`, TRIM(`Order Item Id`)
FROM
    supply_chain_new2;

UPDATE supply_chain_new2 
SET 
    `Order Item Id` = TRIM(`Order Item Id`);

SELECT 
    `Order Item Product Price`,
    ROUND(TRIM(`Order Item Product Price`), 2)
FROM
    supply_chain_new2;

UPDATE supply_chain_new2 
SET 
    `Order Item Product Price` = ROUND(TRIM(`Order Item Product Price`), 2);

SELECT 
    `Order Item Profit Ratio`,
    ROUND(TRIM(`Order Item Profit Ratio`), 2)
FROM
    supply_chain_new2;

UPDATE supply_chain_new2 
SET 
    `Order Item Profit Ratio` = ROUND(TRIM(`Order Item Profit Ratio`), 2);

SELECT 
    `Order Item Quantity`, TRIM(`Order Item Quantity`)
FROM
    supply_chain_new2;

UPDATE supply_chain_new2 
SET 
    `Order Item Quantity` = TRIM(`Order Item Quantity`);

SELECT 
    `Sales`, ROUND(TRIM(`Sales`), 2)
FROM
    supply_chain_new2;

UPDATE supply_chain_new2 
SET 
    `Sales` = ROUND(TRIM(`Sales`), 2);

SELECT 
    `Order Item Total`, ROUND(TRIM(`Order Item Total`), 2)
FROM
    supply_chain_new2;

UPDATE supply_chain_new2 
SET 
    `Order Item Total` = ROUND(TRIM(`Order Item Total`), 2);

SELECT 
    `Order Profit Per Order`,
    ROUND(TRIM(`Order Profit Per Order`), 2)
FROM
    supply_chain_new2;

UPDATE supply_chain_new2 
SET 
    `Order Profit Per Order` = ROUND(TRIM(`Order Profit Per Order`), 2);

SELECT 
    `Order Region`, TRIM(`Order Region`)
FROM
    supply_chain_new2;

UPDATE supply_chain_new2 
SET 
    `Order Region` = TRIM(`Order Region`);

SELECT 
    `Order State`, TRIM(`Order State`)
FROM
    supply_chain_new2;

UPDATE supply_chain_new2 
SET 
    `Order State` = TRIM(`Order State`);

SELECT 
    `Order Status`, TRIM(`Order Status`)
FROM
    supply_chain_new2;

UPDATE supply_chain_new2 
SET 
    `Order Status` = TRIM(`Order Status`);

SELECT 
    `Product Card Id`, TRIM(`Product Card Id`)
FROM
    supply_chain_new2;

UPDATE supply_chain_new2 
SET 
    `Product Card Id` = TRIM(`Product Card Id`);

SELECT 
    `Product Category Id`, TRIM(`Product Category Id`)
FROM
    supply_chain_new2;

UPDATE supply_chain_new2 
SET 
    `Product Category Id` = TRIM(`Product Category Id`);

SELECT 
    `Product Name`, TRIM(`Product Name`)
FROM
    supply_chain_new2;

UPDATE supply_chain_new2 
SET 
    `Product Name` = TRIM(`Product Name`);

SELECT 
    `Product Price`, ROUND(TRIM(`Product Price`), 2)
FROM
    supply_chain_new2;

UPDATE supply_chain_new2 
SET 
    `Product Price` = ROUND(TRIM(`Product Price`), 2);

SELECT 
    `shipping date (DateOrders)`,
    TRIM(`shipping date (DateOrders)`)
FROM
    supply_chain_new2;

UPDATE supply_chain_new2 
SET 
    `shipping date (DateOrders)` = TRIM(`shipping date (DateOrders)`);

SELECT 
    `Shipping Mode`, TRIM(`Shipping Mode`)
FROM
    supply_chain_new2;

UPDATE supply_chain_new2 
SET 
    `Shipping Mode` = TRIM(`Shipping Mode`);

SELECT 
    *
FROM
    supply_chain_new2;

-- 3. Remove Null Values or Blank Values

SELECT 
    *
FROM
    supply_chain_new2;

-- 4. Remove Unnecessary Columns
SELECT 
    *
FROM
    supply_chain_new2;

-- But I found out that there were some unnecessary columns in my dataset, especially the ones that contains personal identifiable information (PII); to make sure my dataset is credible, I had to remove them. 

ALTER TABLE supply_chain_new2
DROP COLUMN `Customer Email`;

ALTER TABLE supply_chain_new2
DROP COLUMN `Customer Password`;

ALTER TABLE supply_chain_new2
DROP COLUMN `Order Zipcode`;

ALTER TABLE supply_chain_new2
DROP COLUMN `Product Description`;

ALTER TABLE supply_chain_new2
DROP COLUMN `Product Image`;

ALTER TABLE supply_chain_new2
DROP COLUMN `Product Status`;

ALTER TABLE supply_chain_new2
DROP COLUMN `Order_Month`;

ALTER TABLE supply_chain_new2
DROP COLUMN `Customer FullName`;

ALTER TABLE supply_chain_new2
DROP COLUMN `row_num`;

SELECT 
    *
FROM
    supply_chain_new2;

ALTER TABLE supply_chain_new2
ADD COLUMN Delivery_delay INT;

UPDATE supply_chain_new2 
SET 
    Delivery_delay = `Days for shipping (real)` - `Days for shipment (scheduled)`;

ALTER TABLE supply_chain_new2
ADD COLUMN `Profit Margin%` INT;

UPDATE supply_chain_new2 
SET 
    `Profit Margin%` = `Order Profit Per Order` / Sales;

ALTER TABLE supply_chain_new2
ADD COLUMN Profit INT;

UPDATE supply_chain_new2 
SET 
    Profit = Sales - `Product Price`;

SELECT 
    *
FROM
    supply_chain_new2;

-- EXPLORATORY DATA ANALYSIS

SELECT 
    *
FROM
    supply_chain_new2;

SELECT 
    `Sales per customer`,
    `Profit`,
    SUBSTRING(`order date (DateOrders)`,
        1,
        10) AS `Month_Day_Year`
FROM
    supply_chain_new2
GROUP BY `Sales per customer` , `Profit` , SUBSTRING(`order date (DateOrders)`,
    1,
    10)
ORDER BY Profit DESC;

SELECT 
    Sales,
    `Profit`,
    SUBSTRING(`order date (DateOrders)`,
        1,
        10) AS `Month_Year`
FROM
    supply_chain_new2
GROUP BY Sales , `Profit` , SUBSTRING(`order date (DateOrders)`,
    1,
    10)
ORDER BY 2 DESC;

-- Seasonality for demand price
SELECT 
    *
FROM
    supply_chain_new2;

SELECT 
    SUBSTRING(`order date (DateOrders)`,
        7,
        4) AS `order_year`,
    SUBSTRING(`order date (DateOrders)`,
        1,
        2) AS `order_month`,
    SUBSTRING(`order date (DateOrders)`,
        4,
        2) AS `order_day`,
    SUM(`Order Item Quantity`) AS `total_demand`,
    ROUND(AVG(`Order Item Product Price`), 2) AS avg_price
FROM
    supply_chain_new2
GROUP BY `order_year` , `order_month` , `order_day`
ORDER BY `total_demand` DESC;
-- This gives the daily, monthly and yearly demand and price

SELECT 
    CONCAT(`Customer Fname`, ' ', `Customer Lname`) AS full_name,
    SUBSTRING(`order date (DateOrders)`,
        7,
        4) AS `order_year`,
    SUBSTRING(`order date (DateOrders)`,
        1,
        2) AS `order_month`,
    SUBSTRING(`order date (DateOrders)`,
        4,
        2) AS `order_day`,
    SUM(`Order Item Quantity`) AS `total_demand`,
    ROUND(AVG(`Order Item Product Price`), 2) AS avg_price
FROM
    supply_chain_new2
GROUP BY `Customer Fname` , `Customer Lname` , `order_year` , `order_month` , `order_day`
ORDER BY `total_demand` DESC;
-- This gives the customer's daily, monthly and yearly demand and price

SELECT
	SUBSTRING(`order date (DateOrders)`, 7, 4) AS `order_year`,
	SUBSTRING(`order date (DateOrders)`, 1, 2) AS `order_month`,
        SUBSTRING(`order date (DateOrders)`, 4, 2) AS `order_day`,
    SUM(`Order Item Quantity`) AS `total_demand`,
    ROUND(AVG(`Order Item Product Price`), 2) AS avg_price,
    SUM(`Order Item Quantity`) / AVG(SUM(`Order Item Quantity`))
OVER(PARTITION BY SUBSTRING(`order date (DateOrders)`, 7, 4)) AS `demand_index`,
	ROUND(AVG(`Order Item Product Price`) / AVG(AVG(`Order Item Product Price`))
    OVER(PARTITION BY SUBSTRING(`order date (DateOrders)`, 7, 4)), 2)  AS `price_index`
FROM supply_chain_new2
GROUP BY `order_year`, `order_month`, `order_day`
ORDER BY `order_year` DESC;
SELECT DISTINCT
    `Product Name`, `Category Name`, `Product Price`
FROM
    supply_chain_new2
ORDER BY ROUND(`Product Price`, 2) DESC
LIMIT 10;

-- Rank by Sales, Profit, and order quantity

-- 1. Rank by Product
SELECT `Product Name`,
SUM(`Order Item Quantity`) AS total_quantity,
ROUND(SUM(`Order Item Total`), 2) AS total_sales,
ROUND(SUM(`Order Profit Per Order`), 2) AS total_profit,
RANK() OVER(ORDER BY SUM(`Order Item Total`) DESC) AS sales_rank,
RANK() OVER(ORDER BY SUM(`Order Profit Per Order`) DESC) AS profit_rank,
RANK() OVER(ORDER BY SUM(`Order Item Quantity`) DESC) AS quantity_rank
FROM supply_chain_new2
GROUP BY `Product Name`
ORDER BY total_sales DESC;
-- This shows each product ranked by sales, profit and quantity

-- 2. Rank by Category

SELECT `Category Name`,
SUM(`Order Item Quantity`) AS total_quantity,
ROUND(SUM(`Order Item Total`), 2) AS total_sales,
ROUND(SUM(`Order Profit Per Order`), 2) AS total_profit,
RANK() OVER(ORDER BY SUM(`Order Item Total`) DESC) AS sales_rank,
RANK() OVER(ORDER BY SUM(`Order Profit Per Order`)) AS profit_rank,
RANK() OVER(ORDER BY SUM(`Order Item Quantity`) DESC) AS quantity_rank
FROM supply_chain_new2
GROUP BY `Category Name`
ORDER BY total_sales DESC;

-- 3. Rank by Region
SELECT `Order Region`,
SUM(`Order Item Quantity`) AS total_quantity,
ROUND(SUM(`Order Item Total`), 2) AS total_sales,
ROUND(SUM(`Order Profit Per Order`), 2) AS total_profit,
RANK() OVER(ORDER BY SUM(`Order Item Total`) DESC) AS sales_rank,
RANK() OVER(ORDER BY SUM(`Order Profit Per Order`)) AS profit_rank,
RANK() OVER(ORDER BY SUM(`Order Item Quantity`) DESC) AS quantity_rank
FROM supply_chain_new2
GROUP BY `Order Region`
ORDER BY total_sales DESC;

SELECT 
    Sales,
    `Customer Segment`,
    `Order Region`,
    `Customer Country`
FROM
    supply_chain_new2
ORDER BY Sales DESC;

SELECT 
    `Delivery Status`,
    COUNT(*) AS total_orders,
    ROUND(100 * COUNT(*) / (SELECT 
                    COUNT(*)
                FROM
                    supply_chain_new2),
            2) AS percentage
FROM
    supply_chain_new2
GROUP BY `Delivery Status`
ORDER BY percentage DESC;
    -- % orders late vs. on time = 52.45% vs 16.62%

SELECT 
    Late_delivery_risk,
    COUNT(*) AS total_orders,
    ROUND(100 * COUNT(*) / (SELECT 
                    COUNT(*)
                FROM
                    supply_chain_new2),
            2) AS percentage
FROM
    supply_chain_new2
GROUP BY Late_delivery_risk
ORDER BY percentage DESC;
    -- Late_delivery_risk = 1 -> % late deliveries
SELECT 
    Shipping mode,
    COUNT(*) AS total_orders,
    ROUND(100 * COUNT(*) / (SELECT 
                    COUNT(*)
                FROM
                    supply_chain_new2),
            2) AS percentage
FROM
    supply_chain_new2
WHERE
    Delivery Status = 'Late delivery'
GROUP BY Shipping mode

-- Standard Class 25.00%
-- Second Class	14.99%
-- First Class 11.58%
-- Same Day 0.87%

SELECT 
    `Delivery Status`,
    `Order Region`,
    COUNT(*) AS total_orders,
    ROUND(100 * COUNT(*) / (SELECT 
                    COUNT(*)
                FROM
                    supply_chain_new2),
            2) AS percentage
FROM
    supply_chain_new2
WHERE
    `Delivery Status` = 'Late delivery'
GROUP BY `Delivery Status` , `Order Region`
ORDER BY percentage DESC
LIMIT 10

-- Western Europe 8.01%
-- Central America 6.55%
-- Southeast Asia 4.37%
-- Oceania 3.88%
-- South America 3.58%
-- South Asia 3.39%
-- Eastern Asia 3.11%
-- Northern Europe 3.09%
-- Southern Europe 2.80%
-- Caribbean 1.90%

SELECT 
    `Delivery Status`,
    `Category Name`,
    COUNT(*) AS total_orders,
    ROUND(100 * COUNT(*) / (SELECT 
                    COUNT(*)
                FROM
                    supply_chain_new2),
            2) AS percentage
FROM
    supply_chain_new2
WHERE
    `Delivery Status` = 'Late delivery'
GROUP BY `Delivery Status` , `Category Name`
ORDER BY percentage DESC
LIMIT 10

-- Cleats, Men's Footwear, Women's Apparel, Cardio Equipment, Hockey, Shop by Sport, Camping & Hiking, Sporting Goods, Fishing, and Electronics are the product category with the highest late rates, which could mean sourcing/shipping bottlenecks.
SELECT DISTINCT
    CONCAT(`Customer Fname`, ' ', `Customer Lname`),
    `Benefit per order`
FROM
    supply_chain_new2
ORDER BY 2 DESC

-- Customer's sales per order
SELECT DISTINCT
    CONCAT(`Customer Fname`, ' ', `Customer Lname`),
    `Sales per customer`
FROM
    supply_chain_new2
ORDER BY 2 DESC

-- Top 10 buying customers with their segments, department name, market and category name
SELECT DISTINCT
    CONCAT(`Customer Fname`, ' ', `Customer Lname`),
    `Sales per customer`,
    `Customer segment`,
    `Department Name`,
    Market,
    `Category Name`
FROM
    supply_chain_new2
ORDER BY 2 DESC
LIMIT 10

# OVERALL IMPACT: By addressing high late-delivery rates in premium shipping modes, strengthening weak regions, and improving category-level supply planning, the company can boost on-time delivery performance, reduce cancellations, and improve customer satisfaction and profitability.
