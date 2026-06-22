# E-COMMERCE FUNNEL CONVERSION AND ACQUISITION ANALYSIS

## 1.Background & Overview

This project analyses customer behaviour across an e-commerce funnel to understand how users progress from browsing products to completing a purchase,

The analysis focuses on user behaviour across different funnel stages:

Browse - Add to cart - Checkout - Purchase

And identifying conversion blockages, evaluating customers conversion rate  across channels and understanding the factors which supports revenue generation.

### Key Business Questions 

1.	Where are users dropping off in the funnel?
2.	How effectively do users move through the conversion funnel?
3.	How do devices influence conversion and revenue performance?
4.  Which channels generate the most revenue?
5.	Which product categories contribute the most sales?
6.	Which acquisition channels drive the highest revenue?


## 2. Data Structure and Overview

<img width="504" height="683" alt="Column Name" src="https://github.com/user-attachments/assets/96aeea61-2254-4603-be5a-803ae6cf68ae" />


	•	The datasets has 21,409 Rows and 10 Columns.

## 3. Data Preparation

Before starting analysis, the dataset was checked before analysis to ensure data quality and consistency.

The following data check  were performed:

	•	Reviewed dataset structure and dimension
	•	Checked data types and fixed data type to correct type
	•	Checked missing and duplicated values
	•	Validated categorical values
	•	Standardised column names by:
          - Converting all column names to lowercase.
          - Replacing spaces with underscore(_) for easier referencing in pandas.

Here no significant data quality issues were found and the dataset was mostly clean and ready to use for analysis.


## Feature Engineering

Additional time-based features are created from the “event_time “ 
 column:

	•	Date
	•	Day
	•	Hour

These features were used to analyze customer revenue trends over time and hourly revenue that is which hours customers were more active and generated revenue.

## Bonus Flag Review

During analysing the data, it was found that:-

	•	Browse, Add to Cart, Checkout events were associated with bonus_flag = Yes
	•	Purchase events were associated with bonus_flag = No

The variable in column “bonus_flag” was directly linked to funnel stages (events column) rather than customer behaviour, therefore this column was excluded from  analysis.


## 4. Executive Summary

<img width="1264" height="796" alt="E-COMMERCE SALES   CONVERSION ANALYSIS" src="https://github.com/user-attachments/assets/b75f43bf-5871-4413-b72b-0371675bea4a" />
Here analysis of 10,000 unique users revealed an overall conversion rate of 10.04% from Browse to Purchase.

The strongest customers conversion was observed at the beginning of the funnel, with nearly 69.49% of users adding product to their cart after browsing. 

However, significant numbers of customers dropped-offs occurred during the next stages of purchasing journey.

### Key Findings 

	•	Overall conversion rate is 10.04%.
	•	Largest drop-off occurred between Checkout and Purchase.
	•	Google Ads achieved the highest conversion rate among acquisition channels.
	•	Desktop and Tablets generated the highest revenue $98471.83 and $94620.13 respectively.Mobile devices has a slightly low revenue ($84231.10) than the other two devices.’
	•	Electronics’ is the highest revenue generating product ~ $62,938, followed by ‘Fashion’ products which has ~  $58,075.The lowest was ‘Home’ products which has ~ $50,100. However except Electronics which has the highest revenue, the remaining products generated revenue in similar ranges where the differences between the revenues is quite close.
	•	Revenue remained relatively stable throughout the time period.

## 5. Insights Deep Dive

## (A) Funnel Performace

<img width="690" height="337" alt="Funnel Chart" src="https://github.com/user-attachments/assets/d0c25ec1-2946-44c3-97e8-7e3b5f6e1d7c" />




Customer engagement  is strong during the initial stages of the funnel with 10,000 unique users, with a majority  of users progressing from Browse to Add to Cart ~ 6,949.
Browse to cart rate: 69.49 %

The largest loss of users occurs between between Checkout and Purchase where only 1004 users are completing a Purchase.
Checkout to Purchase Rate: 29.05 %

The strongest engagement is in the beginning of the funnel.

However, conversion decreased substantially after checkout, with one-third of checkout users completed their purchase. Indicating final purchase have the primary conversion issue.


## (B) Conversions and Revenue by Devices and Channels

### Conversion Rate by Channel

<img width="345" height="297" alt="Conversion Rate by Channel" src="https://github.com/user-attachments/assets/445a9716-e254-47d5-8e9e-74b980d9cdae" />


Google Ads achieved the highest conversion rate of ~ 10.58% followed by Social Media which is quite similar that is ~ 10.22%, while Organic traffic has the lowest conversion rate of ~ 9.45%.

<img width="273" height="351" alt="Revenue by Channel" src="https://github.com/user-attachments/assets/a05f4b21-5354-4f77-b1b8-79b4863d769d" />

Users acquired through Google Ads were more likely to complete a purchase and this can be also be seen in “Revenue by Channel” chart where we can see Google Ads generates the highest revenue of $73,862.
And Organic has lowest of $65,973.
Although the conversion rate and revenue of  all channels are close.


### Device Conversion and Revenue

<img width="343" height="297" alt="Conversion Rate by Device" src="https://github.com/user-attachments/assets/d14fa528-f8fa-4844-bc7e-67636424c6b3" />



Desktop and Tablet tops the Conversion Rate with ~ 10%, even though Mobile has nearly the same Conversion Rate ~ 9.47%.

<img width="279" height="216" alt="revenue" src="https://github.com/user-attachments/assets/cd58cb28-d3f2-410f-87f9-a7ecb429f97d" />


Also the revenue from users who used Desktop for shopping contributed to highest revenue of $98,471.83.

### Conversion and Revenue by Products

<img width="266" height="360" alt="Revenue by Product" src="https://github.com/user-attachments/assets/86050373-22c6-4426-8d6b-463dd2072da8" />


Electronics generated the highest revenue ~ $62,938.
Home generated the lowest revenue ~ $50,100.



Electronics products are the largest contributor to total revenue and also it has the highest purchase counts.

The products have a moderate difference between their revenues and are relatively balanced.

### Revenue Trend Analysis



Revenue is stable throughout December 2025 and January 2026 with several spikes during late December.
No major upward or downward trend was observed during this time period.

Customer demand is consistent , this is leading to a stable revenue generation throughout the months.

## 5 . Recommendations

### (A) Improve Checkout Completion

The largest drop-off occurs between Checkout and Purchase. 
Reviewing the customers checkout experience and investigating the issues they face may help improving purchase rates.

### (B) Continue Optimizing and Analyze Channels for Customers Conversion

Google Ads achieved highest conversion rate among all channels. 
Here the gap between channels is not large, analysing what and why Google Ads have stronger performance can help making a strategy
Which we can implement in other channels to improve and optimise performance.

### (C) Investigating mobile  user performance

Mobile users generated lower revenue.
Therefore, further analysis of events of mobile devices could help identify whether there are usage or behaviour factors affecting conversion performance.

### (D) Leverage Strong Product Categories

Electronics generated the highest revenue during the time frame, followed by Fashion and Sports.
Demand patterns within these categories may help planning of future marketing and advert decision.

### (E) Analyse Customer Behaviour Around Revenue Spikes

Revenue remained stable throughout, with visible peaks during late December and early January.
Examining which  channels, devices and products  category contributed most during the revenue peaks in late December and early January.

## 6. Tools Used

###	Python & Pandas :-
   
Used for data preparation, EDA and calculating key business metrics.
Pandas are used for manipulation, aggregation, filtering, grouping and feature engineering.

###	Matplotlib :-

 Used for create visualisations for example revenue trends, funnel analysis and revenue by hour.

###	Seaborn:-

Used to enhance data visualisations and improve chart understandability.

###	Plotly Express:-

Used to create the funnel chart for visualising user progression through the funnel.

###	Tableau:-

Used to build an interactive dashboard for visualising funnel performance, conversion rates, channel performance, device performance and revenue trends.

###	GitHub:-

Used for project documentation and portfolio presentation.

## 7. Data Source

The dataset used in this project is a synthetic e-commerce dataset containing user activity across different events of purchasing journey.

	•	Dataset Name: Funnel Analysis Dataset
	•	Link: https://www.kaggle.com/datasets/dhruvkp07/funnel-analysis-dataset


