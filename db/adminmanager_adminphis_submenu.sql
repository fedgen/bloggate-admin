-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: adminmanager
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `adminphis_submenu`
--

DROP TABLE IF EXISTS `adminphis_submenu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adminphis_submenu` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `submenuname` varchar(200) NOT NULL,
  `submenuroute` varchar(300) NOT NULL,
  `submenudescription` varchar(200) NOT NULL,
  `comment` longtext NOT NULL,
  `submenustatus` varchar(200) NOT NULL,
  `submenuupdated` datetime(6) NOT NULL,
  `submenucreated` datetime(6) NOT NULL,
  `menu_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `adminPHIS_submenu_menu_id_762215db_fk_adminPHIS_menu_id` (`menu_id`),
  KEY `adminPHIS_submenu_user_id_5de961ca_fk_adminPHIS_phisuser_id` (`user_id`),
  CONSTRAINT `adminPHIS_submenu_menu_id_762215db_fk_adminPHIS_menu_id` FOREIGN KEY (`menu_id`) REFERENCES `adminphis_menu` (`id`),
  CONSTRAINT `adminPHIS_submenu_user_id_5de961ca_fk_adminPHIS_phisuser_id` FOREIGN KEY (`user_id`) REFERENCES `adminphis_phisuser` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adminphis_submenu`
--

LOCK TABLES `adminphis_submenu` WRITE;
/*!40000 ALTER TABLE `adminphis_submenu` DISABLE KEYS */;
/*!40000 ALTER TABLE `adminphis_submenu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-20 20:32:27
