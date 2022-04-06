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


-- Tables with our new data set (ERD only since the tables were added via engine)
new_matches
-
tourney_id
tourney_name
surface
draw_size
tourney_level
tourney_date
match_num
winner_id FK >- all_playersW.player_id
winner_seed
winner_entry
winner_name
winner_hand
winner_ht
winner_ioc
winner_age
loser_id FK >- all_playersL.player_id
loser_seed
loser_entry
loser_name
loser_hand
loser_ht
loser_ioc
loser_age
score
best_of
round
minutes
w_ace
w_df
w_svpt
w_1stIn
w_1stWon
w_2ndWon
w_SvGms
w_bpSaved
w_bpFaced
l_ace
l_df
l_svpt
l_1stIn
l_1stWon
l_2ndWon
l_SvGms
l_bpSaved
l_bpFaced
winner_rank
winner_rank_points
loser_rank
loser_rank_points

all_playersW
-
player_id FK >- rankings.player_id
player_name
player_hand
player_ht
player_ioc
player_age
player_rank

all_playersL
-
player_id
player_name
player_hand
player_ht
player_ioc
player_age
player_rank
player_rank_points

rankings
-
ranking_date
rank
player_id FK >- all_playersL.player_id
points





