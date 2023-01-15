-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 15, 2023 at 06:50 AM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `expmanage`
--

-- --------------------------------------------------------

--
-- Table structure for table `categorydetails`
--

DROP TABLE IF EXISTS `categorydetails`;
CREATE TABLE IF NOT EXISTS `categorydetails` (
  `C_id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(45) COLLATE utf8mb4_bin NOT NULL,
  `user_id` int(11) NOT NULL,
  `budget` varchar(54) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`C_id`),
  UNIQUE KEY `category_UNIQUE` (`category`)
) ENGINE=MyISAM AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `categorydetails`
--

INSERT INTO `categorydetails` (`C_id`, `category`, `user_id`, `budget`) VALUES
(1, 'medical', 0, '0'),
(2, 'vehicle', 0, '0'),
(3, 'grocery', 0, '0'),
(4, 'salary', 0, '0'),
(5, 'Insuarance', 0, '0'),
(6, 'Personal', 0, '0'),
(7, 'Bills', 0, '0'),
(8, 'clothing', 0, '0'),
(11, 'Business ', 10008, '0'),
(13, 'Restaurant', 10008, '0'),
(14, 'Accomodation', 10009, '0'),
(15, 'Travel', 10009, '0'),
(63, 'Bonus', 10008, '0'),
(64, 'Test', 10008, '0'),
(65, 'test2', 10008, '0'),
(66, 'null', 10008, '111');

-- --------------------------------------------------------

--
-- Table structure for table `expensedetails`
--

DROP TABLE IF EXISTS `expensedetails`;
CREATE TABLE IF NOT EXISTS `expensedetails` (
  `Srno` int(11) NOT NULL AUTO_INCREMENT,
  `Date` date NOT NULL,
  `Description` varchar(45) COLLATE utf8mb4_bin NOT NULL,
  `credit` varchar(45) COLLATE utf8mb4_bin DEFAULT NULL,
  `debit` varchar(45) COLLATE utf8mb4_bin DEFAULT NULL,
  `category` varchar(45) COLLATE utf8mb4_bin NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`Srno`)
) ENGINE=MyISAM AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `expensedetails`
--

INSERT INTO `expensedetails` (`Srno`, `Date`, `Description`, `credit`, `debit`, `category`, `user_id`) VALUES
(12, '2023-01-12', 'Jupiter Hospital', NULL, '8600', 'medical', 10008),
(15, '2023-05-02', 'Monthly salary', '95000', NULL, 'salary', 10008),
(16, '2023-01-03', 'Trends and H&M', NULL, '9500', 'clothing', 10008),
(41, '2023-01-11', 'Checkup', NULL, '2500', 'medical', 10009),
(44, '2023-01-04', 'Bonus', '45000', NULL, 'salary', 10008),
(49, '2023-01-06', 'Jan Sal', '20000', NULL, 'salary', 10008);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) COLLATE utf8mb4_bin NOT NULL,
  `password` varchar(45) COLLATE utf8mb4_bin DEFAULT NULL,
  `email` varchar(45) COLLATE utf8mb4_bin DEFAULT NULL,
  `Name` varchar(45) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username_UNIQUE` (`username`),
  UNIQUE KEY `user_id_UNIQUE` (`user_id`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=10019 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`, `email`, `Name`) VALUES
(10008, 'ranu', 'ranu', 'ranu@gmail.com', 'ranu ranu'),
(10009, 'rakshitshah', 'rakshit123', 'rakshitshah@gmail.com', 'Rakshit Shah'),
(10014, 'tejassheth', '123', 'tejassheth@gmail.com', 'Tejas Sheth'),
(10015, 'vikass', '123456', 'vikass@gmail.com', 'Vikas'),
(10016, 'abcd', '123456', 'abcd@gmail.com', 'abc'),
(10017, 'hethpatel', '1234', 'hethpatel@gmail.com', 'Heth Patel'),
(10018, 'abc', '123', 'abc@gmail.com', 'abc');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
