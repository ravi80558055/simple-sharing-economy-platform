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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `user_category` enum('Customer','Vendor') NOT NULL,
  `f_name` varchar(100) NOT NULL,
  `l_name` varchar(100) NOT NULL,
  `dob` date DEFAULT NULL,
  `gender` enum('Male','Female','Other') DEFAULT NULL,
  `phone` varchar(10) NOT NULL,
  `address` varchar(300) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `zip` varchar(6) NOT NULL,
  `email` varchar(150) NOT NULL,
  `userId` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('Vendor','asd','qwe','2017-06-13','Male','9876543210','poiuyt','asdfgh','Bihar','234567','abc@example.com','asd.qwe.1','asdqwe'),('Customer','asd','qwe','2005-12-04','Female','9876543200','Qwerty','GBN','Uttar Pradesh','719248','qwe@domain.com','asd.qwe.2','asdqwe'),('Customer','Ravi','Pandit','1998-04-15','Male','9773972549','H-452, ALPHA-2','GAUTAM BUDH NAGAR','Uttar Pradesh','201310','abc@example.com','ravi.pandit.1','ravipandit'),('Vendor','Ravi','Pandit','1998-04-15','Male','9773972549','H-452, ALPHA-2','GAUTAM BUDH NAGAR','Uttar Pradesh','201310','abc@example.com','ravi.pandit.2','ravipandit'),('Vendor','Ravi','Pandit','2004-11-10','Male','9773972549','H-452, ALPHA-2, Greater Noida','GAUTAM BUDH NAGAR','Uttar Pradesh','898989','ravi@example.com','ravi.pandit.8055','ravipandit'),('Vendor','SUSHIL','PANDIT','2005-03-16','Male','9717183031','H-452, ALPHA-2','GAUTAM BUDH NAGAR','Uttar Pradesh','201310','SUSHILPANDIT0101@GMAIL.COM','sushil.1','sushil');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-24 16:32:26
