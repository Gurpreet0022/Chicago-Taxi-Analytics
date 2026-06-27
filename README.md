# Chicago Taxi Analytics — Fare, Demand & Tipping Behavior

## Project Overview
An end-to-end data analytics project analyzing 5.5M+ Chicago taxi trips (2022) 
to uncover demand patterns, fare behavior, and tipping trends using 
Google BigQuery and Looker Studio.

---

## Business Problem
> How can a taxi aggregator optimize driver allocation and pricing strategy 
> by understanding when demand peaks, what drives higher fares, and what 
> influences passengers to tip?

---

## Dashboard
[View Live Dashboard](https://datastudio.google.com/s/rWvb6YciAuY)

**Page 1: Demand & Operations**
![Page 1](screenshots/page1_demand_operations.png)

**Page 2: Fare & Tip Behavior**
![Page 2](screenshots/page2_fare_tip.png)

---

## Dataset
- **Source:** Google BigQuery Public Dataset
- **Table:** `bigquery-public-data.chicago_taxi_trips.taxi_trips`
- **Scope:** 2022 (filtered for clean records)
- **Clean records analyzed:** 5,581,779 trips

---

## Tools Used
| Tool | Purpose |
|---|---|
| Google BigQuery | Data storage, SQL analysis, Views |
| SQL | Data cleaning, aggregation, window functions |
| Looker Studio | Interactive dashboard, live BigQuery connection |
| GitHub | Version control, project documentation |

---

## Project Structure
chicago-taxi-analytics/
│

├── queries/          # All 8 SQL queries saved as BigQuery views

├── screenshots/      # Dashboard screenshots

└── README.md

---

## Business Questions Answered

1. How did taxi demand trend across 2022?
2. Which hours and days see the highest trip volume?
3. Which companies dominate Chicago's taxi market?
4. How does trip distance affect fare and profitability?
5. Do card payment passengers tip significantly more than cash passengers?
6. Which distance bucket is most profitable per minute for drivers?

---

## Key Insights

- **Peak month:** June recorded the highest trip volume in 2022 with 557K+ trips
- **Peak hours:** Weekday trips peak between 7–10 AM and 4–7 PM
- **Market leader:** Flash Cab dominates with 1.5M+ trips — 3x the next competitor
- **Tip behavior:** Credit card passengers tip on average $X vs $0 for cash passengers
- **Profitability:** Short trips (0–1 miles) generate the highest fare per minute at $X/min
- **Avg fare:** $X per trip across 5.5M clean records

---

## SQL Approach
- Filtered out NULL fares, tips, and zero-mile trips for data quality
- Used **CTEs** for readable query structure
- Used **SAFE_DIVIDE** to avoid division-by-zero errors
- Used **EXTRACT** for time-based aggregations
- Saved all queries as **BigQuery Views** for live Looker Studio connection
- Applied **CASE WHEN bucketing** for distance segmentation

---

## How to Run
1. Open [Google BigQuery Sandbox](https://cloud.google.com/bigquery/docs/sandbox) (free)
2. Copy any query from the `queries/` folder
3. Replace `your_project` with your GCP project ID
4. Run the query — results match the dashboard views

---

## Connect
**Gurpreet Kaur**
