select * from netflix_movie_date;
select * from netflix_movie_basic;-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/0GKY8p
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Physical

SET XACT_ABORT ON

BEGIN TRANSACTION QUICKDBD

CREATE TABLE [netflix_movie_basic] (
    [netflix_show_id] VARCHAR  NOT NULL ,
    [title] VARCHAR  NOT NULL ,
    [country] VARCHAR  NOT NULL ,
    [rating] VARCHAR  NOT NULL ,
    [duration] VARCHAR  NOT NULL ,
    [description] VARCHAR  NOT NULL ,
    CONSTRAINT [PK_netflix_movie_basic] PRIMARY KEY CLUSTERED (
        [netflix_show_id] ASC
    )
)

CREATE TABLE [netflix_movie_date] (
    [netflix_show_id] VARCHAR  NOT NULL ,
    [date_added] DATE  NOT NULL ,
    [release_year] INT  NOT NULL ,
    CONSTRAINT [PK_netflix_movie_date] PRIMARY KEY CLUSTERED (
        [netflix_show_id] ASC
    )
)

ALTER TABLE [netflix_movie_date] WITH CHECK ADD CONSTRAINT [FK_netflix_movie_date_netflix_show_id] FOREIGN KEY([netflix_show_id])
REFERENCES [netflix_movie_basic] ([netflix_show_id])

ALTER TABLE [netflix_movie_date] CHECK CONSTRAINT [FK_netflix_movie_date_netflix_show_id]

COMMIT TRANSACTION QUICKDBD