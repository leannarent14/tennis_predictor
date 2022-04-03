from tkinter import N
import dash
from dash import dcc
from dash import html
from numpy import True_
import pandas as pd

data = pd.read_csv("../tennis_predictor/Resources/jeff_datasets/new_matches.csv")

app = dash.Dash(__name__)

app.layout = html.Div(
    children=[
        html.H1(children="ATP Tennis Match Predictor",),
        html.P(
            children=("Choose two players and get a predicted winner with odds."))
            ])

if __name__ == "__main__":
    app.run_server(debug=True)