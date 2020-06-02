-- MySQL dump 10.13  Distrib 5.7.24, for Win64 (x86_64)
--
-- Host: localhost    Database: fabi24
-- ------------------------------------------------------
-- Server version	5.7.24

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add página',7,'add_page'),(26,'Can change página',7,'change_page'),(27,'Can delete página',7,'delete_page'),(28,'Can view página',7,'view_page'),(29,'Can add profile',8,'add_profile'),(30,'Can change profile',8,'change_profile'),(31,'Can delete profile',8,'delete_profile'),(32,'Can view profile',8,'view_profile'),(33,'Can add message',9,'add_message'),(34,'Can change message',9,'change_message'),(35,'Can delete message',9,'delete_message'),(36,'Can view message',9,'view_message'),(37,'Can add thread',10,'add_thread'),(38,'Can change thread',10,'change_thread'),(39,'Can delete thread',10,'delete_thread'),(40,'Can view thread',10,'view_thread');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$180000$PHEldgIDw98b$SYjDcUjUmV/HNM84KeOjjI4u4xv9NNCGBSZ8a68PouU=','2020-06-02 01:19:54.793845',1,'fabi','','','fabi20laureano@gmail.com',1,1,'2020-05-29 02:15:08.557157'),(2,'pbkdf2_sha256$180000$RUaptgoCavtt$3SdfQ9T+0saYPJ7q661hkixPkrnCwMFMUczuPkfW/HY=','2020-05-31 17:59:23.237851',0,'Emanuelito','','','',0,1,'2020-05-30 16:52:46.530147'),(3,'pbkdf2_sha256$180000$cjLlIjAnQqFn$N9goiKDTSiHghGvwkgFrEmYsOEP4ONC8YNf7lJk4yKU=',NULL,0,'pepito3','','','',0,1,'2020-05-30 17:02:35.768374'),(4,'pbkdf2_sha256$180000$GOGHejndxfc5$MsL8XY1+J1Db+koUlOFI1rutF2Gm3DW1f39crvVv2vU=',NULL,0,'pepito4','','','',0,1,'2020-05-30 17:16:21.593601'),(5,'pbkdf2_sha256$180000$LdS2PH1nwK62$AqrPBosh3/CgSJNjD2qO9zisu0tev3zvMAm4Wpii+b0=',NULL,0,'pepito9','','','pepito@aa.com',0,1,'2020-05-30 17:35:35.592326'),(6,'pbkdf2_sha256$180000$LOq9vZhm126Z$674TZ4DeHBlQdI4X2RcfwK5Z6jUiWIpmpvlci+8gaSg=',NULL,0,'pepito7','','','pepito99@aa.com',0,1,'2020-05-30 19:15:31.091760'),(7,'pbkdf2_sha256$180000$0zoWohzrVKxu$7d0DP/ZSBuoEUHrXKcbp5b6KbRdkD5ps/ySl3MEBMBU=','2020-05-31 03:46:22.677181',0,'Joel','','','Joel@gmail.com',0,1,'2020-05-31 03:07:37.639126'),(8,'pbkdf2_sha256$180000$4hHfihQpMDRD$3+Da+zoAIct51cru9L7XXDdR2nFEM7vxZMdb3EfuW/w=',NULL,0,'Andres','','','Andres@gmail.com',0,1,'2020-05-31 23:18:01.134222'),(9,'pbkdf2_sha256$180000$1XWZAaZQYkeV$eiGNO+8Fx0zPcG0Y6spSx4OzFq4EsvT6X721z7GYWM8=',NULL,0,'Tomas','','','Tomas@aa.com',0,1,'2020-05-31 23:18:39.365305');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2020-05-29 02:23:38.212645','1','Lorem Ipsum',1,'[{\"added\": {}}]',7,1),(2,'2020-05-29 02:24:24.822752','2','What is Lorem Ipsum?',1,'[{\"added\": {}}]',7,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(9,'messenger','message'),(10,'messenger','thread'),(7,'pages','page'),(8,'registration','profile'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2020-05-29 00:46:13.564036'),(2,'auth','0001_initial','2020-05-29 00:46:16.956200'),(3,'admin','0001_initial','2020-05-29 00:46:23.582261'),(4,'admin','0002_logentry_remove_auto_add','2020-05-29 00:46:25.237027'),(5,'admin','0003_logentry_add_action_flag_choices','2020-05-29 00:46:25.323174'),(6,'contenttypes','0002_remove_content_type_name','2020-05-29 00:46:26.551861'),(7,'auth','0002_alter_permission_name_max_length','2020-05-29 00:46:27.421917'),(8,'auth','0003_alter_user_email_max_length','2020-05-29 00:46:28.179658'),(9,'auth','0004_alter_user_username_opts','2020-05-29 00:46:28.234751'),(10,'auth','0005_alter_user_last_login_null','2020-05-29 00:46:28.883217'),(11,'auth','0006_require_contenttypes_0002','2020-05-29 00:46:28.940234'),(12,'auth','0007_alter_validators_add_error_messages','2020-05-29 00:46:29.016864'),(13,'auth','0008_alter_user_username_max_length','2020-05-29 00:46:29.817758'),(14,'auth','0009_alter_user_last_name_max_length','2020-05-29 00:46:30.582050'),(15,'auth','0010_alter_group_name_max_length','2020-05-29 00:46:31.401665'),(16,'auth','0011_update_proxy_permissions','2020-05-29 00:46:31.456873'),(17,'sessions','0001_initial','2020-05-29 00:46:31.820607'),(18,'pages','0001_initial','2020-05-29 01:57:39.631286'),(19,'registration','0001_initial','2020-05-30 23:50:42.243867'),(20,'messenger','0001_initial','2020-05-31 23:55:25.321459'),(21,'messenger','0002_auto_20200601_2049','2020-06-02 01:50:29.511990');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('6tre6ndej380jklv7wql08w4dnbxtkrt','YzA3NzgzMDg3OGU1NWU5NmIzYWI5MDcwZWYzZGViOWFiNTYyYzBjMDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxY2FhMWY2NWQyZThjYWI3MDUwMDRhMmEwZDk1MzAwM2E1MGM0ODJiIn0=','2020-06-16 01:19:55.166389'),('h7dotnlmdzrfxouj1spi51khp89tti17','YzA3NzgzMDg3OGU1NWU5NmIzYWI5MDcwZWYzZGViOWFiNTYyYzBjMDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxY2FhMWY2NWQyZThjYWI3MDUwMDRhMmEwZDk1MzAwM2E1MGM0ODJiIn0=','2020-06-15 02:29:41.719366');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messenger_message`
--

DROP TABLE IF EXISTS `messenger_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messenger_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` longtext NOT NULL,
  `created` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `messenger_message_user_id_44204cf3_fk_auth_user_id` (`user_id`),
  CONSTRAINT `messenger_message_user_id_44204cf3_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messenger_message`
--

LOCK TABLES `messenger_message` WRITE;
/*!40000 ALTER TABLE `messenger_message` DISABLE KEYS */;
INSERT INTO `messenger_message` VALUES (1,'Buenos dias Joel!','2020-06-01 01:09:11.844957',1),(2,'Hola fabi!','2020-06-01 01:10:26.744992',7),(3,'Me voy!','2020-06-01 01:11:05.458864',1),(4,'pues adios!','2020-06-01 01:11:39.540381',7),(5,'Hola como vas?','2020-06-02 00:38:52.678366',1),(6,'Pues este es el ultimo mensaje.... POR FIN!','2020-06-02 01:05:58.725111',1),(7,'Pues este es el ultimo mensaje.... POR FIN!','2020-06-02 01:06:20.296251',1),(8,'Pues este es el ultimo mensaje.... POR FIN!','2020-06-02 01:06:21.053760',1),(9,'Ya mero!','2020-06-02 01:13:09.039018',1),(10,'fabiolaaaa','2020-06-02 01:15:04.774818',1),(11,'Que paso??','2020-06-02 01:17:46.242799',1),(12,'si quedo!!!!','2020-06-02 01:18:02.028096',1),(13,'que bueno!!!','2020-06-02 01:18:13.668982',1),(14,'Hola Andres!','2020-06-02 01:30:32.905163',1),(15,'Hola!\n','2020-06-02 01:36:36.584781',1),(16,'que hayyy?','2020-06-02 01:43:32.650582',1),(17,'eeyy\n','2020-06-02 01:51:21.220369',1),(18,'como estas?','2020-06-02 01:51:36.713598',1),(19,'hola','2020-06-02 01:55:25.888239',1),(20,'Ya quedo!','2020-06-02 01:56:10.386872',1);
/*!40000 ALTER TABLE `messenger_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messenger_thread`
--

DROP TABLE IF EXISTS `messenger_thread`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messenger_thread` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `updated` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messenger_thread`
--

LOCK TABLES `messenger_thread` WRITE;
/*!40000 ALTER TABLE `messenger_thread` DISABLE KEYS */;
INSERT INTO `messenger_thread` VALUES (1,'2020-06-02 01:55:26.025944'),(2,'2020-06-02 01:50:27.712838'),(3,'2020-06-02 01:56:10.559163');
/*!40000 ALTER TABLE `messenger_thread` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messenger_thread_messages`
--

DROP TABLE IF EXISTS `messenger_thread_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messenger_thread_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `thread_id` int(11) NOT NULL,
  `message_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `messenger_thread_messages_thread_id_message_id_bb58b3ca_uniq` (`thread_id`,`message_id`),
  KEY `messenger_thread_mes_message_id_e4d4b7af_fk_messenger` (`message_id`),
  CONSTRAINT `messenger_thread_mes_message_id_e4d4b7af_fk_messenger` FOREIGN KEY (`message_id`) REFERENCES `messenger_message` (`id`),
  CONSTRAINT `messenger_thread_mes_thread_id_a70e3887_fk_messenger` FOREIGN KEY (`thread_id`) REFERENCES `messenger_thread` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messenger_thread_messages`
--

LOCK TABLES `messenger_thread_messages` WRITE;
/*!40000 ALTER TABLE `messenger_thread_messages` DISABLE KEYS */;
INSERT INTO `messenger_thread_messages` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,1,12),(13,1,13),(19,1,19),(14,2,14),(16,2,16),(17,2,17),(15,3,15),(18,3,18),(20,3,20);
/*!40000 ALTER TABLE `messenger_thread_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messenger_thread_users`
--

DROP TABLE IF EXISTS `messenger_thread_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messenger_thread_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `thread_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `messenger_thread_users_thread_id_user_id_d8023aff_uniq` (`thread_id`,`user_id`),
  KEY `messenger_thread_users_user_id_008b18f6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `messenger_thread_users_thread_id_8c4fd4f2_fk_messenger_thread_id` FOREIGN KEY (`thread_id`) REFERENCES `messenger_thread` (`id`),
  CONSTRAINT `messenger_thread_users_user_id_008b18f6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messenger_thread_users`
--

LOCK TABLES `messenger_thread_users` WRITE;
/*!40000 ALTER TABLE `messenger_thread_users` DISABLE KEYS */;
INSERT INTO `messenger_thread_users` VALUES (1,1,1),(2,1,7),(4,2,1),(3,2,8),(5,3,1),(6,3,2);
/*!40000 ALTER TABLE `messenger_thread_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_page`
--

DROP TABLE IF EXISTS `pages_page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages_page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `content` longtext NOT NULL,
  `order` smallint(6) NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_page`
--

LOCK TABLES `pages_page` WRITE;
/*!40000 ALTER TABLE `pages_page` DISABLE KEYS */;
INSERT INTO `pages_page` VALUES (1,'Lorem Ipsum','<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.&nbsp;</p>',0,'2020-05-29 02:23:38.176636','2020-05-29 02:23:38.176636'),(2,'What is Lorem Ipsum?','<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently&nbsp;</p>',0,'2020-05-29 02:24:24.818238','2020-05-29 02:24:24.818238'),(3,'Página de prueba','Este es un contenido de prueba para un formulario creado con CBV.',3,'2020-05-29 04:00:06.031136','2020-05-29 17:40:45.585242'),(4,'Pagina 2','There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle.',0,'2020-05-29 04:09:08.602966','2020-05-29 04:09:08.603470'),(5,'Pagina 3','There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle.',0,'2020-05-29 04:11:29.001654','2020-05-29 04:11:29.001654'),(7,'Hola Prueba prueba','<p>aasdf</p>',0,'2020-05-29 21:17:01.078720','2020-05-29 21:17:01.078720');
/*!40000 ALTER TABLE `pages_page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registration_profile`
--

DROP TABLE IF EXISTS `registration_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `registration_profile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `avatar` varchar(100) DEFAULT NULL,
  `bio` longtext,
  `link` varchar(200) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `registration_profile_user_id_e133ce43_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registration_profile`
--

LOCK TABLES `registration_profile` WRITE;
/*!40000 ALTER TABLE `registration_profile` DISABLE KEYS */;
INSERT INTO `registration_profile` VALUES (1,'profiles/rostro.jpg','sssdff','https://es.wikipedia.org/wiki/Isaac_Newton',1),(2,'profiles/rostro_QjTUcrI.jpg','Hola , mi nombre es Joel','https://es.wikipedia.org/wiki/Isaac_Newton',7),(3,'profiles/no-avatar.jpg','Holaaa','https://es.wikipedia.org/wiki/Isaac_Newton',2),(4,'',NULL,NULL,8),(5,'',NULL,NULL,9);
/*!40000 ALTER TABLE `registration_profile` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-01 21:07:48
