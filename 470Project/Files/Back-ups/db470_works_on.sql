-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: db470.cn4tmvqbp6rx.us-east-2.rds.amazonaws.com    Database: db470
-- ------------------------------------------------------
-- Server version	8.0.20

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '';

--
-- Table structure for table `works_on`
--

DROP TABLE IF EXISTS `works_on`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `works_on` (
  `actor_id_fk` int NOT NULL,
  `movie_id_fk` int NOT NULL,
  `character_played` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`actor_id_fk`,`movie_id_fk`),
  KEY `fk_movie_works_on` (`movie_id_fk`),
  CONSTRAINT `fk_actor_works_on` FOREIGN KEY (`actor_id_fk`) REFERENCES `actors` (`actor_id`),
  CONSTRAINT `fk_movie_works_on` FOREIGN KEY (`movie_id_fk`) REFERENCES `movies` (`movie_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `works_on`
--

LOCK TABLES `works_on` WRITE;
/*!40000 ALTER TABLE `works_on` DISABLE KEYS */;
INSERT INTO `works_on` VALUES (1,1,'Star Lord'),(2,1,'Groot'),(3,1,'Rocket'),(4,1,'Gamora'),(5,2,'Elizabeth Shaw'),(6,2,'Charlie Halloway'),(7,2,'David'),(8,2,'Meredith Vickers'),(9,3,'Dennis Patricia Hedwig The Beast Kevin Wendell Cru'),(10,3,'Casey Cooke'),(11,3,'Claire Benoit'),(12,3,'Marcia'),(13,4,'Buster Moon'),(13,21,'Kenny Wells'),(14,4,'Rosita'),(15,4,'Mike'),(16,4,'Ash'),(17,5,'Deadshot'),(18,5,'Joker'),(19,5,'Harley Quinn'),(20,5,'Amanda Waller'),(21,6,'William'),(21,18,'Jason Bourne'),(22,6,'Lin Mae'),(23,6,'Ballard'),(24,6,'Wang'),(25,7,'Sebastian'),(26,7,'Mia'),(27,7,'Laura'),(28,7,'Bill'),(29,8,'Patricia Deville'),(30,8,'DS Elena Baines'),(31,8,'Richard Thorncroft'),(32,8,'Kenneth'),(33,9,'Percy Fawcett'),(34,9,'Henry Costin'),(35,9,'Nina Fawcett'),(36,9,'Jack Fawcett'),(37,10,'Aurora Lane'),(38,10,'Gus Mancuso'),(39,11,'Newt'),(40,11,'Tina'),(41,11,'Queenie'),(42,11,'Jacob'),(43,12,'Katherine G. Johnson'),(44,12,'Dorothy Vaughan'),(45,12,'Mary Jackson'),(46,12,'Al Harrison'),(47,13,'Jyn Erson'),(48,13,'Cassian Andor'),(49,13,'K-2SO'),(50,13,'Chirrut Imwe'),(51,14,'Moana'),(52,14,'Maui'),(53,14,'Gramma Tala'),(54,14,'Chief Tui'),(55,15,'Gloria'),(56,15,'Oscar'),(57,15,'Joel'),(58,15,'Garth'),(59,16,'Max'),(60,16,'Duke'),(61,16,'Snowball'),(62,16,'Chloe'),(63,17,'Desmond Doss'),(64,17,'Captain Glover'),(65,17,'Smitty Ryker'),(66,17,'Dorothy Schutte'),(67,18,'Robert Dewey'),(68,18,'Heather Lee'),(69,18,'Asset'),(70,19,'Saroo Brierley'),(71,19,'Sue Brierley'),(72,19,'Lucy'),(73,19,'Young Saroo'),(74,20,'Louise Banks'),(74,32,'Susan Morrow'),(75,20,'Ian Donelly'),(76,20,'Colonel Weber'),(77,21,'Kay'),(78,21,'Brian Woolf'),(79,22,'Lee Chandler'),(80,22,'Randi Chandler'),(81,22,'Joe Chandler'),(82,22,'Lucas'),(83,23,'Vicky Maloney'),(84,23,'John White'),(85,23,'Maggie'),(86,24,'Poppy'),(87,24,'Branch'),(88,24,'Bridget'),(89,24,'King Gristle'),(90,25,'Jake Morrison'),(91,25,'David Levinson'),(92,25,'President Whitmore'),(93,25,'Patricia Whitmore'),(94,26,'Fiona'),(95,26,'Dom'),(96,26,'Martha'),(97,26,'Norman'),(98,27,'Shivudu'),(99,27,'Bhallaladeva'),(100,27,'Avanthika'),(101,28,'Kate Bowman'),(102,28,'Evan'),(103,28,'Dr. Sykes'),(104,29,'Amy'),(105,29,'Carla'),(106,29,'Kika'),(107,29,'Gwendolyn'),(108,30,'Sofia'),(109,30,'Joseph Lynch'),(110,31,'Stephanie Fleming'),(111,31,'Patty Dunne'),(112,32,'Tony Hastings'),(113,32,'Ray Marcus');
/*!40000 ALTER TABLE `works_on` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-14 11:07:28
