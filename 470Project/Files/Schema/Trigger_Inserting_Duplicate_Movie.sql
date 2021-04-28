use db470
DELIMITER $$
CREATE TRIGGER BeforeInsertMovie
BEFORE INSERT ON movies
FOR EACH ROW
BEGIN
IF(EXISTS(SELECT 1 FROM movies WHERE movie_title = NEW.movie_title)) THEN
SIGNAL SQLSTATE VALUE '45000' SET MESSAGE_TEXT = 'you cant insert a duplicate title';
END IF;
END$$
