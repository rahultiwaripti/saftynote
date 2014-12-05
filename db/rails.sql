-- MySQL dump 10.13  Distrib 5.5.38, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: rails_ramm
-- ------------------------------------------------------
-- Server version	5.5.38-0ubuntu0.14.04.1

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
-- Table structure for table `companies`
--

DROP TABLE IF EXISTS `companies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `companies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `business_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `provider_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `telephone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile_phone_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `get_notification` tinyint(1) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'pending',
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `county` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_method` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `picture_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `picture_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `picture_file_size` int(11) DEFAULT NULL,
  `picture_updated_at` datetime DEFAULT NULL,
  `featured` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `companies`
--

LOCK TABLES `companies` WRITE;
/*!40000 ALTER TABLE `companies` DISABLE KEYS */;
INSERT INTO `companies` VALUES (38,'Safety Notice Corporation','Covington Transport','Transport','(727)448-0000','(727)244-4591',1,58,'P.O. Box 14636 ','Clearwater',NULL,'FL','33766','Pitcher','Bruce','2014-10-08 13:34:32','2014-11-19 16:24:56','approved',NULL,'Pinellas','---\n- email\n','hcaf-logo.jpg','image/jpeg',37744,'2014-11-19 16:24:56',1),(39,'Help elders','Help Elders','Transport','(123)454-5665','(213)132-1321',0,59,'KaifaiQu','Dothan',NULL,'AL','14330','Yuan','Wang','2014-10-08 16:08:47','2014-11-12 12:16:25','approved',NULL,'Henry','---\n- email\n','images_(3).jpg','image/jpeg',9853,'2014-11-11 18:18:19',1),(40,'Med Transport Test','Med Transport ','Transport','111-222-3333','123-456-7890',0,61,'123 Sunshine Lane','New Port Richey',NULL,'FL','34654','Smith','Mike','2014-11-03 23:54:10','2014-11-12 12:17:00','pending',NULL,'Pasco','---\n- email\n','images_(2).jpg','image/jpeg',10064,'2014-11-11 18:19:12',1),(41,'Southern Loving Care','Southern Loving Care, Inc.','Home_Health','(386)330-0213','(386)330-0218',0,62,'106 SE White Ave Suite B2','Live Oak',NULL,'FL','32064','Skierski','Haley','2014-11-07 15:30:56','2014-11-07 16:20:36','approved',NULL,'Suwannee','---\n- email\n',NULL,NULL,NULL,NULL,0),(42,'DYNAMIKS HEALTH CARE.LLC','Dynamiks Heath Care','Home_Health','(727)289-7078','(954)696-9522',0,63,'6638 CENTRAL AVE','St. Petersburg',NULL,'FL','33707','CLIVE','MCINTOSH','2014-11-10 16:30:52','2014-11-12 12:13:16','approved',NULL,'Pinellas','---\n- email\n','images_(1).jpg','image/jpeg',9633,'2014-11-11 18:18:02',0),(43,'COMMUNITY THERAPY HOME CARE, INC','Community Therapy Home Care','Home_Health','7275468900','(727)644-0403',1,64,'5223 PARK BLVD SUITE 201','Pinellas Park',NULL,'FL','33781',' MACCCOLLOM','ELAINE','2014-11-11 20:33:11','2014-11-12 12:21:22','approved',NULL,'Pinellas','---\n- email\n- text\n',NULL,NULL,NULL,NULL,0),(44,'Scotts test','Scotts Test','Transport','9728590369','',0,66,'33 preston','Dallas',NULL,'CA','75074','preston','scott','2014-11-24 05:57:26','2014-12-02 19:00:01','approved',NULL,'','---\n- email\n',NULL,NULL,NULL,NULL,0),(45,'Largo Handicapped Transport','Largo Transport','Transport','6782328772','(678)232-8772',1,67,'215 2nd Ave SW','Largo',NULL,'FL','33770','chris','stephenson','2014-11-24 19:45:38','2014-11-24 19:45:38','pending',NULL,'fl','---\n- email\n',NULL,NULL,NULL,NULL,0),(46,'Georgia Wheelchair Transport Co.','Georgia Transport','Transport','(404)664-8218','(404)664-8218',1,68,'4530 Timber Path Court','Lilburn',NULL,'GA','30047','Sarah Lunceford','Sarah Lunceford','2014-11-24 20:04:33','2014-11-26 19:12:27','approved',NULL,'GA','---\n- email\n',NULL,NULL,NULL,NULL,1),(47,'Holiday Home Health, Inc.','Holiday Health','Home_Health','(727)940-6082','(727)244-3274',1,69,'5513 Riddle Road','Holiday',NULL,'FL','34690','Hathaway','Stephenie','2014-11-24 20:31:17','2014-11-26 19:13:39','approved',NULL,'Pasco','---\n- email\n',NULL,NULL,NULL,NULL,0),(48,'SCG FamilyCare, Inc.','The Community Network','Home_Health','(954)382-1932','(561)289-8559',1,71,'300 So Pine Island Rd. #3032','Plantation',NULL,'FL','33324','Glick','Ivan','2014-11-25 18:46:44','2014-11-25 18:56:39','approved',NULL,'Broward','---\n- email\n',NULL,NULL,NULL,NULL,0),(49,'ptiweb','IT','Transport','202552','9828829449',0,72,'Jaipur','jaipur',NULL,'AZ','302050','Dinesh','Dinesh','2014-11-25 19:42:54','2014-11-25 19:42:54','pending',NULL,'India','---\n- email\n',NULL,NULL,NULL,NULL,0),(51,'Abbey Home Health Care Inc','Abbey Home Health','Home_Health','(954)578-1770','(561)294-4445',1,74,'7800 W. Oakland Park Blvd E115','Sunrise',NULL,'FL','33351','Adeagbo','Larry','2014-11-25 20:51:08','2014-11-25 20:52:17','approved',NULL,'Broward','---\n- email\n',NULL,NULL,NULL,NULL,0);
/*!40000 ALTER TABLE `companies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `latitude` float DEFAULT NULL,
  `longitude` float DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `lovedone_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `service_status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_employees_on_company_id` (`company_id`) USING BTREE,
  KEY `index_employees_on_lovedone_id` (`lovedone_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (13,28.1482,-82.729,38,NULL,'John Doe','user1','pass1','2014-10-08 19:25:14','2014-12-02 23:48:34','DropOff'),(15,33.0458,-96.6539,38,NULL,'Scott','scottpjr','sydney95','2014-11-05 00:18:20','2014-12-03 12:19:20','PickUp'),(16,50,50,39,NULL,'Nahrae Jin','wipying','fofjrj123','2014-11-05 20:52:58','2014-11-27 02:38:02','DropOff'),(17,NULL,NULL,39,NULL,'Mingjai Jin','mingjai','fofjrj123','2014-11-05 20:53:24','2014-11-05 20:53:24',NULL),(18,27.9506,-82.4572,38,NULL,'Dan Nease','fair1','deal1','2014-11-17 00:43:39','2014-12-01 19:27:59',NULL),(19,NULL,NULL,42,NULL,'Clive McIntosh','clive714@aol.com','Dynamiks','2014-11-20 14:34:07','2014-11-20 14:34:07',NULL),(20,50,50,44,NULL,'Scott','scott-test','sydney95','2014-11-24 05:58:16','2014-11-30 08:17:20','Arrival'),(22,NULL,NULL,44,NULL,'Dinesh','tl1.ptiwebtech@gmail.com','tm123456','2014-11-25 16:38:45','2014-11-27 10:48:12','Departure'),(23,NULL,NULL,48,NULL,'john doe','john1','doe1','2014-11-25 19:00:38','2014-11-25 19:00:38',NULL),(24,NULL,NULL,51,NULL,'Larry Adeagbo','Abbeyflorida','Muse0710','2014-11-25 20:54:27','2014-11-25 20:54:27',NULL),(26,28.0683,-82.576,38,NULL,'Shelby Clark','shelby','tyson','2014-11-27 22:08:30','2014-12-03 01:08:51',NULL),(27,NULL,NULL,51,NULL,'Myrtha Abrhama','2abbe1','cq6cz','2014-11-28 18:34:40','2014-11-28 18:34:40',NULL),(28,NULL,NULL,51,NULL,'Dieula Accius','2abbe2','8mgwb','2014-11-28 18:41:45','2014-11-28 18:41:45',NULL),(29,NULL,NULL,51,NULL,'Guermanie Accius','2abbe3','6nty9','2014-11-28 18:43:03','2014-11-28 20:10:55',NULL),(30,NULL,NULL,51,NULL,'Abiodun Adeagbo','2abbe4','u0m3z','2014-11-28 18:50:38','2014-11-28 20:11:13',NULL),(31,NULL,NULL,51,NULL,'Lealia Adeagbo','2abbe5','x79e5','2014-11-28 18:51:50','2014-11-28 20:11:22',NULL),(32,NULL,NULL,51,NULL,'Frederica	Aldajuste','2abbe6','8kej9','2014-11-28 18:53:21','2014-11-28 18:53:21',NULL),(33,NULL,NULL,51,NULL,'Dorothy Anderson','2abbe7','1z6te','2014-11-28 18:54:40','2014-11-28 18:54:40',NULL),(34,NULL,NULL,51,NULL,'Sonia Anderson','2abbe8','o6j9o','2014-11-28 18:57:05','2014-11-28 18:57:05',NULL),(35,NULL,NULL,51,NULL,'Madeline	Andre','2abbe9','2abbe9','2014-11-28 18:58:26','2014-11-28 18:58:26',NULL),(36,NULL,NULL,51,NULL,'Naromie Apollon','2abbe10','gc5gm','2014-11-28 18:59:15','2014-11-28 18:59:15',NULL),(37,NULL,NULL,51,NULL,'Chesline Beaucejour','2abbe11','zy1og','2014-11-28 19:00:37','2014-11-28 19:00:37',NULL),(38,NULL,NULL,51,NULL,'Waline Belizaire','2abbe12','68pen','2014-11-28 19:01:14','2014-11-28 19:01:14',NULL),(39,NULL,NULL,51,NULL,'Velma Brissett','2abbe13','o6zgk','2014-11-28 19:01:58','2014-11-28 19:01:58',NULL),(40,NULL,NULL,51,NULL,'Shakeita Brunson','2abbe14','e9ujt','2014-11-28 19:02:57','2014-11-28 19:02:57',NULL),(41,NULL,NULL,51,NULL,'Michelle Butler','2abbe15','734m5','2014-11-28 19:03:55','2014-11-28 19:03:55',NULL),(42,NULL,NULL,51,NULL,'Camita Charite','2abbe16','86pkh','2014-11-28 19:04:53','2014-11-28 19:04:53',NULL),(43,NULL,NULL,51,NULL,'Yvrance Charles Jean','2abbe17','4fqc3','2014-11-28 19:06:06','2014-11-28 19:06:06',NULL),(44,NULL,NULL,51,NULL,'Sophia Coleman','2abbe18','6k0de','2014-11-28 19:07:15','2014-11-28 19:07:15',NULL),(45,NULL,NULL,51,NULL,'Diegot Compere','2abbe19','q5yvj','2014-11-28 19:08:40','2014-11-28 19:08:40',NULL),(46,NULL,NULL,51,NULL,'Lavanie Dagobert','2abbe20','33p9p','2014-11-28 19:09:24','2014-11-28 19:09:24',NULL),(47,NULL,NULL,51,NULL,'Antonine	Debrosse','2abbe21','i47ml','2014-11-28 19:10:02','2014-11-28 19:10:02',NULL),(48,NULL,NULL,51,NULL,'Betty Debrosse','2abbe22','u9i1c','2014-11-28 19:10:32','2014-11-28 19:10:32',NULL),(49,NULL,NULL,51,NULL,'Guerline Debrosse','2abbe23','p5g7q','2014-11-28 19:11:20','2014-11-28 19:11:20',NULL),(50,NULL,NULL,51,NULL,'Evelyn Destin','2abbe24','0ms8p','2014-11-28 19:12:42','2014-11-28 19:12:42',NULL),(51,NULL,NULL,51,NULL,'Myrlande	Donne','2abbe25','s1fn8','2014-11-28 19:13:36','2014-11-28 19:13:36',NULL),(52,NULL,NULL,51,NULL,'Carline Dorsainvil','2abbe26','46gbv','2014-11-28 19:14:41','2014-11-28 19:14:41',NULL),(53,NULL,NULL,51,NULL,'Rose Dorsainvil','2abbe27','12g63','2014-11-28 19:15:36','2014-11-28 19:15:36',NULL),(54,NULL,NULL,51,NULL,'Mertilyn Edman','2abbe28','sv625','2014-11-28 19:16:19','2014-11-28 19:16:19',NULL),(55,NULL,NULL,51,NULL,'Guirlene	Esperance','2abbe30','i5ava','2014-11-28 19:17:05','2014-11-28 19:17:05',NULL),(56,NULL,NULL,51,NULL,'Shanica Edwards','2abbe29','1ozpf','2014-11-28 19:17:58','2014-11-28 19:17:58',NULL),(57,NULL,NULL,51,NULL,'Carlyne Etienne','2abbe31','8erzw','2014-11-28 19:18:40','2014-11-28 19:18:40',NULL),(58,NULL,NULL,51,NULL,'Jacqueline Fearon','2abbe32','so6j4','2014-11-28 19:19:33','2014-11-28 19:19:33',NULL),(59,NULL,NULL,51,NULL,'Lisa	Finzi','2abbe33','1eduo','2014-11-28 19:20:45','2014-11-28 19:20:45',NULL),(60,NULL,NULL,51,NULL,'Roselene	Frederique','2abbe34','x76mt','2014-11-28 19:21:30','2014-11-28 19:21:30',NULL),(61,NULL,NULL,51,NULL,'Irene Gabriel','2abbe35','944nq','2014-11-28 19:22:35','2014-11-28 19:22:35',NULL),(62,NULL,NULL,51,NULL,'Christine	Gardner','2abbe36','k0tab','2014-11-28 19:23:22','2014-11-28 19:23:22',NULL),(63,NULL,NULL,51,NULL,'Jennifer Gordon','2abbe37','med4v','2014-11-28 19:24:11','2014-11-28 19:24:11',NULL),(64,NULL,NULL,51,NULL,'Amy	Governale','2abbe38','fl1qb','2014-11-28 19:25:27','2014-11-28 19:25:27',NULL),(65,NULL,NULL,51,NULL,'Lucille Graves','2abbe39','ag8tn','2014-11-28 19:26:07','2014-11-28 19:26:07',NULL),(66,NULL,NULL,51,NULL,'Jade	 Gray','2abbe40','075eq','2014-11-28 19:26:48','2014-11-28 19:26:48',NULL),(67,NULL,NULL,51,NULL,'Marie Haddaway','2abbe41','9wubh','2014-11-28 19:27:30','2014-11-28 19:27:30',NULL),(68,NULL,NULL,51,NULL,'Evalyn Hall','2abbe42','kz469','2014-11-28 19:28:23','2014-11-28 19:28:23',NULL),(69,NULL,NULL,51,NULL,'Valerie Harper','2abbe43','5gdut','2014-11-28 19:29:08','2014-11-28 19:29:08',NULL),(70,NULL,NULL,51,NULL,'Fela	Jean Charles','2abbe44','iv4pf','2014-11-28 19:30:27','2014-11-28 19:30:27',NULL),(71,NULL,NULL,51,NULL,'Claude Jean Jacques','2abbe45','m3v85','2014-11-28 19:31:17','2014-11-28 19:31:17',NULL),(72,NULL,NULL,51,NULL,'Elionore Jean Jacques','2abbe46','3rmvp','2014-11-28 19:31:53','2014-11-28 19:31:53',NULL),(73,NULL,NULL,51,NULL,'Kerlange Jean Julien','2abbe47','uw7xr','2014-11-28 19:32:26','2014-11-28 19:32:26',NULL),(74,NULL,NULL,51,NULL,'Marie Jerome','2abbe48','jjh4w','2014-11-28 19:33:05','2014-11-28 19:33:05',NULL),(75,NULL,NULL,51,NULL,'Adeline Josef- Cheronsky','2abbe49','s8pzi','2014-11-28 19:36:45','2014-11-28 19:36:45',NULL),(76,NULL,NULL,51,NULL,'Myriam Joseph','2abbe50','o40yv','2014-11-28 19:37:19','2014-11-28 19:37:19',NULL),(77,NULL,NULL,51,NULL,'Marjorie Joseph','2abbe51','hw5s7','2014-11-28 19:38:00','2014-11-28 19:38:00',NULL),(78,NULL,NULL,51,NULL,'Nora	 Jreige','2abbe52','h380w','2014-11-28 19:38:34','2014-11-28 19:38:34',NULL),(79,NULL,NULL,51,NULL,'Aretha Kelly','2abbe53','4qqrq','2014-11-28 19:39:15','2014-11-28 19:39:15',NULL),(80,NULL,NULL,51,NULL,'Nelta Lafortune','2abbe54','33t0r','2014-11-28 19:39:45','2014-11-28 19:39:45',NULL),(81,NULL,NULL,51,NULL,'James Lavia','2abbe55','e3zwf','2014-11-28 19:40:20','2014-11-28 19:40:20',NULL),(82,NULL,NULL,51,NULL,'Claudette	Lecaire','2abbe56','d8g97','2014-11-28 19:40:49','2014-11-28 19:40:49',NULL),(83,NULL,NULL,51,NULL,'Roussette Luma','2abbe57','j92kw','2014-11-28 19:41:18','2014-11-28 19:41:18',NULL),(84,NULL,NULL,51,NULL,'Wykeshia	Mack','2abbe58','5wg3e','2014-11-28 19:41:47','2014-11-28 19:41:47',NULL),(85,NULL,NULL,51,NULL,'Sabrena Mattis','2abbe59','b4x4f','2014-11-28 19:42:14','2014-11-28 19:42:14',NULL),(86,NULL,NULL,51,NULL,'Debbylin Mattock-Bryant','2abbe60','4454e','2014-11-28 19:42:42','2014-11-28 19:42:42',NULL),(87,NULL,NULL,51,NULL,'Peter McHugh','2abbe61','0tsqi','2014-11-28 19:43:09','2014-11-28 19:43:09',NULL),(88,NULL,NULL,51,NULL,'Roslyn McKenzie','2abbe62','pv23k','2014-11-28 19:43:40','2014-11-28 19:43:40',NULL),(89,NULL,NULL,51,NULL,'Fredricka	McKoy','2abbe63','v2752','2014-11-28 19:44:08','2014-11-28 19:44:08',NULL),(90,NULL,NULL,51,NULL,'Marie Merilan','2abbe64','18kcz','2014-11-28 19:44:36','2014-11-28 19:44:36',NULL),(91,NULL,NULL,51,NULL,'Micheline	Merizier','2abbe65','1rd2u','2014-11-28 19:45:07','2014-11-28 19:45:07',NULL),(92,NULL,NULL,51,NULL,'Alina	Mertil','2abbe66','n9w20','2014-11-28 19:45:33','2014-11-28 19:45:33',NULL),(93,NULL,NULL,51,NULL,'Yvonette Metayer','2abbe67','216bf','2014-11-28 19:45:58','2014-11-28 19:45:58',NULL),(94,NULL,NULL,51,NULL,'Sharmane Morgan','2abbe68','10bqn','2014-11-28 19:46:22','2014-11-28 19:46:22',NULL),(95,NULL,NULL,51,NULL,'Tiffany Moss','2abbe69','2olh8','2014-11-28 19:46:49','2014-11-28 19:46:49',NULL),(96,NULL,NULL,51,NULL,'Junie Myrtil','2abbe70','0ws4r','2014-11-28 19:47:15','2014-11-28 19:47:15',NULL),(97,NULL,NULL,51,NULL,'Genevieve Nelson','2abbe71','89p67','2014-11-28 19:47:44','2014-11-28 19:47:44',NULL),(98,NULL,NULL,51,NULL,'Abosede Olowofela','2abbe72','mxm73','2014-11-28 19:48:10','2014-11-28 19:48:10',NULL),(99,NULL,NULL,51,NULL,'Rhode Pierre','2abbe73','e3f97','2014-11-28 19:48:36','2014-11-28 19:48:36',NULL),(100,NULL,NULL,51,NULL,'Rose Powell','2abbe74','h2krr','2014-11-28 19:49:03','2014-11-28 19:49:03',NULL),(101,NULL,NULL,51,NULL,'Vincia Prempeh','2abbe75','10kg7','2014-11-28 19:49:27','2014-11-28 19:49:27',NULL),(102,NULL,NULL,51,NULL,'Gloria Prout','2abbe76','p46zf','2014-11-28 19:50:08','2014-11-28 19:50:08',NULL),(103,NULL,NULL,51,NULL,'James Pryce','2abbe77','p2til','2014-11-28 19:50:37','2014-11-28 19:50:37',NULL),(104,NULL,NULL,51,NULL,'Susan Rassmussen','2abbe78','v173a','2014-11-28 19:51:08','2014-11-28 19:51:08',NULL),(105,NULL,NULL,51,NULL,'Salimide Renard','2abbe79','d63gx','2014-11-28 19:51:46','2014-11-28 19:51:46',NULL),(106,NULL,NULL,51,NULL,'Kattia Saint Fleur','2abbe80','ee8ar','2014-11-28 19:52:13','2014-11-28 19:52:13',NULL),(107,NULL,NULL,51,NULL,'Johanne Sanon','2abbe81','a0uv9','2014-11-28 19:52:39','2014-11-28 19:52:39',NULL),(108,NULL,NULL,51,NULL,'Sophie Sintable','2abbe82','sr9vz','2014-11-28 19:53:12','2014-11-28 19:53:12',NULL),(109,NULL,NULL,51,NULL,'Crystal Smith','2abbe83','8imr7','2014-11-28 19:53:38','2014-11-28 19:53:38',NULL),(110,NULL,NULL,51,NULL,'Jared Smith','2abbe84','0mgd8','2014-11-28 19:54:09','2014-11-28 19:54:09',NULL),(111,NULL,NULL,51,NULL,'Mario Solis','2abbe85','y5dnq','2014-11-28 19:54:35','2014-11-28 19:54:35',NULL),(112,NULL,NULL,51,NULL,'Barbara Starks','2abbe86','8fazz','2014-11-28 19:55:03','2014-11-28 19:55:03',NULL),(113,NULL,NULL,51,NULL,'Mirlyn Toussaint','2abbe87','wh4xg','2014-11-28 19:55:27','2014-11-28 19:55:27',NULL),(114,NULL,NULL,51,NULL,'Ursula Twyman','2abbe88','910xv','2014-11-28 19:55:57','2014-11-28 19:55:57',NULL),(115,NULL,NULL,51,NULL,'Huberson Vildor','2abbe89','n166a','2014-11-28 19:56:29','2014-11-28 19:56:29',NULL),(116,NULL,NULL,51,NULL,'Erita	Vilneus','2abbe90','lm869','2014-11-28 19:56:58','2014-11-28 19:56:58',NULL),(117,NULL,NULL,51,NULL,'Kay Wilkes','2abbe91','257fa','2014-11-28 19:57:24','2014-11-28 19:57:24',NULL),(118,NULL,NULL,51,NULL,'Jean Williams','2abbe92','6syoi','2014-11-28 19:57:54','2014-11-28 19:57:54',NULL),(119,NULL,NULL,51,NULL,'Lesa Willis','2abbe93','s8yk8','2014-11-28 19:58:22','2014-11-28 19:58:22',NULL),(120,50,50,44,NULL,'Nikki','nikki','sydney95','2014-11-29 03:49:54','2014-12-02 18:17:55',NULL),(121,50,50,44,NULL,'Nahrae Jin','nahrae','fofjrj123','2014-11-30 03:34:32','2014-12-02 08:32:53',NULL),(122,50,50,44,NULL,'Vitaly','Vitaly','vitaly','2014-11-30 07:57:19','2014-12-02 19:07:12','DropOff'),(123,28.146,-82.7409,44,NULL,'bruce','bruce','bruce','2014-11-30 18:56:07','2014-11-30 22:59:22',NULL),(124,27.9506,-82.4572,44,NULL,'buddy','buddy','buddy','2014-11-30 18:56:45','2014-11-30 23:00:12',NULL),(126,NULL,NULL,38,NULL,'scott1130','scott1130','scott1130','2014-12-01 02:34:46','2014-12-01 02:34:46',NULL),(127,33.0187,-96.7943,38,NULL,'Nikki','nikki99','nikki99','2014-12-02 15:48:12','2014-12-02 17:49:20',NULL),(128,33.0328,-96.7964,38,NULL,'Steven','steven','steven','2014-12-02 16:02:26','2014-12-02 18:23:45',NULL);
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees_providers`
--

DROP TABLE IF EXISTS `employees_providers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employees_providers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) DEFAULT NULL,
  `provider_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees_providers`
--

LOCK TABLES `employees_providers` WRITE;
/*!40000 ALTER TABLE `employees_providers` DISABLE KEYS */;
/*!40000 ALTER TABLE `employees_providers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `family_members`
--

DROP TABLE IF EXISTS `family_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `family_members` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lastname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `firstname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobilephone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact` int(11) DEFAULT NULL,
  `city` int(11) DEFAULT NULL,
  `county` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `family_members`
--

LOCK TABLES `family_members` WRITE;
/*!40000 ALTER TABLE `family_members` DISABLE KEYS */;
/*!40000 ALTER TABLE `family_members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `followers`
--

DROP TABLE IF EXISTS `followers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `followers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `lovedone_id` int(11) DEFAULT NULL,
  `request_status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_followers_on_lovedone_id` (`lovedone_id`) USING BTREE,
  KEY `index_followers_on_user_id` (`user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `followers`
--

LOCK TABLES `followers` WRITE;
/*!40000 ALTER TABLE `followers` DISABLE KEYS */;
INSERT INTO `followers` VALUES (21,42,13,'approved','2014-09-25 17:01:55','2014-09-25 17:01:55'),(23,52,14,'approved','2014-09-29 17:40:10','2014-09-29 17:40:10'),(24,53,14,'invited','2014-09-29 17:55:07','2014-09-29 17:55:07'),(25,56,15,'approved','2014-10-02 17:31:21','2014-10-02 17:31:21'),(27,65,17,'approved','2014-11-14 10:16:45','2014-11-14 10:16:45'),(28,70,18,'approved','2014-11-25 17:20:39','2014-11-25 17:20:39'),(29,75,19,'approved','2014-11-26 19:54:21','2014-11-26 19:54:21'),(30,76,19,'invited','2014-11-26 20:01:41','2014-11-26 20:01:41'),(31,77,20,'approved','2014-12-02 21:24:51','2014-12-02 21:24:51');
/*!40000 ALTER TABLE `followers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invitations`
--

DROP TABLE IF EXISTS `invitations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `invitations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lovedone_id` int(11) DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invitations`
--

LOCK TABLES `invitations` WRITE;
/*!40000 ALTER TABLE `invitations` DISABLE KEYS */;
INSERT INTO `invitations` VALUES (1,11,'wipying@hotmail.com','2014-09-18 12:23:26','2014-09-18 12:23:26'),(2,12,'thewebsitedesignexchange@gmail.com','2014-09-24 16:36:19','2014-09-24 16:36:19'),(3,13,'thewebsitedesignexchange@gmail.com','2014-09-25 17:01:55','2014-09-25 17:01:55'),(4,14,'contact@safetynotice.com','2014-09-29 17:40:10','2014-09-29 17:40:10'),(5,15,'shathaway70@outlook.com','2014-10-02 17:31:21','2014-10-02 17:31:21'),(6,16,'myingjai@hotmail.com','2014-10-13 15:33:12','2014-10-13 15:33:12'),(8,20,'myingjai@hotmail.com','2014-12-02 21:24:51','2014-12-02 21:24:51');
/*!40000 ALTER TABLE `invitations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoices`
--

DROP TABLE IF EXISTS `invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `invoices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` decimal(10,0) DEFAULT NULL,
  `ids` text COLLATE utf8_unicode_ci,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `message_count` int(11) DEFAULT NULL,
  `sponsor_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoices`
--

LOCK TABLES `invoices` WRITE;
/*!40000 ALTER TABLE `invoices` DISABLE KEYS */;
INSERT INTO `invoices` VALUES (1,'Invoice for the message notification of sponsored Company (09/30/09/2014 17:37)',32,'1,3,5,7,9,11,13,15,17,19,21,23,25,27,29,31','2014-09-10','2014-09-30','2014-09-30 17:37:42','2014-09-30 17:37:42',16,1),(2,'Invoice for the message notification of sponsored Company (09/30/09/2014 17:37)',32,'2,4,6,8,10,12,14,16,18,20,22,24,26,28,30,32','2014-09-10','2014-09-30','2014-09-30 17:38:58','2014-09-30 17:38:58',16,2),(3,'Invoice for the message notification of sponsored Company (09/30/09/2014 17:54)',32,'1,3,5,7,9,11,13,15,17,19,21,23,25,27,29,31','2014-09-18','2014-09-30','2014-09-30 17:54:35','2014-09-30 17:54:35',16,1),(4,'Invoice for the message notification of sponsored Company (09/30/09/2014 17:54)',32,'2,4,6,8,10,12,14,16,18,20,22,24,26,28,30,32','2014-09-18','2014-09-30','2014-09-30 17:54:42','2014-09-30 17:54:42',16,2);
/*!40000 ALTER TABLE `invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leads`
--

DROP TABLE IF EXISTS `leads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `leads` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `profile_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `phone_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_leads_on_profile_id` (`profile_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leads`
--

LOCK TABLES `leads` WRITE;
/*!40000 ALTER TABLE `leads` DISABLE KEYS */;
INSERT INTO `leads` VALUES (5,'Horizon Home Heath',NULL,50,'2014-09-29 17:40:10','2014-09-29 17:40:10','(954)555-1212'),(12,'Eden2 Co. Ltd',NULL,61,'2014-12-02 21:24:51','2014-12-02 21:24:51',''),(13,'',NULL,61,'2014-12-02 21:24:51','2014-12-02 21:24:51','');
/*!40000 ALTER TABLE `leads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lovedones`
--

DROP TABLE IF EXISTS `lovedones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lovedones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `middle_initial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nick_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `primary_contact_id` int(11) DEFAULT NULL,
  `zip_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `county` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `employee_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lovedones`
--

LOCK TABLES `lovedones` WRITE;
/*!40000 ALTER TABLE `lovedones` DISABLE KEYS */;
INSERT INTO `lovedones` VALUES (13,'Lovedone','Scotts','e','','2014-09-16','true','dallas',NULL,'TX','2014-09-25 17:01:54','2014-12-03 08:50:23',13,NULL,'Anderson',15),(14,'Doe','Jane','J.','','1950-01-01','false','Tampa',NULL,'FL','2014-09-29 17:40:10','2014-12-02 20:25:52',14,NULL,'Hillsborough',NULL),(15,'Hathaway','Shawn','',NULL,'1966-07-08','true','Holiday',NULL,'FL','2014-10-02 17:31:21','2014-12-02 19:07:12',15,NULL,'Pasco',NULL),(16,'Mama','Jin','',NULL,'1935-09-01','false','Yanji',NULL,'AK','2014-10-13 15:33:12','2014-12-02 18:28:03',16,NULL,'asdfasd',NULL),(17,'Lorm Ipsunm','ddasda','sadsdsa',NULL,'1999-11-17','true','Jaipur',NULL,'NY','2014-11-14 10:16:45','2014-11-14 10:16:45',17,NULL,'India',NULL),(18,'Dinesh','Soni','Kumar',NULL,'1988-01-11','true','jaipur',NULL,'UT','2014-11-25 17:20:39','2014-11-25 17:20:39',18,NULL,'India',NULL),(19,'Lunceford','Mark','W',NULL,'2014-11-26','true','Lilburn',NULL,'GA','2014-11-26 19:54:21','2014-11-26 19:54:21',19,NULL,'Gwinnett',NULL),(20,'Mama','Jin','',NULL,'1935-09-01','false','Yanji',NULL,'AK','2014-12-02 21:24:50','2014-12-02 21:25:56',20,NULL,'Bristol Bay',NULL);
/*!40000 ALTER TABLE `lovedones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notifications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) DEFAULT NULL,
  `lovedone_id` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notification_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `follower_id` int(11) DEFAULT NULL,
  `primary_contact_id` int(11) DEFAULT NULL,
  `sponsor_id` int(11) DEFAULT NULL,
  `invoiced` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index_notifications_on_employee_id` (`employee_id`) USING BTREE,
  KEY `index_notifications_on_follower_id` (`follower_id`) USING BTREE,
  KEY `index_notifications_on_lovedone_id` (`lovedone_id`) USING BTREE,
  KEY `index_notifications_on_primary_contact_id` (`primary_contact_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=241 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications`
--

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
INSERT INTO `notifications` VALUES (1,10,13,'PickUp','email','2014-09-25 19:21:30','2014-09-25 19:21:30',21,NULL,1,0),(2,10,13,'PickUp','email','2014-09-25 19:21:32','2014-09-25 19:21:32',22,NULL,2,0),(3,10,13,'DropOff','email','2014-09-25 19:33:35','2014-09-25 19:33:35',21,NULL,1,0),(4,10,13,'DropOff','email','2014-09-25 19:33:37','2014-09-25 19:33:37',22,NULL,2,0),(5,10,13,'PickUp','email','2014-09-25 19:34:25','2014-09-25 19:34:25',21,NULL,1,0),(6,10,13,'PickUp','email','2014-09-25 19:34:26','2014-09-25 19:34:26',22,NULL,2,0),(7,10,13,'DropOff','email','2014-09-25 19:45:28','2014-09-25 19:45:28',21,NULL,1,0),(8,10,13,'DropOff','email','2014-09-25 19:45:30','2014-09-25 19:45:30',22,NULL,2,0),(9,10,13,'PickUp','email','2014-09-25 19:45:39','2014-09-25 19:45:39',21,NULL,1,0),(10,10,13,'PickUp','email','2014-09-25 19:45:41','2014-09-25 19:45:41',22,NULL,2,0),(11,10,13,'DropOff','email','2014-09-25 19:53:30','2014-09-25 19:53:30',21,NULL,1,0),(12,10,13,'DropOff','email','2014-09-25 19:53:32','2014-09-25 19:53:32',22,NULL,2,0),(13,10,13,'PickUp','email','2014-09-25 19:54:45','2014-09-25 19:54:45',21,NULL,1,0),(14,10,13,'PickUp','email','2014-09-25 19:54:46','2014-09-25 19:54:46',22,NULL,2,0),(15,10,13,'DropOff','email','2014-09-25 19:55:23','2014-09-25 19:55:23',21,NULL,1,0),(16,10,13,'DropOff','email','2014-09-25 19:55:25','2014-09-25 19:55:25',22,NULL,2,0),(17,10,13,'PickUp','email','2014-09-25 20:43:28','2014-09-25 20:43:28',21,NULL,1,0),(18,10,13,'PickUp','email','2014-09-25 20:43:29','2014-09-25 20:43:29',22,NULL,2,0),(19,10,13,'DropOff','email','2014-09-25 21:06:29','2014-09-25 21:06:29',21,NULL,1,0),(20,10,13,'DropOff','email','2014-09-25 21:06:31','2014-09-25 21:06:31',22,NULL,2,0),(21,10,13,'PickUp','email','2014-09-25 21:06:44','2014-09-25 21:06:44',21,NULL,1,0),(22,10,13,'PickUp','email','2014-09-25 21:06:46','2014-09-25 21:06:46',22,NULL,2,0),(23,10,13,'PickUp','email','2014-09-25 21:06:48','2014-09-25 21:06:48',21,NULL,1,0),(24,10,13,'PickUp','email','2014-09-25 21:06:50','2014-09-25 21:06:50',22,NULL,2,0),(25,10,13,'DropOff','email','2014-09-25 21:10:29','2014-09-25 21:10:29',21,NULL,1,0),(26,10,13,'DropOff','email','2014-09-25 21:10:31','2014-09-25 21:10:31',22,NULL,2,0),(27,10,13,'PickUp','email','2014-09-25 21:17:20','2014-09-25 21:17:20',21,NULL,1,0),(28,10,13,'PickUp','email','2014-09-25 21:17:22','2014-09-25 21:17:22',22,NULL,2,0),(29,10,13,'DropOff','email','2014-09-25 21:21:19','2014-09-25 21:21:19',21,NULL,1,0),(30,10,13,'DropOff','email','2014-09-25 21:21:21','2014-09-25 21:21:21',22,NULL,2,0),(31,10,13,'PickUp','email','2014-09-26 14:50:51','2014-09-26 14:50:51',21,NULL,1,0),(32,10,13,'PickUp','email','2014-09-26 14:50:53','2014-09-26 14:50:53',22,NULL,2,0),(33,13,14,'PickUp','email','2014-10-15 01:13:37','2014-10-15 01:13:37',23,NULL,1,0),(34,13,14,'PickUp','email','2014-10-15 01:13:39','2014-10-15 01:13:39',24,NULL,2,0),(35,13,14,'DropOff','email','2014-10-25 14:20:21','2014-10-25 14:20:21',23,NULL,1,0),(36,13,14,'DropOff','email','2014-10-25 14:20:23','2014-10-25 14:20:23',24,NULL,2,0),(37,13,14,'PickUp','email','2014-10-25 15:25:11','2014-10-25 15:25:11',23,NULL,1,0),(38,13,14,'PickUp','email','2014-10-25 15:25:13','2014-10-25 15:25:13',24,NULL,2,0),(39,13,14,'DropOff','email','2014-10-25 15:26:17','2014-10-25 15:26:17',23,NULL,1,0),(40,13,14,'DropOff','email','2014-10-25 15:26:19','2014-10-25 15:26:19',24,NULL,2,0),(41,10,13,'DropOff','email','2014-11-06 12:10:53','2014-11-06 12:10:53',21,NULL,1,0),(42,10,13,'DropOff','email','2014-11-06 12:10:55','2014-11-06 12:10:55',22,NULL,2,0),(43,13,14,'PickUp','email','2014-11-16 20:43:33','2014-11-16 20:43:33',23,NULL,1,0),(44,13,14,'PickUp','email','2014-11-16 20:43:35','2014-11-16 20:43:35',24,NULL,2,0),(45,13,14,'DropOff','email','2014-11-16 20:44:59','2014-11-16 20:44:59',23,NULL,1,0),(46,13,14,'DropOff','email','2014-11-16 20:45:01','2014-11-16 20:45:01',24,NULL,2,0),(47,16,14,'PickUp','email','2014-11-22 07:44:14','2014-11-22 07:44:14',23,NULL,2,0),(48,16,14,'PickUp','email','2014-11-22 07:44:16','2014-11-22 07:44:16',24,NULL,2,0),(49,16,13,'PickUp','email','2014-11-22 07:44:17','2014-11-22 07:44:17',21,NULL,2,0),(50,16,13,'PickUp','email','2014-11-22 07:44:19','2014-11-22 07:44:19',22,NULL,2,0),(51,16,14,'DropOff','email','2014-11-22 10:15:40','2014-11-22 10:15:40',23,NULL,2,0),(52,16,14,'DropOff','email','2014-11-22 10:15:42','2014-11-22 10:15:42',24,NULL,2,0),(53,16,15,'PickUp','email','2014-11-22 10:15:47','2014-11-22 10:15:47',25,NULL,2,0),(54,16,15,'DropOff','email','2014-11-24 08:22:43','2014-11-24 08:22:43',25,NULL,2,0),(55,16,15,'DropOff','email','2014-11-24 08:22:45','2014-11-24 08:22:45',25,NULL,2,0),(56,16,14,'PickUp','email','2014-11-24 14:02:50','2014-11-24 14:02:50',23,NULL,2,0),(57,16,14,'PickUp','email','2014-11-24 14:02:52','2014-11-24 14:02:52',24,NULL,2,0),(58,20,15,'Arrival','email','2014-11-24 19:44:57','2014-11-24 19:44:57',25,NULL,2,0),(59,20,15,'Departure','email','2014-11-24 19:45:51','2014-11-24 19:45:51',25,NULL,2,0),(60,20,15,'Departure','email','2014-11-24 19:46:14','2014-11-24 19:46:14',25,NULL,2,0),(61,20,15,'Departure','email','2014-11-24 19:46:24','2014-11-24 19:46:24',25,NULL,2,0),(62,20,15,'Departure','email','2014-11-24 19:47:44','2014-11-24 19:47:44',25,NULL,2,0),(63,20,15,'Departure','email','2014-11-24 19:47:55','2014-11-24 19:47:55',25,NULL,2,0),(64,20,15,'Departure','email','2014-11-24 19:48:02','2014-11-24 19:48:02',25,NULL,2,0),(65,20,15,'Departure','email','2014-11-24 19:48:07','2014-11-24 19:48:07',25,NULL,2,0),(66,20,15,'Departure','email','2014-11-24 19:49:25','2014-11-24 19:49:25',25,NULL,2,0),(67,20,15,'Arrival','email','2014-11-24 19:50:36','2014-11-24 19:50:36',25,NULL,2,0),(68,20,15,'Departure','email','2014-11-24 19:51:25','2014-11-24 19:51:25',25,NULL,2,0),(69,20,15,'Departure','email','2014-11-24 19:51:38','2014-11-24 19:51:38',25,NULL,2,0),(70,20,15,'Departure','email','2014-11-24 19:51:47','2014-11-24 19:51:47',25,NULL,2,0),(71,20,15,'Departure','email','2014-11-24 19:51:51','2014-11-24 19:51:51',25,NULL,2,0),(72,20,15,'Departure','email','2014-11-24 19:51:52','2014-11-24 19:51:52',25,NULL,2,0),(73,20,15,'Departure','email','2014-11-24 19:53:07','2014-11-24 19:53:07',25,NULL,2,0),(74,20,15,'Departure','email','2014-11-24 19:53:13','2014-11-24 19:53:13',25,NULL,2,0),(75,20,15,'Departure','email','2014-11-24 19:53:28','2014-11-24 19:53:28',25,NULL,2,0),(76,20,15,'Departure','email','2014-11-24 19:54:30','2014-11-24 19:54:30',25,NULL,2,0),(77,20,15,'Departure','email','2014-11-24 19:54:37','2014-11-24 19:54:37',25,NULL,2,0),(78,20,15,'Departure','email','2014-11-24 19:54:44','2014-11-24 19:54:44',25,NULL,2,0),(79,20,15,'Departure','email','2014-11-24 19:54:55','2014-11-24 19:54:55',25,NULL,2,0),(80,20,15,'Departure','email','2014-11-24 19:55:00','2014-11-24 19:55:00',25,NULL,2,0),(81,20,15,'Departure','email','2014-11-24 19:56:15','2014-11-24 19:56:15',25,NULL,2,0),(82,20,15,'Arrival','email','2014-11-24 19:57:51','2014-11-24 19:57:51',25,NULL,2,0),(83,20,15,'Arrival','email','2014-11-24 19:57:55','2014-11-24 19:57:55',25,NULL,2,0),(84,20,15,'Arrival','email','2014-11-24 19:57:59','2014-11-24 19:57:59',25,NULL,2,0),(85,20,15,'Arrival','email','2014-11-24 20:01:32','2014-11-24 20:01:32',25,NULL,2,0),(86,20,15,'Arrival','email','2014-11-24 20:01:43','2014-11-24 20:01:43',25,NULL,2,0),(87,20,15,'Arrival','email','2014-11-24 20:01:57','2014-11-24 20:01:57',25,NULL,2,0),(88,20,15,'Arrival','email','2014-11-24 20:02:03','2014-11-24 20:02:03',25,NULL,2,0),(89,20,15,'Arrival','email','2014-11-24 20:03:07','2014-11-24 20:03:07',25,NULL,2,0),(90,20,15,'Arrival','email','2014-11-24 20:03:12','2014-11-24 20:03:12',25,NULL,2,0),(91,20,15,'Arrival','email','2014-11-24 20:03:18','2014-11-24 20:03:18',25,NULL,2,0),(92,20,15,'Arrival','email','2014-11-24 20:03:27','2014-11-24 20:03:27',25,NULL,2,0),(93,20,15,'Arrival','email','2014-11-24 20:03:36','2014-11-24 20:03:36',25,NULL,2,0),(94,20,15,'Arrival','email','2014-11-24 20:03:43','2014-11-24 20:03:43',25,NULL,2,0),(95,20,15,'Arrival','email','2014-11-24 20:03:47','2014-11-24 20:03:47',25,NULL,2,0),(96,20,15,'Arrival','email','2014-11-24 20:03:51','2014-11-24 20:03:51',25,NULL,2,0),(97,20,15,'Arrival','email','2014-11-24 20:04:31','2014-11-24 20:04:31',25,NULL,2,0),(98,20,15,'Departure','email','2014-11-24 20:06:40','2014-11-24 20:06:40',25,NULL,2,0),(99,20,15,'Departure','email','2014-11-24 20:06:49','2014-11-24 20:06:49',25,NULL,2,0),(100,20,15,'Departure','email','2014-11-24 20:06:56','2014-11-24 20:06:56',25,NULL,2,0),(101,20,15,'Departure','email','2014-11-24 20:07:00','2014-11-24 20:07:00',25,NULL,2,0),(102,20,15,'Departure','email','2014-11-24 20:14:18','2014-11-24 20:14:18',25,NULL,2,0),(103,20,15,'Arrival','email','2014-11-24 20:14:29','2014-11-24 20:14:29',25,NULL,2,0),(104,20,15,'Departure','email','2014-11-24 20:18:41','2014-11-24 20:18:41',25,NULL,2,0),(105,20,15,'Departure','email','2014-11-24 21:01:50','2014-11-24 21:01:50',25,NULL,2,0),(106,20,15,'Departure','email','2014-11-24 21:02:02','2014-11-24 21:02:02',25,NULL,2,0),(107,20,15,'Departure','email','2014-11-24 21:02:25','2014-11-24 21:02:25',25,NULL,2,0),(108,20,15,'Arrival','email','2014-11-24 21:03:47','2014-11-24 21:03:47',25,NULL,2,0),(109,20,15,'Departure','email','2014-11-24 21:05:11','2014-11-24 21:05:11',25,NULL,2,0),(110,20,15,'Arrival','email','2014-11-24 21:06:38','2014-11-24 21:06:38',25,NULL,2,0),(111,20,15,'Departure','email','2014-11-24 21:06:55','2014-11-24 21:06:55',25,NULL,2,0),(112,20,15,'Arrival','email','2014-11-24 21:10:31','2014-11-24 21:10:31',25,NULL,2,0),(113,20,15,'Arrival','email','2014-11-24 21:10:42','2014-11-24 21:10:42',25,NULL,2,0),(114,20,15,'Arrival','email','2014-11-24 21:13:29','2014-11-24 21:13:29',25,NULL,2,0),(115,20,15,'Arrival','email','2014-11-24 21:13:32','2014-11-24 21:13:32',25,NULL,2,0),(116,20,15,'Arrival','email','2014-11-24 21:13:34','2014-11-24 21:13:34',25,NULL,2,0),(117,20,15,'Arrival','email','2014-11-24 21:14:43','2014-11-24 21:14:43',25,NULL,2,0),(118,20,15,'Departure','email','2014-11-24 21:15:30','2014-11-24 21:15:30',25,NULL,2,0),(119,20,15,'Departure','email','2014-11-24 21:15:34','2014-11-24 21:15:34',25,NULL,2,0),(120,20,15,'Departure','email','2014-11-24 21:15:36','2014-11-24 21:15:36',25,NULL,2,0),(121,20,15,'Departure','email','2014-11-24 21:16:25','2014-11-24 21:16:25',25,NULL,2,0),(122,20,15,'Departure','email','2014-11-24 21:16:36','2014-11-24 21:16:36',25,NULL,2,0),(123,20,15,'Departure','email','2014-11-24 21:16:49','2014-11-24 21:16:49',25,NULL,2,0),(124,20,15,'Departure','email','2014-11-24 21:18:51','2014-11-24 21:18:51',25,NULL,2,0),(125,20,15,'Departure','email','2014-11-24 21:19:12','2014-11-24 21:19:12',25,NULL,2,0),(126,20,15,'Arrival','email','2014-11-24 21:20:53','2014-11-24 21:20:53',25,NULL,2,0),(127,20,15,'Departure','email','2014-11-24 21:25:34','2014-11-24 21:25:34',25,NULL,2,0),(128,20,15,'Arrival','email','2014-11-24 21:26:32','2014-11-24 21:26:32',25,NULL,2,0),(129,20,15,'Arrival','email','2014-11-24 21:26:40','2014-11-24 21:26:40',25,NULL,2,0),(130,20,15,'Arrival','email','2014-11-24 21:26:49','2014-11-24 21:26:49',25,NULL,2,0),(131,20,15,'Arrival','email','2014-11-24 21:26:53','2014-11-24 21:26:53',25,NULL,2,0),(132,20,15,'Arrival','email','2014-11-24 21:28:07','2014-11-24 21:28:07',25,NULL,2,0),(133,20,15,'Departure','email','2014-11-24 21:29:46','2014-11-24 21:29:46',25,NULL,2,0),(134,20,15,'Arrival','email','2014-11-24 21:34:05','2014-11-24 21:34:05',25,NULL,2,0),(135,20,15,'Departure','email','2014-11-24 21:40:42','2014-11-24 21:40:42',25,NULL,2,0),(136,20,15,'Arrival','email','2014-11-24 21:44:01','2014-11-24 21:44:01',25,NULL,2,0),(137,20,15,'Departure','email','2014-11-24 21:49:04','2014-11-24 21:49:04',25,NULL,2,0),(138,20,15,'Arrival','email','2014-11-24 21:49:17','2014-11-24 21:49:17',25,NULL,2,0),(139,16,14,'DropOff','email','2014-11-25 00:25:05','2014-11-25 00:25:05',23,NULL,2,0),(140,16,14,'DropOff','email','2014-11-25 00:25:06','2014-11-25 00:25:06',24,NULL,2,0),(141,16,13,'DropOff','email','2014-11-25 00:25:54','2014-11-25 00:25:54',21,NULL,2,0),(142,13,14,'PickUp','email','2014-11-25 00:27:49','2014-11-25 00:27:49',23,NULL,2,0),(143,13,14,'PickUp','email','2014-11-25 00:27:50','2014-11-25 00:27:50',24,NULL,2,0),(144,13,14,'DropOff','email','2014-11-25 00:30:56','2014-11-25 00:30:56',23,NULL,2,0),(145,13,14,'DropOff','email','2014-11-25 00:30:57','2014-11-25 00:30:57',24,NULL,2,0),(146,13,14,'PickUp','email','2014-11-25 00:37:30','2014-11-25 00:37:30',23,NULL,2,0),(147,13,14,'PickUp','email','2014-11-25 00:37:31','2014-11-25 00:37:31',24,NULL,2,0),(148,13,14,'DropOff','email','2014-11-25 00:37:46','2014-11-25 00:37:46',23,NULL,2,0),(149,13,14,'DropOff','email','2014-11-25 00:37:47','2014-11-25 00:37:47',24,NULL,2,0),(150,20,15,'Departure','email','2014-11-25 07:16:12','2014-11-25 07:16:12',25,NULL,2,0),(151,20,15,'Arrival','email','2014-11-25 07:16:33','2014-11-25 07:16:33',25,NULL,2,0),(152,20,15,'Departure','email','2014-11-25 07:29:18','2014-11-25 07:29:18',25,NULL,2,0),(153,20,15,'Arrival','email','2014-11-25 10:33:05','2014-11-25 10:33:05',25,NULL,2,0),(154,20,15,'Departure','email','2014-11-25 12:04:53','2014-11-25 12:04:53',25,NULL,2,0),(155,20,15,'Departure','email','2014-11-25 12:04:56','2014-11-25 12:04:56',25,NULL,2,0),(156,20,15,'Arrival','email','2014-11-25 12:05:07','2014-11-25 12:05:07',25,NULL,2,0),(157,20,15,'Departure','email','2014-11-25 12:05:17','2014-11-25 12:05:17',25,NULL,2,0),(158,20,15,'Arrival','email','2014-11-25 12:09:05','2014-11-25 12:09:05',25,NULL,2,0),(159,20,15,'Departure','email','2014-11-25 12:11:20','2014-11-25 12:11:20',25,NULL,2,0),(160,20,15,'Arrival','email','2014-11-25 12:11:29','2014-11-25 12:11:29',25,NULL,2,0),(161,20,15,'Departure','email','2014-11-25 12:12:10','2014-11-25 12:12:10',25,NULL,2,0),(162,20,15,'Arrival','email','2014-11-25 12:12:19','2014-11-25 12:12:19',25,NULL,2,0),(163,20,15,'Departure','email','2014-11-25 12:17:05','2014-11-25 12:17:05',25,NULL,2,0),(164,20,15,'Arrival','email','2014-11-25 12:17:12','2014-11-25 12:17:12',25,NULL,2,0),(165,20,15,'Departure','email','2014-11-25 12:17:55','2014-11-25 12:17:55',25,NULL,2,0),(166,20,15,'Arrival','email','2014-11-25 12:18:03','2014-11-25 12:18:03',25,NULL,2,0),(167,20,15,'Departure','email','2014-11-25 12:40:05','2014-11-25 12:40:05',25,NULL,2,0),(168,20,15,'Arrival','email','2014-11-25 12:40:17','2014-11-25 12:40:17',25,NULL,2,0),(169,20,15,'Departure','email','2014-11-25 12:41:55','2014-11-25 12:41:55',25,NULL,2,0),(170,20,15,'Arrival','email','2014-11-25 12:42:05','2014-11-25 12:42:05',25,NULL,2,0),(171,20,15,'Departure','email','2014-11-25 12:43:13','2014-11-25 12:43:13',25,NULL,2,0),(172,20,15,'Arrival','email','2014-11-25 12:43:21','2014-11-25 12:43:21',25,NULL,2,0),(173,20,15,'Departure','email','2014-11-25 12:52:58','2014-11-25 12:52:58',25,NULL,2,0),(174,20,15,'Arrival','email','2014-11-25 12:53:10','2014-11-25 12:53:10',25,NULL,2,0),(175,20,15,'Departure','email','2014-11-25 12:57:48','2014-11-25 12:57:48',25,NULL,2,0),(176,20,15,'Departure','email','2014-11-25 12:57:58','2014-11-25 12:57:58',25,NULL,2,0),(177,20,15,'Arrival','email','2014-11-25 12:58:05','2014-11-25 12:58:05',25,NULL,2,0),(178,20,15,'Departure','email','2014-11-25 13:00:26','2014-11-25 13:00:26',25,NULL,2,0),(179,20,15,'Arrival','email','2014-11-25 13:00:43','2014-11-25 13:00:43',25,NULL,2,0),(180,20,15,'Departure','email','2014-11-25 13:04:24','2014-11-25 13:04:24',25,NULL,2,0),(181,20,15,'Arrival','email','2014-11-25 13:04:33','2014-11-25 13:04:33',25,NULL,2,0),(182,20,15,'Departure','email','2014-11-25 13:06:20','2014-11-25 13:06:20',25,NULL,2,0),(183,20,15,'Arrival','email','2014-11-25 13:06:30','2014-11-25 13:06:30',25,NULL,2,0),(184,20,15,'Departure','email','2014-11-25 13:16:48','2014-11-25 13:16:48',25,NULL,2,0),(185,20,15,'Arrival','email','2014-11-25 13:16:56','2014-11-25 13:16:56',25,NULL,2,0),(186,20,15,'Departure','email','2014-11-25 13:27:37','2014-11-25 13:27:37',25,NULL,2,0),(187,20,15,'Arrival','email','2014-11-25 13:27:48','2014-11-25 13:27:48',25,NULL,2,0),(188,20,15,'Departure','email','2014-11-25 13:28:39','2014-11-25 13:28:39',25,NULL,2,0),(189,20,15,'Arrival','email','2014-11-25 13:28:58','2014-11-25 13:28:58',25,NULL,2,0),(190,20,15,'Departure','email','2014-11-25 13:31:33','2014-11-25 13:31:33',25,NULL,2,0),(191,20,15,'Arrival','email','2014-11-25 13:34:12','2014-11-25 13:34:12',25,NULL,2,0),(192,20,15,'Departure','email','2014-11-25 17:30:05','2014-11-25 17:30:05',25,NULL,2,0),(193,16,14,'PickUp','email','2014-11-25 17:34:35','2014-11-25 17:34:35',23,NULL,2,0),(194,16,14,'PickUp','email','2014-11-25 17:34:39','2014-11-25 17:34:39',24,NULL,2,0),(195,13,13,'PickUp','email','2014-11-25 19:02:48','2014-11-25 19:02:48',21,NULL,2,0),(196,13,13,'DropOff','email','2014-11-25 19:02:56','2014-11-25 19:02:56',21,NULL,2,0),(197,22,15,'Departure','email','2014-11-25 22:07:13','2014-11-25 22:07:13',25,NULL,2,0),(198,22,15,'Arrival','email','2014-11-25 22:08:38','2014-11-25 22:08:38',25,NULL,2,0),(199,22,15,'Departure','email','2014-11-26 08:29:00','2014-11-26 08:29:00',25,NULL,2,0),(200,20,16,'Arrival','email','2014-11-26 08:29:36','2014-11-26 08:29:36',26,NULL,2,0),(201,20,16,'Departure','email','2014-11-26 08:30:59','2014-11-26 08:30:59',26,NULL,2,0),(202,20,16,'Arrival','email','2014-11-26 08:31:19','2014-11-26 08:31:19',26,NULL,2,0),(203,20,16,'Departure','email','2014-11-26 08:35:25','2014-11-26 08:35:25',26,NULL,2,0),(204,20,15,'Arrival','email','2014-11-26 08:38:18','2014-11-26 08:38:18',25,NULL,2,0),(205,20,15,'Departure','email','2014-11-26 08:38:30','2014-11-26 08:38:30',25,NULL,2,0),(206,20,15,'Departure','email','2014-11-26 09:39:11','2014-11-26 09:39:11',25,NULL,2,0),(207,20,15,'Arrival','email','2014-11-26 09:41:24','2014-11-26 09:41:24',25,NULL,2,0),(208,20,15,'Arrival','email','2014-11-26 09:41:29','2014-11-26 09:41:29',25,NULL,2,0),(209,20,15,'Departure','email','2014-11-26 09:45:48','2014-11-26 09:45:48',25,NULL,2,0),(210,20,16,'Arrival','email','2014-11-26 09:46:04','2014-11-26 09:46:04',26,NULL,2,0),(211,20,16,'Departure','email','2014-11-26 09:56:44','2014-11-26 09:56:44',26,NULL,2,0),(212,22,15,'Arrival','email','2014-11-26 09:57:00','2014-11-26 09:57:00',25,NULL,2,0),(213,22,15,'Departure','email','2014-11-26 20:04:28','2014-11-26 20:04:28',25,NULL,2,0),(214,22,15,'Departure','email','2014-11-26 20:04:31','2014-11-26 20:04:31',25,NULL,2,0),(215,16,14,'DropOff','email','2014-11-27 02:38:03','2014-11-27 02:38:03',23,NULL,2,0),(216,16,14,'DropOff','email','2014-11-27 02:38:06','2014-11-27 02:38:06',24,NULL,2,0),(217,20,15,'Arrival','email','2014-11-27 09:58:14','2014-11-27 09:58:14',25,NULL,2,0),(218,20,15,'Departure','email','2014-11-27 09:58:45','2014-11-27 09:58:45',25,NULL,2,0),(219,22,15,'Arrival','email','2014-11-27 09:59:00','2014-11-27 09:59:00',25,NULL,2,0),(220,22,15,'Departure','email','2014-11-27 09:59:51','2014-11-27 09:59:51',25,NULL,2,0),(221,22,15,'Arrival','email','2014-11-27 10:00:06','2014-11-27 10:00:06',25,NULL,2,0),(222,22,15,'Arrival','email','2014-11-27 10:00:36','2014-11-27 10:00:36',25,NULL,2,0),(223,22,15,'Departure','email','2014-11-27 10:37:37','2014-11-27 10:37:37',25,NULL,2,0),(224,22,15,'Arrival','email','2014-11-27 10:48:07','2014-11-27 10:48:07',25,NULL,2,0),(225,22,15,'Departure','email','2014-11-27 10:48:14','2014-11-27 10:48:14',25,NULL,2,0),(226,122,16,'Arrival','email','2014-12-02 18:26:50','2014-12-02 18:26:50',26,NULL,2,0),(227,122,16,'Departure','email','2014-12-02 18:28:04','2014-12-02 18:28:04',26,NULL,2,0),(228,122,15,'Arrival','email','2014-12-02 18:28:44','2014-12-02 18:28:44',25,NULL,2,0),(229,122,15,'Departure','email','2014-12-02 18:46:30','2014-12-02 18:46:30',25,NULL,2,0),(230,122,15,'Arrival','email','2014-12-02 18:53:28','2014-12-02 18:53:28',25,NULL,2,0),(231,122,15,'Departure','email','2014-12-02 18:56:42','2014-12-02 18:56:42',25,NULL,2,0),(232,122,15,'PickUp','email','2014-12-02 19:03:50','2014-12-02 19:03:50',25,NULL,2,0),(233,122,15,'DropOff','email','2014-12-02 19:07:14','2014-12-02 19:07:14',25,NULL,2,0),(234,13,14,'PickUp','email','2014-12-02 20:13:48','2014-12-02 20:13:48',23,NULL,2,0),(235,13,14,'PickUp','email','2014-12-02 20:13:50','2014-12-02 20:13:50',24,NULL,2,0),(236,13,14,'DropOff','email','2014-12-02 20:25:53','2014-12-02 20:25:53',23,NULL,2,0),(237,13,14,'DropOff','email','2014-12-02 20:25:55','2014-12-02 20:25:55',24,NULL,2,0),(238,15,13,'PickUp','email','2014-12-03 07:45:23','2014-12-03 07:45:23',21,NULL,2,0),(239,15,13,'DropOff','email','2014-12-03 08:49:30','2014-12-03 08:49:30',21,NULL,2,0),(240,15,13,'PickUp','email','2014-12-03 08:50:25','2014-12-03 08:50:25',21,NULL,2,0);
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `primary_contacts`
--

DROP TABLE IF EXISTS `primary_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `primary_contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lovedone_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `primary_contacts`
--

LOCK TABLES `primary_contacts` WRITE;
/*!40000 ALTER TABLE `primary_contacts` DISABLE KEYS */;
INSERT INTO `primary_contacts` VALUES (14,14,52,'2014-09-29 17:40:10','2014-09-29 17:40:10'),(15,15,56,'2014-10-02 17:31:21','2014-10-02 17:31:21'),(17,17,65,'2014-11-14 10:16:45','2014-11-14 10:16:45'),(18,18,70,'2014-11-25 17:20:39','2014-11-25 17:20:39'),(19,19,75,'2014-11-26 19:54:21','2014-11-26 19:54:21'),(20,20,77,'2014-12-02 21:24:51','2014-12-02 21:24:51');
/*!40000 ALTER TABLE `primary_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profiles`
--

DROP TABLE IF EXISTS `profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `middle_initial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nick_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_method` text COLLATE utf8_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `phone_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `county` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_type` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profiles`
--

LOCK TABLES `profiles` WRITE;
/*!40000 ALTER TABLE `profiles` DISABLE KEYS */;
INSERT INTO `profiles` VALUES (1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-08-19 17:02:29','2014-08-19 17:02:29',1,NULL,NULL,0),(10,'Sparks','Steven',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'---\n- email\n','2014-08-22 19:07:46','2014-08-22 19:07:46',9,NULL,NULL,0),(12,'Lesfloris','Heather',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'---\n- email\n- text\n','2014-08-26 14:52:46','2014-08-26 14:52:46',10,NULL,NULL,0),(14,'Ferrante','Carlo',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'---\n- email\n- text\n','2014-08-26 17:59:38','2014-08-26 17:59:38',11,NULL,NULL,0),(16,'Contact Last Name','Contact First Nme',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'---\n- email\n','2014-08-27 01:42:23','2014-08-27 01:42:23',12,NULL,NULL,0),(18,'Mingjai','Jin',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'---\n- email\n','2014-08-27 03:18:13','2014-08-27 03:18:13',13,NULL,NULL,0),(26,'Contact Last Name','Contact First Nme',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'---\n- email\n','2014-09-11 00:25:15','2014-09-11 00:25:15',20,NULL,NULL,0),(28,'Contact Last Name','Contact First Nme',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'---\n- email\n','2014-09-11 00:27:33','2014-09-11 00:27:33',21,NULL,NULL,0),(30,'Contact Last Name','Contact First Nme',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'---\n- email\n','2014-09-11 00:29:36','2014-09-11 00:29:36',22,NULL,NULL,0),(32,'Contact Last Name','Contact First Nme',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'---\n- email\n','2014-09-11 00:30:40','2014-09-11 00:30:40',23,NULL,NULL,0),(34,'Contact Last Name','Contact First Nme',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'---\n- email\n','2014-09-11 00:32:18','2014-09-11 00:32:18',24,NULL,NULL,0),(36,'Contact Last Name','Contact First Nme',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'---\n- email\n','2014-09-11 00:34:51','2014-09-11 00:34:51',25,NULL,NULL,0),(49,'primary','name','m',NULL,NULL,NULL,NULL,'city',NULL,'TX','','---\n- email\n- text\n','2014-09-29 14:50:06','2014-09-29 14:50:06',42,'(972)859-0369',NULL,0),(50,'Pitcher','Bruce',NULL,NULL,NULL,NULL,NULL,'Tarpon Springs',NULL,'FL',NULL,'---\n- email\n- text\n','2014-09-29 17:40:08','2014-09-29 17:40:08',52,'(727)244-4591','Pinellas',0),(51,'Lastly','Firstly',NULL,NULL,NULL,NULL,NULL,'Daytona Beach',NULL,'FL',NULL,'---\n- email\n','2014-09-29 17:55:05','2014-09-29 17:55:07',53,'(___)___-____','Volusia',1),(54,'sdasdsad','ssdsad',NULL,NULL,NULL,NULL,NULL,'Jaipur',NULL,'RI',NULL,'---\n- text\n','2014-11-14 10:16:43','2014-11-14 10:16:43',65,'(985)824-5852','India',0),(57,'Soni','Dinesh',NULL,NULL,NULL,NULL,NULL,'jaipur',NULL,'FL','','---\n- email\n- text\n','2014-11-25 17:20:37','2014-11-25 17:32:39',70,'9728590369','India',0),(58,'Lunceford','Sarah',NULL,NULL,NULL,NULL,NULL,'Lilburn',NULL,'GA',NULL,'---\n- email\n','2014-11-26 19:54:19','2014-11-26 19:54:19',75,'(404)664-8218','Gwinnett',0),(59,'Lunceford','Emilee',NULL,NULL,NULL,NULL,NULL,'Lilburn',NULL,'GA',NULL,'---\n- email\n','2014-11-26 20:01:40','2014-11-26 20:01:41',76,'(404)664-8218','Gwinnett',1),(60,'Hathaway','Stephenie','',NULL,NULL,NULL,NULL,'Holiday',NULL,'FL','','---\n- email\n- text\n','2014-12-02 18:28:35','2014-12-02 18:28:35',56,'9728590369',NULL,0),(61,'Wipying','Jin',NULL,NULL,NULL,NULL,NULL,'Changchun',NULL,'AR',NULL,'---\n- email\n','2014-12-02 21:24:49','2014-12-02 21:24:49',77,'(123)132-1321','Arkansas',0);
/*!40000 ALTER TABLE `profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `providers`
--

DROP TABLE IF EXISTS `providers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `providers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) DEFAULT NULL,
  `lovedone_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_providers_on_company_id` (`company_id`) USING BTREE,
  KEY `index_providers_on_lovedone_id` (`lovedone_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `providers`
--

LOCK TABLES `providers` WRITE;
/*!40000 ALTER TABLE `providers` DISABLE KEYS */;
INSERT INTO `providers` VALUES (27,38,14,'2014-10-15 01:02:53','2014-10-15 01:02:53'),(35,40,13,'2014-11-04 19:18:38','2014-11-04 19:18:38'),(36,38,13,'2014-11-04 19:18:42','2014-11-04 19:18:42'),(40,39,13,'2014-11-05 21:01:08','2014-11-05 21:01:08'),(41,39,14,'2014-11-05 21:01:10','2014-11-05 21:01:10'),(42,39,15,'2014-11-05 21:01:13','2014-11-05 21:01:13'),(43,39,16,'2014-11-05 21:01:17','2014-11-05 21:01:17'),(44,44,15,'2014-11-24 08:21:34','2014-11-24 08:21:34'),(45,NULL,18,'2014-11-25 17:20:39','2014-11-25 17:20:39'),(46,43,18,'2014-11-25 17:20:39','2014-11-25 17:20:39'),(47,42,18,'2014-11-25 17:20:39','2014-11-25 17:20:39'),(48,47,18,'2014-11-25 17:20:39','2014-11-25 17:20:39'),(49,44,16,'2014-11-25 18:50:41','2014-11-25 18:50:41'),(50,NULL,19,'2014-11-26 19:54:22','2014-11-26 19:54:22'),(51,46,19,'2014-11-26 19:54:22','2014-11-26 19:54:22'),(52,38,19,'2014-11-26 19:54:22','2014-11-26 19:54:22'),(53,47,19,'2014-11-26 19:54:22','2014-11-26 19:54:22');
/*!40000 ALTER TABLE `providers` ENABLE KEYS */;
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
INSERT INTO `schema_migrations` VALUES ('20140616074029'),('20140616074031'),('20140616074034'),('20140616074039'),('20140616112806'),('20140616124752'),('20140617084551'),('20140619044816'),('20140619052935'),('20140619085925'),('20140619183940'),('20140620122019'),('20140621043607'),('20140622134541'),('20140623140733'),('20140702135405'),('20140703020058'),('20140703050455'),('20140703115537'),('20140704032212'),('20140704052544'),('20140704054153'),('20140704063815'),('20140704100008'),('20140709064805'),('20140710091306'),('20140716041621'),('20140727200957'),('20140809040847'),('20140809065128'),('20140810082854'),('20140810162829'),('20140810180350'),('20140904144018'),('20140910214246'),('20140915080706'),('20140915111013'),('20140915125352'),('20140915142543'),('20140915174305'),('20140915180814'),('20140915182848'),('20140915183210'),('20140918192214'),('20140925194226'),('20141007154302'),('20141007160332'),('20141119100925'),('20141119100953'),('20141120124333'),('20141120130730'),('20141203083217');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'notification_fee','2.5','2014-09-30 17:37:21','2014-09-30 17:37:21');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sponsors`
--

DROP TABLE IF EXISTS `sponsors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sponsors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci,
  `message` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `company_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile_phone_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sponsor_ship_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `picture_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `picture_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `picture_file_size` int(11) DEFAULT NULL,
  `picture_updated_at` datetime DEFAULT NULL,
  `advertise` tinyint(1) DEFAULT '0',
  `sponsortype` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `county` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sponsors`
--

LOCK TABLES `sponsors` WRITE;
/*!40000 ALTER TABLE `sponsors` DISABLE KEYS */;
INSERT INTO `sponsors` VALUES (2,'Johnson & Johnson','',NULL,'2014-09-12 16:28:33','2014-11-16 20:27:03',NULL,'','','','','','','','','',NULL,NULL,NULL,NULL,0,NULL,NULL);
/*!40000 ALTER TABLE `sponsors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trips`
--

DROP TABLE IF EXISTS `trips`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trips` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) DEFAULT NULL,
  `lovedone_id` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `latitude` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `longitude` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_trips_on_employee_id` (`employee_id`) USING BTREE,
  KEY `index_trips_on_lovedone_id` (`lovedone_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trips`
--

LOCK TABLES `trips` WRITE;
/*!40000 ALTER TABLE `trips` DISABLE KEYS */;
INSERT INTO `trips` VALUES (2,7,11,'completed','AL','42.894716015909665','129.56129553917773','2014-09-22 04:32:44','2014-09-22 04:32:57'),(3,7,11,'completed','AL','42.89470281695267','129.56117276496448','2014-09-22 04:33:14','2014-09-22 04:33:36'),(5,7,11,'completed','AL','42.894775268348255','129.56134807569188','2014-09-22 04:45:56','2014-09-22 04:46:03'),(7,7,11,'completed','AL','42.89467057443789','129.5611788678478','2014-09-22 08:14:48','2014-09-22 08:14:54'),(11,7,11,'completed','AL','42.894706329610756','129.56118884554417','2014-09-22 16:58:26','2014-09-22 16:58:55'),(12,7,11,'completed','AL','42.89469563427305','129.5611550019444','2014-09-22 17:23:17','2014-09-22 17:23:40'),(13,7,11,'completed','AL','42.894794386476136','129.56149277466886','2014-09-22 17:26:04','2014-09-23 15:47:25'),(18,8,1,'completed','AL','33.04581540174134','-96.6540838033861','2014-09-23 15:53:46','2014-09-23 16:38:32'),(32,10,13,'completed','KS','33.04585814944752','-96.65415588775338','2014-09-25 17:54:47','2014-09-25 18:27:37'),(33,10,13,'completed','KS','50','50','2014-09-25 18:28:29','2014-09-25 19:04:10'),(34,10,13,'completed','KS','50','50','2014-09-25 19:04:17','2014-09-25 19:05:16'),(35,10,13,'completed','KS','50','50','2014-09-25 19:05:34','2014-09-25 19:33:38'),(36,10,13,'completed','KS','50','50','2014-09-25 19:34:13','2014-09-25 19:45:31'),(37,10,13,'completed','KS','50','50','2014-09-25 19:45:35','2014-09-25 19:53:32'),(39,10,13,'completed','KS','50','50','2014-09-25 19:54:34','2014-09-25 19:55:26'),(40,10,13,'completed','KS','50','50','2014-09-25 20:39:58','2014-09-25 21:06:31'),(41,10,13,'completed','KS','50','50','2014-09-25 21:06:40','2014-09-25 21:10:31'),(42,10,13,'completed','KS','50','50','2014-09-25 21:17:05','2014-09-25 21:21:22'),(44,10,13,'completed','KS','42.895004','129.561506','2014-09-26 14:45:41','2014-11-06 12:10:55'),(45,13,14,'completed','FL','50','50','2014-10-15 01:11:34','2014-10-25 14:20:23'),(47,13,14,'completed','CA','28.1480555','-82.729177','2014-10-25 15:24:58','2014-10-25 15:26:19'),(48,13,14,'completed','FL','28.1479876','-82.7292202','2014-11-16 20:43:21','2014-11-16 20:45:01'),(49,16,13,'completed','AL','50','50','2014-11-22 07:43:59','2014-11-25 00:25:54'),(50,16,14,'completed','AL','50','50','2014-11-22 07:44:06','2014-11-22 10:15:42'),(52,16,15,'completed','AL','50','50','2014-11-22 07:46:30','2014-11-24 08:22:44'),(53,16,14,'completed','AL','50','50','2014-11-22 10:15:52','2014-11-25 00:25:06'),(74,20,15,'completed',NULL,'0','0','2014-11-24 17:55:46','2014-11-24 19:03:43'),(75,20,15,'completed',NULL,'0','0','2014-11-24 19:03:29','2014-11-24 19:09:42'),(76,20,15,'completed',NULL,'0','0','2014-11-24 19:09:35','2014-11-24 19:19:10'),(86,20,15,'completed',NULL,'0','0','2014-11-24 19:18:14','2014-11-24 19:19:21'),(88,20,15,'completed',NULL,'0','0','2014-11-24 19:20:38','2014-11-24 19:41:43'),(89,20,15,'completed',NULL,'0','0','2014-11-24 19:41:58','2014-11-24 19:44:16'),(90,20,15,'completed',NULL,'0','0','2014-11-24 19:44:21','2014-11-24 19:49:25'),(91,20,15,'completed',NULL,'0','0','2014-11-24 19:46:19','2014-11-24 19:56:15'),(93,20,15,'completed',NULL,'0','0','2014-11-24 20:01:52','2014-11-24 20:14:18'),(94,20,15,'completed',NULL,'0','0','2014-11-24 20:14:24','2014-11-24 20:18:41'),(95,20,15,'completed',NULL,'0','0','2014-11-24 20:18:46','2014-11-24 20:30:08'),(96,20,15,'completed',NULL,'33.04463574559693','-96.65204753688256','2014-11-24 20:32:06','2014-11-24 21:02:25'),(97,20,15,'completed',NULL,'0','0','2014-11-24 21:02:33','2014-11-24 21:05:11'),(98,20,15,'completed',NULL,'0','0','2014-11-24 21:05:17','2014-11-24 21:06:56'),(99,20,15,'completed',NULL,'0','0','2014-11-24 21:10:24','2014-11-24 21:19:12'),(100,20,15,'completed',NULL,'0','0','2014-11-24 21:18:56','2014-11-24 21:25:34'),(101,20,15,'completed',NULL,'0','0','2014-11-24 21:25:42','2014-11-24 21:29:47'),(102,20,15,'completed',NULL,'0','0','2014-11-24 21:34:00','2014-11-24 21:40:43'),(103,20,15,'completed',NULL,'0','0','2014-11-24 21:43:55','2014-11-24 21:49:05'),(104,20,15,'completed',NULL,'0','0','2014-11-24 21:49:12','2014-11-25 07:16:13'),(105,13,14,'completed','FL','28.1480082','-82.7292964','2014-11-25 00:27:38','2014-11-25 00:30:57'),(106,13,14,'completed',NULL,'28.1481174','-82.729243','2014-11-25 00:35:47','2014-11-25 00:37:47'),(108,20,15,'completed',NULL,'0','0','2014-11-25 07:16:27','2014-11-25 07:29:19'),(111,20,15,'completed',NULL,'0','0','2014-11-25 10:25:54','2014-11-25 12:04:54'),(112,20,15,'completed',NULL,'0','0','2014-11-25 12:05:02','2014-11-25 12:05:17'),(113,20,15,'completed',NULL,'0','0','2014-11-25 12:07:44','2014-11-25 12:11:20'),(114,20,15,'completed',NULL,'0','0','2014-11-25 12:11:26','2014-11-25 12:12:11'),(115,20,15,'completed',NULL,'0','0','2014-11-25 12:12:15','2014-11-25 12:17:05'),(116,20,15,'completed',NULL,'0','0','2014-11-25 12:17:09','2014-11-25 12:17:55'),(117,20,15,'completed',NULL,'0','0','2014-11-25 12:17:58','2014-11-25 12:40:06'),(118,20,15,'completed',NULL,'0','0','2014-11-25 12:40:13','2014-11-25 12:41:56'),(119,20,15,'completed',NULL,'0','0','2014-11-25 12:42:01','2014-11-25 12:43:13'),(120,20,15,'completed',NULL,'0','0','2014-11-25 12:43:17','2014-11-25 12:52:58'),(121,20,15,'completed',NULL,'0','0','2014-11-25 12:53:07','2014-11-25 12:57:49'),(122,20,15,'completed',NULL,'0','0','2014-11-25 12:58:01','2014-11-25 13:00:26'),(123,20,15,'completed',NULL,'0','0','2014-11-25 13:00:33','2014-11-25 13:04:25'),(124,20,15,'completed',NULL,'0','0','2014-11-25 13:04:29','2014-11-25 13:06:20'),(125,20,15,'completed',NULL,'0','0','2014-11-25 13:06:26','2014-11-25 13:16:49'),(126,20,15,'completed',NULL,'0','0','2014-11-25 13:16:52','2014-11-25 13:27:38'),(127,20,15,'completed',NULL,'0','0','2014-11-25 13:27:42','2014-11-25 13:28:40'),(128,20,15,'completed',NULL,'0','0','2014-11-25 13:28:43','2014-11-25 13:31:33'),(129,20,15,'completed',NULL,'0','0','2014-11-25 13:31:38','2014-11-25 17:30:06'),(139,16,14,'completed','AL','50','50','2014-11-25 17:34:28','2014-11-27 02:38:06'),(140,22,15,'completed',NULL,'0','0','2014-11-25 17:35:29','2014-11-25 19:13:48'),(141,13,13,'completed','FL','26.1163767','-80.2614919','2014-11-25 19:02:35','2014-11-25 19:02:56'),(142,22,15,'completed',NULL,'0','0','2014-11-25 19:14:02','2014-11-25 19:21:04'),(143,22,16,'completed',NULL,'0','0','2014-11-25 19:20:19','2014-11-25 19:21:32'),(144,22,15,'completed',NULL,'0','0','2014-11-25 19:21:40','2014-11-25 22:07:14'),(145,22,15,'completed',NULL,'0','0','2014-11-25 22:08:14','2014-11-26 08:29:00'),(147,20,16,'completed',NULL,'0','0','2014-11-26 08:29:27','2014-11-26 08:30:59'),(148,20,16,'completed',NULL,'0','0','2014-11-26 08:31:14','2014-11-26 08:35:25'),(149,20,15,'completed',NULL,'0','0','2014-11-26 08:38:06','2014-11-26 08:38:30'),(151,20,15,'completed',NULL,'0','0','2014-11-26 08:41:20','2014-11-26 08:44:20'),(152,20,15,'completed',NULL,'0','0','2014-11-26 08:44:37','2014-11-26 09:39:11'),(153,20,15,'completed',NULL,'0','0','2014-11-26 09:39:22','2014-11-26 09:45:49'),(154,20,16,'completed',NULL,'0','0','2014-11-26 09:46:00','2014-11-26 09:56:45'),(155,22,15,'completed',NULL,'0','0','2014-11-26 09:56:54','2014-11-26 20:04:29'),(157,20,15,'completed',NULL,'0','0','2014-11-27 08:42:23','2014-11-27 09:58:46'),(160,22,15,'completed',NULL,'0','0','2014-11-27 09:58:53','2014-11-27 09:59:51'),(163,22,15,'completed',NULL,'0','0','2014-11-27 10:00:32','2014-11-27 10:37:37'),(165,22,15,'completed',NULL,'0','0','2014-11-27 10:12:39','2014-11-27 10:48:14'),(168,20,15,'completed',NULL,'50','50','2014-11-27 10:48:23','2014-11-27 10:49:50'),(176,20,15,'completed',NULL,'50','50','2014-11-28 12:08:11','2014-11-28 12:08:11'),(179,26,13,'completed','FL','28.0055659','-82.5947815','2014-11-28 17:07:05','2014-11-28 17:07:05'),(183,16,16,'completed','AL','50','50','2014-12-01 17:21:28','2014-12-01 17:21:28'),(185,124,15,'completed',NULL,'0','0','2014-12-01 18:09:16','2014-12-01 18:09:16'),(188,122,16,'completed','CA','50','50','2014-12-02 18:26:35','2014-12-02 18:28:04'),(189,122,15,'completed','CA','50','50','2014-12-02 18:28:09','2014-12-02 18:46:31'),(190,122,15,'completed','CA','50','50','2014-12-02 18:53:24','2014-12-02 18:56:43'),(192,122,15,'completed','CA','50','50','2014-12-02 19:00:07','2014-12-02 19:07:14'),(194,13,14,'completed','FL','28.147995','-82.7291656','2014-12-02 20:13:34','2014-12-02 20:25:55'),(198,22,15,'active',NULL,'0','0','2014-12-03 07:17:24','2014-12-03 07:17:24'),(199,15,13,'completed','FL','33.0458167','-96.6538228','2014-12-03 07:45:17','2014-12-03 08:49:30'),(200,15,13,'started','FL','33.0457762','-96.6538691','2014-12-03 08:49:40','2014-12-03 08:50:26');
/*!40000 ALTER TABLE `trips` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) NOT NULL DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `confirmation_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `confirmation_sent_at` datetime DEFAULT NULL,
  `unconfirmed_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  `selected_page` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_users_on_email` (`email`) USING BTREE,
  UNIQUE KEY `index_users_on_reset_password_token` (`reset_password_token`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin@safetynotice.com','$2a$10$DlkVtY8VEvryLVKjSv5a/.d6SfX0wcijvb9JbcEsXPH3lCMtjDEXe','3834b279708d137ea6aeb481c26f5ababb6a21a157872fe0e9e31e37c0c6e902','2014-09-25 13:39:26',NULL,138,'2014-12-03 09:10:08','2014-12-03 07:44:04','122.161.223.255','71.21.206.177','2014-08-19 17:02:29','2014-12-03 09:10:08',NULL,NULL,'2014-08-19 17:02:29',NULL,NULL,2,0),(42,'scottpjr@gmail.com','$2a$10$WjXRw6p.XJjeUYu/1zX9au/hEQNT0tj63TciRjGiNe1BbtXvw1i26','VZDC-AHzEBx-hHys3k3g',NULL,NULL,14,'2014-11-04 19:15:37','2014-11-04 07:57:14','71.21.206.177','75.126.39.111','2014-09-25 17:01:53','2014-11-04 22:09:27',NULL,NULL,'2014-09-25 17:03:02','2014-09-25 17:01:53',NULL,0,NULL),(52,'pitcher@verizon.net','$2a$10$XtaQftvOI7hCpyUv/lBHAu3RU6gCQBC0hsJTBepaNFRqv6PFrpsV6',NULL,NULL,NULL,8,'2014-12-02 20:17:39','2014-11-27 02:32:06','108.9.132.217','108.9.132.217','2014-09-29 17:40:08','2014-12-02 20:17:39',NULL,NULL,'2014-09-29 17:44:51','2014-09-29 17:40:08',NULL,0,NULL),(53,'contact@safetynotice.com','$2a$10$ecfDG.3G1xLLn8nwB8rVo.ZYubCZmrvwrSBFeSaSw6HTsIa5ScCiW',NULL,NULL,NULL,2,'2014-10-15 11:00:10','2014-09-29 17:59:38','71.99.172.26','71.99.172.26','2014-09-29 17:55:05','2014-10-15 11:00:10',NULL,NULL,'2014-09-29 17:57:11','2014-09-29 17:55:05',NULL,0,NULL),(56,'soapy70@hotmail.com','$2a$10$elddG0EuDsTwQ.2UUIi56.8AYC2Xm.KKwSwjuM7X2oQlso3afnYY.','WqXxE3jssSLtsBQENzBY',NULL,NULL,2,'2014-11-26 19:28:04','2014-10-02 17:36:33','72.186.46.101','24.160.87.63','2014-10-02 17:31:19','2014-11-26 19:28:04',NULL,NULL,'2014-10-02 17:35:26','2014-10-02 17:31:19',NULL,0,NULL),(58,'bpitcher@safetynotice.com','$2a$10$JfZtQuuP7Z8g/E7ZBlB.b.lpcSqk0IBBQXELPC9XVxplv2Gk2AmYS','Fh9TYxAygBE7HBanUsxM',NULL,NULL,72,'2014-12-03 09:56:58','2014-12-03 09:05:16','71.21.206.177','71.21.206.177','2014-10-08 13:34:32','2014-12-03 09:56:58',NULL,NULL,'2014-10-08 18:51:54','2014-10-08 13:45:45',NULL,1,NULL),(59,'jinnahrae@gmail.com','$2a$10$U3ZRLDvvd2rWiJKmYIVQguDFdUmtwfTBvwNzOAEmj9Q86/SSHQawK','3b1cbaf11cf9d18cb7124285775d2460ef1c57f169e4066e06f5a77ad36d0b3a','2014-10-13 21:52:55',NULL,8,'2014-11-16 20:03:14','2014-11-11 18:13:34','36.97.143.15','36.97.143.15','2014-10-08 16:08:47','2014-11-16 20:03:14',NULL,NULL,'2014-10-08 16:11:12','2014-10-08 16:10:53',NULL,1,NULL),(61,'anthonycjamodeo@gmail.com','$2a$10$HAZr7GXJz0tCn2zp4kMBVOGLdvYoWSC.VS1oie0dR8XS9Rsu.G03O',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2014-11-03 23:54:10','2014-11-03 23:54:10',NULL,'fb959a1bd7d417854003a27f50fed6a0c65c215a006e1f22289904e746900c3c',NULL,'2014-11-03 23:54:10',NULL,1,NULL),(62,'southernlovingcare@yahoo.com','$2a$10$ppH9BEazrb0ByOdSp/tJc.f4sQeW6Te.5ezIC8.Q0GLBtR3ut.WF6',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2014-11-07 15:30:56','2014-11-07 16:20:36',NULL,'da1ee9d940f12355734696fda745066cfd2a2412ffad14193c60ac406c465596',NULL,'2014-11-07 16:20:36',NULL,1,NULL),(63,'dynamikshealthcare@outlook.com','$2a$10$kqqSUWXfCRK1euNsu1Db7uBROxmcQ5NW8iPlsMoheEv48kg.oU0L2','dGxYDeQG2bNCFd_sE7g4',NULL,'2014-11-20 14:31:55',4,'2014-11-20 14:31:55','2014-11-20 14:30:39','71.99.93.219','71.99.93.219','2014-11-10 16:30:52','2014-11-20 14:31:55',NULL,NULL,'2014-11-11 00:41:04','2014-11-11 00:31:45',NULL,1,NULL),(64,'elaine@cthcinc.com','$2a$10$ZEHlBxh8CrPWdZiFo8VFOesE2eZo6o31Oc03ztADJu.5FPg4IwqMG',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2014-11-11 20:33:11','2014-11-11 22:05:11',NULL,'2983e9a9be4901eebba0d1e8beb03ad2b2576efd8e7e62a039d6b7c67754a10b',NULL,'2014-11-11 22:05:11',NULL,1,NULL),(65,'abc@example.com','$2a$10$ZPwS4a4.5CCM.ytvaXDTreqCXyU5i7r6YaHwBtngdp.flnTvcuo3y',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2014-11-14 10:16:43','2014-11-14 10:16:43',NULL,'d20689f2d3726eace89f79ae8b4cc81a72707cc2ff137f9f17ca896aee65929c',NULL,'2014-11-14 10:16:43',NULL,0,NULL),(66,'nicolelevin99@gmail.com','$2a$10$GyVZtnLkDsweauHbqAje7ei8CUJ3m0aOmT1JhEaaRGIwlyuMfRV1.',NULL,NULL,NULL,49,'2014-12-03 06:45:44','2014-12-03 05:54:25','122.161.223.255','122.161.223.255','2014-11-24 05:57:26','2014-12-03 06:45:44',NULL,NULL,'2014-11-24 06:02:58','2014-11-24 05:57:44',NULL,1,0),(67,'chrissteezy@gmail.com','$2a$10$cEQbK57rse00iO8Qm64ovuvIRCavg/sO9Xt6OiceP1y1wQGhxOFEG',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2014-11-24 19:45:38','2014-11-24 19:45:39',NULL,'9df391084a07f976cf71529f7913dd68ca2d8b5425e727285be957ef087b7941',NULL,'2014-11-24 19:45:38',NULL,1,NULL),(68,'sarahplunceford@gmail.com','$2a$10$n8U0KqLJ2um47uP2gTVMOece3JNOt0pibix8.r3faELmWjftj03IO',NULL,NULL,NULL,2,'2014-11-26 20:09:30','2014-11-26 19:22:54','50.147.227.158','50.147.227.158','2014-11-24 20:04:33','2014-11-26 20:09:30',NULL,NULL,'2014-11-26 19:19:23','2014-11-26 19:12:27',NULL,1,NULL),(69,'soapy70@yahoo.com','$2a$10$Z3TFBNnvq7h0aK3hlPvKcO1MZ.aqAIrDcgDKcRCffXGf0RxmkVSJ.',NULL,NULL,NULL,1,'2014-11-26 20:11:14','2014-11-26 20:11:14','72.186.46.101','72.186.46.101','2014-11-24 20:31:17','2014-11-26 20:11:14',NULL,NULL,'2014-11-26 19:19:26','2014-11-26 19:13:39',NULL,1,NULL),(70,'tl1.ptiwebtech@gmail.com','$2a$10$Vo9BtIE163HEEJn.vsDtGOntibqs88BDafV9ihizd81RGxRKvUbTC',NULL,NULL,NULL,2,'2014-11-26 09:47:07','2014-11-25 17:28:45','122.161.191.2','223.176.157.178','2014-11-25 17:20:37','2014-11-26 09:47:07',NULL,NULL,'2014-11-25 17:27:58','2014-11-25 17:20:37',NULL,0,NULL),(71,'ivanglick@comcast.net','$2a$10$6E5Kr0v4qWnFgwqo.WDN/OoogQNHA9BueqshKw0GS1UZe0drafnha',NULL,NULL,NULL,1,'2014-11-25 18:59:22','2014-11-25 18:59:22','74.221.242.114','74.221.242.114','2014-11-25 18:46:44','2014-11-25 18:59:22',NULL,NULL,'2014-11-25 18:58:00','2014-11-25 18:56:39',NULL,1,NULL),(72,'dinesh@ptiwebtech.com','$2a$10$1OFuvom4pFuGBVz7gB2wgOqK0/N7LSZc1nE0RM2CYbbWBRa.h/eG2',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2014-11-25 19:42:54','2014-11-25 19:42:54',NULL,'9ac1b69b16697c01b005106812ceb8fcf2e2031358ddb06e0fd3559655668f50',NULL,'2014-11-25 19:42:54',NULL,1,NULL),(74,'info@abbeyhomehealth.com','$2a$10$GfwS21wYpzT/Uyzz07neaeEjOd9n4OOS33dThZzDHebFBcF2O73LO',NULL,NULL,NULL,1,'2014-11-25 20:53:16','2014-11-25 20:53:16','99.94.160.43','99.94.160.43','2014-11-25 20:51:08','2014-11-25 20:53:16',NULL,NULL,'2014-11-25 20:52:54','2014-11-25 20:52:17',NULL,1,NULL),(75,'sarah@steezymarketing.com','$2a$10$RzYrIOpyngF8djmIvMo/GeVNeD8orLbfmtVOS17XzWQv7zxtoW0j6',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2014-11-26 19:54:19','2014-11-26 19:54:19',NULL,'7a24957eb2e6760a1ac3816469477296e1b8071996c6180bb3b1b55b6a1a6832',NULL,'2014-11-26 19:54:19',NULL,0,NULL),(76,'slunceford@safetynotice.com','$2a$10$qtwv50cDNUyBlmoN5Z9SB.mkaTnFDAxtnBCBjGRhAofemGg/KXjlO',NULL,NULL,NULL,2,'2014-12-01 19:46:20','2014-11-26 20:03:46','50.147.227.158','50.147.227.158','2014-11-26 20:01:40','2014-12-01 19:46:20',NULL,NULL,'2014-11-26 20:03:06','2014-11-26 20:01:40',NULL,0,NULL),(77,'wipying@hotmail.com','$2a$10$nGC7UJ68oWNjBY8PMe93a.FCdvbSz0yNI6OhqNstPj1/B1VQPmkMG',NULL,NULL,NULL,1,'2014-12-02 21:25:05','2014-12-02 21:25:05','36.97.143.15','36.97.143.15','2014-12-02 21:24:49','2014-12-02 21:25:05',NULL,NULL,'2014-12-02 21:24:59','2014-12-02 21:24:49',NULL,0,NULL);
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

-- Dump completed on 2014-12-03 12:19:22
