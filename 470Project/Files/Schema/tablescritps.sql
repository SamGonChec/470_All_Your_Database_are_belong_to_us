use db470;
CREATE TABLE visitor_ratings (
rating_id	INT NOT NULL,
movie_id	INT NOT NULL,
rating		DOUBLE,
CONSTRAINT pk_visitor_ratings PRIMARY KEY(rating_id),
CONSTRAINT fk_visitor_ratings_movies FOREIGN KEY(movie_id) REFERENCES movies(movie_id)
);
CREATE TABLE ratings(
movie_id_fk INT NOT NULL,
teen_rating DOUBLE NOT NULL,
adult_rating DOUBLE NOT NULL,
elder_rating DOUBLE NOT NULL,
men_rating DOUBLE NOT NULL,
women_rating DOUBLE NOT NULL,
CONSTRAINT pk_multiple_ratings_movies PRIMARY KEY (movie_id_fk),
CONSTRAINT fk_multiple_ratings_movies FOREIGN KEY (movie_id_fk) REFERENCES movies(movie_id)
);
CREATE TABLE works_on(
actor_id_fk INT NOT NULL,
movie_id_fk INT NOT NULL,
character_played VARCHAR(50),
CONSTRAINT pk_actor_works_on PRIMARY KEY(actor_id_fk, movie_id_fk),
CONSTRAINT fk_actor_works_on FOREIGN KEY (actor_id_fk) REFERENCES actors(actor_id),
CONSTRAINT fk_movie_works_on FOREIGN KEY (movie_id_fk) REFERENCES movies(movie_id)
);
CREATE TABLE movie_genre(
movie_id_fk INT NOT NULL,
genre_id_fk INT NOT NULL,
CONSTRAINT pk_movie_id_genre_id PRIMARY KEY(movie_id_fk, genre_id_fk),
CONSTRAINT fk_movie_genre FOREIGN KEY (movie_id_fk) REFERENCES movies(movie_id),
CONSTRAINT fk_genre FOREIGN KEY (genre_id_fk) REFERENCES genres(genre_id)
);
INSERT INTO movie_genre (movie_id_fk, genre_id_fk)
VALUES
(4,7),
(4,17),
(5,1),
(5,2),
(5,5),
(6,1),
(6,2),
(7,7),
(7,6),
(8,7),(9,1),(10,2),(11,2),(12,11),(13,1),(13,2),(14,2),(14,7),(15,1),(15,7),(16,2),(17,11),(18,1),(19,11),(20,6),(21,2),(21,12),(22,6),(23,14),(23,13),(24,7),(25,1),(25,4),(26,7),(27,6),(27,1),(28,13),
(28,12),(29,7),(30,1),(31,7),(32,6),(33,1),(33,4),(34,1),(34,7),(35,1),(35,13),(36,1),(37,2),(37,4),(38,1),(39,1),(40,7),(40,6),(41,7),(42,6),(43,13),(44,11),(45,6),(46,1),(46,2),(47,6),(47,12),(48,2),(48,5),(49,1),(50,6),(51,1),(52,1),
(53,7),(54,1),(54,14),(55,1),(55,14),(56,2),(57,14),(57,13),(58,6),(58,10),(59,7),(59,10),(60,11),(61,1),(61,2),(62,13),(62,3),(63,14),(63,3),(64,6),(64,10),(65,6),(65,4),(66,1),(66,7),(67,6),(67,12),(68,1),(69,6),(70,1),(70,12),(71,6),(71,9),(72,1),(73,6),(73,5),(74,6),(74,10),(75,2),(76,1),(77,1),(78,2),(78,15),(79,5),(80,1),(81,4),(82,7),(83,11),(84,14),(85,1),(86,1),(87,14),(88,1),(89,14),(90,1),(91,14),(92,5),(93,6),(94,7),(95,1),(96,1),(97,6),(98,13),(99,6),(100,14),(101,11),(102,1),(103,2),(104,14),(105,1),(106,14),(107,7),(108,1),(109,6),(110,6),(111,1),(111,13),(112,11),(113,10),(114,1),(114,15),(115,2),(115,5),(116,7),(117,13),(118,1),(118,11),(119,6),(120,2),(121,2),(122,3),(123,2),(124,1),(125,1),(125,12),
(126,2),(127,1),(128,3),(128,14),(129,7),(129,8),(130,2),(130,12),(131,6),(132,2),(133,6),(133,13),(134,6),(134,8),(135,2),(136,14),(137,14),(138,6),(139,3),(140,3),(141,4),(142,7),(143,11),(144,6),(145,6),(146,6),(147,7),(148,1),(149,7),(150,1),(151,2),(152,2),(152,4),(153,6),(154,1),(155,6),(156,1),(157,1),(158,7),(159,1),(159,5),(160,1),(161,12),(161,15),(162,1),(163,1),(164,1),(165,1),(166,6),(167,1),(168,11),(168,9),(169,1),(170,1),(171,14),(172,2),(172,17),(173,2),(174,6),(175,2),(176,1),(177,1),(178,7),(179,13),(180,1),(181,7),(181,10),(182,13),(183,17),(184,4),(185,6),(186,6),(187,6),(188,5),(188,13),(189,14),(190,7),(191,6),(192,6),(193,14),(194,13),(195,1),(195,16),(196,1),(197,14),(198,2),(199,11),
(200,1),(201,1),(202,6),(203,11),(204,1),(205,1),(206,1),(207,6),(208,7),(209,7),(210,6),(211,1),(212,6),(213,1),(214,1),(215,1),(216,1),(217,1),(218,1),(219,6),(220,1),(220,7),(221,1),(222,2),(223,13),(224,14),(225,7),(226,6),(227,7),(228,1),(229,1),(229,17),(230,13),(231,6),(231,15),(232,14),(233,1),(234,1),(235,1),(236,6),(236,10),(237,11),(237,9),(238,6),(239,2),(240,2),(240,10),(241,15),(242,2),(243,2),(244,4),(244,1),(245,2),(246,6),(246,8),(247,6),(247,12),(248,7),(249,14),(250,11),(251,7),(251,10),(252,6),(253,11),(254,1),(255,13),(256,7),(257,1),(258,1),(259,13),(260,6),(261,7),(262,6),(263,7),(264,6),(265,1),(266,6),(267,7),(268,6),(269,1),(270,13),(271,1),(272,2),(272,5),(273,1),(273,14),(274,7),(275,2),(276,1),(277,1),(277,14),(278,14),(279,7),(280,1),(281,14),(281,3),(282,1),(283,12),(284,11),(285,1),(286,1),(287,1),(288,1),(289,1),(290,12),(291,1),(292,7),(292,8),(293,7),(294,6),(295,1),(296,6),(297,2),(298,7),(299,11),(300,6);

CREATE TABLE randomDailyMovie(
	rmovie_id INT NOT NULL,
    rmovie_title VARCHAR(50) NOT NULL,
    rmovie_description text NOT NULL,
    rmovie_director VARCHAR(50) NOT NULL,
    ryear_published YEAR NOT NULL,
    rmovie_duration INT NOT NULL,
    rmovie_genre VARCHAR(50),
    CONSTRAINT randomDailyMovie_pk PRIMARY KEY (rmovie_id)
);      
INSERT INTO works_on (actor_id_fk, movie_id_fk, character_played)
VALUES
(2,1, 'Groot'),
(3,1, 'Rocket'),(4,1, 'Gamora'),(5,2,'Elizabeth Shaw'),(6,2,'Charlie Halloway'),(7,2,'David'),(8,2,'Meredith Vickers'),(9,3,'Dennis Patricia Hedwig The Beast Kevin Wendell Crumb Barry Orwell Jade'),(10,3, 'Casey Cooke'),(11,3,'Claire Benoit'),(12,3,'Marcia'),(13,4,'Buster Moon'),(14,4,'Rosita'),(15,4,'Mike'),(16,4,'Ash'),(17,5,'Deadshot'),(18,5,'Joker'),(19,5,'Harley Quinn'),(20,5,'Amanda Waller'),(21,6,'William'),(22,6,'Lin Mae'),(23,6,'Ballard'),(24,6,'Wang'),(25,7,'Sebastian'),(26,7,'Mia'),(27,7,'Laura'),
(28,7,'Bill'),(29,8,'Patricia Deville'),(30,8,'DS Elena Baines'),(31,8,'Richard Thorncroft'),(32,8,'Kenneth'),(33,9,'Percy Fawcett'),(34,9,'Henry Costin'),(35,9,'Nina Fawcett'),(36,9,'Jack Fawcett'),(37,10,'Aurora Lane'),(38,10,'Gus Mancuso'),(39,11,'Newt'),(41,11,'Queenie'),(40,11,'Tina'),(42,11,'Jacob'),(43,12,'Katherine G. Johnson'),(44,12,'Dorothy Vaughan'),(45,12,'Mary Jackson'),(46,12,'Al Harrison'),(47,13,'Jyn Erson'),(48,13,'Cassian Andor'),(49,13,'K-2SO'),(50,13,'Chirrut Imwe'),(51,14,'Moana'),(52,14,'Maui'),(53,14,'Gramma Tala'),(54,14,'Chief Tui'),(55,15,'Gloria'),(56,15,'Oscar'),(57,15,'Joel'),(58,15,'Garth'),(59,16,'Max'),(60,16,'Duke'),(61,16,'Snowball'),(62,16,'Chloe'),(63,17,'Desmond Doss'),(64,17,'Captain Glover'),(65,17,'Smitty Ryker'),(66,17,'Dorothy Schutte'),(21,18,'Jason Bourne'),(67,18,'Robert Dewey'),(68,18,'Heather Lee'),(69,18,'Asset'),(70,19,'Saroo Brierley'),(71,19,'Sue Brierley'),(72,19,'Lucy'),(73,19,'Young Saroo'),
(74,20,'Louise Banks'),(75,20,'Ian Donelly'),(76,20,'Colonel Weber'),(77,21,'Kay'),(13,21,'Kenny Wells'),(78,21,'Brian Woolf'),(79,22,'Lee Chandler'),(80,22,'Randi Chandler'),(81,22,'Joe Chandler'),(82,22,'Lucas'),(83,23,'Vicky Maloney'),(84,23, 'John White'),(85,23,'Maggie'),(86,24,'Poppy'),(87,24,'Branch'),(88,24,'Bridget'),(89,24,'King Gristle'),(90,25,'Jake Morrison'),(91,25,'David Levinson'),(92,25,'President Whitmore'),(93,25,'Patricia Whitmore'),(94,26,'Fiona'),(95,26,'Dom'),(96,26,'Martha'),(97,26,'Norman'),(98,27,'Shivudu'),(99,27,'Bhallaladeva'),(100,27,'Avanthika'),(101,28,'Kate Bowman'),(102,28,'Evan'),(103,28,'Dr. Sykes'),(104,29,'Amy'),(105,29,'Carla'),(106,29,'Kika'),(107,29,'Gwendolyn'),(108,30,'Sofia'),(109,30,'Joseph Lynch'),(110,31, 'Stephanie Fleming'),(111,31,'Patty Dunne'),(74,32,'Susan Morrow'),(112,32,'Tony Hastings'),(113,32,'Ray Marcus');