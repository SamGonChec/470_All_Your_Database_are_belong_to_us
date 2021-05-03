DELIMITER $$
CREATE
	EVENT `resetRandom_Movie`
		ON SCHEDULE EVERY 1 DAY 
	DO BEGIN
		DELETE FROM randomDailyMovie;
        
	END
    $$
    DROP EVENT `resetRandom_Movie`;
    
    STARTS "2021-04-20 08:59:59"