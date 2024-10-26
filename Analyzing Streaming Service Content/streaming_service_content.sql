-- 1
SELECT *
FROM amazon

-- 2
SELECT *
FROM hulu

-- 3
SELECT * 
FROM netflix

-- 4
SELECT *
FROM disney

-- 5
SELECT *
FROM genres

-- 6
SELECT *
FROM amazon
UNION ALL
SELECT *
FROM hulu
UNION ALL
SELECT * 
FROM netflix
UNION ALL
SELECT *
FROM disney

-- 7
SELECT *, 'amazon' AS service
FROM amazon
UNION
SELECT *, 'hulu' AS service
FROM hulu
UNION
SELECT *, 'netflix' AS service
FROM netflix
UNION
SELECT *, 'disney' AS service
FROM disney

-- 8
WITH service_data AS (
	SELECT *, 'amazon' AS service
    FROM amazon
    UNION
    SELECT *, 'hulu' AS service
    FROM hulu
    UNION
    SELECT *, 'netflix' AS service
    FROM netflix
    UNION
    SELECT *, 'disney' AS service
    FROM disney
)

SELECT *
FROM service_data AS sd
LEFT JOIN genres AS g
	ON sd.title = g.film

-- 9
WITH service_data AS (
	SELECT *, 'amazon' AS service
    FROM amazon
    UNION
    SELECT *, 'hulu' AS service
    FROM hulu
    UNION
    SELECT *, 'netflix' AS service
    FROM netflix
    UNION
    SELECT *, 'disney' AS service
    FROM disney
),

all_data AS (
    SELECT *
    FROM service_data AS sd
    LEFT JOIN genres AS g
        ON sd.title = g.film
)

SELECT 
	SUM(CASE WHEN imdb IS NULL THEN 1 ELSE 0 END) AS imdb_missing,
    SUM(CASE WHEN age IS NULL THEN 1 ELSE 0 END) AS age_missing,
    SUM(CASE WHEN rotten_tomatoes IS NULL THEN 1 ELSE 0 END) AS rt_missing
FROM all_data

-- 10
WITH service_data AS (
	SELECT *, 'amazon' AS service
    FROM amazon
    UNION
    SELECT *, 'hulu' AS service
    FROM hulu
    UNION
    SELECT *, 'netflix' AS service
    FROM netflix
    UNION
    SELECT *, 'disney' AS service
    FROM disney
),

all_data AS (
    SELECT *
    FROM service_data AS sd
    LEFT JOIN genres AS g
        ON sd.title = g.film
)

SELECT
	*
FROM all_data
WHERE genre ILIKE '%kids%' 
    OR genre ILIKE '%family%' 
    OR genre ILIKE '%children%'

-- 11
WITH service_data AS (
	SELECT *, 'amazon' AS service
    FROM amazon
    UNION
    SELECT *, 'hulu' AS service
    FROM hulu
    UNION
    SELECT *, 'netflix' AS service
    FROM netflix
    UNION
    SELECT *, 'disney' AS service
    FROM disney
),

all_data AS (
    SELECT *
    FROM service_data AS sd
    LEFT JOIN genres AS g
        ON sd.title = g.film
)

SELECT
	service,
    AVG(CASE WHEN genre ILIKE '%kids%' 
        OR genre ILIKE '%family%' 
        OR genre ILIKE '%children%' THEN 1.0000 ELSE 0.0000 END) * 100 AS pct_family
FROM all_data
GROUP BY service
ORDER BY pct_family DESC

-- 12
WITH service_data AS (
	SELECT *, 'amazon' AS service
    FROM amazon
    UNION
    SELECT *, 'hulu' AS service
    FROM hulu
    UNION
    SELECT *, 'netflix' AS service
    FROM netflix
    UNION
    SELECT *, 'disney' AS service
    FROM disney
),

all_data AS (
    SELECT *
    FROM service_data AS sd
    LEFT JOIN genres AS g
        ON sd.title = g.film
)

SELECT
	service,
    CASE WHEN type = 1 THEN 'TV' ELSE 'Movie' END AS type,
    AVG(SPLIT_PART(rotten_tomatoes, '/', 1)::NUMERIC) AS rt_score
FROM all_data
GROUP BY service, type
ORDER BY rt_score DESC

-- 13
WITH service_data AS (
	SELECT *, 'amazon' AS service
    FROM amazon
    UNION
    SELECT *, 'hulu' AS service
    FROM hulu
    UNION
    SELECT *, 'netflix' AS service
    FROM netflix
    UNION
    SELECT *, 'disney' AS service
    FROM disney
),

all_data AS (
    SELECT *
    FROM service_data AS sd
    LEFT JOIN genres AS g
        ON sd.title = g.film
)

SELECT
	date,
    AVG(ABS(imdb_score - rt_score)) AS avg_difference
FROM (
    SELECT 
        TO_DATE(year::TEXT, 'YYYY') AS date,
        SPLIT_PART(rotten_tomatoes, '/', 1)::NUMERIC AS rt_score,
        SPLIT_PART(imdb, '/', 1)::NUMERIC * 10 AS imdb_score
    FROM all_data
    WHERE imdb IS NOT NULL
        AND rotten_tomatoes IS NOT NULL
    	AND year >= 2000
) AS sub
GROUP BY date
ORDER BY date