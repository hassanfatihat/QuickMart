CREATE TABLE dim_customer (
    customer_id VARCHAR(50),
    customer_name VARCHAR(250),
    email VARCHAR(250),
    city VARCHAR(100),
    state VARCHAR(100),
    customer_segment VARCHAR(100),
    customer_key INT
);

CREATE TABLE dim_product (
    product_id VARCHAR(50),
    product_name VARCHAR(250),
    category VARCHAR(100),
    brand VARCHAR(100),
    unit_price VARCHAR(100),
    product_key INT
);

CREATE TABLE dim_store (
    store_id VARCHAR(50),
    store_name VARCHAR(250),
    city VARCHAR(100),
    state VARCHAR(100),
    regio VARCHAR(100),
    store_type VARCHAR(100),
    store_key INT
);

CREATE TABLE dim_date (
    full_date DATE,
    date_key INT,
    DAY INT,
    MONTH INT,
    YEAR INT,
    Quarter INT,
    day_of_week INT
);


CREATE TABLE fact_sales (
    sale_id VARCHAR(50),
    date_key INT,
    customer_key INT,
    product_key INT,
    store_key INT,
    quantity INT,
    unit_price NUMERIC (12,2),
    sales_amount NUMERIC (14,2)
);


