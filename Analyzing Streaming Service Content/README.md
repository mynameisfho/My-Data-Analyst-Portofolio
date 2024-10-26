# Analyzing Streaming Service Content
### Description:
This analysis explores content across popular streaming platforms—Amazon, Hulu, Netflix, and Disney—by consolidating data from each service and examining genres, ratings, and family-friendly options. We begin by merging tables while retaining platform identifiers, then incorporate genre information via a Common Table Expression (CTE) for deeper insight. Missing data in key columns like `age`, `imdb`, and `rotten_tomatoes` are quantified to understand potential data gaps. Analysis focuses on identifying the most family-friendly platform by analyzing content tagged as "kids" or "family." Additionally, we assess content quality through `rotten_tomatoes` ratings, segmented by movies and TV shows, and visualize rating trends over time to explore alignment between critics’ and audiences' preferences.

### Tools: 
SQL and Excel

### Data:
Here is the dataset ['amazon.csv'](https://github.com/mynameisfho/My-Data-Analyst-Portofolio/blob/main/Analyzing%20Streaming%20Service%20Content/amazon.csv), ['disney.csv'](https://github.com/mynameisfho/My-Data-Analyst-Portofolio/blob/main/Analyzing%20Streaming%20Service%20Content/disney.csv), ['hulu.csv'](https://github.com/mynameisfho/My-Data-Analyst-Portofolio/blob/main/Analyzing%20Streaming%20Service%20Content/hulu.csv), ['netflix.csv'](https://github.com/mynameisfho/My-Data-Analyst-Portofolio/blob/main/Analyzing%20Streaming%20Service%20Content/netflix.csv), and ['genres.csv'](https://github.com/mynameisfho/My-Data-Analyst-Portofolio/blob/main/Analyzing%20Streaming%20Service%20Content/genres.csv)

### Data Outputs:
- Exploring the data
- Preparing the data
- Merging tables
- Identifying missing data
- Analyzing the data
- Which has the highest-rated content?
- Have critics and audiences diverged over time?

### Code:
[Analyzing Streaming Service Content](https://github.com/mynameisfho/My-Data-Analyst-Portofolio/blob/main/Analyzing%20Streaming%20Service%20Content/streaming_service_content.ipynb)