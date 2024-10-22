![image](https://github.com/mynameisfho/My-Data-Analyst-Portofolio/blob/main/Analyzing%20Airbnb%20Market%20Trends/hotel.jpg)

### Description:
**New York City,** one of the most popular tourist destinations worldwide. To meet the high demand for short-term lodging, the city offers numerous Airbnb listings, accommodating stays ranging from a few nights to several months. 

### Tools: 
Python and Excel

### Data:
In this project, we analyze the New York Airbnb market by combining data from various file formats, including .csv, .tsv, and .xlsx. These of data are available: ['airbnb_price.csv'](https://github.com/mynameisfho/My-Data-Analyst-Portofolio/blob/main/Analyzing%20Airbnb%20Market%20Trends/airbnb_price.csv); ['airbnb_room_type.xlsx'](https://github.com/mynameisfho/My-Data-Analyst-Portofolio/blob/main/Analyzing%20Airbnb%20Market%20Trends/airbnb_room_type.xlsx); and ['airbnb_last_review.tsv'](https://github.com/mynameisfho/My-Data-Analyst-Portofolio/blob/main/Analyzing%20Airbnb%20Market%20Trends/airbnb_last_review.tsv)   

Three files containing data on 2019 Airbnb listings are available:

**data/airbnb_price.csv**
This is a CSV file containing data on Airbnb listing prices and locations.
- **`listing_id`**: unique identifier of listing
- **`price`**: nightly listing price in USD
- **`nbhood_full`**: name of borough and neighborhood where listing is located

**data/airbnb_room_type.xlsx**
This is an Excel file containing data on Airbnb listing descriptions and room types.
- **`listing_id`**: unique identifier of listing
- **`description`**: listing description
- **`room_type`**: Airbnb has three types of rooms: shared rooms, private rooms, and entire homes/apartments

**data/airbnb_last_review.tsv**
This is a TSV file containing data on Airbnb host names and review dates.
- **`listing_id`**: unique identifier of listing
- **`host_name`**: name of listing host
- **`last_review`**: date when the listing was last reviewed

### Data Outputs: 
We’ve gathered Airbnb listing data from various sources to explore the short-term rental market in New York, focusing on private rooms.
- What are the dates of the earliest and latest reviews? Store these in two separate variables.
- How many of the listings are private rooms? Store this value into a variable.
- What is the average listing price? Round the result to two decimal places and store it in a variable.
- Combine these new variables into a DataFrame named `review_dates`, which should include four columns in this order: `first_reviewed`, `last_reviewed`, `nb_private_rooms`, and `avg_price`. The DataFrame should contain only one row of data.

### Code:
[Analyzing Airbnb Market Trends](https://github.com/mynameisfho/My-Data-Analyst-Portofolio/blob/main/Analyzing%20Airbnb%20Market%20Trends/airbnb_market_trends.ipynb)
