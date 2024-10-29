![image](https://github.com/mynameisfho/My-Data-Analyst-Portofolio/blob/main/Examining%20International%20Debt%20Statistics/debt.jpg)

### Description:
Countries often incur debt not just for basic necessities but also to stimulate economic growth. For instance, infrastructure investments are essential for ensuring a comfortable life for their citizens. The World Bank is the institution that extends loans to countries.

In this project, we will analyze international debt data gathered by The World Bank. We will utilize the data manipulation skills to identify which countries have the highest and lowest levels of debt.

We will seek answers to the following questions:
- How many distinct countries are included in the database?
- Which country has the highest total debt?
- Which country has the lowest repayment amount?

### Tools: 
SQL and Excel

### Data:
The dataset provides information about the debt amounts (in USD) owed by developing countries across various categories. Here is the dataset: ['international_debt.csv'](https://github.com/mynameisfho/My-Data-Analyst-Portofolio/blob/main/Examining%20International%20Debt%20Statistics/international_debt.csv).

Below is a description of the table that will be analyzing:

## `international_debt` table

| Column | Definition | Data Type |
|-|-|-|
|country_name|Name of the country|`varchar`|
|country_code|Code representing the country|`varchar`|
|indicator_name|Description of the debt indicator|`varchar`|
|indicator_code|Code representing the debt indicator|`varchar`|
|debt|Value of the debt indicator for the given country (in current US dollars)|`float`|

### Data Outputs: 
- Determine the number of distinct countries in the database. The output should be a `single` row with a column aliased as `total_distinct_countries`. Save this query as `num_distinct_countries`.

- Identify which country has the highest total debt. Your output should include `two` columns: `country_name` and `total_debt`, and it should return `one` row. Save this query as `highest_debt_country`.

- Find the country with the lowest principal repayments, as indicated by the "DT.AMT.DLXF.CD" indicator code. The resulting table should contain `three` columns: `country_name`, `indicator_name`, and `lowest_repayment`, and it should return `one` row. Save this query as `lowest_principal_repayment`.

### Code:
[Examining International Debt Statistics](https://github.com/mynameisfho/My-Data-Analyst-Portofolio/blob/main/Examining%20International%20Debt%20Statistics/international_debt.ipynb)
