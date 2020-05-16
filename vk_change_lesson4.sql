-- MySQL dump 10.13  Distrib 8.0.19, for Linux (x86_64)
--
-- Host: localhost    Database: vk
-- ------------------------------------------------------
-- Server version	8.0.19

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `communities`
--

DROP TABLE IF EXISTS `communities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `communities` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `communities`
--

LOCK TABLES `communities` WRITE;
/*!40000 ALTER TABLE `communities` DISABLE KEYS */;
INSERT INTO `communities` VALUES (20,'ad'),(23,'alias'),(12,'aut'),(22,'dolores'),(3,'eos'),(8,'eum'),(21,'ipsa'),(17,'maiores'),(9,'molestiae'),(15,'natus'),(5,'occaecati'),(25,'odit'),(6,'quasi'),(2,'qui'),(16,'quibusdam'),(1,'quisquam'),(19,'repellat'),(14,'sequi'),(7,'sit'),(13,'totam'),(11,'ut'),(4,'vitae'),(10,'voluptas'),(18,'voluptate'),(24,'voluptatem');
/*!40000 ALTER TABLE `communities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `communities_users`
--

DROP TABLE IF EXISTS `communities_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `communities_users` (
  `community_id` int unsigned NOT NULL,
  `user_id` int unsigned NOT NULL,
  PRIMARY KEY (`community_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `communities_users`
--

LOCK TABLES `communities_users` WRITE;
/*!40000 ALTER TABLE `communities_users` DISABLE KEYS */;
INSERT INTO `communities_users` VALUES (1,1),(1,18),(1,28),(1,52),(1,66),(1,67),(2,25),(2,36),(2,64),(2,65),(2,68),(3,29),(3,39),(3,49),(3,53),(3,63),(3,70),(3,85),(4,9),(4,62),(5,2),(5,92),(6,81),(6,82),(6,88),(6,93),(6,96),(7,69),(7,73),(8,32),(8,38),(8,44),(9,42),(9,54),(10,56),(10,57),(11,46),(11,89),(11,90),(11,95),(11,98),(12,30),(12,83),(12,86),(13,37),(13,55),(13,72),(13,79),(14,19),(14,24),(15,21),(15,40),(15,47),(15,48),(15,59),(15,99),(16,15),(16,20),(16,41),(16,76),(16,94),(17,6),(17,8),(17,10),(17,27),(18,51),(18,74),(18,84),(18,100),(19,7),(19,12),(19,16),(19,33),(19,58),(19,60),(19,75),(20,13),(20,26),(20,50),(20,71),(21,14),(21,34),(21,97),(22,3),(22,17),(22,23),(22,43),(22,45),(22,61),(22,78),(23,22),(23,35),(23,91),(24,11),(24,31),(24,77),(24,80),(24,87);
/*!40000 ALTER TABLE `communities_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `friendship`
--

DROP TABLE IF EXISTS `friendship`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `friendship` (
  `user_id` int unsigned NOT NULL,
  `friend_id` int unsigned NOT NULL,
  `status_id` int unsigned NOT NULL,
  `requested_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `confirmed_at` datetime DEFAULT NULL,
  PRIMARY KEY (`user_id`,`friend_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `friendship`
--

LOCK TABLES `friendship` WRITE;
/*!40000 ALTER TABLE `friendship` DISABLE KEYS */;
INSERT INTO `friendship` VALUES (2,28,1,'2014-04-14 23:32:56','2018-11-06 07:08:19'),(3,95,3,'2016-07-09 11:58:47','2011-10-11 03:28:46'),(9,91,3,'2019-11-27 15:22:06','2010-11-28 17:06:12'),(10,4,1,'2015-03-10 16:33:21','2011-08-15 00:28:04'),(11,69,1,'2017-05-08 23:42:46','2012-12-30 23:20:35'),(12,54,3,'2010-12-21 09:52:18','2015-04-14 13:17:45'),(12,100,2,'2018-05-06 01:57:25','2010-08-28 05:50:46'),(14,81,3,'2014-04-08 17:50:38','2011-06-03 04:50:01'),(16,24,2,'2017-07-28 03:28:58','2011-02-26 15:56:57'),(17,78,2,'2016-10-25 05:38:32','2019-09-28 09:43:11'),(19,84,1,'2010-10-28 02:35:44','2011-12-22 02:19:01'),(19,89,1,'2019-10-23 21:32:34','2015-04-10 03:50:51'),(20,56,2,'2017-07-25 00:05:27','2010-05-01 11:40:05'),(21,73,3,'2017-12-10 13:44:10','2018-10-18 23:20:18'),(22,42,1,'2013-04-23 07:08:39','2018-04-14 10:58:59'),(26,51,1,'2019-12-01 03:21:50','2014-01-30 00:44:10'),(27,62,1,'2013-10-25 04:30:45','2011-11-26 10:06:31'),(28,63,2,'2013-03-23 07:49:46','2013-11-10 21:24:41'),(28,84,2,'2019-11-09 07:36:42','2015-08-11 02:06:31'),(29,54,3,'2019-06-15 22:22:04','2019-04-23 19:17:15'),(30,64,3,'2018-08-02 03:06:01','2010-05-19 12:09:10'),(30,75,2,'2014-05-07 17:03:01','2015-03-28 01:08:48'),(30,90,2,'2012-07-09 01:08:58','2011-06-30 01:51:51'),(31,2,1,'2016-05-21 22:14:31','2015-10-26 14:02:13'),(31,14,2,'2012-12-31 18:23:44','2018-05-25 12:32:38'),(31,17,1,'2011-10-29 20:36:59','2013-05-06 01:10:01'),(31,86,3,'2012-01-27 05:16:06','2018-11-10 02:19:28'),(31,94,2,'2012-11-23 20:09:55','2014-10-13 20:49:46'),(32,27,1,'2020-01-27 22:34:34','2013-06-29 01:56:54'),(32,30,1,'2015-07-15 16:56:40','2017-06-23 04:17:20'),(32,45,1,'2014-07-12 14:13:18','2013-05-16 11:35:55'),(32,99,2,'2015-01-07 04:23:43','2015-12-29 21:25:36'),(34,78,1,'2019-02-11 10:51:58','2013-07-21 20:52:23'),(34,87,3,'2014-06-10 01:36:31','2018-11-24 03:53:06'),(35,60,2,'2017-03-27 16:59:57','2019-12-18 09:35:38'),(36,27,1,'2019-10-26 22:56:49','2020-01-01 22:44:37'),(38,9,1,'2018-03-13 14:28:01','2016-07-17 15:22:22'),(38,30,1,'2012-05-03 10:35:51','2012-03-22 04:11:03'),(38,97,3,'2019-01-02 20:55:01','2013-03-12 06:33:07'),(40,71,1,'2017-02-01 19:54:36','2019-04-26 17:34:13'),(41,55,2,'2013-01-26 18:01:33','2014-02-16 12:32:16'),(41,68,2,'2012-11-03 13:31:06','2011-10-30 04:34:03'),(41,78,1,'2019-08-19 01:31:52','2016-07-22 16:28:33'),(42,10,1,'2010-12-14 14:53:11','2014-10-18 01:40:18'),(42,34,1,'2018-02-15 07:48:40','2017-08-08 20:09:45'),(47,84,1,'2016-08-27 07:21:13','2012-09-06 13:14:42'),(48,17,3,'2013-08-14 10:02:17','2016-08-26 11:51:52'),(49,27,1,'2016-12-20 13:12:54','2010-09-19 23:06:27'),(49,40,2,'2011-09-22 03:49:08','2015-06-09 23:44:56'),(51,47,3,'2010-12-26 12:49:39','2015-04-13 16:49:12'),(51,67,1,'2012-03-03 13:43:11','2012-08-02 04:12:40'),(51,71,2,'2017-05-14 22:37:54','2015-10-09 20:59:51'),(51,87,2,'2013-05-28 09:55:35','2019-03-23 03:33:08'),(57,91,1,'2019-03-19 15:19:18','2019-12-12 02:31:24'),(58,18,3,'2020-03-15 12:17:32','2019-06-27 13:27:17'),(58,43,3,'2012-07-14 23:53:24','2020-04-10 20:52:38'),(61,55,2,'2019-05-12 12:37:54','2012-05-20 10:39:37'),(61,72,2,'2019-07-23 03:31:54','2016-01-04 17:50:32'),(63,4,2,'2018-03-12 07:46:01','2015-09-03 06:37:16'),(63,70,3,'2019-01-27 05:43:05','2019-11-25 21:22:25'),(65,25,3,'2017-12-24 11:44:55','2012-05-27 10:30:26'),(66,3,1,'2019-06-07 01:30:53','2011-07-23 07:05:48'),(66,46,2,'2016-10-18 07:24:05','2018-05-19 14:54:41'),(66,63,3,'2017-10-17 23:06:34','2017-08-18 07:43:04'),(66,96,2,'2013-02-08 21:59:34','2019-01-24 12:41:55'),(68,60,3,'2019-03-24 20:48:20','2018-02-15 02:48:25'),(69,55,3,'2017-02-04 14:40:46','2012-02-01 06:23:14'),(69,79,1,'2013-11-04 15:29:49','2016-07-14 22:41:49'),(72,90,2,'2015-09-14 17:18:17','2016-05-10 09:30:53'),(73,87,2,'2016-04-25 02:45:07','2017-09-27 06:47:38'),(74,16,2,'2019-03-21 21:29:58','2016-12-25 16:06:27'),(75,60,1,'2019-12-20 17:56:37','2015-10-29 00:31:05'),(75,90,2,'2012-09-22 02:45:20','2019-06-10 09:49:07'),(76,28,3,'2014-11-28 23:07:49','2018-05-05 05:31:52'),(76,96,2,'2013-08-24 23:57:52','2014-03-11 21:27:19'),(77,46,2,'2017-12-23 23:43:03','2016-07-03 07:23:51'),(78,49,2,'2019-12-01 22:33:21','2011-11-24 11:34:19'),(79,54,3,'2016-04-02 01:51:18','2018-10-10 13:06:03'),(80,46,3,'2019-08-13 03:12:23','2012-04-02 03:36:16'),(82,23,2,'2012-06-11 13:57:06','2010-05-26 18:42:03'),(82,84,3,'2013-09-18 15:34:43','2015-04-01 00:28:00'),(83,14,1,'2010-09-02 05:30:08','2012-07-03 10:13:06'),(83,52,3,'2011-11-19 12:50:56','2014-11-30 09:57:33'),(84,46,2,'2015-10-20 04:46:54','2019-06-15 03:27:50'),(84,59,1,'2015-08-08 07:26:12','2018-08-11 01:38:27'),(85,40,1,'2018-04-15 14:04:42','2019-05-05 15:26:35'),(85,77,2,'2017-10-12 09:17:02','2012-04-20 06:34:24'),(86,49,3,'2018-11-05 09:49:22','2015-07-28 16:19:43'),(86,62,1,'2018-06-21 08:12:34','2015-10-31 16:21:45'),(87,2,3,'2019-02-10 22:44:44','2010-11-24 20:13:29'),(88,3,2,'2011-02-23 02:45:15','2011-03-19 21:54:31'),(88,28,2,'2014-03-02 19:27:23','2018-01-10 14:21:34'),(90,83,2,'2015-11-19 07:04:13','2016-11-23 07:00:49'),(92,8,1,'2011-10-24 11:20:03','2013-01-20 08:10:05'),(95,94,3,'2017-08-03 13:43:56','2018-11-29 06:36:40'),(96,84,3,'2014-02-18 09:56:22','2012-03-26 20:57:56'),(98,93,2,'2020-04-21 20:09:51','2010-11-06 14:24:48'),(99,12,2,'2015-08-09 03:46:14','2013-05-05 12:44:32'),(100,60,2,'2012-03-21 06:51:40','2019-05-12 22:45:32'),(100,86,3,'2016-12-19 21:08:39','2014-05-06 09:53:13');
/*!40000 ALTER TABLE `friendship` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `friendship_statuses`
--

DROP TABLE IF EXISTS `friendship_statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `friendship_statuses` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `friendship_statuses`
--

LOCK TABLES `friendship_statuses` WRITE;
/*!40000 ALTER TABLE `friendship_statuses` DISABLE KEYS */;
INSERT INTO `friendship_statuses` VALUES (2,'Confirmed'),(3,'Rejected'),(1,'Request');
/*!40000 ALTER TABLE `friendship_statuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media`
--

DROP TABLE IF EXISTS `media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `filename` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `size` int NOT NULL,
  `metadata` json DEFAULT NULL,
  `media_type_id` int unsigned NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media`
--

LOCK TABLES `media` WRITE;
/*!40000 ALTER TABLE `media` DISABLE KEYS */;
INSERT INTO `media` VALUES (1,44,'https//dropbox.net/vk/debitis.mp4',20708245,'{\"owner\": \"Manuela Wintheiser\"}',1,'1979-02-15 08:21:17','2020-05-10 19:03:07'),(2,83,'https//dropbox.net/vk/omnis.mp4',893747170,'{\"owner\": \"Jaquan Wyman\"}',3,'2001-01-22 21:51:02','2020-05-10 19:03:07'),(3,81,'https//dropbox.net/vk/quia.png',1571781,'{\"owner\": \"D\'angelo Wyman\"}',1,'1993-10-31 08:17:14','2020-05-10 19:03:07'),(4,54,'https//dropbox.net/vk/totam.avi',32510092,'{\"owner\": \"Tyler Rice\"}',3,'1977-09-30 20:33:03','2020-05-10 19:03:07'),(5,28,'https//dropbox.net/vk/optio.jpeg',88597438,'{\"owner\": \"Antwon Jaskolski\"}',1,'1996-08-13 04:16:30','2020-05-10 19:03:07'),(6,79,'https//dropbox.net/vk/fugit.jpeg',4871064,'{\"owner\": \"Arnoldo Nienow\"}',3,'1998-03-21 14:43:56','2020-05-10 19:03:07'),(7,7,'https//dropbox.net/vk/aliquid.png',74132,'{\"owner\": \"Jaydon Lockman\"}',3,'2002-10-25 00:40:36','2020-05-10 19:03:07'),(8,1,'https//dropbox.net/vk/modi.jpeg',4220,'{\"owner\": \"Brisa Shanahan\"}',2,'2000-08-01 19:32:22','2020-05-10 19:03:07'),(9,82,'https//dropbox.net/vk/libero.mp4',8854,'{\"owner\": \"Deja Schneider\"}',2,'2014-06-22 13:00:53','2020-05-10 19:03:07'),(10,9,'https//dropbox.net/vk/veniam.jpeg',71094509,'{\"owner\": \"Hannah Pfeffer\"}',1,'2019-04-26 04:31:36','2020-05-10 19:03:07'),(11,95,'https//dropbox.net/vk/quis.png',8463,'{\"owner\": \"Joanie Rolfson\"}',3,'2004-06-07 08:25:34','2020-05-10 19:03:07'),(12,50,'https//dropbox.net/vk/dolor.png',584579538,'{\"owner\": \"Rebecca Trantow\"}',3,'2009-10-23 17:18:26','2020-05-10 19:03:07'),(13,63,'https//dropbox.net/vk/aliquid.jpeg',57842271,'{\"owner\": \"Mallie Hodkiewicz\"}',1,'2011-02-01 23:56:43','2020-05-10 19:03:07'),(14,64,'https//dropbox.net/vk/vitae.mp4',599405,'{\"owner\": \"Verla Johns\"}',2,'1989-07-05 18:44:41','2020-05-10 19:03:07'),(15,30,'https//dropbox.net/vk/corporis.png',717776641,'{\"owner\": \"Gladyce Kub\"}',2,'1999-10-25 12:24:59','2020-05-10 19:03:07'),(16,56,'https//dropbox.net/vk/omnis.jpeg',430625,'{\"owner\": \"Erich Crona\"}',3,'1990-01-13 06:10:17','2020-05-10 19:03:07'),(17,92,'https//dropbox.net/vk/repellendus.jpeg',6949077,'{\"owner\": \"Estefania Gutkowski\"}',2,'1990-01-10 22:07:27','2020-05-10 19:03:07'),(18,93,'https//dropbox.net/vk/quo.avi',75827833,'{\"owner\": \"Margarett Bauch\"}',2,'1992-09-12 17:42:18','2020-05-10 19:03:07'),(19,87,'https//dropbox.net/vk/saepe.png',5512356,'{\"owner\": \"Jensen Raynor\"}',2,'1972-07-17 21:22:24','2020-05-10 19:03:07'),(20,54,'https//dropbox.net/vk/et.mp4',99978282,'{\"owner\": \"Tyler Rice\"}',1,'2018-10-16 23:14:37','2020-05-10 19:03:07'),(21,8,'https//dropbox.net/vk/iusto.avi',83254347,'{\"owner\": \"Chaya Rice\"}',2,'1972-12-22 05:54:50','2020-05-10 19:03:07'),(22,79,'https//dropbox.net/vk/ut.mp4',493752293,'{\"owner\": \"Arnoldo Nienow\"}',3,'1993-04-02 11:34:32','2020-05-10 19:03:07'),(23,69,'https//dropbox.net/vk/fugit.avi',61511276,'{\"owner\": \"Beulah Daugherty\"}',2,'2013-10-28 21:38:03','2020-05-10 19:03:07'),(24,8,'https//dropbox.net/vk/ea.avi',719903,'{\"owner\": \"Chaya Rice\"}',3,'1990-08-25 17:52:49','2020-05-10 19:03:07'),(25,33,'https//dropbox.net/vk/omnis.avi',654837,'{\"owner\": \"Amie Hermiston\"}',3,'1971-11-09 10:14:35','2020-05-10 19:03:07'),(26,40,'https//dropbox.net/vk/asperiores.avi',79362,'{\"owner\": \"Hollis Kuhlman\"}',1,'1987-04-26 21:24:03','2020-05-10 19:03:07'),(27,100,'https//dropbox.net/vk/nostrum.mp4',16236894,'{\"owner\": \"Russ Kassulke\"}',2,'1998-05-21 10:49:40','2020-05-10 19:03:07'),(28,79,'https//dropbox.net/vk/praesentium.avi',1327,'{\"owner\": \"Arnoldo Nienow\"}',2,'2005-12-02 03:51:12','2020-05-10 19:03:07'),(29,94,'https//dropbox.net/vk/illo.png',31321433,'{\"owner\": \"Reba Ortiz\"}',3,'2008-05-02 12:56:26','2020-05-10 19:03:07'),(30,32,'https//dropbox.net/vk/quae.avi',691906,'{\"owner\": \"Reva Beahan\"}',1,'1996-09-26 01:42:16','2020-05-10 19:03:07'),(31,79,'https//dropbox.net/vk/consectetur.png',7796486,'{\"owner\": \"Arnoldo Nienow\"}',2,'2005-10-07 02:33:50','2020-05-10 19:03:07'),(32,97,'https//dropbox.net/vk/voluptatem.jpeg',31406,'{\"owner\": \"Zack Zieme\"}',3,'1995-03-28 20:55:57','2020-05-10 19:03:07'),(33,50,'https//dropbox.net/vk/dignissimos.png',87405983,'{\"owner\": \"Rebecca Trantow\"}',1,'1996-05-06 01:52:05','2020-05-10 19:03:07'),(34,58,'https//dropbox.net/vk/ipsum.jpeg',44918136,'{\"owner\": \"Earl Walker\"}',2,'2019-01-26 15:40:49','2020-05-10 19:03:07'),(35,38,'https//dropbox.net/vk/praesentium.avi',614388,'{\"owner\": \"Josh Kuphal\"}',1,'1973-11-18 19:26:42','2020-05-10 19:03:07'),(36,16,'https//dropbox.net/vk/non.png',397288,'{\"owner\": \"Leland Nikolaus\"}',3,'1970-09-12 04:32:28','2020-05-10 19:03:07'),(37,64,'https//dropbox.net/vk/molestias.avi',1101223,'{\"owner\": \"Verla Johns\"}',1,'2013-08-05 00:40:55','2020-05-10 19:03:07'),(38,74,'https//dropbox.net/vk/architecto.png',14721,'{\"owner\": \"Clement Mitchell\"}',1,'2007-09-22 13:18:13','2020-05-10 19:03:07'),(39,75,'https//dropbox.net/vk/unde.avi',7870,'{\"owner\": \"Justyn Haley\"}',3,'1996-06-24 01:22:46','2020-05-10 19:03:07'),(40,55,'https//dropbox.net/vk/facilis.avi',70651713,'{\"owner\": \"Angelina Batz\"}',3,'1993-08-31 17:22:07','2020-05-10 19:03:07'),(41,49,'https//dropbox.net/vk/at.mp4',49854897,'{\"owner\": \"Sabina Christiansen\"}',3,'2008-02-25 14:44:44','2020-05-10 19:03:07'),(42,81,'https//dropbox.net/vk/pariatur.mp4',37219349,'{\"owner\": \"D\'angelo Wyman\"}',3,'1999-04-26 16:19:16','2020-05-10 19:03:07'),(43,56,'https//dropbox.net/vk/sapiente.jpeg',58231,'{\"owner\": \"Erich Crona\"}',3,'2018-01-07 15:54:01','2020-05-10 19:03:07'),(44,38,'https//dropbox.net/vk/dolor.mp4',39583,'{\"owner\": \"Josh Kuphal\"}',3,'2015-06-22 02:02:13','2020-05-10 19:03:07'),(45,21,'https//dropbox.net/vk/et.avi',5242477,'{\"owner\": \"Alexandre Marquardt\"}',2,'1987-09-01 17:03:32','2020-05-10 19:03:07'),(46,89,'https//dropbox.net/vk/corrupti.mp4',36432060,'{\"owner\": \"Peter Keeling\"}',3,'1992-04-25 11:52:20','2020-05-10 19:03:07'),(47,84,'https//dropbox.net/vk/aspernatur.avi',21390028,'{\"owner\": \"Enola Friesen\"}',2,'1984-08-12 17:25:14','2020-05-10 19:03:07'),(48,50,'https//dropbox.net/vk/deserunt.jpeg',445964724,'{\"owner\": \"Rebecca Trantow\"}',3,'1995-10-08 00:49:59','2020-05-10 19:03:07'),(49,97,'https//dropbox.net/vk/nihil.png',6250055,'{\"owner\": \"Zack Zieme\"}',2,'2016-01-31 10:26:28','2020-05-10 19:03:07'),(50,37,'https//dropbox.net/vk/voluptate.png',357000,'{\"owner\": \"Donnell Collier\"}',1,'1972-06-05 13:21:23','2020-05-10 19:03:07'),(51,94,'https//dropbox.net/vk/corporis.mp4',12511,'{\"owner\": \"Reba Ortiz\"}',3,'1984-12-12 12:02:56','2020-05-10 19:03:07'),(52,57,'https//dropbox.net/vk/omnis.jpeg',70402255,'{\"owner\": \"Germaine Dicki\"}',3,'1986-01-11 16:11:59','2020-05-10 19:03:07'),(53,5,'https//dropbox.net/vk/placeat.avi',42615101,'{\"owner\": \"Lafayette Morissette\"}',1,'1983-10-20 20:15:47','2020-05-10 19:03:07'),(54,50,'https//dropbox.net/vk/voluptatem.avi',1768741,'{\"owner\": \"Rebecca Trantow\"}',1,'1980-10-14 06:13:02','2020-05-10 19:03:07'),(55,36,'https//dropbox.net/vk/facere.jpeg',45361,'{\"owner\": \"Zaria Cormier\"}',1,'2011-09-07 08:25:15','2020-05-10 19:03:07'),(56,30,'https//dropbox.net/vk/et.mp4',80898407,'{\"owner\": \"Gladyce Kub\"}',1,'2015-02-18 12:51:41','2020-05-10 19:03:07'),(57,43,'https//dropbox.net/vk/iste.avi',816828,'{\"owner\": \"Karen Orn\"}',2,'2011-05-21 00:37:07','2020-05-10 19:03:07'),(58,22,'https//dropbox.net/vk/fugit.mp4',52076,'{\"owner\": \"Alf Larkin\"}',2,'1990-05-20 10:17:10','2020-05-10 19:03:07'),(59,81,'https//dropbox.net/vk/totam.avi',899701,'{\"owner\": \"D\'angelo Wyman\"}',1,'2007-11-18 04:22:57','2020-05-10 19:03:07'),(60,40,'https//dropbox.net/vk/ab.mp4',99085814,'{\"owner\": \"Hollis Kuhlman\"}',1,'1982-02-21 18:10:22','2020-05-10 19:03:07'),(61,54,'https//dropbox.net/vk/nihil.png',410724,'{\"owner\": \"Tyler Rice\"}',1,'2019-11-22 19:49:51','2020-05-10 19:03:07'),(62,49,'https//dropbox.net/vk/quod.png',25634680,'{\"owner\": \"Sabina Christiansen\"}',3,'2013-01-05 23:07:56','2020-05-10 19:03:07'),(63,85,'https//dropbox.net/vk/id.avi',52633852,'{\"owner\": \"Wellington Rath\"}',1,'1995-05-04 20:41:45','2020-05-10 19:03:07'),(64,76,'https//dropbox.net/vk/nisi.mp4',95158541,'{\"owner\": \"Katlynn Kihn\"}',3,'1997-10-29 10:43:50','2020-05-10 19:03:07'),(65,23,'https//dropbox.net/vk/ea.png',65811823,'{\"owner\": \"Shanie Turcotte\"}',1,'2016-08-13 05:10:40','2020-05-10 19:03:07'),(66,89,'https//dropbox.net/vk/ea.mp4',7518560,'{\"owner\": \"Peter Keeling\"}',2,'2019-02-25 05:33:40','2020-05-10 19:03:07'),(67,76,'https//dropbox.net/vk/libero.avi',71057563,'{\"owner\": \"Katlynn Kihn\"}',1,'2014-10-30 16:35:42','2020-05-10 19:03:07'),(68,10,'https//dropbox.net/vk/dicta.avi',57752348,'{\"owner\": \"Ottilie Marquardt\"}',1,'2009-02-14 20:49:38','2020-05-10 19:03:07'),(69,21,'https//dropbox.net/vk/aspernatur.jpeg',6248,'{\"owner\": \"Alexandre Marquardt\"}',3,'1992-10-06 04:33:02','2020-05-10 19:03:07'),(70,74,'https//dropbox.net/vk/doloremque.mp4',1386,'{\"owner\": \"Clement Mitchell\"}',1,'1972-02-01 13:39:53','2020-05-10 19:03:07'),(71,6,'https//dropbox.net/vk/et.jpeg',75489057,'{\"owner\": \"Kirk Schroeder\"}',2,'2002-02-09 01:43:35','2020-05-10 19:03:07'),(72,7,'https//dropbox.net/vk/illum.mp4',229783499,'{\"owner\": \"Jaydon Lockman\"}',2,'1989-07-21 13:23:29','2020-05-10 19:03:07'),(73,16,'https//dropbox.net/vk/corrupti.png',6007529,'{\"owner\": \"Leland Nikolaus\"}',1,'1991-05-25 02:31:55','2020-05-10 19:03:07'),(74,60,'https//dropbox.net/vk/eaque.mp4',4088242,'{\"owner\": \"Monty Willms\"}',1,'1972-02-23 05:44:25','2020-05-10 19:03:07'),(75,50,'https//dropbox.net/vk/harum.mp4',7038,'{\"owner\": \"Rebecca Trantow\"}',1,'1998-11-19 01:24:07','2020-05-10 19:03:07'),(76,69,'https//dropbox.net/vk/dicta.png',93874042,'{\"owner\": \"Beulah Daugherty\"}',2,'2007-03-08 15:11:33','2020-05-10 19:03:07'),(77,94,'https//dropbox.net/vk/maiores.mp4',291734372,'{\"owner\": \"Reba Ortiz\"}',2,'2004-01-12 18:18:19','2020-05-10 19:03:07'),(78,64,'https//dropbox.net/vk/quod.jpeg',2275,'{\"owner\": \"Verla Johns\"}',2,'2009-04-02 18:23:41','2020-05-10 19:03:07'),(79,35,'https//dropbox.net/vk/dolore.avi',497570442,'{\"owner\": \"Guiseppe Kovacek\"}',2,'1987-05-03 16:10:25','2020-05-10 19:03:07'),(80,85,'https//dropbox.net/vk/numquam.jpeg',57005489,'{\"owner\": \"Wellington Rath\"}',3,'1990-03-31 07:18:58','2020-05-10 19:03:07'),(81,19,'https//dropbox.net/vk/vitae.mp4',78312,'{\"owner\": \"Marian Franecki\"}',2,'1989-12-11 16:04:20','2020-05-10 19:03:07'),(82,39,'https//dropbox.net/vk/ut.jpeg',3681056,'{\"owner\": \"Monty Rolfson\"}',1,'2001-01-31 17:12:42','2020-05-10 19:03:07'),(83,37,'https//dropbox.net/vk/aut.jpeg',3305322,'{\"owner\": \"Donnell Collier\"}',3,'2009-12-03 13:32:20','2020-05-10 19:03:07'),(84,69,'https//dropbox.net/vk/libero.mp4',45410146,'{\"owner\": \"Beulah Daugherty\"}',3,'2003-12-30 21:33:14','2020-05-10 19:03:07'),(85,33,'https//dropbox.net/vk/numquam.mp4',7472,'{\"owner\": \"Amie Hermiston\"}',1,'2001-08-10 09:49:52','2020-05-10 19:03:07'),(86,58,'https//dropbox.net/vk/placeat.jpeg',17034768,'{\"owner\": \"Earl Walker\"}',1,'2012-11-15 14:05:31','2020-05-10 19:03:07'),(87,90,'https//dropbox.net/vk/enim.png',48843404,'{\"owner\": \"Jaquan Wilkinson\"}',1,'1979-04-17 14:47:26','2020-05-10 19:03:07'),(88,77,'https//dropbox.net/vk/quas.png',93012723,'{\"owner\": \"Devonte Okuneva\"}',1,'1980-12-21 10:52:52','2020-05-10 19:03:07'),(89,13,'https//dropbox.net/vk/rerum.jpeg',18433404,'{\"owner\": \"Elza Wisozk\"}',2,'1983-12-24 13:41:33','2020-05-10 19:03:07'),(90,32,'https//dropbox.net/vk/perferendis.avi',971996,'{\"owner\": \"Reva Beahan\"}',1,'1979-04-04 01:38:48','2020-05-10 19:03:07'),(91,21,'https//dropbox.net/vk/explicabo.mp4',23443,'{\"owner\": \"Alexandre Marquardt\"}',1,'1998-10-15 21:52:16','2020-05-10 19:03:07'),(92,8,'https//dropbox.net/vk/voluptatem.mp4',13028854,'{\"owner\": \"Chaya Rice\"}',2,'2020-02-18 05:56:47','2020-05-10 19:03:07'),(93,79,'https//dropbox.net/vk/id.png',593465748,'{\"owner\": \"Arnoldo Nienow\"}',1,'2006-10-14 16:29:33','2020-05-10 19:03:07'),(94,70,'https//dropbox.net/vk/veniam.png',1086,'{\"owner\": \"Candice Beier\"}',2,'1984-10-08 10:21:21','2020-05-10 19:03:07'),(95,12,'https//dropbox.net/vk/sed.mp4',9744063,'{\"owner\": \"Estella Bauch\"}',2,'2018-04-20 16:57:03','2020-05-10 19:03:07'),(96,51,'https//dropbox.net/vk/saepe.jpeg',882441,'{\"owner\": \"Dayna Kerluke\"}',1,'2011-02-26 02:35:23','2020-05-10 19:03:07'),(97,19,'https//dropbox.net/vk/voluptatem.png',9533757,'{\"owner\": \"Marian Franecki\"}',1,'1977-11-27 23:03:34','2020-05-10 19:03:07'),(98,42,'https//dropbox.net/vk/molestiae.jpeg',18336600,'{\"owner\": \"Mercedes Romaguera\"}',1,'2014-07-04 21:58:47','2020-05-10 19:03:07'),(99,51,'https//dropbox.net/vk/nobis.mp4',62981733,'{\"owner\": \"Dayna Kerluke\"}',2,'1984-01-06 06:29:24','2020-05-10 19:03:07'),(100,29,'https//dropbox.net/vk/quaerat.mp4',59798869,'{\"owner\": \"Ophelia Stehr\"}',1,'2013-05-24 13:54:26','2020-05-10 19:03:07');
/*!40000 ALTER TABLE `media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_types`
--

DROP TABLE IF EXISTS `media_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_types` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_types`
--

LOCK TABLES `media_types` WRITE;
/*!40000 ALTER TABLE `media_types` DISABLE KEYS */;
INSERT INTO `media_types` VALUES (3,'audio'),(1,'photo'),(2,'video');
/*!40000 ALTER TABLE `media_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `messages` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `from_user_id` int unsigned NOT NULL,
  `to_user_id` int unsigned NOT NULL,
  `body` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `is_important` tinyint(1) DEFAULT NULL,
  `is_delivered` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (1,71,56,'Sint laboriosam hic iure quos inventore eos.',0,0,'2017-04-20 13:45:28'),(2,70,78,'In qui dolor sed veritatis voluptatem aliquam.',0,1,'2016-02-17 18:20:14'),(3,80,65,'Vitae rem hic quaerat.',0,0,'2010-09-23 21:54:23'),(4,87,37,'At amet sed eligendi pariatur reiciendis.',0,1,'2015-04-18 13:25:40'),(5,24,8,'In aliquam nihil vel non voluptates.',1,0,'2013-12-05 23:15:45'),(6,69,21,'Libero maiores quis sit dolores ipsum.',1,0,'2011-05-31 06:57:45'),(7,96,18,'Maxime optio eum perspiciatis.',0,1,'2018-11-15 08:59:57'),(8,1,52,'Sed dolor saepe impedit quisquam quasi labore quia.',1,1,'2012-08-20 02:00:29'),(9,54,13,'Et est beatae nulla.',0,1,'2016-04-06 02:26:32'),(10,2,71,'Accusantium pariatur facere quia qui qui molestias.',0,0,'2017-10-23 09:39:53'),(11,48,26,'Modi omnis reiciendis omnis qui in illo cumque mollitia.',0,0,'2016-04-02 05:21:49'),(12,85,46,'Repudiandae et quam aut quod est animi repellendus.',0,0,'2016-02-16 09:45:17'),(13,74,33,'Perspiciatis consequatur soluta qui.',0,0,'2014-08-01 03:24:23'),(14,42,13,'Fugiat voluptatibus corrupti provident quibusdam praesentium qui neque.',0,0,'2019-04-14 03:27:30'),(15,35,38,'Tempora laudantium illo officiis quisquam et facere sit.',0,0,'2015-10-11 19:49:09'),(16,84,7,'Rem labore asperiores inventore voluptatem.',1,0,'2011-10-18 09:30:30'),(17,82,87,'Nostrum odit suscipit cum dolore dignissimos occaecati.',1,0,'2013-06-06 17:57:24'),(18,89,85,'Fugiat dolor ullam est corporis id.',0,1,'2020-02-20 06:18:41'),(19,59,36,'Ut corrupti dolore delectus minima sapiente in eos.',0,0,'2013-02-09 04:14:10'),(20,3,5,'Harum sit provident eaque aperiam quaerat voluptas libero omnis.',0,0,'2011-11-13 07:13:38'),(21,19,77,'Fugit quibusdam non adipisci recusandae amet.',0,1,'2010-07-04 04:50:09'),(22,29,13,'Libero dolore fugiat rerum iure quo illum vel.',0,0,'2017-12-05 07:39:27'),(23,76,39,'Qui voluptas eos aut mollitia repellendus.',0,1,'2019-03-24 23:06:05'),(24,70,33,'Distinctio magni ut inventore cupiditate veniam ipsam sunt.',1,0,'2015-02-16 13:34:19'),(25,53,65,'Qui tempora illum omnis non eum.',0,1,'2016-02-14 12:35:25'),(26,65,31,'Et neque mollitia sed beatae qui ipsa.',1,1,'2018-04-17 02:36:33'),(27,59,1,'Odit quaerat voluptas dolorem vero debitis.',1,1,'2012-06-26 21:20:57'),(28,26,28,'Repellat iste ut voluptatem vel ut nulla voluptatem.',0,1,'2018-01-17 02:05:28'),(29,62,24,'Quaerat eaque vel et.',1,0,'2017-02-11 05:34:10'),(30,35,100,'Temporibus et totam ut ut quas.',1,0,'2019-12-31 17:41:49'),(31,96,78,'Quasi aut reprehenderit assumenda repellat.',1,1,'2019-09-04 03:46:23'),(32,1,72,'Omnis velit eligendi corrupti ducimus perspiciatis.',1,0,'2012-08-19 13:57:34'),(33,57,66,'Quia dolorem aut id.',0,1,'2018-11-10 01:52:55'),(34,60,3,'Laboriosam aut aut quis repudiandae est.',1,1,'2017-07-26 15:15:59'),(35,34,62,'Asperiores aut inventore cum explicabo illum occaecati at voluptas.',0,0,'2019-06-14 12:51:33'),(36,4,36,'Dolorem earum eum voluptatem laborum laudantium dicta.',0,1,'2017-06-17 07:12:09'),(37,68,30,'Dolor nihil voluptas fugit.',0,0,'2012-04-02 12:39:27'),(38,47,42,'Reprehenderit aliquid optio et ut iste assumenda.',1,1,'2016-04-16 11:49:20'),(39,69,17,'Et quam unde optio suscipit quibusdam ea vel.',1,0,'2010-07-12 08:37:48'),(40,80,47,'Impedit voluptatum animi aut voluptatibus debitis.',0,0,'2016-03-19 01:14:10'),(41,94,31,'Rerum recusandae modi ad ut.',0,0,'2010-05-16 21:01:02'),(42,72,67,'Modi fugit recusandae est quaerat natus a fugit quisquam.',1,0,'2013-07-16 05:08:09'),(43,16,81,'Ducimus illo error consequatur soluta ducimus esse ducimus distinctio.',0,1,'2013-12-30 04:31:00'),(44,57,40,'Deserunt aut praesentium aspernatur cumque cupiditate nemo neque.',1,1,'2018-02-06 11:09:28'),(45,31,31,'Dolore id ut aliquid sint.',1,0,'2020-01-18 22:10:21'),(46,64,27,'Adipisci tenetur sequi qui beatae eum magni aperiam.',0,1,'2016-11-08 00:40:04'),(47,39,17,'Et aut dolores non aut sunt dicta numquam et.',1,0,'2010-10-20 09:23:48'),(48,68,87,'Nobis enim cum nihil praesentium perferendis.',1,1,'2011-11-16 04:52:32'),(49,30,90,'Et cumque ut aut dolores et alias.',1,0,'2010-12-23 20:36:34'),(50,60,30,'Corrupti iusto quis et.',0,0,'2020-03-21 20:49:54'),(51,67,47,'Qui perspiciatis quod sed quae in sed.',1,1,'2017-03-21 12:37:20'),(52,33,21,'Qui dolorum ratione soluta et vel illum excepturi impedit.',0,1,'2018-11-22 14:37:38'),(53,8,75,'Corrupti necessitatibus vel vel dolorum repudiandae commodi vel.',0,1,'2012-10-04 08:23:11'),(54,53,39,'Eum sint aut sit id molestias.',1,0,'2014-03-15 16:54:37'),(55,33,49,'Aperiam fugiat vero ut et maiores.',1,1,'2011-12-06 22:35:18'),(56,46,83,'Ut sint aspernatur et dolore quia ullam voluptatibus.',1,1,'2013-08-26 03:25:38'),(57,78,39,'Fugiat ut porro sed ut suscipit voluptatum.',1,0,'2017-11-24 00:25:57'),(58,59,81,'Enim sed modi ut consequuntur accusamus architecto voluptatum.',0,0,'2018-07-28 23:25:38'),(59,24,79,'Quia et dolorem laboriosam eos cumque.',0,1,'2017-10-01 10:09:58'),(60,21,67,'Nesciunt error ab nesciunt dolorum.',0,0,'2018-08-21 20:20:06'),(61,71,54,'Corrupti voluptas quos consectetur ipsa in corrupti.',0,0,'2011-11-12 05:56:16'),(62,55,14,'Blanditiis deserunt aliquam sit quam.',1,0,'2018-05-13 05:01:08'),(63,3,75,'Aperiam quibusdam eum quis mollitia.',0,0,'2010-05-09 05:51:13'),(64,66,5,'Perspiciatis nihil dicta facere autem.',0,1,'2016-11-20 20:16:57'),(65,27,17,'Sit illum sed libero.',0,0,'2018-04-26 00:37:20'),(66,3,66,'Accusantium tenetur hic quas natus harum.',0,1,'2013-05-29 17:16:13'),(67,20,100,'Suscipit maxime debitis quia esse.',1,0,'2019-10-10 07:44:54'),(68,40,1,'Omnis reiciendis laboriosam dolor quia fugit culpa.',0,0,'2013-01-29 17:21:01'),(69,84,15,'Aut pariatur perspiciatis reiciendis rem temporibus.',0,0,'2010-10-21 09:43:03'),(70,24,74,'Beatae deserunt facere sit omnis aut ut ea.',1,1,'2016-08-12 17:50:40'),(71,97,64,'Quaerat perspiciatis aut possimus ut illo cumque vitae.',1,1,'2020-04-13 12:11:56'),(72,28,47,'Autem eligendi consequatur voluptas molestias voluptates.',1,1,'2015-11-01 10:10:15'),(73,49,6,'Laborum culpa est eveniet possimus dolore.',0,1,'2016-10-18 03:45:09'),(74,82,90,'Autem unde minima unde et.',1,1,'2018-03-16 16:53:59'),(75,3,46,'Amet aliquid ex harum impedit sunt.',0,0,'2015-05-26 14:10:28'),(76,20,61,'Est amet dolores consequatur enim nobis.',1,1,'2018-05-31 11:37:13'),(77,45,39,'Cumque sequi expedita ducimus sit mollitia.',1,0,'2010-05-10 06:46:07'),(78,63,97,'Omnis odit saepe quidem dicta enim dolorum.',0,0,'2014-07-17 05:53:00'),(79,97,91,'Similique qui iste et culpa similique vel debitis.',1,0,'2019-01-15 16:58:42'),(80,65,50,'Fugiat sit voluptate officiis repudiandae ut rerum.',1,0,'2018-07-03 04:28:38'),(81,57,33,'Libero vero nostrum est ea facere reiciendis.',0,1,'2014-03-05 17:37:38'),(82,92,60,'Ipsa non non qui aspernatur qui.',0,0,'2013-01-21 08:31:26'),(83,24,40,'Minus iure maiores et rerum.',1,1,'2018-02-11 01:54:47'),(84,27,15,'Eaque nisi commodi non quae sit dolor.',1,1,'2015-01-23 00:53:47'),(85,95,29,'Inventore inventore sit exercitationem accusamus rerum sunt.',0,1,'2014-09-11 06:08:17'),(86,59,10,'Labore soluta aut enim cupiditate quia ducimus non aliquam.',0,0,'2011-11-23 19:54:44'),(87,69,15,'Consequuntur aut rem iusto sed.',1,1,'2011-11-09 10:00:30'),(88,70,3,'Quod rerum hic est expedita ut dignissimos.',0,0,'2019-07-13 18:40:51'),(89,4,9,'Officiis voluptate et nesciunt rem fugiat est.',1,0,'2011-01-30 10:05:08'),(90,33,40,'Temporibus aut dolor optio fuga minima.',1,1,'2016-05-22 20:08:42'),(91,100,77,'Harum delectus in aut earum.',0,1,'2013-09-13 00:22:47'),(92,87,4,'Placeat qui ea a consequuntur.',1,1,'2018-04-26 08:12:11'),(93,57,72,'Et sequi nulla natus ea ipsum.',0,0,'2019-09-23 18:01:34'),(94,88,25,'In et ut reiciendis et quae et.',0,0,'2011-07-08 11:57:19'),(95,60,24,'Odio qui molestiae similique modi.',0,1,'2014-07-06 16:56:21'),(96,39,25,'Nam expedita distinctio dolores vero.',1,1,'2013-01-02 14:55:29'),(97,7,57,'Omnis quidem consequatur ut qui.',1,0,'2011-01-27 03:15:40'),(98,64,49,'Odit quas repellendus porro quam totam omnis magni.',1,1,'2020-01-15 14:50:39'),(99,51,10,'Quibusdam voluptas voluptas magni molestiae amet iusto cum porro.',1,0,'2018-08-26 02:25:36'),(100,95,46,'Inventore eum quasi nemo illum iste enim.',1,0,'2019-09-27 06:30:04');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profiles`
--

DROP TABLE IF EXISTS `profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profiles` (
  `user_id` int unsigned NOT NULL,
  `photo_id` int unsigned DEFAULT NULL,
  `gender` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `birthday` date DEFAULT NULL,
  `city` varchar(130) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(130) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profiles`
--

LOCK TABLES `profiles` WRITE;
/*!40000 ALTER TABLE `profiles` DISABLE KEYS */;
INSERT INTO `profiles` VALUES (1,17,'w','1986-07-07','Spencerville','Vietnam','2020-05-10 17:58:09'),(2,98,'w','2000-06-18','North Vickymouth','Slovenia','2020-05-10 17:58:09'),(3,41,'m','1981-07-28','North Fletaport','British Indian Ocean Territory (Chagos Archipelago)','2020-05-10 18:05:09'),(4,10,'w','2004-04-26','Juvenalton','Nauru','2020-05-10 17:58:09'),(5,24,'w','1994-08-11','Onamouth','Namibia','2020-05-10 17:58:09'),(6,93,'m','2019-09-27','Mannport','Cook Islands','2020-05-10 18:05:09'),(7,90,'m','1978-04-26','Octaviaborough','Aruba','2020-05-10 17:58:09'),(8,70,'m','1996-11-30','Xzavierton','Papua New Guinea','2020-05-10 18:05:09'),(9,82,'w','2003-04-18','South Ellsworthfort','Indonesia','2020-05-10 17:58:09'),(10,98,'w','1980-05-16','West Drewshire','United States of America','2020-05-10 18:05:09'),(11,42,'m','2011-01-06','Connellychester','Comoros','2020-05-10 17:58:09'),(12,16,'w','1973-12-07','Lake Colleen','Tonga','2020-05-10 17:58:09'),(13,52,'m','2008-08-18','North Jermainview','Romania','2020-05-10 17:58:09'),(14,13,'m','2008-05-21','Bodeland','Malawi','2020-05-10 17:58:09'),(15,10,'m','2007-09-26','Michelleborough','Serbia','2020-05-10 18:05:09'),(16,11,'m','1975-01-17','South Cleve','Poland','2020-05-10 18:05:09'),(17,23,'m','1977-04-22','Aidastad','Andorra','2020-05-10 18:05:09'),(18,81,'w','1985-05-20','Port Elianefort','Mauritius','2020-05-10 17:58:09'),(19,37,'w','1977-05-05','Lake Tracyland','Micronesia','2020-05-10 18:05:09'),(20,40,'w','1980-10-18','Lake Madelinemouth','Ecuador','2020-05-10 17:58:09'),(21,89,'m','2008-11-13','Port Domingoview','Moldova','2020-05-10 18:05:09'),(22,24,'m','1979-01-12','Lamontborough','French Polynesia','2020-05-10 18:05:09'),(23,52,'w','1972-12-08','Boehmhaven','United Kingdom','2020-05-10 18:05:09'),(24,89,'m','1990-10-08','Zacheryburgh','Bahrain','2020-05-10 18:05:09'),(25,89,'m','2013-04-05','Mitchellbury','Sao Tome and Principe','2020-05-10 17:58:09'),(26,79,'w','1976-07-23','Yundtton','Guatemala','2020-05-10 17:58:09'),(27,25,'m','2006-10-21','Hardyfurt','Saint Martin','2020-05-10 17:58:09'),(28,88,'m','1994-10-05','Julietton','Guatemala','2020-05-10 17:58:09'),(29,66,'m','2010-05-31','East Lloyd','Georgia','2020-05-10 17:58:09'),(30,65,'m','2012-04-07','North Kaylee','Liechtenstein','2020-05-10 17:58:09'),(31,28,'m','2007-05-07','Madonnahaven','Ecuador','2020-05-10 17:58:09'),(32,44,'w','2003-05-21','Elwinfurt','Taiwan','2020-05-10 18:05:09'),(33,35,'m','1997-07-29','New Marcelle','Gibraltar','2020-05-10 18:05:09'),(34,43,'w','1985-07-13','Rebachester','Marshall Islands','2020-05-10 18:05:09'),(35,8,'w','1989-01-28','Runolfsdottirfurt','Italy','2020-05-10 17:58:09'),(36,13,'m','1998-08-19','Mrazport','Tonga','2020-05-10 18:05:09'),(37,39,'m','1991-02-27','Jaskolskiview','Hong Kong','2020-05-10 17:58:09'),(38,56,'w','2001-01-06','Reynabury','Belarus','2020-05-10 18:05:09'),(39,62,'m','2000-06-04','East Flossiestad','Indonesia','2020-05-10 18:05:09'),(40,43,'w','1986-10-09','Port Newton','Jamaica','2020-05-10 17:58:09'),(41,30,'w','1989-07-30','Port Davionhaven','Bhutan','2020-05-10 17:58:09'),(42,17,'w','1980-07-08','Jarrellburgh','Tokelau','2020-05-10 18:05:09'),(43,95,'w','1978-11-17','Runteport','Ireland','2020-05-10 18:05:09'),(44,23,'m','1982-10-09','East Lisette','Seychelles','2020-05-10 17:58:09'),(45,29,'m','2001-11-01','Gennarochester','Dominica','2020-05-10 18:05:09'),(46,76,'w','2003-05-06','Willmsport','Nauru','2020-05-10 18:05:09'),(47,93,'w','1999-03-07','Port Frederick','Thailand','2020-05-10 18:05:09'),(48,36,'w','1998-07-23','Torpbury','Samoa','2020-05-10 18:05:09'),(49,99,'m','1978-01-24','Harveybury','Armenia','2020-05-10 17:58:09'),(50,89,'w','1989-11-24','Beattyhaven','Belize','2020-05-10 18:05:09'),(51,46,'w','1997-01-24','Merleville','Greenland','2020-05-10 18:05:09'),(52,62,'w','1981-11-12','West Brandy','Panama','2020-05-10 17:58:09'),(53,74,'w','1976-03-05','Reingerport','Iceland','2020-05-10 17:58:09'),(54,82,'m','1977-06-20','Jerdeville','Gabon','2020-05-10 18:05:09'),(55,88,'w','1977-02-08','Mauricioton','Singapore','2020-05-10 18:05:09'),(56,93,'m','1976-07-11','Charleyville','Benin','2020-05-10 17:58:09'),(57,2,'m','1984-08-04','Rolfsonfort','Faroe Islands','2020-05-10 17:58:09'),(58,29,'m','2009-01-12','Braunstad','Egypt','2020-05-10 18:05:09'),(59,39,'w','2015-07-01','Dereckstad','Turks and Caicos Islands','2020-05-10 18:05:09'),(60,7,'m','2015-03-02','Alberthastad','Bouvet Island (Bouvetoya)','2020-05-10 17:58:09'),(61,18,'m','2002-11-23','Lake Rubymouth','Grenada','2020-05-10 17:58:09'),(62,70,'m','2012-02-18','Port Louieport','Palau','2020-05-10 18:05:09'),(63,96,'m','1988-10-27','North Adolfo','Saint Kitts and Nevis','2020-05-10 17:58:09'),(64,67,'m','2010-06-16','Sabinachester','French Polynesia','2020-05-10 18:05:09'),(65,46,'m','1980-03-31','Lake Maddisonfort','Guyana','2020-05-10 18:05:09'),(66,27,'m','1979-01-09','Kristinland','Angola','2020-05-10 18:05:09'),(67,100,'w','2007-10-23','Port Ena','Greenland','2020-05-10 17:58:09'),(68,18,'m','2010-01-10','Littlemouth','Iran','2020-05-10 18:05:09'),(69,87,'w','1979-06-21','Watsicatown','Mexico','2020-05-10 17:58:09'),(70,82,'w','1987-06-20','Carterfort','Christmas Island','2020-05-10 18:05:09'),(71,50,'w','2007-02-04','Loweville','Zimbabwe','2020-05-10 17:58:09'),(72,4,'m','2020-01-13','Keaganshire','Romania','2020-05-10 17:58:09'),(73,67,'w','2013-10-04','O\'Reillyfort','Philippines','2020-05-10 17:58:09'),(74,21,'w','1972-03-06','South Patricia','Madagascar','2020-05-10 18:05:09'),(75,7,'m','2002-03-09','Abrahamfort','Burkina Faso','2020-05-10 17:58:09'),(76,72,'m','2014-11-13','New Lonnie','Dominican Republic','2020-05-10 17:58:09'),(77,36,'w','2015-07-22','Port Porter','Mayotte','2020-05-10 18:05:09'),(78,66,'w','2000-06-04','Jabarimouth','Sweden','2020-05-10 18:05:09'),(79,19,'w','1992-05-02','Bridiemouth','Chile','2020-05-10 17:58:09'),(80,97,'w','2006-11-20','Ricemouth','Montserrat','2020-05-10 18:05:09'),(81,28,'m','1978-02-06','South Myrtie','Solomon Islands','2020-05-10 17:58:09'),(82,47,'w','2016-09-30','Carrollville','Latvia','2020-05-10 17:58:09'),(83,53,'w','1991-06-04','Port Vernafort','Niger','2020-05-10 17:58:09'),(84,22,'m','1978-04-09','Brionnamouth','Portugal','2020-05-10 18:05:09'),(85,50,'w','2013-09-28','West Dannieside','Myanmar','2020-05-10 18:05:09'),(86,86,'m','1990-06-18','Stephanieburgh','Jamaica','2020-05-10 18:05:09'),(87,76,'w','1996-10-22','Lilyanchester','Chile','2020-05-10 18:05:09'),(88,24,'w','1988-04-21','Granthaven','Saint Martin','2020-05-10 18:05:09'),(89,89,'m','1996-10-09','Ezekielton','Bahamas','2020-05-10 17:58:09'),(90,72,'m','2004-01-22','Kellieborough','Grenada','2020-05-10 17:58:09'),(91,95,'m','1970-03-30','South Clarissa','Malaysia','2020-05-10 17:58:09'),(92,59,'m','2009-06-03','North Moises','Belgium','2020-05-10 18:05:09'),(93,6,'w','1989-10-17','Port Sterlingberg','Malawi','2020-05-10 17:58:09'),(94,56,'w','1979-12-09','Lake Joshuahbury','Heard Island and McDonald Islands','2020-05-10 18:05:09'),(95,61,'w','2013-09-24','East Parker','Timor-Leste','2020-05-10 18:05:09'),(96,34,'m','2017-10-11','Lake Aleen','Kiribati','2020-05-10 17:58:09'),(97,89,'w','1976-07-16','West Sincere','Marshall Islands','2020-05-10 18:05:09'),(98,40,'w','2018-04-01','South Mayra','Ecuador','2020-05-10 18:05:09'),(99,34,'m','2000-08-13','New Antonettaside','Nicaragua','2020-05-10 17:58:09'),(100,47,'w','1999-02-27','Carmelamouth','Liberia','2020-05-10 18:05:09');
/*!40000 ALTER TABLE `profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_statuses`
--

DROP TABLE IF EXISTS `user_statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_statuses` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_statuses`
--

LOCK TABLES `user_statuses` WRITE;
/*!40000 ALTER TABLE `user_statuses` DISABLE KEYS */;
INSERT INTO `user_statuses` VALUES (1,'active'),(2,'blocked'),(3,'deleted');
/*!40000 ALTER TABLE `user_statuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status_id` int unsigned NOT NULL DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Brisa','Shanahan','darryl07@example.com','1-829-809-5025x3935',3,'2015-07-25 12:38:01','2020-05-10 17:02:31'),(2,'Delmer','Funk','koby38@example.net','625.018.7001',2,'2014-05-20 18:32:06','2020-05-10 17:02:31'),(3,'Keshaun','Brakus','conroy.osborne@example.com','567-691-6196',3,'2011-05-24 06:22:41','2020-05-10 17:02:31'),(4,'Tess','Cassin','tlesch@example.net','550-923-7831x964',1,'2016-06-08 16:40:07','2016-07-01 13:57:46'),(5,'Lafayette','Morissette','becker.marcus@example.com','+62(4)8016487181',2,'2012-06-25 17:42:47','2020-05-10 17:02:31'),(6,'Kirk','Schroeder','uziemann@example.net','1-820-327-0699x71321',1,'2015-07-15 05:46:37','2020-05-10 16:57:22'),(7,'Jaydon','Lockman','velva56@example.org','1-227-744-0587',2,'2014-05-13 17:50:27','2020-05-10 17:02:31'),(8,'Chaya','Rice','taylor.oberbrunner@example.com','106.435.1156',1,'2015-12-05 03:08:52','2017-08-15 17:37:47'),(9,'Hannah','Pfeffer','mckenna.schultz@example.org','1-266-716-4748',3,'2012-04-15 11:37:49','2020-05-10 17:02:31'),(10,'Ottilie','Marquardt','vklocko@example.com','(415)887-7329x42266',3,'2018-01-24 17:37:22','2020-05-10 17:02:31'),(11,'Fabian','Purdy','jennie66@example.org','727-459-9996',2,'2016-12-15 10:45:40','2020-05-10 17:02:31'),(12,'Estella','Bauch','kuhic.amie@example.com','+63(6)7230375731',2,'2014-11-13 03:04:14','2020-05-10 17:02:31'),(13,'Elza','Wisozk','hosinski@example.net','+50(3)1024221197',3,'2014-08-17 18:20:26','2020-05-10 17:02:31'),(14,'Amir','Jaskolski','lucas06@example.com','828.934.3038x09924',1,'2016-03-27 22:43:11','2017-01-14 03:01:30'),(15,'Humberto','Runolfsson','ghamill@example.net','053.085.0475x296',3,'2019-04-02 07:58:21','2020-05-10 17:02:31'),(16,'Leland','Nikolaus','kacey21@example.org','764-977-6522',2,'2011-01-16 00:35:46','2020-05-10 17:02:31'),(17,'Lon','Aufderhar','sunny31@example.com','1-007-609-4107',2,'2017-08-27 04:50:27','2020-05-10 17:02:31'),(18,'Jessy','Rutherford','mosciski.kassandra@example.net','295.606.2537x7434',1,'2010-11-17 04:49:04','2019-12-27 03:45:43'),(19,'Marian','Franecki','trevion49@example.net','1-924-464-7138x892',2,'2016-04-08 02:24:14','2020-05-10 17:02:31'),(20,'April','Wintheiser','janice30@example.org','+87(8)8221383853',3,'2011-11-01 02:00:56','2020-05-10 17:02:31'),(21,'Alexandre','Marquardt','hipolito54@example.com','990.585.4721x161',2,'2011-09-05 13:46:55','2020-05-10 17:02:31'),(22,'Alf','Larkin','wilburn00@example.com','232.904.3944x072',3,'2014-02-03 11:47:42','2020-05-10 17:02:31'),(23,'Shanie','Turcotte','pete60@example.org','290-592-6056',2,'2020-03-03 04:07:55','2020-05-10 17:02:31'),(24,'Amani','Hackett','stokes.julianne@example.com','+17(5)5787026782',1,'2014-08-06 09:47:56','2020-05-10 16:57:22'),(25,'Stacey','Zulauf','lucienne.reilly@example.org','1-507-011-7630x938',3,'2018-05-13 15:37:46','2020-05-10 17:02:31'),(26,'Geovanny','Beahan','bmoen@example.org','133-103-9171x1515',2,'2014-03-09 12:14:42','2020-05-10 17:02:31'),(27,'Adrian','Baumbach','arthur26@example.net','922.255.0381x482',3,'2013-09-16 12:33:22','2020-05-10 17:02:31'),(28,'Antwon','Jaskolski','marcelo.shields@example.org','982.245.0983x0151',1,'2018-01-21 16:07:31','2020-05-10 16:57:22'),(29,'Ophelia','Stehr','ccollier@example.net','02575889620',2,'2019-06-15 11:20:58','2020-05-10 17:02:31'),(30,'Gladyce','Kub','alva.gibson@example.net','941.791.3109x8731',3,'2020-04-11 11:11:06','2020-05-10 17:02:31'),(31,'Verdie','Heathcote','royce30@example.com','1-753-817-2296x563',2,'2016-10-28 13:23:36','2020-05-10 17:02:31'),(32,'Reva','Beahan','elza.wunsch@example.net','1-905-126-6543x90854',1,'2014-09-18 05:41:52','2020-05-10 16:57:22'),(33,'Amie','Hermiston','veda97@example.org','(527)513-6389',3,'2012-04-30 22:23:25','2020-05-10 17:02:31'),(34,'Della','Lindgren','sid83@example.org','(780)066-8889',1,'2011-04-29 00:24:18','2018-10-09 09:25:07'),(35,'Guiseppe','Kovacek','mcglynn.kathlyn@example.org','(008)171-1859x27703',3,'2015-06-29 01:37:39','2020-05-10 17:02:31'),(36,'Zaria','Cormier','demetrius73@example.net','528-824-4954x12027',1,'2019-02-01 10:35:04','2020-05-10 16:57:22'),(37,'Donnell','Collier','orn.mark@example.net','1-801-411-7225x4579',1,'2010-06-10 00:42:11','2016-11-14 18:46:34'),(38,'Josh','Kuphal','dgutmann@example.com','06367855289',1,'2016-01-25 01:48:47','2017-09-12 01:41:15'),(39,'Monty','Rolfson','kari.cruickshank@example.org','1-351-146-4170x12557',2,'2017-08-26 08:08:35','2020-05-10 17:02:31'),(40,'Hollis','Kuhlman','moore.janelle@example.net','(878)595-1805',2,'2019-04-21 13:47:44','2020-05-10 17:02:31'),(41,'Oswaldo','Thiel','aromaguera@example.net','06339230468',3,'2010-08-07 21:09:02','2020-05-10 17:02:31'),(42,'Mercedes','Romaguera','tony03@example.com','(715)994-8359x792',3,'2013-02-14 01:02:15','2020-05-10 17:02:31'),(43,'Karen','Orn','rachael61@example.net','(006)301-4013x66996',2,'2015-12-26 19:31:24','2020-05-10 17:02:31'),(44,'Manuela','Wintheiser','walton12@example.net','1-999-123-2980x5535',1,'2015-05-24 23:02:03','2017-07-23 22:19:34'),(45,'Hipolito','Bailey','elissa53@example.net','1-711-416-6980',3,'2016-03-19 23:11:00','2020-05-10 17:02:31'),(46,'Gia','Ruecker','elsie.quitzon@example.com','037.907.4183x5385',3,'2019-10-11 16:21:24','2020-05-10 17:02:31'),(47,'Coby','Oberbrunner','padberg.nathanial@example.com','316-198-5733x73203',3,'2013-02-03 15:57:32','2020-05-10 17:02:31'),(48,'Josephine','Mosciski','ygislason@example.com','+57(0)2882543016',2,'2020-04-03 19:05:26','2020-05-10 17:02:31'),(49,'Sabina','Christiansen','erika.schulist@example.org','+37(4)1829465885',2,'2012-09-29 11:14:48','2020-05-10 17:02:31'),(50,'Rebecca','Trantow','metz.elta@example.org','774-368-0915x5395',1,'2011-05-06 18:41:56','2012-04-20 11:44:56'),(51,'Dayna','Kerluke','erling17@example.org','07621574840',3,'2020-04-08 17:46:50','2020-05-10 17:02:31'),(52,'Madison','Kertzmann','weissnat.finn@example.net','+43(5)5285225463',2,'2018-04-30 08:34:58','2020-05-10 17:02:31'),(53,'Rosie','Bauch','arlie31@example.com','415.658.0571x8514',1,'2010-12-11 11:55:03','2018-09-01 19:30:43'),(54,'Tyler','Rice','archibald.quigley@example.net','(941)819-8446x396',2,'2012-04-19 12:15:48','2020-05-10 17:02:31'),(55,'Angelina','Batz','roxane.hessel@example.com','411-265-8836x925',2,'2017-02-09 16:06:44','2020-05-10 17:02:31'),(56,'Erich','Crona','elyssa.keeling@example.net','(852)573-7350x026',2,'2015-07-10 12:16:10','2020-05-10 17:02:31'),(57,'Germaine','Dicki','qgraham@example.org','1-573-120-3761x8479',3,'2012-05-07 23:24:13','2020-05-10 17:02:31'),(58,'Earl','Walker','mccullough.cortez@example.net','215-186-1022',3,'2012-04-04 06:21:52','2020-05-10 17:02:31'),(59,'Tevin','Johnson','rupert18@example.com','1-462-733-2754',3,'2013-05-31 22:59:10','2020-05-10 17:02:31'),(60,'Monty','Willms','bridie.blanda@example.net','748.584.4212x6190',1,'2019-06-06 16:41:30','2020-05-10 16:57:22'),(61,'Granville','Wolf','tjacobi@example.org','757-708-2664x21767',2,'2011-09-01 18:53:39','2020-05-10 17:02:31'),(62,'Halle','Walsh','vrunte@example.com','947.697.5370x030',3,'2014-07-21 01:24:30','2020-05-10 17:02:31'),(63,'Mallie','Hodkiewicz','maynard20@example.net','422-693-7044x72111',2,'2016-04-01 08:53:33','2020-05-10 17:02:31'),(64,'Verla','Johns','donny18@example.org','+18(6)7090669619',3,'2016-04-05 14:45:25','2020-05-10 17:02:31'),(65,'Johnathan','Lind','robel.gilda@example.net','(278)694-2861',1,'2012-12-23 09:00:39','2018-11-21 02:40:00'),(66,'Aaron','Keebler','zo\'conner@example.org','576.545.4397',3,'2010-08-26 22:21:11','2020-05-10 17:02:31'),(67,'Darrell','Senger','andre29@example.net','041.728.3313x38388',1,'2014-08-20 06:08:16','2020-05-10 16:57:22'),(68,'Marion','Nader','langosh.nikolas@example.org','1-490-636-1715',3,'2014-09-21 03:44:58','2020-05-10 17:02:31'),(69,'Beulah','Daugherty','cydney96@example.org','1-467-751-4332x32589',3,'2015-05-13 20:31:48','2020-05-10 17:02:31'),(70,'Candice','Beier','burdette.wisozk@example.net','(326)339-0597',2,'2014-06-17 18:36:54','2020-05-10 17:02:31'),(71,'Merl','Ledner','isabella59@example.net','027.055.2511x804',3,'2016-07-08 22:05:55','2020-05-10 17:02:31'),(72,'Marcelino','Turcotte','enoch18@example.net','092-555-4368x1713',1,'2014-08-22 09:51:20','2016-11-04 13:50:20'),(73,'Lane','Mante','dshanahan@example.com','01761767236',3,'2014-11-11 19:00:20','2020-05-10 17:02:31'),(74,'Clement','Mitchell','cbayer@example.com','(683)567-3301x507',1,'2019-01-28 22:21:01','2020-05-10 16:57:22'),(75,'Justyn','Haley','gabrielle44@example.com','1-327-383-8522x6121',3,'2017-10-03 18:05:34','2020-05-10 17:02:31'),(76,'Katlynn','Kihn','camille.schulist@example.org','(305)950-8587',3,'2017-06-26 13:39:16','2020-05-10 17:02:31'),(77,'Devonte','Okuneva','uhansen@example.com','(724)532-1506x430',1,'2017-11-02 04:44:30','2020-03-08 18:23:41'),(78,'Emmalee','Frami','willms.brenna@example.org','995-457-6485',2,'2018-06-21 04:09:45','2020-05-10 17:02:31'),(79,'Arnoldo','Nienow','elwyn22@example.org','464.777.0033',2,'2013-01-08 20:32:19','2020-05-10 17:02:31'),(80,'Eliseo','Brekke','cbradtke@example.com','323.726.5121x8498',1,'2017-09-26 01:42:16','2020-05-10 16:57:22'),(81,'D\'angelo','Wyman','trantow.zoey@example.com','1-632-709-7485x20360',3,'2014-07-21 02:58:22','2020-05-10 17:02:31'),(82,'Deja','Schneider','guillermo50@example.com','1-087-283-0740x3824',2,'2019-04-13 12:24:23','2020-05-10 17:02:31'),(83,'Jaquan','Wyman','shayne37@example.com','401-826-5241x952',1,'2016-08-12 03:17:51','2020-05-10 16:57:22'),(84,'Enola','Friesen','kilback.michele@example.net','(108)122-1849',3,'2011-09-30 00:31:51','2020-05-10 17:02:31'),(85,'Wellington','Rath','psauer@example.com','1-119-799-5972',2,'2010-10-18 16:14:43','2020-05-10 17:02:31'),(86,'Fred','Schoen','carson.yundt@example.net','685-244-7798',2,'2012-08-05 04:36:23','2020-05-10 17:02:31'),(87,'Jensen','Raynor','hartmann.amos@example.com','(652)072-1849x3741',3,'2010-10-20 16:39:57','2020-05-10 17:02:31'),(88,'Aylin','Kozey','pasquale34@example.org','332-545-6945x87905',2,'2013-01-25 11:04:32','2020-05-10 17:02:31'),(89,'Peter','Keeling','nmitchell@example.net','938.896.6051x998',3,'2017-02-01 03:22:12','2020-05-10 17:02:31'),(90,'Jaquan','Wilkinson','kali.kemmer@example.net','716-945-5968x832',1,'2016-08-17 20:06:27','2020-05-10 16:57:22'),(91,'Ashtyn','Huel','graciela77@example.com','(619)335-6074x9672',3,'2015-11-28 14:02:11','2020-05-10 17:02:31'),(92,'Estefania','Gutkowski','rturcotte@example.net','(456)734-8884',1,'2014-12-02 14:26:19','2020-05-10 16:57:22'),(93,'Margarett','Bauch','krajcik.verda@example.com','02107995918',3,'2018-05-11 23:27:31','2020-05-10 17:02:31'),(94,'Reba','Ortiz','schiller.emmy@example.org','893-038-8504',3,'2010-10-08 16:16:11','2020-05-10 17:02:31'),(95,'Joanie','Rolfson','mcummings@example.org','1-860-048-8157x72729',2,'2018-09-04 05:21:52','2020-05-10 17:02:31'),(96,'Roberta','Roberts','bartell.ara@example.com','698-551-6977',1,'2019-06-02 08:49:47','2020-05-10 16:57:22'),(97,'Zack','Zieme','zjaskolski@example.net','295.364.8593x02746',2,'2017-09-18 03:53:28','2020-05-10 17:02:31'),(98,'Natalie','Lowe','hrodriguez@example.com','(388)127-2398x30481',2,'2019-09-18 00:04:14','2020-05-10 17:02:31'),(99,'Jarrod','Schiller','medhurst.laura@example.com','522.875.8699',3,'2014-12-09 03:09:27','2020-05-10 17:02:31'),(100,'Russ','Kassulke','hayley.kreiger@example.com','970-029-0211',2,'2018-04-13 17:51:29','2020-05-10 17:02:31');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-11 20:28:04
