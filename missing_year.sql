SELECT COUNT(*) AS missing_year
FROM products
WHERE year_added IS NULL;
