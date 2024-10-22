![image](https://github.com/mynameisfho/My-Data-Analyst-Portofolio/blob/main/When%20Was%20the%20Best%20Era%20of%20Video%20Games%3F/video_games.jpg)

### Description:
**Video games are a big industry,** 
with the global gaming market expected to surpass $300 billion by 2027, according to Mordor Intelligence. With such high stakes, major game publishers are heavily motivated to produce the next blockbuster hit. But are video games truly improving, or has the best era of gaming already come and gone?

In this project, we analyze critics and user scores, along with sales data, for the top 400 video games released since 1977. The goal is to determine if there was a "best era" of gaming by identifying the release years that were most favored by users and critics. Additionally, we investigate into the business side by examining sales data for these games.

The analysis will require joining datasets and applying set theory comparisons. The database contains two tables, each limited to 400 rows for this project.

### Tools: 
SQL and Excel

### Data:
The analysis will require joining datasets and applying set theory comparisons. The database contains two tables, each limited to 400 rows for this project.
These of data are available: ['critics_avg_rating_by_year.csv'](https://github.com/mynameisfho/My-Data-Analyst-Portofolio/blob/main/When%20Was%20the%20Best%20Era%20of%20Video%20Games%3F/critics_avg_rating_by_year.csv); ['games_reviews.csv'](https://github.com/mynameisfho/My-Data-Analyst-Portofolio/blob/main/When%20Was%20the%20Best%20Era%20of%20Video%20Games%3F/games_reviews.csv); and ['games_sales.csv'](https://github.com/mynameisfho/My-Data-Analyst-Portofolio/blob/main/When%20Was%20the%20Best%20Era%20of%20Video%20Games%3F/games_sales.csv)   

#### `games_sales` table
| Column | Definition | Data Type |
|-|-|-|  
|name|Name of the video game|`varchar`|
|platform|Gaming platform|`varchar`|
|publisher|Game publisher|`varchar`|
|developer|Game developer|`varchar`|
|games_sold|Number of copies sold (millions)|`float`|
|year|Release year|`int`|

#### `games_reviews` table
| Column | Definition | Data Type |
|-|-|-|
|name|Name of the video game|`varchar`|  
|critic_score|Critic score according to Metacritic|`float`|
|user_score|User score according to Metacritic|`float`|

#### `users_avg_rating_by_year` table
| Column | Definition | Data Type |
|-|-|-|
|year| Release year of the games reviewed |`int`|  
|num_games| Number of games released that year |`int`|
|avg_user_score| Average score of all the games ratings for the year |`float`|

#### `critics_avg_rating_by_year` table
| Column | Definition | Data Type |
|-|-|-|
|year| Release year of the games reviewed |`int`|  
|num_games| Number of games released that year |`int`|
|avg_critic_score| Average score of all the games ratings for the year |`float`|

### Data Outputs: 
- Retrieve the top ten best-selling games, with all columns from the `game_sales` table, sorted in descending order by the `games_sold` column. Name the result `best_selling_games`.
- Get the ten years with the highest average critic scores, considering only years with at least four games released. The output should include columns for the `year`, `num_games` released, and the `avg_critic_score` (rounded to two decimal places). Sort the table by `avg_critic_score` in descending order and name it `critics_top_ten_by_years`.
- Identify the years where critics and users generally agreed that games were highly rated. Return years where either the average critic score was over 9 or the average user score was over 9. Use pre-calculated averages from the `users_avg_year_rating` and `critics_avg_year_rating` tables. The result should include columns for `year`, `num_games`, `avg_critic_score`, `avg_user_score`, and `diff` between the critic and user scores. Sort the table by year in ascending order and name it `the_best_years`.

### Code:
[When Was the Best Era of Video Games?](https://github.com/mynameisfho/My-Data-Analyst-Portofolio/blob/main/When%20Was%20the%20Best%20Era%20of%20Video%20Games%3F/video_games_sql_scripts.sql)
