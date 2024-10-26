-- 1
SELECT * FROM 'game_events.csv' LIMIT 100

-- 2
select 
	count(1) as rows,
	count(distinct id) as unique_ids
from 'game_events.csv'

-- 3
SUMMARIZE SELECT * FROM 'game_events.csv'

-- Distribution of "minute" values
select 
	minute,
	count(1) as events
from 'game_events.csv'
group by 1

-- Events in minute 90
select 
	event_type,
	count(1) as events
from 'game_events.csv'
where minute = 90
group by 1
order by 2 desc

-- 4
SELECT 
    extra_minute,
    count(1) as events
FROM 'game_events.csv'
GROUP BY 1

-- lpad function: Pads the `string` with the `character` from the left until it has `count` characters.
-- Syntax:  lpad(string, count, character)
SELECT 
	lpad(1, 1, '0'),
	lpad(1, 2, '0'),
	lpad(1, 3, '0'),
	lpad('01', 2, '0'),
	lpad(10, 2, '0'),
	lpad(100, 2, '0'), -- WARNING! THIS IS TRIMMED TO "10"

-- 5
WITH data as (
	SELECT '1' as col
	UNION ALL
	SELECT '5' as col
	UNION ALL
	SELECT '10' as col
	UNION ALL
	SELECT '100' as col
)

SELECT * FROM data
ORDER BY col

-- Prefixing the numbers with empty strings using lpad helps fix the ordering
WITH data as (
	SELECT lpad('1', 3, ' ') as col
	UNION ALL
	SELECT lpad('5', 3, ' ') as col
	UNION ALL
	SELECT lpad('10', 3, ' ') as col
	UNION ALL
	SELECT lpad('100', 3, ' ') as col
)

SELECT * FROM data
ORDER BY col

-- Example: Bucket size 5 minutes
WITH buckets AS (
	SELECT DISTINCT
		minute,
		minute / 5,
		ceil(minute / 5),
		ceil(minute / 5) * 5 as ceil_bucket
	FROM 'game_events.csv'
	ORDER BY minute
)

SELECT * FROM buckets

-- 6
COPY (
	WITH goal_events_with_minute_string as (
		SELECT 
			*,							
			-- Use lpad for better sorting behavior (e.g. 1 -> '  1')
			lpad(minute, 3, ' ') as minute_str_sortable,
		FROM 'game_events.csv'
		WHERE event_type = 'Goal'
	)

	select 
		*,
		CASE 
			WHEN extra_minute = 0 THEN minute_str_sortable
			ELSE concat(minute_str_sortable, ' + ', extra_minute)
		END AS game_minute,
		CASE
			-- We simplify overtime and move it into a "OT" bucket
			WHEN minute > 90 THEN 'OT'
			-- For extra minutes, we use 45+, 90+, etc.
			WHEN extra_minute != 0 THEN concat(minute_str_sortable, ' +')
	 		-- Use lpad for better sorting behavior (e.g. 1 -> '  1')
			ELSE lpad(
				(ceil(minute / 5) * 5)::int,
				3,
				' '
			)
		END AS game_period_bucket
	FROM goal_events_with_minute_string
) TO 'goals.csv' (HEADER, DELIMITER ',');

SELECT * FROM 'goals.csv'

-- 7
    WITH counts as (
        select 
            game_period_bucket,
            count(1) as cnt
        from 'goals.csv'
        group by 1
        order by 1
    )

    select
        *
    from counts

-- 8
    SELECT
        game,
        player_name,
        game_minute
    FROM 'goals.csv'
    ORDER BY game_minute
    LIMIT 10

-- 9
WITH counts as (
	select 
		game_period_bucket,
		case
			-- Joker goal if player was substituted within 15 minutes prior to scoring
			when previous_player_event = 'Substitution' and seconds_after_previous_event <= 900 THEN 'joker goal'
			else 'normal goal'
		end as goal_type,
		count(1) as cnt
	from 'goals.csv'
	group by 1, 2
	order by 1
)

select
	*
from counts

-- 10
    SELECT
        game,
        count(1) as goals
    FROM 'goals.csv'
    GROUP BY 1
    ORDER BY 2 DESC
    LIMIT 10

-- 11
WITH goals_per_game as (
        select 
            fixture_id,
            count(1) as goals
        from 'goals.csv'
        group by 1
        order by 1
    )

    select
        goals,
        count(1) as cnt
    from goals_per_game
    group by 1
    order by 2