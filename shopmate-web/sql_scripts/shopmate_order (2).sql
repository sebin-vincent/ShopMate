-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 17, 2019 at 06:27 AM
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
-- Database: `shopmate_order`
--

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

CREATE TABLE `manager` (
  `order_id` int(11) NOT NULL,
  `profile_id` int(11) NOT NULL,
  `address_id` int(11) DEFAULT NULL,
  `shipping_method_id` int(11) DEFAULT NULL,
  `payment_method_id` int(11) DEFAULT NULL,
  `total_amount` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `delivery_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manager`
--

INSERT INTO `manager` (`order_id`, `profile_id`, `address_id`, `shipping_method_id`, `payment_method_id`, `total_amount`, `status_id`, `delivery_date`) VALUES
(100, 1001, 1, 1, 2, 5040, 1, NULL),
(101, 1002, 1, 1, 2, 0, 2, NULL),
(103, 1003, 1, 1, 3, 2000, 2, NULL),
(104, 1001, 1, 1, 2, 999, 2, NULL),
(113, 1004, 0, 1, 1, 0, 1, NULL),
(114, 1010, 0, 1, 1, 0, 2, NULL),
(116, 1005, 0, 1, 1, 0, 1, NULL),
(117, 1003, 0, 1, 1, 0, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `no` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `sku_id` varchar(30) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `unit_price` int(11) DEFAULT NULL,
  `last_modified_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_detail`
--

INSERT INTO `order_detail` (`no`, `order_id`, `sku_id`, `quantity`, `unit_price`, `last_modified_date`) VALUES
(1, 100, 'speaker1', 2, 1200, NULL),
(2, 100, 'watch12', 2, 1200, NULL),
(3, 100, 'sticker123', 2, 20, NULL),
(4, 100, 'bucket123', 2, 100, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_payment_method`
--

CREATE TABLE `order_payment_method` (
  `payment_method_id` int(11) NOT NULL,
  `payment_method` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_payment_method`
--

INSERT INTO `order_payment_method` (`payment_method_id`, `payment_method`) VALUES
(1, NULL),
(2, NULL),
(3, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_shipping_method`
--

CREATE TABLE `order_shipping_method` (
  `shipping_method_id` int(11) NOT NULL,
  `shipping_method` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_shipping_method`
--

INSERT INTO `order_shipping_method` (`shipping_method_id`, `shipping_method`) VALUES
(1, NULL),
(2, NULL),
(3, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_status`
--

CREATE TABLE `order_status` (
  `status_id` int(11) NOT NULL,
  `status` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_status`
--

INSERT INTO `order_status` (`status_id`, `status`) VALUES
(1, 'incomplete'),
(2, 'deliverd'),
(3, 'cancelled');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `manager`
--
ALTER TABLE `manager`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `fk_paymnet_method_id` (`payment_method_id`),
  ADD KEY `fk_shipping_method_id` (`shipping_method_id`),
  ADD KEY `fk_status` (`status_id`);

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`no`),
  ADD KEY `orderid_fk` (`order_id`);

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
-- Indexes for table `order_status`
--
ALTER TABLE `order_status`
  ADD PRIMARY KEY (`status_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `manager`
--
ALTER TABLE `manager`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT for table `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `manager`
--
ALTER TABLE `manager`
  ADD CONSTRAINT `fk_paymnet_method_id` FOREIGN KEY (`payment_method_id`) REFERENCES `order_payment_method` (`payment_method_id`),
  ADD CONSTRAINT `fk_shipping_method_id` FOREIGN KEY (`shipping_method_id`) REFERENCES `order_shipping_method` (`shipping_method_id`),
  ADD CONSTRAINT `fk_status` FOREIGN KEY (`status_id`) REFERENCES `order_status` (`status_id`);

--
-- Constraints for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD CONSTRAINT `orderid_fk` FOREIGN KEY (`order_id`) REFERENCES `manager` (`order_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
