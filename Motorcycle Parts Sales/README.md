![image](https://github.com/mynameisfho/My-Data-Analyst-Portofolio/blob/main/Motorcycle%20Parts%20Sales/biker.jpg)

The company operates three warehouses in the region, selling both retail and wholesale. They provide a wide range of parts and accept payment via credit cards, cash, and bank transfers, each of which comes with varying fees.

The board of directors seeks a deeper understanding of wholesale revenue by product line and how it fluctuates month-to-month across the different warehouses. Your task is to calculate the net revenue for each product line, grouped by month and warehouse. The results should only include orders classified as `"Wholesale"`.

The dataset is given, which contains a table named `motorcycle_parts_sales`.

## Sales
| Column | Data type | Description |
|--------|-----------|-------------|
| `order_number` | `VARCHAR` | Unique order number. |
| `date` | `DATE` | Date of the order, from June to August 2021. |
| `warehouse` | `VARCHAR` | The warehouse that the order was made from&mdash; `North`, `Central`, or `West`. |
| `client_type` | `VARCHAR` | Whether the order was `Retail` or `Wholesale`. |
| `product_line` | `VARCHAR` | Type of product ordered. |
| `quantity` | `INT` | Number of products ordered. | 
| `unit_price` | `FLOAT` | Price per product (dollars). |
| `total` | `FLOAT` | Total price of the order (dollars). |
| `payment` | `VARCHAR` | Payment method&mdash;`Credit card`, `Transfer`, or `Cash`. |
| `payment_fee` | `FLOAT` | Percentage of `total` charged as a result of the `payment` method. |