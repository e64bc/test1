-- MySQL dump 10.13  Distrib 5.7.30, for Linux (x86_64)
--
-- Host: localhost    Database: fusion
-- ------------------------------------------------------
-- Server version	5.5.56-log

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
-- Table structure for table `fusionk9z21_admin`
--

DROP TABLE IF EXISTS `fusionk9z21_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fusionk9z21_admin` (
  `admin_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `admin_rights` char(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_image` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_link` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'reserved',
  `admin_page` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `admin_language` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'English',
  PRIMARY KEY (`admin_id`)
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fusionk9z21_admin`
--

LOCK TABLES `fusionk9z21_admin` WRITE;
/*!40000 ALTER TABLE `fusionk9z21_admin` DISABLE KEYS */;
INSERT INTO `fusionk9z21_admin` VALUES (1,'AD','administrator.png','Administrators','administrators.php',2,'English'),(2,'APWR','adminpass.png','Admin Password Reset','admin_reset.php',2,'English'),(3,'SB','banner.png','Banners','banners.php',3,'English'),(4,'BB','bbcodes.png','BB Codes','bbcodes.php',3,'English'),(5,'B','blacklist.png','Blacklist','blacklist.php',2,'English'),(6,'C','comments.png','Comments','comments.php',1,'English'),(7,'CP','c-pages.png','Custom Pages','custom_pages.php',1,'English'),(8,'DB','db_backup.png','Database Backup','db_backup.php',3,'English'),(9,'ERRO','errors.png','Error Log','errors.php',3,'English'),(10,'IM','images.png','Images','images.php',1,'English'),(11,'I','infusions.png','Infusions','infusions.php',3,'English'),(12,'IP','','Infusion Panels','reserved',3,'English'),(13,'M','members.png','Members','members.php',2,'English'),(14,'MI','migration.png','Migration Tool','migrate.php',2,'English'),(15,'P','panels.png','Panels','panels.php',3,'English'),(16,'PL','permalink.png','Permalinks','permalink.php',3,'English'),(17,'PI','phpinfo.png','PHP Info','phpinfo.php',3,'English'),(18,'SL','sitelinks.png','Site Links','site_links.php',3,'English'),(19,'SM','smileys.png','Smileys','smileys.php',3,'English'),(20,'U','upgrade.png','Upgrade','reserved',3,'English'),(21,'TS','theme.png','Theme Manager','theme.php',3,'English'),(22,'UG','user_groups.png','User Groups','user_groups.php',2,'English'),(23,'S1','settings.png','Main','settings_main.php',4,'English'),(24,'S2','time.png','Time and Date','settings_time.php',4,'English'),(25,'S3','theme_settings.png','Theme Settings','settings_theme.php',4,'English'),(26,'S4','registration.png','Registration','settings_registration.php',4,'English'),(27,'S6','misc.png','Miscellaneous','settings_misc.php',4,'English'),(28,'S7','pm.png','Private Message','settings_messages.php',4,'English'),(29,'S9','user_settings.png','User Management','settings_users.php',4,'English'),(30,'S12','security.png','Security','settings_security.php',4,'English'),(31,'UF','user_fields.png','User Fields','user_fields.php',2,'English'),(32,'UL','user_log.png','User Log','user_log.php',2,'English'),(33,'ROB','robots.png','robots.txt','robots.php',3,'English'),(34,'MAIL','email.png','Email Templates','email.php',3,'English'),(35,'LANG','language.png','Language Settings','settings_languages.php',4,'English'),(36,'FM','file_manager.png','Fusion File Manager','file_manager.php',1,'English'),(37,'FQ','../infusions/faq/faq.svg','FAQs','../infusions/faq/faq_admin.php',1,'English');
/*!40000 ALTER TABLE `fusionk9z21_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fusionk9z21_admin_resetlog`
--

DROP TABLE IF EXISTS `fusionk9z21_admin_resetlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fusionk9z21_admin_resetlog` (
  `reset_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `reset_admin_id` mediumint(8) unsigned NOT NULL DEFAULT '1',
  `reset_timestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `reset_sucess` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `reset_failed` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `reset_admins` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `reset_reason` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`reset_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fusionk9z21_admin_resetlog`
--

LOCK TABLES `fusionk9z21_admin_resetlog` WRITE;
/*!40000 ALTER TABLE `fusionk9z21_admin_resetlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `fusionk9z21_admin_resetlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fusionk9z21_bbcodes`
--

DROP TABLE IF EXISTS `fusionk9z21_bbcodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fusionk9z21_bbcodes` (
  `bbcode_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `bbcode_name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bbcode_order` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`bbcode_id`),
  KEY `bbcode_order` (`bbcode_order`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fusionk9z21_bbcodes`
--

LOCK TABLES `fusionk9z21_bbcodes` WRITE;
/*!40000 ALTER TABLE `fusionk9z21_bbcodes` DISABLE KEYS */;
INSERT INTO `fusionk9z21_bbcodes` VALUES (1,'smiley',1),(2,'b',2),(3,'i',3),(4,'u',4),(5,'url',5),(6,'mail',6),(7,'img',7),(8,'center',8),(9,'small',9),(10,'code',10),(11,'quote',11);
/*!40000 ALTER TABLE `fusionk9z21_bbcodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fusionk9z21_blacklist`
--

DROP TABLE IF EXISTS `fusionk9z21_blacklist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fusionk9z21_blacklist` (
  `blacklist_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `blacklist_user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `blacklist_ip` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `blacklist_ip_type` tinyint(1) NOT NULL DEFAULT '4',
  `blacklist_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `blacklist_reason` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `blacklist_datestamp` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`blacklist_id`),
  KEY `blacklist_ip_type` (`blacklist_ip_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fusionk9z21_blacklist`
--

LOCK TABLES `fusionk9z21_blacklist` WRITE;
/*!40000 ALTER TABLE `fusionk9z21_blacklist` DISABLE KEYS */;
/*!40000 ALTER TABLE `fusionk9z21_blacklist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fusionk9z21_captcha`
--

DROP TABLE IF EXISTS `fusionk9z21_captcha`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fusionk9z21_captcha` (
  `captcha_datestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `captcha_ip` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `captcha_ip_type` tinyint(1) unsigned NOT NULL DEFAULT '4',
  `captcha_encode` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `captcha_string` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  KEY `captcha_datestamp` (`captcha_datestamp`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fusionk9z21_captcha`
--

LOCK TABLES `fusionk9z21_captcha` WRITE;
/*!40000 ALTER TABLE `fusionk9z21_captcha` DISABLE KEYS */;
/*!40000 ALTER TABLE `fusionk9z21_captcha` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fusionk9z21_comments`
--

DROP TABLE IF EXISTS `fusionk9z21_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fusionk9z21_comments` (
  `comment_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `comment_item_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `comment_type` char(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_cat` mediumint(8) NOT NULL DEFAULT '0',
  `comment_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_subject` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_datestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `comment_ip` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_ip_type` tinyint(1) NOT NULL DEFAULT '4',
  `comment_hidden` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_id`),
  KEY `comment_datestamp` (`comment_datestamp`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fusionk9z21_comments`
--

LOCK TABLES `fusionk9z21_comments` WRITE;
/*!40000 ALTER TABLE `fusionk9z21_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `fusionk9z21_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fusionk9z21_custom_pages`
--

DROP TABLE IF EXISTS `fusionk9z21_custom_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fusionk9z21_custom_pages` (
  `page_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `page_cat` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `page_link_cat` mediumint(9) unsigned NOT NULL DEFAULT '0',
  `page_title` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_access` tinyint(4) NOT NULL DEFAULT '0',
  `page_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_keywords` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_status` smallint(1) NOT NULL DEFAULT '0',
  `page_breaks` char(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_user` mediumint(9) unsigned NOT NULL DEFAULT '0',
  `page_datestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `page_language` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'English',
  `page_grid_id` mediumint(9) unsigned NOT NULL DEFAULT '0',
  `page_content_id` mediumint(9) unsigned NOT NULL DEFAULT '0',
  `page_left_panel` tinyint(1) NOT NULL DEFAULT '0',
  `page_right_panel` tinyint(1) NOT NULL DEFAULT '0',
  `page_header_panel` tinyint(1) NOT NULL DEFAULT '0',
  `page_footer_panel` tinyint(1) NOT NULL DEFAULT '0',
  `page_top_panel` tinyint(1) NOT NULL DEFAULT '0',
  `page_bottom_panel` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`page_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fusionk9z21_custom_pages`
--

LOCK TABLES `fusionk9z21_custom_pages` WRITE;
/*!40000 ALTER TABLE `fusionk9z21_custom_pages` DISABLE KEYS */;
/*!40000 ALTER TABLE `fusionk9z21_custom_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fusionk9z21_custom_pages_content`
--

DROP TABLE IF EXISTS `fusionk9z21_custom_pages_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fusionk9z21_custom_pages_content` (
  `page_id` mediumint(9) unsigned NOT NULL DEFAULT '0',
  `page_grid_id` mediumint(9) unsigned NOT NULL DEFAULT '0',
  `page_content_id` mediumint(9) unsigned NOT NULL AUTO_INCREMENT,
  `page_content_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_options` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_content_order` tinyint(5) unsigned NOT NULL DEFAULT '0',
  `page_widget` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`page_content_id`),
  KEY `page_grid_id` (`page_grid_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fusionk9z21_custom_pages_content`
--

LOCK TABLES `fusionk9z21_custom_pages_content` WRITE;
/*!40000 ALTER TABLE `fusionk9z21_custom_pages_content` DISABLE KEYS */;
/*!40000 ALTER TABLE `fusionk9z21_custom_pages_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fusionk9z21_custom_pages_grid`
--

DROP TABLE IF EXISTS `fusionk9z21_custom_pages_grid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fusionk9z21_custom_pages_grid` (
  `page_id` mediumint(9) unsigned NOT NULL DEFAULT '0',
  `page_grid_id` mediumint(9) unsigned NOT NULL AUTO_INCREMENT,
  `page_grid_container` tinyint(1) NOT NULL DEFAULT '0',
  `page_grid_column_count` tinyint(1) NOT NULL DEFAULT '0',
  `page_grid_html_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_grid_class` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_grid_order` tinyint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`page_grid_id`),
  KEY `page_id` (`page_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fusionk9z21_custom_pages_grid`
--

LOCK TABLES `fusionk9z21_custom_pages_grid` WRITE;
/*!40000 ALTER TABLE `fusionk9z21_custom_pages_grid` DISABLE KEYS */;
/*!40000 ALTER TABLE `fusionk9z21_custom_pages_grid` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fusionk9z21_email_templates`
--

DROP TABLE IF EXISTS `fusionk9z21_email_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fusionk9z21_email_templates` (
  `template_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `template_key` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `template_format` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `template_active` tinyint(1) NOT NULL DEFAULT '0',
  `template_name` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `template_subject` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `template_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `template_sender_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `template_sender_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `template_language` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`template_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fusionk9z21_email_templates`
--

LOCK TABLES `fusionk9z21_email_templates` WRITE;
/*!40000 ALTER TABLE `fusionk9z21_email_templates` DISABLE KEYS */;
INSERT INTO `fusionk9z21_email_templates` VALUES (1,'PM','html',0,'Notification on new PM','You have a new private message from [USER] waiting at [SITENAME]','Hello [RECEIVER],<br/>\r\nYou have received a new Private Message titled [SUBJECT] from [USER] at [SITENAME]. You can read your private message at [SITEURL]messages.php<br/>\r\nMessage: [MESSAGE]<br/>\r\nYou can disable email notification through the options panel of the Private Message page if you no longer wish to be notified of new messages.<br/>\r\nRegards,<br/>\r\n[SENDER].','','','English'),(2,'POST','html',0,'Notification on new forum posts','Thread Reply Notification - [SUBJECT]','Hello [RECEIVER],<br/>\r\nA reply has been posted in the forum thread \'[SUBJECT]\' which you are tracking at [SITENAME]. You can use the following link to view the reply:<br/>\r\n[THREAD_URL]<br/>\r\nIf you no longer wish to watch this thread you can click the \'Stop tracking this thread\' link located at the top of the thread.<br/>\r\nRegards,<br/>\r\n[SENDER].','','','English'),(3,'CONTACT','html',0,'Contact form','[SUBJECT]','[MESSAGE]','','','English');
/*!40000 ALTER TABLE `fusionk9z21_email_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fusionk9z21_email_verify`
--

DROP TABLE IF EXISTS `fusionk9z21_email_verify`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fusionk9z21_email_verify` (
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_code` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_datestamp` int(10) unsigned NOT NULL DEFAULT '0',
  KEY `user_datestamp` (`user_datestamp`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fusionk9z21_email_verify`
--

LOCK TABLES `fusionk9z21_email_verify` WRITE;
/*!40000 ALTER TABLE `fusionk9z21_email_verify` DISABLE KEYS */;
/*!40000 ALTER TABLE `fusionk9z21_email_verify` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fusionk9z21_errors`
--

DROP TABLE IF EXISTS `fusionk9z21_errors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fusionk9z21_errors` (
  `error_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `error_level` smallint(5) unsigned NOT NULL DEFAULT '0',
  `error_message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `error_file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `error_line` smallint(5) unsigned NOT NULL DEFAULT '0',
  `error_page` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `error_user_level` tinyint(4) NOT NULL DEFAULT '0',
  `error_user_ip` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `error_user_ip_type` tinyint(1) NOT NULL DEFAULT '4',
  `error_status` tinyint(1) NOT NULL DEFAULT '0',
  `error_timestamp` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`error_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fusionk9z21_errors`
--

LOCK TABLES `fusionk9z21_errors` WRITE;
/*!40000 ALTER TABLE `fusionk9z21_errors` DISABLE KEYS */;
INSERT INTO `fusionk9z21_errors` VALUES (1,2,'get_headers(): php_network_getaddresses: getaddrinfo failed: Temporary failure in name resolution','/var/www/html/administration/index.php',269,'/administration/index.php?aid=6e96cc838576532b&amp;pagenum=0',-103,'137.59.52.110',4,0,1589368696),(2,2,'get_headers(): php_network_getaddresses: getaddrinfo failed: Temporary failure in name resolution','/var/www/html/administration/index.php',269,'/administration/index.php?aid=6e96cc838576532b&amp;pagenum=1',-103,'137.59.52.110',4,0,1589368699);
/*!40000 ALTER TABLE `fusionk9z21_errors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fusionk9z21_faq_cats`
--

DROP TABLE IF EXISTS `fusionk9z21_faq_cats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fusionk9z21_faq_cats` (
  `faq_cat_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `faq_cat_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `faq_cat_description` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `faq_cat_language` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'English',
  PRIMARY KEY (`faq_cat_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fusionk9z21_faq_cats`
--

LOCK TABLES `fusionk9z21_faq_cats` WRITE;
/*!40000 ALTER TABLE `fusionk9z21_faq_cats` DISABLE KEYS */;
INSERT INTO `fusionk9z21_faq_cats` VALUES (1,'Sample Category','','English');
/*!40000 ALTER TABLE `fusionk9z21_faq_cats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fusionk9z21_faqs`
--

DROP TABLE IF EXISTS `fusionk9z21_faqs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fusionk9z21_faqs` (
  `faq_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `faq_cat_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `faq_question` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `faq_answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `faq_breaks` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `faq_name` mediumint(8) unsigned NOT NULL DEFAULT '1',
  `faq_datestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `faq_visibility` char(4) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `faq_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `faq_language` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'English',
  PRIMARY KEY (`faq_id`),
  KEY `faq_cat_id` (`faq_cat_id`),
  KEY `faq_datestamp` (`faq_datestamp`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fusionk9z21_faqs`
--

LOCK TABLES `fusionk9z21_faqs` WRITE;
/*!40000 ALTER TABLE `fusionk9z21_faqs` DISABLE KEYS */;
/*!40000 ALTER TABLE `fusionk9z21_faqs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fusionk9z21_flood_control`
--

DROP TABLE IF EXISTS `fusionk9z21_flood_control`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fusionk9z21_flood_control` (
  `flood_ip` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `flood_ip_type` tinyint(1) NOT NULL DEFAULT '4',
  `flood_timestamp` int(10) unsigned NOT NULL DEFAULT '0',
  KEY `flood_timestamp` (`flood_timestamp`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fusionk9z21_flood_control`
--

LOCK TABLES `fusionk9z21_flood_control` WRITE;
/*!40000 ALTER TABLE `fusionk9z21_flood_control` DISABLE KEYS */;
/*!40000 ALTER TABLE `fusionk9z21_flood_control` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fusionk9z21_infusions`
--

DROP TABLE IF EXISTS `fusionk9z21_infusions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fusionk9z21_infusions` (
  `inf_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `inf_title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `inf_folder` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `inf_version` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`inf_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fusionk9z21_infusions`
--

LOCK TABLES `fusionk9z21_infusions` WRITE;
/*!40000 ALTER TABLE `fusionk9z21_infusions` DISABLE KEYS */;
INSERT INTO `fusionk9z21_infusions` VALUES (1,'FAQs','faq','1.1');
/*!40000 ALTER TABLE `fusionk9z21_infusions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fusionk9z21_language_sessions`
--

DROP TABLE IF EXISTS `fusionk9z21_language_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fusionk9z21_language_sessions` (
  `user_ip` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0.0.0.0',
  `user_language` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'English',
  `user_datestamp` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fusionk9z21_language_sessions`
--

LOCK TABLES `fusionk9z21_language_sessions` WRITE;
/*!40000 ALTER TABLE `fusionk9z21_language_sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `fusionk9z21_language_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fusionk9z21_messages`
--

DROP TABLE IF EXISTS `fusionk9z21_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fusionk9z21_messages` (
  `message_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `message_to` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `message_from` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `message_user` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `message_subject` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message_message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `message_smileys` char(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message_read` smallint(1) NOT NULL DEFAULT '0',
  `message_datestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `message_folder` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`message_id`),
  KEY `message_datestamp` (`message_datestamp`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fusionk9z21_messages`
--

LOCK TABLES `fusionk9z21_messages` WRITE;
/*!40000 ALTER TABLE `fusionk9z21_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `fusionk9z21_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fusionk9z21_mlt_tables`
--

DROP TABLE IF EXISTS `fusionk9z21_mlt_tables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fusionk9z21_mlt_tables` (
  `mlt_rights` char(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mlt_title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mlt_status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`mlt_rights`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fusionk9z21_mlt_tables`
--

LOCK TABLES `fusionk9z21_mlt_tables` WRITE;
/*!40000 ALTER TABLE `fusionk9z21_mlt_tables` DISABLE KEYS */;
INSERT INTO `fusionk9z21_mlt_tables` VALUES ('SL','Site Links','1'),('CP','Custom Pages','1'),('ET','Email Templates','1'),('PN','Panels','1'),('FQ','FAQs','1');
/*!40000 ALTER TABLE `fusionk9z21_mlt_tables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fusionk9z21_new_users`
--

DROP TABLE IF EXISTS `fusionk9z21_new_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fusionk9z21_new_users` (
  `user_code` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_datestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `user_info` text COLLATE utf8mb4_unicode_ci NOT NULL,
  KEY `user_datestamp` (`user_datestamp`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fusionk9z21_new_users`
--

LOCK TABLES `fusionk9z21_new_users` WRITE;
/*!40000 ALTER TABLE `fusionk9z21_new_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `fusionk9z21_new_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fusionk9z21_online`
--

DROP TABLE IF EXISTS `fusionk9z21_online`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fusionk9z21_online` (
  `online_user` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `online_ip` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `online_ip_type` tinyint(1) unsigned NOT NULL DEFAULT '4',
  `online_lastactive` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fusionk9z21_online`
--

LOCK TABLES `fusionk9z21_online` WRITE;
/*!40000 ALTER TABLE `fusionk9z21_online` DISABLE KEYS */;
INSERT INTO `fusionk9z21_online` VALUES ('0','137.59.52.110',4,1589368718);
/*!40000 ALTER TABLE `fusionk9z21_online` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fusionk9z21_panels`
--

DROP TABLE IF EXISTS `fusionk9z21_panels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fusionk9z21_panels` (
  `panel_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `panel_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `panel_filename` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `panel_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `panel_side` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `panel_order` smallint(5) unsigned NOT NULL DEFAULT '0',
  `panel_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `panel_access` tinyint(4) NOT NULL DEFAULT '0',
  `panel_display` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `panel_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `panel_url_list` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `panel_restriction` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `panel_languages` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'English',
  PRIMARY KEY (`panel_id`),
  KEY `panel_order` (`panel_order`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fusionk9z21_panels`
--

LOCK TABLES `fusionk9z21_panels` WRITE;
/*!40000 ALTER TABLE `fusionk9z21_panels` DISABLE KEYS */;
INSERT INTO `fusionk9z21_panels` VALUES (1,'Navigation','css_navigation_panel','',1,1,'file',0,1,1,'',3,'English'),(2,'RSS','rss_feeds_panel','',1,2,'file',0,0,1,'home.php',2,'English'),(3,'Online Users','online_users_panel','',1,3,'file',0,1,1,'',3,'English'),(4,'Welcome Message','welcome_message_panel','',2,1,'file',0,0,1,'home.php',2,'English'),(5,'User Info','user_info_panel','',4,1,'file',0,1,1,'',3,'English');
/*!40000 ALTER TABLE `fusionk9z21_panels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fusionk9z21_permalinks_alias`
--

DROP TABLE IF EXISTS `fusionk9z21_permalinks_alias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fusionk9z21_permalinks_alias` (
  `alias_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `alias_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias_php_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias_type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias_item_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`alias_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fusionk9z21_permalinks_alias`
--

LOCK TABLES `fusionk9z21_permalinks_alias` WRITE;
/*!40000 ALTER TABLE `fusionk9z21_permalinks_alias` DISABLE KEYS */;
/*!40000 ALTER TABLE `fusionk9z21_permalinks_alias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fusionk9z21_permalinks_method`
--

DROP TABLE IF EXISTS `fusionk9z21_permalinks_method`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fusionk9z21_permalinks_method` (
  `pattern_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `pattern_type` int(5) unsigned NOT NULL DEFAULT '0',
  `pattern_source` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pattern_target` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pattern_cat` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`pattern_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fusionk9z21_permalinks_method`
--

LOCK TABLES `fusionk9z21_permalinks_method` WRITE;
/*!40000 ALTER TABLE `fusionk9z21_permalinks_method` DISABLE KEYS */;
/*!40000 ALTER TABLE `fusionk9z21_permalinks_method` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fusionk9z21_permalinks_rewrites`
--

DROP TABLE IF EXISTS `fusionk9z21_permalinks_rewrites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fusionk9z21_permalinks_rewrites` (
  `rewrite_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `rewrite_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`rewrite_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fusionk9z21_permalinks_rewrites`
--

LOCK TABLES `fusionk9z21_permalinks_rewrites` WRITE;
/*!40000 ALTER TABLE `fusionk9z21_permalinks_rewrites` DISABLE KEYS */;
/*!40000 ALTER TABLE `fusionk9z21_permalinks_rewrites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fusionk9z21_ratings`
--

DROP TABLE IF EXISTS `fusionk9z21_ratings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fusionk9z21_ratings` (
  `rating_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `rating_item_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `rating_type` char(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating_user` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `rating_vote` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `rating_datestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `rating_ip` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating_ip_type` tinyint(1) unsigned NOT NULL DEFAULT '4',
  PRIMARY KEY (`rating_id`),
  KEY `rating_datestamp` (`rating_datestamp`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fusionk9z21_ratings`
--

LOCK TABLES `fusionk9z21_ratings` WRITE;
/*!40000 ALTER TABLE `fusionk9z21_ratings` DISABLE KEYS */;
/*!40000 ALTER TABLE `fusionk9z21_ratings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fusionk9z21_sessions`
--

DROP TABLE IF EXISTS `fusionk9z21_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fusionk9z21_sessions` (
  `session_id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_start` int(10) unsigned NOT NULL DEFAULT '0',
  `session_data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`session_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fusionk9z21_sessions`
--

LOCK TABLES `fusionk9z21_sessions` WRITE;
/*!40000 ALTER TABLE `fusionk9z21_sessions` DISABLE KEYS */;
INSERT INTO `fusionk9z21_sessions` VALUES ('6hh8up3n38j621uqntc3enl3c1',1589368718,'csrf_tokens|a:1:{s:32:\"fe329929c0dcbfb157cb73bf92029871\";a:2:{s:9:\"loginform\";a:1:{i:0;s:89:\"137.59.52.110-1589368718-dc7441964af7d4f96d6a91023087bc395be26803fa4c21c0d030492a8c26165d\";}s:10:\"login-form\";a:1:{i:0;s:89:\"137.59.52.110-1589368718-780343c7b6e7ed5369b6be5a204c50e08c6c21aec7bf19b003c379cefcf21e5f\";}}}honeypots|a:1:{s:32:\"fe329929c0dcbfb157cb73bf92029871\";a:2:{s:18:\"loginform_honeypot\";a:4:{s:8:\"honeypot\";s:18:\"loginform_honeypot\";s:10:\"input_name\";s:13:\"fusion_YKEwB9\";s:9:\"form_name\";s:9:\"loginform\";s:4:\"type\";s:8:\"honeypot\";}s:19:\"login-form_honeypot\";a:4:{s:8:\"honeypot\";s:19:\"login-form_honeypot\";s:10:\"input_name\";s:13:\"fusion_Vwy6ay\";s:9:\"form_name\";s:9:\"loginform\";s:4:\"type\";s:8:\"honeypot\";}}}form_fields|a:1:{s:32:\"fe329929c0dcbfb157cb73bf92029871\";a:3:{s:9:\"user_name\";a:12:{s:10:\"input_name\";s:9:\"user_name\";s:5:\"title\";s:9:\"User name\";s:2:\"id\";s:8:\"username\";s:4:\"type\";s:4:\"text\";s:8:\"required\";b:1;s:8:\"safemode\";b:0;s:5:\"regex\";s:0:\"\";s:14:\"callback_check\";b:0;s:9:\"delimiter\";s:1:\",\";s:10:\"min_length\";i:1;s:10:\"max_length\";i:200;s:12:\"censor_words\";b:1;}s:9:\"user_pass\";a:12:{s:10:\"input_name\";s:9:\"user_pass\";s:5:\"title\";s:9:\"User pass\";s:2:\"id\";s:12:\"userpassword\";s:4:\"type\";s:8:\"password\";s:8:\"required\";b:1;s:8:\"safemode\";b:0;s:5:\"regex\";s:0:\"\";s:14:\"callback_check\";b:0;s:9:\"delimiter\";s:1:\",\";s:10:\"min_length\";i:1;s:10:\"max_length\";i:200;s:12:\"censor_words\";b:1;}s:11:\"remember_me\";a:8:{s:10:\"input_name\";s:11:\"remember_me\";s:5:\"title\";s:14:\"Stay signed in\";s:2:\"id\";s:10:\"rememberme\";s:4:\"type\";s:8:\"checkbox\";s:8:\"required\";b:0;s:8:\"safemode\";b:0;s:10:\"error_text\";s:25:\"Please tick this checkbox\";s:9:\"delimiter\";s:1:\",\";}}}');
/*!40000 ALTER TABLE `fusionk9z21_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fusionk9z21_settings`
--

DROP TABLE IF EXISTS `fusionk9z21_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fusionk9z21_settings` (
  `settings_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `settings_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`settings_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fusionk9z21_settings`
--

LOCK TABLES `fusionk9z21_settings` WRITE;
/*!40000 ALTER TABLE `fusionk9z21_settings` DISABLE KEYS */;
INSERT INTO `fusionk9z21_settings` VALUES ('sitename','Pentester Academy Labs'),('siteurl',' '),('site_protocol','http'),('site_host',' '),('site_port',''),('site_path','/'),('site_seo','0'),('domain_server',''),('sitebanner','images/php-fusion-logo.png'),('logoposition_xs','logo-xs-left'),('logoposition_sm','logo-sm-left'),('logoposition_md','logo-md-left'),('logoposition_lg','logo-lg-left'),('sitebanner1',''),('sitebanner2',''),('siteemail','admin@admin.xyz'),('siteusername','admin'),('siteintro','<div style=\'text-align:center\'>Welcome to your site</div>'),('description','PHP-Fusion is a lightweight open source content management system (CMS) written in PHP.'),('keywords','PHP-Fusion, CMS, Portal, Open Source, AGPL, PHP, MySQL, HTML, CSS, JS'),('footer','<div style=\'text-align:center\'>Copyright &copy; 2020</div>'),('opening_page','home.php'),('locale','English'),('bootstrap','1'),('entypo','0'),('fontawesome','1'),('theme','Magazine'),('admin_theme','AdminLTE'),('default_search','all'),('exclude_left',''),('exclude_upper',''),('exclude_lower',''),('exclude_aupper',''),('exclude_blower',''),('exclude_right',''),('exclude_user1',''),('exclude_user2',''),('exclude_user3',''),('exclude_user4',''),('shortdate','%d.%m.%y'),('longdate','%B %d %Y %H:%M:%S'),('link_bbcode','0'),('forumdate','%d-%m-%Y %H:%M'),('newsdate','%B %d %Y'),('subheaderdate','%B %d %Y %H:%M:%S'),('timeoffset','Etc/GMT+12'),('serveroffset','Etc/GMT+12'),('week_start','0'),('enable_registration','1'),('email_verification','1'),('admin_activation','0'),('display_validation','0'),('enable_deactivation','0'),('deactivation_period','365'),('deactivation_response','14'),('enable_terms','0'),('license_agreement',''),('license_lastupdate','0'),('thumb_compression','gd2'),('tinymce_enabled','0'),('smtp_host',''),('smtp_port','25'),('smtp_username',''),('smtp_password',''),('bad_words_enabled','1'),('bad_words',''),('bad_word_replace','****'),('login_method','0'),('guestposts','0'),('comments_enabled','1'),('ratings_enabled','1'),('hide_userprofiles','0'),('userthemes','1'),('flood_interval','15'),('counter','1'),('version','9.03.40'),('maintenance','0'),('maintenance_message',''),('links_per_page','8'),('links_grouping','0'),('link_grouping','8'),('comments_per_page','10'),('comments_sorting','ASC'),('comments_avatar','1'),('avatar_width','500'),('avatar_height','500'),('avatar_filesize','1048576'),('avatar_ratio','0'),('cronjob_day','1589368308'),('cronjob_hour','1589368669'),('flood_autoban','1'),('visitorcounter_enabled','1'),('rendertime_enabled','0'),('maintenance_level','-102'),('deactivation_action','0'),('captcha','securimage3'),('password_algorithm','sha256'),('default_timezone','Etc/GMT+12'),('userNameChange','1'),('recaptcha_public',''),('recaptcha_private',''),('recaptcha_theme','light'),('recaptcha_type','text'),('allow_php_exe','0'),('multiple_logins','0'),('smtp_auth','0'),('mime_check','1'),('normalize_seo','0'),('debug_seo','0'),('privacy_policy',''),('create_og_tags','1'),('index_url_bbcode','1'),('index_url_userweb','1'),('pm_inbox_limit','20'),('pm_outbox_limit','20'),('pm_archive_limit','20'),('pm_email_notify','2'),('pm_save_sent','2'),('enabled_languages','English'),('user_name_ban',''),('database_sessions','1'),('form_tokens','5'),('gateway','1'),('gateway_method','2'),('devmode','0'),('update_checker','1');
/*!40000 ALTER TABLE `fusionk9z21_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fusionk9z21_settings_inf`
--

DROP TABLE IF EXISTS `fusionk9z21_settings_inf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fusionk9z21_settings_inf` (
  `settings_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `settings_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `settings_inf` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`settings_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fusionk9z21_settings_inf`
--

LOCK TABLES `fusionk9z21_settings_inf` WRITE;
/*!40000 ALTER TABLE `fusionk9z21_settings_inf` DISABLE KEYS */;
INSERT INTO `fusionk9z21_settings_inf` VALUES ('faq_allow_submission','1','faq');
/*!40000 ALTER TABLE `fusionk9z21_settings_inf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fusionk9z21_settings_theme`
--

DROP TABLE IF EXISTS `fusionk9z21_settings_theme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fusionk9z21_settings_theme` (
  `settings_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `settings_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `settings_theme` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`settings_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fusionk9z21_settings_theme`
--

LOCK TABLES `fusionk9z21_settings_theme` WRITE;
/*!40000 ALTER TABLE `fusionk9z21_settings_theme` DISABLE KEYS */;
/*!40000 ALTER TABLE `fusionk9z21_settings_theme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fusionk9z21_site_links`
--

DROP TABLE IF EXISTS `fusionk9z21_site_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fusionk9z21_site_links` (
  `link_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `link_cat` mediumint(9) unsigned NOT NULL DEFAULT '0',
  `link_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_icon` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_visibility` tinyint(4) NOT NULL DEFAULT '0',
  `link_position` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `link_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `link_window` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `link_order` smallint(2) unsigned NOT NULL DEFAULT '0',
  `link_language` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'English',
  PRIMARY KEY (`link_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fusionk9z21_site_links`
--

LOCK TABLES `fusionk9z21_site_links` WRITE;
/*!40000 ALTER TABLE `fusionk9z21_site_links` DISABLE KEYS */;
INSERT INTO `fusionk9z21_site_links` VALUES (1,0,'Home','home.php','',0,2,1,0,1,'English'),(2,0,'Contact','contact.php','',0,3,1,0,8,'English'),(3,0,'Search','search.php','',0,1,1,0,10,'English'),(4,0,'---','---','',-101,1,1,0,11,'English'),(5,0,'FAQ','infusions/faq/faq.php','',0,2,1,0,2,'English'),(6,0,'Submit FAQ','submit.php?stype=q','',-101,1,1,0,23,'English');
/*!40000 ALTER TABLE `fusionk9z21_site_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fusionk9z21_smileys`
--

DROP TABLE IF EXISTS `fusionk9z21_smileys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fusionk9z21_smileys` (
  `smiley_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `smiley_code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `smiley_image` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `smiley_text` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`smiley_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fusionk9z21_smileys`
--

LOCK TABLES `fusionk9z21_smileys` WRITE;
/*!40000 ALTER TABLE `fusionk9z21_smileys` DISABLE KEYS */;
INSERT INTO `fusionk9z21_smileys` VALUES (1,':)','smile.svg','Smile'),(2,';)','wink.svg','Wink'),(3,':(','sad.svg','Sad'),(4,':|','frown.svg','Frown'),(5,':o','shock.svg','Shock'),(6,':P','pfft.svg','Pfft'),(7,'B)','cool.svg','Cool'),(8,':D','grin.svg','Grin'),(9,':@','angry.svg','Angry'),(10,'(y)','like.svg','Like');
/*!40000 ALTER TABLE `fusionk9z21_smileys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fusionk9z21_submissions`
--

DROP TABLE IF EXISTS `fusionk9z21_submissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fusionk9z21_submissions` (
  `submit_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `submit_type` char(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `submit_user` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `submit_datestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `submit_criteria` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`submit_id`),
  KEY `submit_datestamp` (`submit_datestamp`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fusionk9z21_submissions`
--

LOCK TABLES `fusionk9z21_submissions` WRITE;
/*!40000 ALTER TABLE `fusionk9z21_submissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `fusionk9z21_submissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fusionk9z21_suspends`
--

DROP TABLE IF EXISTS `fusionk9z21_suspends`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fusionk9z21_suspends` (
  `suspend_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `suspended_user` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `suspending_admin` mediumint(8) unsigned NOT NULL DEFAULT '1',
  `suspend_ip` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `suspend_ip_type` tinyint(1) unsigned NOT NULL DEFAULT '4',
  `suspend_date` int(10) unsigned NOT NULL DEFAULT '0',
  `suspend_reason` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `suspend_type` tinyint(1) NOT NULL DEFAULT '0',
  `reinstating_admin` mediumint(8) unsigned NOT NULL DEFAULT '1',
  `reinstate_reason` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `reinstate_date` int(10) unsigned NOT NULL DEFAULT '0',
  `reinstate_ip` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reinstate_ip_type` tinyint(1) unsigned NOT NULL DEFAULT '4',
  PRIMARY KEY (`suspend_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fusionk9z21_suspends`
--

LOCK TABLES `fusionk9z21_suspends` WRITE;
/*!40000 ALTER TABLE `fusionk9z21_suspends` DISABLE KEYS */;
/*!40000 ALTER TABLE `fusionk9z21_suspends` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fusionk9z21_theme`
--

DROP TABLE IF EXISTS `fusionk9z21_theme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fusionk9z21_theme` (
  `theme_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `theme_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme_title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme_file` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme_datestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `theme_user` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `theme_active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `theme_config` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`theme_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fusionk9z21_theme`
--

LOCK TABLES `fusionk9z21_theme` WRITE;
/*!40000 ALTER TABLE `fusionk9z21_theme` DISABLE KEYS */;
/*!40000 ALTER TABLE `fusionk9z21_theme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fusionk9z21_user_field_cats`
--

DROP TABLE IF EXISTS `fusionk9z21_user_field_cats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fusionk9z21_user_field_cats` (
  `field_cat_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `field_cat_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `field_parent` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `field_cat_db` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `field_cat_index` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `field_cat_class` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `field_cat_order` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`field_cat_id`),
  KEY `field_cat_order` (`field_cat_order`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fusionk9z21_user_field_cats`
--

LOCK TABLES `fusionk9z21_user_field_cats` WRITE;
/*!40000 ALTER TABLE `fusionk9z21_user_field_cats` DISABLE KEYS */;
INSERT INTO `fusionk9z21_user_field_cats` VALUES (1,'Profile',0,'users','user_id','fa fa-user',1),(2,'Contact Information',1,'','','fa fa-user',1),(3,'Miscellaneous Information',1,'','','fa fa-user',2),(4,'Options',1,'','','fa fa-user',3),(5,'Statistics',1,'','','fa fa-user',4),(6,'Privacy',1,'','','fa fa-user',5);
/*!40000 ALTER TABLE `fusionk9z21_user_field_cats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fusionk9z21_user_fields`
--

DROP TABLE IF EXISTS `fusionk9z21_user_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fusionk9z21_user_fields` (
  `field_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `field_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `field_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `field_cat` mediumint(8) unsigned NOT NULL DEFAULT '1',
  `field_type` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `field_default` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `field_options` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `field_error` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `field_required` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `field_log` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `field_registration` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `field_order` smallint(5) unsigned NOT NULL DEFAULT '0',
  `field_config` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`field_id`),
  KEY `field_order` (`field_order`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fusionk9z21_user_fields`
--

LOCK TABLES `fusionk9z21_user_fields` WRITE;
/*!40000 ALTER TABLE `fusionk9z21_user_fields` DISABLE KEYS */;
INSERT INTO `fusionk9z21_user_fields` VALUES (1,'Birthdate','user_birthdate',3,'file','1900-01-01','','',0,0,0,2,''),(2,'Location','user_location',3,'file','','','',0,0,0,2,''),(3,'Skype','user_skype',2,'file','','','',0,0,0,1,''),(4,'ICQ#','user_icq',2,'file','','','',0,0,0,3,''),(5,'Website','user_web',3,'file','','','',0,0,0,3,''),(6,'Timezone','user_timezone',4,'file','','','',0,0,0,1,''),(7,'Theme','user_theme',4,'file','','','',0,0,0,2,''),(8,'Signature','user_sig',4,'file','','','',0,0,0,3,'');
/*!40000 ALTER TABLE `fusionk9z21_user_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fusionk9z21_user_groups`
--

DROP TABLE IF EXISTS `fusionk9z21_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fusionk9z21_user_groups` (
  `group_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `group_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group_description` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group_icon` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fusionk9z21_user_groups`
--

LOCK TABLES `fusionk9z21_user_groups` WRITE;
/*!40000 ALTER TABLE `fusionk9z21_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `fusionk9z21_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fusionk9z21_user_log`
--

DROP TABLE IF EXISTS `fusionk9z21_user_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fusionk9z21_user_log` (
  `userlog_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `userlog_user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `userlog_field` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `userlog_value_new` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `userlog_value_old` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `userlog_timestamp` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`userlog_id`),
  KEY `userlog_field` (`userlog_field`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fusionk9z21_user_log`
--

LOCK TABLES `fusionk9z21_user_log` WRITE;
/*!40000 ALTER TABLE `fusionk9z21_user_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `fusionk9z21_user_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fusionk9z21_users`
--

DROP TABLE IF EXISTS `fusionk9z21_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fusionk9z21_users` (
  `user_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_algo` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'sha256',
  `user_salt` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_password` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_admin_algo` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'sha256',
  `user_admin_salt` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_admin_password` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_hide_email` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `user_timezone` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Europe/London',
  `user_avatar` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_posts` smallint(5) unsigned NOT NULL DEFAULT '0',
  `user_threads` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_joined` int(10) unsigned NOT NULL DEFAULT '0',
  `user_lastvisit` int(10) unsigned NOT NULL DEFAULT '0',
  `user_ip` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0.0.0.0',
  `user_ip_type` tinyint(1) unsigned NOT NULL DEFAULT '4',
  `user_rights` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_groups` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_level` tinyint(4) NOT NULL DEFAULT '-101',
  `user_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `user_inbox` smallint(6) unsigned NOT NULL DEFAULT '0',
  `user_outbox` smallint(6) unsigned NOT NULL DEFAULT '0',
  `user_archive` smallint(6) unsigned NOT NULL DEFAULT '0',
  `user_pm_email_notify` tinyint(1) NOT NULL DEFAULT '0',
  `user_pm_save_sent` tinyint(1) NOT NULL DEFAULT '0',
  `user_actiontime` int(10) unsigned NOT NULL DEFAULT '0',
  `user_theme` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Default',
  `user_location` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_birthdate` date NOT NULL DEFAULT '1900-01-01',
  `user_skype` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_icq` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_web` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_sig` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_language` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'English',
  PRIMARY KEY (`user_id`),
  KEY `user_lastvisit` (`user_lastvisit`),
  FULLTEXT KEY `user_name` (`user_name`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fusionk9z21_users`
--

LOCK TABLES `fusionk9z21_users` WRITE;
/*!40000 ALTER TABLE `fusionk9z21_users` DISABLE KEYS */;
INSERT INTO `fusionk9z21_users` VALUES (1,'admin','sha256','7bf0dc27e79aaa9d04cb9adaff6cf1deda706a99','e90e13e5b0591cae63b961efbcac1f370ae793bc593352bec13f41ea0d64e482','sha256','5454c7b42c179eba71c53637640c11e718defc0e','a9489193ae0888286db9538709e01ec2285cb7114d4853d46206c6faad41d894','admin@admin.xyz',1,'Etc/GMT+12','',0,'',1589368392,1589368714,'137.59.52.110',4,'AD.APWR.B.BB.C.CP.DB.ERRO.IM.I.IP.M.MI.MAIL.P.PI.PL.PO.ROB.SL.S1.S2.S3.S4.S5.S6.S7.S8.S9.S10.S11.S12.S13.SB.SM.SU.UF.UFC.UG.UL.U.TS.LANG.FM.FQ','',-103,0,0,0,0,0,0,0,'Default','','1900-01-01','','','','','English');
/*!40000 ALTER TABLE `fusionk9z21_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-13 11:19:02
