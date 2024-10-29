![image](https://github.com/mynameisfho/My-Data-Analyst-Portofolio/blob/main/Analyzing%20World%20Cup%20Data/World%20Cup.jpg)

### Description:
This dataset contains **44,066** results of international football matches, starting from the first official match in 1972 up to 2019. The matches include everything from the FIFA World Cup and FIFI Wild Cup to regular friendly matches. It only covers men's full internationals and excludes Olympic Games or matches involving B-teams, U-23 teams, or league select teams.

### Tools: 
SQL, Python and Excel

### Data:
These of data are available: ['results.csv'](https://github.com/mynameisfho/My-Data-Analyst-Portofolio/blob/main/Analyzing%20World%20Cup%20Data/results.csv); ['shootouts.csv'](https://github.com/mynameisfho/My-Data-Analyst-Portofolio/blob/main/Analyzing%20World%20Cup%20Data/shootouts.csv); and ['winners.csv'](https://github.com/mynameisfho/My-Data-Analyst-Portofolio/blob/main/Analyzing%20World%20Cup%20Data/winners.csv).

The `results.csv` includes the following columns:
-   `date` - the date of the match
-   `home_team` - the name of the home team
-   `away_team` - the name of the away team
-   `home_score` - the final score for the home team, including extra time but excluding penalty shootouts
-   `away_score` - the final score for the away team, including extra time but excluding penalty shootouts
-   `tournament` - the name of the tournament
-   `city` - the name of the city/town/administrative unit where the match took place
-   `country` - the country where the match was played
-   `neutral` - TRUE/FALSE column indicating whether the match was held at a neutral venue

`shootouts.csv` includes the following columns:
-   `date` - the date of the match
-   `home_team` - the name of the home team
-   `away_team` - the name of the away team
-   `winner` - the team that won the penalty shootout

Note on Team and Country Names: For the home and away teams, the *current* name has been used. For example, a match in 1882 featuring a team called Ireland against England is labeled as Northern Ireland in this dataset, as they are the successors of that team. This approach helps to track the history and statistics of teams more easily.

For country names, the name used is that of the country *at the time of the match*. Thus, when Ghana played in Accra as Gold Coast in the 1950s, it is still noted as a home match for Ghana, even if the names differ. The neutral column indicates FALSE for these matches, signifying that they were **not** held at a neutral venue.

#### Acknowledgements:
The data has been compiled from various sources, including Wikipedia, rsssf.com, and the websites of individual football associations.

### Data Outputs:
Here are some ouputs for exploring the data:
- Who is the greatest football team of all time?
- Which teams dominated different eras in football history?
- What trends have emerged in international football over the years, such as home advantage, total goals scored, and team strength distribution?
- Can we glean insights about geopolitics from football fixtures, such as changes in the number of participating countries or team rivalries?
- Which countries host the most matches without participating themselves?
- How does hosting a major tournament affect a country's chances in that tournament?
- Which teams frequently play friendlies and friendly tournaments, and does this benefit or hinder them?

### Code:
[Analyzing World Cup Data](https://github.com/mynameisfho/My-Data-Analyst-Portofolio/blob/main/Analyzing%20World%20Cup%20Data/world_cup_data.ipynb)