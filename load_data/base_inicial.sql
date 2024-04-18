-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: liga
-- ------------------------------------------------------
-- Server version	8.0.36

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

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add teams',7,'add_teams'),(26,'Can change teams',7,'change_teams'),(27,'Can delete teams',7,'delete_teams'),(28,'Can view teams',7,'view_teams'),(29,'Can add player',8,'add_player'),(30,'Can change player',8,'change_player'),(31,'Can delete player',8,'delete_player'),(32,'Can view player',8,'view_player'),(33,'Can add partido resultado',9,'add_partidoresultado'),(34,'Can change partido resultado',9,'change_partidoresultado'),(35,'Can delete partido resultado',9,'delete_partidoresultado'),(36,'Can view partido resultado',9,'view_partidoresultado'),(37,'Can add puntos_equipo',10,'add_puntos_equipo'),(38,'Can change puntos_equipo',10,'change_puntos_equipo'),(39,'Can delete puntos_equipo',10,'delete_puntos_equipo'),(40,'Can view puntos_equipo',10,'view_puntos_equipo');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$720000$CVkTPt5MezOjgIHicnk9uv$Ju8Gw99/lx/t6SZWjGGlGOHb7xB5NTK065ixXMc/+mU=','2024-04-18 08:26:28.554857',1,'mauricio','','','mauricio@mail.com',1,1,'2024-04-10 09:23:42.017508'),(2,'pbkdf2_sha256$720000$nKg8Ci767g6uJMY7L166Xf$xhCb1p1cuLyIPaw6UOwKlcYMZ5h5LL6cMHGYEL9aAKE=','2024-04-10 10:31:43.354826',1,'edwin','','','edwin@mail.com',1,1,'2024-04-10 10:21:13.144964');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2024-04-10 11:06:18.290124','3','Player object (3)',1,'[{\"added\": {}}]',8,2);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(9,'futbol','partidoresultado'),(8,'futbol','player'),(10,'futbol','puntos_equipo'),(7,'futbol','teams'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2024-04-10 09:21:34.383186'),(2,'auth','0001_initial','2024-04-10 09:21:35.011765'),(3,'admin','0001_initial','2024-04-10 09:21:35.207039'),(4,'admin','0002_logentry_remove_auto_add','2024-04-10 09:21:35.212411'),(5,'admin','0003_logentry_add_action_flag_choices','2024-04-10 09:21:35.217816'),(6,'contenttypes','0002_remove_content_type_name','2024-04-10 09:21:35.296520'),(7,'auth','0002_alter_permission_name_max_length','2024-04-10 09:21:35.356849'),(8,'auth','0003_alter_user_email_max_length','2024-04-10 09:21:35.376222'),(9,'auth','0004_alter_user_username_opts','2024-04-10 09:21:35.381004'),(10,'auth','0005_alter_user_last_login_null','2024-04-10 09:21:35.444191'),(11,'auth','0006_require_contenttypes_0002','2024-04-10 09:21:35.447096'),(12,'auth','0007_alter_validators_add_error_messages','2024-04-10 09:21:35.452564'),(13,'auth','0008_alter_user_username_max_length','2024-04-10 09:21:35.503115'),(14,'auth','0009_alter_user_last_name_max_length','2024-04-10 09:21:35.563495'),(15,'auth','0010_alter_group_name_max_length','2024-04-10 09:21:35.578627'),(16,'auth','0011_update_proxy_permissions','2024-04-10 09:21:35.584609'),(17,'auth','0012_alter_user_first_name_max_length','2024-04-10 09:21:35.643095'),(18,'sessions','0001_initial','2024-04-10 10:30:33.469539');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('3agu6dfl5f4vwx4kuaq1nlt1eo0zfxkl','.eJxVjEEOwiAQAP_C2ZAuIks9eu8bCLuwUjU0Ke3J-HdD0oNeZybzViHuWwl7y2uYk7oqo06_jCI_c-0iPWK9L5qXuq0z6Z7owzY9LSm_bkf7Nyixlb5NcMHBjuCYDAFItN6AIbRMA55RPLAR5xAJxJH4JDSyT4aRmBHV5wvMgTgE:1ruVF1:fsDxLKrcQBo9BBsDtdCyCInFqtmdRY0lVsFiBNRg12Y','2024-04-24 10:31:43.358006'),('52y41sy12tc71icr9915o7essg3rys4r','.eJxVjEEOwiAQRe_C2hBGhgou3XuGZhgGqRpISrsy3l2bdKHb_977LzXSupRx7TKPU1JnBerwu0Xih9QNpDvVW9Pc6jJPUW-K3mnX15bkedndv4NCvXxryjYTIYuTIGAxnEJwjJkRTbCeM4lLNpojAoERnz0Y5IEjR5tgYPX-AAApOIg:1rxN6C:aAJkWTNNE2LtbDaiTI9UXNb4KF2-YC5icEra9DOhTB8','2024-05-02 08:26:28.562802');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `futbol_partidoresultado`
--

DROP TABLE IF EXISTS `futbol_partidoresultado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `futbol_partidoresultado` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `jornada` int NOT NULL,
  `goles_local` int unsigned NOT NULL,
  `goles_visitante` int unsigned NOT NULL,
  `equipo_local_id` bigint NOT NULL,
  `equipo_visitante_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `futbol_partidoresult_equipo_local_id_31367fbf_fk_futbol_te` (`equipo_local_id`),
  KEY `futbol_partidoresult_equipo_visitante_id_14c55917_fk_futbol_te` (`equipo_visitante_id`),
  CONSTRAINT `futbol_partidoresult_equipo_local_id_31367fbf_fk_futbol_te` FOREIGN KEY (`equipo_local_id`) REFERENCES `futbol_teams` (`id`),
  CONSTRAINT `futbol_partidoresult_equipo_visitante_id_14c55917_fk_futbol_te` FOREIGN KEY (`equipo_visitante_id`) REFERENCES `futbol_teams` (`id`),
  CONSTRAINT `futbol_partidoresultado_chk_1` CHECK ((`goles_local` >= 0)),
  CONSTRAINT `futbol_partidoresultado_chk_2` CHECK ((`goles_visitante` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `futbol_partidoresultado`
--

LOCK TABLES `futbol_partidoresultado` WRITE;
/*!40000 ALTER TABLE `futbol_partidoresultado` DISABLE KEYS */;
INSERT INTO `futbol_partidoresultado` VALUES (1,1,3,3,1,4),(2,1,2,2,3,6);
/*!40000 ALTER TABLE `futbol_partidoresultado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `futbol_player`
--

DROP TABLE IF EXISTS `futbol_player`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `futbol_player` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `age` int NOT NULL,
  `position` varchar(100) NOT NULL,
  `team_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `futbol_player_team_id_8366606e_fk_futbol_teams_id` (`team_id`),
  CONSTRAINT `futbol_player_team_id_8366606e_fk_futbol_teams_id` FOREIGN KEY (`team_id`) REFERENCES `futbol_teams` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `futbol_player`
--

LOCK TABLES `futbol_player` WRITE;
/*!40000 ALTER TABLE `futbol_player` DISABLE KEYS */;
INSERT INTO `futbol_player` VALUES (1,'Jan','Oblack',31,'portero',5),(2,'Jose ','Gimenez',29,'defensa',5),(3,'Vinicius Jr','Paixão de Oliveira',23,'Delantero',1);
/*!40000 ALTER TABLE `futbol_player` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `futbol_puntos_equipo`
--

DROP TABLE IF EXISTS `futbol_puntos_equipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `futbol_puntos_equipo` (
  `id` int NOT NULL AUTO_INCREMENT,
  `jornada` int NOT NULL,
  `puntos` int NOT NULL,
  `team_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pun_equipo_idx` (`team_id`),
  CONSTRAINT `pun_equipo` FOREIGN KEY (`team_id`) REFERENCES `futbol_teams` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `futbol_puntos_equipo`
--

LOCK TABLES `futbol_puntos_equipo` WRITE;
/*!40000 ALTER TABLE `futbol_puntos_equipo` DISABLE KEYS */;
INSERT INTO `futbol_puntos_equipo` VALUES (1,1,1,1),(2,1,1,4),(3,1,1,3),(4,1,1,6),(5,1,3,5),(6,1,3,2),(7,1,0,7),(8,1,0,8),(9,2,3,4),(10,2,3,5),(11,2,0,1),(12,2,0,2),(13,2,0,3),(14,2,3,6),(15,2,3,7),(16,2,0,8);
/*!40000 ALTER TABLE `futbol_puntos_equipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `futbol_teams`
--

DROP TABLE IF EXISTS `futbol_teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `futbol_teams` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `team` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `logo` blob,
  `total_points` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `futbol_teams`
--

LOCK TABLES `futbol_teams` WRITE;
/*!40000 ALTER TABLE `futbol_teams` DISABLE KEYS */;
INSERT INTO `futbol_teams` VALUES (1,'Real Madrid','España','Madrid','',1),(2,'FC Barcelona','España','Barceloa',NULL,3),(3,'Arsernal','Inglaterra','Londres',NULL,1),(4,'Mancherter City','Inglaterra','Manchester',NULL,4),(5,'Atletico Madrid','España','Madrid',NULL,6),(6,'Bayer München','Alemania','Múnich',NULL,4),(7,'Paris Saint-Germani','Francia','Paris',NULL,3),(8,'Borussia Dortmund','Alemania','Dormunt',NULL,0);
/*!40000 ALTER TABLE `futbol_teams` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-18 10:33:01
