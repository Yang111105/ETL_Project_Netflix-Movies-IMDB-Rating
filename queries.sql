-- Best Movies Based on IMDB Ratins
SELECT im.movie_title,ir.weighted_average_vote,ir.total_votes
FROM imdb_ratings AS ir
JOIN imdb_movies AS im ON
ir.imdb_title_id=im.id
JOIN netflix_movie_basic AS nb ON
nb.title=im.movie_title
ORDER BY ir.weighted_average_vote DESC
LIMIT 10;

-- Best Movies Based on IMDB and Rotten Tomatoes Ratins
SELECT im.movie_title,ir.weighted_average_vote AS imdb_rating,ir.total_votes,rr.tomatometer_rating,rr.tomatometer_count
FROM imdb_ratings AS ir
JOIN imdb_movies AS im ON
ir.imdb_title_id=im.id
JOIN netflix_movie_basic AS nb ON
LOWER(nb.title)=LOWER(im.movie_title)
JOIN rotten_tomatoes_movies_rating AS rr ON
LOWER(rr.title)=LOWER(nb.title)
ORDER BY ir.weighted_average_vote DESC
LIMIT 10;

--Top Ten Movies According to Males Voters 
SELECT im.movie_title,ir.males_allages_avg_vote
FROM imdb_ratings AS ir
JOIN imdb_movies AS im ON
ir.imdb_title_id=im.id
JOIN netflix_movie_basic AS nb ON
nb.title=im.movie_title
ORDER BY ir.males_allages_avg_vote DESC
LIMIT 10;

--Top Ten Movies According to Females Voters 
SELECT im.movie_title,ir.females_allages_avg_vote
FROM imdb_ratings AS ir
JOIN imdb_movies AS im ON
ir.imdb_title_id=im.id
JOIN netflix_movie_basic AS nb ON
nb.title=im.movie_title
ORDER BY ir.females_allages_avg_vote DESC
LIMIT 10;

-- Movies Related to Books
SELECT nb.title,nd.release_year AS movie_release_year,b."Published_Year" AS book_publish_year
FROM netflix_movie_basic AS nb 
JOIN netflix_movie_date AS nd ON
nb.netflix_show_id=nd.netflix_show_id
JOIN books AS b ON
LOWER(nb.title)=LOWER(b."Book_Title")
ORDER BY b."Published_Year" DESC;


