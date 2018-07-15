-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 15, 2018 at 05:06 AM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.1.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hackathon_test21`
--

-- --------------------------------------------------------

--
-- Table structure for table `table1`
--

CREATE TABLE `table1` (
  `ItemID_1` int(9) DEFAULT NULL,
  `ItemID_2` int(9) DEFAULT NULL,
  `ItemID_3` int(9) DEFAULT NULL,
  `ItemID_4` int(9) DEFAULT NULL,
  `ItemID_5` int(9) DEFAULT NULL,
  `ItemName` varchar(13) DEFAULT NULL,
  `Paper` int(2) DEFAULT NULL,
  `Plastic` int(2) DEFAULT NULL,
  `Aluminium` int(1) DEFAULT NULL,
  `Others` int(1) DEFAULT NULL,
  `Total` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table1`
--

INSERT INTO `table1` (`ItemID_1`, `ItemID_2`, `ItemID_3`, `ItemID_4`, `ItemID_5`, `ItemName`, `Paper`, `Plastic`, `Aluminium`, `Others`, `Total`) VALUES
(107705634, 0, 0, 0, 0, 'dal', 0, 15, 0, 1, 16),
(101821728, 102399703, 0, 0, 0, 'gravy', 0, 15, 0, 1, 16),
(107235833, 104737624, 0, 0, 0, 'tandoor', 0, 0, 8, 1, 9),
(101139085, 100558269, 102132580, 100273031, 107711732, 'indian breads', 0, 0, 8, 1, 9),
(106427923, 102657606, 0, 0, 0, 'tikkas', 0, 0, 8, 1, 9),
(100538406, 0, 0, 0, 0, 'rolls & wraps', 5, 0, 0, 1, 6),
(106281615, 101602789, 103585350, 0, 0, 'biryani', 0, 15, 0, 1, 16),
(107353741, 104971510, 103706902, 0, 0, 'sweets', 0, 15, 0, 2, 17),
(102327402, 104672695, 103912367, 0, 0, 'kebab', 0, 0, 8, 1, 9),
(102435982, 0, 0, 0, 0, 'wontons', 15, 0, 0, 1, 16),
(102192653, 0, 0, 0, 0, 'others', 5, 5, 5, 2, 17);

-- --------------------------------------------------------

--
-- Table structure for table `table2`
--

CREATE TABLE `table2` (
  `COL 1` int(8) DEFAULT NULL,
  `COL 2` int(9) DEFAULT NULL,
  `COL 3` int(6) DEFAULT NULL,
  `COL 4` varchar(7) DEFAULT NULL,
  `COL 5` varchar(7) DEFAULT NULL,
  `COL 6` varchar(7) DEFAULT NULL,
  `COL 7` int(1) DEFAULT NULL,
  `COL 8` varchar(7) DEFAULT NULL,
  `COL 9` int(4) DEFAULT NULL,
  `COL 10` varchar(77) DEFAULT NULL,
  `COL 11` int(2) DEFAULT NULL,
  `itemname1` varchar(13) DEFAULT NULL,
  `itemname2` varchar(13) DEFAULT NULL,
  `itemname3` varchar(13) DEFAULT NULL,
  `itemname4` varchar(13) DEFAULT NULL,
  `itemname5` varchar(13) DEFAULT NULL,
  `itemname6` varchar(13) DEFAULT NULL,
  `itemname7` varchar(13) DEFAULT NULL,
  `COL 19` varchar(21) DEFAULT NULL,
  `COL 20` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table2`
--

INSERT INTO `table2` (`COL 1`, `COL 2`, `COL 3`, `COL 4`, `COL 5`, `COL 6`, `COL 7`, `COL 8`, `COL 9`, `COL 10`, `COL 11`, `itemname1`, `itemname2`, `itemname3`, `itemname4`, `itemname5`, `itemname6`, `itemname7`, `COL 19`, `COL 20`) VALUES
(16696719, 233555819, 100181, '20:07.0', '02:45.6', '23:34.2', 0, '4nxfvrd', 3865, '[107705634, 101821728, 107235833, 102435982, 101139085, 100558269, 102132580]', 1, 'dal', 'gravy', 'tandoor', 'wontons', 'indian breads', 'indian breads', 'indian breads', 'Plastic Bag - L', ''),
(12536131, 275947978, 100181, '59:21.0', '28:07.7', '51:07.6', 0, '4nxfvew', 1180, '[101602789]', 2, 'biryani', '', '', '', '', '', '', 'Plastic Bag - S', ''),
(24818126, 256736367, 100181, '19:51.0', '54:21.6', '06:46.0', 0, '4nxfvez', 755, '[107353741]', 3, 'sweets', '', '', '', '', '', '', 'Cloth Bag - S', ''),
(12670002, 286526217, 100181, '11:56.0', '44:53.5', '09:22.8', 0, '4nxfvfv', 1156, '[103585350, 100273031]', 4, 'biryani', 'indian breads', '', '', '', '', '', 'Cloth Bag - M', ''),
(24087976, 202574301, 100181, '30:04.0', '04:04.2', '17:05.1', 0, '4nxfvmt', 519, '[104672695]', 5, 'kebab', '', '', '', '', '', '', 'Cloth Bag - S', ''),
(16696719, 229887161, 100181, '17:01.0', '', '', 0, '4nxfvr6', 0, '[107235833, 100558269, 102132580, 107711732, 104971510, 107705634]', 6, 'tandoor', 'indian breads', 'indian breads', 'indian breads', 'sweets', 'dal', '', 'Polythene Bag - L', ''),
(16696719, 293801349, 100181, '17:50.0', '50:13.0', '08:12.5', 0, '4nxfvr6', 2932, '[107235833, 100558269, 102132580, 107711732, 104971510, 107705634]', 7, 'tandoor', 'indian breads', 'indian breads', 'indian breads', 'sweets', 'dal', '', 'Jute Bag - L', ''),
(14135353, 284070156, 100181, '32:04.0', '', '', 0, '4nxfvsj', 2348, '[102192653, 102657606, 106427923]', 8, 'others', 'tikkas', 'tikkas', '', '', '', '', 'Branded Paper Bag - M', ''),
(18271871, 298724841, 100181, '51:19.0', '15:20.5', '32:18.9', 0, '4nxfvv8', 968, '[106281615]', 9, 'biryani', '', '', '', '', '', '', 'Jute Bag - M', ''),
(11358437, 216149323, 100181, '23:25.0', '19:30.7', '23:26.3', 0, '4nxfvte', 1475, '[103706902]', 10, 'sweets', '', '', '', '', '', '', 'Cloth Bag - S', ''),
(22113856, 254233146, 100181, '12:57.0', '50:38.9', '55:38.0', 0, '4nxfvts', 2714, '[104737624, 102399703, 104672695, 103912367]', 11, 'tandoor', 'gravy', 'kebab', 'kebab', '', '', '', 'Polythene Bag - L', ''),
(11358437, 216788666, 100181, '13:05.0', '44:32.6', '49:49.4', 0, '4nxfvte', 283, '[107711732]', 12, 'indian breads', '', '', '', '', '', '', 'Brown Paper Bag - S', ''),
(11358437, 218933936, 100181, '22:35.0', '45:10.3', '50:14.2', 0, '4nxfvte', 1003, '[103706902]', 13, 'sweets', '', '', '', '', '', '', 'Cloth Bag - S', ''),
(19789412, 257132648, 100181, '58:43.0', '', '', 0, '4nxfvkz', 1050, '[106427923]', 14, 'tikkas', '', '', '', '', '', '', 'Cloth Bag - S', ''),
(11358437, 247126893, 100181, '16:50.0', '37:47.0', '39:53.6', 0, '4nxfvte', 1003, '[103706902]', 15, 'sweets', '', '', '', '', '', '', 'Cloth Bag - S', ''),
(14135353, 256054128, 100181, '32:47.0', '57:32.0', '05:49.5', 0, '4nxfvsj', 2643, '[102192653, 102327402, 100538406]', 16, 'others', 'kebab', 'rolls & wraps', '', '', '', '', 'Polythene Bag - M', ''),
(16612413, 218113875, 100181, '39:27.0', '15:04.9', '23:04.0', 0, '4nxfvsn', 519, '[104672695]', 17, 'kebab', '', '', '', '', '', '', 'Cloth Bag - S', '');

-- --------------------------------------------------------

--
-- Table structure for table `table3`
--

CREATE TABLE `table3` (
  `R_id` int(11) NOT NULL,
  `waste` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=hp8;

--
-- Dumping data for table `table3`
--

INSERT INTO `table3` (`R_id`, `waste`) VALUES
(10001, 6000),
(10002, 7000),
(10003, 5000),
(10004, 6545);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `table3`
--
ALTER TABLE `table3`
  ADD PRIMARY KEY (`R_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
