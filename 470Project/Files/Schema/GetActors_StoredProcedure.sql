DELIMITER $$
CREATE PROCEDURE GetActors()
BEGIN
	SELECT actor_fname, actor_lname, actor_dob, actor_dob_city, actor_dob_country
		FROM actors;
END$$