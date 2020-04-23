-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: mydb
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Dumping data for table `addresses`
--

LOCK TABLES `addresses` WRITE;
/*!40000 ALTER TABLE `addresses` DISABLE KEYS */;
INSERT INTO `addresses` VALUES (1,'104','250 kingswood Dr','Kitchener','Ontario','N2E2K2'),(2,'25','47 Model Town','Toronto','Ontario','N1A1Z2'),(3,'88','401 Bleems Rd','Waterloo','Ontario','N4G1W7'),(4,'239','10 Queens St','Cambridge','Ontario','N7L2C3');
/*!40000 ALTER TABLE `addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `albums`
--

LOCK TABLES `albums` WRITE;
/*!40000 ALTER TABLE `albums` DISABLE KEYS */;
INSERT INTO `albums` VALUES (1,'Starboy','2016-01-01',20,1,1),(2,'My Dear Melancholy','2018-01-01',25,1,1),(3,'Icarus Falls','2018-01-01',10,1,2),(4,'Mind Of Mine','2016-01-01',15,1,2),(5,'Hybrid Theory','2000-01-01',30,2,3),(6,'One More Light','2016-01-01',15,2,3),(7,'Ghost Stories','2014-01-01',20,2,4),(8,'A Head Full of Dreams','2015-01-01',10,2,4),(9,'Lemonade','2016-01-01',25,3,5),(10,'The Lion King','2019-01-01',20,3,5),(11,'The Blueprint','2001-01-01',15,3,6),(12,'Watch The Throne','2011-01-01',20,3,6),(13,'The Slim Shady LP','1999-01-01',20,4,7),(14,'Recovery','2010-01-01',25,4,7),(15,'Pbx 1','2018-01-01',25,4,8),(16,'Legend','2019-01-01',25,4,8);
/*!40000 ALTER TABLE `albums` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `artists`
--

LOCK TABLES `artists` WRITE;
/*!40000 ALTER TABLE `artists` DISABLE KEYS */;
INSERT INTO `artists` VALUES (1,'The Weeknd',10,2),(2,'Zayn',15,3),(3,'Linkin Park',20,4),(4,'Coldplay',10,2),(5,'Beyonce',15,3),(6,'Jay-Z',15,3),(7,'Eminem',10,2),(8,'Sidhu Moose Wala',20,4);
/*!40000 ALTER TABLE `artists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'Bruce','Wayne','batman@arkham.com','CatwomanXoxo','4710004747',1,3),(2,'Darth ','Vader','star@gmail.com','force@123','1002005689',3,2),(3,'Geralt','ofrivia','sqord@yahoo.com','witcfgh#56','8562459875',2,1),(4,'Carl','Johnson','gta@los.com','hood*90','2553117612',4,2);
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `genres`
--

LOCK TABLES `genres` WRITE;
/*!40000 ALTER TABLE `genres` DISABLE KEYS */;
INSERT INTO `genres` VALUES (1,'Pop'),(2,'Rock'),(3,'Jazz'),(4,'Hip Hop');
/*!40000 ALTER TABLE `genres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (1,'89562',1,3),(2,'89265',2,2),(3,'74523',3,1),(4,'98641',4,2);
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `playlist_has_song`
--

LOCK TABLES `playlist_has_song` WRITE;
/*!40000 ALTER TABLE `playlist_has_song` DISABLE KEYS */;
INSERT INTO `playlist_has_song` VALUES (1,1,1),(2,1,3),(3,1,5),(4,1,7),(5,2,9),(6,2,12),(7,2,14),(8,2,16);
/*!40000 ALTER TABLE `playlist_has_song` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `playlists`
--

LOCK TABLES `playlists` WRITE;
/*!40000 ALTER TABLE `playlists` DISABLE KEYS */;
INSERT INTO `playlists` VALUES (1,'Playlist_Bruce',1),(2,'Playlist_Darth',2),(3,'Playlist_Geralt',3),(4,'Playlist_Carl',4);
/*!40000 ALTER TABLE `playlists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `repetitions`
--

LOCK TABLES `repetitions` WRITE;
/*!40000 ALTER TABLE `repetitions` DISABLE KEYS */;
INSERT INTO `repetitions` VALUES (1,1,7),(1,2,3),(2,9,10),(2,10,4),(3,7,3),(3,29,20);
/*!40000 ALTER TABLE `repetitions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `songs`
--

LOCK TABLES `songs` WRITE;
/*!40000 ALTER TABLE `songs` DISABLE KEYS */;
INSERT INTO `songs` VALUES (1,'Starboy','The Weeknd,Pop',1,1),(2,'I feel it Coming','The Weeknd,Pop',1,1),(3,'Call Out My Name','The Weeknd,Pop',2,1),(4,'Wasted Times','The Weeknd,Pop',2,1),(5,'Let Me','ZAYN,Pop',3,2),(6,'Entertainer','ZAYN,Pop',3,2),(7,'PILLOWTALK','ZAYN,Pop',4,2),(8,'TiO','ZAYN,Pop',4,2),(9,'In the End','Linkin Park,Rock',5,3),(10,'Papercut','Linkin Park,Rock',5,3),(11,'Invisible','Linkin Park,Rock',6,3),(12,'Heavy','Linkin Park,Rock',6,3),(13,'Magic','ColdPlay,Rock',7,4),(14,'Midnight','ColdPlay,Rock',7,4),(15,'Hymn for the Weekend','ColdPlay,Rock',8,4),(16,'Birds','ColdPlay,Rock',8,4),(17,'Hold Up','Beyonce,Jazz',9,5),(18,'Sandcastles','Beyonce,Jazz',9,5),(19,'Spirit','Beyonce,Jazz',10,5),(20,'Nile','Beyonce,Jazz',10,5),(21,'Umbrella','Jay-Z,Jazz',11,6),(22,'Drunk in Love','Jay-Z,Jazz',11,6),(23,'Renegade','Jay-Z,Jazz',12,6),(24,'Numb Encore','Jay-Z,Jazz',12,6),(25,'My Name is','Eminem,Hip Hop',13,7),(26,'I\'m Shady','Eminem,Hip Hop',13,7),(27,'Not Afraid','Eminem,Hip Hop',14,7),(28,'Space Bound','Eminem,Hip Hop',14,7),(29,'Jatt Da Muqabala','Sidhu Moose Wala,Hip Hop',15,8),(30,'Death Route','Sidhu Moose Wala,Hip Hop',15,8),(31,'Self Made','Sidhu Moose Wala,Hip Hop',16,8),(32,'Homicide','Sidhu Moose Wala,Hip Hop',16,8);
/*!40000 ALTER TABLE `songs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `subscriptions`
--

LOCK TABLES `subscriptions` WRITE;
/*!40000 ALTER TABLE `subscriptions` DISABLE KEYS */;
INSERT INTO `subscriptions` VALUES (1,'Weekly','3.00'),(2,'Monthly','10.00'),(3,'Yearly','100.00');
/*!40000 ALTER TABLE `subscriptions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-08-10 20:45:47
