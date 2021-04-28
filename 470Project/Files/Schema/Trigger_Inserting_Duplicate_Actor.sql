DELIMITER $$
CREATE TRIGGER duplicateActor
BEFORE INSERT ON actors
FOR EACH ROW
BEGIN
IF(EXISTS(SELECT 1 FROM actors WHERE actor_fname = NEW.actor_fname) 
			AND EXISTS(SELECT 1 FROM actors WHERE actor_lname = NEW.actor_lname)
            AND EXISTS(SELECT 1 FROM actors WHERE actor_dob = NEW.actor_dob)) THEN
SIGNAL SQLSTATE VALUE '45000' SET MESSAGE_TEXT = 'you cant insert a duplicate actor!';
END IF;
END$$

INSERT INTO actors(actor_fname,actor_lname,actor_dob,actor_dob_city,actor_dob_country)
VALUES ('Chris', 'Pratt', '1979-06-21', 'Virginia,Minnesota', 'United States')