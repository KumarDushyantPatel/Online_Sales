USE online_sales;
SELECT 
    *
FROM
    online_sales.sales;
DESCRIBE sales;
SELECT 
    STR_TO_DATE(order_date, '%Y-%m-%d') AS order_date_converted
FROM
    online_sales.sales;

set sql_safe_updates=0;
UPDATE online_sales.sales 
SET 
    order_date = STR_TO_DATE(order_date, '%Y-%m-%d');

alter table online_sales.sales
modify column order_date date;
describe online_sales.sales;

SELECT 
    YEAR(order_date) AS order_year,
    MONTH(order_date) AS order_month,
    SUM(total) AS monthly_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM
    sales
WHERE
    order_date BETWEEN '2020-01-01' AND '2021-12-31'
GROUP BY YEAR(order_date) , MONTH(order_date)
ORDER BY YEAR(order_date) , MONTH(order_date);

