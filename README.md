# E-commerce Sales Analysis

## Overview
End-to-end analysis of an e-commerce dataset (17,049 transactions, 5,000 customers) 
using SQL, Python, Excel and Power BI. The goal was to understand revenue drivers, 
customer behavior, and what influences customer satisfaction.

## Tools & Skills 
- **SQL (MySQL)** — data exploration, aggregations, window functions
- **Python (pandas, matplotlib, seaborn)** — EDA, data visualization, correlation analysis
- **Power BI** — interactive dashboard with DAX measures and slicers
- **Excel** — pivot tables, SUMIFS, INDEX-MATCH

## Dataset
[E-commerce Customer Behavior Dataset](https://www.kaggle.com/datasets/umuttuygurr/e-commerce-customer-behavior-and-sales-analysis-tr)  
17,049 orders | 5,000 unique customers | Jan 2023 – Mar 2024

## Key Findings

### Revenue
- Total revenue: 21.8M across 15 months
- Electronics dominates (10.4M, 48% of total revenue) driven by high unit price 
  (avg check 5,054 vs dataset average 1,277)
- Istanbul accounts for 26% of all orders — not due to higher spend per order 
  (avg check 1,282, close to overall average) but simply higher customer volume

### Customer Behavior  
- 88.2% of orders come from returning customers — business relies heavily on 
  retention, new customer acquisition is minimal (11.8%)
- Core audience is 26-45 years old (60% of customer base)
- No meaningful difference between male and female customers in spend or rating
- Mobile drives 56% of orders but average check is lower than desktop (1,260 vs 1,310)

### Customer Rating
- Average rating is 3.90/5 across all segments — suspiciously flat
- Correlation analysis across all numeric variables shows near-zero coefficients (±0.02)
- Neither delivery time, price, discount, nor order size explains rating variance
- Conclusion: rating likely reflects habit rather than experience, or is driven by 
  factors absent from this dataset (support quality, packaging, product condition)
- Recommendation: collect qualitative data (support tickets, return reasons, 
  open-ended reviews) to actually understand what drives satisfaction

## Files
- 'analysis.sql` — all SQL queries with comments
- `analysis.ipynb` — Python EDA with visualizations  
- `insights.md` — detailed findings by analysis stage
