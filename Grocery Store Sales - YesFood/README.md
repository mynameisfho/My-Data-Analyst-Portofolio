# Grocery Store Sales - YesFood

### Description: 
YesFood is a grocery store offering a variety of items, including produce, meat, dairy, baked goods, snacks, and other essential household foods. As food prices increase, YesFood aims to ensure they stock products across all categories that cater to a wide range of price points, making sure they have options for all types of customers.

### Tools: 
SQL and Excel

### Data:
The data is available in the table ['products.csv'](https://github.com/mynameisfho/My-Data-Analyst-Portofolio/blob/main/Grocery%20Store%20Sales%20-%20YesFood/products.csv).
The dataset includes records of customer purchases from the last full year (2022) of the loyalty program.

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

### Data Outputs:
- Table 1. During 2022, a bug in the product system caused the `year_added` value to be missing for some products introduced that year. Since the year a product was added could affect its price, having this information is crucial. The table identifies how many products have a missing `year_added` value.
    - Fields : 1
    - Records : 1
- Table 2. Clean the missing values
    - Fields : 8
    - Records : 1700
- Table 3. To analyze price variations, this query identifies the minimum and maximum prices for each product category.
    - Fields : 3
    - Records : 5
- Table 4. Additionally, the table focuses on meat and dairy products where the average units sold exceeded ten, allowing for a more detailed analysis.
    - Fields : 3
    - Records : 698

### Code:
[Grocery Store Sales : YesFood](https://github.com/mynameisfho/My-Data-Analyst-Portofolio/blob/main/Grocery%20Store%20Sales%20-%20YesFood/grocery_store_sales.ipynb)
