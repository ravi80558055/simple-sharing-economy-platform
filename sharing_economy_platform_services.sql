CREATE DATABASE  IF NOT EXISTS `sharing_economy_platform` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `sharing_economy_platform`;
-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: sharing_economy_platform
-- ------------------------------------------------------
-- Server version	5.5.49

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
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `services` (
  `serviceId` int(11) NOT NULL,
  `serviceName` varchar(50) NOT NULL,
  `serviceDescription` varchar(200) DEFAULT NULL,
  `serviceProvicerPhone` varchar(10) NOT NULL,
  `serviceTimeFrom` varchar(10) DEFAULT NULL,
  `serviceTimeTo` varchar(10) DEFAULT NULL,
  `serviceLocation` varchar(70) NOT NULL,
  `servicePrice` varchar(45) NOT NULL,
  `vendorId` varchar(50) NOT NULL,
  PRIMARY KEY (`serviceId`),
  KEY `vendorId_idx` (`vendorId`),
  CONSTRAINT `serviceVendorId` FOREIGN KEY (`vendorId`) REFERENCES `users` (`userId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services`
--

LOCK TABLES `services` WRITE;
/*!40000 ALTER TABLE `services` DISABLE KEYS */;
INSERT INTO `services` VALUES (101,'Pickup Service','Pickup from your location','9898989898','10:00','17:00','Hinjawadi','500','asd.qwe.1'),(102,'Delivery','Delivery at your doorstep','9879879879','09:00','22:00','BRT','300','asd.qwe.1'),(103,'xyz','','9898989898','10:00','18:00','Hinjawadi','300','ravi.pandit.8055'),(104,'Abc','qwerty','9898989898','10:00','18:01','BRT','1000','sushil.1');
/*!40000 ALTER TABLE `services` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-24 16:32:21
