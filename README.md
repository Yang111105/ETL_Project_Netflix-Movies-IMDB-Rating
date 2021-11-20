## ETL-Project Group 6
Team Members: Jenny Yang, Ishin Yavuz, Saeger Godson

## Objective:
A lot of people check IMDB or Rotten Tomatoes score for a movie before watching it on Netflix. Some may even wonder if the movie was based on a book as its storyline.

This project collected above information, performed ETL(Extract-Transform-Load) process by reading, transforming and loading Netflix, IMDB/ Rotten Tomatoes Rating and Goodbooks datasets into a SQL database, so further analysis or search can be done based on this consolidated database. 


## Resources:
. https://www.kaggle.com/shivamb/netflix-shows?select=netflix_titles.csv

. https://www.kaggle.com/stefanoleone992/imdb-extensive-dataset

. https://www.kaggle.com/stefanoleone992/rotten-tomatoes-movies-and-critic-reviews-dataset?select=rotten_tomatoes_movies.csv

. https://www.kaggle.com/zygmunt/goodbooks-10k?select=books.csv

## Instructions to Recreate:
1. Clone `"ETL_Project_Netflix-Movies-IMDB-Rating"` repository from github to local folder

2. Create a new database called `"Netflix_IMDB"` in pgAdmin

3. Run Schema `"schemas_netflix_ratings_book"` to create six tables in Netflix_IMDB as below:
    - "netflix_movie_basic", "netflix_movie_date", "rotten_tomatoes_movies_rating", "books", "imdb_movies", "imdb_ratings" 

4. Launch Jupyter notebook `"Netflix Movies w Voting and Books"` within your local repo and run through the codes
    - **Important Note**: before running the notebook, change postgres ID, Passcode and Port# to your own in this code: `connection_string = "postgres:bootcamp@localhost:5432/Netflix_IMDB"` 

5. In PgAdmin run sql code `"queries"` to see the analysis examples which tests data connections among the tables
    - The queries include: Top 10 Netflix movies rated by IMDB and Rotten Tomatoes; Top 10 movies rated by Male/Female; Movies produced from books  








