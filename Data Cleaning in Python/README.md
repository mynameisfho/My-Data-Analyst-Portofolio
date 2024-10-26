## Data Cleaning in Python
### Description:
The data cleaning process involves loading the dataset and previewing its structure, then removing prefixes from text columns like "Writtenby" and "Narratedby." Next, we split combined columns, such as ratings and review counts, into separate numerical columns, while handling placeholder values like "Not rated yet." We then adjust data types for optimal analysis, converting prices to float, categorizing columns with limited values, and converting dates to datetime format. For time data, we standardize units, extract hours and minutes, and calculate total time in minutes. Duplicates are identified and removed based on key columns, and missing values are addressed according to analysis needs. Finally, we save the cleaned data, ready for analysis or modeling.

### Tools: 
Python and Excel

### Data:
The dataset ['audible_raw.csv'](https://github.com/mynameisfho/My-Data-Analyst-Portofolio/blob/main/Data%20Cleaning%20in%20Python/audible_raw.csv)is provided.

### Data Outputs: 
Here are the steps:
1. Loading and Reviewing the Dataset
2. Cleaning Text Data in Author and Narrator Columns
3. Splitting the Stars Column into Ratings and Reviews Count
4. Adjusting Data Types
5. Extracting Hours and Minutes from the Time Column
6. Verifying Data Ranges
7. Identifying and Removing Duplicates
8. Handling Missing Values
9. Saving the Cleaned Data ['audible_clean.csv'](https://github.com/mynameisfho/My-Data-Analyst-Portofolio/blob/main/Data%20Cleaning%20in%20Python/audible_clean.csv)is provided.

### Code:
[Data Cleaning in Python](https://github.com/mynameisfho/My-Data-Analyst-Portofolio/blob/main/Data%20Cleaning%20in%20Python/data_cleaning.ipynb)
