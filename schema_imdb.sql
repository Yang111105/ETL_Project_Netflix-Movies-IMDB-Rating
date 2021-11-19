drop table books;


CREATE TABLE books (
  ID INT PRIMARY KEY,
  Authors TEXT,
  Book_Title VARCHAR,
  Published_Year INT
);

select * from books;


drop table imdb_movies;

drop table IMDB_movies;

CREATE TABLE IMDB_movies (
  id VARCHAR PRIMARY KEY,
  movie_title VARCHAR
);

select * from IMDB_movies;