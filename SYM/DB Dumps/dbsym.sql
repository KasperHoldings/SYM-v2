-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 02, 2016 at 12:44 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.5.38

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
-- Table structure for table `aditional_covers`
--

CREATE TABLE `aditional_covers` (
  `id` int(11) NOT NULL,
  `cover_name` varchar(45) DEFAULT NULL,
  `cover_description` varchar(45) DEFAULT NULL,
  `price` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cover_types`
--

CREATE TABLE `cover_types` (
  `id` int(11) NOT NULL,
  `cover_type` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cover_types`
--

INSERT INTO `cover_types` (`id`, `cover_type`) VALUES
(1, 'vehicle'),
(2, 'travel');

-- --------------------------------------------------------

--
-- Table structure for table `equation_keys`
--

CREATE TABLE `equation_keys` (
  `id` int(11) NOT NULL,
  `variable` varchar(45) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `graphic_info`
--

CREATE TABLE `graphic_info` (
  `id` int(11) NOT NULL,
  `type` varchar(60) DEFAULT NULL,
  `tooltip_msg` varchar(500) DEFAULT NULL,
  `graphic_info` varchar(500) DEFAULT NULL,
  `insurance_type_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `insurance_companies`
--

CREATE TABLE `insurance_companies` (
  `id` int(11) NOT NULL,
  `insurance_name` varchar(100) DEFAULT NULL,
  `calculation` varchar(100) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `path` varchar(5000) DEFAULT NULL,
  `motor_vehicle` int(11) DEFAULT '0',
  `motor_bike` int(11) DEFAULT '0',
  `three_wheeler` int(11) DEFAULT '0',
  `travel_single` int(11) DEFAULT '0',
  `travel_family` int(11) DEFAULT '0',
  `investment_fd` int(11) DEFAULT '0',
  `investments_savings` int(11) DEFAULT '0',
  `lease_housing` int(11) DEFAULT '0',
  `lease_vehicles` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `insurance_companies`
--

INSERT INTO `insurance_companies` (`id`, `insurance_name`, `calculation`, `status`, `path`, `motor_vehicle`, `motor_bike`, `three_wheeler`, `travel_single`, `travel_family`, `investment_fd`, `investments_savings`, `lease_housing`, `lease_vehicles`) VALUES
(1, 'Asian Alliance', '2.25', 1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, 'Janashakthi', '2.35', 1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, 'Sri Lanka Insurance', '2.30', 1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4, 'Allianz', '2.20', 1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5, 'Continental Insurance', '2.25', 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6, 'AIG', '3.22', 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7, 'Amana', '2.86', 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8, 'Coop', '2.34', 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9, 'HNB', '2.30', 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10, 'LOLC', '2.34', 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11, 'MBSL', '2.23', 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12, 'NITF', '2.45', 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(13, 'Orient', '2.44', 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14, 'People''s Insurance', '2.32', 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(15, 'Union Assurance', '2.12', 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `insurance_company_insurance_type_id`
--

CREATE TABLE `insurance_company_insurance_type_id` (
  `id` int(11) NOT NULL,
  `insurance_company_id` int(11) DEFAULT NULL,
  `insurance_type_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `insurance_company_insurance_type_id`
--

INSERT INTO `insurance_company_insurance_type_id` (`id`, `insurance_company_id`, `insurance_type_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 1),
(4, 2, 2),
(5, 3, 1),
(6, 3, 2),
(7, 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `insurance_features`
--

CREATE TABLE `insurance_features` (
  `id` int(11) NOT NULL,
  `insurance_id` int(11) DEFAULT NULL,
  `feature` varchar(200) DEFAULT NULL,
  `insurance_type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `insurance_features`
--

INSERT INTO `insurance_features` (`id`, `insurance_id`, `feature`, `insurance_type`) VALUES
(3, 1, 'Taxi allowance of Rs.2000/= per day ', 1),
(4, 1, 'Rs.1,000,000/= Personal Accident Cover ', 1),
(5, 1, 'Rs.10,000/= worth of free towing ', 1),
(6, 2, '100% Air Bag Cover ', 1),
(7, 2, 'Rs.20,000/= worth of Hospitalisation Cover ', 1),
(8, 2, 'Taxi allowance of Rs.1000/= per day ', 1),
(11, 3, '100% Air Bag Cover ', 1),
(12, 3, 'Rs.30,000/= worth of Hospitalisation Cover ', 1),
(13, 3, 'Taxi allowance of Rs.2000/= per day ', 1),
(16, 4, '100% Air Bag Cover ', 1),
(17, 4, 'Rs.300,000/= worth of Hospitalisation Cover ', 1),
(18, 4, 'Taxi allowance of Rs.2000/= per day ', 1),
(21, 5, '100% Air Bag Cover ', 1),
(22, 5, 'Rs.300,000/= worth of Hospitalisation Cover ', 1),
(23, 5, 'Taxi allowance of Rs.2000/= per day ', 1);

-- --------------------------------------------------------

--
-- Table structure for table `insurance_purpose_value`
--

CREATE TABLE `insurance_purpose_value` (
  `id` int(11) NOT NULL,
  `insurance_type` int(11) NOT NULL,
  `insurance_company` int(11) NOT NULL,
  `purpose` int(11) NOT NULL,
  `value` double DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  `equation` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `insurance_purpose_value`
--

INSERT INTO `insurance_purpose_value` (`id`, `insurance_type`, `insurance_company`, `purpose`, `value`, `status`, `equation`) VALUES
(1, 1, 2, 1, 500, 1, 'xy'),
(2, 1, 1, 1, 400, 1, 'xy'),
(3, 1, 3, 1, 600, 1, 'xy'),
(4, 1, 4, 1, 480, 1, 'xy'),
(5, 1, 5, 1, 350, 1, 'xy'),
(6, 1, 6, 1, 100, 1, 'xy'),
(7, 1, 7, 1, 500, 1, 'xy'),
(8, 1, 8, 1, 200, 1, 'xy'),
(9, 1, 9, 1, 700, 1, 'xy'),
(10, 1, 10, 1, 900, 1, 'xy');

-- --------------------------------------------------------

--
-- Table structure for table `insurance_quotation`
--

CREATE TABLE `insurance_quotation` (
  `id` int(11) NOT NULL,
  `insurance_quotation_id` varchar(45) NOT NULL,
  `v_province` varchar(45) DEFAULT NULL,
  `v_letters` varchar(45) DEFAULT NULL,
  `v_number` varchar(45) DEFAULT NULL,
  `title` varchar(45) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `mobile` varchar(45) DEFAULT NULL,
  `nic` varchar(45) DEFAULT NULL,
  `make` varchar(45) DEFAULT NULL,
  `model` varchar(45) DEFAULT NULL,
  `year` varchar(45) DEFAULT NULL,
  `value` double DEFAULT NULL,
  `no_claim_bonus` double DEFAULT NULL,
  `current_insurer` varchar(45) DEFAULT NULL,
  `cover_type_required` int(11) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `voluntary_excess` int(11) DEFAULT NULL,
  `purpose` int(11) DEFAULT NULL,
  `authorise_agent_repair` int(11) DEFAULT NULL,
  `engine_no` varchar(45) DEFAULT NULL,
  `chassis_no` varchar(45) DEFAULT NULL,
  `type_v` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `insurance_quotation`
--

INSERT INTO `insurance_quotation` (`id`, `insurance_quotation_id`, `v_province`, `v_letters`, `v_number`, `title`, `first_name`, `last_name`, `email`, `mobile`, `nic`, `make`, `model`, `year`, `value`, `no_claim_bonus`, `current_insurer`, `cover_type_required`, `start_date`, `voluntary_excess`, `purpose`, `authorise_agent_repair`, `engine_no`, `chassis_no`, `type_v`) VALUES
(43, '-9CZqxXdT28jtRY9X1PXPXAajRM4hy9B', 'rr', 'uu', '1234', 'Mr', 'jon', 'snow', 'jon@castleblack.com', '711656570', '987654321x', '20', '431', '1920', 70000, 4, '4', 2, '2016-10-28', 2, 3, NULL, NULL, NULL, 0),
(3, '09bS6o9IXlSAk072FpOXNLkQtMjOmVw2', 'PO', 'VSA', '4568', 'Mr', 'sachith', 'rodrigo', 'sachith5593@live.com', '778118805', '910930109V', '2', '16', '1927', 12112, 4, '4', 2, '2016-10-28', 2, 3, NULL, NULL, NULL, 0),
(2, '5229BKvJN09sOewsT7fHV5wEUWywyzcZ', 'MN', 'CAS', '9875', 'Mr', 'Tharinda', 'Rodrigo', 'tharindarodrigo@gmail.com', '774479260', '910930109V', '3', '1590', '2015', 100000, 4, '4', 2, '2016-10-28', 2, 3, NULL, NULL, NULL, 0),
(29, '5hmBDT22fOouy5giSLxhITA3RPsiV3a3', 'yyy', 'yyy', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, '4', 2, '2016-10-28', 2, 3, NULL, NULL, NULL, 0),
(32, '5M_ziShyTYH98Ib6DUSXJpcFVbeB0WQe', 'tt', 'ttt', '12345', 'Mrs', 'menaka', 'fernando2', 'project2.menaka@gmail.com', '711656570', '123456789v', '3', '1590', '1914', 56432, 4, '4', 2, '2016-10-28', 2, 3, NULL, NULL, NULL, 0),
(9, '65VlC-iSgvppZuuxTy484k3UlLFfFRBN', 'xx', 'xxx', '9999', 'Mr', 'menaka', 'fernando', 'project.menaka@gmail.com', '711656570', '123456789v', '9', '244', '2009', 70000, 4, '4', 2, '2016-10-28', 2, 3, NULL, NULL, NULL, 0),
(14, '7Ulr57I4MA5LKC7dwqX-Pj39oYwrio3r', '', '', '', 'Mr', 'menaka', 'fernando', 'project.menaka@gmail.com', '711656570', '900074468v', '4', '59', '1913', 234, 4, '4', 2, '2016-10-28', 2, 3, NULL, NULL, NULL, 0),
(35, 'apE69X3Am2WEo27VhdQzBmmaH5HPV3x_', 'gg', 'gg', '1234', 'Mrs', 'menaka', 'fernando', 'project.menaka@gmail.com', '711656570', '123456789v', '6', '211', '1913', 44567, 4, '4', 2, '2016-10-28', 2, 3, NULL, NULL, NULL, 0),
(17, 'bjvtX7KywAkwwdUvLUazulc2SIddCJih', 'sss', 'sss', '1234', 'Mr', 'menaka', 'fernando', 'project.menaka@gmail.com', '711656570', '123456789v', '5', '70', '1916', 123, 4, '4', 2, '2016-10-28', 2, 3, NULL, NULL, NULL, 0),
(40, 'bluhSZzD3uM6nswO2eVX3U5QTkddMsvs', 'western', 'cad', '345', 'Mr', 'menaka', 'fernando', 'project.menaka@gmail.com', '711656570', '900074468v', '7', '221', '1913', 70000, 4, '4', 2, '2016-10-28', 2, 3, NULL, NULL, NULL, 0),
(1, 'BY3xHZG-ti_0tmdkOF6n0tiYuH-dMw0K', 'ER', 'VSA', '4568', 'Mr', 'sachith', 'rodrigo', 'sachith5593@live.com', '778118805', '910930109V', '2', '16', '1926', 1000000, 4, '4', 2, '2016-10-28', 2, 3, NULL, NULL, NULL, 0),
(30, 'c9IeWWDBkHre8bbOztnF5E0l39kJoFcP', 'rr', 'rr', '345', NULL, NULL, NULL, NULL, NULL, NULL, '6', '211', '1913', 70000, 4, '4', 2, '2016-10-28', 2, 3, NULL, NULL, NULL, 0),
(33, 'egQ4q2_gxd-vDl-Gv7-n_VU4YEkxbPe4', 'vv', 'vvv', '12344', 'Mr', 'menaka', 'fernando2', 'project2.menaka@gmail.com', '711656570', '900074468v', '6', '211', '1915', 55555, 4, '4', 2, '2016-10-28', 2, 3, NULL, NULL, NULL, 0),
(44, 'fxIvDq7mmfNazdZnov3aklNcEFnvK7uT', 'gggg', 'ttt', '88766', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(27, 'FxLavsD03IabnQfEsGiRQ2r8-Hac7HNt', 'pppp', 'pppp', '12345', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, '4', 2, '2016-10-28', 2, 3, NULL, NULL, NULL, 0),
(11, 'GMiCJFvqvjLbx20uPmmq8tEYSA7G7LdS', 'qq', 'qqq', '1234', 'Mr', 'menaka', 'fernando', 'project.menaka@gmail.com', '711656570', '900074468v', '4', '61', '1911', 2211, 4, '4', 2, '2016-10-28', 2, 3, NULL, NULL, NULL, 0),
(39, 'gqrKoEFhcL1a9hNCyXqxAbwu8WgGjM6p', 'rr', 'qqq', '345', 'Mr', 'menaka', 'fernando2', 'project2.menaka@gmail.com', '711656570', '123456789v', '4', '59', '1915', 4356, 4, '4', 2, '2016-10-28', 2, 3, NULL, NULL, NULL, 0),
(22, 'h2DlM1wMmS6w0VCBK-DLudiuflM-hOry', 'ww', 'ww', '3423', 'Mr', 'menaka', 'fernando', 'project.menaka@gmail.com', '711656570', '123456789v', '3', '1590', '1912', 2344, 4, '4', 2, '2016-10-28', 2, 3, NULL, NULL, NULL, 0),
(19, 'hMQ5tiaYkaROM_Ke8tuUBSEesesAaXu5', 'ee', 'eee', '1234', 'Mrs', 'menaka', 'fernando', 'project.menaka@gmail.com', '711656570', '123456789v', '3', '1590', '1914', 1234, 4, '4', 2, '2016-10-28', 2, 3, NULL, NULL, NULL, 0),
(23, 'jrjf6QuCFhTrj_FhZiPHxgRbFdYuVCQd', 'tt', 'ttt', '234', 'Mr', 'menaka', 'fernando', 'project.menaka@gmail.com', '0711656570', '123456789v', '3', '1590', '1912', 6789, 4, '4', 2, '2016-10-28', 2, 3, NULL, NULL, NULL, 0),
(7, 'KRBeO_LAuM_bLnnW5EehaV65etBqz5S1', 'ww', 'www', '1234', 'Mr', 'menaka', 'fernando', 'project.menaka@gmail.com', '711656570', '900074468v', '4', '59', '1915', 2222, 4, '4', 2, '2016-10-28', 2, 3, NULL, NULL, NULL, 0),
(41, 'M-Y37esE0T6P0g4ta-m8CFq7knPeRWt0', 'jjj', 'jjj', 'jjj', 'Mr', 'kamal', 'perara', 'kamal@gmai.com', '0712345178', '123456789v', '3', '1590', '1915', 666666, 4, '4', 2, '2016-10-28', 2, 3, NULL, NULL, NULL, 0),
(12, 'n5rTxof3GBU3wj9HYMjaDmiW9YyFyJYL', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '5', '67', '1913', 1111, 4, '4', 2, '2016-10-28', 2, 3, NULL, NULL, NULL, 0),
(45, 'nDpzTybmhouxWXj_mCZNhEugbpjiX9wG', 'tt', 'yyy', '4435', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(4, 'orlSr86796jceV-u3eJnAbNKivWE5jFE', 'BF', 'CAR', '3487', 'Mr', 'Tharinda', 'Rodrigo', 'tharindarodrigo@gmail.com', '774479260', '910930109V', '3', '1590', '1927', 200000, 4, '4', 2, '2016-10-28', 2, 3, NULL, NULL, NULL, 0),
(28, 'p9SUcvtwbWeCYc2OxZkR5vGTWimQsHfU', 'ppppq', 'pppp', '12345', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, '4', 2, '2016-10-28', 2, 3, NULL, NULL, NULL, 0),
(13, 'q-NezYPnqy1OSfaUtpI3NyVhZefBHGZS', 'western', 'xxx', '9999', 'Mr', 'menaka', 'fernando', 'project.menaka@gmail.com', '711656570', '900074468v', '4', '63', '1914', 7988, 4, '4', 2, '2016-10-28', 2, 3, NULL, NULL, NULL, 0),
(21, 'Qg7uytdlJ7DRcU3DYbTc21X1H_u8_Z9t', 'ccc', 'ccc', '1324', 'Mr', 'menaka', 'fernando', 'project.menaka@gmail.com', '711656570', '123456789v', '4', '59', '1910', 2345, 4, '4', 2, '2016-10-28', 2, 3, NULL, NULL, NULL, 0),
(24, 'RK81L2jQ3iU29HixU8y20EJ93EB8ypZz', 'western', 'cad', '123', 'Mr', 'menaka', 'fernando2', 'project2.menaka@gmail.com', '0711656570', '900074468v', '5', '67', '1913', 2211, 4, '4', 2, '2016-10-28', 2, 3, NULL, NULL, NULL, 0),
(34, 'RZN5DZHzz_T6OFliNceBHKeIqwaaTLDS', 'mmm', 'mm', '567', 'Mr', 'menaka', 'fernando2', 'project2.menaka@gmail.com', '711656570', '900074468v', '5', '67', '1912', 2222, 4, '4', 2, '2016-10-28', 2, 3, NULL, NULL, NULL, 0),
(16, 'Sb7DZeED3-O2EjOj3PAdDUTzj3yfjoHV', 'qq', 'qq', '1234', 'Mr', 'menaka', 'fernando2', 'project2.menaka@gmail.com', '711656570', '123456789v', '3', '1595', '1913', 1234, 4, '4', 2, '2016-10-28', 2, 3, NULL, NULL, NULL, 0),
(36, 'SbfOHqTAdKqFVbdLX_JvYB-FFtpDRcNR', 'rr', 'xxx', '345', 'Mrs', 'menaka', 'fernando2', 'project2.menaka@gmail.com', '711656570', '900074468v', '5', '67', '1912', 2222, 4, '4', 2, '2016-10-28', 2, 3, NULL, NULL, NULL, 0),
(25, 'T4scakFQRU9tmt2yL3Q7V6M9Tqr3IV3m', 'wer', 'er', '343', 'Mr', 'menaka', 'fernando', 'project.menaka@gmail.com', '0711656570', '123456789v', '4', '59', '1913', 34324, 4, '4', 2, '2016-10-28', 2, 3, NULL, NULL, NULL, 0),
(10, 'v-rU47t-Ug3yDNYgxkU7-j1_9ZOXdRpa', 'uuu', 'uu', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, '4', 2, '2016-10-28', 2, 3, NULL, NULL, NULL, 0),
(5, 'VVFYVqiV9UwAfLhnULTooNTQ_J_WceYJ', 'VB', 'VSA', '3487', 'Mr', 'Tharinda', 'Rodrigo', 'tharindarodrigo@gmail.com', '774479260', '910930109V', '2', '16', '1926', 12112, 4, '4', 2, '2016-10-28', 2, 3, NULL, NULL, NULL, 0),
(6, 'w2xjZhe8f90U_oqCZesm35FgF9TXALvt', 'MO', 'CAS', '1202', 'Mr', 'Tharinda', 'Rodrigo', 'tharindarodrigo@gmail.com', '774479260', '910930109V', '3', '1590', '1927', 12000, 4, '4', 2, '2016-10-28', 2, 3, NULL, NULL, NULL, 0),
(38, 'WAKfjPXO11Rxf7SlLzriaxxoXid1_8Ys', 'ff', 'f', '345', 'Mrs', 'menaka', 'fernando2', 'project2.menaka@gmail.com', '711656570', '123456789v', '5', '67', '1913', 70000, 4, '4', 2, '2016-10-28', 2, 3, NULL, NULL, NULL, 0),
(18, 'Wf8gCquxx2XCTy2e8ryQppYpCuO40YjT', 'ss', 'sss1234', '', NULL, NULL, NULL, NULL, NULL, NULL, '5', '69', '1912', 4444, 4, '4', 2, '2016-10-28', 2, 3, NULL, NULL, NULL, 0),
(20, 'YLAdZ6ERYYUXtS-DLMqeuBqcLyWTPjca', 'rr', 'rrr', '1234', 'Mrs', 'menaka', 'fernando2', 'project2.menaka@gmail.com', '711656570', '123456789v', '4', '59', '1913', 1232, 4, '4', 2, '2016-10-28', 2, 3, NULL, NULL, NULL, 0),
(26, 'yLitpRovzTDdajF0WL2ITNxzPonqZvZ5', 'ooo', 'ooo', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, '4', 2, '2016-10-28', 2, 3, NULL, NULL, NULL, 0),
(31, 'YYb095YMkGKsb9slE4gXSSRpfv04Gi4B', 'ff', 'ff', '345', 'Mr', 'menaka', 'fernando', 'project.menaka@gmail.com', '711656570', '123456789v', '4', '59', '1914', 2345, 4, '4', 2, '2016-10-28', 2, 3, NULL, NULL, NULL, 0),
(42, '_zONclI7jnpTCahpCK9GLlOsye58PcwG', 'reg', 'reg', '668', 'Mr', 'jon', 'snow', 'jon@castleblack.com', '0777643528', '987654321x', '5', '67', '1914', 640000, 4, '4', 2, '2016-10-28', 2, 3, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `insurance_quotation_aditional_covers`
--

CREATE TABLE `insurance_quotation_aditional_covers` (
  `id` int(11) NOT NULL,
  `insurance_quotation_id` varchar(45) NOT NULL,
  `aditional_cover` int(11) NOT NULL,
  `price` double DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `insurance_types`
--

CREATE TABLE `insurance_types` (
  `id` int(11) NOT NULL,
  `insurance_type` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `insurance_types`
--

INSERT INTO `insurance_types` (`id`, `insurance_type`) VALUES
(1, 'Vehicle'),
(2, 'Travel');

-- --------------------------------------------------------

--
-- Table structure for table `payment_info`
--

CREATE TABLE `payment_info` (
  `id` int(11) NOT NULL,
  `invoice_id` varchar(45) DEFAULT NULL,
  `shipping_mentod` int(11) NOT NULL,
  `payment_method` varchar(45) DEFAULT NULL,
  `insurance_quotation_id` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `persona_info_single`
--

CREATE TABLE `persona_info_single` (
  `id` int(11) NOT NULL,
  `single_basic_info_id` int(11) NOT NULL,
  `passport` varchar(100) DEFAULT NULL,
  `mobile` varchar(45) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `type` int(11) NOT NULL,
  `title` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `purpose`
--

CREATE TABLE `purpose` (
  `id` int(11) NOT NULL,
  `purpose` varchar(45) DEFAULT NULL,
  `car` int(11) DEFAULT '1',
  `bike` int(11) DEFAULT '1',
  `threeWheel` int(11) DEFAULT '1',
  `heavyVehicle` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purpose`
--

INSERT INTO `purpose` (`id`, `purpose`, `car`, `bike`, `threeWheel`, `heavyVehicle`) VALUES
(1, 'Social, Domastic & Private Purposes ', 1, 1, 1, 1),
(2, 'SLTB Route', 0, 0, 0, 1),
(3, 'Carriage of Passengers ', 1, 0, 1, 1),
(4, 'Hiring or Hired ', 1, 1, 1, 1),
(5, 'Rented or Self Drive Basis', 1, 1, 1, 1),
(6, 'Driving Tuition ', 1, 1, 1, 1),
(7, 'Carriage of Goods ', 0, 0, 1, 1),
(8, 'Agricultural Purposes', 0, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `regions`
--

CREATE TABLE `regions` (
  `id` int(11) NOT NULL,
  `region` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sampletable`
--

CREATE TABLE `sampletable` (
  `id` int(11) NOT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `Age` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sampletable`
--

INSERT INTO `sampletable` (`id`, `Name`, `Age`) VALUES
(1, 'Sample', '12');

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `id` int(11) NOT NULL,
  `service_id` varchar(45) NOT NULL,
  `service` varchar(300) DEFAULT NULL,
  `price` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `shipping`
--

CREATE TABLE `shipping` (
  `id` int(11) NOT NULL,
  `quotation_id` varchar(50) NOT NULL,
  `shipping_method` int(11) NOT NULL,
  `reg_first_name` varchar(50) NOT NULL,
  `reg_last_name` varchar(50) NOT NULL,
  `reg_company` varchar(50) NOT NULL,
  `reg_address` varchar(100) NOT NULL,
  `reg_apt` varchar(50) NOT NULL,
  `reg_city` varchar(50) NOT NULL,
  `reg_country` varchar(50) NOT NULL,
  `reg_postal_code` varchar(50) NOT NULL,
  `reg_phone` varchar(50) NOT NULL,
  `ship_first_name` varchar(50) NOT NULL,
  `ship_last_name` varchar(50) NOT NULL,
  `ship_company` varchar(50) NOT NULL,
  `ship_address` varchar(100) NOT NULL,
  `ship_apt` varchar(50) NOT NULL,
  `ship_city` varchar(50) NOT NULL,
  `ship_country` varchar(50) NOT NULL,
  `ship_postal_code` varchar(50) NOT NULL,
  `ship_phone` varchar(50) NOT NULL,
  `cost` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shipping`
--

INSERT INTO `shipping` (`id`, `quotation_id`, `shipping_method`, `reg_first_name`, `reg_last_name`, `reg_company`, `reg_address`, `reg_apt`, `reg_city`, `reg_country`, `reg_postal_code`, `reg_phone`, `ship_first_name`, `ship_last_name`, `ship_company`, `ship_address`, `ship_apt`, `ship_city`, `ship_country`, `ship_postal_code`, `ship_phone`, `cost`) VALUES
(1, 'apE69X3Am2WEo27VhdQzBmmaH5HPV3x_', 1, 'menaka', 'fernando', 'gajma', 'kattuwa', '44', 'negombo', 'other', '11203', '711656570', '', '', '', '', '', '', '', '', '', 222835),
(2, 'WAKfjPXO11Rxf7SlLzriaxxoXid1_8Ys', 2, 'menaka', 'fernando', 'new company', 'kattuwa', '44', 'negombo', 'US', '11203', '711656570', '', '', '', '', '', '', '', '', '', 350000),
(4, 'gqrKoEFhcL1a9hNCyXqxAbwu8WgGjM6p', 1, 'menaka2', 'fernando', 'rrr', 'kattuwa', '23', 'negombo', 'US', '11203', '711656570', '', '', '', '', '', '', '', '', '', 21780),
(5, 'bluhSZzD3uM6nswO2eVX3U5QTkddMsvs', 2, 'menaka', 'fernando', 'rrr', 'kattuwa', '44', 'negombo', 'US', '11203', '711656570', '', '', '', '', '', '', '', '', '', 350000),
(6, 'M-Y37esE0T6P0g4ta-m8CFq7knPeRWt0', 2, 'kamal', 'perara', 'kasper', 'nuwara', '66', 'nuwara', 'other', '998', '0987654321', 'kamal', 'perara', 'kasper', 'nuwara', '66', 'nuwara', 'other', '998', '0987654321', 3333330),
(7, '_zONclI7jnpTCahpCK9GLlOsye58PcwG', 2, 'jon', 'snow', 'castle black', 'north', '99', 'wall', 'US', '5578', '0117654234', 'jon', 'snow', 'king of the north', 'winterfell', '1', 'north', 'US', '77', '0746734251', 3712000),
(8, '-9CZqxXdT28jtRY9X1PXPXAajRM4hy9B', 2, 'jon', 'snow', 'nights watch', 'castle black', '1', 'north', 'US', '4567', '711656570', 'jon', 'snow', 'king of the north', 'winterfell', '99', 'north', 'US', '11203', '711656570', 490000);

-- --------------------------------------------------------

--
-- Table structure for table `shipping_method`
--

CREATE TABLE `shipping_method` (
  `id` int(11) NOT NULL,
  `shipping_method` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shipping_method`
--

INSERT INTO `shipping_method` (`id`, `shipping_method`) VALUES
(1, 'USPS First Class International'),
(2, 'USPS Priority Mail International');

-- --------------------------------------------------------

--
-- Table structure for table `single_basic_info`
--

CREATE TABLE `single_basic_info` (
  `id` int(11) NOT NULL,
  `dob` date DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `single_travel_info`
--

CREATE TABLE `single_travel_info` (
  `id` int(11) NOT NULL,
  `single_basic_info_if` int(11) NOT NULL,
  `goods_id` int(11) NOT NULL,
  `medical_id` int(11) NOT NULL,
  `region_id` int(11) NOT NULL,
  `date_of_arrival` date DEFAULT NULL,
  `date_of_departure` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `travel_goods`
--

CREATE TABLE `travel_goods` (
  `id` int(11) NOT NULL,
  `travel_goods` double DEFAULT NULL,
  `travel_type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `travel_medical`
--

CREATE TABLE `travel_medical` (
  `id` int(11) NOT NULL,
  `medical` double DEFAULT NULL,
  `travel_type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `travel_type`
--

CREATE TABLE `travel_type` (
  `id` int(11) NOT NULL,
  `travel_type` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `travel_values`
--

CREATE TABLE `travel_values` (
  `id` int(11) NOT NULL,
  `medicals` double DEFAULT NULL,
  `goods` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `address`, `email`, `phone`) VALUES
(1, 'Sam', 'Colombo', 'admin@gmail.com', '07771231233'),
(2, 'Dam', 'Galle', 'dam@gmail.com', '07771235533'),
(3, 'John', 'Kandy', 'john@gmail.com', '07771234233'),
(5, 'kamal', 'angoda', 'pkamal@pcloud.com', '0546689456');

-- --------------------------------------------------------

--
-- Table structure for table `value_added_service`
--

CREATE TABLE `value_added_service` (
  `id` int(11) NOT NULL,
  `service` varchar(100) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `price` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `variable_value`
--

CREATE TABLE `variable_value` (
  `id` int(11) NOT NULL,
  `purpose_id` int(11) NOT NULL,
  `variable` int(11) NOT NULL,
  `variable_value` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_make`
--

CREATE TABLE `vehicle_make` (
  `id` int(11) NOT NULL,
  `make` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle_make`
--

INSERT INTO `vehicle_make` (`id`, `make`) VALUES
(2, 'Alfa Romeo'),
(3, 'Toyota'),
(4, 'Bentley'),
(5, 'BMW'),
(6, 'Buick'),
(7, 'Cadillac'),
(8, 'Checker'),
(9, 'Chery'),
(10, 'Chevrolet'),
(11, 'Chrysler'),
(12, 'Daewoo'),
(13, 'Daihatsu'),
(14, 'Datsun'),
(15, 'Dodge'),
(16, 'Fiat'),
(17, 'Ford'),
(18, 'Foton'),
(19, 'Geely'),
(20, 'Geo'),
(21, 'GMC'),
(22, 'Honda'),
(23, 'Hummer'),
(24, 'Hyundai'),
(25, 'Infiniti'),
(26, 'Isuzu'),
(27, 'Jaguar'),
(28, 'Jeep'),
(29, 'Kia'),
(30, 'Land Rover'),
(31, 'Lexus'),
(32, 'Lincoln'),
(33, 'Maruti'),
(34, 'Mazda'),
(35, 'Mercedes-Benz'),
(36, 'Mercury'),
(37, 'Micro'),
(38, 'Mini'),
(39, 'Mitsubishi'),
(40, 'Morris'),
(41, 'Nissan'),
(42, 'Oldsmobile'),
(43, 'Opel'),
(44, 'Perodua'),
(45, 'Peugeot'),
(46, 'Plymouth'),
(47, 'Pontiac'),
(48, 'Porsche'),
(49, 'Proton'),
(50, 'Range Rover'),
(51, 'Renault'),
(52, 'Saab'),
(53, 'Ssang Yong'),
(54, 'Saturn'),
(55, 'Subaru'),
(56, 'Suzuki'),
(57, 'TATA'),
(59, 'Volkswagen'),
(60, 'Volvo'),
(61, 'Yugo'),
(62, 'Zotye'),
(63, 'Acura'),
(64, 'Audi');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_model`
--

CREATE TABLE `vehicle_model` (
  `id` int(11) NOT NULL,
  `vehicle_id` int(11) DEFAULT NULL,
  `vehicleModel` varchar(80) DEFAULT NULL,
  `vehicleType` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle_model`
--

INSERT INTO `vehicle_model` (`id`, `vehicle_id`, `vehicleModel`, `vehicleType`) VALUES
(1, 63, 'EL', '1'),
(2, 63, 'TL', '1'),
(3, 63, 'TL', '1'),
(4, 63, 'RL', '1'),
(5, 63, 'DAA-RU3', '1'),
(6, 63, 'INTEGRA', '1'),
(7, 63, 'LEGEND', '1'),
(8, 63, 'MDX', '1'),
(9, 63, 'RDX', '1'),
(10, 63, 'RL', '1'),
(11, 63, 'T3289309', '1'),
(12, 63, 'TL', '1'),
(13, 63, 'TSX', '1'),
(14, 63, 'VIGOR', '1'),
(15, 63, 'ZDX', '1'),
(16, 2, '155 1.8TS', '1'),
(17, 2, '156 TS', '1'),
(18, 2, 'ZAR93000', '1'),
(19, 64, 'AUDI100', '1'),
(20, 64, 'AUDI200', '1'),
(21, 64, '4000', '1'),
(22, 64, '5000', '1'),
(23, 64, '80', '1'),
(24, 64, '90', '1'),
(25, 64, 'A3', '1'),
(26, 64, 'A4', '1'),
(27, 64, 'A5', '1'),
(28, 64, 'A6', '1'),
(29, 64, 'A7', '1'),
(30, 64, 'A8', '1'),
(31, 64, 'ALLRDQUA', '1'),
(32, 64, 'AUDICABRI', '1'),
(33, 64, 'AUDICOUPE', '1'),
(34, 64, 'Q3', '1'),
(35, 64, 'Q5', '1'),
(36, 64, 'Q7', '1'),
(37, 64, 'QUATTR', '1'),
(38, 64, 'R8', '1'),
(39, 64, 'RS4', '1'),
(40, 64, 'RS5', '1'),
(41, 64, 'RS6', '1'),
(42, 64, 'S4', '1'),
(43, 64, 'S5', '1'),
(44, 64, 'S6', '1'),
(45, 64, 'S7', '1'),
(46, 64, 'S8', '1'),
(47, 64, 'TTRS', '1'),
(48, 64, 'TTS', '1'),
(49, 64, 'V8', '1'),
(50, 64, '100', '1'),
(51, 64, '200', '1'),
(52, 64, '90S', '1'),
(53, 64, 'A4 1.8T', '1'),
(54, 64, 'A4 2.0LT', '1'),
(55, 64, 'A6-2.0L', '1'),
(56, 64, 'A61.9TDI', '1'),
(57, 64, 'A62.OLT', '1'),
(58, 64, 'TT', '1'),
(59, 4, 'ARNAGE', '1'),
(60, 4, 'AZURE', '1'),
(61, 4, 'BROOKLANDS', '1'),
(62, 4, 'BENCONT', '1'),
(63, 4, 'CORNICHE', '1'),
(64, 4, 'BENEIGHT', '1'),
(65, 4, 'BENMUL', '1'),
(66, 4, 'BENTURBO', '1'),
(67, 5, '1_SERIES', '1'),
(68, 5, '128I', '1'),
(69, 5, '135I', '1'),
(70, 5, '135IS', '1'),
(71, 5, '3_SERIES', '1'),
(72, 5, '318I', '1'),
(73, 5, '318IC', '1'),
(74, 5, '318IS', '1'),
(75, 5, '318TI', '1'),
(76, 5, '320I', '1'),
(77, 5, '323CI', '1'),
(78, 5, '323I', '1'),
(79, 5, '323IS', '1'),
(80, 5, '323IT', '1'),
(81, 5, '325CI', '1'),
(82, 5, '325E', '1'),
(83, 5, '325ES', '1'),
(84, 5, '325I', '1'),
(85, 5, '325IS', '1'),
(86, 5, '325IX', '1'),
(87, 5, '325XI', '1'),
(88, 5, '328CI', '1'),
(89, 5, '328I', '1'),
(90, 5, '328IS', '1'),
(91, 5, '328XI', '1'),
(92, 5, '330CI', '1'),
(93, 5, '330I', '1'),
(94, 5, '330XI', '1'),
(95, 5, '335D', '1'),
(96, 5, '335I', '1'),
(97, 5, '335IS', '1'),
(98, 5, '335XI', '1'),
(99, 5, 'ACTIVE3', '1'),
(100, 5, '5_SERIES', '1'),
(101, 5, '524TD', '1'),
(102, 5, '525I', '1'),
(103, 5, '525XI', '1'),
(104, 5, '528E', '1'),
(105, 5, '528I', '1'),
(106, 5, '528IT', '1'),
(107, 5, '528XI', '1'),
(108, 5, '530I', '1'),
(109, 5, '530IT', '1'),
(110, 5, '530XI', '1'),
(111, 5, '533I', '1'),
(112, 5, '535I', '1'),
(113, 5, '535IGT', '1'),
(114, 5, '535XI', '1'),
(115, 5, '540I', '1'),
(116, 5, '545I', '1'),
(117, 5, '550I', '1'),
(118, 5, '550IGT', '1'),
(119, 5, 'ACTIVE5', '1'),
(120, 5, '6_SERIES', '1'),
(121, 5, '633CSI', '1'),
(122, 5, '635CSI', '1'),
(123, 5, '640I', '1'),
(124, 5, '640IGC', '1'),
(125, 5, '645CI', '1'),
(126, 5, '650I', '1'),
(127, 5, '650IGC', '1'),
(128, 5, 'L6', '1'),
(129, 5, '7_SERIES', '1'),
(130, 5, '733I', '1'),
(131, 5, '735I', '1'),
(132, 5, '735IL', '1'),
(133, 5, '740I', '1'),
(134, 5, '740IL', '1'),
(135, 5, '740LI', '1'),
(136, 5, '745I', '1'),
(137, 5, '745LI', '1'),
(138, 5, '750I', '1'),
(139, 5, '750IL', '1'),
(140, 5, '750LI', '1'),
(141, 5, '760I', '1'),
(142, 5, '760LI', '1'),
(143, 5, 'ACTIVE7', '1'),
(144, 5, 'ALPINAB7', '1'),
(145, 5, '8_SERIES', '1'),
(146, 5, '840CI', '1'),
(147, 5, '850CI', '1'),
(148, 5, '850CSI', '1'),
(149, 5, '850I', '1'),
(150, 5, 'L_SERIES', '1'),
(151, 5, 'L7', '1'),
(152, 5, 'M_SERIES', '1'),
(153, 5, '1SERIESM', '1'),
(154, 5, 'BMWROAD', '1'),
(155, 5, 'M3', '1'),
(156, 5, 'M5', '1'),
(157, 5, 'M6', '1'),
(158, 5, 'X5M', '1'),
(159, 5, 'X6M', '1'),
(160, 5, 'X_SERIES', '1'),
(161, 5, 'ACTIVEX6', '1'),
(162, 5, 'X1', '1'),
(163, 5, 'X3', '1'),
(164, 5, 'X5', '1'),
(165, 5, 'X6', '1'),
(166, 5, 'Z_SERIES', '1'),
(167, 5, 'Z3', '1'),
(168, 5, 'Z4', '1'),
(169, 5, 'Z8', '1'),
(170, 5, '1181 M SPORT AUTO', '1'),
(171, 5, '316I', '1'),
(172, 5, '318', '1'),
(173, 5, '3181', '1'),
(174, 5, '3181 M SPORT', '1'),
(175, 5, '318D MODERN AUTO', '1'),
(176, 5, '320 I', '1'),
(177, 5, '320 I E 90', '1'),
(178, 5, '320 IA', '1'),
(179, 5, '3200', '1'),
(180, 5, '3201 SE', '1'),
(181, 5, '320D', '1'),
(182, 5, '323 I', '1'),
(183, 5, '325 I', '1'),
(184, 5, '328 I', '1'),
(185, 5, '518 I', '1'),
(186, 5, '5201', '1'),
(187, 5, '520D', '1'),
(188, 5, '520LA', '1'),
(189, 5, '523', '1'),
(190, 5, '523 I', '1'),
(191, 5, '523IA', '1'),
(192, 5, '528 I', '1'),
(193, 5, '530D', '1'),
(194, 5, '530IA', '1'),
(195, 5, '535 I', '1'),
(196, 5, '728I AUTO', '1'),
(197, 5, '730 DI', '1'),
(198, 5, '730D SE', '1'),
(199, 5, '735', '1'),
(200, 5, '740 LI', '1'),
(201, 5, 'ABA UE16 1161', '1'),
(202, 5, 'ABA-FF30', '1'),
(203, 5, 'ACTIVE', '1'),
(204, 5, 'DAA-YE30', '1'),
(205, 5, 'GHAY20', '1'),
(206, 5, 'LDA-3D20 320D SPORT', '1'),
(207, 5, 'X1D', '1'),
(208, 5, 'X3D', '1'),
(209, 5, 'Z4 ROADSTER', '1'),
(210, 5, 'Z4 SDRIVE 231', '1'),
(211, 6, 'CENTURY', '1'),
(212, 6, 'LUCERNE', '1'),
(213, 6, 'PARK AVENUE', '1'),
(214, 6, 'REGAL', '1'),
(215, 6, 'RENDEZVOUS', '1'),
(216, 6, 'RIVIERA', '1'),
(217, 6, 'BUIENC', '1'),
(218, 6, 'LESA', '1'),
(219, 6, 'PARK', '1'),
(220, 6, 'TERRAZA', '1'),
(221, 7, 'ALLANT', '1'),
(222, 7, 'ATS', '1'),
(223, 7, 'BROUGH', '1'),
(224, 7, 'CATERA', '1'),
(225, 7, 'CIMA', '1'),
(226, 7, 'CTS', '1'),
(227, 7, 'DEV', '1'),
(228, 7, 'DTS', '1'),
(229, 7, 'ELDO', '1'),
(230, 7, 'ESCALA', '1'),
(231, 7, 'ESCALAESV', '1'),
(232, 7, 'EXT', '1'),
(233, 7, 'FLEE', '1'),
(234, 7, 'SEV', '1'),
(235, 7, 'SRX', '1'),
(236, 7, 'STS', '1'),
(237, 7, 'XLR', '1'),
(238, 7, 'XTS', '1'),
(239, 8, 'AVEO', '1'),
(240, 8, 'CAMARO', '1'),
(241, 8, 'CAPRICE', '1'),
(242, 8, 'CAVALIER', '1'),
(243, 8, 'CORVETTE', '1'),
(244, 9, 'QQ', '1'),
(245, 9, 'FULWIN2 CAR', '1'),
(246, 10, 'ASTRO', '1'),
(247, 10, 'AVALNCH', '1'),
(248, 10, 'AVEO5', '1'),
(249, 10, 'BERETT', '1'),
(250, 10, 'COBALT', '1'),
(251, 10, 'COLORADO', '1'),
(252, 10, 'CORSI', '1'),
(253, 10, 'CORV', '1'),
(254, 10, 'CRUZE', '1'),
(255, 10, 'G15EXP', '1'),
(256, 10, 'CHEVIMP', '1'),
(257, 10, 'KODC4500', '1'),
(258, 10, 'LUMINA', '1'),
(259, 10, 'LAPV', '1'),
(260, 10, 'LUV', '1'),
(261, 10, 'MALI', '1'),
(262, 10, 'CHVMETR', '1'),
(263, 10, 'CHEVMONT', '1'),
(264, 10, 'NOVA', '1'),
(265, 10, 'CHEVPRIZM', '1'),
(266, 10, 'CHVST', '1'),
(267, 10, 'S10PICKUP', '1'),
(268, 10, 'CHEV150', '1'),
(269, 10, 'CHEVC25', '1'),
(270, 10, 'CH3500PU', '1'),
(271, 10, 'SONIC', '1'),
(272, 10, 'SPARK', '1'),
(273, 10, 'CHEVSPEC', '1'),
(274, 10, 'CHSPRINT', '1'),
(275, 10, 'SSR', '1'),
(276, 10, 'UPLANDER', '1'),
(277, 10, 'VENTUR', '1'),
(278, 10, 'VOLT', '1'),
(279, 10, 'CHEOTH', '1'),
(280, 10, 'AVEO U-VA', '1'),
(281, 10, 'AVEO-1.6', '1'),
(282, 10, 'BEAT', '1'),
(283, 10, 'CAPTIVA LTZ', '1'),
(284, 10, 'DBA-HR52S', '1'),
(285, 10, 'LA-HR51S', '1'),
(286, 10, 'MD90', '1'),
(287, 10, 'SPARK LT', '1'),
(288, 10, 'TAVERA', '1'),
(289, 10, 'UA-HR528CRUZE', '1'),
(290, 10, 'UA-HR52S', '1'),
(291, 11, 'CHRYS200', '1'),
(292, 11, 'CHRY300', '1'),
(293, 11, 'CIRRUS', '1'),
(294, 11, 'CONC', '1'),
(295, 11, 'CHRYCONQ', '1'),
(296, 11, 'CORDOBA', '1'),
(297, 11, 'CROSSFIRE', '1'),
(298, 11, 'ECLASS', '1'),
(299, 11, 'FIFTH', '1'),
(300, 11, 'CHRYGRANDV', '1'),
(301, 11, 'IMPE', '1'),
(302, 11, 'INTREPID', '1'),
(303, 11, 'CHRYLAS', '1'),
(304, 11, 'LEBA', '1'),
(305, 11, 'LHS', '1'),
(306, 11, 'CHRYNEON', '1'),
(307, 11, 'NEWPORT', '1'),
(308, 11, 'PACIFICA', '1'),
(309, 11, '300C', '1'),
(310, 11, 'CONCORDE', '1'),
(311, 11, 'CONQUEST', '1'),
(312, 12, 'LANOS', '1'),
(313, 12, 'LEGANZA', '1'),
(314, 12, 'NUBIRA', '1'),
(315, 12, 'CIELO GLE', '1'),
(316, 12, 'LE-S210V', '1'),
(317, 12, 'LE-S320V', '1'),
(318, 12, 'MATIZ', '1'),
(319, 12, 'MITIZ', '1'),
(320, 12, 'RACER ETI', '1'),
(321, 13, 'ABAJ131G', '1'),
(322, 13, 'ATRAI', '1'),
(323, 13, 'CHARADE', '1'),
(324, 13, 'CUORE', '1'),
(325, 13, 'DBA-M300S', '1'),
(326, 13, 'DELTA', '1'),
(327, 13, 'FC11-TERIOS', '1'),
(328, 13, 'HIJET', '1'),
(329, 13, 'HIJET EBD - S321V', '1'),
(330, 13, 'HIJET GD S200V', '1'),
(331, 13, 'HIJET S200P', '1'),
(332, 13, 'JDA000-A35', '1'),
(333, 13, 'JDA000L8000022773', '1'),
(334, 13, 'LEEZA', '1'),
(335, 13, 'LR8320V', '1'),
(336, 13, 'M100RS-GFNF', '1'),
(337, 13, 'MEERA', '1'),
(338, 13, 'MIRA', '1'),
(339, 13, 'MOVE', '1'),
(340, 13, 'TERIOS', '1'),
(341, 13, 'VIRA', '1'),
(342, 14, '280Z', '1'),
(343, 14, '300ZX', '1'),
(344, 14, '310', '1'),
(345, 14, '510', '1'),
(346, 14, '720', '1'),
(347, 14, '810', '1'),
(348, 14, 'DATMAX', '1'),
(349, 15, '400', '1'),
(350, 15, 'ARIES', '1'),
(351, 15, 'ASPEN', '1'),
(352, 15, 'AVENGER', '1'),
(353, 15, 'CALIBER', '1'),
(354, 15, 'CHALLENGER', '1'),
(355, 15, 'CHARGER', '1'),
(356, 15, 'COLT', '1'),
(357, 15, 'COLT PICKUP', '1'),
(358, 15, 'D-150', '1'),
(359, 15, 'DURANGO', '1'),
(360, 15, 'DYNASTY', '1'),
(361, 15, 'GRAND CARAVAN', '1'),
(362, 15, 'LANCER', '1'),
(363, 15, 'MAGNUM', '1'),
(364, 15, 'MIRADA', '1'),
(365, 15, 'RAM', '1'),
(366, 15, 'RAM 150', '1'),
(367, 15, 'RAM 250 VAN', '1'),
(368, 15, 'RAM 50', '1'),
(369, 15, 'RAM1500', '1'),
(370, 15, 'RAMPAGE', '1'),
(371, 16, '131', '1'),
(372, 16, '132', '1'),
(373, 16, 'BELVEDERE', '1'),
(374, 16, 'BRAVO', '1'),
(375, 16, 'MAREA', '1'),
(376, 16, 'PANDA', '1'),
(377, 16, 'PUNTO', '1'),
(378, 16, 'SPIDER', '1'),
(379, 16, 'TEMPRA', '1'),
(380, 17, 'AEROSTAR', '1'),
(381, 17, 'ASPIRE', '1'),
(382, 17, 'BRONCO', '1'),
(383, 17, 'BRONCO II', '1'),
(384, 17, 'CLUBWAGON MPV', '1'),
(385, 17, 'CONSEL', '1'),
(386, 17, 'CONTOUR', '1'),
(387, 17, 'CORTINA', '1'),
(388, 17, 'COURIER', '1'),
(389, 17, 'CROWN VICTORIA', '1'),
(390, 17, 'ESCAPE', '1'),
(391, 17, 'ESCORT', '1'),
(392, 17, 'ESCORT ZX2', '1'),
(393, 17, 'EV RANGER', '1'),
(394, 17, 'EVEREST', '1'),
(395, 17, 'EXP', '1'),
(396, 17, 'EXPEDITION', '1'),
(397, 17, 'EXPLORER', '1'),
(398, 17, 'EXPLORER SPORT', '1'),
(399, 17, 'F150 PICKUP', '1'),
(400, 17, 'F150 SUPERCAB', '1'),
(401, 17, 'F150 SUPERCREW', '1'),
(402, 17, 'F250 PICKUP', '1'),
(403, 17, 'FAIRMONT', '1'),
(404, 17, 'FESTIVA', '1'),
(405, 17, 'FIESTA', '1'),
(406, 17, 'FIVE HUNDRED', '1'),
(407, 17, 'FLEX', '1'),
(408, 17, 'FOCUS', '1'),
(409, 17, 'FREESTAR', '1'),
(410, 17, 'FREESTYLE', '1'),
(411, 17, 'FULL SIZE', '1'),
(412, 17, 'FUSION', '1'),
(413, 17, 'FUSION HYBRID', '1'),
(414, 17, 'GRANADA', '1'),
(415, 17, 'J80', '1'),
(416, 17, 'JC6', '1'),
(417, 17, 'MONDEO', '1'),
(418, 17, 'MONDEO GLX', '1'),
(419, 17, 'MUSTANG', '1'),
(420, 17, 'PICKUP', '1'),
(421, 17, 'RANGER', '1'),
(422, 17, 'TAURUS', '1'),
(423, 17, 'TEMPO', '1'),
(424, 17, 'THUNDERBIRD', '1'),
(425, 18, 'SUP CX', '1'),
(426, 18, 'SUP C1', '1'),
(427, 19, 'EC7', '1'),
(428, 19, 'MK1.5', '1'),
(429, 19, 'MR479QA', '1'),
(430, 19, 'MR7151', '1'),
(431, 20, 'METRO', '1'),
(432, 20, 'PRIZM', '1'),
(433, 20, 'STORM', '1'),
(434, 20, 'TRACKER', '1'),
(435, 21, 'ACADIA', '1'),
(436, 21, 'CABALLERO', '1'),
(437, 21, 'CANYON', '1'),
(438, 21, 'ENVOY', '1'),
(439, 21, 'ENVOYXL', '1'),
(440, 21, 'ENVOYXUV', '1'),
(441, 21, 'JIM', '1'),
(442, 21, 'RALLYWAG', '1'),
(443, 21, 'GMCS15', '1'),
(444, 21, 'S15', '1'),
(445, 21, 'SUB', '1'),
(446, 21, 'TERRAIN', '1'),
(447, 21, 'TOPC4500', '1'),
(448, 21, 'TYPH', '1'),
(449, 21, 'GMCVANDUR', '1'),
(450, 21, 'S15 PICKUP', '1'),
(451, 22, 'ACCORD', '1'),
(452, 22, 'AIRWAVE', '1'),
(453, 22, 'AKDR', '1'),
(454, 22, 'ARIYA', '1'),
(455, 22, 'CITY', '1'),
(456, 22, 'CITY 1.5A', '1'),
(457, 22, 'CITY ABS 4A', '1'),
(458, 22, 'CITY VTEC', '1'),
(459, 22, 'CITY VTEC 4A', '1'),
(460, 22, 'CIVIC', '1'),
(461, 22, 'CIVIC 1.6A', '1'),
(462, 22, 'CIVIC ES', '1'),
(463, 22, 'CIVIC EXI 4A', '1'),
(464, 22, 'CIVIC EXT', '1'),
(465, 22, 'CIVIC FERIO', '1'),
(466, 22, 'CR-V', '1'),
(467, 22, 'CR-V 2.0L', '1'),
(468, 22, 'CRZ', '1'),
(469, 22, 'CT200', '1'),
(470, 22, 'DAA-FD3 CIVIC HYBRID', '1'),
(471, 22, 'DAA-GM4', '1'),
(472, 22, 'DAA-GM4-GRACE-HYBRID', '1'),
(473, 22, 'DAA-GP1', '1'),
(474, 22, 'DAA-GP1 FIT', '1'),
(475, 22, 'DAA-GP2', '1'),
(476, 22, 'DAA-GP2 FIT SHUTTLE', '1'),
(477, 22, 'DAA-GP2SHUTTLEHYBRID', '1'),
(478, 22, 'DAA-GP3', '1'),
(479, 22, 'DAA-GP3 FREED', '1'),
(480, 22, 'DAA-GP5 FIT', '1'),
(481, 22, 'DAA-RU3 VEZEL', '1'),
(482, 22, 'DAA-RU4', '1'),
(483, 22, 'DAA-RU5', '1'),
(484, 22, 'DAA-RUS VEZEL', '1'),
(485, 22, 'DAA-ZE2', '1'),
(486, 22, 'DAA-ZE2-INSIGHT', '1'),
(487, 22, 'DAA-ZF1', '1'),
(488, 22, 'DAA-ZF1 CR-Z', '1'),
(489, 22, 'DAAGP1', '1'),
(490, 22, 'DAAGP1-FIT HYBRID', '1'),
(491, 22, 'DAAZF2', '1'),
(492, 22, 'DBA GD1', '1'),
(493, 22, 'DBA-FD1', '1'),
(494, 22, 'DBA-GD1', '1'),
(495, 22, 'DBA-GD8', '1'),
(496, 22, 'DBA-GD9', '1'),
(497, 22, 'DBA-GE 5', '1'),
(498, 22, 'DBA-GE6', '1'),
(499, 22, 'DBA-GJ1', '1'),
(500, 22, 'DBA-GJI AIR WAVE', '1'),
(501, 22, 'DBA-OD8', '1'),
(502, 22, 'DBA-RD2', '1'),
(503, 22, 'DBA-RE4', '1'),
(504, 22, 'DBA-RT1 CROSSROAD', '1'),
(505, 22, 'E-DA2', '1'),
(506, 22, 'E-EF2', '1'),
(507, 22, 'EG8', '1'),
(508, 22, 'EK3', '1'),
(509, 22, 'FIT', '1'),
(510, 22, 'FIT 1.3A', '1'),
(511, 22, 'FIT ARIA', '1'),
(512, 22, 'FIT DAA-GP1', '1'),
(513, 22, 'FIT SHUTTLE', '1'),
(514, 22, 'FIT-GP5', '1'),
(515, 22, 'FREED', '1'),
(516, 22, 'GD8 FIT ARIA', '1'),
(517, 22, 'GRACE', '1'),
(518, 22, 'GRAND CIVIC', '1'),
(519, 22, 'INSIGHT', '1'),
(520, 22, 'INSIGHT ZE2', '1'),
(521, 22, 'JAZZ', '1'),
(522, 22, 'JHMGK', '1'),
(523, 22, 'LA CUSTOM', '1'),
(524, 22, 'LA-GD1', '1'),
(525, 22, 'LA-GD6', '1'),
(526, 22, 'MRV', '1'),
(527, 22, 'ODYSSEY', '1'),
(528, 22, 'RU3', '1'),
(529, 22, 'SHUTTLE', '1'),
(530, 22, 'STATION WAGON', '1'),
(531, 22, 'STREAM', '1'),
(532, 22, 'UA-ES1', '1'),
(533, 22, 'UA-GD1', '1'),
(534, 22, 'VEZEL', '1'),
(535, 22, 'VXI', '1'),
(536, 23, 'H2', '1'),
(537, 23, 'H3', '1'),
(538, 24, 'ACCENT', '1'),
(539, 24, 'ACCENT GLM', '1'),
(540, 24, 'ARACE H100M', '1'),
(541, 24, 'ATOS', '1'),
(542, 24, 'AZERA', '1'),
(543, 24, 'ELAN XD 4D M', '1'),
(544, 24, 'ELAN XD 4DA', '1'),
(545, 24, 'ELAN XD 5D M', '1'),
(546, 24, 'ELANTRA', '1'),
(547, 24, 'ENTOURAGE', '1'),
(548, 24, 'EON', '1'),
(549, 24, 'EXCEL GLS', '1'),
(550, 24, 'F/L COUPE', '1'),
(551, 24, 'GENESIS', '1'),
(552, 24, 'GETZ', '1'),
(553, 24, 'GRACE H100', '1'),
(554, 24, 'MATRIX GLS A', '1'),
(555, 24, 'MATRIX GLS M', '1'),
(556, 24, 'PONY EXCEL', '1'),
(557, 24, 'SANTA FE', '1'),
(558, 24, 'SANTRO', '1'),
(559, 24, 'SCOUPE', '1'),
(560, 24, 'SONATA', '1'),
(561, 24, 'STELLAR GSL', '1'),
(562, 24, 'TERRACAN', '1'),
(563, 24, 'TIBURON', '1'),
(564, 24, 'TRAJET', '1'),
(565, 24, 'TUCSON', '1'),
(566, 24, 'VERACRUZ', '1'),
(567, 24, 'XG GLSA', '1'),
(568, 24, 'XG300', '1'),
(569, 25, 'EX35', '1'),
(570, 25, 'G20', '1'),
(571, 25, 'J30', '1'),
(572, 25, 'M30', '1'),
(573, 25, 'M37', '1'),
(574, 25, 'Q45', '1'),
(575, 25, 'QX4', '1'),
(576, 25, 'EX_MODELS', '1'),
(577, 25, 'EX37', '1'),
(578, 25, 'FX_MODELS', '1'),
(579, 25, 'FX35', '1'),
(580, 25, 'FX37', '1'),
(581, 25, 'FX45', '1'),
(582, 25, 'FX50', '1'),
(583, 25, 'G_MODELS', '1'),
(584, 25, 'G25', '1'),
(585, 25, 'G35', '1'),
(586, 25, 'G37', '1'),
(587, 25, 'I_MODELS', '1'),
(588, 25, 'I30', '1'),
(589, 25, 'I35', '1'),
(590, 25, 'J_MODELS', '1'),
(591, 25, 'JX_MODELS', '1'),
(592, 25, 'JX35', '1'),
(593, 25, 'M_MODELS', '1'),
(594, 25, 'M35', '1'),
(595, 25, 'M35HYBRID', '1'),
(596, 25, 'M45', '1'),
(597, 25, 'M56', '1'),
(598, 25, 'Q_MODELS', '1'),
(599, 25, 'QX_MODELS', '1'),
(600, 25, 'QX56', '1'),
(601, 25, 'INFOTH', '1'),
(602, 26, 'AMIGO', '1'),
(603, 26, 'ASCENDER', '1'),
(604, 26, 'AXIOM', '1'),
(605, 26, 'HOMBRE', '1'),
(606, 26, 'I280', '1'),
(607, 26, 'I290', '1'),
(608, 26, 'I350', '1'),
(609, 26, 'I370', '1'),
(610, 26, 'RODEO', '1'),
(611, 26, 'STYLUS', '1'),
(612, 27, 'STYPE', '1'),
(613, 27, 'XTYPE', '1'),
(614, 27, 'XF', '1'),
(615, 27, 'XJ12', '1'),
(616, 27, 'XJ6', '1'),
(617, 27, 'XJR', '1'),
(618, 27, 'XJRS', '1'),
(619, 27, 'XJS', '1'),
(620, 27, 'VANDEN', '1'),
(621, 27, 'XJ8', '1'),
(622, 27, 'XJ8L', '1'),
(623, 27, 'XJSPORT', '1'),
(624, 27, 'XK8', '1'),
(625, 27, 'XKR', '1'),
(626, 27, 'JAGOTH', '1'),
(627, 28, 'CHEROKEE', '1'),
(628, 28, 'CHEROKEE LAREDO', '1'),
(629, 28, 'CJ', '1'),
(630, 28, 'COMANCHE', '1'),
(631, 28, 'COMPASS', '1'),
(632, 28, 'GRAND CHEROKEE', '1'),
(633, 28, 'LIBERTY', '1'),
(634, 28, 'PATRIOT', '1'),
(635, 28, 'TOWNSIDE MPV', '1'),
(636, 28, 'WRANGLER', '1'),
(637, 29, 'BORREGO', '1'),
(638, 29, 'CARENS', '1'),
(639, 29, 'CARENSI 8A', '1'),
(640, 29, 'CARNIVAL', '1'),
(641, 29, 'OPTIMA', '1'),
(642, 29, 'PECTRA 1.6HB', '1'),
(643, 29, 'PICANTO', '1'),
(644, 29, 'PREGIO 2.7', '1'),
(645, 29, 'PRIDE', '1'),
(646, 29, 'PRONTIER', '1'),
(647, 29, 'RIO', '1'),
(648, 29, 'RIO 1.3M', '1'),
(649, 29, 'RONDO', '1'),
(650, 29, 'SEDONA', '1'),
(651, 29, 'SEPHIA', '1'),
(652, 29, 'SEPHIA 1.5M', '1'),
(653, 29, 'SORENTO', '1'),
(654, 29, 'SORENTO 4X4 JEEP', '1'),
(655, 29, 'SORENTO JEEP', '1'),
(656, 29, 'SOUL', '1'),
(657, 29, 'SPECTRA', '1'),
(658, 29, 'SPORTAGE', '1'),
(659, 29, 'SPORTAGE 4X4', '1'),
(660, 30, '4 WD RHD', '1'),
(661, 30, 'CLAA', '1'),
(662, 30, 'DEFENDER', '1'),
(663, 30, 'DEFENDER 110', '1'),
(664, 30, 'DISCOVERY', '1'),
(665, 30, 'DISCOVERY II', '1'),
(666, 30, 'FREE LANDER', '1'),
(667, 30, 'JEEP TYPE', '1'),
(668, 30, 'LR3', '1'),
(669, 30, 'RANGE ROVER SPORT', '1'),
(670, 30, 'TAURUS 2518', '1'),
(671, 31, 'CT200H', '1'),
(672, 31, 'ES_MODELS', '1'),
(673, 31, 'ES250', '1'),
(674, 31, 'ES300', '1'),
(675, 31, 'ES300H', '1'),
(676, 31, 'ES330', '1'),
(677, 31, 'ES350', '1'),
(678, 31, 'GS_MODELS', '1'),
(679, 31, 'GS300', '1'),
(680, 31, 'GS350', '1'),
(681, 31, 'GS400', '1'),
(682, 31, 'GS430', '1'),
(683, 31, 'GS450H', '1'),
(684, 31, 'GS460', '1'),
(685, 31, 'GX_MODELS', '1'),
(686, 31, 'GX460', '1'),
(687, 31, 'GX470', '1'),
(688, 31, 'HS_MODELS', '1'),
(689, 31, 'HS250H', '1'),
(690, 31, 'IS_MODELS', '1'),
(691, 31, 'IS250', '1'),
(692, 31, 'IS250C', '1'),
(693, 31, 'IS300', '1'),
(694, 31, 'IS350', '1'),
(695, 31, 'IS350C', '1'),
(696, 31, 'ISF', '1'),
(697, 31, 'LEXLFA', '1'),
(698, 31, 'LS_MODELS', '1'),
(699, 31, 'LS400', '1'),
(700, 31, 'LS430', '1'),
(701, 31, 'LS460', '1'),
(702, 31, 'LS600H', '1'),
(703, 31, 'LX_MODELS', '1'),
(704, 31, 'LX450', '1'),
(705, 31, 'LX470', '1'),
(706, 31, 'LX570', '1'),
(707, 31, 'RX_MODELS', '1'),
(708, 31, 'RX300', '1'),
(709, 31, 'RX330', '1'),
(710, 31, 'RX350', '1'),
(711, 31, 'RX400H', '1'),
(712, 31, 'RX450H', '1'),
(713, 31, 'SC_MODELS', '1'),
(714, 31, 'SC300', '1'),
(715, 31, 'SC400', '1'),
(716, 31, 'SC430', '1'),
(717, 31, 'DAA-ANF10', '1'),
(718, 31, 'DAA-GYL16W', '1'),
(719, 31, 'DAA-UVF46', '1'),
(720, 31, 'DBA-AGZ10', '1'),
(721, 31, 'ES 350', '1'),
(722, 31, 'NX 300H', '1'),
(723, 31, 'RX 400', '1'),
(724, 32, 'AVIATOR', '1'),
(725, 32, 'MARKLT', '1'),
(726, 32, 'MARK6', '1'),
(727, 32, 'MARK7', '1'),
(728, 32, 'MARK8', '1'),
(729, 32, 'MKS', '1'),
(730, 32, 'MKT', '1'),
(731, 32, 'MKX', '1'),
(732, 32, 'MKZ', '1'),
(733, 32, 'NAVIGA', '1'),
(734, 32, 'NAVIGAL', '1'),
(735, 32, 'LINCTC', '1'),
(736, 32, 'ZEPHYR', '1'),
(737, 32, 'LINOTH', '1'),
(738, 32, 'CONTINENTAL', '1'),
(739, 32, 'LS', '1'),
(740, 32, 'MARK', '1'),
(741, 33, 'Alto L7TD', '1'),
(742, 33, 'Alto LXI', '1'),
(743, 33, 'Alto SPORTZ', '1'),
(744, 33, '410', '1'),
(745, 33, '50FTOP', '1'),
(746, 33, '650', '1'),
(747, 33, '800', '1'),
(748, 33, 'A STAR', '1'),
(749, 33, 'A STAR VXI', '1'),
(750, 33, 'ALTO LXI-800', '1'),
(751, 33, 'ALTO-K10', '1'),
(752, 33, 'ESTEEM', '1'),
(753, 33, 'ESTILO', '1'),
(754, 33, 'FJ4I', '1'),
(755, 33, 'OMNI', '1'),
(756, 33, 'SWIFT', '1'),
(757, 33, 'SWIFT DZ1RE VX1', '1'),
(758, 33, 'SWIFT VXI SUZUKI', '1'),
(759, 33, 'WAGON VX1', '1'),
(760, 33, 'GYPSY S/T', '1'),
(761, 33, 'ZEN', '1'),
(762, 33, 'ZENVX1', '1'),
(763, 34, '323', '1'),
(764, 34, '626', '1'),
(765, 34, '929', '1'),
(766, 34, 'B-SERIES', '1'),
(767, 34, 'CX-5', '1'),
(768, 34, 'CX-7', '1'),
(769, 34, 'CX-9', '1'),
(770, 34, 'GLC', '1'),
(771, 34, 'MAZDA2', '1'),
(772, 34, 'MAZDA3', '1'),
(773, 34, 'MAZDA5', '1'),
(774, 34, 'MAZDA6', '1'),
(775, 34, 'MAZDASPD3', '1'),
(776, 34, 'MAZDASPD6', '1'),
(777, 34, 'MIATA', '1'),
(778, 34, 'MILL', '1'),
(779, 34, 'MPV', '1'),
(780, 34, 'MX3', '1'),
(781, 34, 'MX6', '1'),
(782, 34, 'NAVAJO', '1'),
(783, 34, 'PROTE', '1'),
(784, 34, 'RX7', '1'),
(785, 34, 'RX8', '1'),
(786, 34, 'TRIBUTE', '1'),
(787, 34, '323 GLX', '1'),
(788, 34, '323 LX', '1'),
(789, 34, '323 SA ABS', '1'),
(790, 34, '323-PROTEGE', '1'),
(791, 34, '323SA AB5', '1'),
(792, 34, '626 GLX', '1'),
(793, 34, '6I', '1'),
(794, 34, 'ASTINA', '1'),
(795, 34, 'AXELA', '1'),
(796, 34, 'BONGO', '1'),
(797, 34, 'BONGO BRAWNY', '1'),
(798, 34, 'BS98LX', '1'),
(799, 34, 'CX-5 KH43 RAC', '1'),
(800, 34, 'D2200SE51', '1'),
(801, 34, 'DEMI', '1'),
(802, 34, 'DEMIO', '1'),
(803, 34, 'E2200', '1'),
(804, 34, 'EBD', '1'),
(805, 34, 'EBD-DG64V', '1'),
(806, 34, 'EBPTP', '1'),
(807, 34, 'EPEW', '1'),
(808, 34, 'EUNOS', '1'),
(809, 34, 'FAMILIA', '1'),
(810, 34, 'FAMILIAR', '1'),
(811, 34, 'FAMILIYA', '1'),
(812, 34, 'METAL', '1'),
(813, 34, 'MILLENIA', '1'),
(814, 34, 'MISTER', '1'),
(815, 34, 'MR90', '1'),
(816, 34, 'MX5', '1'),
(817, 34, 'R-BF3V', '1'),
(818, 34, 'R-BF5V', '1'),
(819, 34, 'RX', '1'),
(820, 34, 'RX-8', '1'),
(821, 35, '190_CLASS', '1'),
(822, 35, '190D', '1'),
(823, 35, '190E', '1'),
(824, 35, '240_CLASS', '1'),
(825, 35, '240D', '1'),
(826, 35, '300_CLASS_E_CLASS', '1'),
(827, 35, '300CD', '1'),
(828, 35, '300CE', '1'),
(829, 35, '300D', '1'),
(830, 35, '300E', '1'),
(831, 35, '300TD', '1'),
(832, 35, '300TE', '1'),
(833, 35, 'C_CLASS', '1'),
(834, 35, 'C220', '1'),
(835, 35, 'C230', '1'),
(836, 35, 'C240', '1'),
(837, 35, 'C250', '1'),
(838, 35, 'C280', '1'),
(839, 35, 'C300', '1'),
(840, 35, 'C320', '1'),
(841, 35, 'C32AMG', '1'),
(842, 35, 'C350', '1'),
(843, 35, 'C36AMG', '1'),
(844, 35, 'C43AMG', '1'),
(845, 35, 'C55AMG', '1'),
(846, 35, 'C63AMG', '1'),
(847, 35, 'CL_CLASS', '1'),
(848, 35, 'CL500', '1'),
(849, 35, 'CL550', '1'),
(850, 35, 'CL55AMG', '1'),
(851, 35, 'CL600', '1'),
(852, 35, 'CL63AMG', '1'),
(853, 35, 'CL65AMG', '1'),
(854, 35, 'CLK_CLASS', '1'),
(855, 35, 'CLK320', '1'),
(856, 35, 'CLK350', '1'),
(857, 35, 'CLK430', '1'),
(858, 35, 'CLK500', '1'),
(859, 35, 'CLK550', '1'),
(860, 35, 'CLK55AMG', '1'),
(861, 35, 'CLK63AMG', '1'),
(862, 35, 'CLS_CLASS', '1'),
(863, 35, 'CLS500', '1'),
(864, 35, 'CLS550', '1'),
(865, 35, 'CLS55AMG', '1'),
(866, 35, 'CLS63AMG', '1'),
(867, 35, 'E_CLASS', '1'),
(868, 35, '260E', '1'),
(869, 35, '280CE', '1'),
(870, 35, '280E', '1'),
(871, 35, '400E', '1'),
(872, 35, '500E', '1'),
(873, 35, 'E300', '1'),
(874, 35, 'E320', '1'),
(875, 35, 'E320BLUE', '1'),
(876, 35, 'E320CDI', '1'),
(877, 35, 'E350', '1'),
(878, 35, 'E350BLUE', '1'),
(879, 35, 'E400', '1'),
(880, 35, 'E420', '1'),
(881, 35, 'E430', '1'),
(882, 35, 'E500', '1'),
(883, 35, 'E550', '1'),
(884, 35, 'E55AMG', '1'),
(885, 35, 'E63AMG', '1'),
(886, 35, 'G_CLASS', '1'),
(887, 35, 'G500', '1'),
(888, 35, 'G550', '1'),
(889, 35, 'G55AMG', '1'),
(890, 35, 'G63AMG', '1'),
(891, 35, 'GL_CLASS', '1'),
(892, 35, 'GL320BLUE', '1'),
(893, 35, 'GL320CDI', '1'),
(894, 35, 'GL350BLUE', '1'),
(895, 35, 'GL450', '1'),
(896, 35, 'GL550', '1'),
(897, 35, 'GLK_CLASS', '1'),
(898, 35, 'GLK350', '1'),
(899, 35, 'M_CLASS', '1'),
(900, 35, 'ML320', '1'),
(901, 35, 'ML320BLUE', '1'),
(902, 35, 'ML320CDI', '1'),
(903, 35, 'ML350', '1'),
(904, 35, 'ML350BLUE', '1'),
(905, 35, 'ML430', '1'),
(906, 35, 'ML450HY', '1'),
(907, 35, 'ML500', '1'),
(908, 35, 'ML550', '1'),
(909, 35, 'ML55AMG', '1'),
(910, 35, 'ML63AMG', '1'),
(911, 35, 'R_CLASS', '1'),
(912, 35, 'R320BLUE', '1'),
(913, 35, 'R320CDI', '1'),
(914, 35, 'R350', '1'),
(915, 35, 'R350BLUE', '1'),
(916, 35, 'R500', '1'),
(917, 35, 'R63AMG', '1'),
(918, 35, 'S_CLASS', '1'),
(919, 35, '300SD', '1'),
(920, 35, '300SDL', '1'),
(921, 35, '300SE', '1'),
(922, 35, '300SEL', '1'),
(923, 35, '350SD', '1'),
(924, 35, '350SDL', '1'),
(925, 35, '380SE', '1'),
(926, 35, '380SEC', '1'),
(927, 35, '380SEL', '1'),
(928, 35, '400SE', '1'),
(929, 35, '400SEL', '1'),
(930, 35, '420SEL', '1'),
(931, 35, '500SEC', '1'),
(932, 35, '500SEL', '1'),
(933, 35, '560SEC', '1'),
(934, 35, '560SEL', '1'),
(935, 35, '600SEC', '1'),
(936, 35, '600SEL', '1'),
(937, 35, 'S320', '1'),
(938, 35, 'S350', '1'),
(939, 35, 'S350BLUE', '1'),
(940, 35, 'S400HY', '1'),
(941, 35, 'S420', '1'),
(942, 35, 'S430', '1'),
(943, 35, 'S500', '1'),
(944, 35, 'S550', '1'),
(945, 35, 'S55AMG', '1'),
(946, 35, 'S600', '1'),
(947, 35, 'S63AMG', '1'),
(948, 35, 'S65AMG', '1'),
(949, 35, 'SL_CLASS', '1'),
(950, 35, '300SL', '1'),
(951, 35, '380SL', '1'),
(952, 35, '380SLC', '1'),
(953, 35, '500SL', '1'),
(954, 35, '560SL', '1'),
(955, 35, '600SL', '1'),
(956, 35, 'SL320', '1'),
(957, 35, 'SL500', '1'),
(958, 35, 'SL550', '1'),
(959, 35, 'SL55AMG', '1'),
(960, 35, 'SL600', '1'),
(961, 35, 'SL63AMG', '1'),
(962, 35, 'SL65AMG', '1'),
(963, 35, 'SLK_CLASS', '1'),
(964, 35, 'SLK230', '1'),
(965, 35, 'SLK250', '1'),
(966, 35, 'SLK280', '1'),
(967, 35, 'SLK300', '1'),
(968, 35, 'SLK320', '1'),
(969, 35, 'SLK32AMG', '1'),
(970, 35, 'SLK350', '1'),
(971, 35, 'SLK55AMG', '1'),
(972, 35, 'SLR_CLASS', '1'),
(973, 35, 'SLR', '1'),
(974, 35, 'SLS_CLASS', '1'),
(975, 35, 'SLSAMG', '1'),
(976, 35, 'SPRINTER_CLASS', '1'),
(977, 35, 'A170', '1'),
(978, 35, 'C 180 KOMP', '1'),
(979, 35, 'C180', '1'),
(980, 35, 'C180 KOMPRESSOR', '1'),
(981, 35, 'C200', '1'),
(982, 35, 'CLA180', '1'),
(983, 35, 'CLS350', '1'),
(984, 35, 'DBA-117342CLA180', '1'),
(985, 35, 'E 250', '1'),
(986, 35, 'E200', '1'),
(987, 35, 'E200 KOMPRESSOR', '1'),
(988, 35, 'E220', '1'),
(989, 35, 'E230', '1'),
(990, 35, 'E300 AMG NIGHT ED B TECH', '1'),
(991, 35, 'E300 BLUETEC HYBRID', '1'),
(992, 35, 'F/B', '1'),
(993, 35, 'MB 140', '1'),
(994, 35, 'ML 350 4 MATIC', '1'),
(995, 35, 'S300L', '1'),
(996, 35, 'S400 HYBRID', '1'),
(997, 35, 'SLK200', '1'),
(998, 35, 'SMART', '1'),
(999, 35, '100D 123', '1'),
(1000, 35, '8400 HYBRID', '1'),
(1001, 35, 'S 320 CDI', '1'),
(1002, 36, 'BOBCAT', '1'),
(1003, 36, 'CAPRI', '1'),
(1004, 36, 'COUGAR', '1'),
(1005, 36, 'MERCGRAND', '1'),
(1006, 36, 'LYNX', '1'),
(1007, 36, 'MARAUDER', '1'),
(1008, 36, 'MILAN', '1'),
(1009, 36, 'MONTEGO', '1'),
(1010, 36, 'MONTEREY', '1'),
(1011, 37, 'ACTYON', '1'),
(1012, 37, 'EC7-AUTO 4 DOOR SEDAN', '1'),
(1013, 37, 'GELLY', '1'),
(1014, 37, 'JUNIOR 111', '1'),
(1015, 37, 'KORANDO', '1'),
(1016, 37, 'KYRON', '1'),
(1017, 37, 'KYRON200XDI', '1'),
(1018, 37, 'MARK II', '1'),
(1019, 37, 'MX-7', '1'),
(1020, 37, 'MX7 MARK11', '1'),
(1021, 37, 'MX711', '1'),
(1022, 37, 'PANDA', '1'),
(1023, 37, 'PANDA 1.0 GS', '1'),
(1024, 37, 'PANDA CROSS', '1'),
(1025, 37, 'PANDA CROSS-STANDARD', '1'),
(1026, 37, 'PANDA LC 10', '1'),
(1027, 37, 'PANDA LC 13', '1'),
(1028, 37, 'PANDA LC1.0', '1'),
(1029, 37, 'PRIVILEGE', '1'),
(1030, 37, 'RANTIA LC 1.0', '1'),
(1031, 37, 'REXTON', '1'),
(1032, 37, 'TOURER', '1'),
(1033, 37, 'TREND', '1'),
(1034, 37, 'VOLEER', '1'),
(1035, 38, 'COOPRCLUB_MODELS', '1'),
(1036, 38, 'COOPERCLUB', '1'),
(1037, 38, 'COOPRCLUBS', '1'),
(1038, 38, 'COOPCOUNTRY_MODELS', '1'),
(1039, 38, 'COUNTRYMAN', '1'),
(1040, 38, 'COOPCOUP_MODELS', '1'),
(1041, 38, 'MINICOUPE', '1'),
(1042, 38, 'MINISCOUPE', '1'),
(1043, 38, 'COOPER', '1'),
(1044, 38, 'COOPERS', '1'),
(1045, 38, 'COOPERROAD', '1'),
(1046, 38, 'COOPERSRD', '1'),
(1047, 38, 'DLA-GG2W', '1'),
(1048, 38, 'KA4TNJNMFR', '1'),
(1049, 39, '3000 GT', '1'),
(1050, 39, 'CBD-U61V MINICAB', '1'),
(1051, 39, 'CEDIA', '1'),
(1052, 39, 'CHARIOT', '1'),
(1053, 39, 'CK2A', '1'),
(1054, 39, 'CS1 ASNJER LANCER', '1'),
(1055, 39, 'CY2ASRMHR', '1'),
(1056, 39, 'D-CAB', '1'),
(1057, 39, 'DELICA', '1'),
(1058, 39, 'DIAMANTE', '1'),
(1059, 39, 'EV 4500', '1'),
(1060, 39, 'EVOLUTION V111 RS', '1'),
(1061, 39, 'FARGO', '1'),
(1062, 39, 'FUSO', '1'),
(1063, 39, 'GA-F02T', '1'),
(1064, 39, 'GA2WXTSHR', '1'),
(1065, 39, 'GA2WXTSHZR', '1'),
(1066, 39, 'GALANT', '1'),
(1067, 39, 'GF3WXTMGZR', '1'),
(1068, 39, 'GG2WXDHHZR', '1'),
(1069, 39, 'GH-CS2A', '1'),
(1070, 39, 'GH-H76W-JEEP', '1'),
(1071, 39, 'GH-V75W', '1'),
(1072, 39, 'GK1ASNDR', '1'),
(1073, 39, 'K34', '1'),
(1074, 39, 'KB-5A5V', '1'),
(1075, 39, 'L-200', '1'),
(1076, 39, 'L-200 DIAMOD', '1'),
(1077, 39, 'L200 ELEGANCE', '1'),
(1078, 39, 'L200 KA4TNJNMR', '1'),
(1079, 39, 'L200 PICK UP', '1'),
(1080, 39, 'L200 WARRIOR', '1'),
(1081, 39, 'L200S', '1'),
(1082, 39, 'L300', '1'),
(1083, 39, 'L400', '1'),
(1084, 39, 'LA-V73W', '1'),
(1085, 39, 'LANCER', '1'),
(1086, 39, 'LANCER -C11V', '1'),
(1087, 39, 'LANCER CB3A', '1'),
(1088, 39, 'MINI CA VAN', '1'),
(1089, 39, 'MINI CAB', '1'),
(1090, 39, 'MINI PAJERO', '1'),
(1091, 39, 'MIRAGE', '1'),
(1092, 39, 'MITSUBISHI ATTRAGE', '1'),
(1093, 39, 'MONTERO', '1'),
(1094, 39, 'MONTERO JEEP', '1'),
(1095, 39, 'MONTERO SPORT', '1'),
(1096, 39, 'MONTERO V73WLRXVR', '1'),
(1097, 39, 'OUTLANDER', '1'),
(1098, 39, 'OUTLANDER 2.4L FABRIC', '1'),
(1099, 39, 'OUTLANDER PHEV', '1'),
(1100, 39, 'P27V', '1'),
(1101, 39, 'PAJERO', '1'),
(1102, 39, 'PAJERO 10', '1'),
(1103, 39, 'PO5V', '1'),
(1104, 39, 'PRECIS', '1'),
(1105, 39, 'PV 25V', '1'),
(1106, 39, 'R-CB3A', '1'),
(1107, 39, 'RVR', '1'),
(1108, 39, 'S-P15V', '1'),
(1109, 39, 'SPACE', '1'),
(1110, 39, 'SPORT GEAR', '1'),
(1111, 39, 'STARION', '1'),
(1112, 39, 'STRADA', '1'),
(1113, 39, 'STRADA-DOUBLE CAB', '1'),
(1114, 39, 'TOWNY', '1'),
(1115, 39, 'TREDIA', '1'),
(1116, 39, 'TROJAN', '1'),
(1117, 39, 'VERADA', '1'),
(1118, 39, 'WAGON', '1'),
(1119, 40, 'MAS5', '1'),
(1120, 40, 'MINI', '1'),
(1121, 41, '200 SX', '1'),
(1122, 41, '2000', '1'),
(1123, 41, '210', '1'),
(1124, 41, '240 SX', '1'),
(1125, 41, '280', '1'),
(1126, 41, '2WD D-CAB', '1'),
(1127, 41, '300 ZX', '1'),
(1128, 41, '350Z', '1'),
(1129, 41, '4-SP4F23', '1'),
(1130, 41, '4WD/DCAB', '1'),
(1131, 41, 'AD WAGON', '1'),
(1132, 41, 'ADF-SKF2VN', '1'),
(1133, 41, 'ADF-VWE25-CARAVAN', '1'),
(1134, 41, 'ALTIMA', '1'),
(1135, 41, 'ARMADA', '1'),
(1136, 41, 'ATLAS', '1'),
(1137, 41, 'AVENIER', '1'),
(1138, 41, 'AXXESS', '1'),
(1139, 41, 'AZE0', '1'),
(1140, 41, 'B12', '1'),
(1141, 41, 'B14 SUNNY', '1'),
(1142, 41, 'BCAB13', '1'),
(1143, 41, 'BLUE BIRD', '1'),
(1144, 41, 'BMD21', '1'),
(1145, 41, 'CARAVAN', '1'),
(1146, 41, 'CARAVAN 4LL', '1'),
(1147, 41, 'CARAVAN ADF-VWE25', '1'),
(1148, 41, 'CARAVAN DX VWE25', '1'),
(1149, 41, 'CARAVEN 4LL', '1'),
(1150, 41, 'CEDRIC', '1'),
(1151, 41, 'CEFIFO', '1'),
(1152, 41, 'CEFIRO', '1'),
(1153, 41, 'CENRO', '1'),
(1154, 41, 'CERENA', '1'),
(1155, 41, 'CLIPPER', '1'),
(1156, 41, 'CRGE24', '1'),
(1157, 41, 'CUBE', '1'),
(1158, 41, 'D/CAB', '1'),
(1159, 41, 'DAA HT52X TRAIL', '1'),
(1160, 41, 'DAA-HT32 X TRAIL', '1'),
(1161, 41, 'DBA J10', '1'),
(1162, 41, 'DBA-AK12', '1'),
(1163, 41, 'DBA-C25', '1'),
(1164, 41, 'DBA-G11 BLUE BIRD', '1'),
(1165, 41, 'DBA-K13', '1'),
(1166, 41, 'DBA-NT31', '1'),
(1167, 41, 'DBA-SC11', '1'),
(1168, 41, 'DBA-SC11-TIIDA LATIO', '1'),
(1169, 41, 'DBA-TB17', '1'),
(1170, 41, 'DBA-Y12 WINGROAD', '1'),
(1171, 41, 'DBA-YE15 JUKE', '1'),
(1172, 41, 'DBAE11', '1'),
(1173, 41, 'DBAG11', '1'),
(1174, 41, 'DBAHC24S', '1'),
(1175, 41, 'DBANT32TRAIL', '1'),
(1176, 41, 'DBE-VAY12 AD', '1'),
(1177, 41, 'E-RIO', '1'),
(1178, 41, 'E-WFB12', '1'),
(1179, 41, 'EDRIK', '1'),
(1180, 41, 'EU14', '1'),
(1181, 41, 'FAIRLADY', '1'),
(1182, 41, 'FB 13', '1'),
(1183, 41, 'FB-14', '1'),
(1184, 41, 'FB-15', '1'),
(1185, 41, 'FG10', '1'),
(1186, 41, 'GC-SK82VN', '1'),
(1187, 41, 'GCPD22AX', '1'),
(1188, 41, 'GE SK82VN', '1'),
(1189, 41, 'GE-VPE25', '1'),
(1190, 41, 'GE-VPGE24', '1'),
(1191, 41, 'GF-A33', '1'),
(1192, 41, 'GF-FB15', '1'),
(1193, 41, 'GF-FN15', '1'),
(1194, 41, 'GFWFY11', '1'),
(1195, 41, 'GG-VFY11', '1'),
(1196, 41, 'GGVFY11', '1'),
(1197, 41, 'GH-AK11', '1'),
(1198, 41, 'GH-K11', '1'),
(1199, 41, 'GHAZ10', '1'),
(1200, 41, 'GJ-VFY11', '1'),
(1201, 41, 'GLORIA', '1'),
(1202, 41, 'GS-B15', '1'),
(1203, 41, 'H4F23', '1'),
(1204, 41, 'HATCH BACK HN12', '1'),
(1205, 41, 'HC34', '1'),
(1206, 41, 'HOMY', '1'),
(1207, 41, 'JUKE', '1'),
(1208, 41, 'K-TRAIL 25A', '1'),
(1209, 41, 'KING CAB PICKUP', '1'),
(1210, 41, 'KRGE24', '1'),
(1211, 41, 'LARGO', '1'),
(1212, 41, 'LAUREL', '1'),
(1213, 41, 'LDF-DW4E16', '1'),
(1214, 41, 'LDF-DW4E26', '1'),
(1215, 41, 'LDF-VW2E26', '1'),
(1216, 41, 'LPHY', '1'),
(1217, 41, 'LUCINO', '1'),
(1218, 41, 'MARCH', '1'),
(1219, 41, 'MARCH AK12', '1'),
(1220, 41, 'MARCH K11', '1'),
(1221, 41, 'MAXIMA', '1'),
(1222, 41, 'MICRA AUTO', '1'),
(1223, 41, 'MOCO', '1'),
(1224, 41, 'MURANO', '1'),
(1225, 41, 'N16', '1'),
(1226, 41, 'NAVARA', '1'),
(1227, 41, 'NV 330 URVAN', '1'),
(1228, 41, 'NV100 CLIPPER', '1'),
(1229, 41, 'NV200VANNETTE', '1'),
(1230, 41, 'NX', '1'),
(1231, 41, 'OC-3K82VM', '1'),
(1232, 41, 'PETROL', '1'),
(1233, 41, 'PREMERA', '1'),
(1234, 41, 'PRESIA', '1'),
(1235, 41, 'PRIMASTAR', '1'),
(1236, 41, 'PULSAR', '1'),
(1237, 41, 'QG18', '1'),
(1238, 41, 'ROGUE', '1'),
(1239, 41, 'RVY10', '1'),
(1240, 41, 'SB13', '1'),
(1241, 41, 'SB14', '1'),
(1242, 41, 'SEDAN', '1'),
(1243, 41, 'SEFIRO', '1'),
(1244, 41, 'SENTRA', '1'),
(1245, 41, 'SERENA', '1'),
(1246, 41, 'SILPHY', '1'),
(1247, 41, 'SILVER', '1'),
(1248, 41, 'SK22VN', '1'),
(1249, 41, 'SKYLINE', '1'),
(1250, 41, 'SS28VN', '1'),
(1251, 41, 'STANZA', '1'),
(1252, 41, 'SU13', '1'),
(1253, 41, 'SU14', '1'),
(1254, 41, 'SUNNY', '1'),
(1255, 41, 'SUNNY 1.6 A', '1'),
(1256, 41, 'SUNNY EX SALOON', '1'),
(1257, 41, 'SUNNY SUPER SALLON', '1'),
(1258, 41, 'SUNNY1.6EXA', '1'),
(1259, 41, 'SVUJC22', '1'),
(1260, 41, 'SYLPHY UA.SG10', '1'),
(1261, 41, 'SYLPHY-TA-FG10', '1'),
(1262, 41, 'TA-FB15', '1'),
(1263, 41, 'TA-NT30', '1'),
(1264, 41, 'TA-QGE25', '1'),
(1265, 41, 'TA-TP12', '1'),
(1266, 41, 'TA-TP12 PREMERA', '1'),
(1267, 41, 'TA-WFY11', '1'),
(1268, 41, 'TEANA', '1'),
(1269, 41, 'TIIDA', '1'),
(1270, 41, 'U -VRGE24', '1'),
(1271, 41, 'U-CM89ASD', '1'),
(1272, 41, 'URVAN', '1'),
(1273, 41, 'UVRGE24', '1'),
(1274, 41, 'VANETTE', '1'),
(1275, 41, 'VARAVAN', '1'),
(1276, 41, 'VB11', '1'),
(1277, 41, 'VEC120', '1'),
(1278, 41, 'WINGROAD', '1'),
(1279, 41, 'X TRAIL', '1'),
(1280, 41, 'X-TRAIL JEEP', '1'),
(1281, 41, 'XTERRA', '1'),
(1282, 41, 'YU41H4', '1'),
(1283, 42, '98', '1'),
(1284, 42, 'ACHIEVA', '1'),
(1285, 42, 'ALERO', '1'),
(1286, 42, 'AURORA', '1'),
(1287, 42, 'CALAIS', '1'),
(1288, 42, 'CUTLASS', '1'),
(1289, 42, 'DELTA 88', '1'),
(1290, 42, 'FIRENZA', '1'),
(1291, 42, 'INTRIGUE', '1'),
(1292, 42, 'ROYALE', '1'),
(1293, 42, 'TORONADO', '1'),
(1294, 43, 'ASTRA 1.7DR', '1'),
(1295, 43, 'ASTRA1.4SE', '1'),
(1296, 43, 'WOL00056T8122633', '1'),
(1297, 44, 'AFRGEZ', '1'),
(1298, 44, 'AHAHIXG', '1'),
(1299, 44, 'AXIA', '1'),
(1300, 44, 'G1GZ-AXIA', '1'),
(1301, 44, 'KANCIL', '1'),
(1302, 44, 'KELISA', '1'),
(1303, 44, 'KELISA AHIZG', '1'),
(1304, 44, 'KELISA GX M', '1'),
(1305, 44, 'KENARI', '1'),
(1306, 44, 'M8EX VIVA', '1'),
(1307, 44, 'MIEZ VIVA', '1'),
(1308, 44, 'RENARI', '1'),
(1309, 44, 'VIVA', '1'),
(1310, 44, 'VIVA ELITE', '1'),
(1311, 44, 'VIVA ELITE AMIEZO', '1'),
(1312, 44, 'VIVA ELITE AMIEZT', '1'),
(1313, 44, 'VIVA ELITE AMIZHG', '1'),
(1314, 44, 'VIVA ELITE-AMIGXT', '1'),
(1315, 44, 'VIVA-ELITEAMIEZR', '1'),
(1316, 45, '206', '1'),
(1317, 45, '3008', '1'),
(1318, 45, '306', '1'),
(1319, 45, '306XR', '1'),
(1320, 45, '307', '1'),
(1321, 45, '308', '1'),
(1322, 45, '405', '1'),
(1323, 45, '406', '1'),
(1324, 45, '406 LX', '1'),
(1325, 45, '407', '1'),
(1326, 45, '504', '1'),
(1327, 45, '505', '1'),
(1328, 45, '508', '1'),
(1329, 45, '604', '1'),
(1330, 45, '605', '1'),
(1331, 45, '607', '1'),
(1332, 45, 'YC06', '1'),
(1333, 46, 'ACCLAIM', '1'),
(1334, 46, 'ARROW PICKUP', '1'),
(1335, 46, 'BREEZE', '1'),
(1336, 46, 'CARAVELLE', '1'),
(1337, 46, 'CHAMP', '1'),
(1338, 46, 'COLT VISTA', '1'),
(1339, 46, 'HORIZON', '1'),
(1340, 46, 'LASER', '1'),
(1341, 46, 'NEON', '1'),
(1342, 46, 'RELIANT', '1'),
(1343, 46, 'SAPPORO', '1'),
(1344, 46, 'SCAMP', '1'),
(1345, 46, 'SUNDANCE', '1'),
(1346, 47, '6000 LE', '1'),
(1347, 47, 'AZTEK', '1'),
(1348, 47, 'BONNEVILLE', '1'),
(1349, 47, 'CATALINA', '1'),
(1350, 47, 'FIERO', '1'),
(1351, 47, 'FIREBIRD', '1'),
(1352, 47, 'G6', '1'),
(1353, 47, 'GRAND AM', '1'),
(1354, 47, 'GRAND PRIX', '1'),
(1355, 47, 'LEMANS', '1'),
(1356, 47, 'MONTANA', '1'),
(1357, 47, 'PARISIENNE', '1'),
(1358, 47, 'SOLSTICE', '1'),
(1359, 47, 'SUNBIRD', '1'),
(1360, 47, 'SUNFIRE', '1'),
(1361, 47, 'T1000', '1'),
(1362, 47, 'TRANS SPORT', '1'),
(1363, 47, 'VIBE', '1'),
(1364, 48, 'BOXSTER', '1'),
(1365, 48, 'CAYENEE-S', '1'),
(1366, 48, 'CAYENNE S HYBRYD', '1'),
(1367, 48, 'GF-99666', '1'),
(1368, 48, 'PANAMERA SE', '1'),
(1369, 48, 'RANAMERA', '1'),
(1370, 49, 'GEN', '1'),
(1371, 49, 'GEN-2', '1'),
(1372, 49, 'OEN 2', '1'),
(1373, 49, 'SALOON', '1'),
(1374, 49, 'SATRIA NEO', '1'),
(1375, 49, 'SAVV', '1'),
(1376, 49, 'WAJA', '1'),
(1377, 49, 'WAJA-CAMPRO', '1'),
(1378, 49, 'WIRA', '1'),
(1379, 49, 'WIRA 1', '1'),
(1380, 49, 'WIRA 1.3GLI M', '1'),
(1381, 49, 'WIRA 1.5 GLI M', '1'),
(1382, 50, 'EVOQUE', '1'),
(1383, 51, '18', '1'),
(1384, 51, '420 DCI', '1'),
(1385, 51, '450', '1'),
(1386, 51, '450 DXI', '1'),
(1387, 51, '5', '1'),
(1388, 51, 'ALLIANCE', '1'),
(1389, 51, 'DXIPRIMEMOVER', '1'),
(1390, 51, 'ENCORE', '1'),
(1391, 51, 'FUEGO', '1'),
(1392, 51, 'LAGUNA', '1'),
(1393, 51, 'LE CAR', '1'),
(1394, 51, 'MEDALLION', '1'),
(1395, 51, 'MEGANE', '1'),
(1396, 51, 'SPORTSWAGON', '1'),
(1397, 52, '9-2X', '1'),
(1398, 52, '900', '1'),
(1399, 52, '9000', '1'),
(1400, 53, 'KORANDO', '1'),
(1401, 53, 'MUSSO', '1'),
(1402, 53, 'REXTON', '1'),
(1403, 53, 'KYRON', '1'),
(1404, 54, 'AURA', '1'),
(1405, 54, 'ION', '1'),
(1406, 54, 'L100', '1'),
(1407, 54, 'L200', '1'),
(1408, 54, 'LS2', '1'),
(1409, 54, 'OUTLOOK', '1'),
(1410, 54, 'RELAY', '1'),
(1411, 54, 'SC1', '1'),
(1412, 54, 'SC2', '1'),
(1413, 55, 'BAJA', '1'),
(1414, 55, 'GF', '1'),
(1415, 55, 'GF-GC1', '1'),
(1416, 55, 'GHGDB', '1'),
(1417, 55, 'IMPREZA', '1'),
(1418, 55, 'J10GL-SALOON', '1'),
(1419, 55, 'J12', '1'),
(1420, 55, 'JUSTY', '1'),
(1421, 55, 'LA-GD2', '1'),
(1422, 55, 'LE-TTI', '1'),
(1423, 55, 'LE-TV1', '1'),
(1424, 55, 'LEGACY', '1'),
(1425, 55, 'LOYALE', '1'),
(1426, 55, 'LRCED', '1'),
(1427, 55, 'OUTBACK', '1'),
(1428, 55, 'RC1', '1'),
(1429, 55, 'SAMBAR', '1'),
(1430, 55, 'SG5', '1'),
(1431, 55, 'TRIBECA', '1'),
(1432, 55, 'TT1', '1'),
(1433, 55, 'TV1', '1'),
(1434, 55, 'UA-RC1', '1'),
(1435, 55, 'V-K83', '1'),
(1436, 55, 'V-KV', '1'),
(1437, 55, 'XT', '1'),
(1438, 56, 'ABA-HA23S', '1'),
(1439, 56, 'AERIO', '1'),
(1440, 56, 'ALTO', '1'),
(1441, 56, 'ALTO 800 LXI', '1'),
(1442, 56, 'ALTO K10 VXI', '1'),
(1443, 56, 'ALTO LXI', '1'),
(1444, 56, 'ALTO LXI 800', '1'),
(1445, 56, 'ALTO LXIB00', '1'),
(1446, 56, 'ALTO VXI', '1'),
(1447, 56, 'BACENO', '1'),
(1448, 56, 'BALENO', '1'),
(1449, 56, 'CARRY', '1'),
(1450, 56, 'CBA-HA24S', '1'),
(1451, 56, 'CBA-SA24S', '1'),
(1452, 56, 'CBA-TD94WESCUDO', '1'),
(1453, 56, 'CELERIO AMT', '1'),
(1454, 56, 'CELERIO LXI', '1'),
(1455, 56, 'CELERIO LXI MT', '1'),
(1456, 56, 'CELERIO VXI AMT', '1'),
(1457, 56, 'CELERIO ZXI', '1'),
(1458, 56, 'CRUZE LA.HR51S', '1'),
(1459, 56, 'CULTUS', '1'),
(1460, 56, 'D1A-RB21S', '1'),
(1461, 56, 'DA52V', '1'),
(1462, 56, 'DAA-MH44S', '1'),
(1463, 56, 'DAA-MH44S WAGON R', '1'),
(1464, 56, 'DAA-MR41S', '1'),
(1465, 56, 'DBA YC11S', '1'),
(1466, 56, 'DBA-HA24S', '1'),
(1467, 56, 'DBA-HA25S', '1'),
(1468, 56, 'DBA-YA11S', '1'),
(1469, 56, 'DBA-ZC118', '1'),
(1470, 56, 'DBA-ZC11S', '1'),
(1471, 56, 'DBA-ZC71S', '1'),
(1472, 56, 'DBAZ0918', '1'),
(1473, 56, 'E-AA34S', '1'),
(1474, 56, 'E-TDOIW', '1'),
(1475, 56, 'EBD-DA63T', '1'),
(1476, 56, 'EBD-DA63T CARRY', '1'),
(1477, 56, 'EBD-DA64V', '1'),
(1478, 56, 'EBD-DA64V EVERY', '1'),
(1479, 56, 'EN-125', '1'),
(1480, 56, 'ERTIGA-ZXI', '1'),
(1481, 56, 'ESCUDO', '1'),
(1482, 56, 'EVERY', '1'),
(1483, 56, 'FORENZA', '1'),
(1484, 56, 'FREEZER TRUCK', '1'),
(1485, 56, 'G10', '1'),
(1486, 56, 'GBD-DA64V', '1'),
(1487, 56, 'GBDHAZ4V', '1'),
(1488, 56, 'GD-BA52V', '1'),
(1489, 56, 'GD-DA52T', '1'),
(1490, 56, 'GD-DA52T-TRUCK', '1'),
(1491, 56, 'GD-DA52V', '1'),
(1492, 56, 'GD-DA57V', '1'),
(1493, 56, 'GD-DB52V', '1'),
(1494, 56, 'GF-GC215', '1'),
(1495, 56, 'GIXXER-GSX150', '1'),
(1496, 56, 'GN 125H', '1'),
(1497, 56, 'GN125', '1'),
(1498, 56, 'GRAND ESCUDO', '1'),
(1499, 56, 'GRAND VITARA', '1'),
(1500, 56, 'GRAND VITARA XL-7', '1'),
(1501, 56, 'GS-125', '1'),
(1502, 56, 'HA238', '1'),
(1503, 56, 'HALF BODY TRUCK', '1'),
(1504, 56, 'HBD-DA17V', '1'),
(1505, 56, 'HBD-DA64V', '1'),
(1506, 56, 'HBD-DA64V EVERY', '1'),
(1507, 56, 'HJ-125K', '1'),
(1508, 56, 'IGNI51.3AT', '1'),
(1509, 56, 'IGNIS', '1'),
(1510, 56, 'JA-HT51S', '1'),
(1511, 56, 'JA-RA21S', '1'),
(1512, 56, 'JARA21S', '1'),
(1513, 56, 'JIMNY', '1'),
(1514, 56, 'K10', '1'),
(1515, 56, 'KBD DA64V', '1'),
(1516, 56, 'KC-FRR33L4', '1'),
(1517, 56, 'KEI', '1'),
(1518, 56, 'KIZASHI', '1'),
(1519, 56, 'LA-HA23S', '1'),
(1520, 56, 'LA-HT51S', '1'),
(1521, 56, 'LA-MA34S', '1'),
(1522, 56, 'LA-MA64S', '1'),
(1523, 56, 'LA-RB21S', '1'),
(1524, 56, 'LA-TD62W', '1'),
(1525, 56, 'LAHA238', '1'),
(1526, 56, 'LARA21S', '1'),
(1527, 56, 'LATX92W', '1'),
(1528, 56, 'LE-DA62V', '1'),
(1529, 56, 'LE-DA63T', '1'),
(1530, 56, 'LEDA62T', '1'),
(1531, 56, 'LET''110', '1'),
(1532, 56, 'LET''S100', '1'),
(1533, 56, 'LIANA', '1'),
(1534, 56, 'MARUTI ALTO', '1'),
(1535, 56, 'MARUTI ALTO 800 LXI (SPORTZ)', '1'),
(1536, 56, 'PBA-SA24S', '1'),
(1537, 56, 'QN 125H', '1'),
(1538, 56, 'RA21S', '1'),
(1539, 56, 'RENO', '1'),
(1540, 56, 'SAMURAI', '1'),
(1541, 56, 'SH42A', '1'),
(1542, 56, 'SIDEKICK', '1'),
(1543, 56, 'SJ413VX JEEP', '1'),
(1544, 56, 'SPLASH', '1'),
(1545, 56, 'SX4', '1'),
(1546, 56, 'SX4 1.6VVT', '1'),
(1547, 56, 'SX4 VVT', '1'),
(1548, 56, 'TA-HN22S', '1'),
(1549, 56, 'TA-HT81S', '1'),
(1550, 56, 'TA-MC225', '1'),
(1551, 56, 'TA01V', '1'),
(1552, 56, 'TIANA', '1'),
(1553, 56, 'TL52W', '1'),
(1554, 56, 'UA- H', '1'),
(1555, 56, 'UA-HN22S', '1'),
(1556, 56, 'UA-HT01S', '1'),
(1557, 56, 'UA-HT517', '1'),
(1558, 56, 'UA-HT518', '1'),
(1559, 56, 'UA-HT51S', '1'),
(1560, 56, 'UA-MC22S', '1'),
(1561, 56, 'VDE51V', '1'),
(1562, 56, 'VERONA', '1'),
(1563, 56, 'VITARA', '1'),
(1564, 56, 'VOLTY', '1'),
(1565, 56, 'XL-7', '1'),
(1566, 56, 'ZEN ESTILO', '1'),
(1567, 57, 'INDICA', '1'),
(1568, 57, 'INDICA LXI', '1'),
(1569, 57, 'INDICA VISTA AURA', '1'),
(1570, 57, 'INDICA XETA', '1'),
(1571, 57, 'INDIGO', '1'),
(1572, 57, 'INDIGO -CS', '1'),
(1573, 57, 'INDIGO ECS', '1'),
(1574, 57, 'INDIGO GLX', '1'),
(1575, 57, 'INDIGO MARINA', '1'),
(1576, 57, 'INDIKA', '1'),
(1577, 57, 'INDIKA LXI', '1'),
(1578, 57, 'NANO', '1'),
(1579, 57, 'NANO TWIST', '1'),
(1580, 57, 'NANO TWIST XT', '1'),
(1581, 57, 'SAFARI EX', '1'),
(1582, 57, 'SE 1613', '1'),
(1583, 57, 'SFC407', '1'),
(1584, 57, 'SIERRA', '1'),
(1585, 57, 'SINGLE CAB', '1'),
(1586, 57, 'XENON', '1'),
(1587, 57, 'XENON 3OL', '1'),
(1588, 57, 'XENON LIGHT TRUCK', '1'),
(1589, 57, 'XETA-GLX', '1'),
(1590, 3, 'VITZ', '1'),
(1591, 3, '110', '1'),
(1592, 3, '1210FE', '1'),
(1593, 3, '15 SCATER', '1'),
(1594, 3, '1ST', '1'),
(1595, 3, '4RUNNER', '1'),
(1596, 3, 'AA60', '1'),
(1597, 3, 'ABFS402M', '1'),
(1598, 3, 'ACE', '1'),
(1599, 3, 'ADF-KDH201V', '1'),
(1600, 3, 'ADF-KDH206V', '1'),
(1601, 3, 'ADF-KDH211K', '1'),
(1602, 3, 'ADF-KDH221K', '1'),
(1603, 3, 'ADF-KDH223B', '1'),
(1604, 3, 'ADF-KSH211K', '1'),
(1605, 3, 'ADS-KDH221K', '1'),
(1606, 3, 'AE100', '1'),
(1607, 3, 'AE101', '1'),
(1608, 3, 'AE110', '1'),
(1609, 3, 'AE111', '1'),
(1610, 3, 'ALLEX', '1'),
(1611, 3, 'ALLION', '1'),
(1612, 3, 'ALLION CBA-NZT240', '1'),
(1613, 3, 'ALPHARD', '1'),
(1614, 3, 'ALTEZZA', '1'),
(1615, 3, 'ANGOGO', '1'),
(1616, 3, 'ANGOGO-TANCP20', '1'),
(1617, 3, 'AQUA', '1'),
(1618, 3, 'AT150', '1'),
(1619, 3, 'AT170-CORONA', '1'),
(1620, 3, 'AT192', '1'),
(1621, 3, 'AVALON', '1'),
(1622, 3, 'AVANZA', '1'),
(1623, 3, 'AXIO', '1'),
(1624, 3, 'AXIO DAA-NKE165', '1'),
(1625, 3, 'AXIO HYBRID', '1'),
(1626, 3, 'BELTA', '1'),
(1627, 3, 'BJ40RV KV', '1'),
(1628, 3, 'BJ43', '1'),
(1629, 3, 'BU212', '1'),
(1630, 3, 'BU66', '1'),
(1631, 3, 'BU67', '1'),
(1632, 3, 'BU82 OPEN', '1'),
(1633, 3, 'BU88', '1'),
(1634, 3, 'C V', '1'),
(1635, 3, 'C/SPACIO', '1'),
(1636, 3, 'CAB-UR1200W 200', '1'),
(1637, 3, 'CALDINA', '1'),
(1638, 3, 'CAMI-JEEP', '1'),
(1639, 3, 'CAMRY', '1'),
(1640, 3, 'CAMRY SOLARA', '1'),
(1641, 3, 'CAMY GF-J102E', '1'),
(1642, 3, 'CAREENA', '1'),
(1643, 3, 'CARINA', '1'),
(1644, 3, 'CBA TR1120UU PRADO', '1'),
(1645, 3, 'CBA-ACU30W', '1'),
(1646, 3, 'CBA-J200E', '1'),
(1647, 3, 'CBA-J210E', '1'),
(1648, 3, 'CBA-NCP60 IST', '1'),
(1649, 3, 'CBA-NCP70 WILL CYPHA', '1'),
(1650, 3, 'CBA-NZE121', '1'),
(1651, 3, 'CBA-NZT240', '1'),
(1652, 3, 'CBA-NZT240-ALLION', '1'),
(1653, 3, 'CBA-SCP11', '1'),
(1654, 3, 'CBA-TRI120W PRADO', '1'),
(1655, 3, 'CBA-TRJ120W', '1'),
(1656, 3, 'CBA-TRJ140W-PRADO', '1'),
(1657, 3, 'CBA-TRJ150W PRADO', '1'),
(1658, 3, 'CBA-TRJ150W PRADO', '1'),
(1659, 3, 'CBA-TRJ150W-TX', '1'),
(1660, 3, 'CBA-UR1200W 200', '1'),
(1661, 3, 'CBA-UR1202W 200', '1'),
(1662, 3, 'CBA-URJ202W', '1'),
(1663, 3, 'CBA-UZJ200W', '1'),
(1664, 3, 'CBATRJ150W', '1'),
(1665, 3, 'CBF', '1'),
(1666, 3, 'CBF-TRH200V', '1'),
(1667, 3, 'CBF-TRH200V HIACE', '1'),
(1668, 3, 'CDBA-NZE121', '1'),
(1669, 3, 'CE100', '1'),
(1670, 3, 'CE106', '1'),
(1671, 3, 'CE110', '1'),
(1672, 3, 'CE110R', '1'),
(1673, 3, 'CELICA', '1'),
(1674, 3, 'CHERY QQ', '1'),
(1675, 3, 'CM35', '1'),
(1676, 3, 'CM36', '1'),
(1677, 3, 'CM51', '1'),
(1678, 3, 'CM56', '1'),
(1679, 3, 'CM70', '1'),
(1680, 3, 'COASTER', '1'),
(1681, 3, 'COMMUTOR', '1'),
(1682, 3, 'COROLLA', '1'),
(1683, 3, 'COROLLA - KE72', '1'),
(1684, 3, 'COROLLA - KE74V', '1'),
(1685, 3, 'COROLLA 161', '1'),
(1686, 3, 'COROLLA AXIO', '1'),
(1687, 3, 'COROLLA TANZE121', '1'),
(1688, 3, 'CORONA', '1'),
(1689, 3, 'CORSA', '1'),
(1690, 3, 'CR27', '1'),
(1691, 3, 'CR27V', '1'),
(1692, 3, 'CR36', '1'),
(1693, 3, 'CR36V', '1'),
(1694, 3, 'CR37', '1'),
(1695, 3, 'CR41', '1'),
(1696, 3, 'CR42', '1'),
(1697, 3, 'CRESSIDA', '1'),
(1698, 3, 'CREW CAB', '1'),
(1699, 3, 'CROWN', '1'),
(1700, 3, 'CROWN DELUXE', '1'),
(1701, 3, 'CRZ', '1'),
(1702, 3, 'CT170', '1'),
(1703, 3, 'CT190', '1'),
(1704, 3, 'CXR20G', '1'),
(1705, 3, 'CYGNUS-GH-UZJ100W', '1'),
(1706, 3, 'CYNOS', '1'),
(1707, 3, 'DA-KR42V', '1'),
(1708, 3, 'DAA-AWS210', '1'),
(1709, 3, 'DAA-NHP10', '1'),
(1710, 3, 'DAA-NHP10-AQUA', '1'),
(1711, 3, 'DAA-NHW20', '1'),
(1712, 3, 'DAA-NKE165', '1'),
(1713, 3, 'DAA-NKE165 AXIO', '1'),
(1714, 3, 'DAA-NKE165G COROLLA', '1'),
(1715, 3, 'DAA-NKE165GFIELDER', '1'),
(1716, 3, 'DAA-NZT260', '1'),
(1717, 3, 'DAA-ZVW20', '1'),
(1718, 3, 'DAA-ZVW30', '1'),
(1719, 3, 'DAA-ZVW30 PRIUS', '1'),
(1720, 3, 'DAA-ZVW40W', '1'),
(1721, 3, 'DAA-ZWR80G', '1'),
(1722, 3, 'DAA-ZWR80G ESQUIRE', '1'),
(1723, 3, 'DAA-ZWR80G VOXY', '1'),
(1724, 3, 'DAANHP10', '1'),
(1725, 3, 'DBA NCP110', '1'),
(1726, 3, 'DBA SCP90', '1'),
(1727, 3, 'DBA SCP92', '1'),
(1728, 3, 'DBA ZRT260', '1'),
(1729, 3, 'DBA ZZT240', '1'),
(1730, 3, 'DBA-ACA21W', '1'),
(1731, 3, 'DBA-ACA36W', '1'),
(1732, 3, 'DBA-ACA36W RAV4', '1'),
(1733, 3, 'DBA-ACA38W BANGUARD', '1'),
(1734, 3, 'DBA-K3P92', '1'),
(1735, 3, 'DBA-KGC10', '1'),
(1736, 3, 'DBA-KGC10 PASSO', '1'),
(1737, 3, 'DBA-KGC30', '1'),
(1738, 3, 'DBA-KSP130', '1'),
(1739, 3, 'DBA-KSP130 VTZ', '1'),
(1740, 3, 'DBA-KSP90', '1'),
(1741, 3, 'DBA-KSP90 VITZ', '1'),
(1742, 3, 'DBA-KSP92', '1'),
(1743, 3, 'DBA-MCP110', '1'),
(1744, 3, 'DBA-NCP60', '1'),
(1745, 3, 'DBA-NSP130', '1'),
(1746, 3, 'DBA-NZE-161', '1'),
(1747, 3, 'DBA-NZE141', '1'),
(1748, 3, 'DBA-NZE141 AXIO', '1'),
(1749, 3, 'DBA-NZE141 COROLLA', '1'),
(1750, 3, 'DBA-NZE141G FIELDER', '1'),
(1751, 3, 'DBA-NZE144', '1'),
(1752, 3, 'DBA-NZE260', '1'),
(1753, 3, 'DBA-NZT-260', '1'),
(1754, 3, 'DBA-NZT260', '1'),
(1755, 3, 'DBA-NZT260 ALLION', '1'),
(1756, 3, 'DBA-NZT260 PREMIO', '1'),
(1757, 3, 'DBA-NZT260 PREMIO G SUPERIOR', '1'),
(1758, 3, 'DBA-SCP 100', '1'),
(1759, 3, 'DBA-SCP100', '1'),
(1760, 3, 'DBA-SCP100 RACTIS', '1'),
(1761, 3, 'DBA-SCP90', '1'),
(1762, 3, 'DBA-SCP90 VITZ', '1'),
(1763, 3, 'DBA-SCP92', '1'),
(1764, 3, 'DBA-SCP92 BELTA', '1'),
(1765, 3, 'DBA-ZSU60W HARRIER', '1'),
(1766, 3, 'DBAKGC10', '1'),
(1767, 3, 'DBAKOC10', '1'),
(1768, 3, 'DBANCP110', '1'),
(1769, 3, 'DBANGC30', '1'),
(1770, 3, 'DBANZT260', '1'),
(1771, 3, 'DBASCP90 VITZ', '1'),
(1772, 3, 'DBASCP92', '1'),
(1773, 3, 'DEA-FCP97', '1'),
(1774, 3, 'DEA-KSP90', '1'),
(1775, 3, 'DEVIN', '1'),
(1776, 3, 'DHA NZE141', '1'),
(1777, 3, 'DJ40RVKV', '1'),
(1778, 3, 'DLA-ZBW35', '1'),
(1779, 3, 'DLA-ZvW35', '1'),
(1780, 3, 'DOUBLE CAB', '1'),
(1781, 3, 'DUET', '1'),
(1782, 3, 'DUMP TRUCK', '1'),
(1783, 3, 'DYNA', '1'),
(1784, 3, 'DYNA-HALF BODY', '1'),
(1785, 3, 'E-AE100', '1'),
(1786, 3, 'E-AE110', '1'),
(1787, 3, 'E-AE91', '1'),
(1788, 3, 'E-AT130', '1'),
(1789, 3, 'E-AT170', '1'),
(1790, 3, 'E-AT192', '1'),
(1791, 3, 'E-AT211', '1'),
(1792, 3, 'E-EE101', '1'),
(1793, 3, 'E-EE111', '1'),
(1794, 3, 'E-EE90-CLOSED', '1'),
(1795, 3, 'E-EL30', '1'),
(1796, 3, 'E-EL41', '1'),
(1797, 3, 'E-EL51', '1'),
(1798, 3, 'E-EP82', '1'),
(1799, 3, 'E-EP82-STARLET', '1'),
(1800, 3, 'ECHO', '1'),
(1801, 3, 'EE 101', '1'),
(1802, 3, 'EE08V', '1'),
(1803, 3, 'EE100R', '1'),
(1804, 3, 'EE104', '1'),
(1805, 3, 'EE110R-AEMNS', '1'),
(1806, 3, 'EE96V-CLOSED', '1'),
(1807, 3, 'EF-111', '1'),
(1808, 3, 'EL41', '1'),
(1809, 3, 'EL50 R TERCEL', '1'),
(1810, 3, 'EL50R-AEMDS', '1'),
(1811, 3, 'EL51', '1'),
(1812, 3, 'EP71-STARLET', '1'),
(1813, 3, 'EP82', '1'),
(1814, 3, 'EP91', '1'),
(1815, 3, 'ET196', '1'),
(1816, 3, 'EX210', '1'),
(1817, 3, 'EXZ10', '1'),
(1818, 3, 'FIELDER', '1'),
(1819, 3, 'FJ CRUISER', '1'),
(1820, 3, 'FORTUNE', '1'),
(1821, 3, 'FORTUNER', '1'),
(1822, 3, 'FREEZER', '1'),
(1823, 3, 'G-TOURING', '1'),
(1824, 3, 'GA-KR41V', '1'),
(1825, 3, 'GA-KR42V', '1'),
(1826, 3, 'GC-KR42V', '1'),
(1827, 3, 'GE RZH102V', '1'),
(1828, 3, 'GE-RZH112V', '1'),
(1829, 3, 'GE-RZH183K', '1'),
(1830, 3, 'GF-AT210', '1'),
(1831, 3, 'GF-AT212', '1'),
(1832, 3, 'GF-EE111', '1'),
(1833, 3, 'GF-J100E', '1'),
(1834, 3, 'GF-J122E', '1'),
(1835, 3, 'GF-JT211', '1'),
(1836, 3, 'GF-M100A', '1'),
(1837, 3, 'GF-SCP10', '1'),
(1838, 3, 'GF-UZJ100W', '1'),
(1839, 3, 'GFSXU10W', '1'),
(1840, 3, 'GG-EE102V', '1'),
(1841, 3, 'GG-EE103V', '1'),
(1842, 3, 'GH-SCP10', '1'),
(1843, 3, 'GHNCP12', '1'),
(1844, 3, 'GK-KR42V', '1'),
(1845, 3, 'GK-KR42V TOWN ACE', '1'),
(1846, 3, 'GK-KR52V', '1'),
(1847, 3, 'GKKM70', '1'),
(1848, 3, 'GR-JZX100', '1'),
(1849, 3, 'GRAND MARK', '1'),
(1850, 3, 'GT86', '1'),
(1851, 3, 'GX-100', '1'),
(1852, 3, 'H113V', '1'),
(1853, 3, 'HARRIER', '1'),
(1854, 3, 'HARRIER AUTO', '1'),
(1855, 3, 'HDB31', '1'),
(1856, 3, 'HDJ100R-GNMEX', '1'),
(1857, 3, 'HIACE', '1'),
(1858, 3, 'HIACE KDH SUPER GL', '1'),
(1859, 3, 'HIACE KOH222R', '1'),
(1860, 3, 'HIGHLANDER', '1'),
(1861, 3, 'HILUX', '1'),
(1862, 3, 'HILUX 4WD', '1'),
(1863, 3, 'HILUX DLX', '1'),
(1864, 3, 'HILUX HL2', '1'),
(1865, 3, 'HILUX VIGO', '1'),
(1866, 3, 'HILUX VIGO 2.5E', '1'),
(1867, 3, 'HILUX VIGO CHAMP', '1'),
(1868, 3, 'HYBRID', '1'),
(1869, 3, 'HZJ78', '1'),
(1870, 3, 'INVINCIBLE', '1'),
(1871, 3, 'IST', '1'),
(1872, 3, 'JEEP', '1'),
(1873, 3, 'JF-AT212', '1'),
(1874, 3, 'JTDBW', '1'),
(1875, 3, 'JTF55', '1'),
(1876, 3, 'KA67V', '1'),
(1877, 3, 'KB-CR27V', '1'),
(1878, 3, 'KB-CR36V', '1'),
(1879, 3, 'KB-CR51V', '1'),
(1880, 3, 'KBCM55', '1'),
(1881, 3, 'KBCR41V', '1'),
(1882, 3, 'KC-FB4JGAT', '1'),
(1883, 3, 'KC-LH113V', '1'),
(1884, 3, 'KC-LH119V', '1'),
(1885, 3, 'KC-LY101', '1'),
(1886, 3, 'KC-LY161', '1'),
(1887, 3, 'KCBU2121', '1'),
(1888, 3, 'KCLH162V', '1'),
(1889, 3, 'KD-CT210', '1'),
(1890, 3, 'KDH 201V', '1'),
(1891, 3, 'KDH-201', '1'),
(1892, 3, 'KDH200', '1'),
(1893, 3, 'KDH221K', '1'),
(1894, 3, 'KDH222R', '1'),
(1895, 3, 'KDH223', '1'),
(1896, 3, 'KE 72 V', '1'),
(1897, 3, 'KF-CM75', '1'),
(1898, 3, 'KF-CM80', '1'),
(1899, 3, 'KF-CM85', '1'),
(1900, 3, 'KF-CR42V', '1'),
(1901, 3, 'KG LY132', '1'),
(1902, 3, 'KG-L', '1'),
(1903, 3, 'KG-LH168V', '1'),
(1904, 3, 'KG-LH172K', '1'),
(1905, 3, 'KG-LH172V', '1'),
(1906, 3, 'KG-LH182K', '1'),
(1907, 3, 'KG-LH184B', '1'),
(1908, 3, 'KG-LXH43V', '1'),
(1909, 3, 'KG-LY202 DYNA', '1'),
(1910, 3, 'KG-LY220', '1'),
(1911, 3, 'KG-LY230', '1'),
(1912, 3, 'KGLH162V', '1'),
(1913, 3, 'KGLY230', '1'),
(1914, 3, 'KJCM70', '1'),
(1915, 3, 'KJCR42V', '1'),
(1916, 3, 'KK-LY230', '1'),
(1917, 3, 'KK-LY280', '1'),
(1918, 3, 'KK-XZU306', '1'),
(1919, 3, 'KK-XZU347', '1'),
(1920, 3, 'KK-XZU507', '1'),
(1921, 3, 'KLUGER', '1'),
(1922, 3, 'KR-DDY220 TOYOACE', '1'),
(1923, 3, 'KR-KDH200 HIACE', '1'),
(1924, 3, 'KR-KDH200K', '1'),
(1925, 3, 'KR-KDH200V', '1'),
(1926, 3, 'KR-KDH200V HIACE', '1'),
(1927, 3, 'KR-KDH200VSUPERGL', '1'),
(1928, 3, 'KR-KDH205V', '1'),
(1929, 3, 'KR-KDH220K', '1'),
(1930, 3, 'KR-KDH222B', '1'),
(1931, 3, 'KR-KDY230', '1'),
(1932, 3, 'KR41V', '1'),
(1933, 3, 'KR42', '1'),
(1934, 3, 'KRKDH220KHIACE', '1'),
(1935, 3, 'KZH120', '1'),
(1936, 3, 'KZJ70', '1'),
(1937, 3, 'KZJ85', '1'),
(1938, 3, 'L.EE101BOX', '1'),
(1939, 3, 'LAND CRUISER', '1'),
(1940, 3, 'LAND CRUISER PRADO', '1'),
(1941, 3, 'LAND CRUISER PRADO CBA-TRJ150W', '1'),
(1942, 3, 'LDF', '1'),
(1943, 3, 'LDF-KDH201V', '1'),
(1944, 3, 'LDF-KDH201V HIACE', '1'),
(1945, 3, 'LDF-KDH221K HIACE', '1'),
(1946, 3, 'LDF-KDH223B', '1'),
(1947, 3, 'LDS-KDH221K HIACE', '1'),
(1948, 3, 'LEXESS', '1'),
(1949, 3, 'LH 109', '1'),
(1950, 3, 'LH 202 R', '1'),
(1951, 3, 'LH102', '1'),
(1952, 3, 'LH103', '1'),
(1953, 3, 'LH110', '1'),
(1954, 3, 'LH112', '1'),
(1955, 3, 'LH113', '1'),
(1956, 3, 'LH119', '1'),
(1957, 3, 'LH120', '1'),
(1958, 3, 'LH123', '1'),
(1959, 3, 'LH125', '1'),
(1960, 3, 'LH130', '1'),
(1961, 3, 'LH186', '1'),
(1962, 3, 'LH200R-RMBDE', '1');
INSERT INTO `vehicle_model` (`id`, `vehicle_id`, `vehicleModel`, `vehicleType`) VALUES
(1963, 3, 'LH50', '1'),
(1964, 3, 'LH51V', '1'),
(1965, 3, 'LH60VV', '1'),
(1966, 3, 'LH61V', '1'),
(1967, 3, 'LITE ACE', '1'),
(1968, 3, 'LITE ACE GL', '1'),
(1969, 3, 'LJ70 RV KR', '1'),
(1970, 3, 'LJ95', '1'),
(1971, 3, 'LN106', '1'),
(1972, 3, 'LN107', '1'),
(1973, 3, 'LN109', '1'),
(1974, 3, 'LN145R', '1'),
(1975, 3, 'LN65', '1'),
(1976, 3, 'LY101', '1'),
(1977, 3, 'LY16', '1'),
(1978, 3, 'LY211', '1'),
(1979, 3, 'LY212', '1'),
(1980, 3, 'LY50', '1'),
(1981, 3, 'LY51', '1'),
(1982, 3, 'LY61', '1'),
(1983, 3, 'M-LH113V', '1'),
(1984, 3, 'MARINO', '1'),
(1985, 3, 'MARK 11', '1'),
(1986, 3, 'MARK X', '1'),
(1987, 3, 'MARKII TAGX110', '1'),
(1988, 3, 'MATRIX', '1'),
(1989, 3, 'MILUX', '1'),
(1990, 3, 'MR-S', '1'),
(1991, 3, 'MR2', '1'),
(1992, 3, 'N-LH50V', '1'),
(1993, 3, 'N-LH61V', '1'),
(1994, 3, 'NHP10R-AHXVB PRIUS C', '1'),
(1995, 3, 'NL50', '1'),
(1996, 3, 'NLH71V', '1'),
(1997, 3, 'NOAH DBA-ZRR70W', '1'),
(1998, 3, 'NZE121', '1'),
(1999, 3, 'NZE141', '1'),
(2000, 3, 'NZT260', '1'),
(2001, 3, 'OPEN TRUCK', '1'),
(2002, 3, 'PANEL VAN', '1'),
(2003, 3, 'PASEO', '1'),
(2004, 3, 'PASSO', '1'),
(2005, 3, 'PB.XZB50', '1'),
(2006, 3, 'PDO-XZB50', '1'),
(2007, 3, 'PLATZ', '1'),
(2008, 3, 'PRADO', '1'),
(2009, 3, 'PRADO TX', '1'),
(2010, 3, 'PREMIO', '1'),
(2011, 3, 'PREVIA', '1'),
(2012, 3, 'PRIUS', '1'),
(2013, 3, 'PRIUS ALPHA', '1'),
(2014, 3, 'PRIUS C', '1'),
(2015, 3, 'PRIUS DAAZVW50', '1'),
(2016, 3, 'PRIUS S DAA-ZVW30', '1'),
(2017, 3, 'PRIWIS', '1'),
(2018, 3, 'QDF-KDH201V', '1'),
(2019, 3, 'R-EE96V', '1'),
(2020, 3, 'RAUM', '1'),
(2021, 3, 'RAUM CAR', '1'),
(2022, 3, 'RAV4', '1'),
(2023, 3, 'RAV4 J', '1'),
(2024, 3, 'RAV4J', '1'),
(2025, 3, 'REGIUS', '1'),
(2026, 3, 'RUSH', '1'),
(2027, 3, 'RUSH ABA-J200E', '1'),
(2028, 3, 'RX450 HYBRID', '1'),
(2029, 3, 'S-CR26V', '1'),
(2030, 3, 'S-CR27V', '1'),
(2031, 3, 'S-CR36', '1'),
(2032, 3, 'SAI', '1'),
(2033, 3, 'SARA-100 JEEP', '1'),
(2034, 3, 'SCION TC', '1'),
(2035, 3, 'SEQUOIA', '1'),
(2036, 3, 'SIENNA', '1'),
(2037, 3, 'SL50 R TERCEL', '1'),
(2038, 3, 'SOLUNA', '1'),
(2039, 3, 'SOLUNA GLIA', '1'),
(2040, 3, 'SOLUNA VIOS', '1'),
(2041, 3, 'SOLUNA XLI M', '1'),
(2042, 3, 'SORINTER', '1'),
(2043, 3, 'SPRINTER', '1'),
(2044, 3, 'SPRINTER AE100', '1'),
(2045, 3, 'STARLET', '1'),
(2046, 3, 'SUPER CUSTOM', '1'),
(2047, 3, 'SUPER-GL', '1'),
(2048, 3, 'SUPRA', '1'),
(2049, 3, 'SWFFT', '1'),
(2050, 3, 'SX010', '1'),
(2051, 3, 'T100', '1'),
(2052, 3, 'TA NZE121', '1'),
(2053, 3, 'TA-ACA21W', '1'),
(2054, 3, 'TA-GX110', '1'),
(2055, 3, 'TA-J122E', '1'),
(2056, 3, 'TA-LZT240', '1'),
(2057, 3, 'TA-NCP13', '1'),
(2058, 3, 'TA-NZE120', '1'),
(2059, 3, 'TA-VZ1121W', '1'),
(2060, 3, 'TA-VZJ121W PRADO', '1'),
(2061, 3, 'TACOMA', '1'),
(2062, 3, 'TANZE121', '1'),
(2063, 3, 'TASCP11', '1'),
(2064, 3, 'TC-TRH102V', '1'),
(2065, 3, 'TC-TRH112V', '1'),
(2066, 3, 'TERCEL', '1'),
(2067, 3, 'TIPPING-DUMP TRUCK', '1'),
(2068, 3, 'TOWN ACE', '1'),
(2069, 3, 'TOWN ACE-KI-CR-42V', '1'),
(2070, 3, 'TOYOACE', '1'),
(2071, 3, 'TUNDRA', '1'),
(2072, 3, 'TUNDRA DOUBLE CAB', '1'),
(2073, 3, 'U LH113V', '1'),
(2074, 3, 'U-LH1253', '1'),
(2075, 3, 'U-LY50', '1'),
(2076, 3, 'UA-NCP60', '1'),
(2077, 3, 'UA-NZE120', '1'),
(2078, 3, 'UA-NZE121', '1'),
(2079, 3, 'UA-NZT240', '1'),
(2080, 3, 'UA-SCP10', '1'),
(2081, 3, 'UA-ZZE122', '1'),
(2082, 3, 'UA-ZZT240', '1'),
(2083, 3, 'UANZT240', '1'),
(2084, 3, 'URJ202W LAND CRUISER', '1'),
(2085, 3, 'VAN', '1'),
(2086, 3, 'VANCP60', '1'),
(2087, 3, 'VANGUARD', '1'),
(2088, 3, 'VDJ200R-GNTEZ', '1'),
(2089, 3, 'VENZA', '1'),
(2090, 3, 'VEROSSA', '1'),
(2091, 3, 'VIGO', '1'),
(2092, 3, 'VIGO KUN26R', '1'),
(2093, 3, 'VIGO KUN36', '1'),
(2094, 3, 'VIGSISEA', '1'),
(2095, 3, 'VIOS', '1'),
(2096, 3, 'VISTA', '1'),
(2097, 3, 'VOXY', '1'),
(2098, 3, 'VOXY-HYBRID', '1'),
(2099, 3, 'WKRS55E', '1'),
(2100, 3, 'X-CV30BOX', '1'),
(2101, 3, 'XNL40', '1'),
(2102, 3, 'YARIS', '1'),
(2103, 3, 'ZRE 141', '1'),
(2104, 59, 'BEETLE', '1'),
(2105, 59, 'CABRIO', '1'),
(2106, 59, 'CABRIOLET', '1'),
(2107, 59, 'CORRADO', '1'),
(2108, 59, 'CRAFTER CR35109', '1'),
(2109, 59, 'DASHER', '1'),
(2110, 59, 'EUROVAN', '1'),
(2111, 59, 'FASSAT', '1'),
(2112, 59, 'FOX', '1'),
(2113, 59, 'GOLF', '1'),
(2114, 59, 'JETTA', '1'),
(2115, 59, 'PASSAT', '1'),
(2116, 59, 'POLO', '1'),
(2117, 59, 'QUANTUM', '1'),
(2118, 59, 'RABBIT', '1'),
(2119, 59, 'ROUTAN', '1'),
(2120, 59, 'SCIROCCO', '1'),
(2121, 59, 'TIGUAN', '1'),
(2122, 59, 'TOUAREG', '1'),
(2123, 59, 'VANAGON', '1'),
(2124, 59, '1300', '1'),
(2125, 59, 'BORA', '1'),
(2126, 59, 'E6NAHS', '1'),
(2127, 60, '240', '1'),
(2128, 60, '244', '1'),
(2129, 60, '380 3D', '1'),
(2130, 60, '740 GLE', '1'),
(2131, 60, '840', '1'),
(2132, 60, '850', '1'),
(2133, 60, '940', '1'),
(2134, 60, '960', '1'),
(2135, 60, 'C70', '1'),
(2136, 60, 'DL', '1'),
(2137, 60, 'FM-12', '1'),
(2138, 60, 'GLE', '1'),
(2139, 60, 'HEARSE', '1'),
(2140, 60, 'S40', '1'),
(2141, 60, 'S60', '1'),
(2142, 60, 'S70', '1'),
(2143, 60, 'S80', '1'),
(2144, 60, 'V70', '1'),
(2145, 60, 'XC 90', '1'),
(2146, 60, 'XC60', '1'),
(2147, 60, 'XC90', '1'),
(2148, 60, 'XG-19', '1'),
(2149, 61, 'GV', '1'),
(2150, 61, 'GVC', '1'),
(2151, 61, 'GVL', '1'),
(2152, 61, 'GVS', '1'),
(2153, 61, 'GVX', '1'),
(2154, 61, 'YUOTH', '1'),
(2155, 62, 'EXTREME', '1'),
(2156, 62, 'NOMAD', '1'),
(2157, 62, 'NOMAD 13LB', '1'),
(2158, 62, 'NOMAD II', '1');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_type`
--

CREATE TABLE `vehicle_type` (
  `id` int(11) NOT NULL,
  `vehicle_type` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle_type`
--

INSERT INTO `vehicle_type` (`id`, `vehicle_type`) VALUES
(1, 'CAR'),
(2, 'BIKE'),
(3, '3 WHEELER');

-- --------------------------------------------------------

--
-- Table structure for table `voluntary_excess`
--

CREATE TABLE `voluntary_excess` (
  `id` int(11) NOT NULL,
  `voluntary_excess` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `voluntary_excess`
--

INSERT INTO `voluntary_excess` (`id`, `voluntary_excess`) VALUES
(1, 1000),
(2, 2000),
(3, 3000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aditional_covers`
--
ALTER TABLE `aditional_covers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`);

--
-- Indexes for table `cover_types`
--
ALTER TABLE `cover_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`);

--
-- Indexes for table `equation_keys`
--
ALTER TABLE `equation_keys`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`);

--
-- Indexes for table `graphic_info`
--
ALTER TABLE `graphic_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`),
  ADD KEY `graphic_info_fk1_idx` (`insurance_type_id`);

--
-- Indexes for table `insurance_companies`
--
ALTER TABLE `insurance_companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `insurance_company_insurance_type_id`
--
ALTER TABLE `insurance_company_insurance_type_id`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `insurance_features`
--
ALTER TABLE `insurance_features`
  ADD PRIMARY KEY (`id`),
  ADD KEY `insurance_features_fk1_idx` (`insurance_id`),
  ADD KEY `insurance_features_fk2_idx` (`insurance_type`);

--
-- Indexes for table `insurance_purpose_value`
--
ALTER TABLE `insurance_purpose_value`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`),
  ADD KEY `insurance_purpose_value_fk1_idx` (`insurance_type`),
  ADD KEY `insurance_purpose_value_fk2_idx` (`insurance_company`),
  ADD KEY `insurance_purpose_value_fk3_idx` (`purpose`);

--
-- Indexes for table `insurance_quotation`
--
ALTER TABLE `insurance_quotation`
  ADD PRIMARY KEY (`insurance_quotation_id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`),
  ADD KEY `insurance_quotation_fk1_idx` (`cover_type_required`),
  ADD KEY `insurance_quotation_fk2_idx` (`voluntary_excess`),
  ADD KEY `insurance_quotation_fk3_idx` (`purpose`);

--
-- Indexes for table `insurance_quotation_aditional_covers`
--
ALTER TABLE `insurance_quotation_aditional_covers`
  ADD PRIMARY KEY (`insurance_quotation_id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`),
  ADD KEY `insurance_quotation_aditional_covers_fk2_idx` (`aditional_cover`);

--
-- Indexes for table `insurance_types`
--
ALTER TABLE `insurance_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`);

--
-- Indexes for table `payment_info`
--
ALTER TABLE `payment_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`),
  ADD KEY `shipping_fk1_idx` (`shipping_mentod`),
  ADD KEY `shipping_fk2_idx` (`insurance_quotation_id`);

--
-- Indexes for table `persona_info_single`
--
ALTER TABLE `persona_info_single`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`),
  ADD KEY `persona_info_single_fk1_idx` (`single_basic_info_id`),
  ADD KEY `persona_info_single_fk2_idx` (`type`);

--
-- Indexes for table `purpose`
--
ALTER TABLE `purpose`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `regions`
--
ALTER TABLE `regions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`);

--
-- Indexes for table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`service_id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`);

--
-- Indexes for table `shipping`
--
ALTER TABLE `shipping`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `quotation_id` (`quotation_id`);

--
-- Indexes for table `shipping_method`
--
ALTER TABLE `shipping_method`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`);

--
-- Indexes for table `single_basic_info`
--
ALTER TABLE `single_basic_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`);

--
-- Indexes for table `single_travel_info`
--
ALTER TABLE `single_travel_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`),
  ADD KEY `single_travel_info_fk1_idx` (`single_basic_info_if`),
  ADD KEY `single_travel_info_fk2_idx` (`region_id`),
  ADD KEY `single_travel_info_fk3_idx` (`goods_id`),
  ADD KEY `single_travel_info_fk4_idx` (`medical_id`);

--
-- Indexes for table `travel_goods`
--
ALTER TABLE `travel_goods`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`),
  ADD KEY `travel_goods_fk1_idx` (`travel_type`);

--
-- Indexes for table `travel_medical`
--
ALTER TABLE `travel_medical`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`),
  ADD KEY `travel_medical_fk1_idx` (`travel_type`);

--
-- Indexes for table `travel_type`
--
ALTER TABLE `travel_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`);

--
-- Indexes for table `travel_values`
--
ALTER TABLE `travel_values`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `value_added_service`
--
ALTER TABLE `value_added_service`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`);

--
-- Indexes for table `variable_value`
--
ALTER TABLE `variable_value`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`),
  ADD KEY `variable_ value_fk2_idx` (`variable`),
  ADD KEY `variable_ value_fk1_idx` (`purpose_id`);

--
-- Indexes for table `vehicle_make`
--
ALTER TABLE `vehicle_make`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle_model`
--
ALTER TABLE `vehicle_model`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vehicle_model_fk_idx` (`vehicle_id`);

--
-- Indexes for table `vehicle_type`
--
ALTER TABLE `vehicle_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `voluntary_excess`
--
ALTER TABLE `voluntary_excess`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aditional_covers`
--
ALTER TABLE `aditional_covers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cover_types`
--
ALTER TABLE `cover_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `equation_keys`
--
ALTER TABLE `equation_keys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `graphic_info`
--
ALTER TABLE `graphic_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `insurance_companies`
--
ALTER TABLE `insurance_companies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `insurance_company_insurance_type_id`
--
ALTER TABLE `insurance_company_insurance_type_id`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `insurance_features`
--
ALTER TABLE `insurance_features`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `insurance_purpose_value`
--
ALTER TABLE `insurance_purpose_value`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `insurance_quotation`
--
ALTER TABLE `insurance_quotation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT for table `insurance_quotation_aditional_covers`
--
ALTER TABLE `insurance_quotation_aditional_covers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `insurance_types`
--
ALTER TABLE `insurance_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `payment_info`
--
ALTER TABLE `payment_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `persona_info_single`
--
ALTER TABLE `persona_info_single`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `purpose`
--
ALTER TABLE `purpose`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `regions`
--
ALTER TABLE `regions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `service`
--
ALTER TABLE `service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `shipping`
--
ALTER TABLE `shipping`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `shipping_method`
--
ALTER TABLE `shipping_method`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `single_basic_info`
--
ALTER TABLE `single_basic_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `single_travel_info`
--
ALTER TABLE `single_travel_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `travel_goods`
--
ALTER TABLE `travel_goods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `travel_medical`
--
ALTER TABLE `travel_medical`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `travel_type`
--
ALTER TABLE `travel_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `travel_values`
--
ALTER TABLE `travel_values`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `value_added_service`
--
ALTER TABLE `value_added_service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `variable_value`
--
ALTER TABLE `variable_value`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `vehicle_make`
--
ALTER TABLE `vehicle_make`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;
--
-- AUTO_INCREMENT for table `vehicle_model`
--
ALTER TABLE `vehicle_model`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2159;
--
-- AUTO_INCREMENT for table `voluntary_excess`
--
ALTER TABLE `voluntary_excess`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `graphic_info`
--
ALTER TABLE `graphic_info`
  ADD CONSTRAINT `graphic_info_fk1` FOREIGN KEY (`insurance_type_id`) REFERENCES `insurance_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `insurance_features`
--
ALTER TABLE `insurance_features`
  ADD CONSTRAINT `insurance_features_fk1` FOREIGN KEY (`insurance_id`) REFERENCES `insurance_companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `insurance_features_fk2` FOREIGN KEY (`insurance_type`) REFERENCES `insurance_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `insurance_purpose_value`
--
ALTER TABLE `insurance_purpose_value`
  ADD CONSTRAINT `insurance_purpose_value_fk1` FOREIGN KEY (`insurance_type`) REFERENCES `insurance_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `insurance_purpose_value_fk2` FOREIGN KEY (`insurance_company`) REFERENCES `insurance_companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `insurance_purpose_value_fk3` FOREIGN KEY (`purpose`) REFERENCES `purpose` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `insurance_quotation`
--
ALTER TABLE `insurance_quotation`
  ADD CONSTRAINT `insurance_quotation_fk1` FOREIGN KEY (`cover_type_required`) REFERENCES `cover_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `insurance_quotation_fk2` FOREIGN KEY (`voluntary_excess`) REFERENCES `voluntary_excess` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `insurance_quotation_fk3` FOREIGN KEY (`purpose`) REFERENCES `purpose` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `insurance_quotation_aditional_covers`
--
ALTER TABLE `insurance_quotation_aditional_covers`
  ADD CONSTRAINT `insurance_quotation_aditional_covers_fk1` FOREIGN KEY (`insurance_quotation_id`) REFERENCES `insurance_quotation` (`insurance_quotation_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `insurance_quotation_aditional_covers_fk2` FOREIGN KEY (`aditional_cover`) REFERENCES `aditional_covers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `payment_info`
--
ALTER TABLE `payment_info`
  ADD CONSTRAINT `shipping_fk1` FOREIGN KEY (`shipping_mentod`) REFERENCES `shipping_method` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `shipping_fk2` FOREIGN KEY (`insurance_quotation_id`) REFERENCES `insurance_quotation` (`insurance_quotation_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `persona_info_single`
--
ALTER TABLE `persona_info_single`
  ADD CONSTRAINT `persona_info_single_fk1` FOREIGN KEY (`single_basic_info_id`) REFERENCES `single_basic_info` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `persona_info_single_fk2` FOREIGN KEY (`type`) REFERENCES `travel_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `single_travel_info`
--
ALTER TABLE `single_travel_info`
  ADD CONSTRAINT `single_travel_info_fk1` FOREIGN KEY (`single_basic_info_if`) REFERENCES `single_basic_info` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `single_travel_info_fk2` FOREIGN KEY (`region_id`) REFERENCES `regions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `single_travel_info_fk3` FOREIGN KEY (`goods_id`) REFERENCES `travel_goods` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `single_travel_info_fk4` FOREIGN KEY (`medical_id`) REFERENCES `travel_medical` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `travel_goods`
--
ALTER TABLE `travel_goods`
  ADD CONSTRAINT `travel_goods_fk1` FOREIGN KEY (`travel_type`) REFERENCES `travel_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `travel_medical`
--
ALTER TABLE `travel_medical`
  ADD CONSTRAINT `travel_medical_fk1` FOREIGN KEY (`travel_type`) REFERENCES `travel_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `variable_value`
--
ALTER TABLE `variable_value`
  ADD CONSTRAINT `variable_ value_fk1` FOREIGN KEY (`purpose_id`) REFERENCES `insurance_purpose_value` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `variable_ value_fk2` FOREIGN KEY (`variable`) REFERENCES `equation_keys` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `vehicle_model`
--
ALTER TABLE `vehicle_model`
  ADD CONSTRAINT `vehicle_model_fk` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicle_make` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
