-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 03, 2019 at 07:02 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 5.6.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `catalog_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `catalog_category`
--

CREATE TABLE `catalog_category` (
  `catalog_id` int(15) NOT NULL,
  `category_id` int(15) NOT NULL,
  `sequence_no` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `catalog_category`
--

INSERT INTO `catalog_category` (`catalog_id`, `category_id`, `sequence_no`) VALUES
(1, 184, 0),
(1, 185, 0),
(1, 186, 0),
(1, 187, 0),
(1, 190, 0);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_master`
--

CREATE TABLE `catalog_master` (
  `catalog_id` int(15) NOT NULL,
  `catalog_name` varchar(50) NOT NULL,
  `active_status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `catalog_master`
--

INSERT INTO `catalog_master` (`catalog_id`, `catalog_name`, `active_status`) VALUES
(1, 'catalog1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `category_master`
--

CREATE TABLE `category_master` (
  `category_id` int(15) NOT NULL,
  `category_name` varchar(50) NOT NULL,
  `active_status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category_master`
--

INSERT INTO `category_master` (`category_id`, `category_name`, `active_status`) VALUES
(184, 'Electronics', 1),
(185, 'TVs&Appliances', 1),
(186, 'Men', 1),
(187, 'Women', 1),
(188, 'Baby & Kids', 1),
(189, 'Home&Furniture', 1),
(190, 'Sports', 1),
(191, 'Books&More', 1),
(192, 'Mobiles', 1),
(193, 'MobileAccessories', 1),
(194, 'SmartWearableTech', 1),
(195, 'HealthCareAppliances', 1),
(196, 'Laptops', 1),
(197, 'DesktopPCs', 1),
(198, 'Gaming&Accessories', 1),
(199, 'ComputerAccessories', 1),
(200, 'ComputerPeripherals', 1),
(201, 'Tablets', 1),
(202, 'HomeEntertainment', 1),
(203, 'SmartHomeAutomation', 1),
(204, 'Camera', 1),
(205, 'CameraAccessories', 1),
(206, 'NetworkComponents', 1),
(207, 'Television', 1),
(208, 'Official_Android_TVs', 1),
(209, 'Smart&Ultra_HD', 1),
(210, 'Washing_Machine', 1),
(211, 'Refrigerators', 1),
(212, 'Air_Conditioners', 1),
(213, 'Kitchen_Appliances', 1),
(214, 'Footwear', 1),
(215, 'Men\'s Grooming', 1),
(216, 'Clothing', 1),
(217, 'Top wear', 1),
(218, 'Bottom wear', 1),
(219, 'Ties', 1),
(220, ' Socks', 1),
(221, ' Caps & more', 1),
(222, 'Kurta', 1),
(223, ' Pyjama & more', 1),
(224, 'Fabrics', 1),
(225, 'Winter wear', 1),
(226, 'Sports wear', 1),
(227, 'Innerwear & Sleepwear', 1),
(228, 'Watches', 1),
(229, 'Accessories', 1),
(230, 'Sports & Fitness Store', 1),
(231, 'Smart Watches', 1),
(232, 'Smart Bands', 1),
(233, 'Personal Care Appliances', 1),
(234, 'Winter & Seasonal Wear', 1),
(235, 'Western Wear', 1),
(236, 'Lingerie & Sleepwear', 1),
(237, 'Ethnic Wear', 1),
(238, 'Swim & Beachwear', 1),
(239, 'International Brands', 1),
(240, 'New arrivals !', 1),
(241, 'Exclusive Collection', 1),
(242, 'Under 499', 1),
(243, 'Sandals', 1),
(244, 'Shoes', 1),
(245, 'Ballerinas', 1),
(246, 'Slippers & Flip- Flop\'s', 1),
(247, 'Beauty & Grooming', 1),
(248, 'Jewellery', 1),
(249, 'wear:Sports T-Shirts', 1),
(250, 'Track Pants', 1),
(251, 'Track Suits', 1),
(252, 'Shorts', 1);

-- --------------------------------------------------------

--
-- Table structure for table `category_product`
--

CREATE TABLE `category_product` (
  `product_id` int(15) NOT NULL,
  `category_id` int(15) NOT NULL,
  `sequence_no` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category_product`
--

INSERT INTO `category_product` (`product_id`, `category_id`, `sequence_no`) VALUES
(248, 192, 0),
(249, 192, 0),
(250, 192, 0),
(251, 192, 0),
(252, 192, 0),
(253, 192, 0),
(254, 192, 0),
(255, 192, 0),
(256, 192, 0),
(257, 192, 0),
(258, 192, 0),
(259, 192, 0),
(260, 192, 0),
(261, 192, 0),
(262, 192, 0),
(263, 192, 0),
(264, 193, 0),
(265, 193, 0),
(266, 193, 0),
(267, 193, 0),
(268, 193, 0),
(269, 193, 0),
(270, 193, 0),
(271, 193, 0),
(272, 193, 0),
(273, 194, 0),
(274, 194, 0),
(275, 194, 0),
(276, 195, 0),
(277, 195, 0),
(278, 196, 0),
(279, 199, 0),
(280, 199, 0),
(281, 199, 0),
(282, 199, 0),
(283, 199, 0),
(284, 200, 0),
(285, 200, 0),
(286, 201, 0),
(287, 201, 0),
(288, 202, 0),
(289, 202, 0),
(290, 202, 0),
(291, 202, 0),
(292, 203, 0),
(293, 204, 0),
(294, 204, 0),
(295, 204, 0),
(296, 205, 0),
(297, 205, 0),
(298, 206, 0),
(299, 206, 0),
(300, 206, 0),
(301, 206, 0),
(302, 206, 0),
(303, 206, 0),
(304, 206, 0),
(305, 206, 0),
(306, 206, 0),
(307, 211, 0),
(308, 211, 0),
(309, 211, 0),
(310, 211, 0),
(311, 211, 0),
(312, 214, 0),
(312, 244, 0),
(313, 214, 0),
(313, 244, 0),
(314, 214, 0),
(315, 214, 0),
(316, 214, 0),
(317, 214, 0),
(318, 214, 0),
(318, 244, 0),
(319, 214, 0),
(320, 214, 0),
(321, 228, 0),
(321, 229, 0),
(322, 228, 0),
(323, 228, 0),
(324, 228, 0),
(325, 228, 0),
(326, 229, 0),
(327, 229, 0),
(328, 229, 0),
(329, 229, 0),
(330, 229, 0),
(331, 229, 0),
(332, 229, 0),
(333, 229, 0),
(334, 229, 0),
(335, 229, 0),
(336, 229, 0),
(337, 229, 0),
(338, 229, 0),
(339, 229, 0),
(340, 229, 0),
(341, 229, 0),
(342, 229, 0),
(343, 229, 0),
(344, 229, 0),
(345, 229, 0),
(346, 229, 0),
(347, 229, 0),
(348, 229, 0),
(349, 229, 0),
(350, 229, 0),
(351, 229, 0),
(352, 229, 0),
(353, 229, 0),
(354, 243, 0),
(355, 243, 0),
(356, 243, 0),
(357, 248, 0),
(358, 248, 0),
(359, 248, 0);

-- --------------------------------------------------------

--
-- Table structure for table `category_subcategory`
--

CREATE TABLE `category_subcategory` (
  `subcategory_id` int(15) NOT NULL,
  `category_id` int(15) NOT NULL,
  `sequence_no` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category_subcategory`
--

INSERT INTO `category_subcategory` (`subcategory_id`, `category_id`, `sequence_no`) VALUES
(192, 184, 0),
(193, 184, 0),
(194, 184, 0),
(195, 184, 0),
(196, 184, 0),
(197, 184, 0),
(198, 184, 0),
(199, 184, 0),
(200, 184, 0),
(201, 184, 0),
(202, 184, 0),
(203, 184, 0),
(204, 184, 0),
(205, 184, 0),
(206, 184, 0),
(207, 185, 0),
(208, 185, 0),
(209, 185, 0),
(210, 185, 0),
(211, 185, 0),
(212, 185, 0),
(213, 185, 0),
(214, 186, 0),
(214, 187, 0),
(215, 186, 0),
(216, 186, 0),
(216, 187, 0),
(217, 186, 0),
(218, 186, 0),
(219, 186, 0),
(220, 186, 0),
(221, 186, 0),
(222, 186, 0),
(223, 186, 0),
(224, 186, 0),
(225, 186, 0),
(226, 186, 0),
(226, 187, 0),
(227, 186, 0),
(228, 186, 0),
(228, 187, 0),
(229, 186, 0),
(229, 187, 0),
(230, 186, 0),
(231, 186, 0),
(231, 187, 0),
(232, 186, 0),
(233, 186, 0),
(233, 187, 0),
(234, 187, 0),
(235, 187, 0),
(236, 187, 0),
(237, 187, 0),
(238, 187, 0),
(239, 187, 0),
(240, 187, 0),
(241, 187, 0),
(242, 187, 0),
(243, 187, 0),
(244, 187, 0),
(245, 187, 0),
(246, 187, 0),
(247, 187, 0),
(248, 187, 0),
(249, 190, 0),
(250, 190, 0),
(251, 190, 0),
(252, 190, 0);

-- --------------------------------------------------------

--
-- Table structure for table `product_master`
--

CREATE TABLE `product_master` (
  `product_id` int(15) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `active_status` tinyint(1) NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_master`
--

INSERT INTO `product_master` (`product_id`, `product_name`, `active_status`, `start_date`, `end_date`) VALUES
(248, 'Mi', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(249, 'Realme', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(250, 'Samsung', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(251, 'Infinix', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(252, 'OPPO', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(253, 'Apple', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(254, 'Vivo', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(255, 'Honor', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(256, 'Asus', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(257, 'Google_Pixel_3|3XL', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(258, 'Asus_Zenfone_Max_Pro_M2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(259, 'Redmi_Note_6_Pro', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(260, 'POCO F1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(261, 'Realme_2_Pro', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(262, 'Asus_Zenfone_Max_M2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(263, 'iPhone_XR', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(264, 'Mobile_Cases', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(265, 'Headphones&Headsets', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(266, 'Power_Banks', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(267, 'Screenguards', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(268, 'Memory_Cards', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(269, 'Smart_Headphones', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(270, 'Mobile_Cables', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(271, 'Mobile_Chargers', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(272, 'Mobile_Holders', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(273, 'Smart_Watches', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(274, 'Smart_Glasses_(VR)', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(275, 'Smart_Bands', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(276, 'Bp_Monitors', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(277, 'Weighing_Scale', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(278, 'Gaming_Laptops', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(279, 'External_Hard_Disks', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(280, 'Pendrives', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(281, 'Laptop_Skins&Decals', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(282, 'Laptop_Bags', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(283, 'Mouse', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(284, 'Printers&Ink_Cartridges', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(285, 'Monitors', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(286, 'Apple_iPads', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(287, 'Televisions', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(288, 'Home_Audio_Speakers', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(289, 'Home_Theatres', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(290, 'Bluetooth_Speakers', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(291, 'DTH_Set_Top_Box', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(292, 'Google_Home', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(293, 'DSLR', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(294, 'Compact&Bridge_Cameras', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(295, 'Sports&Action', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(296, 'Lens', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(297, 'Tripods', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(298, 'Routers', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(299, 'Li-Polymer_Power_Banks', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(300, 'Sony_PS4_Pro&Slim', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(301, 'Apple_Products', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(302, 'Microsoft_Store', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(303, 'Lenovo_Phab_Series', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(304, 'JBL_Speakers', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(305, 'Philips', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(306, 'Dr.Morepen', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(307, 'Single_Door', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(308, 'Double_Door', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(309, 'Triple_door', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(310, 'Side_by_Side', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(311, 'Convertible', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(312, 'Sports Shoes', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(313, 'Casual Shoes', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(314, 'Formal Shoes', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(315, 'Sandals & Floaters', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(316, 'Flip- Flops', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(317, 'Loafers', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(318, 'Boots', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(319, 'Running Shoes', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(320, 'Sneakers', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(321, 'Fastrack', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(322, 'Casio', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(323, 'Titan', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(324, 'Fossil', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(325, 'Sonata', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(326, 'Smart Bands', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(327, 'Handbags', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(328, 'Shoulder Bags', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(329, 'Totes', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(330, 'Sling bags', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(331, 'Clutches', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(332, 'Wallets & Belts', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(333, 'Luggage & Travel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(334, 'Sunglasses', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(335, 'Frames', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(336, 'Featured', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(337, 'Forever 21', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(338, 'Accessorize', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(339, 'W', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(340, 'Pantaloons', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(341, 'Chemistry', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(342, 'Lakme', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(343, 'Nivea', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(344, 'Catwalk', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(345, 'Titan-Raga', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(346, 'Divastri', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(347, 'Rare Roots', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(348, 'Anmi', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(349, 'Coins & Bars', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(350, 'Trending today!', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(351, 'Ruffles & Frills', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(352, 'Pastel Kurtas & Kurtis', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(353, 'Designer Net Sarees', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(354, 'Flats', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(355, 'Heels', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(356, 'Wedges', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(357, 'Precious Jewellery', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(358, 'Artificial Jewellery', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(359, 'Silver Jewellery', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `product_sku`
--

CREATE TABLE `product_sku` (
  `product_id` int(15) NOT NULL,
  `sku_id` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_sku`
--

INSERT INTO `product_sku` (`product_id`, `sku_id`) VALUES
(248, 10013),
(248, 10014),
(248, 10015),
(248, 10016),
(248, 10017),
(248, 10018),
(248, 10019),
(248, 10020),
(248, 10021),
(248, 10022),
(248, 10023),
(248, 10024),
(248, 10025),
(248, 10026),
(248, 10027),
(248, 10028),
(248, 10029),
(248, 10030),
(248, 10031),
(248, 10046),
(248, 10047),
(248, 10048),
(248, 10049),
(248, 10050),
(248, 10051),
(248, 10052),
(248, 10053),
(248, 10054),
(248, 10055),
(248, 10056),
(248, 10057),
(248, 10058),
(248, 10059),
(248, 10060),
(248, 10061),
(248, 10062),
(248, 10063),
(248, 10064),
(248, 10065),
(248, 10066),
(248, 10067),
(248, 10068),
(248, 10069),
(248, 10070),
(248, 10071),
(248, 10072),
(248, 10073),
(248, 10074),
(248, 10075),
(248, 10076),
(248, 10077),
(248, 10078),
(248, 10079),
(248, 10080),
(248, 10081),
(248, 10082),
(248, 10083),
(248, 10084),
(248, 10085),
(248, 10086),
(248, 10087),
(248, 10088),
(248, 10089),
(248, 10090),
(248, 10091),
(248, 10092),
(248, 10093);

-- --------------------------------------------------------

--
-- Table structure for table `sku_master`
--

CREATE TABLE `sku_master` (
  `sku_id` int(15) NOT NULL,
  `sku_name` varchar(150) NOT NULL,
  `description` varchar(700) DEFAULT NULL,
  `list_price` decimal(20,2) NOT NULL,
  `sale_price` decimal(20,2) NOT NULL,
  `image_url` varchar(200) NOT NULL,
  `max_order_quantity` int(15) NOT NULL,
  `on_sale` tinyint(1) NOT NULL DEFAULT '0',
  `creation_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sku_master`
--

INSERT INTO `sku_master` (`sku_id`, `sku_name`, `description`, `list_price`, `sale_price`, `image_url`, `max_order_quantity`, `on_sale`, `creation_date`) VALUES
(10013, 'Redmi Note 6 Pro (Black, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 256 GB 15.9 cm (6.26 inch) FHD  Display 12MP   5MP | 20MP   2MP Dual Front Camera 4000 mAh Li-polymer Battery Qualcomm Snapdragon 636 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '15999.00', '13999.00', 'https://rukminim1.flixcart.com/image/312/312/jog2nbk0/mobile/e/x/b/mi-redmi-e7t-na-original-imafazxdh2bd6hep.jpeg?q=70', 10, 0, '2019-02-07 00:00:00'),
(10014, 'Redmi Note 6 Pro (Blue, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 256 GB 15.9 cm (6.26 inch) FHD  Display 12MP   5MP | 20MP   2MP Dual Front Camera 4000 mAh Li-polymer Battery Qualcomm Snapdragon 636 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '15999.00', '13999.00', 'https://rukminim1.flixcart.com/image/312/312/josxlzk0/mobile/y/j/j/mi-redmi-note-6-pro-mzb6882in-original-imafb6npun9zvqbk.jpeg?q=70', 10, 0, '2019-02-07 00:00:00'),
(10015, 'Redmi Note 6 Pro (Rose Gold, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 256 GB 15.9 cm (6.26 inch) FHD  Display 12MP   5MP | 20MP   2MP Dual Front Camera 4000 mAh Li-polymer Battery Qualcomm Snapdragon 636 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '15999.00', '13999.00', 'https://rukminim1.flixcart.com/image/312/312/jog2nbk0/mobile/q/z/h/mi-redmi-e7t-na-original-imafazxgdvdcnygz.jpeg?q=70', 10, 0, '2019-02-07 00:00:00'),
(10016, 'Redmi 6 (Rose Gold, 32 GB)', ' 3 GB RAM | 32 GB ROM | Expandable Upto 256 GB 13.84 cm (5.45 inch) HD  Display 12MP   5MP | 5MP Front Camera 3000 mAh Lithium-polymer Battery 2.0 GHz Mediatek P22 Octacore Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8999.00', '7999.00', 'https://rukminim1.flixcart.com/image/312/312/jmkwya80/mobile/w/h/j/mi-redmi-6-na-original-imaf9gmdbuyhkwkw.jpeg?q=70', 10, 0, '2019-02-07 00:00:00'),
(10017, 'Redmi Note 6 Pro (Black, 64 GB)', ' 6 GB RAM | 64 GB ROM | Expandable Upto 256 GB 15.9 cm (6.26 inch) FHD  Display 12MP   5MP | 20MP   2MP Dual Front Camera 4000 mAh Li-polymer Battery Qualcomm Snapdragon 636 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '17999.00', '15999.00', 'https://rukminim1.flixcart.com/image/312/312/jog2nbk0/mobile/e/x/b/mi-redmi-e7t-na-original-imafazxdh2bd6hep.jpeg?q=70', 10, 0, '2019-02-07 00:00:00'),
(10018, 'Redmi 6 (Black, 64 GB)', ' 3 GB RAM | 64 GB ROM | Expandable Upto 256 GB 13.84 cm (5.45 inch) HD  Display 12MP   5MP | 5MP Front Camera 3000 mAh Lithium-polymer Battery 2.0 GHz Mediatek P22 Octacore Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '10499.00', '8499.00', 'https://rukminim1.flixcart.com/image/312/312/jndhrbk0/mobile/n/h/j/mi-redmi-6-na-original-imafa2z2jfaky6bf.jpeg?q=70', 10, 0, '2019-02-07 00:00:00'),
(10019, 'Redmi Note 5 Pro (Black, 64 GB)', ' 6 GB RAM | 64 GB ROM | Expandable Upto 128 GB 15.21 cm (5.99 inch) Full HD  Display 12MP   5MP | 20MP Front Camera 4000 mAh Li Polymer Battery Qualcomm Snapdragon 636 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '16999.00', '13999.00', 'https://rukminim1.flixcart.com/image/312/312/jdhp47k0/mobile/e/h/e/redmi-note-5-pro-na-original-imaf2ashnnbxxks5.jpeg?q=70', 10, 0, '2019-02-07 00:00:00'),
(10020, 'Redmi 6 (Black, 32 GB)', ' 3 GB RAM | 32 GB ROM | Expandable Upto 256 GB 13.84 cm (5.45 inch) HD  Display 12MP   5MP | 5MP Front Camera 3000 mAh Lithium-polymer Battery 2.0 GHz Mediatek P22 Octacore Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8999.00', '7999.00', 'https://rukminim1.flixcart.com/image/312/312/jm2c87k0/mobile/a/u/t/mi-redmi-6-na-original-imaf92dn4sfharjg.jpeg?q=70', 10, 0, '2019-02-07 00:00:00'),
(10021, 'Redmi 6 (Blue, 32 GB)', ' 3 GB RAM | 32 GB ROM | Expandable Upto 256 GB 13.84 cm (5.45 inch) HD  Display 12MP   5MP | 5MP Front Camera 3000 mAh Lithium-polymer Battery 2.0 GHz Mediatek P22 Octacore Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8999.00', '7999.00', 'https://rukminim1.flixcart.com/image/312/312/jm81zm80/mobile/b/g/n/mi-redmi-6-na-original-imaf96e5yfcxrppk.jpeg?q=70', 10, 0, '2019-02-07 00:00:00'),
(10022, 'Redmi 6 (Gold, 64 GB)', ' 3 GB RAM | 64 GB ROM | Expandable Upto 256 GB 13.84 cm (5.45 inch) HD  Display 12MP   5MP | 5MP Front Camera 3000 mAh Lithium-polymer Battery 2.0 GHz Mediatek P22 Octacore Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '10499.00', '8499.00', 'https://rukminim1.flixcart.com/image/312/312/jlo1tow0/mobile/g/v/x/mi-redmi-6-na-original-imaf8qtkgh6qhs3p.jpeg?q=70', 10, 0, '2019-02-07 00:00:00'),
(10023, 'Redmi 6 (Rose Gold, 64 GB)', ' 3 GB RAM | 64 GB ROM | Expandable Upto 256 GB 13.84 cm (5.45 inch) HD  Display 12MP   5MP | 5MP Front Camera 3000 mAh Lithium-polymer Battery 2.0 GHz Mediatek P22 Octacore Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '10499.00', '8499.00', 'https://rukminim1.flixcart.com/image/312/312/jmkwya80/mobile/w/h/j/mi-redmi-6-na-original-imaf9gmdbuyhkwkw.jpeg?q=70', 10, 0, '2019-02-07 00:00:00'),
(10024, 'Redmi Note 6 Pro (Red, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 256 GB 15.9 cm (6.26 inch) FHD  Display 12MP   5MP | 20MP   2MP Dual Front Camera 4000 mAh Li-polymer Battery Qualcomm Snapdragon 636 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '15999.00', '13999.00', 'https://rukminim1.flixcart.com/image/312/312/jog2nbk0/mobile/d/j/d/mi-redmi-e7t-na-original-imafazxhztrw9gnr.jpeg?q=70', 10, 0, '2019-02-07 00:00:00'),
(10025, 'Redmi Note 5 Pro (Gold, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 128 GB 15.21 cm (5.99 inch) Full HD  Display 12MP   5MP | 20MP Front Camera 4000 mAh Li Polymer Battery Qualcomm Snapdragon 636 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '14999.00', '12999.00', 'https://rukminim1.flixcart.com/image/312/312/jdkjzww0/mobile/y/q/m/redmi-note-5-pro-mzb6084in-original-imaf2g8zj6y5vkqn.jpeg?q=70', 10, 0, '2019-02-07 00:00:00'),
(10026, 'Redmi 6 (Gold, 32 GB)', ' 3 GB RAM | 32 GB ROM | Expandable Upto 256 GB 13.84 cm (5.45 inch) HD  Display 12MP   5MP | 5MP Front Camera 3000 mAh Lithium-polymer Battery 2.0 GHz Mediatek P22 Octacore Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8999.00', '7999.00', 'https://rukminim1.flixcart.com/image/312/312/jlo1tow0/mobile/g/v/x/mi-redmi-6-na-original-imaf8qtkgh6qhs3p.jpeg?q=70', 10, 0, '2019-02-07 00:00:00'),
(10027, 'Redmi 6 (Blue, 64 GB)', ' 3 GB RAM | 64 GB ROM | Expandable Upto 256 GB 13.84 cm (5.45 inch) HD  Display 12MP   5MP | 5MP Front Camera 3000 mAh Lithium-polymer Battery 2.0 GHz Mediatek P22 Octacore Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '10499.00', '8499.00', 'https://rukminim1.flixcart.com/image/312/312/jmkwya80/mobile/k/a/z/mi-redmi-6-na-original-imaf9gmdzvy9gznd.jpeg?q=70', 10, 0, '2019-02-07 00:00:00'),
(10028, 'Redmi Note 6 Pro (Blue, 64 GB)', ' 6 GB RAM | 64 GB ROM | Expandable Upto 256 GB 15.9 cm (6.26 inch) FHD  Display 12MP   5MP | 20MP   2MP Dual Front Camera 4000 mAh Li-polymer Battery Qualcomm Snapdragon 636 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '17999.00', '15999.00', 'https://rukminim1.flixcart.com/image/312/312/josxlzk0/mobile/y/j/j/mi-redmi-note-6-pro-mzb6882in-original-imafb6npun9zvqbk.jpeg?q=70', 10, 0, '2019-02-07 00:00:00'),
(10029, 'Redmi Note 5 Pro (Black, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 128 GB 15.21 cm (5.99 inch) Full HD  Display 12MP   5MP | 20MP Front Camera 4000 mAh Li Polymer Battery Qualcomm Snapdragon 636 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '14999.00', '12999.00', 'https://rukminim1.flixcart.com/image/312/312/jdhp47k0/mobile/e/h/e/redmi-note-5-pro-na-original-imaf2ashnnbxxks5.jpeg?q=70', 10, 0, '2019-02-07 00:00:00'),
(10030, 'Redmi Note 6 Pro (Red, 64 GB)', ' 6 GB RAM | 64 GB ROM | Expandable Upto 256 GB 15.9 cm (6.26 inch) FHD  Display 12MP   5MP | 20MP   2MP Dual Front Camera 4000 mAh Li-polymer Battery Qualcomm Snapdragon 636 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '17999.00', '15999.00', 'https://rukminim1.flixcart.com/image/312/312/jog2nbk0/mobile/d/j/d/mi-redmi-e7t-na-original-imafazxhztrw9gnr.jpeg?q=70', 10, 0, '2019-02-07 00:00:00'),
(10031, 'Redmi Note 6 Pro (Rose Gold, 64 GB)', ' 6 GB RAM | 64 GB ROM | Expandable Upto 256 GB 15.9 cm (6.26 inch) FHD  Display 12MP   5MP | 20MP   2MP Dual Front Camera 4000 mAh Li-polymer Battery Qualcomm Snapdragon 636 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '17999.00', '15999.00', 'https://rukminim1.flixcart.com/image/312/312/jog2nbk0/mobile/q/z/h/mi-redmi-e7t-na-original-imafazxgdvdcnygz.jpeg?q=70', 10, 0, '2019-02-07 00:00:00'),
(10046, 'Redmi 6 Pro (Lake Blue, 32 GB)', ' 3 GB RAM | 32 GB ROM | Expandable Upto 256 GB 14.83 cm (5.84 inch) FHD  Display 12MP   5MP | 5MP Front Camera 4000 mAh Battery Qualcomm Snapdragon 625 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Battery and Accessories', '10990.00', '10990.00', 'https://rukminim1.flixcart.com/image/312/312/jpcxrww0/mobile/z/f/w/mi-redmi-6-pro-na-original-imafawhpywgdgzjq.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10047, 'Mi A2 (Blue/Lake Blue, 64 GB)', ' 4 GB RAM | 64 GB ROM | 15.21 cm (5.99 inch) FHD  Display 20MP   12MP | 20MP Front Camera 3010 mAh Battery Qualcomm Snapdragon 660 Octacore Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Battery and Accessories', '14790.00', '14790.00', 'https://rukminim1.flixcart.com/image/312/312/jo37onk0/mobile-refurbished/z/9/3/mi-a2-32-u-na-mi-4-original-imaf9c7j9k2ygcby.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10048, 'Mi Max 2 (Black, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 128 GB 16.36 cm (6.44 inch) Full HD Display 12MP Rear Camera | 5MP Front Camera 5300 mAh Li-Polymer Battery Qualcomm Snapdragon 625 Octa Core 2 Ghz Processor Brand Warranty of 1 Year Available for Mobile', '16999.00', '14999.00', 'https://rukminim1.flixcart.com/image/312/312/j5ihlzk0/mobile/f/e/7/mi-max-2-d4-original-imaew6jfzdxmg3d6.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10049, 'Redmi 5 (Black, 32 GB)', ' 3 GB RAM | 32 GB ROM | Expandable Upto 128 GB 14.48 cm (5.7 inch) HD  Display 12MP Rear Camera | 5MP Front Camera 3300 mAh Battery Qualcomm Snapdragon 450 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '9199.00', '9199.00', 'https://rukminim1.flixcart.com/image/312/312/jgl5gnk0/mobile/9/b/u/mi-redmi-5-na-original-imaf4snfnnpfubng.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10050, 'Redmi 6 Pro (Red, 32 GB)', ' 3 GB RAM | 32 GB ROM | Expandable Upto 256 GB 14.83 cm (5.84 inch) FHD  Display 12MP   5MP | 5MP Front Camera 4000 mAh Battery Qualcomm Snapdragon 625 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Battery and Accessories', '10995.00', '10995.00', 'https://rukminim1.flixcart.com/image/312/312/jpcxrww0/mobile/g/z/n/mi-redmi-6-pro-na-original-imafawhpcxxytf3f.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10051, 'Redmi Y2 (Gold, 32 GB)', ' 3 GB RAM | 32 GB ROM | 15.21 cm (5.99 inch) Display 12MP Rear Camera | 16MP Front Camera 3080 mAh Battery 1', '8999.00', '8999.00', 'https://rukminim1.flixcart.com/image/312/312/jklgxow0/mobile/w/k/y/mi-y2-y2-original-imaf7wzyzkvabay2.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10052, 'Redmi Note 5 Pro (Rose Gold, 64 GB)', ' 6 GB RAM | 64 GB ROM | Expandable Upto 128 GB 15.21 cm (5.99 inch) Full HD  Display 12MP   5MP | 20MP Front Camera 4000 mAh Li Polymer Battery Qualcomm Snapdragon 636 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '15999.00', '15999.00', 'https://rukminim1.flixcart.com/image/312/312/jdkjzww0/mobile/z/x/a/redmi-note-5-pro-mzb6086in-original-imaf2g8zp8ubadzb.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10053, 'Redmi Note 5 (Gold, 32 GB)', ' 3 GB RAM | 32 GB ROM | Expandable Upto 128 GB 15.21 cm (5.99 inch) Full HD  Display 12MP Rear Camera | 5MP Front Camera 4000 mAh Li Polymer Battery Qualcomm Snapdragon 625 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '10585.00', '10585.00', 'https://rukminim1.flixcart.com/image/312/312/jdkjzww0/mobile/f/w/5/redmi-note-5-mzb5913in-original-imaf2g8zntrqxwzj.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10054, 'Mi A2 (Red, 64 GB)', ' 4 GB RAM | 64 GB ROM | 15.21 cm (5.99 inch) FHD  Display 20MP   12MP | 20MP Front Camera 3010 mAh Battery Qualcomm Snapdragon 660 Octacore Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Battery and Accessories', '14790.00', '14790.00', 'https://rukminim1.flixcart.com/image/312/312/jmkwya80/mobile/y/6/j/mi-a2-na-original-imaf9gbgka8yna47.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10055, 'Redmi 6 Pro (Lake Blue, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 256 GB 14.83 cm (5.84 inch) FHD  Display 12MP   5MP | 5MP Front Camera 4000 mAh Battery Qualcomm Snapdragon 625 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Battery and Accessories', '13490.00', '13490.00', 'https://rukminim1.flixcart.com/image/312/312/jpcxrww0/mobile/z/f/w/mi-redmi-6-pro-na-original-imafawhpywgdgzjq.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10056, 'Redmi 6 Pro (Gold, 32 GB)', ' 3 GB RAM | 32 GB ROM | Expandable Upto 256 GB 14.83 cm (5.84 inch) FHD  Display 12MP   5MP | 5MP Front Camera 4000 mAh Battery Qualcomm Snapdragon 625 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Battery and Accessories', '10699.00', '10699.00', 'https://rukminim1.flixcart.com/image/312/312/jpcxrww0/mobile/x/b/b/mi-redmi-6-pro-na-original-imafawhpysnx884c.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10057, 'Redmi 6 Pro (Black, 64 GB)', ' 4 GB RAM | 64 GB ROM | 14.83 cm (5.84 inch) Display 12MP Rear Camera 4000 mAh Battery 12 months', '12399.00', '12399.00', 'https://rukminim1.flixcart.com/image/312/312/jms25jk0/mobile/n/z/k/mi-6-pro-6-pro-original-imaf9hryrgkrfza5.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10058, 'Redmi Y2 (Blue, 32 GB)', ' 3 GB RAM | 32 GB ROM | 15.21 cm (5.99 inch) Display 12MP Rear Camera | 16MP Front Camera 3080 mAh Battery 1 Year Warranty', '9090.00', '9090.00', 'https://rukminim1.flixcart.com/image/312/312/jn4x47k0/mobile/y/y/h/mi-redmi-y2-y2-original-imaf9vyzpfsvchmp.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10059, 'Redmi Y2 (Rose Gold, 32 GB)', ' 3 GB RAM | 32 GB ROM | 15.21 cm (5.99 inch) Display 12MP Rear Camera | 16MP Front Camera 3080 mAh Battery 1 Year Warranty', '9090.00', '9090.00', 'https://rukminim1.flixcart.com/image/312/312/jltrl3k0/mobile/h/b/z/mi-redmi-y2-y2-original-imaf87qtgnmpemmb.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10060, 'Redmi Note 5 (Black, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 128 GB 15.21 cm (5.99 inch) Full HD  Display 12MP Rear Camera | 5MP Front Camera 4000 mAh Li Polymer Battery Qualcomm Snapdragon 625 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '12980.00', '12980.00', 'https://rukminim1.flixcart.com/image/312/312/jdkjzww0/mobile/u/y/j/redmi-note-5-mzb5916in-original-imaf2gabuvmuhvrz.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10061, 'Redmi Y2 (Black, 32 GB)', ' 3 GB RAM | 32 GB ROM | 15.21 cm (5.99 inch) Display 12MP Rear Camera 3080 mAh Battery 1 Year Warranty', '8999.00', '8999.00', 'https://rukminim1.flixcart.com/image/312/312/jnnhua80/mobile/a/d/j/mi-redmi-y2-y2-original-imafaabg2b2kyrct.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10062, 'Mi A2 (Black, 128 GB)', ' 6 GB RAM | 128 GB ROM | 15.21 cm (5.99 inch) Display 20MP Rear Camera 3010 mAh Battery 1 Year Warranty', '17990.00', '17990.00', 'https://rukminim1.flixcart.com/image/312/312/jrjizrk0/mobile/q/9/r/mi-a2-a2-original-imaf8zwaxz8hh5mx.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10063, 'Redmi 6 Pro (Black, 32 GB)', ' 3 GB RAM | 32 GB ROM | Expandable Upto 256 GB 14.83 cm (5.84 inch) FHD  Display 12MP   5MP | 5MP Front Camera 4000 mAh Battery Qualcomm Snapdragon 625 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Battery and Accessories', '10390.00', '10390.00', 'https://rukminim1.flixcart.com/image/312/312/jq8dgnk0/cases-covers/back-cover/d/6/p/karwan-lt-mi-6pro-black-original-imafawhpfzwhxnf2.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10064, 'Redmi 5 (Black, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 128 GB 14.48 cm (5.7 inch) HD  Display 12MP Rear Camera | 5MP Front Camera 3300 mAh Battery Qualcomm Snapdragon 450 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '11999.00', '11999.00', 'https://rukminim1.flixcart.com/image/312/312/jjq18y80/mobile/a/z/6/mi-redmi-5-na-original-imaf78krenwg8bbz.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10065, 'Redmi 6 Pro (Gold, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 256 GB 14.83 cm (5.84 inch) FHD  Display 12MP   5MP | 5MP Front Camera 4000 mAh Battery Qualcomm Snapdragon 625 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Battery and Accessories', '11890.00', '11890.00', 'https://rukminim1.flixcart.com/image/312/312/jpcxrww0/mobile/x/b/b/mi-redmi-6-pro-na-original-imafawhpysnx884c.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10066, 'Redmi 5 (Gold, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 128 GB 14.48 cm (5.7 inch) HD  Display 12MP Rear Camera | 5MP Front Camera 3300 mAh Battery Qualcomm Snapdragon 450 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '11499.00', '11499.00', 'https://rukminim1.flixcart.com/image/312/312/jjq18y80/mobile/n/p/5/mi-redmi-5-na-original-imaf4gh6qhrdebfg.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10067, 'Redmi 5 (Lake Blue, 16 GB)', ' 2 GB RAM | 16 GB ROM | Expandable Upto 128 GB 14.48 cm (5.7 inch) HD  Display 12MP Rear Camera | 5MP Front Camera 3300 mAh Battery Qualcomm Snapdragon 450 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8495.00', '8495.00', 'https://rukminim1.flixcart.com/image/312/312/ji0lbbk0/mobile/3/m/k/mi-redmi-5-na-original-imaf5semqnagymyq.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10068, 'Redmi 5 (Rose Gold, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 128 GB 14.48 cm (5.7 inch) HD  Display 12MP Rear Camera | 5MP Front Camera 3300 mAh Battery Qualcomm Snapdragon 450 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '11999.00', '11999.00', 'https://rukminim1.flixcart.com/image/312/312/jl2m7ww0/mobile/g/p/r/mi-redmi-5-na-original-imaf8a8vhfn3cadn.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10069, 'Mi Mix 2 (Black, 128 GB)', ' 6 GB RAM | 128 GB ROM | 15.21 cm (5.99 inch) Full HD  Display 12MP Rear Camera | 5MP Front Camera 3400 mAh Li-polymer Battery Qualcomm Snapdragon 835 Octa Core 2.5 GHz Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '37999.00', '29999.00', 'https://rukminim1.flixcart.com/image/312/312/j8bxvgw0-1/mobile/g/j/z/mi-mi-mix-2-na-original-imaeydgnjzmvxwfz.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10070, 'Redmi 5 (Gold, 32 GB)', ' 3 GB RAM | 32 GB ROM | Expandable Upto 128 GB 14.48 cm (5.7 inch) HD  Display 12MP Rear Camera | 5MP Front Camera 3300 mAh Battery Qualcomm Snapdragon 450 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '9799.00', '9799.00', 'https://rukminim1.flixcart.com/image/312/312/jjq18y80/mobile/n/p/5/mi-redmi-5-na-original-imaf4gh6qhrdebfg.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10071, 'Redmi Y2 (Black, 32 GB)', ' 3 GB RAM | 32 GB ROM | 15.21 cm (5.99 inch) Display 12MP Rear Camera 3080 mAh Battery 1 Year Warranty', '8999.00', '8999.00', 'https://rukminim1.flixcart.com/image/312/312/jnnhua80/mobile/a/d/j/mi-redmi-y2-y2-original-imafaabg2b2kyrct.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10072, 'Mi A2 (Black, 64 GB)', ' 4 GB RAM | 64 GB ROM | 15.21 cm (5.99 inch) FHD  Display 20MP   12MP | 20MP Front Camera 3010 mAh Battery Qualcomm Snapdragon 660 Octacore Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Battery and Accessories', '14790.00', '14790.00', 'https://rukminim1.flixcart.com/image/312/312/jrjizrk0/mobile/q/9/r/mi-a2-a2-original-imaf8zwaxz8hh5mx.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10073, 'Redmi Y1 lite (Rose Gold, 16 GB)', ' 2 GB RAM | 16 GB ROM | Expandable Upto 128 GB 13.97 cm (5.5 inch) HD Display 13MP Rear Camera | 5MP Front Camera 3080 mAh Battery Snapdragon 425 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '7805.00', '7805.00', 'https://rukminim1.flixcart.com/image/312/312/jhgl5e80/mobile/g/u/f/mi-redmi-y1-lite-mzb5748in-original-imaf5h5erxndzvgg.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10074, 'Redmi 5A (Blue, 32 GB)', ' 3 GB RAM | 32 GB ROM | Expandable Upto 128 GB 12.7 cm (5 inch) HD Display 13MP Rear Camera | 5MP Front Camera 3000 mAh Li-polymer Battery Qualcomm Snapdragon 425 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8179.00', '8179.00', 'https://rukminim1.flixcart.com/image/312/312/jefzonk0/mobile/k/w/g/mi-redmi-5a-mci3b-original-imaf34ccfrfsrhrr.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10075, 'Redmi 6 Pro (Gold, 32 GB)', ' 3 GB RAM | 32 GB ROM | Expandable Upto 256 GB 14.83 cm (5.84 inch) FHD  Display 12MP   5MP | 5MP Front Camera 4000 mAh Battery Qualcomm Snapdragon 625 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Battery and Accessories', '10890.00', '10890.00', 'https://rukminim1.flixcart.com/image/312/312/jpcxrww0/mobile/x/b/b/mi-redmi-6-pro-na-original-imafawhpysnx884c.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10076, 'Redmi 5A (Gold, 32 GB)', ' 3 GB RAM | 32 GB ROM | Expandable Upto 128 GB 12.7 cm (5 inch) HD Display 13MP Rear Camera | 5MP Front Camera 3000 mAh Li-polymer Battery Qualcomm Snapdragon 425 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8279.00', '8279.00', 'https://rukminim1.flixcart.com/image/312/312/jaij3bk0/mobile/f/x/h/mi-redmi-5a-c3b-original-imafy2gfpyybwyyd.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10077, 'Redmi Y2 (Blue, 64 GB)', ' 4 GB RAM | 64 GB ROM | 15.21 cm (5.99 inch) Display 12MP Rear Camera | 16MP Front Camera 3080 mAh Battery 1 Year Warranty', '11298.00', '11298.00', 'https://rukminim1.flixcart.com/image/312/312/jqzitu80/mobile/b/u/f/mi-redmi-y2-y2-original-imafctexm2whwc4k.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10078, 'Redmi 6A (Blue, 32 GB)', ' 2 GB RAM | 32 GB ROM | Expandable Upto 128 GB 13.84 cm (5.45 inch) HD Display 13MP Rear Camera 3000 mAh Battery Mediateck Processor 1 Year Manufacturer Warranty', '7550.00', '7550.00', 'https://rukminim1.flixcart.com/image/312/312/jo4n4i80/mobile/y/e/8/mi-redmi-6a-redmi-6a-original-imafaf8yf387zwvm.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10079, 'Redmi Y2 (Black, 64 GB)', ' 4 GB RAM | 64 GB ROM | 15.21 cm (5.99 inch) HD Display 12MP Rear Camera | 16MP Front Camera 3080 mAh Battery 1 Year', '11579.00', '11579.00', 'https://rukminim1.flixcart.com/image/312/312/johi3680/mobile/d/g/m/mi-redmi-y2-y2-original-imafawt7xhycwmk7.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10080, 'Mi A2 (Red, 128 GB)', ' 6 GB RAM | 128 GB ROM | 15.21 cm (5.99 inch) Display 20MP Rear Camera 3010 mAh Battery 1 Year', '17590.00', '17590.00', 'https://rukminim1.flixcart.com/image/312/312/jrgo4280/mobile/m/z/h/mi-a2-a2-original-imafd92uetypzxma.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10081, 'Redmi 6 Pro (Black, 64 GB)', ' 4 GB RAM | 64 GB ROM | 14.83 cm (5.84 inch) Display 12MP Rear Camera 4000 mAh Battery 12 months', '11999.00', '11999.00', 'https://rukminim1.flixcart.com/image/312/312/jms25jk0/mobile/n/z/k/mi-6-pro-6-pro-original-imaf9hryrgkrfza5.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10082, 'Redmi Note 5 (Gold, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 128 GB 15.21 cm (5.99 inch) Full HD  Display 12MP Rear Camera | 5MP Front Camera 4000 mAh Li Polymer Battery Qualcomm Snapdragon 625 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '12350.00', '12350.00', 'https://rukminim1.flixcart.com/image/312/312/jdkjzww0/mobile/d/y/b/redmi-note-5-mzb5917in-original-imaf2g8zwrmywhqq.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10083, 'Redmi 5 (Lake Blue, 32 GB)', ' 3 GB RAM | 32 GB ROM | Expandable Upto 128 GB 14.48 cm (5.7 inch) HD  Display 12MP Rear Camera | 5MP Front Camera 3300 mAh Battery Qualcomm Snapdragon 450 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '9390.00', '9390.00', 'https://rukminim1.flixcart.com/image/312/312/ji0lbbk0/mobile/3/m/k/mi-redmi-5-na-original-imaf5semqnagymyq.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10084, 'Redmi Note 5 (Rose Gold, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 128 GB 15.21 cm (5.99 inch) Full HD  Display 12MP Rear Camera | 5MP Front Camera 4000 mAh Li Polymer Battery Qualcomm Snapdragon 625 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '12999.00', '12999.00', 'https://rukminim1.flixcart.com/image/312/312/jdkjzww0/mobile/h/p/a/redmi-note-5-mzb5918in-original-imaf2g8zyhxc4bxy.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10085, 'Redmi 6 Pro (Black, 32 GB)', ' 3 GB RAM | 32 GB ROM | Expandable Upto 256 GB 14.83 cm (5.84 inch) FHD  Display 12MP   5MP | 5MP Front Camera 4000 mAh Battery Qualcomm Snapdragon 625 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Battery and Accessories', '10890.00', '10890.00', 'https://rukminim1.flixcart.com/image/312/312/jq8dgnk0/cases-covers/back-cover/d/6/p/karwan-lt-mi-6pro-black-original-imafawhpfzwhxnf2.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10086, 'Mi 4i (White, 16 GB)', ' 2 GB RAM | 16 GB ROM | 12.7 cm (5 inch) Full HD Display 13MP Rear Camera | 5MP Front Camera 3030 mAh Li-ion Polymer Battery 2nd-gen Snapdragon 615 64-bit octa-core Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '11599.00', '11599.00', 'https://rukminim1.flixcart.com/image/312/312/mobile/b/v/y/mi-4i-mzb4343in-original-imae6zxfgr4xmme7.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10087, 'Mi 4i (Grey, 16 GB)', ' 2 GB RAM | 16 GB ROM | 12.7 cm (5 inch) Full HD Display 13MP Rear Camera | 5MP Front Camera 3030 mAh Li-ion Polymer Battery qualcomm 2nd-gen Snapdragon 615 64-bit octa-core Octa Core 1.7GHz Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '11599.00', '11599.00', 'https://rukminim1.flixcart.com/image/312/312/mobile/n/t/s/mi-mi-4i-mzb4300in-original-imae7ndt3wpak7jj.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10088, 'Redmi 6 Pro (Red, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 256 GB 14.83 cm (5.84 inch) FHD  Display 12MP   5MP | 5MP Front Camera 4000 mAh Battery Qualcomm Snapdragon 625 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Battery and Accessories', '12890.00', '12890.00', 'https://rukminim1.flixcart.com/image/312/312/jpcxrww0/mobile/g/z/n/mi-redmi-6-pro-na-original-imafawhpcxxytf3f.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10089, 'Mi A1 (Gold, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 128 GB 13.97 cm (5.5 inch) Full HD Display 12MP   12MP | 5MP Front Camera 3080 mAh Li-polymer Battery Qualcomm Snapdragon 625 64 bit Octa Core 2GHz Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '13489.00', '13489.00', 'https://rukminim1.flixcart.com/image/312/312/j752nww0/mobile/x/u/z/mi-mi-a1-na-original-imaexg9z4fmxk8ns.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10090, 'Mi A1 (Rose Gold, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 128 GB 13.97 cm (5.5 inch) Full HD Display 12MP   12MP | 5MP Front Camera 3080 mAh Li-polymer Battery Qualcomm Snapdragon 625 64 bit Octa Core 2GHz Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '14148.00', '14148.00', 'https://rukminim1.flixcart.com/image/312/312/ja73ki80/mobile/9/m/s/mi-mi-a1-mzb5654in-original-imaeztu5hhvydshh.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10091, 'Mi A1 (Black, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 128 GB 13.97 cm (5.5 inch) Full HD Display 12MP   12MP | 5MP Front Camera 3080 mAh Li-polymer Battery Qualcomm Snapdragon 625 64 bit Octa Core 2GHz Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '13999.00', '13999.00', 'https://rukminim1.flixcart.com/image/312/312/j752nww0/mobile/h/e/t/mi-mi-a1-na-original-imaexg9njdddfphr.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10092, 'Redmi 5 (Black, 16 GB)', ' 2 GB RAM | 16 GB ROM | Expandable Upto 128 GB 14.48 cm (5.7 inch) HD  Display 12MP Rear Camera | 5MP Front Camera 3300 mAh Battery Qualcomm Snapdragon 450 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8499.00', '8499.00', 'https://rukminim1.flixcart.com/image/312/312/jgl5gnk0/mobile/9/b/u/mi-redmi-5-na-original-imaf4snfnnpfubng.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10093, 'MI3 (Metallic Grey, 16 GB)', ' 2 GB RAM | 16 GB ROM | 12.7 cm (5 inch) Full HD Display 13MP Rear Camera | 2MP Front Camera 3050 mAh Li-Ion Battery qualcomm Qualcomm Snapdragon 800 8274AB Quad Core 2.3GHz Processor 1 Year for Mobile ', '13999.00', '13999.00', 'https://rukminim1.flixcart.com/image/312/312/mobile/k/8/j/mi-mi3-original-imady54gkp5zt5hs.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10094, 'Realme C1 (Navy Blue, 32 GB)', ' 3 GB RAM | 32 GB ROM | Expandable Upto 256 GB 15.75 cm (6.2 inch) HD  Display 13MP   2MP | 5MP Front Camera 4230 mAh Li-ion Battery Qualcomm Snapdragon 450 Octa Core 1.8 GHz Processor 2019 Edition Face Unlock Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '9999.00', '8499.00', 'https://rukminim1.flixcart.com/image/312/312/jqzitu80/mobile/z/a/f/realme-c1-na-original-imafcvnt4mtzyq2d.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10095, 'Realme C1 (Mirror Black, 32 GB)', ' 2 GB RAM | 32 GB ROM | Expandable Upto 256 GB 15.75 cm (6.2 inch) HD  Display 13MP   2MP | 5MP Front Camera 4230 mAh Li-ion Battery Qualcomm Snapdragon 450 Octa Core 1.8 GHz Processor 2019 Edition Face Unlock Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8999.00', '7499.00', 'https://rukminim1.flixcart.com/image/312/312/jqzitu80/mobile/w/w/c/realme-c1-na-original-imafcvntdhsc66wb.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10096, 'Realme C1 (Mirror Black, 32 GB)', ' 3 GB RAM | 32 GB ROM | Expandable Upto 256 GB 15.75 cm (6.2 inch) HD  Display 13MP   2MP | 5MP Front Camera 4230 mAh Li-ion Battery Qualcomm Snapdragon 450 Octa Core 1.8 GHz Processor 2019 Edition Face Unlock Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '9999.00', '8499.00', 'https://rukminim1.flixcart.com/image/312/312/jqzitu80/mobile/w/w/c/realme-c1-na-original-imafcvntdhsc66wb.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10097, 'Realme C1 (Mirror Black, 16 GB)', ' 2 GB RAM | 16 GB ROM | Expandable Upto 256 GB 15.75 cm (6.2 inch) HD  Display 13MP   2MP | 5MP Front Camera 4230 mAh Li-ion Battery Qualcomm Snapdragon 450 Octa Core 1.8 GHz Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8990.00', '7499.00', 'https://rukminim1.flixcart.com/image/312/312/jmi22kw0/mobile/k/y/k/realme-c1-rmx1811-original-imaf9e7csexsdstd.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10098, 'Realme 2 (Diamond Black, 32 GB)', ' 3 GB RAM | 32 GB ROM | Expandable Upto 256 GB 15.75 cm (6.2 inch) HD  Display 13MP   2MP | 8MP Front Camera 4230 mAh Li-ion Battery Qualcomm Snapdragon 450 Octa Core 1.8 GHz Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '9990.00', '9499.00', 'https://rukminim1.flixcart.com/image/312/312/jlcmavk0/mobile/y/f/8/realme-2-rmx805-original-imaf8hxyjcncbxpw.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10099, 'Realme 2 Pro (Ice Lake, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 256 GB 16.0 cm (6.3 inch) FHD  Display 16MP   2MP | 16MP Front Camera 3500 mAh Li-ion Battery Qualcomm Snapdragon 660 Octa Core 2.0GHz AIE Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '14990.00', '12990.00', 'https://rukminim1.flixcart.com/image/312/312/jmgmmq80/mobile/x/m/y/realme-2-pro-rmx1801-original-imaf9cu2przq9g8z.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10100, 'Realme 2 Pro (Blue Ocean, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 256 GB 16.0 cm (6.3 inch) FHD  Display 16MP   2MP | 16MP Front Camera 3500 mAh Li-ion Battery Qualcomm Snapdragon 660 Octa Core 2.0GHz AIE Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '14990.00', '12990.00', 'https://rukminim1.flixcart.com/image/312/312/jmi22kw0/mobile/x/t/v/realme-2-pro-rmx1801-original-imaf9e3vt9p32yhm.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10101, 'Realme 2 Pro (Black Sea, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 256 GB 16.0 cm (6.3 inch) FHD  Display 16MP   2MP | 16MP Front Camera 3500 mAh Li-ion Battery Qualcomm Snapdragon 660 Octa Core 2.0GHz AIE Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '14990.00', '12990.00', 'https://rukminim1.flixcart.com/image/312/312/jmi22kw0/mobile/t/v/g/realme-2-pro-rmx1801-original-imaf9e3vmfr9jewh.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10102, 'Realme 2 Pro (Blue Ocean, 64 GB)', ' 6 GB RAM | 64 GB ROM | Expandable Upto 256 GB 16.0 cm (6.3 inch) FHD  Display 16MP   2MP | 16MP Front Camera 3500 mAh Li-ion Battery Qualcomm Snapdragon 660 Octa Core 2.0GHz AIE Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '16990.00', '14990.00', 'https://rukminim1.flixcart.com/image/312/312/jmi22kw0/mobile/x/t/v/realme-2-pro-rmx1801-original-imaf9e3vt9p32yhm.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10103, 'Realme 2 Pro (Black Sea, 64 GB)', ' 6 GB RAM | 64 GB ROM | Expandable Upto 256 GB 16.0 cm (6.3 inch) FHD  Display 16MP   2MP | 16MP Front Camera 3500 mAh Li-ion Battery Qualcomm Snapdragon 660 Octa Core 2.0GHz AIE Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '16990.00', '14990.00', 'https://rukminim1.flixcart.com/image/312/312/jmi22kw0/mobile/t/v/g/realme-2-pro-rmx1801-original-imaf9e3vmfr9jewh.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10104, 'Realme U1 (Fiery Gold, 32 GB)', ' 3 GB RAM | 32 GB ROM | 16.0 cm (6.3 inch) Display 13MP Rear Camera 3500 mAh Battery 1 year manufacturer warranty for device and 6 months manufacturer warranty for in-box accessories including batteries from the date of purchase', '11975.00', '11975.00', 'https://rukminim1.flixcart.com/image/312/312/jql8fbk0/mobile/4/b/j/realme-u1-rmx1831-original-imafckhahxczrezn.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10105, 'Realme C1 (Navy Blue, 32 GB)', ' 2 GB RAM | 32 GB ROM | Expandable Upto 256 GB 15.75 cm (6.2 inch) HD  Display 13MP   2MP | 5MP Front Camera 4230 mAh Li-ion Battery Qualcomm Snapdragon 450 Octa Core 1.8 GHz Processor 2019 Edition Face Unlock Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8999.00', '7499.00', 'https://rukminim1.flixcart.com/image/312/312/jqzitu80/mobile/z/a/f/realme-c1-na-original-imafcvnt4mtzyq2d.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10106, 'Realme U1 (Ambitious Black, 32 GB)', ' 3 GB RAM | 32 GB ROM | 16.0 cm (6.3 inch) Display 13MP Rear Camera 3500 mAh Battery 1 year manufacturer warranty for device and 6 months manufacturer warranty for in-box accessories including batteries from the date of purchase', '11999.00', '11999.00', 'https://rukminim1.flixcart.com/image/312/312/jqmnv680/mobile-refurbished/z/d/h/na-32-c-u1-realme-3-original-imafckkuazfdanmz.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10107, 'Realme U1 (Brave Blue, 32 GB)', ' 3 GB RAM | 32 GB ROM | 16.0 cm (6.3 inch) Display 13MP Rear Camera 3500 mAh Battery 1 year manufacturer warranty for device and 6 months manufacturer warranty for in-box accessories including batteries from the date of purchase', '12290.00', '12290.00', 'https://rukminim1.flixcart.com/image/312/312/jqmnv680/mobile-refurbished/p/4/v/na-32-u-u1-realme-3-original-imafckhga34gywf3.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10108, 'Realme C1 (Navy Blue, 16 GB)', ' 2 GB RAM | 16 GB ROM | Expandable Upto 256 GB 15.75 cm (6.2 inch) HD  Display 13MP   2MP | 5MP Front Camera 4230 mAh Li-ion Battery Qualcomm Snapdragon 450 Octa Core 1.8 GHz Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8990.00', '7499.00', 'https://rukminim1.flixcart.com/image/312/312/jmi22kw0/mobile/x/e/9/realme-c1-rmx1811-original-imaf9e7c6pw23b6h.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10109, 'Realme 2 (Diamond Blue, 32 GB)', ' 3 GB RAM | 32 GB ROM | Expandable Upto 256 GB 15.75 cm (6.2 inch) HD  Display 13MP   2MP | 8MP Front Camera 4230 mAh Li-ion Battery Qualcomm Snapdragon 450 Octa Core 1.8 GHz Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '9990.00', '9499.00', 'https://rukminim1.flixcart.com/image/312/312/jn0msnk0/mobile/y/7/8/realme-2-rmx1805-original-imaf9sn8sdjmdyg4.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10110, 'Realme 2 (Diamond Black, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 256 GB 15.75 cm (6.2 inch) HD  Display 13MP   2MP | 8MP Front Camera 4230 mAh Li-ion Battery Qualcomm Snapdragon 450 Octa Core 1.8 GHz Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '11990.00', '10990.00', 'https://rukminim1.flixcart.com/image/312/312/jlcmavk0/mobile/y/f/8/realme-2-rmx805-original-imaf8hxyjcncbxpw.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10111, 'Realme 2 (Diamond Red, 32 GB)', ' 3 GB RAM | 32 GB ROM | Expandable Upto 256 GB 15.75 cm (6.2 inch) HD  Display 13MP   2MP | 8MP Front Camera 4230 mAh Li-ion Battery Qualcomm Snapdragon 450 Octa Core 1.8 GHz Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '9990.00', '9499.00', 'https://rukminim1.flixcart.com/image/312/312/jlcmavk0/mobile/y/z/h/realme-2-rmx805-original-imaf8hxd9uwgg5gu.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10112, 'Realme 2 (Diamond Red, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 256 GB 15.75 cm (6.2 inch) HD  Display 13MP   2MP | 8MP Front Camera 4230 mAh Li-ion Battery Qualcomm Snapdragon 450 Octa Core 1.8 GHz Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '11990.00', '10990.00', 'https://rukminim1.flixcart.com/image/312/312/jlcmavk0/mobile/y/z/h/realme-2-rmx805-original-imaf8hxd9uwgg5gu.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10113, 'Realme 2 Pro (Ice Lake, 64 GB)', ' 6 GB RAM | 64 GB ROM | Expandable Upto 256 GB 16.0 cm (6.3 inch) FHD  Display 16MP   2MP | 16MP Front Camera 3500 mAh Li-ion Battery Qualcomm Snapdragon 660 Octa Core 2.0GHz AIE Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '16990.00', '14990.00', 'https://rukminim1.flixcart.com/image/312/312/jmgmmq80/mobile/x/m/y/realme-2-pro-rmx1801-original-imaf9cu2przq9g8z.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10114, 'Realme 2 Pro (Blue Ocean, 128 GB)', ' 8 GB RAM | 128 GB ROM | Expandable Upto 256 GB 16.0 cm (6.3 inch) FHD  Display 16MP   2MP | 16MP Front Camera 3500 mAh Li-ion Battery Qualcomm Snapdragon 660 Octa Core 2.0GHz AIE Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '18990.00', '16990.00', 'https://rukminim1.flixcart.com/image/312/312/jmi22kw0/mobile/x/t/v/realme-2-pro-rmx1801-original-imaf9e3vt9p32yhm.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10115, 'Realme 2 Pro (Black Sea, 128 GB)', ' 8 GB RAM | 128 GB ROM | Expandable Upto 256 GB 16.0 cm (6.3 inch) FHD  Display 16MP   2MP | 16MP Front Camera 3500 mAh Li-ion Battery Qualcomm Snapdragon 660 Octa Core 2.0GHz AIE Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '18990.00', '16990.00', 'https://rukminim1.flixcart.com/image/312/312/jmi22kw0/mobile/t/v/g/realme-2-pro-rmx1801-original-imaf9e3vmfr9jewh.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10116, 'Realme Realme1 (Diamond Black, 128 GB)', ' 6 GB RAM | 128 GB ROM | 15.24 cm (6 inch) Display 13MP Rear Camera 3410 mAh Battery 1 year manufacturer warranty for device and 6 months manufacturer warranty for in-box accessories including batteries from the date of purchase', '14990.00', '14990.00', 'https://rukminim1.flixcart.com/image/312/312/jr3t5e80/mobile/w/q/z/realme-realme1-realme1-original-imafaxtzykdnzap3.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10117, 'Realme Realme1 (Diamond Red, 32 GB)', ' 3 GB RAM | 32 GB ROM | 15.24 cm (6 inch) Display 13MP Rear Camera 3410 mAh Battery 1 year manufacturer warranty for device and 6 months manufacturer warranty for in-box accessories including batteries from the date of purchase', '12990.00', '12990.00', 'https://rukminim1.flixcart.com/image/312/312/jr3t5e80/mobile/f/w/z/realme-realme1-cph1859-original-imafcws4dverzfqv.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10118, 'Asus TUF Core i7 8th Gen - (8 GB/1 TB HDD/128 GB SSD/Windows 10 Home/6 GB Graphics) FX504GM-EN017T Gam...', ' Intel Core i7 Processor (8th Gen) 8 GB DDR4 RAM 64 bit Windows 10 Operating System 1 TB HDD|128 GB SSD 39.62 cm (15.6 inch) Display 1 Year Onsite Warranty', '111990.00', '104990.00', 'https://rukminim1.flixcart.com/image/312/312/jmwch3k0/computer/d/k/y/asus-na-gaming-laptop-original-imaf9phbgkrvk7zw.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10119, 'Asus ROG Core i7 7th Gen - (8 GB/1 TB HDD/256 GB SSD/Windows 10 Home/6 GB Graphics) GL502VM-FY230T Gam...', ' Pre-installed Genuine Windows 10 Operating System (Includes Built-in Security, Free Automated Updates, Latest Features) Intel Core i7 Processor (7th Gen) 8 GB DDR4 RAM 64 bit Windows 10 Operating System 1 TB HDD|256 GB SSD 39.62 cm (15.6 inch) Display 1 Year Onsite Warranty', '146490.00', '146490.00', 'https://rukminim1.flixcart.com/image/312/312/computer/f/c/v/asus-notebook-original-imaer3hghafsrhyx.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10120, 'Lenovo Legion Core i5 7th Gen - (8 GB/1 TB HDD/128 GB SSD/Windows 10 Home/4 GB Graphics) LN Y520-15IKB...', ' NVIDIA GeForce GTX 1050Ti for Desktop Level Performance 128 GB SSD for Reduced Boot Up Time and in Game Loading 2 x Harman Speakers with Dolby Audio Premium for Best Audio Experience Pre-installed Genuine Windows 10 Operating System (Includes Built-in Security, Free Automated Updates, Latest Features) Intel Core i5 Processor (7th Gen) 8 GB DDR4 RAM 64 bit Windows 10 Operating System 1 TB HDD|128 GB SSD 39.62 cm (15.6 inch) Display 1 Year Onsite Warranty', '81000.00', '72900.00', 'https://rukminim1.flixcart.com/image/312/312/j5vcknk0/computer/c/c/d/lenovo-na-notebook-original-imaewgnyfv3edm86.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10121, 'Acer Predator Helios 300 Core i5 8th Gen - (8 GB/1 TB HDD/128 GB SSD/Windows 10 Home/4 GB Graphics) PH...', ' NVIDIA Geforce GTX 1050 Ti for Desktop Level Performance 128 GB SSD Capacity for Reduced Boot Up Time and in Game Loading Dual Fan Cooling with Metal AeroBlade for Interuption Free Gaming Optimized Dolby Audio Premium Sound Enhancement FineTip Backlit Keyboard with Independent Standard Numeric Keypad Intel Core i5 Processor (8th Gen) 8 GB DDR4 RAM 64 bit Windows 10 Operating System 1 TB HDD|128 GB SSD 39.62 cm (15.6 inch) Display 1 Year International Travelers Warranty (ITW)', '104999.00', '67990.00', 'https://rukminim1.flixcart.com/image/312/312/jmwch3k0/computer/z/f/b/acer-na-gaming-laptop-original-imaf9ph3zd7b4b2s.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10122, 'Acer Predator Helios 300 Core i5 8th Gen - (8 GB/1 TB HDD/128 GB SSD/Windows 10 Home/4 GB Graphics) PH...', ' NVIDIA Geforce GTX 1050 Ti for Desktop Level Performance 128 GB SSD Capacity for Reduced Boot Up Time and in Game Loading Dual Fan Cooling with Metal AeroBlade for Interuption Free Gaming Optimized Dolby Audio Premium Sound Enhancement FineTip Backlit Keyboard with Independent Standard Numeric Keypad Intel Core i5 Processor (8th Gen) 8 GB DDR4 RAM 64 bit Windows 10 Operating System 1 TB HDD|128 GB SSD 39.62 cm (15.6 inch) Display 1 Year International Travelers Warranty (ITW)', '104999.00', '67990.00', 'https://rukminim1.flixcart.com/image/312/312/jmwch3k0/computer/z/f/b/acer-na-gaming-laptop-original-imaf9ph3zd7b4b2s.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10123, 'Acer Predator Helios 300 Core i7 8th Gen - (8 GB/1 TB HDD/128 GB SSD/Windows 10 Home/4 GB Graphics) PH...', ' Intel Core i7 Processor (8th Gen) 8 GB DDR4 RAM 64 bit Windows 10 Operating System 1 TB HDD|128 GB SSD 39.62 cm (15.6 inch) Display 1 Year International Travelers Warranty (ITW)', '119999.00', '77990.00', 'https://rukminim1.flixcart.com/image/312/312/jmwch3k0/computer/f/g/m/acer-na-gaming-laptop-original-imaf9pha8jevgetb.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10124, 'MSI GP Core i7 8th Gen - (16 GB/1 TB HDD/256 GB SSD/Windows 10 Home/6 GB Graphics) GP63 Leopard 8RE -4...', ' NVIDIA Geforce GTX 1060 for Desktop Level Performance 512 GB SSD for Reduced Boot Up Time and in Game Loading MSI\'s Cooler Boost 5 Technology for Interruption Free Gaming Giant Speakers for Immersive Audio Experience Pre-installed Genuine Windows 10 Operating System (Includes Built-in Security, Free Automated Updates, Latest Features) Intel Core i7 Processor (8th Gen) 16 GB DDR4 RAM 64 bit Windows 10 Operating System 1 TB HDD|256 GB SSD 39.62 cm (15.6 inch) Display 2 Years Carry In Warranty', '134990.00', '119990.00', 'https://rukminim1.flixcart.com/image/312/312/jfk00i80/computer/y/h/u/msi-leopard-gaming-laptop-original-imaf3zw7yahbymzh.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10125, 'MSI GV Series Core i7 8th Gen - (16 GB/1 TB HDD/128 GB SSD/Windows 10 Home/6 GB Graphics) GV62 8RE-050...', ' Intel Core i7 Processor (8th Gen) 16 GB DDR4 RAM 64 bit Windows 10 Operating System 1 TB HDD|128 GB SSD 39.62 cm (15.6 inch) Display 2 Years Carry In Warranty', '124990.00', '101990.00', 'https://rukminim1.flixcart.com/image/312/312/jmwch3k0/computer/b/k/n/msi-na-gaming-laptop-original-imaf9ph3gzhnt3hm.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10126, 'MSI GL Series Core i7 7th Gen - (8 GB/1 TB HDD/Windows 10 Home/4 GB Graphics) GL62M 7RDX-2680IN Gaming...', ' NVIDIA Geforce GTX 1050 for Desktop Level Performance 3D Sound Experience with Nahimic 2  Technology MSI\'s Cooler Boost 4 Technology for Interruption Free Gaming Full HD LED Backlit Wideview Anti-glare Display for Better Visual Experience Pre-installed Genuine Windows 10 Operating System (Includes Built-in Security, Free Automated Updates, Latest Features) Intel Core i7 Processor (7th Gen) 8 GB DDR4 RAM 64 bit Windows 10 Operating System 1 TB HDD 39.62 cm (15.6 inch) Display 2 Years Carry In Warranty', '75990.00', '70990.00', 'https://rukminim1.flixcart.com/image/312/312/jd3epow0/computer/r/e/f/msi-na-laptop-original-imaf237r5fnqhf5p.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10128, 'Asus TUF Core i5 8th Gen - (8 GB/1 TB HDD/Windows 10 Home/4 GB Graphics) FX504GD-E4021T Gaming Laptop', ' Intel Core i5 Processor (8th Gen) 8 GB DDR4 RAM 64 bit Windows 10 Operating System 1 TB HDD 39.62 cm (15.6 inch) Display 1 Year Onsite Warranty', '74990.00', '61990.00', 'https://rukminim1.flixcart.com/image/312/312/jmwch3k0/computer/h/y/m/asus-na-gaming-laptop-original-imaf9phbqrgwfa9v.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10129, 'MSI GE Core i7 8th Gen - (16 GB/1 TB HDD/512 GB SSD/Windows 10 Home/8 GB Graphics) GE73 Raider RGB 8RF...', ' NVIDIA Geforce GTX 1070 for Desktop Level Performance 512 GB SSD for Reduced Boot Up Time and in Game Loading MSI\'s Cooler Boost 5 Technology for Interruption Free Gaming Per-Key RGB Gaming Keyboard Helps in Customizing Each Key Pre-installed Genuine Windows 10 Operating System (Includes Built-in Security, Free Automated Updates, Latest Features) Intel Core i7 Processor (8th Gen) 16 GB DDR4 RAM 64 bit Windows 10 Operating System 1 TB HDD|512 GB SSD 43.94 cm (17.3 inch) Display 2 Years Carry In Warranty', '179990.00', '179990.00', 'https://rukminim1.flixcart.com/image/312/312/jfk00i80/computer/a/7/s/msi-raider-gaming-laptop-original-imaf3zvgmj2wbnfv.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10130, 'Acer Nitro 5 Core i5 7th Gen - (8 GB/1 TB HDD/128 GB SSD/Windows 10 Home/2 GB Graphics) AN515-51 Gamin...', ' Pre-installed Genuine Windows 10 Operating System (Includes Built-in Security, Free Automated Updates, Latest Features) Intel Core i5 Processor (7th Gen) 8 GB DDR4 RAM 64 bit Windows 10 Operating System 1 TB HDD|128 GB SSD 39.62 cm (15.6 inch) Display 1 Year International Travelers Warranty (ITW)', '68999.00', '62990.00', 'https://rukminim1.flixcart.com/image/312/312/ja1dt3k0/computer/d/f/q/acer-na-gaming-laptop-original-imaezpffevzzy8wu.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10131, 'MSI GL Core i7 8th Gen - (8 GB/1 TB HDD/128 GB SSD/Windows 10 Home/4 GB Graphics) GL63 8RD-450IN Gamin...', ' NVIDIA Geforce GTX 1050 Ti for Desktop Level Performance 128 GB SSD for Reduced Boot Up Time and in Game Loading MSI\'s Cooler Boost 5 Technology for Interruption Free Gaming Giant Speakers for Immersive Audio Experience Pre-installed Genuine Windows 10 Operating System (Includes Built-in Security, Free Automated Updates, Latest Features) Intel Core i7 Processor (8th Gen) 8 GB DDR4 RAM 64 bit Windows 10 Operating System 1 TB HDD|128 GB SSD 39.62 cm (15.6 inch) Display 2 Years Carry In Warranty', '94990.00', '75990.00', 'https://rukminim1.flixcart.com/image/312/312/jmwch3k0/computer/h/f/x/msi-na-gaming-laptop-original-imaf9phawdeggyyz.jpeg?q=70', 10, 0, '2019-02-08 00:00:00');
INSERT INTO `sku_master` (`sku_id`, `sku_name`, `description`, `list_price`, `sale_price`, `image_url`, `max_order_quantity`, `on_sale`, `creation_date`) VALUES
(10132, 'MSI GE Core i7 8th Gen - (16 GB/1 TB HDD/256 GB SSD/Windows 10 Home/8 GB Graphics) GE63 Raider RGB 8RF...', ' NVIDIA Geforce GTX 1070 for Desktop Level Performance 256 GB SSD for Reduced Boot Up Time and in Game Loading MSI\'s Cooler Boost 5 Technology for Interruption Free Gaming Giant Speakers for Immersive Audio Experience Pre-installed Genuine Windows 10 Operating System (Includes Built-in Security, Free Automated Updates, Latest Features) Intel Core i7 Processor (8th Gen) 16 GB DDR4 RAM 64 bit Windows 10 Operating System 1 TB HDD|256 GB SSD 39.62 cm (15.6 inch) Display 2 Years Carry In Warranty', '164990.00', '164990.00', 'https://rukminim1.flixcart.com/image/312/312/jfk00i80/computer/y/d/a/msi-raider-gaming-laptop-original-imaf3zwhpj5grbn9.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10133, 'Asus TUF Core i5 8th Gen - (8 GB/1 TB HDD/128 GB SSD/Windows 10 Home/4 GB Graphics) FX504GE-E4366T Gam...', ' Intel Core i5 Processor (8th Gen) 8 GB DDR4 RAM 64 bit Windows 10 Operating System 1 TB HDD|128 GB SSD 39.62 cm (15.6 inch) Display 1 Year Global Warranty by Asus', '82990.00', '66990.00', 'https://rukminim1.flixcart.com/image/312/312/jms25jk0/computer/m/a/u/asus-na-gaming-laptop-original-imaf9hu5zkz2np5k.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10134, 'Asus TUF Core i7 8th Gen - (8 GB/1 TB HDD/128 GB SSD/Windows 10 Home/4 GB Graphics) FX504GE-EN224T Gam...', NULL, '95990.00', '74990.00', 'https://rukminim1.flixcart.com/image/312/312/jmwch3k0/computer/t/a/s/asus-na-gaming-laptop-original-imaf9phbmtwqqzcw.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10135, 'Asus Core i7 7th Gen - (8 GB/1 TB HDD/128 GB SSD/Windows 10/4 GB Graphics) FX553VD-DM1032T Gaming Lapt...', ' Pre-installed Genuine Windows 10 Operating System (Includes Built-in Security, Free Automated Updates, Latest Features) Intel Core i7 Processor (7th Gen) 8 GB DDR4 RAM 64 bit Windows 10 Operating System 1 TB HDD|128 GB SSD 39.62 cm (15.6 inch) Display 1 Year Onsite Warranty', '87990.00', '87990.00', 'https://rukminim1.flixcart.com/image/312/312/ja8j0cw0/computer/h/z/c/asus-na-laptop-original-imaewzj7ubwgzuh6.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10136, 'MSI GS Core i7 8th Gen - (16 GB/512 GB SSD/Windows 10 Home/6 GB Graphics) GS65 8RE-084IN Gaming Laptop', ' NVIDIA Geforce GTX 1060 for Desktop Level Performance 512 GB SSD for Reduced Boot Up Time and in Game Loading Per-Key RGB Gaming Keyboard Helps in Customizing Each Key Pre-installed Genuine Windows 10 Operating System (Includes Built-in Security, Free Automated Updates, Latest Features) Intel Core i7 Processor (8th Gen) 16 GB DDR4 RAM 64 bit Windows 10 Operating System 512 GB SSD 39.62 cm (15.6 inch) Display 2 Years Carry In Warranty', '169990.00', '169990.00', 'https://rukminim1.flixcart.com/image/312/312/jfk00i80/computer/q/k/u/msi-na-gaming-laptop-original-imaf3zv7xszzuqej.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10137, 'Asus ROG Strix Edition Core i7 7th Gen - (16 GB/1 TB HDD/128 GB SSD/Windows 10 Home/6 GB Graphics) GL5...', ' NVIDIA Geforce GTX 1060 for Desktop Level Performance 128 GB NVMe PCIe 3.0 x4 SSD 4 Zone Customizable RGB Backlit with Anti-ghosting N-Key Rollover Keyboard Dual Fans Intelligent Hyper Cooling Design Sonic Studio Software with in Game Noise Cancellation and Voice Volume Stabilization Technology Pre-installed Genuine Windows 10 Operating System (Includes Built-in Security, Free Automated Updates, Latest Features) Intel Core i7 Processor (7th Gen) 16 GB DDR4 RAM 64 bit Windows 10 Operating System 1 TB HDD|128 GB SSD 39.62 cm (15.6 inch) Display 2 Years Onsite Warranty', '139990.00', '139990.00', 'https://rukminim1.flixcart.com/image/312/312/jbgtnrk0/computer/8/r/c/asus-na-gaming-laptop-original-imafytb8mhy6mrnv.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10138, 'MSI GV Series Core i5 7th Gen - (8 GB/1 TB HDD/DOS/4 GB Graphics) GV62 7RD-2627XIN Laptop', ' NVIDIA Geforce GTX 1050 for Desktop Level Performance 3D Sound Experience with Nahimic 2  Technology Full HD LED Backlit Widescreen Anti-glare Display for Better Visual Experience Intel Core i5 Processor (7th Gen) 8 GB DDR4 RAM DOS Operating System 1 TB HDD 39.62 cm (15.6 inch) Display 2 Years Carry In Warranty', '69990.00', '66990.00', 'https://rukminim1.flixcart.com/image/312/312/jc9egsw0/computer/4/y/j/msi-na-laptop-original-imafffjqcgzxm2hw.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10139, 'Asus FX553 Core i7 7th Gen - (8 GB/1 TB HDD/Windows 10/4 GB Graphics) FX553VE-DM318T Gaming Laptop', ' NVIDIA Geforce GTX 1050 Ti for Desktop Level Performance Red Backlit Anti Ghosting Keyboard Pre-installed Genuine Windows 10 Operating System (Includes Built-in Security, Free Automated Updates, Latest Features) Intel Core i7 Processor (7th Gen) 8 GB DDR4 RAM 64 bit Windows 10 Operating System 1 TB HDD 39.62 cm (15.6 inch) Display 2 Years Onsite Warranty', '83990.00', '75990.00', 'https://rukminim1.flixcart.com/image/312/312/ja8j0cw0/computer/h/z/c/asus-na-laptop-original-imaewzj7ubwgzuh6.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10140, 'Asus FX503 Core i7 7th Gen - (8 GB/1 TB HDD/128 GB SSD/Windows 10 Home/4 GB Graphics) FX503VD-DM112T G...', ' NVIDIA Geforce GTX 1050 for Desktop Level Performance A High Capacity Battery Ensures Stay Productive and Entertained Throughout the Day Powered by ICEpower Technology which Delivers Truly Immersive Listening and Gaming Experiences Additional Fan Overboost Function Maximizes Cooling Efficiency Pre-installed Genuine Windows 10 Operating System (Includes Built-in Security, Free Automated Updates, Latest Features) Intel Core i7 Processor (7th Gen) 8 GB DDR4 RAM 64 bit Windows 10 Operating System 1 TB HDD|128 GB SSD 39.62 cm (15.6 inch) Display 2 Years Onsite Warranty', '87990.00', '87990.00', 'https://rukminim1.flixcart.com/image/312/312/jaij3bk0/computer/k/c/8/asus-na-laptop-original-imafy2gcu36kxuhm.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10141, 'Asus FX553 Core i7 7th Gen - (8 GB/1 TB HDD/Windows 10 Home/4 GB Graphics) FX553VD-DM013T Gaming Lapto...', ' NVIDIA Geforce GTX 1050 for Desktop Level Performance Asus Cooling Overboost with Controllable Fan Speeds Array Microphones to Filter Out Ambient Noise Red Backlit Anti Ghosting Keyboard Stylish Red Backlit Anti Ghosting Keyboard with 30 Key Rollover Pre-installed Genuine Windows 10 Operating System (Includes Built-in Security, Free Automated Updates, Latest Features) Intel Core i7 Processor (7th Gen) 8 GB DDR4 RAM 64 bit Windows 10 Operating System 1 TB HDD 39.62 cm (15.6 inch) Display 2 Year Onsite Warranty', '77990.00', '70990.00', 'https://rukminim1.flixcart.com/image/312/312/ja8j0cw0/computer/h/z/c/asus-na-laptop-original-imaewzj7ubwgzuh6.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10142, 'Asus ROG Strix Edition Core i7 7th Gen - (8 GB/1 TB HDD/128 GB SSD/Windows 10 Home/4 GB Graphics) GL50...', ' NVIDIA Geforce GTX 1050 for Desktop Level Performance 128 GB SSD for Reduced Boot Up Time and in Game Loading Pre-installed Genuine Windows 10 Operating System (Includes Built-in Security, Free Automated Updates, Latest Features) Intel Core i7 Processor (7th Gen) 8 GB DDR4 RAM 64 bit Windows 10 Operating System 1 TB HDD|128 GB SSD 39.62 cm (15.6 inch) Display 2 Years Onsite Warranty', '92990.00', '92990.00', 'https://rukminim1.flixcart.com/image/312/312/jbgtnrk0/computer/8/r/c/asus-na-gaming-laptop-original-imafytb8mhy6mrnv.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10143, 'Acer Predator Helios 300 Core i5 7th Gen - (8 GB/1 TB HDD/128 GB SSD/Windows 10 Home/4 GB Graphics) G3...', ' NVIDIA Geforce GTX 1050Ti for Desktop Level Performance 128 GB SSD for Reduced Boot Up Time and in Game Loading Upgradable SSD Upto 512 GB and RAM Upto 32 GB Dual Fan Cooling with Metal AeroBlade 3D Pre-installed Genuine Windows 10 Operating System (Includes Built-in Security, Free Automated Updates, Latest Features) Intel Core i5 Processor (7th Gen) 8 GB DDR4 RAM 64 bit Windows 10 Operating System 1 TB HDD|128 GB SSD 39.62 cm (15.6 inch) Display 1 Year International Travelers Warranty (ITW)', '120000.00', '76990.00', 'https://rukminim1.flixcart.com/image/312/312/j5ws0i80/computer/g/p/d/acer-na-notebook-original-imaewhwtbtzwe7ct.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10144, 'Asus ROG Core i7 7th Gen - (8 GB/1 TB HDD/Windows 10 Home/4 GB Graphics) GL553VD-FY103T Gaming Laptop', ' NVIDIA Geforce GTX 1050 for Desktop Level Performance 2.8 GHz with Turbo Boost Upto 3.8 GHz Clock Speed Full HD LED Backlit Ultra Slim 300-nits Anti-glare Display Pre-installed Genuine Windows 10 Operating System (Includes Built-in Security, Free Automated Updates, Latest Features) Intel Core i7 Processor (7th Gen) 8 GB DDR4 RAM 64 bit Windows 10 Operating System 1 TB HDD 39.62 cm (15.6 inch) Display 2 Years Onsite Warranty', '107990.00', '107990.00', 'https://rukminim1.flixcart.com/image/312/312/computer/c/q/6/asus-notebook-original-imaesaz5wadnkhx3.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10145, 'MSI GV Series Core i7 7th Gen - (8 GB/1 TB HDD/128 GB SSD/Windows 10 Home/4 GB Graphics) GV62 7RE-2401...', ' NVIDIA Geforce GTX 1050 Ti for Desktop Level Performance 128 GB SSD for Reduced Boot Up Time and in Game Loading Cooler Boost 4 Technology Offers Effective Cooling Design Exclusive Cooler Boost 4 Technology Nahimic 2  Technology Provides Immersive Listening Experience Pre-installed Genuine Windows 10 Operating System (Includes Built-in Security, Free Automated Updates, Latest Features) Intel Core i7 Processor (7th Gen) 8 GB DDR4 RAM 64 bit Windows 10 Operating System 1 TB HDD|128 GB SSD 39.62 cm (15.6 inch) Display 2 Years Carry In Warranty', '104990.00', '99999.00', 'https://rukminim1.flixcart.com/image/312/312/ja73ki80/computer/v/v/x/msi-na-gaming-laptop-original-imaeztu7nz9e6mz9.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10146, 'F', '', '2299.00', '2099.00', 'https://rukminim1.flixcart.com/image/612/612/jl6wjgw0/speaker-refurbished/w/f/3/u-a110-f-d-original-imaf8dugbygcue2v.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10147, 'Intex IT 212 40 W Bluetooth Home Audio Speaker', '', '2999.00', '2240.00', 'https://rukminim1.flixcart.com/image/612/612/jiyvvrk0/speaker/home-audio-speaker/j/m/k/intex-it-212-sufb-original-imaf6ndkfhnhvx2t.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10148, 'F', '', '2590.00', '2331.00', 'https://rukminim1.flixcart.com/image/612/612/speaker/home-audio-speaker/e/b/b/f-d-f210x-2-1-original-imaepchpngwk4gub.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10149, 'F', '', '3990.00', '2999.00', 'https://rukminim1.flixcart.com/image/612/612/jmux18w0/speaker/home-audio-speaker/u/p/j/f-d-a180x-original-imaf9z8qkckzcgez.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10150, 'Philips Multimedia Speaker System Explode MMS4040F/94', '', '3990.00', '2999.00', 'https://rukminim1.flixcart.com/image/612/612/jmux18w0/speaker/home-audio-speaker/g/4/t/philips-in-mms4040f-94-original-imaf9zdxju8rqkkf.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10151, 'F', '', '5490.00', '4221.00', 'https://rukminim1.flixcart.com/image/612/612/speaker/home-audio-speaker/4/d/p/f-d-a550x-original-imaea2ftzywquzrz.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10152, 'F', '', '3990.00', '2799.00', 'https://rukminim1.flixcart.com/image/612/612/speaker/laptop-desktop-speaker/g/c/t/f-d-f-d-a140x-original-imaesdv9fjfdhhpn.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10153, 'Intex IT 2655 60 W Laptop/Desktop Speaker', '', '3499.00', '2195.00', 'https://rukminim1.flixcart.com/image/612/612/jiyvvrk0/speaker/laptop-desktop-speaker/a/h/p/intex-it-2655-digi-plus-original-imaf6ndjsdzmmn49.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10154, 'iball Hi-Basss Bluetooth Home Audio Speaker', '', '2999.00', '2379.00', 'https://rukminim1.flixcart.com/image/612/612/j8684280/speaker/home-audio-speaker/u/c/r/iball-hi-basss-original-imaey83np4zgjhkj.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10155, 'Zoook ZB-ROCKER THUNDER 20 Bluetooth Home Audio Speaker', '', '2499.00', '2064.00', 'https://rukminim1.flixcart.com/image/612/612/jiw10280/speaker/home-audio-speaker/v/q/j/zoook-zb-rocker-thunder-original-imaf6c5hnzfpb5zx.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10156, 'Zebronics BT4440 RUCF Bluetooth Home Audio Speaker', '', '3399.00', '3149.00', 'https://rukminim1.flixcart.com/image/612/612/jk2w7m80/home-theatre-system/z/s/w/zeb-bt4440rucf-zebronics-original-imaeafwzccgtczx8.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10157, 'Impex Lyric 5.1 70 Bluetooth Home Audio Speaker', '', '6490.00', '3569.00', 'https://rukminim1.flixcart.com/image/612/612/jqmnv680/speaker/home-audio-speaker/u/e/u/impex-lyric-5-1-original-imafcmyjkf5tdz5t.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10158, 'Philips SPA3800B/94 28 W Portable Bluetooth Home Audio ...', '', '4900.00', '4491.00', 'https://rukminim1.flixcart.com/image/612/612/speaker/home-audio-speaker/t/k/g/philips-spa3800b-original-imaec3655csqhufs.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10159, 'iBELL 5.1 45 W Bluetooth Home Audio Speaker', '', '4950.00', '3999.00', 'https://rukminim1.flixcart.com/image/612/612/jbb3wcw0/speaker/home-audio-speaker/z/z/t/ibell-5-1-original-imafyhdhfg7zugfr.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10160, 'Intex IT 301N 60 W Home Audio Speaker', '', '3499.00', '2499.00', 'https://rukminim1.flixcart.com/image/612/612/jiyvvrk0/speaker/home-audio-speaker/a/w/g/intex-it-301-n-fmu-os-original-imaf6ndjfhm43wsp.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10161, 'Philips MMS2580B/94 30 W Portable Bluetooth Home Audio ...', '', '4499.00', '3681.00', 'https://rukminim1.flixcart.com/image/612/612/jmux18w0/speaker/home-audio-speaker/c/y/m/philips-mms2580b-94-original-imaf9zdxhaxtzzwg.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10162, 'F', '', '2353.00', '2239.00', 'https://rukminim1.flixcart.com/image/612/612/speaker/mobile-tablet-speaker/4/s/v/f-d-e200-plus-original-imaefqjffyzmzjjp.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10163, 'F', '', '2990.00', '2399.00', 'https://rukminim1.flixcart.com/image/612/612/speaker/multimedia-speakers/y/c/2/f-d-a510-original-imad7s6qjy2fadgg.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10164, 'F', '', '4990.00', '3690.00', 'https://rukminim1.flixcart.com/image/612/612/jfvfjbk0/speaker/home-audio-speaker/g/d/m/f-d-f380x-original-imaf48shktfggbsf.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10165, 'SSKY BT 20 BAZOOKA WITH MIC 10 W Bluetooth Home Audio S...', '', '3499.00', '2899.00', 'https://rukminim1.flixcart.com/image/612/612/jqmnv680/speaker/home-audio-speaker/x/s/x/ssky-bt-20-bazooka-with-mic-original-imafcm2hrhtfmyqz.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10166, 'Intex IT 213 40 W Portable Bluetooth Home Audio Speaker', '', '2999.00', '2199.00', 'https://rukminim1.flixcart.com/image/612/612/jiyvvrk0/speaker/home-audio-speaker/v/n/x/intex-it-213-sufbproduct-original-imaf6ndkf79ry3zh.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10167, 'F', '', '4990.00', '4500.00', 'https://rukminim1.flixcart.com/image/612/612/j7p2tu80/speaker/home-audio-speaker/a/2/s/f-d-a521x-original-imaextwf98f4vuhf.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10168, 'LG LK72B 40 W Bluetooth Home Audio Speaker', '', '4990.00', '4200.00', 'https://rukminim1.flixcart.com/image/612/612/jqfinww0/speaker/home-audio-speaker/j/f/y/lg-lk72b-original-imafcg2bu22fkqs5.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10169, 'Zync Karaoke 32 Bluetooth Home Audio Speaker', '', '6999.00', '3949.00', 'https://rukminim1.flixcart.com/image/612/612/jph83gw0/speaker/home-audio-speaker/f/5/r/zync-karaoke-original-imafbpetyymkg9pg.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10170, 'Philips MMS2550F Dhoom 25 W Laptop/Computer Speaker wit...', '', '2990.00', '2690.00', 'https://rukminim1.flixcart.com/image/612/612/jmux18w0/speaker/laptop-desktop-speaker/z/y/y/philips-in-mms2550f-94-original-imaf9zdxcjdefz3f.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10171, 'Panasonic SC-HT19GW-K 45 W Bluetooth Home Audio Speaker', '', '4290.00', '3767.00', 'https://rukminim1.flixcart.com/image/612/612/jkh6m4w0/speaker/z/f/d/panasonic-sc-ht19gw-k-original-imaf7tn3zczgvphw.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10172, 'Philips SPA8140B/94 50 W Bluetooth Home Audio Speaker', '', '5290.00', '4330.00', 'https://rukminim1.flixcart.com/image/612/612/jabdw280/speaker/home-audio-speaker/v/y/s/philips-in-spa8140b-94-original-imaeztsbzmngmpgw.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10173, 'Impex CLASSIC Bluetooth Home Audio Speaker', '', '4990.00', '3992.00', 'https://rukminim1.flixcart.com/image/612/612/j7asfbk0/speaker/home-audio-speaker/b/n/v/impex-classic-original-imaexjn2yg8gewgz.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10174, 'Philips MMS4545B/94 42 W Bluetooth Laptop/Desktop Speak...', '', '4590.00', '3889.00', 'https://rukminim1.flixcart.com/image/612/612/speaker/laptop-desktop-speaker/h/z/y/philips-in-mms4545b-94-original-imaezzkej7gdg7de.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10175, 'Saregama Carvaan Mini 3 W Bluetooth Home Audio Speaker', '', '2290.00', '2290.00', 'https://rukminim1.flixcart.com/image/612/612/jkobte80/speaker/home-audio-speaker/x/b/e/saregama-carvaan-mini-original-imaf7zfbxgdefm9k.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10176, 'Impex 5.1 (OPERA BLUE) Portable Bluetooth Home Audio Sp...', '', '5990.00', '4312.00', 'https://rukminim1.flixcart.com/image/612/612/speaker/home-audio-speaker/6/z/h/impex-5-1-opera-blue-original-imaennqddwekezgd.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10177, 'JVC XN21F 28 W Bluetooth Home Audio Speaker', '', '5999.00', '2199.00', 'https://rukminim1.flixcart.com/image/612/612/jq8dgnk0/speaker/home-audio-speaker/b/e/8/jvc-xs-xn21f-original-imafcahykca9azaq.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10178, 'Mitashi 3500 Watts PMPO 2.1 Ch. HT 2430 FUR Home Audio ...', '', '2190.00', '2190.00', 'https://rukminim1.flixcart.com/image/612/612/jq2np8w0/speaker/home-audio-speaker/f/m/q/mitashi-ht-2430-bt-original-imaezyen6gpjn3gg.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10179, 'Envent Deejay 310 20 W Bluetooth Home Audio Speaker', '', '3999.00', '2199.00', 'https://rukminim1.flixcart.com/image/612/612/jjylw280/speaker/home-audio-speaker/9/d/m/envent-deejay-310-original-imaf7eneu5uwsn4w.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10180, 'Zebronics 4.1 Multimedia SW3490 RUCF Home Audio Speaker', '', '3599.00', '3190.00', 'https://rukminim1.flixcart.com/image/612/612/jnj7iq80/speaker-refurbished/n/4/p/u-sw3490-rucf-zebronics-original-imaf9h3nhpdh6sga.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10181, 'F', '', '2990.00', '2399.00', 'https://rukminim1.flixcart.com/image/612/612/jl6wjgw0/speaker-refurbished/f/q/e/u-a111f-f-d-original-imaf8dugshmyvfc4.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10222, 'Samsung EVO Plus 32 GB MicroSDHC Class 10 95 MB/s Memo...', '', '1149.00', '500.00', 'https://rukminim1.flixcart.com/image/612/612/j1nvwcw0/memory-card/microsdhc/g/z/e/samsung-mb-mc32ga-in-original-imaet6za3yhhdq4z.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10223, 'SanDisk Ultra 32 GB MicroSDHC Class 10 98 MB/s Memory ...', '', '1000.00', '465.00', 'https://rukminim1.flixcart.com/image/612/612/j63x7rk0/memory-card/microsdhc/4/z/g/sandisk-sdsquar-032g-gn6ma-original-imaewngzfeudzgvm.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10224, 'SanDisk Ultra 16 GB MicroSDHC Class 10 98 MB/s Memory ...', '', '600.00', '299.00', 'https://rukminim1.flixcart.com/image/612/612/j63x7rk0/memory-card/microsdhc/z/h/z/sandisk-sdsquar-016g-gn6ma-original-imaewngzmcpgkm6h.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10225, 'SanDisk C10 32 GB Ultra SDHC Class 10 98 MB/s Memory C...', '', '999.00', '447.00', 'https://rukminim1.flixcart.com/image/612/612/jlcmavk0/memory-card/ultra-sdhc/g/n/z/sandisk-c10-original-imaf8gwthnw4rfgz.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10226, 'SanDisk Ultra 32 GB MicroSDHC Class 10 98 MB/s Memory ...', '', '1000.00', '500.00', 'https://rukminim1.flixcart.com/image/612/612/jhql8cw0/memory-card/microsdhc/e/t/r/sandisk-sdsquar-032g-go61a-original-imaf5zt36grgm38r.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10227, 'SanDisk Ultra 16 GB MicroSDHC Class 10 98 MB/s Memory ...', '', '600.00', '299.00', 'https://rukminim1.flixcart.com/image/612/612/jhql8cw0/memory-card/microsdhc/7/q/z/sandisk-sdsquar-016g-go61a-original-imaf4ph7hgpyjcfs.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10228, 'SanDisk SDSDQM-032G-B35 32 GB MicroSD Card Class 4 48 M...', '', '599.00', '395.00', 'https://rukminim1.flixcart.com/image/612/612/j4eha4w0/memory-card/microsd-card/a/h/v/sandisk-micro-sdhc-original-imaezryuxkfszvku.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10229, 'Samsung EVO Plus 64 GB MicroSDXC Class 10 100 MB/s Mem...', '', '1999.00', '1160.00', 'https://rukminim1.flixcart.com/image/612/612/j1nvwcw0/memory-card/microsdxc/d/n/x/samsung-mb-mc64ga-in-original-imaet6zagkfzn2nw.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10230, 'SanDisk Ultra A1 16 GB MicroSD Card Class 10 98 MB/s M...', '', '550.00', '325.00', 'https://rukminim1.flixcart.com/image/612/612/j65cnm80/memory-card/microsd-card/t/f/k/sandisk-gn6mn-original-imaewz8yhyupdtxw.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10231, 'Samsung EVO 32 GB MicroSD Card Class 10 95 MB/s Memory...', '', '1643.00', '530.00', 'https://rukminim1.flixcart.com/image/612/612/j6nxdow0/memory-card/microsd-card/j/w/u/samsung-mb-mp32ga-original-imaexfpjmv8xrumz.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10232, 'Samsung Evo Plus 64 GB MicroSDHC Class 10 100 Memory C...', '', '2300.00', '1249.00', 'https://rukminim1.flixcart.com/image/612/612/jmwch3k0/memory-card/microsdhc/h/n/8/samsung-sevmc-64g-original-imaexhzahfggaszg.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10233, 'SanDisk Ultra 32 GB MicroSD Card Class 10 98 MB/s Memo...', '', '899.00', '461.00', 'https://rukminim1.flixcart.com/image/612/612/je4k5u80/memory-card/microsd-card/p/u/w/sandisk-sdsquar-032g-gn6m-original-imaemytydqq8ndsj.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10234, 'SanDisk Ultra 32 GB MicroSDHC Class 10 80 MB/s Memory ...', '', '1344.00', '465.00', 'https://rukminim1.flixcart.com/image/612/612/j44h7680/memory-card/microsdhc/b/k/h/sandisk-sdsqunc-032g-gn32ma-original-imaev43gf9sujfjd.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10235, 'SanDisk micro 16 GB MicroSD Card Class 4 4 MB/s Memory...', '', '584.00', '273.00', 'https://rukminim1.flixcart.com/image/612/612/jcktzm80/memory-card/microsd-card/d/x/z/sandisk-sdsdqm-016g-b35n-original-imaezry9eewzn7nb.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10236, 'SanDisk simple 8 GB MicroSD Card Class 4 40 MB/s Memor...', '', '699.00', '280.00', 'https://rukminim1.flixcart.com/image/612/612/j3g6pow0/memory-card/microsd-card/3/f/r/sandisk-8gb35-original-imaegzf5shjw3syg.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10237, 'SanDisk Ultra 16 GB MicroSDHC Class 10 98 MB/s Memory ...', '', '599.00', '327.00', 'https://rukminim1.flixcart.com/image/612/612/jfvfjbk0/memory-card/microsdhc/g/g/h/sandisk-16-gb-microsdhc-class-10-98-mbs-memory-card-original-imaffzghcdyd4sa5.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10238, 'HP Micro SDHC 16 GB MicroSDHC Class 10 80 MB/s Memory ...', '', '549.00', '349.00', 'https://rukminim1.flixcart.com/image/612/612/jpinjbk0/memory-card/microsdhc/6/u/4/hp-hfud016-1u1-c-original-imafbqgueehtuyge.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10239, 'SanDisk Micro 16 GB MicroSD Card Class 4 16 MB/s Memor...', '', '584.00', '273.00', 'https://rukminim1.flixcart.com/image/612/612/jcktzm80/memory-card/microsd-card/d/x/z/sandisk-sdsdqm-016g-b35n-original-imaezry9eewzn7nb.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10240, 'Samsung Evo 32GB 95 MB/s 32 GB MicroSDHC Class 10 95 MB...', '', '1145.00', '549.00', 'https://rukminim1.flixcart.com/image/612/612/j7ksia80/memory-card/microsdhc/y/v/p/samsung-microsdhc-uhs-i-evo-with-sd-adapter-original-imaexrhh9hfzd5qa.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10241, 'SanDisk Basic 16 GB MicroSDHC Class 4 20 MB/s Memory C...', '', '648.00', '275.00', 'https://rukminim1.flixcart.com/image/612/612/memory-card/microsdhc/n/g/a/sandisk-sdsdqm-016g-b35-16gb-original-imaefghg7vfxrghb.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10242, 'SanDisk C4 16 GB SD Card Class 4 30 MB/s Memory Card', '', '500.00', '290.00', 'https://rukminim1.flixcart.com/image/612/612/jlb6v0w0/memory-card/sd-card/f/r/r/sandisk-c4-original-imaf8gyszgyh5sbz.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10243, 'SanDisk Ultra 16 GB MicroSDHC Class 4 48 MB/s Memory C...', '', '1770.00', '853.00', 'https://rukminim1.flixcart.com/image/612/612/memory-card/microsdhc/s/e/s/sandisk-ab136-original-imaebmp2gnthqvxn.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10244, 'HP MicroSDHC 32 GB MicroSDHC Class 10 80 MB/s Memory C...', '', '1600.00', '555.00', 'https://rukminim1.flixcart.com/image/612/612/jhjg13k0/memory-card/microsdhc/v/e/t/hp-4712847096240-original-imaf5jh2nnvru6yc.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10245, 'SanDisk ultra 32 GB MicroSDHC Class 10 80 MB/s Memory ...', '', '1150.00', '464.00', 'https://rukminim1.flixcart.com/image/612/612/j6s7p8w0/memory-card/microsdhc/c/f/9/sandisk-micro-sdhc-32gb-memory-card-with-adaptor-original-imaex4zswzzacwfz.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10246, 'Strontium Nitro A1 32 GB SDHC UHS Class 1 100 Mbps Mem...', '', '1199.00', '470.00', 'https://rukminim1.flixcart.com/image/612/612/jk01bww0/memory-card/sdhc/s/p/v/strontium-srn32gtfu1a1a-original-imaf7gynrgupzvbz.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10247, 'Sony SR-32UY3A 32 GB MicroSD Card Class 10 90 MB/s Mem...', '', '699.00', '499.00', 'https://rukminim1.flixcart.com/image/612/612/jkim1zk0/memory-card/microsd-card/p/a/k/sony-sr-32uy3a-original-imaf7un2cjbzyyhx.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10248, 'HP U1 64 GB MicroSDXC Class 10 80 Mbps Memory Card', '', '1598.00', '1234.00', 'https://rukminim1.flixcart.com/image/612/612/jpinjbk0/memory-card/microsdxc/r/c/v/hp-mx310-original-imafbqgurcpgrf89.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10249, 'SanDisk 4 16 GB SD Card Class 4 20 MB/s Memory Card', '', '499.00', '287.00', 'https://rukminim1.flixcart.com/image/612/612/jcktzm80/memory-card/microsd-card/d/x/z/sandisk-sdsdqm-016g-b35n-original-imaezry9eewzn7nb.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10250, 'SanDisk A1 16 GB Ultra SDHC Class 10 98 MB/s Memory Ca...', '', '545.00', '325.00', 'https://rukminim1.flixcart.com/image/612/612/jgy0fbk0/memory-card/microsd-card/c/b/t/sandisk-class10-a1ultra-original-imaf5yhfpfxebyek.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10251, 'SanDisk A1 Youtube 32 GB MicroSD Card Class 10 98 MB/s ...', '', '1150.00', '479.00', 'https://rukminim1.flixcart.com/image/612/612/jdt4n0w0/memory-card/microsd-card/k/h/5/sandisk-sdsquar-032g-gn6mn-original-imaf2m52k7af2fpd.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10252, 'Samsung MB-MC128GA/IN 128 GB Ultra SDHC UHS Class 3 100...', '', '4599.00', '2179.00', 'https://rukminim1.flixcart.com/image/612/612/jqwny4w0/memory-card/ultra-sdhc/p/u/a/samsung-mb-mc128g-original-imafcshhfpmn7xaj.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10253, 'Samsung Evo  32 GB SD Card Class 10 95 MB/s Memory Car...', '', '1391.00', '570.00', 'https://rukminim1.flixcart.com/image/612/612/j4yhg280/memory-card/sd-card/8/p/y/samsung-evo-plus-with-sd-adaptor-original-imaevrfhyspe9pdf.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10254, 'Samsung EVO 32 GB MicroSD Card UHS Class 1 95 Memory C...', '', '1299.00', '580.00', 'https://rukminim1.flixcart.com/image/612/612/jp2xoy80/memory-card/microsd-card/8/j/y/samsung-mb-mp32g-original-imafbdbmhnstnhfq.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10255, 'SanDisk A1 32 GB Ultra SDHC Class 10 98 MB/s Memory Ca...', '', '1050.00', '533.00', 'https://rukminim1.flixcart.com/image/612/612/jgwkzgw0/memory-card/ultra-sdhc/g/w/s/sandisk-a1-original-imaf5yhumwkszbgc.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10256, 'Sandisk 16 GB MicroSD Class 4 Memory Card', '', '700.00', '289.00', 'https://rukminim1.flixcart.com/image/612/612/memory-card/microsd-card/2/d/y/sandisk-sdsdqm-0016g-b35-original-imae6sdq6rh4pcgx.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10257, 'Samsung evo 32 GB MicroSDHC Class 10 95 MB/s Memory Ca...', '', '1145.00', '649.00', 'https://rukminim1.flixcart.com/image/612/612/j8j32q80/memory-card/n/b/r/samsung-mb-mp32ga-in-original-imaeyb6hzkdefnjq.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10258, 'SanDisk C10 16 GB SD Card Class 10 98 MB/s Memory Card', '', '499.00', '325.00', 'https://rukminim1.flixcart.com/image/612/612/jlb6v0w0/memory-card/sd-card/s/h/k/sandisk-c10-original-imaf78gfyzahqysh.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10259, 'SanDisk 16 GB SDHC Class 4 90 MB/s Memory Card', '', '661.00', '349.00', 'https://rukminim1.flixcart.com/image/612/612/memory-card/microsd-card/h/e/g/sandisk-sanc4-original-imae8wtvbp9uzzy6.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10260, 'SanDisk Memory Card 16 GB MicroSD Card Class 10 24 MB/s...', '', '699.00', '305.00', 'https://rukminim1.flixcart.com/image/612/612/jp02t8w0/memory-card/microsd-card/k/v/8/sandisk-disk16-original-imafbc9gzfnyjwhv.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10261, 'SanDisk SanDisk Ultra A1 16GB Class 10 Speed Up To 98MB...', '', '699.00', '358.00', 'https://rukminim1.flixcart.com/image/612/612/jgy0fbk0/memory-card/microsd-card/c/b/t/sandisk-class10-a1ultra-original-imaf5yhfpfxebyek.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10262, 'Samsung Galaxy S9 Plus (Burgundy Red, 64 GB)', ' 6 GB RAM | 64 GB ROM | Expandable Upto 400 GB 15.75 cm (6.2 inch) Quad HD  Display 12MP   12MP | 8MP Front Camera 3500 mAh Battery Exynos 9810 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '52999.00', '52999.00', 'https://rukminim1.flixcart.com/image/312/312/jpcxrww0/mobile/d/4/t/samsung-galaxy-s9-plus-na-original-imafbm27gh2tuzza.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10263, 'Samsung Galaxy Note 9 (Alpine White, 128 GB)', ' 6 GB RAM | 128 GB ROM | Expandable Upto 512 GB 16.26 cm (6.4 inch) Quad HD  Display 12MP   12MP | 8MP Front Camera 4000 mAh Lithium-ion Battery Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '73600.00', '67900.00', 'https://rukminim1.flixcart.com/image/312/312/jp02t8w0/mobile/s/x/s/samsung-galaxy-note-9-sm-n960fzwdins-original-imafbcczggh72gng.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10264, 'Samsung Galaxy S9 Plus (Polaris Blue, 64 GB)', ' 6 GB RAM | 64 GB ROM | Expandable Upto 400 GB 15.75 cm (6.2 inch) Quad HD  Display 12MP   12MP | 8MP Front Camera 3500 mAh Battery Exynos 9810 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '64900.00', '57900.00', 'https://rukminim1.flixcart.com/image/312/312/jp02t8w0/mobile/h/9/m/samsung-galaxy-s9-plus-sm-g965fgbdins-original-imafbcczfa7cqwf3.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10265, 'Samsung Galaxy A9 (Caviar Black, 128 GB)', ' 6 GB RAM | 128 GB ROM | Expandable Upto 512 GB 16.0 cm (6.3 inch) FHD  Display 24MP   5MP   10MP  8MP | 24MP Front Camera 3800 mAh Lithium-ion Battery Qualcomm Snapdragon 660 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '36000.00', '30990.00', 'https://rukminim1.flixcart.com/image/312/312/jo37onk0/mobile/8/f/y/samsung-galaxy-a9-sm-a920fzkdins-original-imafamrnss33sd5u.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10266, 'Samsung Galaxy A9 (Caviar Black, 128 GB)', ' 8 GB RAM | 128 GB ROM | Expandable Upto 512 GB 16.0 cm (6.3 inch) FHD  Display 24MP   5MP   10MP  8MP | 24MP Front Camera 3800 mAh Lithium-ion Battery Qualcomm Snapdragon 660 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '39000.00', '33990.00', 'https://rukminim1.flixcart.com/image/312/312/jo37onk0/mobile/8/f/y/samsung-galaxy-a9-sm-a920fzkdins-original-imafamrnss33sd5u.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10267, 'Samsung Galaxy A9 (Lemonade Blue, 128 GB)', ' 6 GB RAM | 128 GB ROM | Expandable Upto 512 GB 16.0 cm (6.3 inch) FHD  Display 24MP   5MP   10MP  8MP | 24MP Front Camera 3800 mAh Lithium-ion Battery Qualcomm Snapdragon 660 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '36000.00', '30990.00', 'https://rukminim1.flixcart.com/image/312/312/jo37onk0/mobile/z/e/m/samsung-galaxy-a9-sm-a920fzbdins-original-imafamrn3kydhqwe.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10268, 'Samsung Galaxy A9 (Lemonade Blue, 128 GB)', ' 8 GB RAM | 128 GB ROM | Expandable Upto 512 GB 16.0 cm (6.3 inch) FHD  Display 24MP   5MP   10MP  8MP | 24MP Front Camera 3800 mAh Lithium-ion Battery Qualcomm Snapdragon 660 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '39000.00', '33990.00', 'https://rukminim1.flixcart.com/image/312/312/jo37onk0/mobile/z/e/m/samsung-galaxy-a9-sm-a920fzbdins-original-imafamrn3kydhqwe.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10269, 'Samsung Galaxy A9 (Bubblegum Pink, 128 GB)', ' 6 GB RAM | 128 GB ROM | Expandable Upto 512 GB 16.0 cm (6.3 inch) FHD  Display 24MP   5MP   10MP  8MP | 24MP Front Camera 3800 mAh Lithium-ion Battery Qualcomm Snapdragon 660 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '36000.00', '30990.00', 'https://rukminim1.flixcart.com/image/312/312/jo37onk0/mobile/f/f/t/samsung-galaxy-a9-sm-a920fzidins-original-imafamrz5nfqueu6.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10270, 'Samsung Galaxy A7 (Black, 128 GB)', ' 6 GB RAM | 128 GB ROM | Expandable Upto 512 GB 15.24 cm (6.0 inch) FHD  Display 24MP   5MP   8MP | 24MP Front Camera 3300 mAh Lithium-ion Battery Samsung Exynos Octa Core Processor (2.2 GHz) Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '22900.00', '22900.00', 'https://rukminim1.flixcart.com/image/312/312/jmgmmq80/mobile/r/z/z/samsung-galaxy-a7-sm-a750fzkhins-original-imaf9d35udmkv2rg.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10271, 'Samsung Galaxy A7 (Blue, 128 GB)', ' 6 GB RAM | 128 GB ROM | Expandable Upto 512 GB 15.24 cm (6.0 inch) FHD  Display 24MP   5MP   8MP | 24MP Front Camera 3300 mAh Lithium-ion Battery Samsung Exynos Octa Core Processor (2.2 GHz) Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '24600.00', '22990.00', 'https://rukminim1.flixcart.com/image/312/312/jmgmmq80/mobile/x/f/z/samsung-galaxy-a7-sm-a750fzbhins-original-imaf9d35cv5anzqw.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10272, 'Samsung Galaxy A7 (Blue, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 512 GB 15.24 cm (6.0 inch) FHD  Display 24MP   5MP   8MP | 24MP Front Camera 3300 mAh Lithium-ion Battery Samsung Exynos Octa Core Processor (2.2 GHz) Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '22300.00', '18990.00', 'https://rukminim1.flixcart.com/image/312/312/jmgmmq80/mobile/x/f/z/samsung-galaxy-a7-sm-a750fzbhins-original-imaf9d35cv5anzqw.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10273, 'Samsung Galaxy A7 (Gold, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 512 GB 15.24 cm (6.0 inch) FHD  Display 24MP   5MP   8MP | 24MP Front Camera 3300 mAh Lithium-ion Battery Samsung Exynos Octa Core Processor (2.2 GHz) Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '22300.00', '18990.00', 'https://rukminim1.flixcart.com/image/312/312/jmgmmq80/mobile/6/p/7/samsung-galaxy-a7-sm-a750fzddins-original-imaf9d35yrmzjvn5.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10274, 'Samsung Galaxy A7 (Black, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 512 GB 15.24 cm (6.0 inch) FHD  Display 24MP   5MP   8MP | 24MP Front Camera 3300 mAh Lithium-ion Battery Samsung Exynos Octa Core Processor (2.2 GHz) Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '22300.00', '18990.00', 'https://rukminim1.flixcart.com/image/312/312/jmgmmq80/mobile/r/z/z/samsung-galaxy-a7-sm-a750fzkhins-original-imaf9d35udmkv2rg.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10275, 'Samsung Galaxy J6 Plus (Black, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 512 GB 15.24 cm (6 inch) HD  Display 13MP   5MP | 8MP Front Camera 3300 mAh Battery Qualcomm Snapdragon SD425 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '13800.00', '12990.00', 'https://rukminim1.flixcart.com/image/312/312/jmgmmq80/mobile/d/f/c/samsung-galaxy-j6-plus-sm-j610fzkgins-original-imaf9d4tdtdgwdgv.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10276, 'Samsung Galaxy J4 Plus (Blue, 32 GB)', ' 2 GB RAM | 32 GB ROM | Expandable Upto 512 GB 15.24 cm (6 inch) HD  Display 13MP Rear Camera | 5MP Front Camera 3300 mAh Lithium-ion Battery Qualcomm Snapdragon SD425 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '9490.00', '9490.00', 'https://rukminim1.flixcart.com/image/312/312/jmgmmq80/mobile/u/n/q/samsung-galaxy-j4-plus-sm-j415fzbfins-original-imaf9d4kh6hr7dvc.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10277, 'Samsung Galaxy J6 Plus (Red, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 512 GB 15.24 cm (6 inch) HD  Display 13MP   5MP | 8MP Front Camera 3300 mAh Battery Qualcomm Snapdragon SD425 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '13800.00', '12990.00', 'https://rukminim1.flixcart.com/image/312/312/jmgmmq80/mobile/h/m/g/samsung-galaxy-j6-plus-sm-j610fzrgins-original-imaf9d4trmwy57fa.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10278, 'Samsung Galaxy J6 Plus (Blue, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 512 GB 15.24 cm (6 inch) HD  Display 13MP   5MP | 8MP Front Camera 3300 mAh Battery Qualcomm Snapdragon SD425 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '12990.00', '12990.00', 'https://rukminim1.flixcart.com/image/312/312/jmgmmq80/mobile/w/b/x/samsung-galaxy-j6-plus-sm-j610fzbgins-original-imaf9d4tdgbftkhw.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10279, 'Samsung Galaxy J4 Plus (Black, 32 GB)', ' 2 GB RAM | 32 GB ROM | Expandable Upto 512 GB 15.24 cm (6 inch) HD  Display 13MP Rear Camera | 5MP Front Camera 3300 mAh Lithium-ion Battery Qualcomm Snapdragon SD425 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '9000.00', '8490.00', 'https://rukminim1.flixcart.com/image/312/312/jmgmmq80/mobile/b/r/h/samsung-galaxy-j4-plus-sm-j415fzkfins-original-imaf9d4khsftw4pz.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10280, 'Samsung Galaxy J4 Plus (Gold, 32 GB)', ' 2 GB RAM | 32 GB ROM | Expandable Upto 512 GB 15.24 cm (6 inch) HD  Display 13MP Rear Camera | 5MP Front Camera 3300 mAh Lithium-ion Battery Qualcomm Snapdragon SD425 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8590.00', '8590.00', 'https://rukminim1.flixcart.com/image/312/312/jmgmmq80/mobile/2/h/u/samsung-galaxy-j4-plus-sm-j415fzdfins-original-imaf9d4kzughzhsf.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10281, 'Samsung Galaxy A8 Star (White, 64 GB)', ' 6 GB RAM | 64 GB ROM | 16.0 cm (6.3 inch) Display 24MP Rear Camera 3700 mAh Battery 1 year manufacturer warranty for device and 6 months manufacturer warranty for in-box accessories including batteries from the date of purchase', '28990.00', '28990.00', 'https://rukminim1.flixcart.com/image/312/312/jlwmgsw0/mobile/6/y/g/samsung-galaxy-a8-star-sm-g885fzwgins-original-imaf8wnygeftszzc.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10282, 'Samsung Galaxy A8 Star (Black, 64 GB)', ' 6 GB RAM | 64 GB ROM | 16.0 cm (6.3 inch) Display 24MP Rear Camera 3700 mAh Battery 1 year manufacturer warranty for device and 6 months manufacturer warranty for in-box accessories including batteries from the date of purchase', '26490.00', '26490.00', 'https://rukminim1.flixcart.com/image/312/312/jlv70y80/mobile/v/2/v/samsung-galaxy-a8-star-sm-g885fzwgins-original-imaf8wmjs8jfctvy.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10283, 'Samsung Galaxy J2 Core (Blue, 8 GB)', ' 1 GB RAM | 8 GB ROM | Expandable Upto 256 GB 12.7 cm (5 inch) quarter HD Display 8MP Rear Camera | 5MP Front Camera 2600 mAh Battery Exynos 7570 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '6400.00', '5990.00', 'https://rukminim1.flixcart.com/image/312/312/jl8bzbk0/mobile/j/r/7/samsung-j2-core-sm-j260gzbdins-original-imaf8f2fayryzwcz.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10284, 'Samsung Galaxy J2 Core (Gold, 8 GB)', ' 1 GB RAM | 8 GB ROM | Expandable Upto 256 GB 12.7 cm (5 inch) quarter HD Display 8MP Rear Camera | 5MP Front Camera 2600 mAh Battery Exynos 7570 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '6400.00', '5990.00', 'https://rukminim1.flixcart.com/image/312/312/jl8bzbk0/mobile/y/7/k/samsung-j2-core-sm-j260gzddins-original-imaf8f2fkvun3akp.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10285, 'Samsung Galaxy J2 Core (Black, 8 GB)', ' 1 GB RAM | 8 GB ROM | Expandable Upto 256 GB 12.7 cm (5 inch) quarter HD Display 8MP Rear Camera | 5MP Front Camera 2600 mAh Battery Exynos 7570 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '6400.00', '5990.00', 'https://rukminim1.flixcart.com/image/312/312/jl8bzbk0/mobile/v/v/7/samsung-j2-core-sm-j260gzkdins-original-imaf8f2fuuzyjcdp.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10286, 'Samsung Galaxy A8 Plus (Gold, 64 GB)', ' 6 GB RAM | 64 GB ROM | 15.24 cm (6 inch) Display 16MP Rear Camera 3500 mAh Battery 1 Year Warranty', '29990.00', '29990.00', 'https://rukminim1.flixcart.com/image/312/312/jl6wjgw0/mobile/q/v/p/samsung-galaxy-a8-plus-a730f-original-imaf8djhnaqxvwxk.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10287, 'Samsung On7 Pro (Black, 16 GB)', ' 2 GB RAM | 16 GB ROM | 13.97 cm (5.5 inch) Display 13MP Rear Camera | 5MP Front Camera 3000 mAh Battery Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8899.00', '8899.00', 'https://rukminim1.flixcart.com/image/312/312/jrjizrk0/mobile/e/e/4/samsung-on7-pro-na-original-imafdf5e9ty799nb.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10288, 'Samsung Galaxy Note 9 (Metallic Copper, 512 GB)', ' 8 GB RAM | 512 GB ROM | Expandable Upto 512 GB 16.26 cm (6.4 inch) Quad HD  Display 12MP   12MP | 8MP Front Camera 4000 mAh Lithium-ion Battery Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '93000.00', '77900.00', 'https://rukminim1.flixcart.com/image/312/312/jnc2bgw0/mobile/g/g/z/samsung-galaxy-note-9-sm-n960fznhins-original-imafafzxzg85c6qb.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10289, 'Samsung Galaxy Note 9 (Midnight Black, 512 GB)', ' 8 GB RAM | 512 GB ROM | Expandable Upto 512 GB 16.26 cm (6.4 inch) Quad HD  Display 12MP   12MP | 8MP Front Camera 4000 mAh Lithium-ion Battery Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '93000.00', '77900.00', 'https://rukminim1.flixcart.com/image/312/312/jklgxow0/mobile/u/z/v/samsung-galaxy-note-9-sm-n960fzkdins-original-imaf7xa3yrdddcyj.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10290, 'Samsung Galaxy Note 9 (Ocean Blue, 128 GB)', ' 6 GB RAM | 128 GB ROM | Expandable Upto 512 GB 16.26 cm (6.4 inch) Quad HD  Display 12MP   12MP | 8MP Front Camera 4000 mAh Lithium-ion Battery Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '73600.00', '67900.00', 'https://rukminim1.flixcart.com/image/312/312/jklgxow0/mobile/p/v/3/samsung-galaxy-note-9-sm-n960fzbdins-original-imaf7xa3tjsacs9r.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10291, 'Samsung Galaxy Note 9 (Metallic Copper, 128 GB)', ' 6 GB RAM | 128 GB ROM | Expandable Upto 512 GB 16.26 cm (6.4 inch) Quad HD  Display 12MP   12MP | 8MP Front Camera 4000 mAh Lithium-ion Battery Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '73600.00', '67900.00', 'https://rukminim1.flixcart.com/image/312/312/jklgxow0/mobile/2/m/y/samsung-galaxy-note-9-na-original-imaf7xa3adxmq5mk.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10292, 'Samsung Galaxy Note 9 (Ocean Blue, 512 GB)', ' 8 GB RAM | 512 GB ROM | Expandable Upto 512 GB 16.26 cm (6.4 inch) Quad HD  Display 12MP   12MP | 8MP Front Camera 4000 mAh Lithium-ion Battery Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '93000.00', '77900.00', 'https://rukminim1.flixcart.com/image/312/312/jklgxow0/mobile/p/v/3/samsung-galaxy-note-9-sm-n960fzbdins-original-imaf7xa3tjsacs9r.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10293, 'Samsung Galaxy Note 9 (Lavender Purple, 128 GB)', ' 6 GB RAM | 128 GB ROM | Expandable Upto 512 GB 16.26 cm (6.4 inch) Quad HD  Display 12MP   12MP | 8MP Front Camera 4000 mAh Lithium-ion Battery Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '73600.00', '67900.00', 'https://rukminim1.flixcart.com/image/312/312/jmux18w0/mobile/3/6/5/samsung-galaxy-note-9-na-original-imaf9zapah8hdfpg.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10294, 'Samsung Galaxy Note 9 (Midnight Black, 128 GB)', ' 6 GB RAM | 128 GB ROM | Expandable Upto 512 GB 16.26 cm (6.4 inch) Quad HD  Display 12MP   12MP | 8MP Front Camera 4000 mAh Lithium-ion Battery Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '73600.00', '67900.00', 'https://rukminim1.flixcart.com/image/312/312/jklgxow0/mobile/u/z/v/samsung-galaxy-note-9-sm-n960fzkdins-original-imaf7xa3yrdddcyj.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10295, 'Samsung Galaxy On8 (Black, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 256 GB 15.24 cm (6 inch) HD  Display 16MP   5MP | 16MP Front Camera 3500 mAh Lithium-ion Battery Qualcomm Snapdragon 450 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '19990.00', '16990.00', 'https://rukminim1.flixcart.com/image/312/312/jk1grrk0/mobile/q/c/e/samsung-galaxy-on8-sm-j810gzkfins-original-imaf7h6xgeug6f9h.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10296, 'Samsung Galaxy On8 (Blue, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 256 GB 15.24 cm (6 inch) HD  Display 16MP   5MP | 16MP Front Camera 3500 mAh Lithium-ion Battery Qualcomm Snapdragon 450 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '19990.00', '16990.00', 'https://rukminim1.flixcart.com/image/312/312/jk1grrk0/mobile/8/e/z/samsung-galaxy-on8-sm-j810gzbfins-original-imaf7h6x4vzkrhh4.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10297, 'Samsung Galaxy A6  (Black, 64 GB)', ' 4 GB RAM | 64 GB ROM | 15.24 cm (6 inch) FHD  Display 16MP   5MP | 24MP Front Camera 3500 mAh Battery Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '25600.00', '18990.00', 'https://rukminim1.flixcart.com/image/312/312/jkbguq80/mobile/h/y/z/samsung-galaxy-a6-sm-a605gzkhins-original-imaf7zb3jxa5fgcr.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10298, 'Samsung Galaxy A6  (Blue, 64 GB)', ' 4 GB RAM | 64 GB ROM | 15.24 cm (6 inch) FHD  Display 16MP   5MP | 24MP Front Camera 3500 mAh Battery Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '25600.00', '18990.00', 'https://rukminim1.flixcart.com/image/312/312/jkbguq80/mobile/2/t/y/samsung-galaxy-a6-sm-a605gzbhins-original-imaf5pz3pzrakm7h.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10299, 'Samsung Galaxy A6  (Gold, 64 GB)', ' 4 GB RAM | 64 GB ROM | 15.24 cm (6 inch) FHD  Display 16MP   5MP | 24MP Front Camera 3500 mAh Battery Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '25600.00', '18990.00', 'https://rukminim1.flixcart.com/image/312/312/jkbguq80/mobile/c/s/h/samsung-galaxy-a6-sm-a605gzdhins-original-imaf7p3fewusrpzh.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10300, 'Samsung Galaxy A6 (Black, 64 GB)', ' 4 GB RAM | 64 GB ROM | 14.22 cm (5.6 inch) Display 16MP Rear Camera | 16MP Front Camera 3000 mAh Battery Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '16990.00', '16990.00', 'https://rukminim1.flixcart.com/image/312/312/jkbguq80/mobile/y/p/h/samsung-galaxy-a6-sm-a600gzkhins-original-imaf7p3f4kp4m2zh.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10301, 'Samsung Galaxy A6 (Gold, 64 GB)', ' 4 GB RAM | 64 GB ROM | 14.22 cm (5.6 inch) Display 16MP Rear Camera | 16MP Front Camera 3000 mAh Battery Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '25500.00', '16990.00', 'https://rukminim1.flixcart.com/image/312/312/jkbguq80/mobile/m/5/5/samsung-galaxy-a6-sm-a600gzdgins-original-imaf7p3fbuzfxrw3.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10302, 'Samsung Galaxy A6 (Blue, 64 GB)', ' 4 GB RAM | 64 GB ROM | 14.22 cm (5.6 inch) Display 16MP Rear Camera | 16MP Front Camera 3000 mAh Battery Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '16990.00', '16990.00', 'https://rukminim1.flixcart.com/image/312/312/jkbguq80/mobile/j/m/w/samsung-galaxy-a6-sm-a600gzbgins-original-imaf7p3fcdnef7bu.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10303, 'Samsung A6 (Gold, 32 GB)', ' 4 GB RAM | 32 GB ROM | 14.22 cm (5.6 inch) Display 16MP Rear Camera 3000 mAh Battery 1', '15190.00', '15190.00', 'https://rukminim1.flixcart.com/image/312/312/jiulk7k0/mobile/f/m/z/samsung-a6-sm-a600gzdhins-original-imaf6juemetkdeua.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10304, 'Samsung Galaxy J8 (Blue, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 256 GB 15.24 cm (6 inch) HD  Display 16MP   5MP | 16MP Front Camera 3500 mAh Battery Qualcomm Snapdragon SDM450 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '17000.00', '15990.00', 'https://rukminim1.flixcart.com/image/312/312/jjelq4w0/mobile/4/x/5/samsung-galaxy-j8-sm-j810gzbgins-original-imaf6zg5zkgnwguk.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10305, 'Samsung Galaxy J8 (Black, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 256 GB 15.24 cm (6 inch) HD  Display 16MP   5MP | 16MP Front Camera 3500 mAh Battery Qualcomm Snapdragon SDM450 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '17000.00', '15990.00', 'https://rukminim1.flixcart.com/image/312/312/jjelq4w0/mobile/z/g/g/samsung-galaxy-j8-sm-j810g-original-imaf6zg5bwpvhezx.jpeg?q=70', 10, 0, '2019-02-08 00:00:00');
INSERT INTO `sku_master` (`sku_id`, `sku_name`, `description`, `list_price`, `sale_price`, `image_url`, `max_order_quantity`, `on_sale`, `creation_date`) VALUES
(10306, 'Samsung Galaxy J8 (Gold, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 256 GB 15.24 cm (6 inch) HD  Display 16MP   5MP | 16MP Front Camera 3500 mAh Battery Qualcomm Snapdragon SDM450 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '15990.00', '15990.00', 'https://rukminim1.flixcart.com/image/312/312/jjelq4w0/mobile/v/s/j/samsung-galaxy-j8-sm-j810gzdgins-original-imaf6zg5dxmpgmqg.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10307, 'Samsung Galaxy On6 (Black, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 256 GB 14.22 cm (5.6 inch) HD  Display 13MP Rear Camera | 8MP Front Camera 3000 mAh Battery 1.6 GHz Exynos Octa Core Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '15490.00', '12990.00', 'https://rukminim1.flixcart.com/image/312/312/jit64cw0-1/mobile/4/8/h/samsung-galaxy-on6-sm-j600gf-original-imaf6j6zhqa3yfvz.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10308, 'Samsung Galaxy On6 (Blue, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 256 GB 14.22 cm (5.6 inch) HD  Display 13MP Rear Camera | 8MP Front Camera 3000 mAh Battery 1.6 GHz Exynos Octa Core Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '15490.00', '12990.00', 'https://rukminim1.flixcart.com/image/312/312/jit64cw0-1/mobile/k/y/9/samsung-galaxy-on6-sm-j600gf-original-imaf6j6py3cnep8f.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10309, 'Samsung Galaxy J4 (Blue, 32 GB)', ' 3 GB RAM | 32 GB ROM | Expandable Upto 256 GB 13.97 cm (5.5 inch) HD Display 13MP Rear Camera | 5MP Front Camera 3000 mAh Battery Exynos 7570 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '11250.00', '11250.00', 'https://rukminim1.flixcart.com/image/312/312/jij61e80/mobile/m/y/s/samsung-j4-2018-sm-j400fzbdins-original-imaf64fwefbc4che.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10310, 'Samsung Galaxy J4 (Black, 32 GB)', ' 3 GB RAM | 32 GB ROM | Expandable Upto 256 GB 13.97 cm (5.5 inch) HD Display 13MP Rear Camera | 5MP Front Camera 3000 mAh Battery Exynos 7570 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '10880.00', '10880.00', 'https://rukminim1.flixcart.com/image/312/312/jm0wscw0/mobile-refurbished/j/m/j/galaxy-j4-16-c-sm-j400fzkdins-samsung-2-original-imaf6fgr5up6wacy.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10311, 'Samsung Galaxy J4 (Gold, 32 GB)', ' 3 GB RAM | 32 GB ROM | Expandable Upto 256 GB 13.97 cm (5.5 inch) HD Display 13MP Rear Camera | 5MP Front Camera 3000 mAh Battery Exynos 7570 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '10990.00', '10990.00', 'https://rukminim1.flixcart.com/image/312/312/jij61e80/mobile/v/n/x/samsung-j4-sm-j400fzddins-original-imaf64fwkd3ydbny.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10312, 'Samsung Galaxy J4 (Gold, 16 GB)', ' 2 GB RAM | 16 GB ROM | Expandable Upto 256 GB 13.97 cm (5.5 inch) HD Display 13MP Rear Camera | 5MP Front Camera 3000 mAh Battery Exynos 7570 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '9600.00', '8750.00', 'https://rukminim1.flixcart.com/image/312/312/jij61e80/mobile/v/n/x/samsung-j4-sm-j400fzddins-original-imaf64fwkd3ydbny.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10313, 'Samsung Galaxy J4 (Blue, 16 GB)', ' 2 GB RAM | 16 GB ROM | Expandable Upto 256 GB 13.97 cm (5.5 inch) HD Display 13MP Rear Camera | 5MP Front Camera 3000 mAh Battery Exynos 7570 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '9600.00', '8750.00', 'https://rukminim1.flixcart.com/image/312/312/jij61e80/mobile/m/y/s/samsung-j4-2018-sm-j400fzbdins-original-imaf64fwefbc4che.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10314, 'Samsung Galaxy J7 Duo (Blue, 32 GB)', ' 4 GB RAM | 32 GB ROM | Expandable Upto 256 GB 13.97 cm (5.5 inch) HD Display 13MP   5MP | 8MP Front Camera 3000 mAh Battery Exynos 7884 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '12999.00', '12999.00', 'https://rukminim1.flixcart.com/image/312/312/jhjg13k0/mobile/b/f/h/samsung-galaxy-j7-duo-sm-j720fzbgins-original-imaf5j6ezyauug2w.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10315, 'Samsung Galaxy J4 (Black, 16 GB)', ' 2 GB RAM | 16 GB ROM | Expandable Upto 256 GB 13.97 cm (5.5 inch) HD Display 13MP Rear Camera | 5MP Front Camera 3000 mAh Battery Exynos 7570 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '9600.00', '8750.00', 'https://rukminim1.flixcart.com/image/312/312/jhuvjww0/mobile/f/e/v/samsung-j4-2018-sm-j400fzkdins-original-imaf5pzrxgtgmjcj.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10316, 'Samsung Galaxy J6 (Gold, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 256 GB 14.22 cm (5.6 inch) HD  Display 13MP Rear Camera | 8MP Front Camera 3000 mAh Battery Exynos 7870 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '12999.00', '12999.00', 'https://rukminim1.flixcart.com/image/312/312/jjelq4w0/mobile/f/w/6/samsung-galaxy-j6-sm-j600gzdgins-original-imaf6zpeyjn6gruc.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10317, 'Samsung Galaxy J6 (Black, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 256 GB 14.22 cm (5.6 inch) HD  Display 13MP Rear Camera | 8MP Front Camera 3000 mAh Battery Exynos 7870 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '11990.00', '11990.00', 'https://rukminim1.flixcart.com/image/312/312/jjelq4w0/mobile/e/3/a/samsung-galaxy-j6-sm-j600gzkgins-original-imaf6zpe7vrnygsn.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10318, 'Samsung Galaxy J6 (Blue, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 256 GB 14.22 cm (5.6 inch) HD  Display 13MP Rear Camera | 8MP Front Camera 3000 mAh Battery Exynos 7870 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '12900.00', '11990.00', 'https://rukminim1.flixcart.com/image/312/312/jjelq4w0/mobile/w/n/8/samsung-galaxy-j6-sm-j600gzbgins-original-imaf6zpf6q8tjcva.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10319, 'Samsung Galaxy J6 (Blue, 32 GB)', ' 3 GB RAM | 32 GB ROM | Expandable Upto 256 GB 14.22 cm (5.6 inch) HD  Display 13MP Rear Camera | 8MP Front Camera 3000 mAh Battery Exynos 7870 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '11500.00', '10490.00', 'https://rukminim1.flixcart.com/image/312/312/jjelq4w0/mobile/w/n/8/samsung-galaxy-j6-sm-j600gzbgins-original-imaf6zpf6q8tjcva.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10320, 'Samsung Galaxy J6 (Black, 32 GB)', ' 3 GB RAM | 32 GB ROM | Expandable Upto 256 GB 14.22 cm (5.6 inch) HD  Display 13MP Rear Camera | 8MP Front Camera 3000 mAh Battery Exynos 7870 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '11500.00', '10490.00', 'https://rukminim1.flixcart.com/image/312/312/jjelq4w0/mobile/e/3/a/samsung-galaxy-j6-sm-j600gzkgins-original-imaf6zpe7vrnygsn.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10321, 'Samsung Galaxy J6 (Gold, 32 GB)', ' 3 GB RAM | 32 GB ROM | Expandable Upto 256 GB 14.22 cm (5.6 inch) HD  Display 13MP Rear Camera | 8MP Front Camera 3000 mAh Battery Exynos 7870 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '11500.00', '10490.00', 'https://rukminim1.flixcart.com/image/312/312/jjelq4w0/mobile/f/w/6/samsung-galaxy-j6-sm-j600gzdgins-original-imaf6zpeyjn6gruc.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10322, 'Samsung Guru FM Plus', ' NA ROM | 3.81 cm (1.5 inch) VGA Display 800 mAh Battery 1 Year Manufacturer Warranty', '1500.00', '1375.00', 'https://rukminim1.flixcart.com/image/312/312/jh6l2fk0/mobile/z/4/y/samsung-guru-fm-plus-sm-b110ezddins-original-imaf59chfgdbxggt.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10323, 'Samsung Guru Music 2', ' NA ROM | 5.08 cm (2 inch) NA Display 800 mAh Battery 1 Year Manufacturer Warranty', '1450.00', '1450.00', 'https://rukminim1.flixcart.com/image/312/312/jh6l2fk0/mobile/j/9/k/samsung-guru-music-2-sm-b310ezddins-original-imaf59ckstphguzf.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10324, 'Samsung Metro XL', ' 64 MB RAM | 128 MB ROM | Expandable Upto 16 GB 7.11 cm (2.8 inch) QVGA Display 3.1MP Rear Camera | 2MP Front Camera 1200 mAh Li-Ion Battery 1 Year on Mobile', '3225.00', '3225.00', 'https://rukminim1.flixcart.com/image/312/312/jh6l2fk0/mobile/u/j/m/samsung-metro-xl-sm-b355ezddins-original-imaf59ckerfgmzgw.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10325, 'Samsung Guru 1200', ' NA ROM | 3.81 cm (1.5 inch) NA Display 800 mAh Battery 1 Year for Mobile ', '1260.00', '1100.00', 'https://rukminim1.flixcart.com/image/312/312/jh6l2fk0/mobile/x/6/g/samsung-guru-1200-gt-e1200zdyins-original-imaf59chuhfyz7rv.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10326, 'Samsung Galaxy J2 2018 (Gold, 16 GB)', ' 2 GB RAM | 16 GB ROM | Expandable Upto 256 GB 12.7 cm (5 inch) Display 8MP Rear Camera | 5MP Front Camera 2600 mAh Battery Snapdragon 425 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8200.00', '7490.00', 'https://rukminim1.flixcart.com/image/312/312/jgpfs7k0/mobile/a/q/y/samsung-j2-2018-sm-j250g-original-imaf4uwk3udf3uj4.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10327, 'Samsung Galaxy J2 2018 (Black, 16 GB)', ' 2 GB RAM | 16 GB ROM | Expandable Upto 256 GB 12.7 cm (5 inch) Display 8MP Rear Camera | 5MP Front Camera 2600 mAh Battery Snapdragon 425 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8200.00', '7490.00', 'https://rukminim1.flixcart.com/image/312/312/jgpfs7k0/mobile/a/q/y/samsung-j2-2018-sm-j250g-original-imaf4uwk8zeqyw2g.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10328, 'Samsung Galaxy J2 2018 (Pink, 16 GB)', ' 2 GB RAM | 16 GB ROM | Expandable Upto 256 GB 12.7 cm (5 inch) Display 8MP Rear Camera | 5MP Front Camera 2600 mAh Battery Snapdragon 425 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '6799.00', '6799.00', 'https://rukminim1.flixcart.com/image/312/312/jgpfs7k0/mobile/q/h/r/samsung-j2-2018-sm-j250g-original-imaf4uwkc8gutrca.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10329, 'Samsung Galaxy S9 Plus (Midnight Black, 256 GB)', ' 6 GB RAM | 256 GB ROM | 15.75 cm (6.2 inch) Full HD Display 12MP Rear Camera 3500 mAh Battery Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '64999.00', '64999.00', 'https://rukminim1.flixcart.com/image/312/312/jfvfjbk0/mobile/j/8/9/samsung-galaxy-s9-plus-g965fh-original-imaf48htzznzmcva.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10330, 'Samsung Galaxy J7 Duo (Gold, 32 GB)', ' 4 GB RAM | 32 GB ROM | Expandable Upto 256 GB 13.97 cm (5.5 inch) HD Display 13MP   5MP | 8MP Front Camera 3000 mAh Battery Exynos 7884 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '13990.00', '13990.00', 'https://rukminim1.flixcart.com/image/312/312/jfwuz680/mobile/h/m/f/samsung-j7-duo-sm-j720f-original-imaf49ufgp38p4gh.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10331, 'Samsung Galaxy J7 Duo (Black, 32 GB)', ' 4 GB RAM | 32 GB ROM | Expandable Upto 256 GB 13.97 cm (5.5 inch) HD Display 13MP   5MP | 8MP Front Camera 3000 mAh Battery Exynos 7884 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '13490.00', '13490.00', 'https://rukminim1.flixcart.com/image/312/312/jfwuz680/mobile/r/2/r/samsung-j7-duo-sm-j720f-original-imaf49ufhhgpf7xb.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10332, 'Samsung Galaxy S8 (Burgundy Red, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 256 GB 14.73 cm (5.8 inch) Quad HD  Display 12MP Rear Camera | 8MP Front Camera 3000 mAh Battery Exynos 8895 Octa Core 2.3GHz Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '49990.00', '39990.00', 'https://rukminim1.flixcart.com/image/312/312/jfwuz680/mobile/k/v/g/samsung-galaxy-s8-sm-g950fzrdins-original-imaf49qmsmz4yhhh.jpeg?q=70', 10, 0, '2019-02-08 00:00:00'),
(10333, 'Samsung Galaxy S9 (Midnight Black, 128 GB)', ' 4 GB RAM | 128 GB ROM | Expandable Upto 400 GB 14.73 cm (5.8 inch) Quad HD  Display 12MP Rear Camera | 8MP Front Camera 3000 mAh Battery Exynos 9810 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '61900.00', '61900.00', 'https://rukminim1.flixcart.com/image/312/312/jf8khow0/mobile/z/h/u/samsung-galaxy-s9-na-original-imaf3qzz4ffxrgre.jpeg?q=70', 10, 0, '2019-02-08 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `catalog_category`
--
ALTER TABLE `catalog_category`
  ADD PRIMARY KEY (`catalog_id`,`category_id`),
  ADD KEY `catalog` (`catalog_id`),
  ADD KEY `category` (`category_id`);

--
-- Indexes for table `catalog_master`
--
ALTER TABLE `catalog_master`
  ADD PRIMARY KEY (`catalog_id`),
  ADD UNIQUE KEY `catalog_name` (`catalog_name`);

--
-- Indexes for table `category_master`
--
ALTER TABLE `category_master`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `category_product`
--
ALTER TABLE `category_product`
  ADD PRIMARY KEY (`product_id`,`category_id`),
  ADD KEY `product` (`product_id`),
  ADD KEY `cat` (`category_id`);

--
-- Indexes for table `category_subcategory`
--
ALTER TABLE `category_subcategory`
  ADD PRIMARY KEY (`subcategory_id`,`category_id`),
  ADD KEY `parent_category` (`category_id`),
  ADD KEY `sub_category` (`subcategory_id`);

--
-- Indexes for table `product_master`
--
ALTER TABLE `product_master`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `product_sku`
--
ALTER TABLE `product_sku`
  ADD PRIMARY KEY (`product_id`,`sku_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `item_id` (`sku_id`);

--
-- Indexes for table `sku_master`
--
ALTER TABLE `sku_master`
  ADD PRIMARY KEY (`sku_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `catalog_master`
--
ALTER TABLE `catalog_master`
  MODIFY `catalog_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category_master`
--
ALTER TABLE `category_master`
  MODIFY `category_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=253;

--
-- AUTO_INCREMENT for table `product_master`
--
ALTER TABLE `product_master`
  MODIFY `product_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=360;

--
-- AUTO_INCREMENT for table `sku_master`
--
ALTER TABLE `sku_master`
  MODIFY `sku_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10334;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `catalog_category`
--
ALTER TABLE `catalog_category`
  ADD CONSTRAINT `catalog` FOREIGN KEY (`catalog_id`) REFERENCES `catalog_master` (`catalog_id`),
  ADD CONSTRAINT `category` FOREIGN KEY (`category_id`) REFERENCES `category_master` (`category_id`);

--
-- Constraints for table `category_product`
--
ALTER TABLE `category_product`
  ADD CONSTRAINT `cat` FOREIGN KEY (`category_id`) REFERENCES `category_master` (`category_id`),
  ADD CONSTRAINT `product` FOREIGN KEY (`product_id`) REFERENCES `product_master` (`product_id`);

--
-- Constraints for table `category_subcategory`
--
ALTER TABLE `category_subcategory`
  ADD CONSTRAINT `parent_category` FOREIGN KEY (`category_id`) REFERENCES `category_master` (`category_id`),
  ADD CONSTRAINT `sub_category` FOREIGN KEY (`subcategory_id`) REFERENCES `category_master` (`category_id`);

--
-- Constraints for table `product_sku`
--
ALTER TABLE `product_sku`
  ADD CONSTRAINT `product_sku_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product_master` (`product_id`),
  ADD CONSTRAINT `product_sku_ibfk_2` FOREIGN KEY (`sku_id`) REFERENCES `sku_master` (`sku_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
