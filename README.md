# E-commerce Sales Analysis

## Overview
End-to-end analysis of an e-commerce dataset (17,049 transactions, 
5,000 customers) using SQL, Python, Excel and Power BI. The goal was 
to understand revenue drivers, customer behavior, and what influences 
customer satisfaction — including a predictive model for order value.

## Tools & Skills
- **SQL (MySQL)** — data exploration, aggregations, window functions
- **Python (pandas, matplotlib, seaborn, scikit-learn)** — EDA, 
  data visualization, correlation analysis, linear regression
- **Power BI** — interactive dashboard with DAX measures and slicers
- **Excel** — pivot tables, SUMIFS, INDEX-MATCH

## Dataset
[E-commerce Customer Behavior Dataset](https://www.kaggle.com/datasets/umuttuygurr/e-commerce-customer-behavior-and-sales-analysis-tr)  
17,049 orders | 5,000 unique customers | Jan 2023 – Mar 2024

## Key Findings

### Revenue
- Total revenue: 21.8M across 15 months
- Electronics dominates (10.4M, 48% of total) driven by high unit 
  price (avg check 5,054 vs dataset average 1,277)
- Istanbul accounts for 26% of all orders — not due to higher spend 
  per order but simply higher customer volume (avg check 1,282, 
  close to overall average)

### Customer Behavior
- 88.2% of orders come from returning customers — business relies 
  heavily on retention, new customer acquisition is minimal (11.8%)
- Core audience is 26-45 years old (60% of customer base)
- No meaningful difference between male and female customers in 
  spend or rating (within 1-2%)
- Mobile drives 56% of orders but average check is lower than 
  desktop (1,260 vs 1,310)

### Customer Rating
- Average rating is 3.90/5 across all segments — suspiciously flat
- Full correlation analysis (all numeric variables) shows near-zero 
  coefficients (all within ±0.02)
- Neither delivery time, price, discount, nor order size explains 
  rating variance
- Conclusion: rating likely reflects habit, or is driven by factors 
  absent from this dataset (support quality, packaging)
- Recommendation: collect qualitative data to actually diagnose 
  satisfaction drivers

### Predictive Model (Linear Regression)
- Built a linear regression model to predict Total_Amount from 
  Unit_Price, Quantity, and Discount_Amount
- R² = 0.82 — model explains 82% of variance on unseen test data
- MAE = 542 (~42% of avg check) — acceptable for directional 
  forecasting, too imprecise for exact revenue prediction
- High MAE driven by price dispersion across categories (Electronics 
  at 25,000 vs Books at 50 — one linear formula struggles to fit both)
- Identified next step: category-specific models or Random Forest 
  with category as a feature would significantly reduce error

## Files
- `analysis.sql` — SQL queries with inline result comments
- `analysis_pandas.ipynb` — Python EDA + regression model
- `insights.md` — detailed findings by analysis stage
