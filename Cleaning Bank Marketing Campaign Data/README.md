![image](https://github.com/mynameisfho/My-Data-Analyst-Portofolio/blob/main/Cleaning%20Bank%20Marketing%20Campaign%20Data/bank.jpg)

### Description:
Banks generate substantial revenue from personal loans, with the average interest rate for a two-year loan in the UK sitting [around 10%](https://www.experian.com/blogs/ask-experian/whats-a-good-interest-rate-for-a-personal-loan/). While this may seem modest, UK consumers borrowed approximately [£1.5 billion](https://www.ukfinance.org.uk/system/files/2022-12/Household%20Finance%20Review%202022%20Q3-%20Final.pdf) in September 2022 alone source, potentially generating around £300 million in interest for banks over two years.

### Tools: 
Python and Excel

### Data:
A bank has prepare data from a recent marketing campaign aimed at promoting personal loans. They want the data to be cleaned, structured, and formatted to meet specific requirements so it can be used in a PostgreSQL database for ongoing and future campaigns. The provided CSV file, named [bank_marketing.csv](https://github.com/mynameisfho/My-Data-Analyst-Portofolio/blob/main/Cleaning%20Bank%20Marketing%20Campaign%20Data/bank_marketing.csv) needs to be processed, reformatted, and split into three distinct CSV files as per the outlined specifications.

### Data Outputs: 
The provided CSV file, named [bank_marketing.csv](https://github.com/mynameisfho/My-Data-Analyst-Portofolio/blob/main/Cleaning%20Bank%20Marketing%20Campaign%20Data/bank_marketing.csv) needs to clean, reformat, and split the data, saving three final csv files. Specifically, the three files should have the names and contents as outlined below:

## `client.csv`
| column | data type | description | cleaning requirements |
|--------|-----------|-------------|-----------------------|
| `client_id` | `integer` | Client ID | N/A |
| `age` | `integer` | Client's age in years | N/A |
| `job` | `object` | Client's type of job | Change `"."` to `"_"` |
| `marital` | `object` | Client's marital status | N/A |
| `education` | `object` | Client's level of education | Change `"."` to `"_"` and `"unknown"` to `np.NaN` |
| `credit_default` | `bool` | Whether the client's credit is in default | Convert to `boolean` data type:<br> `1` if `"yes"`, otherwise `0` |
| `mortgage` | `bool` | Whether the client has an existing mortgage (housing loan) | Convert to boolean data type:<br> `1` if `"yes"`, otherwise `0` |

## `campaign.csv`
| column | data type | description | cleaning requirements |
|--------|-----------|-------------|-----------------------|
| `client_id` | `integer` | Client ID | N/A |
| `number_contacts` | `integer` | Number of contact attempts to the client in the current campaign | N/A |
| `contact_duration` | `integer` | Last contact duration in seconds | N/A |
| `previous_campaign_contacts` | `integer` | Number of contact attempts to the client in the previous campaign | N/A |
| `previous_outcome` | `bool` | Outcome of the previous campaign | Convert to boolean data type:<br> `1` if `"success"`, otherwise `0`. |
| `campaign_outcome` | `bool` | Outcome of the current campaign | Convert to boolean data type:<br> `1` if `"yes"`, otherwise `0`. |
| `last_contact_date` | `datetime` | Last date the client was contacted | Create from a combination of `day`, `month`, and a newly created `year` column (which should have a value of `2022`); <br> **Format =** `"YYYY-MM-DD"` |

## `economics.csv`
| column | data type | description | cleaning requirements |
|--------|-----------|-------------|-----------------------|
| `client_id` | `integer` | Client ID | N/A |
| `cons_price_idx` | `float` | Consumer price index (monthly indicator) | N/A |
| `euribor_three_months` | `float` | Euro Interbank Offered Rate (euribor) three-month rate (daily indicator) | N/A |

### Code:
[Cleaning Bank Marketing Campaign Data](https://github.com/mynameisfho/My-Data-Analyst-Portofolio/blob/main/Cleaning%20Bank%20Marketing%20Campaign%20Data/cleaning_bank.ipynb)

### Data Results:
[campaign.csv](https://github.com/mynameisfho/My-Data-Analyst-Portofolio/blob/main/Cleaning%20Bank%20Marketing%20Campaign%20Data/campaign.csv)

[client.csv](https://github.com/mynameisfho/My-Data-Analyst-Portofolio/blob/main/Cleaning%20Bank%20Marketing%20Campaign%20Data/client.csv)

[economics.csv](https://github.com/mynameisfho/My-Data-Analyst-Portofolio/blob/main/Cleaning%20Bank%20Marketing%20Campaign%20Data/economics.csv)