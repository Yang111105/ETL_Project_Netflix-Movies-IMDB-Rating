-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/0GKY8p
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Physical

CREATE TABLE "netflix_movie_basic" (
    "netflix_show_id" VARCHAR   NOT NULL,
    "title" VARCHAR   NOT NULL,
    "country" VARCHAR   NOT NULL,
    "rating" VARCHAR   NOT NULL,
    "duration" VARCHAR   NOT NULL,
    "description" VARCHAR   NOT NULL,
    CONSTRAINT "pk_netflix_movie_basic" PRIMARY KEY (
        "netflix_show_id"
     )
);

CREATE TABLE "netflix_movie_date" (
    "netflix_show_id" VARCHAR   NOT NULL,
    "date_added" DATE   NOT NULL,
    "release_year" INT   NOT NULL,
    CONSTRAINT "pk_netflix_movie_date" PRIMARY KEY (
        "netflix_show_id"
     )
);

CREATE TABLE "rotten_tomatoes_movies_rating" (
    "rotten_tomatoes_id" VARCHAR   NOT NULL,
    "title" VARCHAR   NOT NULL,
    "tomatometer_status" VARCHAR   NOT NULL,
    "tomatometer_rating" INT   NOT NULL,
    "tomatometer_count" INT   NOT NULL,
    "audience_status" VARCHAR   NOT NULL,
    "audience_rating" INT   NOT NULL,
    "audience_count" INT   NOT NULL,
    CONSTRAINT "pk_rotten_tomatoes_movies_rating" PRIMARY KEY (
        "rotten_tomatoes_id"
     )
);

ALTER TABLE "netflix_movie_date" ADD CONSTRAINT "fk_netflix_movie_date_netflix_show_id" FOREIGN KEY("netflix_show_id")
REFERENCES "netflix_movie_basic" ("netflix_show_id");

