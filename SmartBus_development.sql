-- MySQL dump 10.13  Distrib 5.5.47, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: SmartBus_development
-- ------------------------------------------------------
-- Server version	5.5.47-0ubuntu0.14.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_confirmation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_digest` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` VALUES (3,'huangzhe1218','huangzhe1218@163.com',NULL,NULL,'$2a$10$PsS6ZzEXazuYuByBRmep9.SusTvSTS5q1.tQh/mtgVYklGBSYHlZS','2016-04-15 10:41:09','2016-04-15 10:41:09');
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bus_drivers`
--

DROP TABLE IF EXISTS `bus_drivers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bus_drivers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lat_now` float DEFAULT '40.1345',
  `long_now` float DEFAULT '116.432',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `bus_number_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bus_drivers`
--

LOCK TABLES `bus_drivers` WRITE;
/*!40000 ALTER TABLE `bus_drivers` DISABLE KEYS */;
INSERT INTO `bus_drivers` VALUES (2,'huangzhe',40.1345,116.432,'2016-04-15 13:03:54','2016-04-16 03:17:47',1),(4,'壮壮',40.1345,116.432,'2016-04-15 14:07:13','2016-04-16 03:34:13',2),(5,'James',50,50,'2016-04-16 03:03:41','2016-04-16 17:24:12',3),(6,'Kobe',40.1345,116.432,'2016-04-16 03:03:48','2016-04-16 03:03:48',NULL),(7,'Terry',40.1345,116.432,'2016-04-16 03:04:19','2016-04-16 03:04:19',NULL),(8,'Ozil',40.1345,116.432,'2016-04-16 03:04:30','2016-04-16 03:04:30',NULL),(9,'Giroud',40.1345,116.432,'2016-04-16 03:04:37','2016-04-16 03:04:37',NULL);
/*!40000 ALTER TABLE `bus_drivers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bus_numbers`
--

DROP TABLE IF EXISTS `bus_numbers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bus_numbers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bus_route_id` int(11) DEFAULT NULL,
  `start_time` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `capacity` int(11) DEFAULT '60',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bus_numbers`
--

LOCK TABLES `bus_numbers` WRITE;
/*!40000 ALTER TABLE `bus_numbers` DISABLE KEYS */;
INSERT INTO `bus_numbers` VALUES (1,'线路七第一班',1,17,'2016-04-16 03:15:50','2016-04-16 03:15:50',60),(2,'线路七第二班',1,18,'2016-04-16 03:30:38','2016-04-16 03:30:38',60),(3,'线路五第一班',2,17,'2016-04-16 03:31:56','2016-04-16 03:31:56',60);
/*!40000 ALTER TABLE `bus_numbers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bus_routes`
--

DROP TABLE IF EXISTS `bus_routes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bus_routes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `sites` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bus_routes`
--

LOCK TABLES `bus_routes` WRITE;
/*!40000 ALTER TABLE `bus_routes` DISABLE KEYS */;
INSERT INTO `bus_routes` VALUES (1,'线路七--芍药居到园区','2016-04-16 00:37:21','2016-04-16 02:30:41','---\n- 4\n- 5\n- 3\n'),(2,'线路五--天通苑北到园区','2016-04-16 00:38:55','2016-04-16 02:31:43','---\n- 6\n- 8\n- 3\n');
/*!40000 ALTER TABLE `bus_routes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `metatrashes`
--

DROP TABLE IF EXISTS `metatrashes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `metatrashes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `main_battery` int(11) DEFAULT '50',
  `back_battery` int(11) DEFAULT '90',
  `forword_current` int(11) DEFAULT '2',
  `back_current` int(11) DEFAULT '2',
  `temperature` int(11) DEFAULT '35',
  `sensor70_status` tinyint(1) DEFAULT '1',
  `sensor90_status` tinyint(1) DEFAULT '0',
  `up_motor_status` tinyint(1) DEFAULT '1',
  `down_motor_status` tinyint(1) DEFAULT '1',
  `door_sensor_status` tinyint(1) DEFAULT '1',
  `voice1_sensor_status` tinyint(1) DEFAULT '1',
  `voice2_sensor_status` tinyint(1) DEFAULT '1',
  `back_box_stauts` tinyint(1) DEFAULT '1',
  `main_back_switch` tinyint(1) DEFAULT '1',
  `main_motor_stauts` tinyint(1) DEFAULT '1',
  `electromagnet_stauts` tinyint(1) DEFAULT '1',
  `voice_module_status` tinyint(1) DEFAULT '1',
  `lightbox_module_status` tinyint(1) DEFAULT '1',
  `led_module_status` tinyint(1) DEFAULT '1',
  `error_name` int(11) DEFAULT '0',
  `latitude` float DEFAULT '29.391',
  `longitude` float DEFAULT '120.825',
  `cdma_rssi` int(11) DEFAULT '20',
  `lightbox_start1_at` int(11) DEFAULT '900',
  `lightbox_stop1_at` int(11) DEFAULT '1000',
  `lightbox_start2_at` int(11) DEFAULT '1100',
  `lightbox_stop2_at` int(11) DEFAULT '1200',
  `led_start1_at` int(11) DEFAULT '1300',
  `led_stop1_at` int(11) DEFAULT '1400',
  `led_start2_at` int(11) DEFAULT '1500',
  `led_stop2_at` int(11) DEFAULT '1600',
  `control_start1_at` varchar(255) COLLATE utf8_unicode_ci DEFAULT '1100',
  `control_stop1_at` varchar(255) COLLATE utf8_unicode_ci DEFAULT '1200',
  `control_start2_at` varchar(255) COLLATE utf8_unicode_ci DEFAULT '1600',
  `control_stop2_at` varchar(255) COLLATE utf8_unicode_ci DEFAULT '1700',
  `main_lowest_vol` int(11) DEFAULT '2',
  `back_lowest_vol` int(11) DEFAULT '2',
  `apnnum` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phonenum` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `led_display_string` varchar(255) COLLATE utf8_unicode_ci DEFAULT '欢迎使用智能垃圾桶',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metatrashes`
--

LOCK TABLES `metatrashes` WRITE;
/*!40000 ALTER TABLE `metatrashes` DISABLE KEYS */;
/*!40000 ALTER TABLE `metatrashes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `passengers`
--

DROP TABLE IF EXISTS `passengers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `passengers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_confirmation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_digest` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `bus_number_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `passengers`
--

LOCK TABLES `passengers` WRITE;
/*!40000 ALTER TABLE `passengers` DISABLE KEYS */;
INSERT INTO `passengers` VALUES (3,'ExampleUser',NULL,NULL,'$2a$10$Q/fxq/XjiHuv2zIEFXKKlepACQmtrZ2W9JhRNb0XMPV58ZUYKNA7S','2016-04-16 05:37:56','2016-04-16 05:37:56',NULL),(4,'Lois Donnelly',NULL,NULL,'$2a$10$am0jJVAvQo629KwQ2OFiSOcmKZOwNpu0/NmVWFIv6zNhAqFTKjStW','2016-04-16 05:37:57','2016-04-16 05:37:57',NULL),(5,'Marcus Graham',NULL,NULL,'$2a$10$C8muIvGcSeWgSQ/RnWmgseRN1GXYuNZw2LJsf2CQ2H768eSA2Jg9y','2016-04-16 05:37:57','2016-04-16 05:37:57',NULL),(6,'Trenton Crist',NULL,NULL,'$2a$10$mOcjT85t.LdFoDyNa.HMKesM6UNK69LSC/wfBSTXw0gcX8x57Gpca','2016-04-16 05:37:57','2016-04-16 05:37:57',NULL),(7,'Berenice Erdman DDS',NULL,NULL,'$2a$10$5teGeWzQQBYCNrC7rKLm1uJ0kdWkasVWWJDXNtBtqjQduda2zdhXS','2016-04-16 05:37:57','2016-04-16 05:37:57',3),(8,'Beulah Boyer',NULL,NULL,'$2a$10$7.7qZ4WxQnQ0tOW/9W49AOyN6VtZJyGph4iILq0ekMkZxokSPbAlq','2016-04-16 05:37:57','2016-04-16 05:37:57',6),(9,'Dr. Albert Cruickshank',NULL,NULL,'$2a$10$.ZJSI1P8HPCjJ/tJjeb11OItfZFNJq.z7Li4m99QB4VJUxi0uTDTW','2016-04-16 05:37:57','2016-04-16 05:37:57',3),(10,'Mr. Aurore Rice',NULL,NULL,'$2a$10$7bkwUqgNSsK0AF2CsrTbYO9hcONbuhg/uxnd5OIhwCw3Dp1FVw44m','2016-04-16 05:37:57','2016-04-16 05:37:57',3),(11,'Maryam Stanton',NULL,NULL,'$2a$10$Dgg/RCrV6xT7e6qt4ADvv.vq8vCcxhg/lTN9I0WUra43Yy90ferr6','2016-04-16 05:37:57','2016-04-16 05:37:57',NULL),(12,'Jefferey Hermann',NULL,NULL,'$2a$10$7UKeRu62Yu.8OQXst5OzYubXB3D3qGJYouvS6Nv1uQ3CdaAo2tQa6','2016-04-16 05:37:57','2016-04-16 05:37:57',NULL),(13,'Dr. Hermann Baumbach',NULL,NULL,'$2a$10$Ta1ozIRY/ggGgTxL8OENtOia9WwETJIUvykGvVt4jyCG936EUmq6a','2016-04-16 05:37:58','2016-04-16 05:37:58',NULL),(14,'Jevon Klocko',NULL,NULL,'$2a$10$lWVzQHn3KbsFIzsQuguqtuSYcX3zgESmL.O9e76HR5cANtCr/XU9a','2016-04-16 05:37:58','2016-04-16 05:37:58',NULL),(15,'Sarina Kemmer',NULL,NULL,'$2a$10$WGZCMvGLTGIVfXeBOUd8GeVRbjVsNu1yykPKGZUk6maImpU9LAsJi','2016-04-16 05:37:58','2016-04-16 05:37:58',NULL),(16,'Adeline West',NULL,NULL,'$2a$10$semdtE01T.KSQ3RM0elDlufbM1QA91sLdeUPWSPmunXEwdyYEGDEC','2016-04-16 05:37:58','2016-04-16 05:37:58',NULL),(17,'Aileen Heathcote',NULL,NULL,'$2a$10$Y9a4lB/nPVXTZ3qF4SXi8egDL3JfFfGPaY8UNRYQr6JiAmFmhE1tq','2016-04-16 05:37:58','2016-04-16 05:37:58',NULL),(18,'Newton Von',NULL,NULL,'$2a$10$NqUM7XKNQoeos8cpxKRHE.jOFVB7JU1NMd/AimvDccTJck1AwgNt6','2016-04-16 05:37:58','2016-04-16 05:37:58',NULL),(19,'Tiana Stamm',NULL,NULL,'$2a$10$j6PMIcKBBwuoj/054Y7EROU5XK0cjr752pCa9eZ65J4AB0epmjfiK','2016-04-16 05:37:58','2016-04-16 05:37:58',NULL),(20,'Jaydon Koch',NULL,NULL,'$2a$10$aVK8KdU4hgL58TYLbq4pdeMZLHFUEiq0luT0j3l45gbMX2Kp3Qzpi','2016-04-16 05:37:58','2016-04-16 05:37:58',NULL),(21,'Rashad Gislason III',NULL,NULL,'$2a$10$COiVA2ldlqk5QLf2MnT5AePQDVLgl0Oef9JoOnQK1wrxH2OPK3KVW','2016-04-16 05:37:58','2016-04-16 05:37:58',NULL),(22,'Peter White',NULL,NULL,'$2a$10$vCE5uE.1fGJaO2T1alTE3uqIcStLO5qfDbFbqmPvv5JuqEHS9gRw.','2016-04-16 05:37:58','2016-04-16 05:37:58',NULL),(23,'Anahi Armstrong PhD',NULL,NULL,'$2a$10$hQ3TEPhGwVVIwisrV81wde1yjN.uZQoofKAqByIo9UHDgfyQNJu36','2016-04-16 05:37:58','2016-04-16 05:37:58',NULL),(24,'Mrs. Donna Beahan',NULL,NULL,'$2a$10$C3O0Se34Ih8SZGsUUgYVGe7eihu4xVmayFwd2FzvNO5KCjjjq4xTK','2016-04-16 05:37:59','2016-04-16 05:37:59',NULL),(25,'Mrs. Jay Crooks',NULL,NULL,'$2a$10$jxLoB21OzqRWXLSMTdN0nus..hgaCY63hp3a5aeAtQV1AE7j1iHvK','2016-04-16 05:37:59','2016-04-16 05:37:59',NULL),(26,'Lauriane Green',NULL,NULL,'$2a$10$.sMyui8ytIMo9WEPq2ALlu8n7jWDBy2pgIEOhYfjON8EDnlNCRPv2','2016-04-16 05:37:59','2016-04-16 05:37:59',NULL),(27,'Kyler Cronin',NULL,NULL,'$2a$10$0hKITQI2RuJRjC1HASUXqehZXo9HUSshDcptStlm2VPZWudIwpw8W','2016-04-16 05:37:59','2016-04-16 05:37:59',NULL),(28,'Theresia Oberbrunner MD',NULL,NULL,'$2a$10$FS3gooAldExNcjnXc5rwhOe8ehiCiwBhIzPnq2xIxl90nTXTW0FIe','2016-04-16 05:37:59','2016-04-16 05:37:59',NULL),(29,'Ronaldo Renner',NULL,NULL,'$2a$10$6EmgfEv1R1u13nusGi8pAOsFfls7KF7Ta6SQWpHzreP6NqySTDhvG','2016-04-16 05:37:59','2016-04-16 05:37:59',NULL),(30,'Jules Kris',NULL,NULL,'$2a$10$3G3PfNdAm6t87CGrAw8kiOyvYnlFyrrJNo/wPPtu.W.85CXH67s.W','2016-04-16 05:37:59','2016-04-16 05:37:59',NULL),(31,'Larissa Tremblay',NULL,NULL,'$2a$10$bKiSFeYfL2aaiCu0wrURx.dbL92dOWDcs1SBEqNnj8xG.5U/RME.u','2016-04-16 05:37:59','2016-04-16 05:37:59',NULL),(32,'Sienna Mills',NULL,NULL,'$2a$10$8j4HwH7RUJ0D8AUtgOKsEuIUmMz1aVV7gteO3hjZt2tloeRDilMCm','2016-04-16 05:37:59','2016-04-16 05:37:59',NULL),(33,'Sanford Kassulke',NULL,NULL,'$2a$10$C6w9PQw3yPEQVpt4pM7HUOgPo7gqYy/Qzm76FMdlD7EvNXzO.4pfu','2016-04-16 05:37:59','2016-04-16 05:37:59',NULL),(34,'Britney Windler',NULL,NULL,'$2a$10$tfPz/f724wI.aPaiLOzsJuS56bx0dQ10DADUaEob5NJVePfiOGMKe','2016-04-16 05:38:00','2016-04-16 05:38:00',NULL),(35,'Dimitri Lynch III',NULL,NULL,'$2a$10$ndYrekuH1t.Md/9qXRFuOuzqPek7TvjOCvEOXnGlNSU56e/DDRhJ2','2016-04-16 05:38:00','2016-04-16 05:38:00',NULL),(36,'Arvilla Dickinson',NULL,NULL,'$2a$10$5Hbsf6yO0PxDgZl4m4kAn.e7F.nu0U5jEZsbMD3vBZj.GEXJq52YW','2016-04-16 05:38:00','2016-04-16 05:38:00',NULL),(37,'Hubert Emard III',NULL,NULL,'$2a$10$UEa2yLgmQcxrYnZG0hV69OMmSrQuAOedClKZ21j5mb3HCOFcdzcOW','2016-04-16 05:38:00','2016-04-16 05:38:00',NULL),(38,'Mrs. Blair Fisher',NULL,NULL,'$2a$10$1F7qH.VX6N//1STPMgZWv.JRxsda9n1Xy0dhUR/Eyw1ly7ZZV77.i','2016-04-16 05:38:00','2016-04-16 05:38:00',NULL),(39,'Kane Ortiz Jr.',NULL,NULL,'$2a$10$zM2wQEVyslxTqXhoT2OKv.0KpUT4/Zv2hqQl9MuO7/rYXJZqCPPqu','2016-04-16 05:38:00','2016-04-16 05:38:00',NULL),(40,'Alek Brekke',NULL,NULL,'$2a$10$3DWcK190m3rJ5kLs9haot.R36tCZzjeIhPsT.oxEeJbGhQnRiRfxy','2016-04-16 05:38:00','2016-04-16 05:38:00',NULL),(41,'Clair Kuhlman',NULL,NULL,'$2a$10$eRFwTIqu5rEkLe96invMYe.hiqy.Pu7Bg4cT0OyyHVyVAPykjlPsu','2016-04-16 05:38:00','2016-04-16 05:38:00',NULL),(42,'Drew Terry',NULL,NULL,'$2a$10$zzRXC3hAnZ1yRrxThadNHuYeVyDU1EKULQO5./jZPu2irJhLQq7e6','2016-04-16 05:38:00','2016-04-16 05:38:00',NULL),(43,'Eric Raynor II',NULL,NULL,'$2a$10$pP8XwfMu8lfinTulrc7PKuUs.SUruLVZlCgcRJl1POsRHc4Yop3Ve','2016-04-16 05:38:00','2016-04-16 05:38:00',NULL),(44,'Earlene Walter',NULL,NULL,'$2a$10$cNxplNUvrDOG94hvGlKT7eAngHi64DtKG1J26Q1N56x4tj4qysgrW','2016-04-16 05:38:01','2016-04-16 05:38:01',NULL),(45,'Jamison Schinner',NULL,NULL,'$2a$10$bWYANCp.0KrrNrUOUKraU.2yCCek.AddhZcFbPpB1u4ANTHioxTkS','2016-04-16 05:38:01','2016-04-16 05:38:01',NULL),(46,'Dillan Smith',NULL,NULL,'$2a$10$0isuepiRd7nHwpopCtnA6.UV3PZ/.kyIllezT5puPDz1TYUQQzqOK','2016-04-16 05:38:01','2016-04-16 05:38:01',NULL),(47,'Opal Greenfelder II',NULL,NULL,'$2a$10$Aurbov84FO3KIW9bQhzvwOgRmef2YX8T1nElh93/JlGJoRndz869m','2016-04-16 05:38:01','2016-04-16 05:38:01',NULL),(48,'Kevin Wolff',NULL,NULL,'$2a$10$f4nQ.cHfF8avw45m3pPMtOdmMpAJ9tbzzihKBoB2sBdNjJxomUAYa','2016-04-16 05:38:01','2016-04-16 05:38:01',NULL),(49,'Clare Schoen V',NULL,NULL,'$2a$10$tLQZuNnXGSwsjFYNgC9aNOBHlui0j8Z/BqwVgQzz8P.WuOre4CjHe','2016-04-16 05:38:01','2016-04-16 05:38:01',NULL),(50,'Ms. Schuyler Hilll',NULL,NULL,'$2a$10$GotMEVu91Neh1wRDz0VLZ.6iFjmlcbqZ4sw3pOy.dvyU0.C97V.GO','2016-04-16 05:38:01','2016-04-16 05:38:01',NULL),(51,'Electa Herzog',NULL,NULL,'$2a$10$41SgN/RC98nm4CbKsTkSEO/v8ec8sHaz/INaAirVG01vvN.mC/4s6','2016-04-16 05:38:01','2016-04-16 05:38:01',NULL),(52,'Haylie Littel III',NULL,NULL,'$2a$10$p3DzS7meVhN6P2K3Y7R3JOGYYiUfadP1XifYxZRS12UgyNea3Af4u','2016-04-16 05:38:01','2016-04-16 05:38:01',NULL),(53,'Mr. Hunter Krajcik',NULL,NULL,'$2a$10$V7zALI3vqY/9Dx8XaVKrGeVjzKrlHi.GqA.dyeHtYhaIu.XXHaMZG','2016-04-16 05:38:01','2016-04-16 05:38:01',NULL),(54,'Manuel Boyer',NULL,NULL,'$2a$10$ovzaOuNMxgjKY8Fbw/ibDeiw8NAMjlr45XEREGWXPSVuKwGHqRBu.','2016-04-16 05:38:01','2016-04-16 05:38:01',NULL),(55,'Lamont Reilly Jr.',NULL,NULL,'$2a$10$4q1Ip17eOkdn/QPKedThle03V25DcLzWMHz73dZRIKKoy53pyPVf6','2016-04-16 05:38:02','2016-04-16 05:38:02',NULL),(56,'Buford Kirlin',NULL,NULL,'$2a$10$fdEMKfA4DrJDJUP0i7H0S.QymK154PGrJmC72m53wUf3/K/GnqlFG','2016-04-16 05:38:02','2016-04-16 05:38:02',NULL),(57,'Michael Grimes II',NULL,NULL,'$2a$10$sIXSO8nZfbnFxTvABV/JUeh8gx35KgPZFvbRsORTo8xKRoU8ySBNS','2016-04-16 05:38:02','2016-04-16 05:38:02',NULL),(58,'Justina Ortiz',NULL,NULL,'$2a$10$KHWCBTejDG3Q8m9Jznx03eFgWRlnthycLtNGM/ylzquh36eBbprFG','2016-04-16 05:38:02','2016-04-16 05:38:02',NULL),(59,'Dameon Steuber III',NULL,NULL,'$2a$10$QlLLw2yN6Q4IMMQOiBPqqO/v9d12xeqtHA1oRB53l9NQWe.N9zRCq','2016-04-16 05:38:02','2016-04-16 05:38:02',NULL),(60,'Hoyt Kunde',NULL,NULL,'$2a$10$Vo9B7jbRbBNGl811UBrNsOZDypBsDvaUcgVu9RkfOHhuHU0KOk57C','2016-04-16 05:38:02','2016-04-16 05:38:02',NULL),(61,'Mr. Justen Toy',NULL,NULL,'$2a$10$QBf.bnzaj5kBej0BXsOvRebu8RHM5ww3ZooVEYWXIOWebp5.8c1WG','2016-04-16 05:38:02','2016-04-16 05:38:02',NULL),(62,'Mrs. Elwin Boehm',NULL,NULL,'$2a$10$AsKmNAvBrVZrecsv02sDO.3/vP6rPuoqem23xV7VJ1GjoLA40TDKS','2016-04-16 05:38:02','2016-04-16 05:38:02',NULL),(63,'Bart Conroy',NULL,NULL,'$2a$10$oLIGZSw2A/rmG3ZK/R21c.PBGXuFo5Q1aW8khj4xDICIkKhFtoAde','2016-04-16 05:38:02','2016-04-16 05:38:02',NULL),(64,'Kavon Kohler',NULL,NULL,'$2a$10$YK8eGiKZoAMckV9wtFmeAeb5CdF/YEZUtF9tLTQIq0RV8qkajbnvu','2016-04-16 05:38:02','2016-04-16 06:30:37',NULL),(65,'Abbey Grimes',NULL,NULL,'$2a$10$9J84sGRilzfvjcVM262y8urD4qCwF4IPfjClOfJemBaIpiB3o7b/i','2016-04-16 05:38:03','2016-04-16 05:38:03',NULL),(66,'Mrs. Junius Langworth',NULL,NULL,'$2a$10$.YD9ZpUW4ch5ivjztGQz4OUlMjZVrDbrocJwnI2XROQGPE3BT1ZGm','2016-04-16 05:38:03','2016-04-16 05:38:03',NULL),(67,'Murray Connelly',NULL,NULL,'$2a$10$PM2INXBftE6itTRBx4xgXOD73rqODfxhgfIzUgaleqPG2ef6s.zP6','2016-04-16 05:38:03','2016-04-16 05:38:03',NULL),(68,'Paula Bosco',NULL,NULL,'$2a$10$EZRdBmyyzj9kfu5IahKGnekCBfQgnqiupYQUTzyuIdOBwm5QyOLyi','2016-04-16 05:38:03','2016-04-16 05:38:03',NULL),(69,'Perry Kulas',NULL,NULL,'$2a$10$L6pVQc42fKWQ8NY2IWcN5u4BIxN60iibpc0C/RCUyEllDRnltciTi','2016-04-16 05:38:03','2016-04-16 05:38:03',NULL),(70,'Eddie Armstrong',NULL,NULL,'$2a$10$tbo9CRDnlqDvzyL5TaFT/u7266ypWi4C/P3Nx9aAabqXrTjhBqIgO','2016-04-16 05:38:03','2016-04-16 05:38:03',NULL),(71,'Darrin Cartwright',NULL,NULL,'$2a$10$.0RsPU8i5q1AJ6e9JC5Yre7HtQWtK1.lyyUP6JTLc0atIkvv1sBEi','2016-04-16 05:38:03','2016-04-16 05:38:03',NULL),(72,'Dariana Terry',NULL,NULL,'$2a$10$MZj6nRGugg7sXC6.1c3fpuICdipNIZVkmsIYIeOsLHj928NocZDjK','2016-04-16 05:38:03','2016-04-16 05:38:03',NULL),(73,'Camden Schroeder',NULL,NULL,'$2a$10$dLGkQIF8PNnxA2TDkgtzlukN4wuL6z3Ejd3iNEgy7OYig1Xr.T1e.','2016-04-16 05:38:03','2016-04-16 05:38:03',NULL),(74,'Lewis Rohan',NULL,NULL,'$2a$10$QAPSK10u4GYdYdVe2AWA2eZcAMfRJ2ufQruzZQY1EKja7jM/oDYGi','2016-04-16 05:38:03','2016-04-16 05:38:03',NULL),(75,'Donnie Lockman Sr.',NULL,NULL,'$2a$10$xzg5WAxaAvTyNx2XYPbuse1D.xMuQ0z7sQBT0E/hET6B8u/Ji3GOi','2016-04-16 05:38:04','2016-04-16 05:38:04',NULL),(76,'Johan Raynor',NULL,NULL,'$2a$10$sLFhOO2MRjlDLlVMO7Jvi.n13Ap5PEk.fuaf1whYBAuC6ck/n2/q6','2016-04-16 05:38:04','2016-04-16 05:38:04',NULL),(77,'Rudolph Herzog DVM',NULL,NULL,'$2a$10$DkP4TadncimBeVjB4qLtVumFEhJt5ksHc60rnUoi5T9AScKlL.VqW','2016-04-16 05:38:04','2016-04-16 05:38:04',NULL),(78,'Carlie D\'Amore',NULL,NULL,'$2a$10$CuBTMP52ettHYqUHbJxGL.u0AVAEqhl2e7JbLKoYFhjvQ8Jum87Zy','2016-04-16 05:38:04','2016-04-16 05:38:04',NULL),(79,'Rowan Jacobson',NULL,NULL,'$2a$10$PtY1DGaj7pfJRHFRo0wtc.t0HOrGQ1VfOGCA3H2HJqdG3N1CJljom','2016-04-16 05:38:04','2016-04-16 05:38:04',NULL),(80,'Elouise Graham',NULL,NULL,'$2a$10$4qK6yCsKtg.1p5UDh3NVIO7Q58/pTf6Kqtk7tZjU4sUhBJ1KDJeXW','2016-04-16 05:38:04','2016-04-16 05:38:04',NULL),(81,'Shanny Sanford',NULL,NULL,'$2a$10$SDqOUeb6anAscIEyGXRapu9M34BFcs/NW2ye2ruLo/Mj5lFmH.TF2','2016-04-16 05:38:04','2016-04-16 05:38:04',NULL),(82,'Mr. Sarah McKenzie',NULL,NULL,'$2a$10$MlJq3UrVogjlh8RkYkVLeOiclys95jBksf/GNQe0MDpTtRWXMS./S','2016-04-16 05:38:04','2016-04-16 05:38:04',NULL),(83,'Vivien Kunde',NULL,NULL,'$2a$10$dJt5dfk9wwI.Tv1aE3vAcugdm7Waj/47Zrrn6WBiGjkbgJlmLHqp2','2016-04-16 05:38:04','2016-04-16 05:38:04',NULL),(84,'Theresia Nikolaus',NULL,NULL,'$2a$10$OsMeSfO65fDrPq98b6qzOO4Ij0jecty5c3GeddD47F5jfF6FNPAnW','2016-04-16 05:38:04','2016-04-16 05:38:04',NULL),(85,'Sebastian Stamm',NULL,NULL,'$2a$10$sZAW0VYR8ZMElD6k5G0zzOozbSeZlvMz0ANslWHTGQB4jlzAQFAdK','2016-04-16 05:38:04','2016-04-16 05:38:04',NULL),(86,'Audie Stracke',NULL,NULL,'$2a$10$GsmfYA6w9NQp46NQeky6M.PXHiychAP7fB1FEAaL6zxyxx8l8e.9S','2016-04-16 05:38:05','2016-04-16 05:38:05',NULL),(87,'Miss Ryley Homenick',NULL,NULL,'$2a$10$fClfOFjJi00cxIL.gTuui.0HTqEXoLbuJNOWl2zflcw.kYqHNqP52','2016-04-16 05:38:05','2016-04-16 05:38:05',NULL),(88,'Myrl Veum',NULL,NULL,'$2a$10$hz6Fw9vhEvfEIRzyS354EOlEYcU2/gW0w6FDHcDG2b6QKQkk8DZeu','2016-04-16 05:38:05','2016-04-16 05:38:05',NULL),(89,'Haleigh Kertzmann',NULL,NULL,'$2a$10$0eegdPZGgbnyDxy2D2ruuOHPhGodVKnUdsbWvGtLCzwhpNuNc99..','2016-04-16 05:38:05','2016-04-16 05:38:05',NULL),(90,'Eriberto Vandervort',NULL,NULL,'$2a$10$VBGFI3F5OdsM1S65fSWxPu2X3OwKRwRfgIL1GS8bElxKJApjPSmH6','2016-04-16 05:38:05','2016-04-16 05:38:05',NULL),(91,'Sabrina Kirlin',NULL,NULL,'$2a$10$pYeFznPzgVes7N72Y5mM/ut4Qdc.apueFHSwe.B7ocgRQLBrlLR4.','2016-04-16 05:38:05','2016-04-16 05:38:05',NULL),(92,'Mr. Shirley Kerluke',NULL,NULL,'$2a$10$gB5KojHEV9r93M3ScqJALeauBMvTYE62NSXWtKFl.88CTOq4SZPkq','2016-04-16 05:38:05','2016-04-16 05:38:05',NULL),(93,'Lynn Rempel IV',NULL,NULL,'$2a$10$qqo3Oba9tiq0DDlRRYrU1etKzrVZpKQA89FpCUHaxmZlH.S6IGSLe','2016-04-16 05:38:05','2016-04-16 05:38:05',NULL),(94,'Elna Schowalter',NULL,NULL,'$2a$10$Iky93Nv4jnKsIW3BfnOnmuWWwPCzotOX8ssnA63T2O/XE4p3jPkXW','2016-04-16 05:38:05','2016-04-16 05:38:05',NULL),(95,'Theresa Padberg',NULL,NULL,'$2a$10$VHgClgOlHiB6RuyL.B1hDOSh.riEJxSnlCQaUZ/Y1PfV3Rt8hUUPy','2016-04-16 05:38:05','2016-04-16 05:38:05',NULL),(96,'Violet Bosco II',NULL,NULL,'$2a$10$k6QjEOwVItKXdq1Y4MIRTOWbikgWWbxgQflVk8nRLVFHe4fbz/Euy','2016-04-16 05:38:06','2016-04-16 05:38:06',NULL),(97,'Ransom Harber',NULL,NULL,'$2a$10$F6pEC/TWbgXagHbX7CvPluhRHA2g4j39nUATeLDahpmhqbf4HVHwC','2016-04-16 05:38:06','2016-04-16 05:38:06',NULL),(98,'Jalen Bahringer',NULL,NULL,'$2a$10$aqwx7Ag5O.6jkZgS3HY9De.DdX7wf7d0n2XreBzHMyUdJDfQT1Gf6','2016-04-16 05:38:06','2016-04-16 05:38:06',NULL),(99,'Leann Harvey',NULL,NULL,'$2a$10$vHxn7L.3SH3I77wzih4zjOcVMJQpNXAlGTUAgFCLmINhg5fNAtmkC','2016-04-16 05:38:06','2016-04-16 05:38:06',NULL),(100,'Joannie DuBuque DDS',NULL,NULL,'$2a$10$IAm3Svl1plkWjp71baWE/utnpPerHL47zGngsZx5h8C.uhxoFXUVy','2016-04-16 05:38:06','2016-04-16 05:38:06',NULL),(101,'Dr. Eulah Lowe',NULL,NULL,'$2a$10$ZzoiqbwLbPBImhAnkpaTi.7qMxKYoCcA/XbaCtxH3jpziGKHppxJe','2016-04-16 05:38:06','2016-04-16 05:38:06',NULL),(102,'Dorian Boyle II',NULL,NULL,'$2a$10$Z6dXwt2kpi2yUiyo80cKceIOIZ85BsuX3bSpU3l8mZvlN5/C/HIYi','2016-04-16 05:38:06','2016-04-16 05:38:06',NULL),(103,'黄壮壮',NULL,NULL,'$2a$10$7cfNNY2meamHH8XY9uNTF.vKurSPjIBkf1/gp/Nwqpubu8lskFBum','2016-04-16 06:13:27','2016-04-16 06:13:27',NULL),(104,'陈富伟',NULL,NULL,'$2a$10$MWPXNaOGiweFIc9GoOKtgeJz6CVq6glE/HLG9412nVpSnwNpMzgn6','2016-04-16 09:29:59','2016-04-16 09:29:59',NULL);
/*!40000 ALTER TABLE `passengers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservations`
--

DROP TABLE IF EXISTS `reservations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reservations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `passenger_id` int(11) DEFAULT NULL,
  `bus_number_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `site_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservations`
--

LOCK TABLES `reservations` WRITE;
/*!40000 ALTER TABLE `reservations` DISABLE KEYS */;
INSERT INTO `reservations` VALUES (1,5,2,'2016-04-16 08:22:24','2016-04-16 08:22:24',NULL),(2,6,3,'2016-04-16 11:30:16','2016-04-16 11:30:16',6),(3,7,3,'2016-04-16 11:30:21','2016-04-16 11:30:21',8),(4,8,3,'2016-04-16 11:30:26','2016-04-16 11:30:26',6),(5,9,3,'2016-04-16 11:30:29','2016-04-16 11:30:29',6),(6,10,3,'2016-04-16 11:30:32','2016-04-16 11:30:32',6),(7,8,3,'2016-04-16 12:59:23','2016-04-16 12:59:23',6),(8,9,3,'2016-04-16 12:59:27','2016-04-16 12:59:27',6),(9,7,3,'2016-04-16 12:59:30','2016-04-16 12:59:30',8),(10,7,3,'2016-04-16 13:01:02','2016-04-16 13:01:02',8),(11,9,3,'2016-04-16 13:01:04','2016-04-16 13:01:04',6),(12,8,3,'2016-04-16 13:01:11','2016-04-16 13:01:11',6),(13,8,6,'2016-04-16 22:45:15','2016-04-16 22:45:15',3),(14,8,6,'2016-04-16 22:53:37','2016-04-16 22:53:37',3),(15,8,6,'2016-04-16 14:54:59','2016-04-16 14:54:59',3);
/*!40000 ALTER TABLE `reservations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20160411025202'),('20160411033028'),('20160411062442'),('20160412094113'),('20160415102324'),('20160415103428'),('20160415113445'),('20160415125043'),('20160415142139'),('20160415152449'),('20160415231721'),('20160415233742'),('20160415234406'),('20160416025050'),('20160416030144'),('20160416032208'),('20160416045851'),('20160416051524'),('20160416064657'),('20160416065231'),('20160416075216'),('20160416081008'),('20160416110224'),('20160416112549'),('20160416151143'),('20160416154933');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sites`
--

DROP TABLE IF EXISTS `sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `position` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `latitude` float DEFAULT '40.1345',
  `longitude` float DEFAULT '116.432',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `capacity` int(11) DEFAULT '20',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sites`
--

LOCK TABLES `sites` WRITE;
/*!40000 ALTER TABLE `sites` DISABLE KEYS */;
INSERT INTO `sites` VALUES (2,'北京市西直门内大街118号',39.946,116.374,'2016-04-15 15:46:45','2016-04-15 15:46:45',20),(3,'北京市昌平区未来科技城鲁疃西路',40.1162,116.475,'2016-04-15 16:05:55','2016-04-15 16:05:55',20),(4,'北京市芍药居地铁站',39.9899,116.442,'2016-04-16 00:07:15','2016-04-16 00:07:15',20),(5,'北京市望京西地铁站',40.0008,116.454,'2016-04-16 00:07:34','2016-04-16 00:07:34',20),(6,'北京市天通苑北地铁站',40.09,116.42,'2016-04-16 00:07:55','2016-04-16 00:07:55',20),(8,'中国北京市昌平区七北路北七家王府街1号',40.1111,116.421,'2016-04-16 00:13:39','2016-04-16 00:13:39',20);
/*!40000 ALTER TABLE `sites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `takes`
--

DROP TABLE IF EXISTS `takes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `takes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `passenger_id` int(11) DEFAULT NULL,
  `bus_number_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `site_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `takes`
--

LOCK TABLES `takes` WRITE;
/*!40000 ALTER TABLE `takes` DISABLE KEYS */;
INSERT INTO `takes` VALUES (1,5,2,'2016-04-16 08:03:53','2016-04-16 08:03:53',NULL),(2,5,2,'2016-04-16 08:05:43','2016-04-16 08:05:43',NULL),(3,5,2,'2016-04-16 08:19:26','2016-04-16 08:19:26',NULL),(5,6,3,'2016-04-16 11:19:26','2016-04-16 11:19:26',6),(6,7,3,'2016-04-16 11:20:30','2016-04-16 11:20:30',8),(7,8,3,'2016-04-16 11:20:35','2016-04-16 11:20:35',6),(8,9,3,'2016-04-16 11:20:39','2016-04-16 11:20:39',6),(9,10,3,'2016-04-16 11:20:42','2016-04-16 11:20:42',6),(10,10,3,'2016-04-16 11:29:45','2016-04-16 11:29:45',6),(11,10,3,'2016-04-16 12:43:47','2016-04-16 12:43:47',6),(12,10,3,'2016-04-16 12:53:16','2016-04-16 12:53:16',6),(13,10,3,'2016-04-16 12:59:14','2016-04-16 12:59:14',6);
/*!40000 ALTER TABLE `takes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trashes`
--

DROP TABLE IF EXISTS `trashes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trashes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phonenum` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `charge_time` int(11) DEFAULT NULL,
  `battery_remain` float DEFAULT NULL,
  `mechanics_status` tinyint(1) DEFAULT NULL,
  `equipment_status` tinyint(1) DEFAULT NULL,
  `compress_time` int(11) DEFAULT NULL,
  `overflow_remain` float DEFAULT NULL,
  `switch_time` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trashes`
--

LOCK TABLES `trashes` WRITE;
/*!40000 ALTER TABLE `trashes` DISABLE KEYS */;
/*!40000 ALTER TABLE `trashes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `password_digest` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Michael Hartl','mhartl@example.com','2016-04-15 10:31:39','2016-04-15 10:31:39','$2a$10$8Mnlspg1.4hhVESwtBAW0eXvQzU6GnlMV8anwKsnIJ11ZRy1LY4j2');
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

-- Dump completed on 2016-04-17  2:18:06
