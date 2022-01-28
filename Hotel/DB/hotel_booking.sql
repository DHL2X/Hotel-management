-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: hotel
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `booking`
--

DROP TABLE IF EXISTS `booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booking` (
  `booking_id` varchar(45) NOT NULL,
  `customer_id` varchar(15) NOT NULL,
  `room_id` varchar(20) NOT NULL,
  `booking_date` datetime NOT NULL,
  `check_in` datetime NOT NULL,
  `check_out` datetime NOT NULL,
  `payment_status` tinyint DEFAULT NULL,
  PRIMARY KEY (`booking_id`),
  KEY `booking_ibfk_1` (`room_id`),
  KEY `booking_ibfk_2` (`customer_id`),
  CONSTRAINT `booking_ibfk_1` FOREIGN KEY (`room_id`) REFERENCES `room` (`room_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `booking_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `customer_info` (`customer_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking`
--

LOCK TABLES `booking` WRITE;
/*!40000 ALTER TABLE `booking` DISABLE KEYS */;
INSERT INTO `booking` VALUES ('B1','235','201A','2021-01-12 00:18:00','2021-01-12 08:15:00','2021-01-13 10:15:00',1),('B2','111','302A','2021-02-10 12:34:56','2021-02-15 12:00:00','2021-02-20 10:30:00',1),('B3','512','203A','2021-02-25 21:43:02','2021-05-25 21:43:02','2021-05-26 08:30:00',1),('B4','325','102A','2021-06-14 09:15:39','2021-06-20 10:00:00','2021-06-23 10:30:00',1),('B5','351','202B','2021-06-30 11:11:11','2021-07-02 07:00:00','2021-07-09 08:00:00',1),('B6','764','103B','2021-07-12 08:05:10','2021-07-13 15:30:00','2021-07-20 15:30:00',1),('B7','745','401B','2021-08-24 18:10:20','2021-08-24 18:10:20','2021-08-28 07:00:00',1),('B8','561','103B','2021-09-09 09:09:09','2021-09-10 07:15:00','2021-09-11 11:00:00',1),('B9','634','203A','2021-11-15 22:19:00','2021-11-20 14:23:00','2021-11-23 09:20:00',1);
/*!40000 ALTER TABLE `booking` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-23 22:30:47
