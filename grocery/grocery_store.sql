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
-- Table structure for table `store`
--

DROP TABLE IF EXISTS `store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `store` (
  `store_key` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `store_number` int(11) DEFAULT NULL,
  `store_street` varchar(255) NOT NULL DEFAULT '',
  `city` varchar(255) NOT NULL DEFAULT '',
  `store_county` varchar(255) NOT NULL DEFAULT '',
  `store_state` varchar(255) NOT NULL DEFAULT '',
  `store_zip` varchar(255) NOT NULL DEFAULT '',
  `sales_district` varchar(255) NOT NULL DEFAULT '',
  `sales_region` varchar(255) NOT NULL DEFAULT '',
  `store_manager` varchar(255) NOT NULL DEFAULT '',
  `store_phone` varchar(255) NOT NULL DEFAULT '',
  `store_FAX` varchar(255) NOT NULL DEFAULT '',
  `floor_plan_type` varchar(255) NOT NULL DEFAULT '',
  `photo_processing_type` varchar(255) NOT NULL DEFAULT '',
  `finace_service_type` varchar(255) NOT NULL DEFAULT '',
  `first_opened_date` varchar(255) NOT NULL DEFAULT '',
  `last_remodel_date` varchar(255) NOT NULL DEFAULT '',
  `store_sqft` int(11) DEFAULT NULL,
  `grocery_sqft` int(11) DEFAULT NULL,
  `frozen_sqft` int(11) DEFAULT NULL,
  `meat_sqft` int(11) DEFAULT NULL,
  PRIMARY KEY (`store_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store`
--

LOCK TABLES `store` WRITE;
/*!40000 ALTER TABLE `store` DISABLE KEYS */;
INSERT INTO `store` VALUES (1,'Store No. 1',1,'999 Main Street','New York','New York','NY','91089','New York','Eastern','Jones','(164) 187-7451','(774) 240-5864','Modern','None','None','January 9, 1982','December 5, 1990',23593,17475,3671,2447),(2,'Store No. 2',2,'73 Main Street','Chicago','Cook','IL','14594','Cook','Mid West','Smith','(952) 347-1477','(410) 820-1263','Original','Full','ATM','April 2, 1970','June 4, 1973',28206,22271,3561,2374),(3,'Store No. 3',3,'1 Main Street','Atlanta','Fulton','GA','54315','Fulton','South East','Davis','(249) 418-8041','(589) 502-2586','Compact','Drop Off','ATM','June 14, 1959','November 19, 1967',39696,24390,9184,6122),(4,'Store No. 4',4,'575 Main Street','Los Angeles','Los Angeles','CA','52944','Los Angeles','Pacific','Johnson','(676) 380-5584','(707) 829-2756','Modern','Kiosk','ATM','September 27, 1979','December 1, 1988',23759,16844,4149,2766),(5,'Store No. 5',5,'123 Main Street','San Francisco','San Francisco','CA','86969','San Francisco','Pacific','Green','(791) 157-7387','(796) 504-6104','Original','None','ATM','September 18, 1978','June 29, 1991',24597,15012,5751,3834),(6,'Store No. 6',6,'353 Main Street','Philadelphia','Philadelphia','PA','51458','Philadelphia','Eastern','Brown','(391) 693-2690','(188) 354-4634','Compact','Full','ATM','June 28, 1969','August 30, 1975',38382,30351,4819,3213),(7,'Store No. 7',7,'839 Main Street','Pittsburgh','Allegheny','PA','91949','Allegheny','Eastern','White','(845) 759-9011','(814) 291-1338','Modern','Drop Off','ATM','May 21, 1971','October 20, 1981',23598,14210,5633,3755),(8,'Store No. 8',8,'651 Main Street','New Orleans','Orleans','LA','61163','Orleans','South West','Williams','(464) 847-3460','(958) 941-5925','Original','Kiosk','ATM','September 23, 1958','November 18, 1967',30797,20141,6393,4262),(9,'Store No. 9',9,'912 Main Street','Seattle','King','WA','5764','King','Pacific','Stuber','(189) 237-3436','(726) 637-6282','Compact','None','ATM','March 18, 1955','June 7, 1959',36509,22450,8435,5624),(10,'Store No. 10',10,'752 Main Street','Dallas','Dallas','TX','34876','Dallas','South West','Merz','(609) 767-6331','(386) 463-1875','Modern','Full','ATM','April 13, 1969','January 30, 1982',34791,26354,5062,3375),(11,'Store No. 11',11,'55 Main Street','Cincinnati','Hamilton','OH','44999','Hamilton','Mid West','Erickson','(793) 462-4871','(674) 600-5986','Original','Drop Off','ATM','September 17, 1976','May 15, 1982',20319,16232,2452,1635),(12,'Store No. 12',12,'546 Main Street','Minneapolis','Hennepin','MN','57554','Hennepin','Mid West','Kalman','(689) 796-3474','(522) 334-2333','Compact','Kiosk','None','March 25, 1968','December 18, 1973',30584,21938,5188,3458),(13,'Store No. 13',13,'578 Main Street','Louisville','Jefferson','KY','60041','Jefferson','Mid West','Inmon','(401) 623-9815','(192) 932-4669','Modern','None','ATM','April 13, 1957','November 10, 1967',27694,18670,5415,3610),(14,'Store No. 14',14,'968 Main Street','Phoenix','Maricopa','AZ','86844','Maricopa','Mountain','Strehlo','(302) 466-2136','(720) 101-2629','Original','Full','ATM','November 24, 1957','January 7, 1958',22478,15321,4294,2863),(15,'Store No. 15',15,'228 Main Street','Denver','Denver','CO','21488','Denver','Mountain','Ollom','(818) 481-2585','(956) 162-2386','Compact','Drop Off','Platform','July 24, 1969','October 19, 1973',21215,13305,4746,3164),(16,'Store No. 16',16,'333 Main Street','St. Louis','St. Louis','MO','64373','St. Louis','Mid West','Mantle','(157) 699-8697','(818) 840-3317','Modern','Kiosk','Platform','August 23, 1974','July 13, 1977',30268,22063,4923,3282),(17,'Store No. 17',17,'764 Main Street','Washington','DC','DC','36161','DC','Mid Atlantic','Mays','(443) 710-1457','(890) 459-8884','Original','None','Platform','May 30, 1970','June 23, 1976',33858,22123,7041,4694),(18,'Store No. 18',18,'253 Main Street','Miami','Dade','FL','67141','Dade','South East','Maris','(957) 831-1703','(640) 578-9149','Compact','Full','ATM','January 3, 1981','March 13, 1983',23688,15337,5011,3340),(19,'Store No. 19',19,'999 Main Street','Boston','Suffolk','MA','19552','Suffolk','Eastern','Ruth','(478) 856-5507','(688) 547-7603','Modern','Drop Off','ATM','March 27, 1977','October 25, 1990',23112,16418,4016,2678),(20,'Store No. 20',20,'160 Main Street','Nashville','Davidson','TN','44859','Davidson','Mid West','Cobb','(454) 131-3793','(560) 502-3386','Original','Kiosk','ATM','February 6, 1980','April 9, 1980',34452,27463,4193,2795);
/*!40000 ALTER TABLE `store` ENABLE KEYS */;
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
