# Grocery Store Sales - YesFood
**Description:** YesFood is a grocery store and sells items such as produce, meat, dairy, baked goods, snacks, and other household food staples. As food costs rise, YesFood wants to make sure it keeps stocking products in all categories that cover a range of prices to ensure they have stock for a broad range of customers. 

**Tools:** MySQL and Excel

**Data**
The data is available in the table [`products.csv`](mynameisfho/My-Data-Analyst-Portofolio/Grocery Store Sales - YesFood/products.csv)
The dataset contains records of customers for their last full year (2022) of the loyalty program.

| Column Name | Criteria                                                |
|-------------|---------------------------------------------------------|
|product_id | Nominal. The unique identifier of the product. </br>Missing values are not possible due to the database structure.|
| product_type | Nominal. The product category type of the product, one of 5 values (Produce, Meat, Dairy, Bakery, Snacks). </br>Missing values should be replaced with “Unknown”. |
| brand | Nominal. The brand of the product. One of 7 possible values. </br>Missing values should be replaced with “Unknown”. |
| weight | Continuous. The weight of the product in grams. This can be any positive value, rounded to 2 decimal places. </br>Missing values should be replaced with the overall median weight. |
| price | Continuous. The price the product is sold at, in US dollars. This can be any positive value, rounded to 2 decimal places. </br>Missing values should be replaced with the overall median price. |
| average_units_sold | Discrete. The average number of units sold each month. This can be any positive integer value. </br>Missing values should be replaced with 0. |
| year_added | Nominal. The year the product was first added to FoodYum stock.</br>Missing values should be replaced with 2022. |
| stock_location | Nominal. The location that stock originates. This can be one of four warehouse locations, A, B, C or D </br>Missing values should be replaced with “Unknown”. |

**Outputs:**
- Table 1. Last year (2022) there was a bug in the product system. For some products that were added in that year, the `year_added` value was not set in the data. As the year the product was added may have an impact on the price of the product, this is important information to have. Here's the code to determine how many products have the `year_added` value missing.
    - Fields : 1
    - Records : 1
- Table 2. This query cleans the missing values
    - Fields : 8
    - Records : 1700
- Table 3. To find out how the range varies for each product type, this query determines the minimum and maximum values for each product type.
    - Fields : 3
    - Records : 5
- Table 4. Here, to look in more detail at meat and dairy products where the average units sold was greater than ten.
    - Fields : 3
    - Records : 698

**Code:** [`Grocery Store Sales : YesFood.sql`](mynameisfho/My-Data-Analyst-Portofolio/Grocery Store Sales - YesFood/grocery_store_sales_sql_scripts.sql)