-- MySQL dump 10.13  Distrib 5.6.21, for osx10.8 (x86_64)
--
-- Host: localhost    Database: d8_wilderoses
-- ------------------------------------------------------
-- Server version	8.0.18

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
-- Table structure for table `path_alias`
--

DROP TABLE IF EXISTS `path_alias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `path_alias` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `revision_id` int(10) unsigned DEFAULT NULL,
  `uuid` varchar(128) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL,
  `langcode` varchar(12) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL,
  `path` varchar(255) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `path_alias_field__uuid__value` (`uuid`),
  UNIQUE KEY `path_alias__revision_id` (`revision_id`),
  KEY `path_alias__status` (`status`,`id`),
  KEY `path_alias__alias_langcode_id_status` (`alias`(191),`langcode`,`id`,`status`),
  KEY `path_alias__path_langcode_id_status` (`path`(191),`langcode`,`id`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='The base table for path_alias entities.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `path_alias`
--

LOCK TABLES `path_alias` WRITE;
/*!40000 ALTER TABLE `path_alias` DISABLE KEYS */;
INSERT INTO `path_alias` VALUES (2,2,'167b7c4e-8693-4a75-b2a7-aeb01a509251','en','/node/2','/about',1),(3,3,'02c07e93-4143-47c1-a87c-f57c1cbc7a59','en','/node/3','/tourdates',1),(4,4,'f672e7c7-8f39-44e8-92cc-2e32a339f91e','en','/node/5','/reviews',1),(5,5,'c458370d-aa52-4e76-a648-d38ffdd2a388','en','/node/6','/videos',1),(7,7,'2126cf14-224f-43c6-a91d-f05642f5da30','en','/node/7','/masterclasses',1),(8,8,'545c9de6-251e-4f24-b3af-66c58df1f993','en','/node/9','/gallery',1),(9,9,'5ee9ab0f-aa12-45d1-a86c-f6fc13c5103d','en','/node/1','/blog/2018/11/21/i-will-give-my-love-cherry',1),(10,10,'72e57c58-162a-476e-a7ee-b6f30e7a59a7','en','/node/8','/gallery-0',1),(12,12,'09e89353-9f14-485e-a166-df9b5abe1e88','en','/product/8','/patrons',1),(13,13,'14e8ec9e-6606-4fd0-b8e4-5c3ca7e8658d','en','/product/9','/test',1);
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
  `langcode` varchar(12) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL,
  `path` varchar(255) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `revision_default` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`revision_id`),
  KEY `path_alias__id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='The revision table for path_alias entities.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `path_alias_revision`
--

LOCK TABLES `path_alias_revision` WRITE;
/*!40000 ALTER TABLE `path_alias_revision` DISABLE KEYS */;
INSERT INTO `path_alias_revision` VALUES (2,2,'en','/node/2','/about',1,1),(3,3,'en','/node/3','/tourdates',1,1),(4,4,'en','/node/5','/reviews',1,1),(5,5,'en','/node/6','/videos',1,1),(7,7,'en','/node/7','/masterclasses',1,1),(8,8,'en','/node/9','/gallery',1,1),(9,9,'en','/node/1','/blog/2018/11/21/i-will-give-my-love-cherry',1,1),(10,10,'en','/node/8','/gallery-0',1,1),(12,12,'en','/product/8','/patrons',1,1),(13,13,'en','/product/9','/test',1,1);
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

-- Dump completed on 2020-03-15 15:55:42
