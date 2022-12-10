-- MariaDB dump 10.19  Distrib 10.9.3-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: wrestling
-- ------------------------------------------------------
-- Server version	10.9.3-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
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
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
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
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES
(1,'Can add log entry',1,'add_logentry'),
(2,'Can change log entry',1,'change_logentry'),
(3,'Can delete log entry',1,'delete_logentry'),
(4,'Can view log entry',1,'view_logentry'),
(5,'Can add permission',2,'add_permission'),
(6,'Can change permission',2,'change_permission'),
(7,'Can delete permission',2,'delete_permission'),
(8,'Can view permission',2,'view_permission'),
(9,'Can add group',3,'add_group'),
(10,'Can change group',3,'change_group'),
(11,'Can delete group',3,'delete_group'),
(12,'Can view group',3,'view_group'),
(13,'Can add user',4,'add_user'),
(14,'Can change user',4,'change_user'),
(15,'Can delete user',4,'delete_user'),
(16,'Can view user',4,'view_user'),
(17,'Can add content type',5,'add_contenttype'),
(18,'Can change content type',5,'change_contenttype'),
(19,'Can delete content type',5,'delete_contenttype'),
(20,'Can view content type',5,'view_contenttype'),
(21,'Can add news',6,'add_news'),
(22,'Can change news',6,'change_news'),
(23,'Can delete news',6,'delete_news'),
(24,'Can view news',6,'view_news'),
(25,'Can add club',7,'add_club'),
(26,'Can change club',7,'change_club'),
(27,'Can delete club',7,'delete_club'),
(28,'Can view club',7,'view_club'),
(29,'Can add place',8,'add_place'),
(30,'Can change place',8,'change_place'),
(31,'Can delete place',8,'delete_place'),
(32,'Can view place',8,'view_place'),
(33,'Can add student',9,'add_student'),
(34,'Can change student',9,'change_student'),
(35,'Can delete student',9,'delete_student'),
(36,'Can view student',9,'view_student'),
(37,'Can add event',10,'add_event'),
(38,'Can change event',10,'change_event'),
(39,'Can delete event',10,'delete_event'),
(40,'Can view event',10,'view_event'),
(41,'Can add enrollment',11,'add_enrollment'),
(42,'Can change enrollment',11,'change_enrollment'),
(43,'Can delete enrollment',11,'delete_enrollment'),
(44,'Can view enrollment',11,'view_enrollment'),
(45,'Can add attendance',12,'add_attendance'),
(46,'Can change attendance',12,'change_attendance'),
(47,'Can delete attendance',12,'delete_attendance'),
(48,'Can view attendance',12,'view_attendance'),
(49,'Can add division',13,'add_division'),
(50,'Can change division',13,'change_division'),
(51,'Can delete division',13,'delete_division'),
(52,'Can view division',13,'view_division'),
(53,'Can add session',14,'add_session'),
(54,'Can change session',14,'change_session'),
(55,'Can delete session',14,'delete_session'),
(56,'Can view session',14,'view_session'),
(57,'Can add emergenc y_contact',15,'add_emergency_contact'),
(58,'Can change emergenc y_contact',15,'change_emergency_contact'),
(59,'Can delete emergenc y_contact',15,'delete_emergency_contact'),
(60,'Can view emergenc y_contact',15,'view_emergency_contact');
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
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES
(1,'pbkdf2_sha256$390000$wMte3FZuqpI1ZpxYct3M5T$WOkB+e1bjHQQAPC60SdgAkit6dvH8TiefkECd52gfG0=','2022-12-06 21:28:21.315712',1,'admin','','','',1,1,'2022-12-03 00:31:03.931733');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
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
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
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
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES
(1,'2022-12-06 19:34:01.073632','1','Nombre: Centro de entrenamiento olímpico',1,'[{\"added\": {}}]',8,1),
(2,'2022-12-06 19:34:09.609797','1','Nombre: Centro de entrenamiento olímpico',2,'[]',8,1),
(3,'2022-12-06 19:34:50.619004','2','Nombre: Centro educacional municipal',1,'[{\"added\": {}}]',8,1),
(4,'2022-12-06 19:35:14.079344','3','Nombre: Gimnasio municipal Macul',1,'[{\"added\": {}}]',8,1),
(5,'2022-12-06 19:37:51.122082','1','Tipo: Adulto Location: Centro de entrenamiento olímpico',1,'[{\"added\": {}}]',13,1),
(6,'2022-12-06 19:39:25.397079','2','Tipo: Infantil Location: Gimnasio municipal Macul',1,'[{\"added\": {}}]',13,1),
(7,'2022-12-06 19:39:52.541859','3','Tipo: Infantil Location: Centro educacional municipal',1,'[{\"added\": {}}]',13,1),
(8,'2022-12-06 21:25:46.559923','1','CLUB object (1)',1,'[{\"added\": {}}]',7,1),
(9,'2022-12-06 21:28:41.990241','1','CLUB object (1)',2,'[]',7,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES
(1,'admin','logentry'),
(3,'auth','group'),
(2,'auth','permission'),
(4,'auth','user'),
(5,'contenttypes','contenttype'),
(12,'main','attendance'),
(7,'main','club'),
(13,'main','division'),
(15,'main','emergency_contact'),
(11,'main','enrollment'),
(10,'main','event'),
(6,'main','news'),
(8,'main','place'),
(9,'main','student'),
(14,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES
(1,'contenttypes','0001_initial','2022-11-24 14:56:16.206904'),
(2,'auth','0001_initial','2022-11-24 14:56:17.084602'),
(3,'admin','0001_initial','2022-11-24 14:56:17.252408'),
(4,'admin','0002_logentry_remove_auto_add','2022-11-24 14:56:17.264261'),
(5,'admin','0003_logentry_add_action_flag_choices','2022-11-24 14:56:17.280844'),
(6,'contenttypes','0002_remove_content_type_name','2022-11-24 14:56:17.384875'),
(7,'auth','0002_alter_permission_name_max_length','2022-11-24 14:56:17.462098'),
(8,'auth','0003_alter_user_email_max_length','2022-11-24 14:56:17.502095'),
(9,'auth','0004_alter_user_username_opts','2022-11-24 14:56:17.518066'),
(10,'auth','0005_alter_user_last_login_null','2022-11-24 14:56:17.590097'),
(11,'auth','0006_require_contenttypes_0002','2022-11-24 14:56:17.598065'),
(12,'auth','0007_alter_validators_add_error_messages','2022-11-24 14:56:17.606098'),
(13,'auth','0008_alter_user_username_max_length','2022-11-24 14:56:17.654064'),
(14,'auth','0009_alter_user_last_name_max_length','2022-11-24 14:56:17.718064'),
(15,'auth','0010_alter_group_name_max_length','2022-11-24 14:56:17.774064'),
(16,'auth','0011_update_proxy_permissions','2022-11-24 14:56:17.790065'),
(17,'auth','0012_alter_user_first_name_max_length','2022-11-24 14:56:17.846067'),
(18,'main','0001_initial','2022-11-24 14:56:17.878065'),
(19,'main','0002_alter_news_article_alter_news_title','2022-11-24 14:56:17.950063'),
(20,'main','0003_club_place_student_event_enrollment_attendance','2022-11-24 14:56:18.525817'),
(21,'main','0004_remove_event_type_division','2022-11-24 14:56:18.717250'),
(22,'main','0005_emergency_contact_remove_event_id_place_and_more','2022-11-24 15:09:49.141546'),
(23,'main','0006_alter_enrollment_id_division_and_more','2022-11-24 15:09:49.173666'),
(24,'sessions','0001_initial','2022-11-24 15:10:00.697214'),
(25,'main','0007_rename_imgdown_club_imga_rename_imgup_club_imgb_and_more','2022-12-02 23:52:41.101549'),
(26,'main','0008_remove_club_imgb_remove_club_titlemision_and_more','2022-12-03 00:05:49.121584'),
(27,'main','0009_alter_club_cellphone_alter_club_email_and_more','2022-12-06 21:19:54.117092'),
(28,'main','0010_alter_club_cellphone_alter_club_email_and_more','2022-12-06 21:22:07.400894'),
(29,'main','0011_remove_club_cellphone_remove_club_email_and_more','2022-12-06 21:24:49.928337');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES
('c3oamwharcsjlntneldn1hg4pi4e38zc','.eJxVjM0OwiAQhN-FsyH8FCoevfsMZNldpGpoUtqT8d2lSQ96m3zzzbxFhG0tcWu8xInERWhx-mUJ8Ml1L-gB9T5LnOu6TEnuijzaJm8z8et6uH8HBVrp67NhB4QMmFTI7HOiPNrsBw6hQz-yIx5Uti5paxEUBkNaZ-N7YK_E5wsrBTkk:1p2fUD:qiF7zkOQYzmaIzis-kkUCrO19IaspBag-0QfkXTM7F4','2022-12-20 21:28:21.318789');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_attendance`
--

DROP TABLE IF EXISTS `main_attendance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `main_attendance` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `is_present` tinyint(1) NOT NULL,
  `date` date NOT NULL,
  `id_place_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `main_attendance_id_place_id_20b47065_fk_main_place_id` (`id_place_id`),
  CONSTRAINT `main_attendance_id_place_id_20b47065_fk_main_place_id` FOREIGN KEY (`id_place_id`) REFERENCES `main_place` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_attendance`
--

LOCK TABLES `main_attendance` WRITE;
/*!40000 ALTER TABLE `main_attendance` DISABLE KEYS */;
/*!40000 ALTER TABLE `main_attendance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_club`
--

DROP TABLE IF EXISTS `main_club`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `main_club` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `intro` varchar(800) NOT NULL,
  `mision` varchar(800) NOT NULL,
  `vision` varchar(800) NOT NULL,
  `titleIntro` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_club`
--

LOCK TABLES `main_club` WRITE;
/*!40000 ALTER TABLE `main_club` DISABLE KEYS */;
INSERT INTO `main_club` VALUES
(1,'VACIO','Buscamos ser una comunidad deportiva donde sus miembros cultiven su salud y autocrecimiento. A través de la lucha olímpica de la cual rescatamos tanto el respeto como el carácter que desarrolla, para hacer frente a los desafíos y exigencias propias del deporte.','Esperamos ser reconocidos como un grupo humano preocupado por el crecimiento constante de sus deportistas. Siendo perseverantes en las metas propuestas, reflejando confianza en cada paso hacia el futuro.','Weichan, club de lucha.');
/*!40000 ALTER TABLE `main_club` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_division`
--

DROP TABLE IF EXISTS `main_division`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `main_division` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` varchar(200) NOT NULL,
  `days` varchar(200) NOT NULL,
  `hours` varchar(200) NOT NULL,
  `location_id` bigint(20) NOT NULL,
  `register` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `main_division_location_id_6346dde7_fk_main_place_id` (`location_id`),
  CONSTRAINT `main_division_location_id_6346dde7_fk_main_place_id` FOREIGN KEY (`location_id`) REFERENCES `main_place` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_division`
--

LOCK TABLES `main_division` WRITE;
/*!40000 ALTER TABLE `main_division` DISABLE KEYS */;
INSERT INTO `main_division` VALUES
(1,'Adulto','Martes, Jueves','20:30 / 22.00',1,'https://forms.gle/bTU6H9LSngMTq5AU9'),
(2,'Infantil','Miércoles, Viernes','16:30 / 18:00',3,'https://forms.gle/dxFoESPDxn7fi8VU7'),
(3,'Infantil','Lunes, Martes, Jueves','17:30 / 19:00',2,'https://docs.google.com/forms/d/e/1FAIpQLSfuNEtjIozAPvi-WbLepiSW5gi1PKzcorg5wZQSEChm4yixXQ/viewform?usp=sf_link');
/*!40000 ALTER TABLE `main_division` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_emergency_contact`
--

DROP TABLE IF EXISTS `main_emergency_contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `main_emergency_contact` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `rut` int(11) NOT NULL,
  `phone` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_emergency_contact`
--

LOCK TABLES `main_emergency_contact` WRITE;
/*!40000 ALTER TABLE `main_emergency_contact` DISABLE KEYS */;
/*!40000 ALTER TABLE `main_emergency_contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_enrollment`
--

DROP TABLE IF EXISTS `main_enrollment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `main_enrollment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_student_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `main_enrollment_id_student_id_c4301012_fk_main_student_id` (`id_student_id`),
  CONSTRAINT `main_enrollment_id_student_id_c4301012_fk_main_student_id` FOREIGN KEY (`id_student_id`) REFERENCES `main_student` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_enrollment`
--

LOCK TABLES `main_enrollment` WRITE;
/*!40000 ALTER TABLE `main_enrollment` DISABLE KEYS */;
/*!40000 ALTER TABLE `main_enrollment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_event`
--

DROP TABLE IF EXISTS `main_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `main_event` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `days` varchar(200) NOT NULL,
  `hours` varchar(200) NOT NULL,
  `description` varchar(800) NOT NULL,
  `img` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_event`
--

LOCK TABLES `main_event` WRITE;
/*!40000 ALTER TABLE `main_event` DISABLE KEYS */;
/*!40000 ALTER TABLE `main_event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_news`
--

DROP TABLE IF EXISTS `main_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `main_news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `article` varchar(1000) NOT NULL,
  `date` date NOT NULL,
  `img` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_news`
--

LOCK TABLES `main_news` WRITE;
/*!40000 ALTER TABLE `main_news` DISABLE KEYS */;
/*!40000 ALTER TABLE `main_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_place`
--

DROP TABLE IF EXISTS `main_place`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `main_place` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `location` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_place`
--

LOCK TABLES `main_place` WRITE;
/*!40000 ALTER TABLE `main_place` DISABLE KEYS */;
INSERT INTO `main_place` VALUES
(1,'Centro de entrenamiento olímpico','https://www.google.cl/maps/place/Centro+Nacional+de+Entrenamiento+Ol%C3%ADmpico/@-33.4662563,-70.5829471,17z/data=!3m1!4b1!4m5!3m4!1s0x9662cfce1a87e97d:0x2abfb4ec72f8802!8m2!3d-33.4662608!4d-70.580758'),
(2,'Centro educacional municipal','https://www.google.cl/maps/place/Centro+Educacional+Municipal+San+Ram%C3%B3n/@-33.5497441,-70.6466099,17z/data=!3m1!4b1!4m5!3m4!1s0x9662da6a6164a871:0xfe91f7ea5efa3d60!8m2!3d-33.5497486!4d-70.6444211'),
(3,'Gimnasio municipal Macul','https://www.google.cl/maps/place/Gimnasio+Municipal+Macul/@-33.4848648,-70.600006,17z/data=!3m1!4b1!4m5!3m4!1s0x9662d021e2bc8ccd:0xe15d3ed6fb7c6452!8m2!3d-33.4848748!4d-70.597638');
/*!40000 ALTER TABLE `main_place` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_student`
--

DROP TABLE IF EXISTS `main_student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `main_student` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `rut` int(11) NOT NULL,
  `birthday` varchar(200) NOT NULL,
  `health` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_student`
--

LOCK TABLES `main_student` WRITE;
/*!40000 ALTER TABLE `main_student` DISABLE KEYS */;
/*!40000 ALTER TABLE `main_student` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-06 23:10:49
