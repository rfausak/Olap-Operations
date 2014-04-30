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
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `product_key` int(11) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  `full_description` varchar(255) NOT NULL DEFAULT '',
  `SKU_number` varchar(255) NOT NULL DEFAULT '',
  `package_size` varchar(255) NOT NULL DEFAULT '',
  `brand` varchar(255) NOT NULL DEFAULT '',
  `subcategory` varchar(255) NOT NULL DEFAULT '',
  `category` varchar(255) NOT NULL DEFAULT '',
  `department` varchar(255) NOT NULL DEFAULT '',
  `package_type` varchar(255) NOT NULL DEFAULT '',
  `diet_type` varchar(255) NOT NULL DEFAULT '',
  `weight` int(11) DEFAULT NULL,
  `weight_unit` varchar(255) NOT NULL DEFAULT '',
  `unit_per_retail_case` int(11) DEFAULT NULL,
  `unit_per_shippin_case` int(11) DEFAULT NULL,
  `cases_per_pallet` int(11) DEFAULT NULL,
  `shelf_width_cm` float DEFAULT NULL,
  `shelf_height_cm` float DEFAULT NULL,
  `shelf_depth_cm` float DEFAULT NULL,
  PRIMARY KEY (`product_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Lasagna','Lasagna 6 oz','90706287103','6 oz','Cold Gourmet','Frozen Foods','Food','Grocery','box','Diet',6,'oz',48,192,8,5,3,5),(2,'Beef Stew','Beef Stew 6 oz','16005393282','6 oz','Cold Gourmet','Frozen Foods','Food','Grocery','box','Regular',6,'oz',48,192,8,7,3,5),(3,'Turkey Dinner','Turkey Dinner 8 oz','57986858339','8 oz','Frozen Bird','Frozen Foods','Food','Grocery','box','Diet',8,'oz',96,384,8,7,3,5),(4,'Chicken Dinner','Chicken Dinner 8 oz','67955177490','8 oz','Frozen Bird','Frozen Foods','Food','Grocery','box','Regular',8,'oz',96,384,8,7,3,5),(5,'Extra Nougat','Extra Nougat 2 oz','46817560065','2 oz','Chewy Industries','Candy','Food','Grocery','can','Regular',2,'oz',48,192,12,3,6,3),(6,'Lots of Nuts','Lots of Nuts 2 oz','84276830332','2 oz','Chewy Industries','Candy','Food','Grocery','can','Regular',2,'oz',48,192,12,3,6,3),(7,'Sweet Tooth','Sweet Tooth 2 oz','51770124461','2 oz','Chewy Industries','Candy','Food','Grocery','bottle','Regular',2,'oz',72,288,12,3,8,3),(8,'Fizzy Light','Fizzy Light 6 oz','33411763259','6 oz','Big Can','Soft Drinks','Drinks','Grocery','can','Diet',6,'oz',48,192,8,5,6,5),(9,'Fizzy Classic','Fizzy Classic 6 oz','95946398896','6 oz','Big Can','Soft Drinks','Drinks','Grocery','can','Regular',6,'oz',48,192,8,5,6,5),(10,'Athletic Drink','Athletic Drink 6 oz','88602993232','6 oz','Big Can','Soft Drinks','Drinks','Grocery','can','Diet',6,'oz',48,192,8,5,6,5),(11,'Strong Cola','Strong Cola 8 oz','59015963215','8 oz','National Bottle','Soft Drinks','Drinks','Grocery','can','Regular',8,'oz',48,192,8,5,6,5),(12,'Clear Refresher','Clear Refresher 6 oz','94794170004','6 oz','National Bottle','Soft Drinks','Drinks','Grocery','can','Diet',6,'oz',48,192,8,5,6,5),(13,'Paper Towels','Paper Towels 8 oz','22563048263','8 oz','Squeezable Inc','Cleaning Supplies','Supplies','Household','plastic bag','NA',8,'oz',16,64,16,9,13,5),(14,'Dry Tissues','Dry Tissues 5 oz','20716427467','5 oz','Squeezable Inc','Cleaning Supplies','Supplies','Household','box','NA',5,'oz',48,192,16,4,2,3),(15,'Wet Wipes','Wet Wipes 8 oz','65053589655','8 oz','Squeezable Inc','Cleaning Supplies','Supplies','Household','plastic box','NA',8,'oz',48,192,16,8,5,4),(16,'Salty Corn','Salty Corn 2 oz','80323441322','2 oz','American Corn','Salty Snacks','Food','Grocery','bag','Regular',2,'oz',24,96,12,12,5,4),(17,'Dried Grits','Dried Grits 2 oz','15536655574','2 oz','American Corn','Salty Snacks','Food','Grocery','bag','Diet',2,'oz',24,96,12,12,5,4),(18,'Power Chips','Power Chips 3 oz','44513822387','3 oz','American Corn','Salty Snacks','Food','Grocery','bag','Regular',3,'oz',24,96,12,12,5,4),(19,'Onion Slices','Onion Slices 3 oz','49269095527','3 oz','Western Vegetable','Salty Snacks','Food','Grocery','bag','Regular',3,'oz',24,96,12,6,6,4),(20,'Buffalo Jerky','Buffalo Jerky 3 oz','40806606950','3 oz','Western Vegetable','Salty Snacks','Food','Grocery','bag','Regular',3,'oz',24,96,12,5,3,2),(21,'Lasagna','Lasagna 9 oz','35932897460','9 oz','Cold Gourmet','Frozen Foods','Food','Grocery','box','Diet',9,'oz',32,128,8,5.75,3.45,5.75),(22,'Beef Stew','Beef Stew 9 oz','34551157058','9 oz','Cold Gourmet','Frozen Foods','Food','Grocery','box','Regular',9,'oz',32,128,8,8.05,3.45,5.75),(23,'Turkey Dinner','Turkey Dinner 12 oz','71307965759','12 oz','Frozen Bird','Frozen Foods','Food','Grocery','box','Diet',12,'oz',64,256,8,8.05,3.45,5.75),(24,'Chicken Dinner','Chicken Dinner 12 oz','25464035081','12 oz','Frozen Bird','Frozen Foods','Food','Grocery','box','Regular',12,'oz',64,256,8,8.05,3.45,5.75),(25,'Extra Nougat','Extra Nougat 3 oz','98524228144','3 oz','Chewy Industries','Candy','Food','Grocery','can','Regular',3,'oz',32,128,12,3.45,6.9,3.45),(26,'Lots of Nuts','Lots of Nuts 3 oz','24247989491','3 oz','Chewy Industries','Candy','Food','Grocery','can','Regular',3,'oz',32,128,12,3.45,6.9,3.45),(27,'Sweet Tooth','Sweet Tooth 3 oz','10787621276','3 oz','Chewy Industries','Candy','Food','Grocery','bottle','Regular',3,'oz',48,192,12,3.45,9.2,3.45),(28,'Fizzy Light','Fizzy Light 9 oz','92822703206','9 oz','Big Can','Soft Drinks','Drinks','Grocery','can','Diet',9,'oz',32,128,8,5.75,6.9,5.75),(29,'Fizzy Classic','Fizzy Classic 9 oz','74695428497','9 oz','Big Can','Soft Drinks','Drinks','Grocery','can','Regular',9,'oz',32,128,8,5.75,6.9,5.75),(30,'Athletic Drink','Athletic Drink 9 oz','48530259240','9 oz','Big Can','Soft Drinks','Drinks','Grocery','can','Diet',9,'oz',32,128,8,5.75,6.9,5.75),(31,'Strong Cola','Strong Cola 12 oz','10478516528','12 oz','National Bottle','Soft Drinks','Drinks','Grocery','can','Regular',12,'oz',32,128,8,5.75,6.9,5.75),(32,'Clear Refresher','Clear Refresher 9 oz','89835195915','9 oz','National Bottle','Soft Drinks','Drinks','Grocery','can','Diet',9,'oz',32,128,8,5.75,6.9,5.75),(33,'Paper Towels','Paper Towels 12 oz','62974321939','12 oz','Squeezable Inc','Cleaning Supplies','Supplies','Household','plastic bag','NA',12,'oz',8,32,16,10.35,14.95,5.75),(34,'Dry Tissues','Dry Tissues 7.5 oz','43507173902','7.5 oz','Squeezable Inc','Cleaning Supplies','Supplies','Household','box','NA',8,'oz',32,128,16,4.6,2.3,3.45),(35,'Wet Wipes','Wet Wipes 12 oz','92028763643','12 oz','Squeezable Inc','Cleaning Supplies','Supplies','Household','plastic box','NA',12,'oz',32,128,16,9.2,5.75,4.6),(36,'Salty Corn','Salty Corn 3 oz','54983505685','3 oz','American Corn','Salty Snacks','Food','Grocery','bag','Regular',3,'oz',16,64,12,13.8,5.75,4.6),(37,'Dried Grits','Dried Grits 3 oz','11184804406','3 oz','American Corn','Salty Snacks','Food','Grocery','bag','Diet',3,'oz',16,64,12,13.8,5.75,4.6),(38,'Power Chips','Power Chips 4.5 oz','51364643658','4.5 oz','American Corn','Salty Snacks','Food','Grocery','bag','Regular',5,'oz',16,64,12,13.8,5.75,4.6),(39,'Onion Slices','Onion Slices 4.5 oz','72546822646','4.5 oz','Western Vegetable','Salty Snacks','Food','Grocery','bag','Regular',5,'oz',16,64,12,6.9,6.9,4.6),(40,'Buffalo Jerky','Buffalo Jerky 4.5 oz','37331588167','4.5 oz','Western Vegetable','Salty Snacks','Food','Grocery','bag','Regular',5,'oz',16,64,12,5.75,3.45,2.3),(41,'Lasagna','Lasagna 13.5 oz','84302852271','13.5 oz','Cold Gourmet','Frozen Foods','Food','Grocery','box','Diet',14,'oz',20,80,8,6.6125,3.9675,6.6125),(42,'Beef Stew','Beef Stew 13.5 oz','23430942207','13.5 oz','Cold Gourmet','Frozen Foods','Food','Grocery','box','Regular',14,'oz',20,80,8,9.2575,3.9675,6.6125),(43,'Turkey Dinner','Turkey Dinner 18 oz','77016028053','18 oz','Frozen Bird','Frozen Foods','Food','Grocery','box','Diet',18,'oz',40,160,8,9.2575,3.9675,6.6125),(44,'Chicken Dinner','Chicken Dinner 18 oz','83931167559','18 oz','Frozen Bird','Frozen Foods','Food','Grocery','box','Regular',18,'oz',40,160,8,9.2575,3.9675,6.6125),(45,'Extra Nougat','Extra Nougat 4.5 oz','76234081227','4.5 oz','Chewy Industries','Candy','Food','Grocery','can','Regular',5,'oz',20,80,12,3.9675,7.935,3.9675),(46,'Lots of Nuts','Lots of Nuts 4.5 oz','85681418862','4.5 oz','Chewy Industries','Candy','Food','Grocery','can','Regular',5,'oz',20,80,12,3.9675,7.935,3.9675),(47,'Sweet Tooth','Sweet Tooth 4.5 oz','32943352203','4.5 oz','Chewy Industries','Candy','Food','Grocery','bottle','Regular',5,'oz',32,128,12,3.9675,10.58,3.9675),(48,'Fizzy Light','Fizzy Light 13.5 oz','59632819867','13.5 oz','Big Can','Soft Drinks','Drinks','Grocery','can','Diet',14,'oz',20,80,8,6.6125,7.935,6.6125),(49,'Fizzy Classic','Fizzy Classic 13.5 oz','64758233722','13.5 oz','Big Can','Soft Drinks','Drinks','Grocery','can','Regular',14,'oz',20,80,8,6.6125,7.935,6.6125),(50,'Athletic Drink','Athletic Drink 13.5 oz','63998140597','13.5 oz','Big Can','Soft Drinks','Drinks','Grocery','can','Diet',14,'oz',20,80,8,6.6125,7.935,6.6125),(51,'Strong Cola','Strong Cola 18 oz','78532224693','18 oz','National Bottle','Soft Drinks','Drinks','Grocery','can','Regular',18,'oz',20,80,8,6.6125,7.935,6.6125),(52,'Clear Refresher','Clear Refresher 13.5 oz','26124581284','13.5 oz','National Bottle','Soft Drinks','Drinks','Grocery','can','Diet',14,'oz',20,80,8,6.6125,7.935,6.6125),(53,'Paper Towels','Paper Towels 18 oz','99257418302','18 oz','Squeezable Inc','Cleaning Supplies','Supplies','Household','plastic bag','NA',18,'oz',4,16,16,11.9025,17.1925,6.6125),(54,'Dry Tissues','Dry Tissues 11.2 oz','46205094999','11.2 oz','Squeezable Inc','Cleaning Supplies','Supplies','Household','box','NA',11,'oz',20,80,16,5.29,2.645,3.9675),(55,'Wet Wipes','Wet Wipes 18 oz','26231258086','18 oz','Squeezable Inc','Cleaning Supplies','Supplies','Household','plastic box','NA',18,'oz',20,80,16,10.58,6.6125,5.29),(56,'Salty Corn','Salty Corn 4.5 oz','21628878100','4.5 oz','American Corn','Salty Snacks','Food','Grocery','bag','Regular',5,'oz',8,32,12,15.87,6.6125,5.29),(57,'Dried Grits','Dried Grits 4.5 oz','55681968175','4.5 oz','American Corn','Salty Snacks','Food','Grocery','bag','Diet',5,'oz',8,32,12,15.87,6.6125,5.29),(58,'Power Chips','Power Chips 6.7 oz','43992125296','6.7 oz','American Corn','Salty Snacks','Food','Grocery','bag','Regular',7,'oz',8,32,12,15.87,6.6125,5.29),(59,'Onion Slices','Onion Slices 6.7 oz','50616533214','6.7 oz','Western Vegetable','Salty Snacks','Food','Grocery','bag','Regular',7,'oz',8,32,12,7.935,7.935,5.29),(60,'Buffalo Jerky','Buffalo Jerky 6.7 oz','69467630292','6.7 oz','Western Vegetable','Salty Snacks','Food','Grocery','bag','Regular',7,'oz',8,32,12,6.6125,3.9675,2.645);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-04-29 17:41:39
