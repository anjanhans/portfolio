# E-commerce Sales & Order Performance Dashboard

## 1. Background  and Overview

This Project analyses e-commerce sales and order performance data to show trends in revenue, product, category, customer order behaviour, their returns and cancellations.

The primary goal is to identify:

- Which category drive most revenue
- How order status impact  business performance
- Trends in quarterly sales
- Operational issues such as return and cancellation rates

The dataset was initially messy and required cleanin. 
Data preparation was performed in “Excel”  and the final dashboard was built using “Tableau”


## 2. Data Structure and Overview

### Dataset Columns

The data has a total of 103 rows and 11 columns.

Each row represents a single order transaction placed by a customer, including the product, category, quantity, order status, payment method, order value.


- COLUMNS AND THEIR DESCRIPTION 
<img width="395" height="727" alt="5aaa95c4-fad9-4a4e-beee-9301513e74a2" src="https://github.com/user-attachments/assets/7b0a4195-2ed2-48cd-8f6b-3132285330c7" />

### Data Preparation  

The raw dataset contained inconsistencies and is cleaned using Excel . For  cleaning the data, following operations were done :

- Duplicate removal 
- Missing and mistyped or unusual data check
- Category name correction
- Quantity field typo
- Price columns mistyped values
- Date format standardization

Raw dataset : ** 103 orders **

Final cleaned dataset size : ** 100 orders **


## 3. Executive Summary

This analysis highlights the overall business performance

<img width="1232" height="790" alt="49e6ab4e-c7d5-4349-924e-8c8e349d9442" src="https://github.com/user-attachments/assets/a205bbdb-edd0-4715-9f9b-74f44ecc1100" />

### Key KPI's

-  Total Revenue :- ₹ 158,000
-  Total Orders :- 100
-  Average Order Value :- ₹ 1,580
-  Return Rate :- 27 %
-  Cancel Rate :- 15 %


### Key Findings 

- Electronics Category generated the highest revenue contribution 

- Books Category is the second best performing 

- In year 2025, Q1 showed the peak revenue performance

- Return rated are significantly high and needs to be looked on

- Order cancellations is moderate but needs attention

- Here, major issue is very high return rates (27%) and cancellation rates (15%).
  That is 42 % of the total orders are not successfully completed or delivered.
  And only 11 % of the orders are delivered, which is very low .



## 4 . Insights Deep Dive

### Revenue by Category

￼<img width="406" height="376" alt="82d305ae-0613-4623-88d0-b3355113c6cb" src="https://github.com/user-attachments/assets/4c7a8e60-b971-4ba4-8d47-cfd2fb84d45c" />


Electronics is the highest revenue-generating category, contributing approximately ~ ₹ 40,000 in total sales

Books followed with approximately 	~ ₹ 38,000

These two segments has strong customer demand 


### Sales Trend Analysis

Quarterly sales trends indicate :


<img width="738" height="282" alt="869931bd-3aa6-47fd-85c1-a1cad1e3cde3" src="https://github.com/user-attachments/assets/de515b9a-81d7-402e-9490-fd3b25ad7546" />



- Q1 of 2025 has the highest sales of ₹ 39,691

- Revenue dropped significantly in the following quarter

- Q4 of 2025 shows a notable decline to ₹ 1,383

This indicates :-

* Seasonality
* Low customer retention 


### Order Status Analysis


<img width="368" height="267" alt="e512feef-9d9f-4c23-ae68-bdc4d3377cee" src="https://github.com/user-attachments/assets/e51c12c3-7d8e-438b-afe3-9562e379c973" />

 
Here the most notable and concerning things were

- Returned -> ** 27 % **
- Cancelled -> * 15 % **

High return rates can negatively impact:

- Profitability
- Logistics cost

The relatively high Return Rate and Cancellation Rate may indicate the issues customers could have faced such as delivery delays, wrong product, issue with oroduct quality.

It may suggest some amount of customer dissatisfaction after purchasing.


### Payment Method vs Status

Show count of orders according to their respective status and their payment method

￼<img width="696" height="373" alt="e1dab708-f48b-48ed-a336-aaa1ae34ee20" src="https://github.com/user-attachments/assets/7bf315aa-783b-49a4-9823-a14aa282c18e" />


- COD has a  significant number of returns and cancellations

- Credit card payments has high returns

- Some payments types have high processing volume



## 5. Recommendations

Based on the analysis, the recommendations are :


### Reduce Returns and Cancellation

- Review product that have high return rate and their reason
- Improve product details on the sites
- Quality Control of Products being sold


### Improve Sales Retention

- Investigate the reason of sales drop after Q1 high sales
- Re-engage customers through offers, discounts and marketing campaigns.

### Optimize Order Processing

- Reduce long processing stages of orders
- Analyse whether long processing is the reason for cancellation
- Improve processing and delivery speed could reduce cancellation

### Focus on Top Categories

- Prioritise Electronics and Books
- Increase marketing and campaigns/promotion for these categories

### Improve Low-Performing Categories

- Review low-revenue category producsts to understand whether the issue is low demand, price, or quality issues.
- Asses the visibility of these products to potential customers.


# Data Source 

The dataset used was sourced from Kaggle

- Dataset Name : Messy E-Commerce Sales Dataset
- Source Link : https://www.kaggle.com/datasets/kandeelai22/messy-e-commerce-sales-dataset
