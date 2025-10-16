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

# Insights
1. Delivery Performance

A significant portion of orders were delivered late, with most delays concentrated under the Standard Class shipping mode.

Express Class and First Class deliveries consistently met delivery targets, indicating better carrier reliability.

Regions farther from distribution hubs tend to record higher average delivery durations, suggesting logistical inefficiencies in route planning.

Late deliveries have a direct negative impact on customer satisfaction and increase the risk of churn.

Business Implication:
Improving delivery timeliness and optimizing carrier selection could lead to faster order fulfillment and higher customer retention.

2. Sales and Profitability Distribution

A small number of products and categories generate a majority of total sales (typical Pareto effect: 20% of products drive 80% of sales).

Some high-sales products yield low or even negative profits, indicating poor pricing or high cost-to-serve ratios.

The Technology and Office Supplies categories show strong sales volumes, while Furniture products, though fewer in number, deliver higher profit margins.

Business Implication:
The company should focus on promoting high-margin products and reassessing pricing strategies for low-profit, high-volume items.

3. Regional Insights

The U.S. and European regions dominate total sales, but certain emerging regions (like Asia-Pacific) show high growth potential despite smaller sales bases.

Regional profitability varies widely, likely due to differences in shipping costs, tariffs, and local distribution efficiency.

Underperforming regions may benefit from localized inventory placement and regional marketing initiatives to boost penetration.

Business Implication:
Reallocating resources toward high-profit regions while strengthening logistics in underperforming zones could increase overall supply chain efficiency.

4. Demand and Seasonality Trends

Sales volumes show clear seasonal patterns, peaking toward Q4 (year-end holidays) and dipping mid-year.

Certain product categories show stronger seasonal spikes than others (e.g., technology items during Q4 promotions).

Lack of proactive forecasting during high-demand periods may cause stockouts, while overstocking in off-peak periods increases inventory holding costs.

Business Implication:
Implementing seasonal forecasting models and dynamic inventory policies can improve stock balance, reduce costs, and increase order fulfillment efficiency.

5. Shipping Mode Impact

Standard Class has the largest volume of shipments but also the highest late-delivery rate.

Express Class and Same-Day shipping modes, though more expensive, achieve higher customer satisfaction and lower return rates.

Balancing shipping cost vs. speed is crucial — optimizing shipment type based on product value and urgency could improve profit margins.

Business Implication:
Integrate a shipping mode optimization model that dynamically suggests the most cost-effective yet reliable delivery option for each order.

6. Customer Segmentation and Retention

Corporate and high-value customers tend to order larger quantities and generate higher total revenue, but are also more sensitive to delivery delays.

Consumer segments place more frequent but smaller orders, offering steady revenue flow.

Late delivery patterns in corporate orders could lead to contract dissatisfaction or loss of B2B clients.

Business Implication:
Introduce customer-tier-specific logistics strategies, ensuring premium clients receive faster, priority shipping options and personalized support.

7. Overall Supply Chain Health

The overall supply chain demonstrates strong sales performance, but inefficiencies in logistics timing, regional distribution, and inventory management reduce total profitability.

The company could improve profit margins by:

Reducing late delivery costs

Optimizing carrier selection

Leveraging data-driven forecasting and pricing

Business Implication:
By addressing key operational bottlenecks, the company can transform its supply chain from reactive to predictive — enabling smoother operations, happier customers, and higher profitability.

# Recommendations
1. Improve Delivery Timeliness and Logistics Efficiency

Adopt a data-driven delivery management system to monitor real-time order progress, identify late shipments early, and trigger proactive interventions.

Re-evaluate shipping partners — focus on carriers with consistent on-time performance and negotiate service-level agreements (SLAs) with measurable KPIs.

Reassign shipping modes based on product value and urgency:

Use Express or First Class for high-value, time-sensitive products.

Use Standard Class only for low-cost or non-urgent items.

Introduce regional fulfillment centers to reduce delivery lead time and transportation costs.

Expected Impact: Reduced late deliveries, higher customer satisfaction, and improved operational reliability.

2. Optimize Product Portfolio for Profitability

Conduct product-level profitability analysis regularly to identify low-margin, high-volume items.

Adjust pricing strategies or sourcing contracts for products with high sales but low or negative profits.

Focus marketing spend and promotions on high-margin products to increase overall profitability.

Use ABC Inventory Classification:

A-items: High-profit, high-value — prioritize stocking and quality assurance.

B-items: Moderate importance — optimize costs and pricing.

C-items: Low-profit or low-demand — consider phasing out or sourcing cheaper alternatives.

Expected Impact: Improved profit margins and more balanced inventory costs.

3. Strengthen Regional Strategy

Prioritize investments and marketing in top-performing regions with proven sales and profit performance.

For underperforming regions, investigate local barriers such as logistics constraints, distribution gaps, or pricing sensitivity.

Establish regional performance dashboards to track KPIs like sales growth, profitability, and delivery times per region.

Consider localized warehousing or partnerships to reduce costs and improve service levels in remote markets.

Expected Impact: Enhanced regional competitiveness and optimized distribution network efficiency.

4. Implement Advanced Demand Forecasting

Leverage historical sales data and seasonality trends to predict demand peaks and troughs.

Implement machine learning–based forecasting models (e.g., ARIMA, Prophet) to anticipate future demand.

Use forecasts to inform inventory restocking schedules and procurement planning.

Align production and inventory strategies with seasonal cycles, especially during Q4 peaks.

Expected Impact: Lower stockouts and overstocking, improved inventory turnover, and reduced holding costs.

5. Enhance Customer Retention through Service Reliability

Track customer satisfaction metrics tied to delivery accuracy and timeliness.

Introduce priority service tiers for high-value corporate clients to guarantee timely delivery.

Implement personalized communication during the delivery cycle — real-time updates, estimated delivery times, and post-delivery feedback.

Reward repeat customers with loyalty programs or discounts tied to consistent on-time fulfillment.

Expected Impact: Stronger customer loyalty, reduced churn, and better lifetime value.

6. Integrate Performance Dashboards and KPIs

Develop an interactive dashboard (in Power BI or Tableau) to continuously monitor:

Delivery performance by region and shipping mode

Profitability by product and category

Monthly sales and demand patterns

Late delivery rate trends

Use automated alerts for KPI deviations (e.g., “Late Deliveries > 15%” triggers a review).

Expected Impact: Real-time performance monitoring and faster management decision-making.

7. Foster Data-Driven Supply Chain Culture

Train operational teams in data interpretation and visualization tools (Power BI, Excel analytics).

Encourage a culture of continuous improvement through regular performance reviews based on analytics dashboards.

Maintain a centralized data warehouse to consolidate operational, financial, and customer data for holistic insights.

Expected Impact: Greater cross-departmental alignment and sustainable operational improvements.

Summary
* Implementing these recommendations will help the organization:

* Reduce delivery delays by optimizing logistics and carriers.

* Improve profitability through smarter pricing and product management.

* Anticipate seasonal demand with data-driven forecasting.

* Enhance customer satisfaction and retention through reliable service.

* Establish a continuous feedback loop powered by real-time dashboards.
