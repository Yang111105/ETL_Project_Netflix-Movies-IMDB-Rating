## ETL-Project Group 6
Team Members: Jenny Yang, Ishin Yavuz, Saeger Godson

## Objective:
The objective is to perform the ETL(Extract-Transform-Load) process by reading, transforming and loading Netflix, IMDB, Rotten Tomatoes rating and Goodbooks datasets into a SQL database.


## Resources:
. https://www.kaggle.com/shivamb/netflix-shows?select=netflix_titles.csv

. https://www.kaggle.com/stefanoleone992/imdb-extensive-dataset

. https://www.kaggle.com/stefanoleone992/rotten-tomatoes-movies-and-critic-reviews-dataset?select=rotten_tomatoes_movies.csv

. https://www.kaggle.com/zygmunt/goodbooks-10k?select=books.csv

## Instructions:
1. Clone `"ETL_Project_Netflix-Movies-IMDB-Rating"` repository from github to local folder
2. Create a new database called `"Netflix_IMDB"` in pgAdmin
3. Run Schema `"schemas_netflix_ratings_book"` to create six tables- "netflix_movie_basic", "netflix_movie_date", "rotten_tomatoes_movies_rating", "books", "imdb_movies", "imdb_ratings" in Netflix_IMDB
4. Launch Jupyter notebook `"Netflix Movies w Voting and Books"` within your local repo and run through the codes
9. In PgAdmin run sql code `"queries"` to see the analysis examples which tests data connections among the tables








