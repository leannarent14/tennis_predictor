
-- match_stats_2017 DataFrame
SELECT * FROM match_stats_2017;

SELECT *
FROM tennis_matches
ORDER BY random()
LIMIT 500;

SELECT count(*)
FROM tennis_matches; -- Total count 820734

-- match_scores
SELECT * FROM match_scores;


SELECT DISTINCT *
FROM match_scores
ORDER BY match_id DESC;

-- players_overview
SELECT * FROM players_overview;

SELECT *
FROM players_overview
ORDER BY random()
LIMIT 500;

-- rankings_overview
SELECT * FROM rankings_overview;


-- players_overview and rankings_overview on 'player_id'
SELECT *
FROM rankings_overview AS ro
INNER JOIN players_overview AS po
	ON ro.player_id = po.player_id;
	