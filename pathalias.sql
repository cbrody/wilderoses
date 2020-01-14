-- MySQL dump 10.15  Distrib 10.0.38-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: c6_test_db
-- ------------------------------------------------------
-- Server version	10.0.38-MariaDB-0ubuntu0.16.04.1

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
-- Table structure for table `path_alias`
--

DROP TABLE IF EXISTS `path_alias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `path_alias` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `revision_id` int(10) unsigned DEFAULT NULL,
  `uuid` varchar(128) CHARACTER SET ascii NOT NULL,
  `langcode` varchar(12) CHARACTER SET ascii NOT NULL,
  `path` varchar(255) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `path_alias_field__uuid__value` (`uuid`),
  UNIQUE KEY `path_alias__revision_id` (`revision_id`),
  KEY `path_alias__status` (`status`,`id`),
  KEY `path_alias__alias_langcode_id_status` (`alias`(191),`langcode`,`id`,`status`),
  KEY `path_alias__path_langcode_id_status` (`path`(191),`langcode`,`id`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COMMENT='The base table for path_alias entities.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `path_alias`
--

LOCK TABLES `path_alias` WRITE;
/*!40000 ALTER TABLE `path_alias` DISABLE KEYS */;
INSERT INTO `path_alias` VALUES (2,2,'c9eba7ad-9655-4161-9520-be10695ad789','en','/node/2','/about',1),(3,3,'07da275f-6ee0-4b0d-b1f7-f19bc3e2a5f7','en','/node/3','/tourdates',1),(4,4,'c878992d-b68d-4786-9977-44977fb74b65','en','/node/5','/reviews',1),(5,5,'e40b086a-95ac-450b-8f07-8ca975d46e58','en','/node/6','/videos',1),(7,7,'d587ba3d-fc51-4da7-a99a-92847f9be8b2','en','/node/7','/masterclasses',1),(8,8,'e2df72aa-ed7c-40e4-af0d-7efb02fb606f','en','/node/9','/gallery',1),(9,9,'726a1f5b-c0f0-4830-b9a7-a8d2b968ccd0','en','/node/1','/blog/2018/11/21/i-will-give-my-love-cherry',1),(10,10,'3513619f-473b-4f8e-a0b6-cf3e11950e59','en','/node/8','/gallery-0',1);
/*!40000 ALTER TABLE `path_alias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `path_alias_revision`
--

DROP TABLE IF EXISTS `path_alias_revision`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `path_alias_revision` (
  `id` int(10) unsigned NOT NULL,
  `revision_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `langcode` varchar(12) CHARACTER SET ascii NOT NULL,
  `path` varchar(255) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `revision_default` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`revision_id`),
  KEY `path_alias__id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COMMENT='The revision table for path_alias entities.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `path_alias_revision`
--

LOCK TABLES `path_alias_revision` WRITE;
/*!40000 ALTER TABLE `path_alias_revision` DISABLE KEYS */;
INSERT INTO `path_alias_revision` VALUES (2,2,'en','/node/2','/about',1,1),(3,3,'en','/node/3','/tourdates',1,1),(4,4,'en','/node/5','/reviews',1,1),(5,5,'en','/node/6','/videos',1,1),(7,7,'en','/node/7','/masterclasses',1,1),(8,8,'en','/node/9','/gallery',1,1),(9,9,'en','/node/1','/blog/2018/11/21/i-will-give-my-love-cherry',1,1),(10,10,'en','/node/8','/gallery-0',1,1);
/*!40000 ALTER TABLE `path_alias_revision` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-01-14 17:59:52
