# Tennis Predictor
![](/Images/tennis_readme.png)

## First Segment Table of Contents:
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


## Overview:
The purpose of this project is to build a machine learning model in order to accurately predict the outcome of tennis matches.

- Selected topic: 
Tennis 

- Reason why we selected this topic:
    - Tennis is a global sport and we wanted to create a dataset that over sees all tennis players’ stats from 1991-2016. We are giving an overall score of the players and predict who will win a match versus one another. We are also creating a website to interact with the audience to compare and contrast which player will win hypothetically. The dataset included players’ name, birth year, left handed or right handed, winning sets via first serve, etc. The statistical model that represents this data is logistic regression model because after combining all of players' stat, we want to predict who will win against one another purely on data. The datatypes include objects, floats, and integers.

- Questions to answer with the data:
1. Do country of origin matter greatly for all players? Some countries are heavily influenced by Tennis (ex. England, Australia, France, US, Switzerland, etc.) and the country offers more opportunities for athletes interested in the sports.
2. Which hand (left or right handed) has the highest winning percentage? When a player swings the racket, the ball gets effected like speed, spin rate, angle of the ball getting hit, and more. If the same right-handed players play, they could easily predict where the ball trajects. However, when a right-handed player faces a left-handed player, all of the features of the ball getting hit might be different, even slightly advantageous. 
3. What is the average career span of a tennis player? During the years we researched, some players could have retired or could have begun their career or in the middle of their prime.
4. What’s the long-term forecast? Through looking and analyzing the organized data, we can make assumptions that this player is predicted win the tournament or will be ranked at the end of the season or for the next season.
5. Do break point matter? Break point means that the service receiving player will win the game over the player who is doing service shot. This is a momentum shift for the service receiving player because he/she will be servicing next and greatly impact sport psychology. We can observe the break point converted numbers or break point made to see if the particular have some advantage in the situation.


## Technologies:
- Programming Language: `Python` 

- Relational Database: `postgreSQL` 

- Object Relational Mapper: `SQLAlchemy` 

## Dataset:

The dataset [ATP World Tour tennis data](https://datahub.io/sports-data/atp-world-tour-tennis-data#resource-match_stats_2017_unindexed) was obtained from [DataHub.io](https://datahub.io) and it contains tournaments information such as match scores, match stats, rankings and players overview.

## Machine Learning Model:

We were curious to see if we could create a model that could accurately predict the winner of a given match between two players, when supplied with their respective stats. For this reason, we chose to build, train, and evaluate a logistic regression model. The model will take in player features (e.g. height, weight), match-specific features (e.g. match_duration), and player stat features (e.g. aces:double_faults ratio, player1_break_points_won, player1_first_serve_in_%). Our current model is inaccurate, for there is no variance in our dataset at its current form. Our next step is introduce variance by renaming winner_ and loser_ columns to player1_ and player2_, then for each row shuffle players 1 and 2 so that the "outcome" column will have variance. Our target column, "outcome" has two possible options "1" for player 1 and "2" for player 2.

Current model results:
![first_model_results](/Images/first_model_results.png)

## Database Storage:

![postgres](/Images/postgres.png)

## Team Members:
- Theodoric Tran
- Julieta Hernandez
- John Lee
- Leanna Renteria

## Communication Protocols
- ZOOM
- Slack
