-- Que 1. Write a query in SQL to find the name and year of the movies.
select mov_title, mov_year 
from movie;
 
-- Que 2. Write a query in SQL to find the year when the movie American Beauty released.
select mov_title , mov_year
from movie 	
where mov_title = 'American Beauty';
 
-- Que 3. Write a query in SQL to find the movie which was released in the year 1999
select mov_title, mov_year
from movie
where mov_year = '1999';
 
-- Que 4. Write a query in SQL to find the movies which was released before 1998
select mov_title, mov_year
from movie
where mov_year = '1998';

-- Que 5. Write a query in SQL to find the movie which was released in the year 1999
select mov_title, mov_year
from movie
where mov_year = '1999';
 
-- Que 6. Write a query in SQL to return the name of all reviewers and name of movies together in a single list 
select rev_name, mov_title 
from reviewer, movie; 

-- Que 7. Write a query in SQL to find the name of all reviewers who have rated 7 or more stars to their rating
select distinct rev_stars, rev_name from rating, reviewer
where  rev_stars >= 7 and rating.rev_id = reviewer.rev_id;
 
-- Que 8. Write a query in SQL to find the titles of all movies that have no ratings.
SELECT mov_title, num_o_ratings from movie, rating
where num_o_ratings is null and movie.mov_id = rating.mov_id;
 
-- Que 9. Write a query in SQL to find the name of all reviewers who have rated their ratings with a NULL value 
select rev_stars, rev_name from rating, reviewer
where  rev_stars is null and rating.rev_id = reviewer.rev_id;

-- Que 10. Write a query in SQL to find the name of movie and director (first and last names) who directed a movie that casted a role for 'Eyes Wide Shut'.
select movie.mov_title, director.dir_fname, director.dir_lname
from movie, director
where director.dir_id = 207 and movie.mov_id = 907;

 
