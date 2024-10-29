# Comparing Baseball Player Statistics
### Description:

![aaron_judge](https://github.com/mynameisfho/My-Data-Analyst-Portofolio/blob/main/Comparing%20Baseball%20Player%20Statistics/aaron_judge.jpg)

Meet `Aaron Judge`, one of the largest players in Major League Baseball, standing 6 feet 7 inches (2.01 m) tall and weighing 282 pounds (128 kg). He’s also known for hitting one of the hardest-recorded home runs—thanks to Statcast.

Statcast is an advanced tracking system that uses high-resolution cameras and radar to measure the precise location and movement of baseballs and players. Since its league-wide launch in 2015, Statcast has transformed the game. MLB teams are now heavily investing in data analysis, hiring analysts to gain a competitive edge.

![giancarlo_stanton](https://github.com/mynameisfho/My-Data-Analyst-Portofolio/blob/main/Comparing%20Baseball%20Player%20Statistics/giancarlo_stanton.webp)

In this project, we'll work with historical Statcast data to analyze and compare Judge and his similarly powerful teammate, `Giancarlo Stanton`. Both players led in home runs in 2017, with Stanton hitting 59 and Judge hitting 52, far surpassing the third-place player who hit 45.

Although Stanton and Judge share impressive home run totals, they have distinct styles.

### Tools: 
Python and Excel

### Data:
The data is provided in two CSV files: ['judge.csv'](https://github.com/mynameisfho/My-Data-Analyst-Portofolio/blob/main/Comparing%20Baseball%20Player%20Statistics/judge.csv) and ['stanton.csv'](https://github.com/mynameisfho/My-Data-Analyst-Portofolio/blob/main/Comparing%20Baseball%20Player%20Statistics/stanton.csv), containing Statcast data from 2015-2017. Each row represents a pitch thrown to either Judge or Stanton.

Custom Functions

To visualize the home run zones, two custom functions are provided:

assign_x_coord: Assigns an x-coordinate to Statcast’s strike zone numbers.

assign_y_coord: Assigns a y-coordinate to Statcast’s strike zone numbers.

![zone](https://github.com/mynameisfho/My-Data-Analyst-Portofolio/blob/main/Comparing%20Baseball%20Player%20Statistics/zone.png)

### Data Outputs: 
- Determine the count of each event for `Judge` and `Stanton` in 2017, and store the results as two Pandas Series named `judge_events_2017` and `stanton_events_2017`, with `events` as the index, ordered by event count in descending order.

- Analyze which player hit home runs with slightly lower and harder launch angles by creating a scatter plot of `launch_speed` versus `launch_angle` for each player, with separate plots for each. Save these plots as `fig1` and `ax1`. Store either `"Stanton"` or `"Judge"` in a variable called `player_hr`.

- Next, compare pitch velocity or `release_speed` for each player’s home runs to determine who hits home runs off faster pitches (higher median speed). Save either `"Stanton"` or `"Judge"` to a variable named `player_fast`.

- Construct a 2D histogram representing the home run strike zones for each player, excluding zones 11, 12, 13, and 14. For this, create filtered DataFrames named `judge_strike_hr` and `stanton_strike_hr`. Use the provided custom functions to assign coordinates, storing them as new columns `zone_x` and `zone_y` in each DataFrame.

### Code:
[Comparing Baseball Player Statistics](https://github.com/mynameisfho/My-Data-Analyst-Portofolio/blob/main/Comparing%20Baseball%20Player%20Statistics/judge_vs_stanton.ipynb)
