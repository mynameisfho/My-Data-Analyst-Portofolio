-- Table 1. Table 1. During 2022, a bug in the product system caused the `year_added` value to be missing for some products introduced that year. Since the year a product was added could affect its price, having this information is crucial. The table identifies how many products have a missing `year_added` value. The output should be a single column, `missing_year`, with a single row giving the number of missing values.
SELECT COUNT(*) AS missing_year
FROM products
WHERE year_added IS NULL;

-- Table 2. Clean the missing values
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

-- Table 3. To analyze price variations, this query identifies the minimum and maximum prices for each product category. The query returns the `product_type`, `min_price` and `max_price` columns. 
SELECT 
    product_type, 
    MIN(price) AS min_price, 
    MAX(price) AS max_price
FROM 
    products
GROUP BY 
    product_type;

-- Table 4. Additionally, the table focuses on meat and dairy products where the average units sold exceeded ten, allowing for a more detailed analysis. The query returns the `product_id`, `price` and `average_units_sold` columns.
SELECT 
    product_id, 
    price, 
    average_units_sold
FROM 
    products
WHERE 
    product_type IN ('Meat', 'Dairy')
    AND average_units_sold > 10;