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
-- Table structure for table `actors`
--

DROP TABLE IF EXISTS `actors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `actors` (
  `actor_id` int NOT NULL AUTO_INCREMENT,
  `actor_fname` varchar(50) NOT NULL,
  `actor_lname` varchar(50) DEFAULT NULL,
  `actor_dob` date NOT NULL,
  `actor_dob_city` varchar(50) DEFAULT NULL,
  `actor_dob_country` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`actor_id`),
  UNIQUE KEY `actor_id` (`actor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actors`
--

LOCK TABLES `actors` WRITE;
/*!40000 ALTER TABLE `actors` DISABLE KEYS */;
INSERT INTO `actors` VALUES (1,'Chris','Pratt','1979-06-21','Virginia, Minnesota','United States'),(2,'Vin','Diesel','1967-07-18','Alameda County, California','United States'),(3,'Bradley','Cooper','1975-01-05','Philadelphia, Pennsylvania','United States'),(4,'Zoe','Saldana','1978-06-19','Passaic, New Jersey','United States'),(5,'Noomi','Rapace','1979-12-28','Hudiksvall','Sweden'),(6,'Logan','Marshall-Green','1976-11-01','Charleston, South Carolina','United States'),(7,'Michael','Fassbender','1977-04-02','Heidelberg','Germany'),(8,'Charlize','Theron','1975-08-07','Benoni','South Africa'),(9,'James','McAvoy','1979-04-21','Glasgow','United Kingdom'),(10,'Anya','Taylor-Joy','1996-04-16','Miami, Florida','United States'),(11,'Haley','Lu Richardson','1995-03-07','Phoenix, Arizona','United States'),(12,'Jessica','Sula','1994-05-03','Gorseinon','United Kingdom'),(13,'Matthew','McConaughey','1969-11-04','Uvalde, Texas','United States'),(14,'Reese','Witherspoon','1976-03-22','New Orleans','United States'),(15,'Seth','MacFarlane','1973-10-26','Kent, Conneticut','United States'),(16,'Scarlett','Johansson','1984-11-22','New York City, New York','United States'),(17,'Will','Smith','1968-09-25','Philadelphia, Pennsylvania','United States'),(18,'Jared','Leto','1971-12-26','Bossier City, Louisiana','United States'),(19,'Margot','Robbie','1990-07-02','Dalby','Australia'),(20,'Viola','Davis','1965-08-11','Saint Matthews, South Carolina','United States'),(21,'Matt','Damon','1970-10-08','Boston, Massachusetts','United States'),(22,'Jing','Tian','1988-07-21','Xi\'an','China'),(23,'Willem','Dafoe','1955-07-22','Appleton, Wisconsin','United States'),(24,'Andy','Lau','1961-09-27','Tai Po','Hong Kong'),(25,'Ryan','Gosling','1980-11-12','London, Ontario',' Canada'),(26,'Emma','Stone','1988-11-06','Scottsdale, Arizona','United States'),(27,'Rosemarie','DeWitt','1971-10-26','Queens, New York City, New York','United States'),(28,'J.K.','Simmons','1955-01-09','Grosse Pointe, Michigan','United States'),(29,'Essie','Davis','1970-01-19','Hobart','Australia'),(30,'Andrea','Riseborough','1981-10-20','Newcastle Upon Tyne','United Kingdom'),(31,'Julian','Barratt','1968-04-04','Leeds','United Kingdom'),(32,'Kenneth','Branagh','1960-12-10','Belfast','United Kingdom'),(33,'Charlie','Hunnam','1980-04-10','Newcastle Upon Tyne','United Kingdom'),(34,'Robert','Pattinson','1986-04-13','London','United Kingdom'),(35,'Sienna','Miller','1981-12-28','New York City, New York','United States'),(36,'Tom','Holland','1996-06-01','Kingston upon Thames','United Kingdom'),(37,'Jennifer','Lawrence','1990-08-15','Indian Hills, Kentucky','United States'),(38,'Laurence','Fishburne','1961-07-30','Augusta, Georgia','United Kingdom'),(39,'Eddie','Redmayne','1982-01-06','Westminster','United Kingdom'),(40,'Katherine','Waterston','1980-03-03','Westminster','United Kingdom'),(41,'Alison','Sudol','1984-12-23','Seattle, Washington','United States'),(42,'Dan','Fogler','1976-10-20','Brooklyn, New York','United States'),(43,'Taraji','P. Henson','1970-09-11','Washington, District of Columbia','United States'),(44,'Octavia','Spencer','1970-04-25','Montgomery, Alabama','United States'),(45,'Janelle','Monae','1985-12-01','Kansas City, Kansas','United States'),(46,'Kevin','Costner','1955-01-18','Lynwood, California','United States'),(47,'Felicity','Jones','1983-10-17','Birmingham','United Kingdom'),(48,'Diego','Luna','1979-12-29','Toluca','Mexico'),(49,'Alan','Tudyk','1971-03-16','El Paso, Texas','United States'),(50,'Donnie','Yen','1963-07-27','Guangzhou','China'),(51,'Auli\'i','Cravalho','2000-11-22','Kohala, Hawaii','United States'),(52,'Dwayne','Johnson','1972-04-02','Hayward, California','United States'),(53,'Rachel','House','1971-12-20','Auckland','New Zealand'),(54,'Temuera','Morrison','1960-12-26','Rotorua','New Zealand'),(55,'Anne','Hathaway','1982-11-12','Brooklyn, New York','United States'),(56,'Jason','Sudeikis','1975-09-18','Fairfax, Virginia','United States'),(57,'Austin','Stowell','1984-12-24','Kensington, Conneticut','United States'),(58,'Tim','Blake Nelson','1964-04-11','Tulsa, Oklahoma','United States'),(59,'Louis','C.K.','1967-09-12','Washington, District of Columbia','United States'),(60,'Eric','Stonestreet','1971-09-09','Kansas City, Kansas','United States'),(61,'Kevin','Hart','1979-07-06','Philadelphia, Pennsilvania','United States'),(62,'Lake','Bell','1979-03-24','New York City, New York','United States'),(63,'Andrew','Garfield','1983-08-20','Los Angeles, California','United States'),(64,'Sam','Worthington','1976-08-02','Godalming','United Kingdom'),(65,'Luke','Bracey','1989-04-26','Sydney','Australia'),(66,'Teresa','Palmer','1986-02-26','Adelaide','Australia'),(67,'Tommy','Lee','1946-09-15','San Saba, Texas','United States'),(68,'Alicia','Vikander','1988-10-03','Gothenburg','Sweden'),(69,'Vincent','Cassel','1966-12-23','Paris','France'),(70,'Dev','Patel','1990-04-23','Harrow','United Kingdom'),(71,'Nicole','Kidman','1967-06-20','Honolulu, Hawaii','United States'),(72,'Rooney','Mara','1985-04-17','Bedford, New York','United States'),(73,'Sunny','Pawar','2008-06-27','Mumbai','India'),(74,'Amy','Adams','1974-08-20','Vicenza','Italy'),(75,'Jeremy','Renner','1971-01-07','Modesto, California','United States'),(76,'Forest','Whitaker','1961-07-15','Longview, Texas','United States'),(77,'Bryce','Dallas Howard','1981-03-02','Los Angeles, California','United States'),(78,'Corey','Stoll','1976-03-14','Upper West Side, New York','United States'),(79,'Casey','Affleck','1975-08-12','Falmouth, Massachusetts','United States'),(80,'Michelle','Williams','1980-09-09','Kalispell, Montana','United States'),(81,'Kyle','Chandler','1965-09-17','Buffalo, New York','United States'),(82,'Lucas','Hedges','1996-12-12','Brooklyn, New York','United States'),(83,'Ashleigh','Cummings','1992-11-11','Jeddah','Saudi Arabia'),(84,'Stephen','Curry','1976-04-26','Melbourne','Australia'),(85,'Susie','Porter','1970-01-01','Newcastle','Australia'),(86,'Anna','Kendrick','1985-08-09','Portland, Maine','United States'),(87,'Justin','Timberlake','1981-01-31','Memphis, Tennessee','United States'),(88,'Zooey','Deschanel','1980-01-17','Los Angeles, California','United States'),(89,'Christopher','Mintz-Plasse','1989-06-20','Woodland Hills, California','United States'),(90,'Liam','Hemsworth','1990-01-13','Melbourne','Australia'),(91,'Jeff','Goldblum','1952-10-22','West Homestead, Pennsylvania','United States'),(92,'Bill','Pullman','1953-12-17','Hornell, New York','United States'),(93,'Maika','Monroe','1993-05-29','Santa Barbara, California','United States'),(94,'Fiona','Gordon','1957-01-01','Canberra','Australia'),(95,'Dominique','Abel','1957-01-01','Brussels','Belgium'),(96,'Emmanuelle','Riva','1927-02-24','Chenimenil','France'),(97,'Pierre','Richard','1934-08-16','Valenciennes','France'),(98,'Prabhas','Raju','1979-10-23','Chennai','India'),(99,'Rana','Daggubati','1984-12-14','Chennai','India'),(100,'Tamannaah','Bhatia','1989-12-21','Mumbai','India'),(101,'Jocelin','Donahue','1981-12-08','Bristol, Connecticut','United States'),(102,'Jesse','Bradford','1979-04-28','Norwalk, Connecticut','United States'),(103,'Lori','Petty','1963-10-14','Chattanoogan, Tennessee','United States'),(104,'Mila','Kunis','1983-08-14','Chernivtsi, Ukraine','United States'),(105,'Kathryn','Hahn','1973-07-23','Westchester, Illinois','United States'),(106,'Kristen','Bell','1980-07-18','Hunting Woods, Michigan','United States'),(107,'Christina','Applegate','1971-12-25','Hollywood, California','United States'),(108,'Marion','Cotillard','1975-09-30','Paris','France'),(109,'Brendan','Gleeson','1955-03-29','Dublin','Ireland'),(110,'Zoey','Deutch','1994-11-10','Los Angeles, California','United States'),(111,'Tangie','Ambrose','1967-06-04','Fayetteville, North Carolina','United States'),(112,'Jake','Gyllenhaal','1980-12-19','Los Angeles, California','United States'),(113,'Aaron','Taylor-Johnson','1990-06-13','High Wycombe','United States'),(114,'Alex','Tebek','0000-00-00','Mission','Japan'),(115,'Alex','Tebek','0000-00-00','Mission','China'),(116,'Alex','Tebek','2019-11-11','Mission','China'),(117,'Alex','Tebek','2019-11-11','Mission','Japan'),(118,'Kendall','Bingham','1234-12-12','Kansas City','USA');
/*!40000 ALTER TABLE `actors` ENABLE KEYS */;
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

-- Dump completed on 2021-05-06 20:55:44
