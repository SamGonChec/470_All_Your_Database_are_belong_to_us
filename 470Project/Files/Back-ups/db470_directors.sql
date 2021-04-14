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
-- Table structure for table `directors`
--

DROP TABLE IF EXISTS `directors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `directors` (
  `director_id` int NOT NULL,
  `director_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`director_id`),
  UNIQUE KEY `id` (`director_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directors`
--

LOCK TABLES `directors` WRITE;
/*!40000 ALTER TABLE `directors` DISABLE KEYS */;
INSERT INTO `directors` VALUES (1,'James Gunn'),(2,'Ridley Scott'),(3,'M. Night Shyamalan'),(4,'Christophe Lourdelet'),(5,'David Ayer'),(6,'Yimou Zhang'),(7,'Damien Chazelle'),(8,'Sean Foley'),(9,'James Gray'),(10,'Morten Tyldum'),(11,'David Yates'),(12,'Theodore Melfi'),(13,'Gareth Edwards'),(14,'Ron Clements'),(15,'Nacho Vigalondo'),(16,'Chris Renaud'),(17,'Mel Gibson'),(18,'Paul Greengrass'),(19,'Garth Davis'),(20,'Denis Villeneuve'),(21,'Stephen Gaghan'),(22,'Kenneth Lonergan'),(23,'Ben Young'),(24,'Walt Dohrn'),(25,'Roland Emmerich'),(26,'Dominique Abel'),(27,'S.S. Rajamouli'),(28,'Phillip Guzman'),(29,'Jon Lucas'),(30,'Justin Kurzel'),(31,'John Hamburg'),(32,'Tom Ford'),(33,'Bryan Singer'),(34,'Tim Miller'),(35,'Paul W.S. Anderson'),(36,'Anthony Russo'),(37,'Christopher Nolan'),(38,'Scott Derrickson'),(39,'Antoine Fuqua'),(40,'Patrick Read Johnson'),(41,'Greg Tiernan'),(42,'Barry Jenkins'),(43,'Shawn Burkett'),(44,'John Lee Hancock'),(45,'Ricardo de Montreuil'),(46,'Rob Marshall'),(47,'John Madden'),(48,'Scott Hicks'),(49,'Justin Lin'),(50,'Sean Penn'),(51,'J.J. Abrams'),(52,'Anna Foerster'),(53,'Garry Marshall'),(54,'Chad Stahelski'),(55,'Martin Scorsese'),(56,'Fede Alvarez'),(57,'Thea Sharrock'),(58,'Lone Scherfig'),(59,'Clint Eastwood'),(60,'Zack Snyder'),(61,'Andre Ovredal'),(62,'Tate Taylor'),(63,'Sam Taylor-Johnson'),(64,'Matthew Vaughn'),(65,'Peter Berg'),(66,'George Miller'),(67,'Robin Swicord'),(68,'Terry George'),(69,'Robert Zemeckis'),(70,'J.A. Bayona'),(71,'David Frankel'),(72,'Byron Howard'),(73,'Gore Verbinski'),(74,'Joss Whedon'),(75,'Quentin Tarantino'),(76,'Paul Feig'),(77,'Matt Ross'),(78,'David Fincher'),(79,'James Wan'),(80,'Colin Trevorrow'),(81,'Ben Affleck'),(82,'James Cameron'),(83,'Gavin O\'Connor'),(84,'Duncan Jones'),(85,'Todd Phillips'),(86,'Shane Black'),(87,'Makoto Shinkai'),(88,'Jeremy Gillespie'),(89,'Olivier Assayas'),(90,'Brian Helgeland'),(91,'Kenneth Branagh'),(92,'Oriol Paulo'),(93,'Guy Ritchie'),(94,'David Mackenzie'),(95,'Taylor Hackford'),(96,'Katie Holmes'),(97,'Alex Garland'),(98,'Greg McLean'),(99,'Steve McQueen'),(100,'Ana Lily Amirpour'),(101,'Josh Gordon'),(102,'Nicolas Winding Refn'),(103,'Nitesh Tiwari'),(104,'Dan Trachtenberg'),(105,'Andrew Stanton'),(106,'Tim Burton'),(107,'Neil Burger'),(108,'Jake Szymanski'),(109,'Todor Chapkanov'),(110,'Jon Favreau'),(111,'Michael Bay'),(112,'Henry Joost'),(113,'Phyllida Lloyd'),(114,'Alejandro Gonzalez Inarritu'),(115,'Denzel Washington'),(116,'Jaume Collet-Serra'),(117,'Derek Cianfrance'),(118,'Ethan Coen'),(119,'Baz Luhrmann'),(120,'Martin Koolhoven'),(121,'Thor Freudenthal'),(122,'Adam McKay'),(123,'Lenny Abrahamson'),(124,'Chan-wook Park'),(125,'Kelly Fremon Craig'),(126,'Greg Mottola'),(127,'Ron Howard'),(128,'Steven Spielberg'),(129,'Gary Ross'),(130,'Elizabeth Wood'),(131,'David Lynch'),(132,'Colin Strause'),(133,'Guillermo del Toro'),(134,'Glenn Ficarra'),(135,'Edgar Wright'),(136,'Fabio Guaglione'),(137,'Ben Wheatley'),(138,'Edward Zwick'),(139,'Martin Campbell'),(140,'Catherine Hardwicke'),(141,'Jon M. Chu'),(142,'Simon Curtis'),(143,'Sam Mendes'),(144,'Dan Gilroy'),(145,'Travis Knight'),(146,'Jackson Stewart'),(147,'Spike Jonze'),(148,'Chris Buck'),(149,'Brad Bird'),(150,'Matt Reeves'),(151,'Ben Stiller'),(152,'Peyton Reed'),(153,'Sharon Maguire'),(154,'Robert Eggers'),(155,'Mateo Gil'),(156,'Asghar Farhadi'),(157,'Gaspar Noe'),(158,'Ang Lee'),(159,'Judd Apatow'),(160,'April Mullen'),(161,'Tom McCarthy'),(162,'Luke Scott'),(163,'Joe Johnston'),(164,'Akan Satayev'),(165,'Rawson Marshall Thurber'),(166,'Doug Liman'),(167,'Oliver Stone'),(168,'Robert Schwentke'),(169,'Julia Ducournau'),(170,'Jim Jarmusch'),(171,'Colm McCarthy'),(172,'Brad Peyton'),(173,'Harmony Korine'),(174,'Spike Lee'),(175,'Alan Taylor'),(176,'Alex Proyas'),(177,'Chris Wedge'),(178,'Liam Gavin'),(179,'Ilya Naishuller'),(180,'John Lasseter'),(181,'David Robert Mitchell'),(182,'Andrea Arnold'),(183,'Yorgos Lanthimos'),(184,'Nimrod Antal'),(185,'Robert Stromberg'),(186,'Steven Shainberg'),(187,'Andy Goddard'),(188,'Christopher McQuarrie'),(189,'Cedric Nicolas-Troyan'),(190,'Stephen Chbosky'),(191,'Pablo Larrain'),(192,'D.J. Caruso'),(193,'Wes Anderson'),(194,'Andrew Niccol'),(195,'Pete Docter'),(196,'Ash Brannon'),(197,'Chris Columbus'),(198,'Tom Hooper'),(199,'Alfonso Cuaron'),(200,'Mike Mills'),(201,'Olivier Nakache'),(202,'Eleanor Coppola'),(203,'F. Gary Gray'),(204,'Marc Webb'),(205,'Rupert Wyatt'),(206,'David F. Sandberg'),(207,'Joseph Cedar'),(208,'Darren Aronofsky'),(209,'Justin Simien'),(210,'Lars von Trier'),(211,'Dave Green'),(212,'Eli Roth'),(213,'Dan Mazer'),(214,'Tom Tykwer'),(215,'Gavin Hood'),(216,'Jeffrey G. Hunt'),(217,'Peter Jackson'),(218,'Phil Lord'),(219,'John Carney'),(220,'Eric Summer'),(221,'Joseph Kosinski'),(222,'Richard Linklater'),(223,'Louis Leterrier'),(224,'Brett Ratner'),(225,'Lana Wachowski'),(226,'Jared Hess'),(227,'Jalil Lespert'),(228,'Sang-ho Yeon'),(229,'Jason Moore'),(230,'Nicholas Stoller'),(231,'David Leveaux'),(232,'Ross Katz'),(233,'Mike Thurmeier'),(234,'Brad Furman'),(235,'Paul Thomas Anderson'),(236,'Drew Goddard'),(237,'Fred Wolf'),(238,'Jim Field Smith'),(239,'James Bobin'),(240,'Gary Michael Schultz'),(241,'Christian Ditter'),(242,'Abdellatif Kechiche'),(243,'Jennifer Kent'),(244,'Bong Joon Ho'),(245,'J Blakeson'),(246,'Dan Berk'),(247,'Anne Fletcher'),(248,'So Yong Kim'),(249,'Breck Eisner'),(250,'Paul McGuigan'),(251,'Roger Spottiswoode'),(252,'Jeremy Saulnier'),(253,'Michael Mann'),(254,'Jean-Marc Vallee'),(255,'Mike Flanagan'),(256,'David O. Russell'),(257,'Alexi Pappas'),(258,'Josh Boone'),(259,'Frank Coraci'),(260,'Rian Johnson'),(261,'David Lowery'),(262,'Sam Raimi'),(263,'Karyn Kusama'),(264,'Woody Allen'),(265,'William Oldroyd'),(266,'Jocelyn Moorhouse'),(267,'Sergei Bodrov'),(268,'Hugo Gelin'),(269,'James Marsh'),(270,'Evan Goldberg'),(271,'Richard Curtis'),(272,'Jon Watts'),(273,'Ruben Fleischer'),(274,'Danny Boyle'),(275,'Bill Condon'),(276,'Alex Ranarivelo'),(277,'Timur Bekmambetov'),(278,'J.D. Dillard'),(279,'Wes Ball'),(280,'Ariel Vromen'),(281,'Stephen Frears'),(282,'Eran Creevy'),(283,'Scott Cooper'),(284,'Ryan Coogler'),(285,'Dan Kwan'),(286,'Patrick Hughes'),(287,'Jemaine Clement'),(288,'Baltasar KormÃƒÂ¡kur'),(289,'James Mangold'),(290,'Peter Atencio'),(291,'Pierre Morel'),(292,'Gillies MacKinnon'),(293,'Dennis Dugan'),(294,'Lee Toland Krieger'),(295,'Peter Billingsley'),(296,'Terry Jones'),(297,'Steven Soderbergh'),(298,'Kyle Balda'),(299,'Rolfe Kanefsky'),(300,'Pierre Coffin'),(301,'Michael Hoffman'),(302,'Kathryn Bigelow'),(303,'Nathan Greno'),(304,'Francis Lawrence'),(305,'John Francis Daley'),(306,'Elizabeth Banks'),(307,'Dan Scanlon'),(308,'Paul Verhoeven'),(309,'Dennis Gansel'),(310,'Kevin Smith'),(311,'Mark Williams'),(312,'Joe Wright'),(313,'David Ross'),(314,'Burr Steers'),(315,'Noam Murro'),(316,'Babak Najafi'),(317,'Frank Miller'),(318,'Srdjan Spasojevic'),(319,'James DeMonaco'),(320,'Rajkumar Hirani'),(321,'Marc Forster'),(322,'Corey Asraf'),(323,'Jon S. Baird'),(324,'George Tillman Jr.'),(325,'Jeff Wadlow'),(326,'Jeff Grace'),(327,'John Crowley'),(328,'Henry Selick'),(329,'Michael J. Gallagher'),(330,'Christophe Gans'),(331,'Pete Travis'),(332,'Taika Waititi'),(333,'Don Hall'),(334,'Kimberly Peirce'),(335,'Christian Alvart'),(336,'Thomas Vinterberg'),(337,'Etan Cohen'),(338,'William Brent Bell'),(339,'Mick Jackson'),(340,'Michael Spierig'),(341,'Rob Letterman'),(342,'Phillip Noyce'),(343,'Neill Blomkamp'),(344,'Sofia Coppola'),(345,'Dexter Fletcher'),(346,'Florian Henckel von Donnersmarck'),(347,'Carles Torrens'),(348,'Amber Tamblyn'),(349,'John Hillcoat'),(350,'Paolo Genovese'),(351,'Clay Kaytis'),(352,'Adam Shankman'),(353,'Lasse Hallstrom'),(354,'Jim Mickle'),(355,'Albert Hughes'),(356,'Ericson Core'),(357,'Jonathan Glazer'),(358,'Barry Sonnenfeld'),(359,'Todd Haynes'),(360,'Daniel Ragussis'),(361,'Paolo Sorrentino'),(362,'Jaco Van Dormael'),(363,'Mark Herman'),(364,'S. Craig Zahler'),(365,'Gregory Jacobs'),(366,'Will Gluck'),(367,'Biyi Bandele'),(368,'Sean Ellis'),(369,'Andrey Kravchuk'),(370,'David Schwimmer'),(371,'George Nolfi'),(372,'Tony Gilroy'),(373,'Simon Verhoeven'),(374,'Tony Scott'),(375,'Luc Besson'),(376,'Terence Davies'),(377,'Scott Waugh'),(378,'Steven Brill'),(379,'Alexandros Avranas'),(380,'Ewan McGregor'),(381,'Roman Polanski'),(382,'Nic Mathieu'),(383,'Richard LaGravenese'),(384,'Mora Stephens'),(385,'Jeff Nichols'),(386,'Mike Birbiglia'),(387,'Philippe Falardeau'),(388,'Ken Loach'),(389,'Josh Trank'),(390,'Stephen Fingleton'),(391,'Florian Gallenberger'),(392,'Rob Cohen'),(393,'Joel Edgerton'),(394,'Gary Shore'),(395,'Mike Judge'),(396,'Sylvester Stallone'),(397,'Rich Moore'),(398,'Rupert Sanders'),(399,'Jason Reitman'),(400,'Jodie Foster'),(401,'Nick Cassavetes'),(402,'Kevin Lima'),(403,'Nancy Meyers'),(404,'Jonathan Dayton'),(405,'Ben Younger'),(406,'Craig Gillespie'),(407,'Andrew Jarecki'),(408,'John Stockwell'),(409,'Jake Kasdan'),(410,'Kirk Jones'),(411,'Bennett Miller'),(412,'Mark Steven Johnson'),(413,'Angelina Jolie'),(414,'Tarsem Singh'),(415,'Mark Andrews'),(416,'Niels Arden Oplev'),(417,'Anne Fontaine'),(418,'Michael R. Roskam'),(419,'Andy Fickman'),(420,'Sean Anders'),(421,'Tom McGrath'),(422,'Jean-FranÃƒÂ§ois Richet'),(423,'Ken Kwapis'),(424,'Alessandro Carloni'),(425,'Zackary Adler'),(426,'John Butler'),(427,'Debra Granik'),(428,'Seth Gordon'),(429,'Xavier Dolan'),(430,'Maren Ade'),(431,'Andrew Dominik'),(432,'Joseph Gordon-Levitt'),(433,'James Watkins'),(434,'Joey Curtis'),(435,'Paco Cabezas'),(436,'Rick Famuyiwa'),(437,'Mans Marlind'),(438,'Marcus Nispel'),(439,'Olivier Megaton'),(440,'Len Wiseman'),(441,'Will Slocombe'),(442,'Courtney Hunt'),(443,'Shawn Levy'),(444,'Michael Goi'),(445,'Levan Gabriadze'),(446,'Jon Hurwitz'),(447,'Gabriele Muccino'),(448,'Damian Szifron'),(449,'Francois Ozon'),(450,'John Wells'),(451,'Jonathan Holbrook'),(452,'Julia Leigh'),(453,'Mark Waters'),(454,'Afonso Poyart'),(455,'Akiva Schaffer'),(456,'Hope Dickson Leach'),(457,'Jonathan Liebesman'),(458,'David Cronenberg'),(459,'Simon Stone'),(460,'David Gordon Green'),(461,'Jon Kasdan'),(462,'Mia Hansen-Love'),(463,'Alejandro Amenabar'),(464,'Seth MacFarlane'),(465,'Atom Egoyan'),(466,'Daniel Espinosa'),(467,'John Michael McDonagh'),(468,'Frank Darabont'),(469,'Mikael Hafstrom'),(470,'Ari Sandel'),(471,'Jee-woon Kim'),(472,'Lynne Ramsay'),(473,'Whit Stillman'),(474,'Harald Zwart'),(475,'Lee Unkrich'),(476,'Tomas Alfredson'),(477,'Gauri Shinde'),(478,'Michael Grandage'),(479,'Jamie Linden'),(480,'Mike Cahill'),(481,'Caleb Vetter'),(482,'Michael Haneke'),(483,'Marcus Dunstan'),(484,'John Krasinski'),(485,'David Dobkin'),(486,'Michael Dudok de Wit'),(487,'Jorge R. Gutierrez'),(488,'Bobby Farrelly'),(489,'Doug Ellin'),(490,'Bryan Bertino'),(491,'Adam Wingard'),(492,'Joe Carnahan'),(493,'Simon Aboud'),(494,'Bruce Beresford'),(495,'Oz Perkins'),(496,'Terrence Malick'),(497,'Ben Falcone'),(498,'Jonathan Jakubowicz'),(499,'Juan Jose Campanella'),(500,'Max Joseph'),(501,'Chris Stokes'),(502,'Warren Beatty'),(503,'Gregory Hoblit'),(504,'Martin McDonagh'),(505,'McG'),(506,'Filip Renc'),(507,'Ed Gass-Donnelly'),(508,'Jamal Hill'),(509,'Kirsten Sheridan'),(510,'Jake Schreier'),(511,'Walter Hill'),(512,'Dean DeBlois'),(513,'Rob Zombie'),(514,'Tyler Shields'),(515,'Hisonni Johnson'),(516,'Matt Brown'),(517,'Bruce A. Evans'),(518,'Adam Leon'),(519,'Chris Evans'),(520,'Jim Sheridan'),(521,'Stewart Hendler'),(522,'Genndy Tartakovsky'),(523,'Claude Barras'),(524,'Asger Leth'),(525,'Ivan Reitman'),(526,'Werner Herzog'),(527,'Scott Frank'),(528,'Mike Newell'),(529,'James Ponsoldt'),(530,'Amma Asante'),(531,'Mario Van Peebles'),(532,'Francois Simard'),(533,'Andres Muschietti'),(534,'John Moore'),(535,'John R. Leonetti'),(536,'Saul Dibb'),(537,'Terry Gilliam'),(538,'Stephen Sommers'),(539,'Antonio Campos'),(540,'Dito Montiel'),(541,'Phil Claydon'),(542,'Farren Blackburn'),(543,'Matthias Hoene'),(544,'Robert Rodriguez'),(545,'Jason Friedberg'),(546,'David Bowers'),(547,'Cary Joji Fukunaga'),(548,'Andy Tennant'),(549,'Larry Charles'),(550,'Erik Van Looy'),(551,'Cristian Mungiu'),(552,'Gee Malik Linton'),(553,'Aisling Walsh'),(554,'Luca Guadagnino'),(555,'Tim Johnson'),(556,'Giuseppe Tornatore'),(557,'Nathan Morlando'),(558,'Robert Luketic'),(559,'Mark Osborne'),(560,'Malcolm D. Lee'),(561,'Alexandre Aja'),(562,'Allen Coulter'),(563,'Naoko Yamada'),(564,'Miguel Arteta'),(565,'Steven Knight'),(566,'James Schamus'),(567,'Kyle Patrick Alvarez'),(568,'Hannes Holm'),(569,'James Wong'),(570,'Dan Bradley'),(571,'Greg Berlanti'),(572,'Juan Carlos Fresnadillo'),(573,'Jonathan Levine'),(574,'Hideaki Anno'),(575,'Wally Pfister'),(576,'Carlos Saldanha'),(577,'Drake Doremus'),(578,'Femi Oyeniran'),(579,'Michael Patrick King'),(580,'Peter Landesman'),(581,'Gary Winick'),(582,'Leslye Headland'),(583,'David R. Ellis'),(584,'Michael Dowse'),(585,'Jose Padilha'),(586,'James Franco'),(587,'Michael Showalter'),(588,'Matteo Garrone'),(589,'Gabor Csupo'),(590,'James Ward Byrkit'),(591,'Hong-jin Na'),(592,'Simon West'),(593,'Gregory Wilson'),(594,'Chris Weitz'),(595,'Neil Marshall'),(596,'Christopher Landon'),(597,'John Erick Dowdle'),(598,'Lee Daniels'),(599,'Gus Van Sant'),(600,'Chris McCoy'),(601,'Craig Brewer'),(602,'R.J. Cutler'),(603,'Ido Fluk'),(604,'Christopher Smith'),(605,'Anna Biller'),(606,'Tom Six'),(607,'Richie Smyth'),(608,'Ryuhei Kitamura'),(609,'David Slade'),(610,'Greg Kwedar'),(611,'Mark Mylod'),(612,'David Twohy'),(613,'Justin Kelly'),(614,'Justin Tipping'),(615,'Alfonso Gomez-Rejon'),(616,'Alexander Payne'),(617,'Jordan Vogt-Roberts'),(618,'Tom Gormican'),(619,'Scott Stewart'),(620,'Patricia Rozema'),(621,'Justin Chadwick'),(622,'Steven R. Monroe'),(623,'James Lapine'),(624,'JÃƒÂ©rÃƒÂ´me Salle'),(625,'Micheal Bafaro'),(626,'John Luessenhop'),(627,'Wes Craven'),(628,'Mira Nair'),(629,'Gilles Paquet-Brenner'),(630,'Lisa Addario'),(631,'Pedro AlmodÃƒÂ³var'),(632,'Patricia Riggen'),(633,'Julie Taymor'),(634,'Luke Greenfield'),(635,'Boaz Yakin'),(636,'Steven Quale'),(637,'Shana Feste'),(638,'Pascal Laugier'),(639,'Ava DuVernay'),(640,'Patrick Tatopoulos'),(641,'Aamir Khan'),(642,'Nima Nourizadeh'),(643,'Billy Ray'),(644,'Scot Armstrong');
/*!40000 ALTER TABLE `directors` ENABLE KEYS */;
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

-- Dump completed on 2021-04-14 11:07:32
