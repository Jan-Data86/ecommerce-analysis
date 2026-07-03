## SQL Analysis Insights

### 1. Overview
- 17,049 orders from 5,000 unique clients (3.4 orders per client)
- Avaerage Check: 1,277
- Average Rating: 3.90/5 — pretty low
- Average delivery time: 6.5 days

### 2. Revenue by Category
- Electronics dominates by Revenue (10.4 million, 48% of whole)
- Electronics' Average Check 30 times higher than Books' (5054 vs 163)
- Same Rating within all categories (~3.90) — systemic problem with the rating 

### 3. Delivery VS Rating
- No correlation: Rating is 3.87-3.93 no matter how long is delivery time
- Clients do not rate poorly for long delivery

### 4. Device Types
- 56% of orders from Mobile, but Average Check is less than from Desktop (1260 vs 1310)
- Desktops users spend more per session

### 5. Payment Methods
- Credit Card: highest Average Check (1333) biggest quantity of orders (6801)
- Cash on Delivery: least popular (888 orders, Average Check 1186)

### 5. Retention
- High Retention Percent: 15,039 orders by Returning clients vs 2,010 by New
- Average Checks: Almost equal (1276 vs 1287)
- Average Rating: New Users rate worse than Returning (3.87 vs 3.90)

### 5. Top-10 Cities by Revenue
- Istanbul makes almost 2 times more Revenue than Ankara(2nd city) (5.6 million vs 3 million)
- Average Check is close to average between the cities, Total Revenue in bigger cities is bigger due to Order Quantity 






## Pandas / Python Analysis

### 1. Revenue by month dynamics
- Revenue stays fairly stable across the period (1.3M-1.6M per month)
- Possible peak in December 2023 (1.59M) — could indicate holiday demand, 
  but not enough data (only 15 months) to confirm a real seasonal pattern

### 2. Clients by age group
- Customers aged 26-45 make up ~60% of the customer base (5,183 + 4,997 
  out of 17,444 total)
- The 55+ segment is nearly absent (only 626 customers, ~3.6%) — either 
  this product category doesn't appeal to older shoppers, or they prefer 
  offline/other channels
- Marketing and product decisions should likely prioritize the 26-45 
  segment, since it's both the largest and presumably has the highest 
  purchasing power (mid-career)

  ### 3. Gender comparison
- No meaningful difference between Female and Male customers across 
  orders count, average check, or rating (all within 1-2%)
- "Other" category shows a higher average check (1530 vs ~1270) but 
  the sample is too small (260 orders, 1.5% of total) to draw reliable
  conclusions
- Gender doesn't appear to be a meaningful segmentation variable for
  this business — marketing strategy likely shouldn't be gender-targeted

  ### 4. Cross-validated SQL and pandas results
- Re-ran the Payment_Method breakdown in pandas after building it in SQL —
  results matched exactly. Confirms the aggregation logic is correct and consistent 
  regardless of tool.

  ### 5. What drives Customer Rating? (correlation analysis)

- Ran Pearson correlation between Customer Rating and all numeric variables, all
  coefficients are between-0.012 and +0.007, effectively zero across the board.
- Conclusion: either customers rate randomly/habitually , or rating 
  is driven by factors absent from this dataset — product quality, 
  packaging, customer support interactions
- Business recommendation: to improve rating, collect qualitative 
  data (support tickets, return reasons, review text) — current 
  numeric data alone cannot answer this question.

  
