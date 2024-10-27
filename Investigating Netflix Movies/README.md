![image](https://github.com/mynameisfho/My-Data-Analyst-Portofolio/blob/main/Investigating%20Netflix%20Movies/Netflix-Logo.jpg)

### Description:
**Netflix** which began in 1997 as a DVD rental service, has grown into one of the world's largest entertainment and media companies. With the vast selection of movies and series available on the platform, we can exploratory data analysis and explore the entertainment industry. We suspect that the average duration of movies has been decreasing. Building on their preliminary work, we determine whether movie lengths are really getting shorter and explore any potential contributing factors.

### Tools: 
Python and Excel

### Data:
The dataset is provided on [`netflix_data.csv`](https://github.com/mynameisfho/My-Data-Analyst-Portofolio/blob/main/Investigating%20Netflix%20Movies/netflix_data.csv), along with a table outlining the column names and their descriptions. While the data does include some null values and outliers, dealing with these is beyond the scope of this project. 

| Column | Description |
|--------|-------------|
| `show_id` | The ID of the show |
| `type` | Type of show |
| `title` | Title of the show |
| `director` | Director of the show |
| `cast` | Cast of the show |
| `country` | Country of origin |
| `date_added` | Date added to Netflix |
| `release_year` | Year of Netflix release |
| `duration` | Duration of the show in minutes |
| `description` | Description of the show |
| `genre` | Show genre |

### Data Outputs: 
Conduct exploratory data analysis on the `netflix_data.csv` dataset to gain insights into movies from the 1990s.
- What was the most common **movie** duration during the 1990s? Save an approximate answer as an integer variable named `duration` (using 1990 as the starting year of the decade).
- A movie is classified as short if its duration is less than 90 minutes. Count the number of **short action movies** released in the 1990s and store this count as an integer variable named `short_movie_count`.

### Code:
[Investigating Netflix Movies](https://github.com/mynameisfho/My-Data-Analyst-Portofolio/blob/main/Investigating%20Netflix%20Movies/netflix_data.ipynb)