-- best_selling_games
SELECT *
FROM games_sales
ORDER BY games_sold DESC
LIMIT 10;

-- critics_top_ten_years
SELECT g.year, COUNT(g.name) AS num_games, ROUND(AVG(r.critic_score),2) AS avg_critic_score
FROM games_sales g
INNER JOIN games_reviews r
ON g.name = r.name
GROUP BY g.year
HAVING COUNT(g.name) >= 4
ORDER BY avg_critic_score DESC
LIMIT 10;

-- the_best_years
SELECT u.year, u.num_games, c.avg_critic_score, u.avg_user_score, c.avg_critic_score - u.avg_user_score AS diff
FROM critics_avg_year_rating c
INNER JOIN users_avg_rating_by_year u
ON c.year = u.year
WHERE c.avg_critic_score > 9 OR u.avg_user_score > 9
ORDER BY year ASC