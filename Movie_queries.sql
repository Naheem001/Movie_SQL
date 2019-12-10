#Write a query in SQL to find the name and year of the movies.
select mov_title, mov_year
from movie;

#Write a query in SQL to find the year when the movie American Beauty released.
select mov_year
from movie
where mov_title = "American Beauty";

#Write a query in SQL to find the movie which was released in the year 1999
select*
from movie
where mov_year = 1999;

#Write a query in SQL to find the movies which was released before 1998
select*
from movie
where mov_year < 1998;

#Write a query in SQL to find the movie which was released in the year 1998
select*
from movie
where mov_year = 1998;

#Write a query in SQL to return the name of all reviewers and name of movies together in a single list
select rev_name, mov_title
from reviewer join rating
on reviewer.rev_id = rating.rev_id
join movie
on rating.mov_id = movie.mov_id;


#Write a query in SQL to find the name of all reviewers who have rated 7 or more stars to their rating
select rev_name
from reviewer
where rev_id in (
	select rev_id
    from rating
    where num_o_ratings >= 7);    
#Or
select rev_name
from reviewer join rating
on reviewer.rev_id = rating.rev_id
where num_o_ratings >= 7;


#Write a query in SQL to find the titles of all movies that have no ratings.   
select mov_title
from movie
where mov_id in (
	select mov_id
    from rating
    where num_o_ratings is null);
#OR
select mov_title
from movie join rating
on movie.mov_id = rating.mov_id
where num_o_ratings is null;

#Write a query in SQL to find the name of all reviewers who have rated their ratings with a NULL value 
select rev_name
from reviewer
where rev_id in (
	select rev_id
    from rating
    where num_o_ratings is null);
#OR
select reviewer.rev_name
from reviewer join rating
on reviewer.rev_id = rating.rev_id
where num_o_ratings is null;

#Write a query in SQL to find the name of movie and director (first and last names) who directed a movie that casted a role for 'Eyes Wide Shut'.
select concat(dir_fname, " ", dir_lname) as "Name Of Director"
from director
where dir_id in(
	select dir_id
    from movie_direction
    where mov_id in (
		select mov_id
        from movie
        where mov_title ="Eyes Wide Shut"));
        
#OR
select mov_title, concat(dir_fname, " ", dir_lname) as "Name Of Director"
from director join movie_direction
on director.dir_id = movie_direction.dir_id
join movie
on movie_direction.mov_id = movie.mov_id
where mov_title ="Eyes Wide Shut";
