-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 03, 2019 at 05:19 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `order_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `Order_id` varchar(30) DEFAULT NULL,
  `sku_id` varchar(30) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `last_modified_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `order_manager`
--

CREATE TABLE `order_manager` (
  `order_id` varchar(30) NOT NULL,
  `profile_id` varchar(30) NOT NULL,
  `address_id` varchar(200) DEFAULT NULL,
  `shipping_method_id` varchar(20) DEFAULT NULL,
  `payment_method_id` varchar(20) DEFAULT 'NULL',
  `total_amount` float DEFAULT NULL,
  `order_status` varchar(30) NOT NULL,
  `delivery_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `order_payment_method`
--

CREATE TABLE `order_payment_method` (
  `payment_method_id` varchar(20) NOT NULL,
  `payment_method` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `order_shipping_method`
--

CREATE TABLE `order_shipping_method` (
  `shipping_method_id` varchar(20) NOT NULL,
  `shipping_method` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD KEY `fk` (`Order_id`);

--
-- Indexes for table `order_manager`
--
ALTER TABLE `order_manager`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `shipping_method_id` (`shipping_method_id`),
  ADD KEY `fk1` (`payment_method_id`);

--
-- Indexes for table `order_payment_method`
--
ALTER TABLE `order_payment_method`
  ADD PRIMARY KEY (`payment_method_id`);

--
-- Indexes for table `order_shipping_method`
--
ALTER TABLE `order_shipping_method`
  ADD PRIMARY KEY (`shipping_method_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD CONSTRAINT `fk` FOREIGN KEY (`Order_id`) REFERENCES `order_manager` (`order_id`);

--
-- Constraints for table `order_manager`
--
ALTER TABLE `order_manager`
  ADD CONSTRAINT `fk1` FOREIGN KEY (`payment_method_id`) REFERENCES `order_payment_method` (`payment_method_id`),
  ADD CONSTRAINT `fk2` FOREIGN KEY (`order_id`) REFERENCES `order_list` (`order_id`),
  ADD CONSTRAINT `order_manager_ibfk_1` FOREIGN KEY (`shipping_method_id`) REFERENCES `order_shipping_method` (`shipping_method_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
