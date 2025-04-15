# Online_Sales
Author - Kumar Dushyant Patel

# Monthly Sales Trend Analysis (MySQL Project)

This project analyzes monthly sales trends for an Online business using MySQL. The analysis focuses on tracking revenue and order volume over time to identify patterns and seasonal insights.

---

## Dataset

The dataset was cleaned and stored in a MySQL table: `online_sales.sales`.

Key columns:
- `order_date`
- `order_id`
- `total` (order amount)

---

## Tools Used

- MySQL (data cleaning, transformation, and analysis)
- Excel (for result export)

---

## Objectives

- Analyze monthly revenue trends using `SUM(total)`
- Analyze monthly order volume using `COUNT(DISTINCT order_id)`
- Identify seasonality and performance peaks
- Group and sort data using `YEAR(order_date)` and `MONTH(order_date)`

---

## Output Sample

| Year | Month | Revenue | Orders |
|------|-------|---------|--------|
| 2020 | 10    | 1793242 | 2568   |
| 2020 | 12    | 1586051 | 1670   |
| 2020 | 11    | 710628  |  995   |

---

## Folder Contents

| Folder | Description |
|--------|-------------|
| `/SQL` | Clean SQL scripts used for analysis |
| `/Data` | Final output Excel file |



