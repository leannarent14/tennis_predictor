-- Creating table for match_stats_2017

CREATE TABLE match_stats_2017(
	match_id VARCHAR(50),
	match_time TIME,
	match_duration INTEGER,
	winner_aces INTEGER,
	winner_total_points_won INTEGER,
	winner_total_points_total INTEGER,
	loser_total_points_won INTEGER,
	loser_total_points_total INTEGER
);

SELECT * FROM match_stats_2017;