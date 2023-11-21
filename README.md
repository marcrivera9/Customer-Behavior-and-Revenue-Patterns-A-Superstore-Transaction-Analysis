# Customer-Behavior-and-Revenue-Patterns-A-Superstore-Transaction-Analysis

## INTRODUCTION

#### This comprehensive data analysis, meticulously conducted by Marc Rivera(https://www.linkedin.com/in/marcrivera9/), provides an insightful examination into the sales performance of supermarket chain in Turkey. 

## OBEJECTIVE

### Main Objective: Uncovering Customer Behavior and Revenue Patterns for Superstore

#### In my role as a data analyst for the supermarket company, I am focused on analyzing customer behavior and revenue patterns within the Superstore transaction data. This involves leveraging SQL queries for data extraction and manipulation, followed by visualization using Tableau. The primary objective is to unearth actionable insights that will allow us to identify key customer trends and comprehend the factors influencing revenue generation.

#### The ultimate goal of this project is to present insightful data points to the management team. By doing so, we aim to empower them with the necessary information to make informed decisions based on the data, thereby contributing to strategic and impactful choices for the supermarket company.

## Tools

* SQL
* PostgreSQL
* Tableau

## Steps 

### 1. Collect Data.

* ### The dataset at hand originates from Kaggle and specifically focuses on the first-quarter sales of a supermarket chain in Turkey. Accessible at this Kaggle link: (https://www.kaggle.com/datasets/aungpyaeap/supermarket-sales), the dataset provides a comprehensive overview of sales data during the initial quarter. Exploring this dataset offers valuable insights into the performance and dynamics of the supermarket chain, laying the groundwork for a detailed analysis of sales trends and customer behavior in the Turkish market.

### 2. Ready Enviroment, set up database/tables to begin queries.

* #### For the upcoming analysis, we will be utilizing PostgreSQL as the relational database management system (RDBMS), with PGAdmin4 serving as the platform for seamless data management and analysis. This robust combination allows for efficient querying, extraction, and manipulation of the dataset, facilitating a comprehensive exploration of sales trends and customer behavior within the Turkish market.

![Capture](https://github.com/marcrivera9/Customer-Behavior-and-Revenue-Patterns-A-Superstore-Transaction-Analysis/assets/148594670/b33c2ad2-ad76-407e-8241-f07380150520)

* #### Create Database using SQL definitions.

![create_database](https://github.com/marcrivera9/Customer-Behavior-and-Revenue-Patterns-A-Superstore-Transaction-Analysis/assets/148594670/418805fa-6594-40ba-96d7-d9b0e4b1f5dd)

* #### Establish a table for querying the data.

![create table](https://github.com/marcrivera9/Customer-Behavior-and-Revenue-Patterns-A-Superstore-Transaction-Analysis/assets/148594670/a77e9731-1ee2-4fdb-a44e-2fd0f8380fae)

### 3. Exploratory Data Analysis (EDA)

* #### Verify table imported correctly.

![verifdication](https://github.com/marcrivera9/Customer-Behavior-and-Revenue-Patterns-A-Superstore-Transaction-Analysis/assets/148594670/e604f60b-5d83-40a0-9225-bb1d98775e50)

* #### How does each product line perform? 
  
![product_line_sales](https://github.com/marcrivera9/Customer-Behavior-and-Revenue-Patterns-A-Superstore-Transaction-Analysis/assets/148594670/0fb5eb57-3ba1-4b06-ab0b-efb22324231d)

#### The sales data reveals that 'Food and beverages' lead in revenue, reaching $56,144.96, closely followed by 'Sports and travel' and 'Electronic accessories.' These product lines demonstrate robust sales performance, contributing significantly to overall revenue. However, 'Health and beauty' lags behind with sales at $49,193.84, suggesting potential areas for improvement or targeted marketing efforts. This data snapshot provides valuable insights into the distribution of sales across different product lines, offering a comprehensive overview of the supermarket's revenue streams.

* #### How does each product perform in terms of quantity sold?

![quantity_sold](https://github.com/marcrivera9/Customer-Behavior-and-Revenue-Patterns-A-Superstore-Transaction-Analysis/assets/148594670/c4a76337-7b28-4a9b-a091-b4e658d76402)

#### The data on quantity sold per product line provides valuable insights into the popularity of various items. "Electronic accessories" lead in quantity sold with 971 units, followed closely by "Food and beverages" with 952 units and "Sports and travel" with 920 units. This quantity sold ranking generally aligns with the product lines' total sales, indicating a correlation between popularity and revenue generation. The consistency in rankings implies that items with higher quantities sold tend to contribute more significantly to overall sales. This information is not only beneficial for understanding customer preferences but also serves as a valuable input for effective inventory management. It's important to note that while high quantities sold suggest popularity, consideration of price points and profit margins is crucial for a comprehensive analysis of sales dynamics.

* #### Do sales show any correlation with whether a customer is a member or non-member?

![customer type](https://github.com/marcrivera9/Customer-Behavior-and-Revenue-Patterns-A-Superstore-Transaction-Analysis/assets/148594670/cb21bf95-ae95-4d81-bdf5-b5db7d391a28)

#### The provided data displays the average quantity sold for different product lines, categorized by customer membership status as either "Member" or "Normal." Across various product lines, "Members" consistently exhibit slightly higher average quantities sold compared to "Normal" customers. Notably, "Home and lifestyle" and "Health and beauty" stand out with the highest average quantities sold in both membership categories. Conversely, "Fashion accessories" consistently show lower quantities sold, suggesting a potential area for improvement or targeted strategies to boost sales in this product category. The data hints at a correlation between membership status and average quantity sold, providing valuable insights for tailoring marketing and sales strategies to different customer segments. Further analysis could delve into the specific factors influencing these quantity trends to optimize product offerings and enhance overall sales performance.

* #### Which payment method reflects the highest sales?

![payment_method](https://github.com/marcrivera9/Customer-Behavior-and-Revenue-Patterns-A-Superstore-Transaction-Analysis/assets/148594670/5939cd13-46fa-45b1-85cf-5ac50569ae59)

#### The data reveals interesting insights into sales distribution across three payment methods: "Credit card," "Ewallet," and "Cash." Despite having the lowest transaction quantity, "Credit card" transactions contribute significantly to total sales, indicating a potentially higher average transaction value. "Ewallet" transactions, while slightly more numerous, also contribute substantially to total sales. Surprisingly, "Cash" transactions, though fewer in quantity, lead in total sales, suggesting that these transactions involve higher purchase amounts. This information provides valuable insights into customer payment preferences and transaction efficiency. Further analysis, considering factors such as average transaction value and customer behavior, could refine strategies related to payment processing and incentivize specific payment methods to optimize sales performance.

* #### How does gender influence the contribution to product lines and the quantity of sales?

![count_per_gender](https://github.com/marcrivera9/Customer-Behavior-and-Revenue-Patterns-A-Superstore-Transaction-Analysis/assets/148594670/e4440534-7fdb-4646-a885-30ec35b3289e)

#### The data illustrates gender-specific trends in product line preferences and sales quantities. Both males and females show notable interest in "Fashion accessories" and "Electronic accessories," indicating shared preferences across genders. However, distinctions emerge in categories like "Food and beverages," where females exhibit slightly higher sales quantities, and "Fashion accessories," where females show a more pronounced preference. "Health and beauty" and "Sports and travel" appeal to both genders, suggesting broad cross-gender appeal. The data provides valuable insights for targeted marketing strategies, emphasizing potential areas for product promotion and inventory management to align with the diverse preferences of male and female customers.

* #### Compute the aggregate sales, cost of goods sold (COGS), and profit for each month.
  
![first_cogs_](https://github.com/marcrivera9/Customer-Behavior-and-Revenue-Patterns-A-Superstore-Transaction-Analysis/assets/148594670/7d5754cb-5aa5-411b-b818-9bfdd9219df9)

#### The provided data encapsulates the financial performance for the first quarter of 2019, outlining total sales, cost of goods sold (COGS), and profit for each respective month. In Month 1, total sales amounted to $116,292.11, generating a profit of $5,537.95. Month 2 witnessed total sales of $97,219.58, resulting in a profit of $4,629.70. For Month 3, total sales reached $109,455.74, with a profit of $5,212.40. This quarterly breakdown offers insights into the revenue generation, cost management, and overall financial dynamics during the initial three months of the specified year. Further analysis could delve into percentage growth, trends, or industry benchmarks for a more comprehensive evaluation.

* #### Compute now per product line
  
![prodductline](https://github.com/marcrivera9/Customer-Behavior-and-Revenue-Patterns-A-Superstore-Transaction-Analysis/assets/148594670/39758e8c-839b-4fe8-bc84-34afcd8661b8)

#### The presented data summarizes the financial performance of distinct product lines, encompassing total sales, cost of goods sold (COGS), and gross profit. "Food and beverages" emerge as the highest-performing product line with the top sales, followed closely by "Sports and travel" and "Electronic accessories." Conversely, "Health and beauty" demonstrates lower figures across sales, COGS, and gross profit, suggesting potential areas for improvement. The consistent ratios between sales, COGS, and gross profit across various product lines indicate a balanced approach to cost management and revenue generation. This comprehensive overview provides valuable insights for strategic decision-making, highlighting both strengths and areas with growth potential within the supermarket's product portfolio.

* #### Does the time of day influence the number/amount of sales?

![time_of_day](https://github.com/marcrivera9/Customer-Behavior-and-Revenue-Patterns-A-Superstore-Transaction-Analysis/assets/148594670/129bef09-984d-4dae-b397-7b9cc3b76705)

#### The data reveals distinct patterns in the number of sales associated with different time intervals throughout the day. Peak sales occur during the late afternoon and early evening, notably at 19:00 (7:00 PM) with 113 sales. Afternoon hours from 13:00 (1:00 PM) to 15:00 (3:00 PM) also exhibit high sales activity. The morning and early afternoon show moderate sales, with the lowest occurring at 16:00 (4:00 PM). Evening sales maintain a reasonable level until 20:00 (8:00 PM). These insights can guide strategic decisions related to staffing, inventory management, and targeted marketing efforts during peak sales hours, optimizing overall business operations and customer satisfaction.

* #### Number/amount of sales per city.

![sales_per_city](https://github.com/marcrivera9/Customer-Behavior-and-Revenue-Patterns-A-Superstore-Transaction-Analysis/assets/148594670/e0bf3ffc-aac0-48fa-9877-3352b237546e)

#### The data presents sales metrics for three cities: Naypyitaw, Yangon, and Mandalay. Yangon leads with 340 sales, totaling $106,200.57, followed closely by Mandalay with 332 sales and $106,198.00. Naypyitaw trails with 328 sales, amounting to $110,568.86. These figures provide a comparative overview of sales performance across cities, offering insights that could inform strategic decisions related to marketing and resource allocation.

* #### Average rating per City.

![rating_per_city](https://github.com/marcrivera9/Customer-Behavior-and-Revenue-Patterns-A-Superstore-Transaction-Analysis/assets/148594670/3c5aa7b4-748b-4f07-9f98-a8a9a2b1faf1)

* #### Averge rating per Product Line.

![avg_product_line](https://github.com/marcrivera9/Customer-Behavior-and-Revenue-Patterns-A-Superstore-Transaction-Analysis/assets/148594670/5f6c0e12-c51f-4075-9107-ae328e28637a)

#### The data reveals consistently high average ratings for various product lines, reflecting a positive overall customer perception. While specific categories such as "Food and beverages," "Fashion accessories," and "Health and beauty" have slightly higher ratings, the overall trend suggests a balanced and favorable response from customers across diverse product lines. This indicates a generally satisfied customer base, essential for maintaining a positive brand image and encouraging repeat business.

## STRA


















# DATA

The data used comes from Kaggle.com:

Link : (https://www.kaggle.com/datasets/aungpyaeap/supermarket-sales)
