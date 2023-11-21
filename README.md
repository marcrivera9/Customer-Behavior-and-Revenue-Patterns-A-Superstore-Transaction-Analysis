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

* #### The dataset at hand originates from Kaggle and specifically focuses on the first-quarter sales of a supermarket chain in Turkey. Accessible at this Kaggle link: (https://www.kaggle.com/datasets/aungpyaeap/supermarket-sales), the dataset provides a comprehensive overview of sales data during the initial quarter. Exploring this dataset offers valuable insights into the performance and dynamics of the supermarket chain, laying the groundwork for a detailed analysis of sales trends and customer behavior in the Turkish market.

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










# DATA

The data used comes from Kaggle.com:

Link : (https://www.kaggle.com/datasets/aungpyaeap/supermarket-sales)
