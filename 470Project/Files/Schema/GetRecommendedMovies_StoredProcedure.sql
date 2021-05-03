DELIMITER $$
CREATE PROCEDURE recommendMovie(IN genreNum INT,IN male BIT,IN age INT)
BEGIN
		IF male = 0 and age = 0
    THEN
		SELECT (women_rating + teen_rating) AS total, movie_title 
        from ratings
        JOIN movies ON ratings.movie_id_fk = movies.movie_id
        JOIN movie_genre ON movies.movie_id = movie_genre.movie_id_fk
		JOIN genres ON movie_genre.genre_id_fk = genres.genre_id
        WHERE genres.genre_id = genreNum
        ORDER BY total DESC
        LIMIT 5;
	END IF;
    IF male = 0 and age = 1
	THEN
		SELECT (women_rating + adult_rating) AS total, movie_title 
        FROM ratings
        JOIN movies ON ratings.movie_id_fk = movies.movie_id
        JOIN movie_genre ON movies.movie_id = movie_genre.movie_id_fk
		JOIN genres ON movie_genre.genre_id_fk = genres.genre_id
        WHERE genres.genre_id = genreNum
        ORDER BY total DESC
        LIMIT 5;
	END IF;
    IF male = 0 and age = 2
	THEN
		SELECT (women_rating + elder_rating) AS total, movie_title 
        FROM ratings
        JOIN movies ON ratings.movie_id_fk = movies.movie_id
        JOIN movie_genre ON movies.movie_id = movie_genre.movie_id_fk
		JOIN genres ON movie_genre.genre_id_fk = genres.genre_id
        WHERE genres.genre_id = genreNum
        ORDER BY total DESC
        LIMIT 5;
	END IF;
    -- Male ratings
    IF male = 1 and age = 0
    THEN
		SELECT (men_rating + teen_rating) AS total, movie_title 
        FROM ratings
        JOIN movies ON ratings.movie_id_fk = movies.movie_id
        JOIN movie_genre ON movies.movie_id = movie_genre.movie_id_fk
		JOIN genres ON movie_genre.genre_id_fk = genres.genre_id
        WHERE genres.genre_id = genreNum
        ORDER BY total DESC
        LIMIT 5;
	END IF;
    IF male = 1 and age = 1
	THEN
		SELECT (men_rating + adult_rating) AS total, movie_title 
        FROM ratings
        JOIN movies ON ratings.movie_id_fk = movies.movie_id
        JOIN movie_genre ON movies.movie_id = movie_genre.movie_id_fk
		JOIN genres ON movie_genre.genre_id_fk = genres.genre_id
        WHERE genres.genre_id = genreNum
        ORDER BY total DESC
        LIMIT 5;
	END IF;
    IF male = 1 and age = 2
	THEN
		SELECT (men_rating + elder_rating) AS total, movie_title 
        FROM ratings
        JOIN movies ON ratings.movie_id_fk = movies.movie_id
        JOIN movie_genre ON movies.movie_id = movie_genre.movie_id_fk
		JOIN genres ON movie_genre.genre_id_fk = genres.genre_id
        WHERE genres.genre_id = genreNum
        ORDER BY total DESC
        LIMIT 5;
	END IF;
END
$$