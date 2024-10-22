![image](https://github.com/mynameisfho/My-Data-Analyst-Portofolio/blob/main/Examining%20Unicorn%20Companies/companies.jpg)

### Description: 
**Did you know** that the average stock market return is [10% per year](https://www.nerdwallet.com/article/investing/average-stock-market-return) (before factoring in inflation)? But who wants to settle for average returns?

We've been assisted an investment firm by analyzing trends in rapidly growing companies who want insights into which sectors are generating the highest valuations and how quickly new high-value businesses are emerging. By providing this information, we’ll make a strategic edge on industry trends and help guide how the companies should shape their portfolio for the future.

### Tools: 
SQL and Excel

### Data:
Here are the dataset ['companies.csv'](https://github.com/mynameisfho/My-Data-Analyst-Portofolio/blob/main/Examining%20Unicorn%20Companies/companies.csv), ['dates.csv'](https://github.com/mynameisfho/My-Data-Analyst-Portofolio/blob/main/Examining%20Unicorn%20Companies/dates.csv), ['funding.csv'](https://github.com/mynameisfho/My-Data-Analyst-Portofolio/blob/main/Examining%20Unicorn%20Companies/funding.csv), and ['industries.csv'](https://github.com/mynameisfho/My-Data-Analyst-Portofolio/blob/main/Examining%20Unicorn%20Companies/industries.csv), which contains the following tables:

#### dates
| Column       | Description                                  |
|------------- |--------------------------------------------- |
| `company_id`   | A unique ID for the company.                 |
| `date_joined` | The date that the company became a unicorn.  |
| `year_founded` | The year that the company was founded.       |

#### funding
| Column           | Description                                  |
|----------------- |--------------------------------------------- |
| `company_id`       | A unique ID for the company.                 |
| `valuation`        | Company value in US dollars.                 |
| `funding`          | The amount of funding raised in US dollars.  |
| `select_investors` | A list of key investors in the company.      |

#### industries
| Column       | Description                                  |
|------------- |--------------------------------------------- |
| `company_id`   | A unique ID for the company.                 |
| `industry`     | The industry that the company operates in.   |

#### companies
| Column       | Description                                       |
|------------- |-------------------------------------------------- |
| `company_id`   | A unique ID for the company.                      |
| `company`      | The name of the company.                          |
| `city`         | The city where the company is headquartered.      |
| `country`      | The country where the company is headquartered.   |
| `continent`    | The continent where the company is headquartered. |

### Data Outputs:
Identifying the top three industries that performed the best based on the total number of new unicorns created in 2019, 2020, and 2021 combined.
- determine the number of unicorns within each industry
- the year they achieved unicorn status
- their average valuation in billions of dollars, rounded to two decimal places

With this data, we can complete the query to return a table showing the industry, year, number of unicorns, and the average valuation in billions. For clarity, the results be sorted by year and number of unicorns, both in descending order.

### Code:
[Examining Unicorn Companies](https://github.com/mynameisfho/My-Data-Analyst-Portofolio/blob/main/Examining%20Unicorn%20Companies/unicorn_companies.ipynb)