-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 12, 2016 at 12:25 PM
-- Server version: 5.7.9
-- PHP Version: 7.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbsym`
--

-- --------------------------------------------------------

--
-- Table structure for table `graphic_info`
--

DROP TABLE IF EXISTS `graphic_info`;
CREATE TABLE IF NOT EXISTS `graphic_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(60) DEFAULT NULL,
  `tooltip_msg` varchar(500) DEFAULT NULL,
  `graphic_info` varchar(500) DEFAULT NULL,
  `insurance_type_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `graphic_info_fk1_idx` (`insurance_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `graphic_info`
--

INSERT INTO `graphic_info` (`id`, `type`, `tooltip_msg`, `graphic_info`, `insurance_type_id`) VALUES
(1, NULL, 'msg1', 'cards@2x.png', 1),
(2, NULL, 'msg2', 'ecosystem@2x.png', 1),
(3, NULL, 'msg3', 'accounting@2x.png', 1),
(4, NULL, 'msg4', 'globe@2x.png', 1),
(5, NULL, 'msg5', 'powerful@2x.png', 1);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `graphic_info`
--
ALTER TABLE `graphic_info`
  ADD CONSTRAINT `graphic_info_fk1` FOREIGN KEY (`insurance_type_id`) REFERENCES `insurance_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
