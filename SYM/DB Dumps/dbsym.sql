CREATE DATABASE  IF NOT EXISTS `dbsym` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `dbsym`;
-- MySQL dump 10.13  Distrib 5.6.17, for Win64 (x86_64)
--
-- Host: localhost    Database: dbsym
-- ------------------------------------------------------
-- Server version	5.5.44

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
-- Table structure for table `aditional_covers`
--

DROP TABLE IF EXISTS `aditional_covers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aditional_covers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cover_name` varchar(45) DEFAULT NULL,
  `cover_description` varchar(45) DEFAULT NULL,
  `price` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aditional_covers`
--

LOCK TABLES `aditional_covers` WRITE;
/*!40000 ALTER TABLE `aditional_covers` DISABLE KEYS */;
/*!40000 ALTER TABLE `aditional_covers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `insurance_quotation`
--

DROP TABLE IF EXISTS `insurance_quotation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `insurance_quotation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `insurance_quotation_id` varchar(45) NOT NULL,
  `v_province` varchar(45) DEFAULT NULL,
  `v_letters` varchar(45) DEFAULT NULL,
  `v_number` varchar(45) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `mobile` varchar(45) DEFAULT NULL,
  `nic` varchar(45) DEFAULT NULL,
  `make` varchar(45) DEFAULT NULL,
  `model` varchar(45) DEFAULT NULL,
  `year` varchar(45) DEFAULT NULL,
  `value` double DEFAULT NULL,
  `no_claim_bonous` double DEFAULT NULL,
  `current_insurer` varchar(45) DEFAULT NULL,
  `cover_type_required` int(11) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `voluntary_excess` varchar(45) DEFAULT NULL,
  `purpose` varchar(100) DEFAULT NULL,
  `authorise_agent_repair` int(11) DEFAULT NULL,
  `engine_no` varchar(45) DEFAULT NULL,
  `chassis_no` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`insurance_quotation_id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `insurance_quotation`
--

LOCK TABLES `insurance_quotation` WRITE;
/*!40000 ALTER TABLE `insurance_quotation` DISABLE KEYS */;
/*!40000 ALTER TABLE `insurance_quotation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `insurance_quotation_aditional_covers`
--

DROP TABLE IF EXISTS `insurance_quotation_aditional_covers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `insurance_quotation_aditional_covers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `insurance_quotation_id` varchar(45) NOT NULL,
  `aditional_cover` int(11) NOT NULL,
  `price` double DEFAULT '0',
  PRIMARY KEY (`insurance_quotation_id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `insurance_quotation_aditional_covers_fk2_idx` (`aditional_cover`),
  CONSTRAINT `insurance_quotation_aditional_covers_fk1` FOREIGN KEY (`insurance_quotation_id`) REFERENCES `insurance_quotation` (`insurance_quotation_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `insurance_quotation_aditional_covers_fk2` FOREIGN KEY (`aditional_cover`) REFERENCES `aditional_covers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `insurance_quotation_aditional_covers`
--

LOCK TABLES `insurance_quotation_aditional_covers` WRITE;
/*!40000 ALTER TABLE `insurance_quotation_aditional_covers` DISABLE KEYS */;
/*!40000 ALTER TABLE `insurance_quotation_aditional_covers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_info`
--

DROP TABLE IF EXISTS `payment_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_id` varchar(45) DEFAULT NULL,
  `shipping_mentod` int(11) NOT NULL,
  `payment_method` varchar(45) DEFAULT NULL,
  `insurance_quotation_id` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `shipping_fk1_idx` (`shipping_mentod`),
  KEY `shipping_fk2_idx` (`insurance_quotation_id`),
  CONSTRAINT `shipping_fk2` FOREIGN KEY (`insurance_quotation_id`) REFERENCES `insurance_quotation` (`insurance_quotation_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `shipping_fk1` FOREIGN KEY (`shipping_mentod`) REFERENCES `shipping_method` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_info`
--

LOCK TABLES `payment_info` WRITE;
/*!40000 ALTER TABLE `payment_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sampletable`
--

DROP TABLE IF EXISTS `sampletable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sampletable` (
  `id` int(11) NOT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `Age` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sampletable`
--

LOCK TABLES `sampletable` WRITE;
/*!40000 ALTER TABLE `sampletable` DISABLE KEYS */;
INSERT INTO `sampletable` VALUES (1,'Sample','12');
/*!40000 ALTER TABLE `sampletable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipping_method`
--

DROP TABLE IF EXISTS `shipping_method`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shipping_method` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shipping_method` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipping_method`
--

LOCK TABLES `shipping_method` WRITE;
/*!40000 ALTER TABLE `shipping_method` DISABLE KEYS */;
/*!40000 ALTER TABLE `shipping_method` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Sam','Colombo','admin@gmail.com','07771231233'),(2,'Dam','Galle','dam@gmail.com','07771235533'),(3,'John','Kandy','john@gmail.com','07771234233'),(5,'kamal','angoda','pkamal@pcloud.com','0546689456');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `value_added_service`
--

DROP TABLE IF EXISTS `value_added_service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `value_added_service` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `service` varchar(100) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `price` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `value_added_service`
--

LOCK TABLES `value_added_service` WRITE;
/*!40000 ALTER TABLE `value_added_service` DISABLE KEYS */;
/*!40000 ALTER TABLE `value_added_service` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-06-29 18:46:51
