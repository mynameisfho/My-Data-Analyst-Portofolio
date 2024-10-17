-- Table 1. Last year (2022) there was a bug in the product system. For some products that were added in that year, the `year_added` value was not set in the data. As the year the product was added may have an impact on the price of the product, this is important information to have. Here's the code to determine how many products have the `year_added` value missing.
SELECT COUNT(*) AS missing_year
FROM products
WHERE year_added IS NULL;

-- Table 2. This query cleans the missing values
SELECT
	product_id,
	product_type,
    CASE 
        WHEN brand = '-' THEN 'Unknown' 
        ELSE brand 
    END AS brand,
    ROUND(CAST(REPLACE(weight, ' grams', '') AS NUMERIC), 2) AS weight,
    ROUND(CAST(price AS NUMERIC), 2) AS price,
	average_units_sold,
    COALESCE(year_added, 2022) AS year_added,
    CASE 
        WHEN stock_location = 'a' THEN 'A'
		WHEN stock_location = 'b' THEN 'B'
		WHEN stock_location = 'c' THEN 'C'
        WHEN stock_location = 'd' THEN 'D'
        ELSE stock_location 
    END AS stock_location
FROM 
    products;

-- Table 3. To find out how the range varies for each product type, this query determines the minimum and maximum values for each product type.
SELECT 
    product_type, 
    MIN(price) AS min_price, 
    MAX(price) AS max_price
FROM 
    products
GROUP BY 
    product_type;

-- Table 4. Here, to look in more detail at meat and dairy products where the average units sold was greater than ten.
SELECT 
    product_id, 
    price, 
    average_units_sold
FROM 
    products
WHERE 
    product_type IN ('Meat', 'Dairy')
    AND average_units_sold > 10;