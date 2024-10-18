![image](https://github.com/mynameisfho/My-Data-Analyst-Portofolio/blob/main/When%20Was%20the%20Best%20Era%20of%20Video%20Games%3F/video_games.jpg)

### Video games are a big industry, 
with the global gaming market expected to surpass $300 billion by 2027, according to Mordor Intelligence. With such high stakes, major game publishers are heavily motivated to produce the next blockbuster hit. But are video games truly improving, or has the best era of gaming already come and gone?

In this project, we analyze critics and user scores, along with sales data, for the top 400 video games released since 1977. The goal is to determine if there was a "best era" of gaming by identifying the release years that were most favored by users and critics. Additionally, we investigate into the business side by examining sales data for these games.

The analysis will require joining datasets and applying set theory comparisons. The database contains two tables, each limited to 400 rows for this project.

### `games_sales` table

| Column | Definition | Data Type |
|-|-|-|  
|name|Name of the video game|`varchar`|
|platform|Gaming platform|`varchar`|
|publisher|Game publisher|`varchar`|
|developer|Game developer|`varchar`|
|games_sold|Number of copies sold (millions)|`float`|
|year|Release year|`int`|

### `games_reviews` table

| Column | Definition | Data Type |
|-|-|-|
|name|Name of the video game|`varchar`|  
|critic_score|Critic score according to Metacritic|`float`|
|user_score|User score according to Metacritic|`float`|


### `users_avg_rating_by_year` table

| Column | Definition | Data Type |
|-|-|-|
|year| Release year of the games reviewed |`int`|  
|num_games| Number of games released that year |`int`|
|avg_user_score| Average score of all the games ratings for the year |`float`|

### `critics_avg_rating_by_year` table

| Column | Definition | Data Type |
|-|-|-|
|year| Release year of the games reviewed |`int`|  
|num_games| Number of games released that year |`int`|
|avg_critic_score| Average score of all the games ratings for the year |`float`|