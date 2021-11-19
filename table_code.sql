CREATE TABLE ratings_gender (
  imdb_title_id text PRIMARY KEY,
  total_votes INT,
  weighted_average_vote INT,
  males_allages_avg_vote INT,
  males_allages_votes INT,
  females_allages_avg_vote INT,	
  females_allages_votes INT
);

select * from ratings_gender