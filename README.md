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
    - Logistic Regression
    - Random Forest Classifier
4. Database
    - [Database Storage](#Database-Storage:)


## Overview:
The purpose of this project is to build a machine learning model in order to accurately predict the outcome of tennis matches.

- Selected topic: 
Tennis 

- Reason why we selected this topic:
    - Tennis is a global sport and we wanted to create a dataset that over sees all tennis players’ stats from 1991-2016. We are giving an overall score of the players and predict who will win a match versus one another. We are also creating a website to interact with the audience to compare and contrast which player will win hypothetically. The dataset included players’ name, birth year, left handed or right handed, winning sets via first serve, etc. The statistical model that represents this data is logistic regression model because after combining all of players' stat, we want to predict who will win against one another purely on data.

- Questions to answer with the data:
1. Do country of origin matter greatly for all players? Some countries are heavily influenced by Tennis (ex. England, Australia, France, US, Switzerland, etc.) and the country offers more opportunities for athletes interested in the sports.
2. Which hand (left or right handed) has the highest winning percentage? effects the way you hit the ball (putting spin, force, curvature of the spin; slight advantage of the left handed but miniscule
3. What is the average career span of a tennis player? During the years we researched, some players could have retired or could have begun their career or in the middle of their prime.
4. What’s the long-term forecast? Through looking and analyzing the organized data, we can make assumptions that this player is predicted win the tournament or will be ranked at the end of the season or for the next season.
5. Do break point matter? Break point means that the service receiving player will win the game over the player who is doing service shot. This is a momentum shift for the service receiving player because he/she will be servicing next and greatly impact sport psychology. We can observe the break point converted numbers or break point made to see if the particular have some advantage in the situation.


## Technologies:
- Programming Language: `Python` 

- Relational Database: `postgreSQL` 

- Object Relational Mapper: `SQLAlchemy` 

## Dataset:

The dataset [ATP World Tour tennis data](https://datahub.io/sports-data/atp-world-tour-tennis-data#resource-match_stats_2017_unindexed) was obtained from [DataHub.io](https://datahub.io) and it contains tournaments information such as match scores, match stats, rankings and players overview.

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
