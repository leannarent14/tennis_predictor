-- Not need it since we are using SQLAlchemy

-- Creating table for match_stats_2017 DataFrame

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

-- Creating table for match_scores DataFrame
CREATE TABLE match_scores(
	tourney_round_name VARCHAR,
	winner_name VARCHAR,
	player_id VARCHAR,
	winner_seed VARCHAR,
    match_score_tiebreaks VARCHAR,
	winner_sets_won INTEGER,
	winner_games_won INTEGER,
    winner_tiebreaks_won INTEGER,
	match_id VARCHAR
);

-- Creating table for players_overview DataFrame
CREATE TABLE players_overview(
	player_id VARCHAR,
	first_name VARCHAR,
	last_name VARCHAR,
	flag_code VARCHAR,
	birthplace VARCHAR,
	birth_year VARCHAR,
	turned_pro VARCHAR,
    weight_lbs VARCHAR,
	weight_kg VARCHAR,
	height_ft VARCHAR,
	height_cm VARCHAR,
    handedness VARCHAR,
	backhand VARCHAR
);

-- Creating table for rankings_overview DataFrame

CREATE TABLE rankings_overview(
	week_title VARCHAR,
	week_year INTEGER,
	week_month INTEGER,
	week_day INTEGER,
	rank_text VARCHAR,
	rank_number INTEGER,
	move_positions VARCHAR,
	move_direction VARCHAR,
	player_age VARCHAR,
	ranking_points INTEGER,
	tourneys_played INTEGER,
	player_id VARCHAR
);


