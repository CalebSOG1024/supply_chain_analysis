# Global_supply_chain_analysis_ using_MySQL

# Description
This project analyzes a global supply chain dataset to uncover insights about delivery performance, regional sales, product profitability, and demand trends. The goal is to identify operational inefficiencies and recommend strategies for improving logistics, profitability, and customer satisfaction. 

# Business Introduction
In today’s highly competitive global market, efficient supply chain management has become a critical determinant of business success. Organizations must balance customer satisfaction, cost efficiency, and operational agility to remain competitive. This analysis explores the operational dynamics within a global supply chain dataset, with the goal of uncovering insights that drive data-driven decision-making.

The dataset represents end-to-end order transactions — covering customer details, product categories, regional sales, shipping modes, profit margins, and delivery performance. By leveraging advanced analytics using SQL and visualization tools, this project examines key supply chain performance indicators such as delivery timeliness, profitability by product and region, and demand patterns across time.

# Business Problem
In today’s fast-paced and competitive global market, businesses rely on their supply chain performance to sustain profitability, ensure customer satisfaction, and maintain a competitive edge. However, inefficiencies within supply chain operations — such as late deliveries, unbalanced inventory levels, and uneven profit margins across regions and products — can lead to significant financial losses, reduced customer loyalty, and operational bottlenecks.

The organization in focus manages a diverse portfolio of products distributed across multiple regions through different shipping modes. Despite having access to vast amounts of operational data, the company lacks clear visibility into the performance drivers affecting its supply chain efficiency. Issues such as delayed shipments, high logistics costs, poor demand forecasting, and inconsistent regional performance have created barriers to achieving optimal business outcomes.

These challenges manifest in several key areas:
* Delivery Performance Issues: A notable portion of orders are being delivered late, negatively impacting customer experience and increasing return rates.

* Profitability Imbalance: Some products generate high sales but deliver minimal profit margins, indicating inefficiencies in pricing or sourcing strategies.

* Regional Disparities: Certain regions outperform others significantly in terms of sales and profit, suggesting possible logistical or marketing gaps.

* Demand Seasonality: Fluctuations in demand without proper forecasting lead to stockouts during peak seasons and overstocking during low demand periods.

* Inefficient Shipping Modes: Shipping methods vary widely in speed and cost-effectiveness, affecting delivery consistency and overall fulfillment costs.

Without a data-driven understanding of these underlying inefficiencies, strategic decision-making becomes reactive rather than proactive. Therefore, the central business problem is:

How can the company leverage supply chain data analytics to identify performance inefficiencies, optimize delivery operations, improve profitability, and enhance customer satisfaction across regions and product categories?

# Aim of this Project
The purpose of this analysis is to identify bottlenecks, inefficiencies, and opportunities for optimization in logistics and operations. Insights from this study will help stakeholders:

* Improve delivery reliability and reduce late shipments

* Enhance inventory and demand forecasting accuracy

* Increase profit margins through better pricing and sourcing decisions

Strengthen customer satisfaction and retention

# Processes
1. Data Understanding and Collection

* I obtained the DataCo Global Supply Chain Dataset, containing end-to-end order transactions across multiple regions, product categories, and shipping modes.

* I examined the data structure to understand key fields such as:

Order Date, Delivery Status, Order Region, Product Category, Profit, Sales, Quantity, Shipping Mode, Customer Segment, etc.

* I defined project objectives — to evaluate delivery efficiency, profitability, and demand performance across dimensions.

2. Data Cleaning and Preparation

* I removed duplicate entries, null values, and irrelevant columns.

* I standardized date formats to support time-based analysis (e.g., converting order dates into month, quarter, and year).

* I renamed columns for consistency (e.g., “Order Item Total” → “Sales”, “Order Profit Per Order” → “Profit”).

* I created new calculated fields:

Delivery Duration = Delivery Date - Order Date

Delivery Category = On-Time / Late / Early

Profit Margin (%) = (Profit / Sales) * 100

* I ensured data integrity by validating numeric ranges and category values.

3. Exploratory Data Analysis (EDA)

* I conducted preliminary analysis to understand:

Order and sales distribution across regions, categories, and time

Frequency and percentage of late vs. on-time deliveries

Relationship between shipping mode and delivery performance

Correlation between sales, profit, and order quantity

* I visualized findings using Power BI:

Sales trend over time

Profitability by region

Delivery status by shipping mode

Top-performing products and categories

4. SQL Analysis and Aggregations

* I wrote SQL queries to compute:

Total sales, profit, and quantity per region, product, and category

Late vs. on-time delivery percentages

Ranking of products, categories, and regions by sales, profit, and order quantity

Seasonal performance using month and quarter aggregations

* I used RANK(), GROUP BY and other statements for analytical summarization.

Example Query:

SELECT 
  `Product Name`,
  SUM(`Order Item Total`) AS Total_Sales,
  SUM(`Order Profit Per Order`) AS Total_Profit,
  RANK() OVER (ORDER BY SUM(`Order Item Total`) DESC) AS Sales_Rank
FROM DataCoSupplyChainDataset
GROUP BY `Product Name`;

5. Performance Insights Generation

* I identified key regions driving high sales and profit performance.

* I detected shipping modes linked to frequent late deliveries (e.g., Standard Class).

* I revealed low-profit, high-sales products, suggesting pricing or cost inefficiency.

* I discovered seasonal demand patterns, especially toward Q4 (year-end).

* I highlighted profit contribution by region and category to guide resource allocation.

6. Business Recommendations

Based on insights:

* Implement demand forecasting and seasonal inventory planning.

Improve shipping mode allocation and negotiate with underperforming carriers.

Optimize product pricing for low-margin items.

Focus marketing efforts on high-performing regions and profitable product lines.

Leverage real-time delivery tracking to improve customer experience.

7. Visualization and Reporting

Created interactive Power BI dashboards summarizing:

Regional performance map

Product profitability matrix

Delivery performance chart (on-time vs. late %)

Time-series sales trend

Exported summary visuals to include in GitHub’s visuals/ folder.

8. Documentation and Deployment

Documented all SQL scripts and analytical steps in a Jupyter notebook.

Created a README.md file summarizing the project purpose, methods, and findings.

Uploaded project files to GitHub, including data, visuals, and scripts for open review.

✅ Outcome:
The project provided actionable business insights into how the company can improve logistics efficiency, boost profitability, and enhance delivery reliability, forming a data-driven roadmap for supply chain optimization.
