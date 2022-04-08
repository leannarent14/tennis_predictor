# Tennis Predictor
![](/Images/tennis_readme.png)

## Table of Contents:
1. Presentation
    - [Overview](##Overview:)
    - [Technologies Used](#Technologies:)
    - [Dataset](#Dataset:)
2. GitHub
    - Repository
3. Machine Learning Model
    - [Logistic Regression](#machine-learning-model:)
4. Database
    - [Database Storage](#Database-Storage:)

Link to presentation: https://docs.google.com/presentation/d/1Ls3NwU10uxvZovScrWnc-1DtVh1fgiCA2dgChteHuOM/edit?usp=sharing


## Overview:
The purpose of this project is to create a machine learning model to accurately predicts the winner of a match on the Association of Tennis Professionals (ATP) Tour.

- Selected topic: 
Tennis 

- Reason why we selected this topic:
    - Tennis is a global sport and we are giving an overall score of the players and predict who will win a match versus one another. We are also creating a website to interact with the audience to compare and contrast which player will win hypothetically. The dataset included players’ name, birth year, left handed or right handed, winning sets via first serve, etc. The statistical model that represents this data is logistic regression model because after combining all of players' stat, we want to predict who will win against one another purely on data. The datatypes include objects, floats, and integers.

- Questions to answer with the data:
1)  Can our model accurately predict the winners of ATP matches?
2)  Which hand (left or right handed) has the highest winning percentage?
3) 	What tennis surface is played the most?
4) 	What is the average age of most wins in tennis?
5)	Which country has the most winners?



## Technologies:
- Programming Language: `Python`

- Machine Learning Model: `Logistic Regression - Binary Classification, Scikit-Learn`

- Relational Database: `postgreSQL` 

- Object Relational Mapper: `SQLAlchemy`

- Visualization: `Tableau`

## Dataset:

The dataset [ATP World Tour tennis data](https://datahub.io/sports-data/atp-world-tour-tennis-data#resource-match_stats_2017_unindexed) was obtained from [DataHub.io](https://datahub.io) and it contains tournaments information such as match scores, match stats, rankings and players overview.

## Machine Learning Model:

Data Preprocessing:
- After merging datasets related to stats and scores, we have a dataframe containing all matches played from 1991 to 2017 that include information about who won, each player's performance, and score. We have 95,773 matches and 76 columns of information to use. We were missing information on dates of the matches. To fill in the dates, we took a dataset containing tournament information (i.e. date tournament took place, tournament name), changed tournament_date to datetime data type and merged it to our stats_scores dataframe containing all the matches and stats. Looking at the columns available and questions we wanted to answer, we were interested in specific point categories for each player. 
- Columns: ![ml](Images/ml/columns.png)

Feature Engineering and Feature Selection:
- To predict the winner without the data being tied to the known winner or loser, a function was created to replace 'winner_' and 'loser_' with 'player_1' and 'player_2' while 'player_1' was assigned to whoever alphabetically came first. We took all their attributes and stats as well.
- We engineered a number of features: 
    - Players' head-to-head wins against each other prior to match
    - Players' overall win percentage prior to match
    - Players' overall first serve in percentage prior to match
    - Players' overall break point saved percentage prior to match
    - Players' overall break point converted percentage prior to match
- For performance categories, we were particularlly interested in seeing how first serve percentages, break points saved percentages, and break points converted percentages influenced the outcome of a match because one break of serve is needed in a set to win the set while it is assumed that all players should maintain their serve (not be broken). 
- Break points can be thought of as pressure points. High break points saved percentages can indicate how well a server performs while under pressure as high break points converted percentages can indicate how well the returner applies pressure to the server.
- The target column would be either Player 1 or Player 2 indicating which player won.

Model Choice:
- We are trying to predict in a given match who would win player_1 or player_2 which falls under a classification problem. To do so, we have chosen a logistic regression model because it fit our needs and it was easy to implement and interpret. A drawback of the logistic regression model is that it can over-fit the training set. 
- With nearly 92,000 matches covering 1991 to 2017, the data was split 80/20. 80% of the data becaming the training set while the remaining 20% became the testing set.
- Since our previous model, we added additional features and did not change the model. We ran the model using Grid Search to find the optimal parameters. We found players' win percentages were the most influential, followed by break points saved percentages. Players' head-to-head records were the least influential on match outcome.
- Our current model f1-score is 68% meaning it can predict the correct winner nearly 7 times out of 10 which is better than 50/50 odds. From our previous model to our current model, the addition of new features did yield any signficant improvements over the prior model, yet the latest model factors in performance categories that we were interested in. Our current model tells that break points do matter, but not nearly as much as win percentages do.

Current Accuracy Score:
![ml](Images/ml/recent_model_perf.png)

Grid Search Results:
![ml](Images/ml/GridSearchResults.png)

Feature Importances
![ml](Images/ml/feature_importance.png)

The features used and the target column: 
![ml](Images/ml/features_used.png)

Previous model results: 
![ml](Images/ml/ml_model_performance.png)

Previous model features:
![ml](Images/ml/ml_model_features.png)

Previous model target:
![ml](Images/ml/ml_model_target.png)

Initial model results:
![ml](Images/ml/first_model_results.png)

## Database Storage:

After cleaning the DataFrames with Python, we made a connection to `postgreSQL` using `SQLAlchemy`. Below are the tables loaded into `postgreSQL`, the ERD, and a joined table. 

1) match_scores table
![postgres](Images/postgres/1_match_scores_table.png)

2) players_overview table
![postgres](Images/postgres/2_players_overview_table.png)

3) rankings_overview table
![postgres](Images/postgres/3_rankings_overview_table.png)

4) ERD
![](Images/1_new_ERD.png)

5) Inner Join: `players_overview` and `rankings_overview` on `player_id`
![postgres](Images/postgres/4_join_players_rankings.png)

## Team Members:
- Theodoric Tran
- Julieta Hernandez
- John Lee
- Leanna Renteria
