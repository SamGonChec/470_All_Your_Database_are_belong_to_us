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
-- Table structure for table `ratings`
--

DROP TABLE IF EXISTS `ratings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ratings` (
  `movie_id_fk` int NOT NULL,
  `teen_rating` double NOT NULL,
  `adult_rating` double NOT NULL,
  `elder_rating` double NOT NULL,
  `men_rating` double NOT NULL,
  `women_rating` double NOT NULL,
  PRIMARY KEY (`movie_id_fk`),
  CONSTRAINT `fk_multiple_ratings_movies` FOREIGN KEY (`movie_id_fk`) REFERENCES `movies` (`movie_id`),
  CONSTRAINT `Check_Adult` CHECK (((`adult_rating` >= 1) and (`adult_rating` <= 10))),
  CONSTRAINT `Check_Elder` CHECK (((`elder_rating` >= 1) and (`elder_rating` <= 10))),
  CONSTRAINT `Check_Teen` CHECK (((`teen_rating` >= 1) and (`teen_rating` <= 10)))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ratings`
--

LOCK TABLES `ratings` WRITE;
/*!40000 ALTER TABLE `ratings` DISABLE KEYS */;
INSERT INTO `ratings` VALUES (1,6,8.3,6.8,9.2,8.3),(2,7.9,7.4,9.6,9.3,9),(3,6.7,9.4,8.8,8.1,7.2),(4,6.1,6.4,7.5,6.6,6.7),(5,10,7.8,6.5,6,6),(6,7.5,8.1,8.3,8.4,8.4),(7,6.7,8.7,7.8,7.4,6.2),(8,8.4,9.1,9.2,8.1,7.2),(9,9.5,8.9,9.8,9.7,8.2),(10,6.6,7.8,6.9,9.4,6.8),(11,9.1,9.4,10,10,8.4),(12,7.6,7.1,7.2,9.4,6.1),(13,7.5,6.4,8.7,6.2,6),(14,9.7,7.1,7.1,8.4,8.8),(15,9.4,8.9,7.9,6.8,9),(16,7.9,7.8,9.8,9,6.4),(17,8.4,7.5,8.9,8.4,8.3),(18,7.4,6.6,6.9,7.7,9.2),(19,8.1,10,9,7.4,6.7),(20,8.6,8,6.3,8.8,8),(21,6.6,9.8,6.6,9.6,8.8),(22,7.2,7.7,6.3,9.9,8.7),(23,6.6,9.5,9.3,8.3,6.8),(24,6.7,9.3,7.9,6.6,8),(25,8.9,7.6,7.1,8.3,8.7),(26,9,8.9,7.9,6.5,7.5),(27,9.3,6.1,8.1,8.7,7.7),(28,6.4,9.8,9.7,8.2,7.4),(29,7.9,7.5,9.4,7.3,7.8),(30,7.1,9.9,7.2,9,8.3),(31,6.8,9,9.4,7.6,8),(32,9.6,6.1,10,8.3,6.2),(33,8.1,6.8,9.4,8.5,8.6),(34,6.8,9.4,6.5,6.4,9),(35,7.3,9.8,7.1,7.3,6.6),(36,8.9,9.3,8.8,8.4,9),(37,7,6.6,6,6.2,9.2),(38,9.4,6.8,6.5,8.2,6.1),(39,6.5,7.8,9,8.7,8.2),(40,6.3,7.7,6.8,8.8,7.2),(41,7.7,6.9,8.3,8.1,8.5),(42,6.6,8,9.9,8.8,9.7),(43,6.8,7.3,6.7,10,7.8),(44,10,6.4,8.5,6.4,7.8),(45,9.7,6.2,9.6,7.2,6.9),(46,9.1,7.6,6.8,8.5,8.4),(47,7.8,7.9,8.4,8.5,9.4),(48,9.3,8.5,8.9,8.3,7.5),(49,6.7,9,8.2,9.6,7),(50,6.8,8.4,8.8,8.3,7.4),(51,8,6.3,9,8.4,8.5),(52,8.8,9.2,6.6,8.3,9.5),(53,9.6,8.5,8.9,6.2,8.7),(54,9.9,7.3,8.3,7.2,6.7),(55,6.4,9.5,9.4,9,6.6),(56,7.3,6.3,6.3,8.6,9.3),(57,8.2,7.8,7.6,7.2,7.9),(58,8,6.6,7.3,9,7.3),(59,9.3,9.8,9.5,8.9,7.2),(60,9.8,6.5,6.3,9.1,8.1),(61,8.4,9.8,6.3,9.5,8.6),(62,7.3,6.4,8,6.9,7.2),(63,9.7,8.2,8.7,6.5,8),(64,7.5,8,9.2,8,7.5),(65,8.8,8.1,8.4,7.6,6),(66,8.8,6.4,8.5,9.5,8),(67,9,8,7.5,9.1,8.2),(68,7.4,9.8,8.5,6.7,7.5),(69,6.5,9,9.8,8.4,6.1),(70,7.3,6.2,8.6,6.5,9.4),(71,9.5,8.4,8.9,9.4,6.1),(72,6.5,8.8,8.5,6.9,6.3),(73,6.7,8.5,7.4,7.3,7.5),(74,8.6,9.2,9.2,8.1,8.4),(75,9.2,9.6,6.6,8.5,7.6),(76,7,6.5,9.4,6.3,7.7),(77,8.3,7.2,8.2,6.9,7.2),(78,6.4,9.2,6.5,7.1,9.2),(79,9.6,9.2,9,8.5,7.4),(80,9.4,6.9,9.5,6.9,7),(81,8.2,9.9,6.2,6.3,8.1),(82,7.7,6.4,7,9.6,6.9),(83,6.6,6.5,9.7,6.3,6.2),(84,6.2,7.3,9.7,7.6,7.7),(85,9.8,9.3,8.1,9.4,8.8),(86,7.6,7,6,8.1,9.8),(87,7.6,7,8.3,7,8.7),(88,9.8,7.7,9.6,6,9.8),(89,8.4,9.1,8.3,6.6,6.9),(90,7.5,6,7.7,6.3,8.6),(91,9.4,6.3,9.2,8.6,8.8),(92,9.2,8.1,8.7,6.6,8.8),(93,8.9,9.1,6.1,9.5,8.6),(94,8.8,6.3,8.2,9.8,6.2),(95,7.1,6.6,9.9,8.5,7.2),(96,9.7,7.5,8.8,6.9,6.6),(97,7,8.1,9.6,6.4,9.6),(98,7.8,6.3,9.1,6.7,9.9),(99,9.1,9.5,6.8,7.8,6),(100,9,6.5,7.6,7.2,10),(101,6.2,7,6.8,7,6.6),(102,8.5,9.5,9.8,6.8,9.1),(103,8.6,8.6,9.6,7.8,9.7),(104,8.7,6.6,8.5,8.3,7.7),(105,9.8,8.2,8.3,8.1,7),(106,7.6,7.4,6.1,9.2,6.8),(107,6.3,7.6,8.4,6.3,6.8),(108,6.6,8.6,7.8,8.4,8.8),(109,7.8,8.7,7.6,9.3,8.4),(110,6.8,9.8,9.5,7.6,9.9),(111,6.7,9.6,8.3,7.8,8.5),(112,8.8,6.2,7.1,7,7.6),(113,9.6,8.8,8.9,9.6,7.6),(114,7.6,9.6,7.2,7.6,8.3),(115,7.4,8.9,9,8.9,9),(116,6.6,6.8,7.1,8.7,9.6),(117,7.5,8.1,6.4,9.6,6.8),(118,8.1,8.6,7.8,8.8,6.4),(119,6.3,6.3,6.1,7.4,7.2),(120,8.8,6.6,7.6,6.3,8.7),(121,8.9,6.8,8.8,8.5,8.6),(122,8.2,6.4,8.2,6.2,9.9),(123,7.9,9.9,8.9,8.1,8.7),(124,8.8,7.5,7.6,6.2,9.2),(125,6.7,6.2,7.2,9.1,6.8),(126,7.3,7.9,6,7.8,8),(127,8.4,9,7.6,7.4,9.4),(128,9.8,8.5,10,6.2,8.3),(129,9.5,7.5,7.2,7.1,6.1),(130,8.5,7.6,6.1,6.1,7.8),(131,9.4,9.7,7.6,8.9,8.4),(132,9.2,9.5,8.3,8.4,6.3),(133,9.2,7.8,8.4,8.4,8.3),(134,9.3,8.7,7.4,6,7.1),(135,7.4,6.9,9.1,7.5,9.5),(136,6.5,8.9,8.5,9.6,6.7),(137,8.1,9.6,9.1,9.9,6.8),(138,9.6,9.2,9.8,9.4,9.6),(139,8.5,6.7,8.5,7.1,7),(140,8.9,9.2,6.7,8.9,7.9),(141,6.3,9.2,9.4,6.5,7.2),(142,8.3,7.9,9,6.8,8.9),(143,10,6.1,8.6,8.8,6.7),(144,6.3,7.1,8.7,9.4,8.2),(145,7.5,9.1,6.9,8.6,6.9),(146,6.8,9.9,7.1,6.1,9.1),(147,6.6,6.2,6,7.4,8.6),(148,7.4,7.7,7.7,6.4,8.2),(149,8.8,7.4,8.6,9.5,8.1),(150,8.3,6.2,7.9,7,7.7),(151,9.5,7.9,6.3,8.3,8.8),(152,9.1,9.5,9.4,7.2,9.5),(153,8.6,9,9.3,9.1,9.5),(154,9.6,9.7,8.1,7.8,6.4),(155,7.4,9.3,7.7,6.7,6),(156,8.6,9.1,6.3,6.4,7.5),(157,8.7,9.2,6.6,6.6,6.2),(158,7.4,6.1,9.9,8.6,6.2),(159,9.7,8.5,7.7,6.1,7),(160,7.6,8.6,9.1,6.1,9.3),(161,6.6,8.5,8.2,9.9,7.9),(162,6.9,7.2,9.1,7.4,7.9),(163,8.4,6.4,9.9,9,6.6),(164,7.8,8.8,10,9.1,8.6),(165,8.5,9.8,8.8,7.2,8.3),(166,7.2,8.2,8.8,7,8.2),(167,8,9.8,8.7,9.1,8.5),(168,7.8,9.2,9,10,6.8),(169,8.5,9.6,8.4,9.7,8),(170,8,7.8,9.6,9.8,6.7),(171,7,6.8,8.9,9.8,8.5),(172,6.2,8.6,6.1,8.2,8.2),(173,7.8,6.2,10,6.5,8.4),(174,6.2,6.7,8.6,7.3,7.3),(175,8.6,7.6,7.7,6.9,8.7),(176,6.7,8,8,9.2,7.7),(177,6,7.4,7.5,6.5,9.3),(178,8.9,9.6,8.6,8.6,8.1),(179,8.9,8.9,9.8,7.9,7.5),(180,6.4,9.6,9.3,7.8,6.4),(181,9.5,9,6.2,7.7,9.7),(182,6.3,6.7,6.8,6.5,8.4),(183,6.5,8.5,8.3,8.8,8.9),(184,9.7,8.7,7.2,9.2,7.5),(185,10,9.1,6.8,6.7,7.6),(186,6.7,8.3,6.8,9.8,6.8),(187,7.5,7.2,6.5,6.8,6.2),(188,9.1,9,9.5,6,7.8),(189,7.7,9.2,7.8,8,9),(190,7,8.2,6.4,9.7,9.6),(191,9.4,6.2,8,8.5,9),(192,9,7,9.6,9.2,6.8),(193,8.2,6.2,8.1,9.2,8.8),(194,6.1,8.9,8.2,9.7,9.5),(195,9.2,7.2,7.6,7.9,6.2),(196,8.6,6,9.1,9,6.9),(197,6.6,6.2,8.7,6.1,7.4),(198,8.8,9.2,7.7,9.9,8.5),(199,7.2,7.9,9.5,6.3,6.4),(200,6.6,6.6,9.7,7.2,7.5),(201,9.3,6.2,9.3,7,9.6),(202,7,7.1,6.8,6.9,9.4),(203,9.5,9.6,9.4,8.4,6.2),(204,6.7,6.7,7.4,7.8,6.7),(205,9.6,8.5,8.2,9.6,8.1),(206,8.9,10,9.9,9.5,9.4),(207,6.6,7.5,7.1,6.7,9.9),(208,9,8.9,6.1,8.6,9.3),(209,8.9,9.3,6.5,8.9,7.5),(210,8.6,9.7,9.6,6.1,9.1),(211,7.8,6,6.9,7.7,6.6),(212,9.7,8,7,9,9.6),(213,6.9,6.1,9.1,6.9,8.2),(214,9.2,9.4,7.3,8.2,10),(215,9.5,8.6,6.9,9.3,7.5),(216,7.5,6.1,8.2,7.6,6.5),(217,7.3,9.6,6.8,9.8,6.5),(218,9.4,9.6,7.8,6.9,8.5),(219,8.2,8.5,7.7,6.1,9.5),(220,6.6,7.1,7.2,8.7,8.2),(221,9.8,8.4,9.2,7.7,9.3),(222,9,6.5,8.1,6.1,6),(223,9,7.3,9.6,7.8,9.1),(224,6.2,8.5,6.1,8.7,9.9),(225,8,8.8,7.1,9.3,8.6),(226,8.4,7.1,9.4,7.8,9),(227,7.4,6.1,7.9,8.5,7.6),(228,7.5,6.1,7.2,8.4,9.5),(229,7.7,9.7,7.5,8.1,6),(230,9.9,9.5,7.7,8.8,7.3),(231,8.4,8,8.2,6.2,7.5),(232,6.9,9.7,9.4,9.9,8.4),(233,8.3,6.3,7.6,7.2,8),(234,6.3,9.5,7.2,9.1,9.7),(235,8.4,6.9,7.1,8.2,9.5),(236,7,7.2,8.9,9.5,6.9),(237,6.8,7.8,9.6,8.3,6.1),(238,10,6.2,8.5,7,6.7),(239,6.5,6.9,8,9.8,6.2),(240,6.3,7.4,7.1,8.1,8),(241,7.6,9.7,8.4,7.2,7.9),(242,7.6,9.8,8.2,9.3,9.2),(243,9.2,8.4,9.5,7.3,9.8),(244,7.1,9.8,8.9,6.5,9.1),(245,7.9,6.7,6.1,6.2,7.8),(246,9.4,6.5,6.1,6.9,9.3),(247,9.2,9.1,8.6,7.2,9.1),(248,9.7,9.4,7,8,6.1),(249,6.3,6.1,7.4,8.9,7.6),(250,6.7,7.2,6.7,9,6.5),(251,6.2,8.1,7.4,9.2,6.6),(252,9.6,6.5,6.1,6.7,9.3),(253,7,8.3,7.4,8.2,8.7),(254,9.5,9.7,9.8,6.4,6.6),(255,8.2,9.2,9.6,6.3,9.5),(256,9.3,7.6,8.2,8.7,7.8),(257,7.1,9.8,9.9,8.9,8.4),(258,7.1,6.5,6.8,8.4,7.9),(259,7.4,6.9,7.9,8.8,9.8),(260,8.7,9.9,7,8.1,6.9),(261,9.6,7.9,7.3,8.1,8.3),(262,7.3,7.4,6.7,7.2,6.9),(263,9.7,9,9.2,8.6,8.7),(264,7.1,9.1,6.3,8.9,9.4),(265,7.4,6.2,7.9,6.1,9.4),(266,8.5,8.2,8.4,8.3,9.1),(267,8.6,8.8,9,9.5,6.6),(268,7.7,9.1,6.1,7.8,6.2),(269,8,7.1,6.3,7,9.9),(270,8,8.5,6.3,7.5,9.8),(271,9.4,7.3,7,7.2,6.2),(272,10,6.7,6.3,6.9,7.2),(273,9.1,8.6,6.3,7.1,6.5),(274,6.9,8.3,6.7,8.5,6.4),(275,7.8,9,7.3,6.2,7.1),(276,8.8,9.5,8.3,9.5,6.3),(277,9.2,10,8.5,8.5,8.4),(278,8.4,6.8,9.9,6.9,6.2),(279,7,7,7.6,9.2,7.1),(280,9.6,7.5,8.9,6.8,6.2),(281,8.4,7.4,7.4,8.7,9.9),(282,6.9,9.6,7.4,9.8,8.7),(283,6.8,7.1,7.4,8.1,7.2),(284,6.9,6.4,6.4,8.8,9.4),(285,8.7,9.3,6,8,8.4),(286,9.7,7.2,8.4,9,9.5),(287,9.6,9.3,8.4,7.2,9.1),(288,6.6,8.2,8.8,7.6,10),(289,6.4,7.6,6.1,8.7,7),(290,6.7,6.9,6.8,9.4,9.1),(291,6.2,7.9,6.2,9.8,6.3),(292,8.3,9.9,8.3,9.5,7.6),(293,7.6,7.7,8.6,9.3,9.8),(294,7.1,6,8.5,6.2,8.6),(295,7.7,9.8,8.4,6.8,7.7),(296,7.4,8.5,9.2,6,6.4),(297,7.6,7.1,7.3,9.3,9.4),(298,7.2,6.8,8.3,7.9,10),(299,7.7,7.5,7.7,7.5,8.3),(300,9.5,7.3,7.6,9.8,8);
/*!40000 ALTER TABLE `ratings` ENABLE KEYS */;
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

-- Dump completed on 2021-05-06 20:55:52
