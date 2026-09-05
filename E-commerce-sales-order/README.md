# E-commerce Sales & Order Performance Dashboard

## 1. Background  and Overview

This Project analyses an e-commerce business sales performance, product contribution, customer payment behaviour and order completion.

The objective is to:

- Where revenue is concentrated
- Customer Payment Preference
- Which customers contributes to most revenue
- Operational issues such as return and cancellation rates

The dataset was initially messy and required cleaning. 
Data preparation and cleaning was done in “Excel” and final dashboard was built using “Tableau”


## 2. Data Structure and Overview

### Dataset Columns

The data has a total of 103 rows and 11 columns.

Each row represents a single order transaction placed by a customer, including the product,category,quantity,order status,payment method,order value.


- RAW DATA COLUMNS AND THEIR DESCRIPTION 
<img width="395" height="727" alt="5aaa95c4-fad9-4a4e-beee-9301513e74a2" src="https://github.com/user-attachments/assets/7b0a4195-2ed2-48cd-8f6b-3132285330c7" />

### Data Preparation  

The raw dataset contained inconsistencies and is cleaned using Excel.For cleaning the data,following operations were done :

- Duplicate removal 
- Missing and Mistyped or Unusual data check
- Category name correction
- Quantity field typo
- Price columns mistyped values
- Date format standardization


IN TABLEAU - Additional fields were prepared to support the assessment such as Cancelled order count,Returned order count,Cancellation rate,Successful delivery rate,Average Order Value(AOV).

Raw dataset :- 103 Rows (Orders) & 11 Columns

Final cleaned dataset size :- 89 Rows (Orders) & 11 Columns


## 3. Executive Summary

This analysis highlights the overall business performance

<img width="1271" height="804" alt="8128c4c9-b317-48d1-8009-12c83d9c8db6" src="https://github.com/user-attachments/assets/ce6a59e0-39a0-4ea6-84fd-0dbb6a098353" />



The business generated $158,006 across 89 orders, with an Average Order Value of $1,775.
Categorically Electronics generated the highest revenue ($40,140),followed by Books which generated ($38,357).
Together these two categories account for roughly half of the total revenue.
This shows that overall sales performance strongly influenced by a small number of categories.

Product-level performance shows a difference between sales volume and revenue contribution.
For example: Yoga Mat has the highest quantity sold (14 units) among all products and generated $5,695 while Smartphone generated $5,104 from only 8 units.
This indicates that the product demand and revenue contribution are not necessarily proportional.

<img width="1273" height="792" alt="7354cddb-19e2-445d-875a-e0aa360b24aa" src="https://github.com/user-attachments/assets/7fb5e871-6983-4d8f-a042-262050e10af1" />



Payment preferences shows a particularly strong contribution from Cash-On-Delivery(COD).COD has 30 out of 89 orders and generated $64,758 that is approximately 41% of total revenue.
This shows COD is not only the most frequently used payment method but also the largest revenue contributor.

The most significant operational issue is with the Returns and Cancellations.25 orders were returned and 14 were cancelled, which is 28.1% and 15.7% of all orders respectively.
Together these represents 43.8% of the orders status.Returns were particularly focused in the Books category with 10 recorded returns while Electronics recorded the highest cancellation counts among the categories.

## 4 . Insights Deep Dive

### Monthly Revenue Trend

<img width="655" height="294" alt="03df75da-71a1-4d91-9b5b-56d1c39c7ccb" src="https://github.com/user-attachments/assets/cbe05610-748f-4f4e-a360-02dff93a1f4d" />


Revenue activity is concentrated in 2025,while earlier years have limited data.
As 2025 contains transactions across January to November compared with only January 2023 and November to December 2024,the monthly revenue patten in 2025 provides the most useful view of within-period sales fluctuations.
The missing months should be treated as unavailable rather than assumed zero-revenue periods.


### Monthly Order Trend

<img width="610" height="300" alt="35002dc8-6164-48bc-a13a-fbdc57ea2116" src="https://github.com/user-attachments/assets/d3f44771-46fa-403f-bae8-7cc08dadf591" />


Order activity follows the same pattern as revenue, with transactions recorded omly during selected periods.This limits the ability to establish a continuous order-growth trend across the full 2023-2025 period. This trend shows the fluctuations within the months.


### Revenue & Quantity Sold by Categories

<img width="638" height="380" alt="RevQuantitySoldbyCat" src="https://github.com/user-attachments/assets/0d32efcf-60eb-41ce-b5b8-9e5cadec67b3" />

Revenue is concentrated in two categories.Electronics and Books generated $78,497 combined, representing approximately 49.7% of total revenue.This means that performance in these two categories has a significant influence on overall revenue results.

Therefore these categories should be monitored closely when analysing sales performance and volumes.

### Revenue & Quantity Sold by Products

<img width="633" height="380" alt="RevQuantitySoldProduct" src="https://github.com/user-attachments/assets/fb1f5756-ec27-4823-b35f-c8ed52762294" />


Product volume is not directly proportional to revenue contribution.Yoga Mat recorded 14 units sold and generated $5,695, while Smartphone generated $5,104 from only 8 units.This indicates that products with lower sales volume can still make similar revenue contribution, making it important to evaluate product performance using both volume and revenue rather than one metric.

### Top Paying Customers

<img width="358" height="310" alt="Top5cust" src="https://github.com/user-attachments/assets/d38b68af-5674-4eb5-8cac-a7a606132e6c" />

The Top 5 customers contributed approximately $41,584,equivalent to approximately 26.3% of total revenue.The highest value customer alone contributed $20,000 easily exceeding the other customers in the ranking.This shows that overall revenue is directly impacted by purchasing activity of high-value customers.

### Revenue & Orders by Payment Method

<img width="466" height="305" alt="RevOrdbyPaymentMethod" src="https://github.com/user-attachments/assets/46898525-d42a-4c14-959b-55935ee26e97" />


Cash-on-Delivery(COD) accounted for 30 out of 89 orders, making it the most-used payment method but also the revenue contribution is even higher: $64,758 that is approximately 41% of total revenue.This indicates that COD has higher preference and reliability among customers.

### Order Status Distribution

<img width="509" height="348" alt="OrdStatusDist" src="https://github.com/user-attachments/assets/3b8600a0-deae-4f7d-aaba-94f22cb0e9eb" />


The order-status distribution shows a significant gap between orders placed and successfully delivered.Only 10 out of 89 orders were recorded were recorded as delivered,while 25 were returned,14 cancelled,20 remained in processing and 20 were shipped.The high number of non-delivered outcomes makes order fulfilment a key area for attention.

The data shows the issue but doesn't have sufficient reason on why the orders were returned or cancelled or are in processing.Further investigation using the cancellation reasons, return reason, delivery duration and inventory availability is required to identify the underlying causes.

### Cancellations & Returns by Category

<img width="438" height="315" alt="ReturnCancelbyCat" src="https://github.com/user-attachments/assets/6be1894e-df4e-499c-9dc8-21b10eb12283" />


Returns and Cancellation patterns are not concentrated in the same category.Books recorded the highest number of returns at 10, while Electronics recorded the highest cancellation count at 4.This suggests that the categories that has most returns or cancellations are not necessarily the same categories driving cancellations or returns, therefore these should be investigation as separate operational issue.

### Payment Method by Order Status

<img width="746" height="350" alt="PaymenrMethodbyStatus" src="https://github.com/user-attachments/assets/33180e43-a762-41f4-864c-a05e2d74c927" />


COD has the highest number of cancellations and returns in the dataset, but it also has the highest order volume.Therefore,the observed counts alone are insufficient to conclude that COD has poor order performance.

Payment method specific Cancellation and Returns Rates should be calculated using the number of orders within each payment method.


## 5. Recommendations

Based on the analysis, the recommendations are :

### Prioritise high-revenue categories

Electronics and Books together account for approximately 49.7% of revenue.Inventory and sales performance should be closely monitored for these categories because performance and demand changes in either category could affect the overall revenue.


### Moitor high-value customers

The top five customers contribute approximately 26.3% of total revenue with highest payments of $20,000.These customers should be grouped as high-value customer segment.

### Investigate the return problem

Returns represent 28.1% of orders in the dataset with Books having 10 recorded returns.The underlying reasons for returns in Books should be analysed before taking any corrective measures.Return reason, product reviews, customer feedback and order delivery status and duration would help determine whether the issue is product related, operational or customer expectations/experience.

### Investigating Cancellations separately

Electronics recorded the highest cancellation count of 4.Since cancellation and return patterns differs by category, cancellation should be investigated independently rather than treating all unsuccessful orders as a single issue.

### Review payment-method performance and prioritise improvement areas

COD represents the largest share of orders and revenue, also it has the most number of returns and cancellations.The bye usiness should review payment-method performance,particularly for COD to identify where order outcomes can be improved and prioritise operational actions based on payments methods with high returns and cancellations. 

# Data Source 

The dataset used was sourced from Kaggle

- Dataset Name : Messy E-Commerce Sales Dataset
- Source Link : https://www.kaggle.com/datasets/kandeelai22/messy-e-commerce-sales-dataset
