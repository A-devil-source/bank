-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 20, 2021 at 08:50 AM
-- Server version: 8.0.21
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `Email` varchar(35) NOT NULL,
  `Phone_Number` int NOT NULL,
  `Balance` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `name`, `Email`, `Phone_Number`, `Balance`) VALUES
(1, 'Karan', 'karan@email.com', 1234567890, 3500),
(2, 'Ajay ', 'ajay@email.com', 1234567890, 5000.98),
(3, 'Kirti', 'kirti@email.com', 567890125, 1010.66),
(4, 'Sameer', 'sameer@email.com', 456780790, 19000.6),
(5, 'Deep', 'deep@email.com', 909678070, 2000.6),
(6, 'Shreya', 'shreya@email.com', 126567890, 10990.7),
(7, 'Kiran', 'kiran@email.com', 34567890, 1000),
(8, 'Mitesh', 'mitesh@email.com', 1237890, 0.69),
(9, 'Ritika', 'ritika@email.com', 1987890, 10801.4),
(10, 'Priya', 'priya@email.com', 98237890, 7800.98);

-- --------------------------------------------------------

--
-- Table structure for table `transactionhistory`
--

DROP TABLE IF EXISTS `transactionhistory`;
CREATE TABLE IF NOT EXISTS `transactionhistory` (
  `customerName` varchar(45) NOT NULL,
  `transactionAmount` int NOT NULL,
  `timestamp` varchar(45) NOT NULL,
  `sendReceive` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transactionhistory`
--

INSERT INTO `transactionhistory` (`customerName`, `transactionAmount`, `timestamp`, `sendReceive`) VALUES
('Karan', 200, 'Mon, 19 Apr 2021 02:32:41', 'send'),
('Sameer', 20201, 'Mon, 19 Apr 2021 02:32:41', 'received'),
('Sameer', 200, 'Mon, 19 Apr 2021 02:33:48', 'send'),
('Karan', 5000, 'Mon, 19 Apr 2021 02:33:48', 'received'),
('Priya', 901, 'Mon, 19 Apr 2021 02:40:46', 'send'),
('Ritika', 10801, 'Mon, 19 Apr 2021 02:40:46', 'received'),
('Sameer', 100, 'Mon, 19 Apr 2021 21:07:16', 'send'),
('Shreya', 1101, 'Mon, 19 Apr 2021 21:07:16', 'received'),
('Karan', 1000, 'Mon, 19 Apr 2021 22:53:54', 'send'),
('Priya', 1000, 'Mon, 19 Apr 2021 22:53:54', 'received'),
('Kiran', 1, 'Mon, 19 Apr 2021 22:56:10', 'send'),
('Priya', 1001, 'Mon, 19 Apr 2021 22:56:10', 'received'),
('Karan', 400, 'Mon, 19 Apr 2021 23:35:03', 'send'),
('Ajay', 6401, 'Mon, 19 Apr 2021 23:35:03', 'received'),
('Shreya', 100, 'Mon, 19 Apr 2021 23:36:15', 'send'),
('Kiran', 1000, 'Mon, 19 Apr 2021 23:36:15', 'received'),
('Ajay', 400, 'Mon, 19 Apr 2021 23:36:43', 'send'),
('Kirti', 1001, 'Mon, 19 Apr 2021 23:36:43', 'received'),
('Sameer', 100, 'Mon, 19 Apr 2021 23:37:54', 'send'),
('Kirti', 1101, 'Mon, 19 Apr 2021 23:37:54', 'received'),
('Sameer', 100, 'Mon, 19 Apr 2021 23:38:13', 'send'),
('Deep', 10101, 'Mon, 19 Apr 2021 23:38:13', 'received'),
('Deep', 100, 'Mon, 19 Apr 2021 23:38:31', 'send'),
('Sameer', 19801, 'Mon, 19 Apr 2021 23:38:31', 'received'),
('Deep', 100, 'Mon, 19 Apr 2021 23:38:42', 'send'),
('Shreya', 10, 'Mon, 19 Apr 2021 23:39:07', 'send'),
('Kirti', 1111, 'Mon, 19 Apr 2021 23:39:07', 'received'),
('Mitesh', 100, 'Mon, 19 Apr 2021 23:39:21', 'send'),
('Sameer', 19901, 'Mon, 19 Apr 2021 23:39:21', 'received'),
('Sameer', 100, 'Mon, 19 Apr 2021 23:40:19', 'send'),
('Deep', 10001, 'Mon, 19 Apr 2021 23:40:19', 'received'),
('Kirti', 100, 'Tue, 20 Apr 2021 06:16:49', 'send'),
('Sameer', 19901, 'Tue, 20 Apr 2021 06:16:49', 'received'),
('Karan', 100, 'Tue, 20 Apr 2021 06:33:18', 'send'),
('Sameer', 20001, 'Tue, 20 Apr 2021 06:33:18', 'received'),
('Sameer', 1000, 'Tue, 20 Apr 2021 06:33:36', 'send'),
('Deep', 11001, 'Tue, 20 Apr 2021 06:33:36', 'received'),
('Ajay', 1000, 'Tue, 20 Apr 2021 06:34:36', 'send'),
('Deep', 12001, 'Tue, 20 Apr 2021 06:34:36', 'received'),
('Mitesh', 6800, 'Tue, 20 Apr 2021 06:35:42', 'send'),
('Priya', 7801, 'Tue, 20 Apr 2021 06:35:42', 'received'),
('Deep', 10000, 'Tue, 20 Apr 2021 06:37:31', 'send'),
('Shreya', 10991, 'Tue, 20 Apr 2021 06:37:31', 'received');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
