
-- Total Sales
SELECT SUM(sales_amount) AS total_sales
FROM fact_sales;

-- Sales by Product
SELECT 
    p.product_name,
    SUM(f.sales_amount) AS total_sales 
FROM fact_sales f
JOIN dim_product p
    ON f.product_key = p.product_key 
GROUP BY p.product_name 
ORDER BY total_sales DESC;

--Sales by Store
SELECT 
    s.store_name,
    SUM(f.sales_amount) AS total_sales
FROM fact_sales f
JOIN dim_store s
    ON f.store_key = s.store_key 
GROUP BY s.store_name 
ORDER BY total_sales DESC;

--Sales by Month

SELECT 
    d.year,
    d.MONTH,
    SUM(f.sales_amount) AS total_sales
FROM fact_sales f
JOIN dim_date d
    ON f.date_key = d.date_key 
GROUP BY d.YEAR, d.month 
ORDER BY d.YEAR, d.month;