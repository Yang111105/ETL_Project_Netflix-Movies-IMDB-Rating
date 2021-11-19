## ETL-Project
Team Members: Jenny Yang, Ishin Yavuz, Saeger Godson

## Objective:
The objective is to perform the ETL(Extract-Transform-Load) process by reading, transforming and loading Netflix, IMDB, Rotten Tomatoes rating and Goodbooks datasets into a SQL database.


## Resources:
. https://www.kaggle.com/niharika41298/netflix-visualizations-recommendation-eda/notebook

. https://www.kaggle.com/codeblogger/2021-netflix-visualizations-eda/notebook

. https://www.kaggle.com/stefanoleone992/imdb-extensive-dataset

. https://www.kaggle.com/stefanoleone992/rotten-tomatoes-movies-and-critic-reviews-dataset?select=rotten_tomatoes_movies.csv

### Instructions:
1. Clone "ETL_Project_Netflix-Movies-IMDB-Rating" repository from github
2. Launch a Jupyter notebook within your local repo and open a new python 3 notebook
3. Import dependencies and setup into your jupyter notebook 
4. Import five csv files from "Resources" folder and read by using pandas
5. Complete data transformation by dropping, filling, splitting, renaming, and indexing in your DataFrame
6. Create database connection creating engine and connection string with your postgres info in jupyter notebook
7. Create a database called "Netflix_IMDB" in pgAdmin 
8. Create seven tables  names called "netflix_movie_basic", "netflix_movie_date", "rotten_tomatoes_movies_rating", "books", "imdb_movies", "imdb_ratings" in Netflix_IMDB
9. Load the data to sql 








