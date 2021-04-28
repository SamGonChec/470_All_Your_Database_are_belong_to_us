use db470;
DELIMITER $$

CREATE EVENT `dailyRandom_Movie`
    ON SCHEDULE EVERY 1 DAY STARTS "2021-04-21 16:00:00"
    DO BEGIN
		DELETE FROM randomDailyMovie;
        
		INSERT INTO randomDailyMovie (rmovie_id,rmovie_title,rmovie_description,rmovie_director,ryear_published,rmovie_duration,rmovie_genre)
		SELECT movie_id, movie_title, movie_description, director_name, year_published, movie_duration,GROUP_CONCAT(genre_name) AS genre
		FROM movies
		INNER JOIN directors ON movies.movie_director_id = directors.director_id
		INNER JOIN movie_genre ON movies.movie_id = movie_genre.movie_id_fk
		INNER JOIN genres ON movie_genre.genre_id_fk = genres.genre_id
        GROUP BY movie_id
        ORDER BY RAND()
        LIMIT 1;
    END;
    
    $$
DROP EVENT IF EXISTS `dailyRandom_Movie`;

STARTS "2021-04-20 09:00:00"