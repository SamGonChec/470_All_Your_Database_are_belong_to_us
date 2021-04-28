DELIMITER $$
CREATE PROCEDURE GetRatings()
BEGIN
	SELECT movie_title, teen_rating, adult_rating, elder_rating, men_rating, women_rating
						from ratings
						INNER JOIN movies ON ratings.movie_id_fk = movies.movie_id;
                        
END$$