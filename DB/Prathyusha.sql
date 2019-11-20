-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Generation Time: Nov 20, 2019 at 11:26 AM
-- Server version: 5.6.46
-- PHP Version: 7.2.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Prathyusha`
--
CREATE DATABASE IF NOT EXISTS `Prathyusha` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `Prathyusha`;

-- --------------------------------------------------------

--
-- Table structure for table `Cart`
--

DROP TABLE IF EXISTS `Cart`;
CREATE TABLE IF NOT EXISTS `Cart` (
  `cart_id` int(11) NOT NULL AUTO_INCREMENT,
  `quantity` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`cart_id`),
  KEY `user_id` (`user_id`),
  KEY `product_id` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `Cart`
--

TRUNCATE TABLE `Cart`;
--
-- Dumping data for table `Cart`
--

INSERT INTO `Cart` (`cart_id`, `quantity`, `user_id`, `product_id`) VALUES
(1, 12, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `Product Details`
--

DROP TABLE IF EXISTS `Product Details`;
CREATE TABLE IF NOT EXISTS `Product Details` (
  `product_id` int(10) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(50) NOT NULL,
  `price` float NOT NULL,
  `discount` float DEFAULT NULL,
  `quantity` int(100) NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `Product Details`
--

TRUNCATE TABLE `Product Details`;
--
-- Dumping data for table `Product Details`
--

INSERT INTO `Product Details` (`product_id`, `product_name`, `price`, `discount`, `quantity`) VALUES
(1, 'sadfsdf', 123, 123, 12);

-- --------------------------------------------------------

--
-- Table structure for table `UserDetails`
--

DROP TABLE IF EXISTS `UserDetails`;
CREATE TABLE IF NOT EXISTS `UserDetails` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `address1` varchar(200) NOT NULL,
  `city` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  `pincode` int(10) NOT NULL,
  `phoneNo` bigint(15) NOT NULL,
  `dob` date NOT NULL,
  `street` text NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `UserDetails`
--

TRUNCATE TABLE `UserDetails`;
--
-- Dumping data for table `UserDetails`
--

INSERT INTO `UserDetails` (`user_id`, `name`, `email`, `password`, `address1`, `city`, `state`, `country`, `pincode`, `phoneNo`, `dob`, `street`) VALUES
(1, 'd', 'd@d.com', '123', 'dasdasd', 'asdasd', 'asdasda', 'asdasd', 431603, 213123, '2019-11-13', 'asdfsdfasdfasdf');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Cart`
--
ALTER TABLE `Cart`
  ADD CONSTRAINT `product_id` FOREIGN KEY (`product_id`) REFERENCES `Product Details` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `UserDetails` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
