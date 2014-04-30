CREATE DATABASE  IF NOT EXISTS `grocery` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `grocery`;
-- MySQL dump 10.13  Distrib 5.6.13, for Win32 (x86)
--
-- Host: 127.0.0.1    Database: grocery
-- ------------------------------------------------------
-- Server version	5.6.14

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
-- Table structure for table `promotion`
--

DROP TABLE IF EXISTS `promotion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `promotion` (
  `promotion_key` int(11) NOT NULL,
  `promotion_name` varchar(255) NOT NULL DEFAULT '',
  `price_reduction` varchar(255) NOT NULL DEFAULT '',
  `ad_type` varchar(255) NOT NULL DEFAULT '',
  `display_type` varchar(255) NOT NULL DEFAULT '',
  `coupon_type` varchar(255) NOT NULL DEFAULT '',
  `ad_media_type` varchar(255) NOT NULL DEFAULT '',
  `display_provider` varchar(255) NOT NULL DEFAULT '',
  `promo_cost` int(11) DEFAULT NULL,
  `promo_begin_date` varchar(255) NOT NULL DEFAULT '',
  `promo_end_date` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`promotion_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promotion`
--

LOCK TABLES `promotion` WRITE;
/*!40000 ALTER TABLE `promotion` DISABLE KEYS */;
INSERT INTO `promotion` VALUES (1,'Blue Ribbon Discounts','Temporary','Daily Paper','None','None','Paper','None',2000,'10/1/94','10/15/94'),(2,'Red Carpet Closeout','Markdown','Sunday Paper','None','None','Paper','None',1000,'10/1/95','10/15/95'),(3,'Ad Blitz','None','Paper and Radio','None','None','Paper and Radio','None',7000,'11/10/94','11/17/94'),(4,'Ads and Racks','None','Paper and Radio','Rack','None','Paper and Radio','Smith',3000,'11/11/95','11/18/95'),(5,'Shelf Talkers','None','None','Shelf Tag','None','None','Jones',500,'10/1/94','12/31/94'),(6,'POS Grabbers','None','None','Register','None','None','Smith',600,'10/1/95','12/31/95'),(7,'Two for One','Coupon Only','Sunday Paper','None','Paper','Paper','None',1000,'11/15/94','11/30/94'),(8,'Cents Off Coupon','Coupon Only','Mailer','None','Mailer','None','None',1000,'11/15/95','11/30/95'),(9,'Redemption','Redemption Only','Attached','None','Attached','None','None',5000,'12/1/95','12/31/95'),(10,'Big Promo','Temporary','Daily Paper','End Aisle','None','Paper','Smith',8000,'12/15/95','12/31/95'),(11,'No Promotion','None','None','None','None','None','None',0,'10/1/94','12/31/95');
/*!40000 ALTER TABLE `promotion` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-04-29 17:41:40
