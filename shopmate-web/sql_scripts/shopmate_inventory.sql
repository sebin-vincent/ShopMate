-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 16, 2019 at 08:52 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.1.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopmate_inventory`
--

-- --------------------------------------------------------

--
-- Table structure for table `item_master`
--

CREATE TABLE `item_master` (
  `item_id` varchar(30) NOT NULL,
  `item_name` varchar(150) DEFAULT NULL,
  `item_description` varchar(700) DEFAULT NULL,
  `hsn_code` varchar(20) DEFAULT NULL,
  `unit_id` int(10) DEFAULT NULL,
  `start_datetime` datetime NOT NULL DEFAULT current_timestamp(),
  `end_datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item_master`
--

INSERT INTO `item_master` (`item_id`, `item_name`, `item_description`, `hsn_code`, `unit_id`, `start_datetime`, `end_datetime`) VALUES
('10013', 'Redmi Note 6 Pro (Black, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 256 GB 15.9 cm (6.26 inch) FHD  Display 12MP   5MP | 20MP   2MP Dual Front Camera 4000 mAh Li-polymer Battery Qualcomm Snapdragon 636 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, '2001-01-02 12:12:12', '2020-01-01 12:12:12'),
('10014', 'Redmi Note 6 Pro (Blue, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 256 GB 15.9 cm (6.26 inch) FHD  Display 12MP   5MP | 20MP   2MP Dual Front Camera 4000 mAh Li-polymer Battery Qualcomm Snapdragon 636 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, '2001-01-03 12:12:12', '2020-01-01 12:12:12'),
('10015', 'Redmi Note 6 Pro (Rose Gold, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 256 GB 15.9 cm (6.26 inch) FHD  Display 12MP   5MP | 20MP   2MP Dual Front Camera 4000 mAh Li-polymer Battery Qualcomm Snapdragon 636 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, '2001-01-01 00:00:00', '2020-01-01 00:00:00'),
('10016', 'Redmi 6 (Rose Gold, 32 GB)', ' 3 GB RAM | 32 GB ROM | Expandable Upto 256 GB 13.84 cm (5.45 inch) HD  Display 12MP   5MP | 5MP Front Camera 3000 mAh Lithium-polymer Battery 2.0 GHz Mediatek P22 Octacore Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10017', 'Redmi Note 6 Pro (Black, 64 GB)', ' 6 GB RAM | 64 GB ROM | Expandable Upto 256 GB 15.9 cm (6.26 inch) FHD  Display 12MP   5MP | 20MP   2MP Dual Front Camera 4000 mAh Li-polymer Battery Qualcomm Snapdragon 636 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10018', 'Redmi 6 (Black, 64 GB)', ' 3 GB RAM | 64 GB ROM | Expandable Upto 256 GB 13.84 cm (5.45 inch) HD  Display 12MP   5MP | 5MP Front Camera 3000 mAh Lithium-polymer Battery 2.0 GHz Mediatek P22 Octacore Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10019', 'Redmi Note 5 Pro (Black, 64 GB)', ' 6 GB RAM | 64 GB ROM | Expandable Upto 128 GB 15.21 cm (5.99 inch) Full HD  Display 12MP   5MP | 20MP Front Camera 4000 mAh Li Polymer Battery Qualcomm Snapdragon 636 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10020', 'Redmi 6 (Black, 32 GB)', ' 3 GB RAM | 32 GB ROM | Expandable Upto 256 GB 13.84 cm (5.45 inch) HD  Display 12MP   5MP | 5MP Front Camera 3000 mAh Lithium-polymer Battery 2.0 GHz Mediatek P22 Octacore Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10021', 'Redmi 6 (Blue, 32 GB)', ' 3 GB RAM | 32 GB ROM | Expandable Upto 256 GB 13.84 cm (5.45 inch) HD  Display 12MP   5MP | 5MP Front Camera 3000 mAh Lithium-polymer Battery 2.0 GHz Mediatek P22 Octacore Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10022', 'Redmi 6 (Gold, 64 GB)', ' 3 GB RAM | 64 GB ROM | Expandable Upto 256 GB 13.84 cm (5.45 inch) HD  Display 12MP   5MP | 5MP Front Camera 3000 mAh Lithium-polymer Battery 2.0 GHz Mediatek P22 Octacore Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10023', 'Redmi 6 (Rose Gold, 64 GB)', ' 3 GB RAM | 64 GB ROM | Expandable Upto 256 GB 13.84 cm (5.45 inch) HD  Display 12MP   5MP | 5MP Front Camera 3000 mAh Lithium-polymer Battery 2.0 GHz Mediatek P22 Octacore Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10024', 'Redmi Note 6 Pro (Red, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 256 GB 15.9 cm (6.26 inch) FHD  Display 12MP   5MP | 20MP   2MP Dual Front Camera 4000 mAh Li-polymer Battery Qualcomm Snapdragon 636 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10025', 'Redmi Note 5 Pro (Gold, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 128 GB 15.21 cm (5.99 inch) Full HD  Display 12MP   5MP | 20MP Front Camera 4000 mAh Li Polymer Battery Qualcomm Snapdragon 636 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10026', 'Redmi 6 (Gold, 32 GB)', ' 3 GB RAM | 32 GB ROM | Expandable Upto 256 GB 13.84 cm (5.45 inch) HD  Display 12MP   5MP | 5MP Front Camera 3000 mAh Lithium-polymer Battery 2.0 GHz Mediatek P22 Octacore Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10027', 'Redmi 6 (Blue, 64 GB)', ' 3 GB RAM | 64 GB ROM | Expandable Upto 256 GB 13.84 cm (5.45 inch) HD  Display 12MP   5MP | 5MP Front Camera 3000 mAh Lithium-polymer Battery 2.0 GHz Mediatek P22 Octacore Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10028', 'Redmi Note 6 Pro (Blue, 64 GB)', ' 6 GB RAM | 64 GB ROM | Expandable Upto 256 GB 15.9 cm (6.26 inch) FHD  Display 12MP   5MP | 20MP   2MP Dual Front Camera 4000 mAh Li-polymer Battery Qualcomm Snapdragon 636 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10029', 'Redmi Note 5 Pro (Black, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 128 GB 15.21 cm (5.99 inch) Full HD  Display 12MP   5MP | 20MP Front Camera 4000 mAh Li Polymer Battery Qualcomm Snapdragon 636 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10030', 'Redmi Note 6 Pro (Red, 64 GB)', ' 6 GB RAM | 64 GB ROM | Expandable Upto 256 GB 15.9 cm (6.26 inch) FHD  Display 12MP   5MP | 20MP   2MP Dual Front Camera 4000 mAh Li-polymer Battery Qualcomm Snapdragon 636 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10031', 'Redmi Note 6 Pro (Rose Gold, 64 GB)', ' 6 GB RAM | 64 GB ROM | Expandable Upto 256 GB 15.9 cm (6.26 inch) FHD  Display 12MP   5MP | 20MP   2MP Dual Front Camera 4000 mAh Li-polymer Battery Qualcomm Snapdragon 636 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10046', 'Redmi 6 Pro (Lake Blue, 32 GB)', ' 3 GB RAM | 32 GB ROM | Expandable Upto 256 GB 14.83 cm (5.84 inch) FHD  Display 12MP   5MP | 5MP Front Camera 4000 mAh Battery Qualcomm Snapdragon 625 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Battery and Accessories', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10047', 'Mi A2 (Blue/Lake Blue, 64 GB)', ' 4 GB RAM | 64 GB ROM | 15.21 cm (5.99 inch) FHD  Display 20MP   12MP | 20MP Front Camera 3010 mAh Battery Qualcomm Snapdragon 660 Octacore Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Battery and Accessories', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10048', 'Mi Max 2 (Black, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 128 GB 16.36 cm (6.44 inch) Full HD Display 12MP Rear Camera | 5MP Front Camera 5300 mAh Li-Polymer Battery Qualcomm Snapdragon 625 Octa Core 2 Ghz Processor Brand Warranty of 1 Year Available for Mobile', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10049', 'Redmi 5 (Black, 32 GB)', ' 3 GB RAM | 32 GB ROM | Expandable Upto 128 GB 14.48 cm (5.7 inch) HD  Display 12MP Rear Camera | 5MP Front Camera 3300 mAh Battery Qualcomm Snapdragon 450 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10050', 'Redmi 6 Pro (Red, 32 GB)', ' 3 GB RAM | 32 GB ROM | Expandable Upto 256 GB 14.83 cm (5.84 inch) FHD  Display 12MP   5MP | 5MP Front Camera 4000 mAh Battery Qualcomm Snapdragon 625 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Battery and Accessories', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10051', 'Redmi Y2 (Gold, 32 GB)', ' 3 GB RAM | 32 GB ROM | 15.21 cm (5.99 inch) Display 12MP Rear Camera | 16MP Front Camera 3080 mAh Battery 1', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10052', 'Redmi Note 5 Pro (Rose Gold, 64 GB)', ' 6 GB RAM | 64 GB ROM | Expandable Upto 128 GB 15.21 cm (5.99 inch) Full HD  Display 12MP   5MP | 20MP Front Camera 4000 mAh Li Polymer Battery Qualcomm Snapdragon 636 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10053', 'Redmi Note 5 (Gold, 32 GB)', ' 3 GB RAM | 32 GB ROM | Expandable Upto 128 GB 15.21 cm (5.99 inch) Full HD  Display 12MP Rear Camera | 5MP Front Camera 4000 mAh Li Polymer Battery Qualcomm Snapdragon 625 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10054', 'Mi A2 (Red, 64 GB)', ' 4 GB RAM | 64 GB ROM | 15.21 cm (5.99 inch) FHD  Display 20MP   12MP | 20MP Front Camera 3010 mAh Battery Qualcomm Snapdragon 660 Octacore Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Battery and Accessories', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10055', 'Redmi 6 Pro (Lake Blue, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 256 GB 14.83 cm (5.84 inch) FHD  Display 12MP   5MP | 5MP Front Camera 4000 mAh Battery Qualcomm Snapdragon 625 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Battery and Accessories', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10056', 'Redmi 6 Pro (Gold, 32 GB)', ' 3 GB RAM | 32 GB ROM | Expandable Upto 256 GB 14.83 cm (5.84 inch) FHD  Display 12MP   5MP | 5MP Front Camera 4000 mAh Battery Qualcomm Snapdragon 625 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Battery and Accessories', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10057', 'Redmi 6 Pro (Black, 64 GB)', ' 4 GB RAM | 64 GB ROM | 14.83 cm (5.84 inch) Display 12MP Rear Camera 4000 mAh Battery 12 months', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10058', 'Redmi Y2 (Blue, 32 GB)', ' 3 GB RAM | 32 GB ROM | 15.21 cm (5.99 inch) Display 12MP Rear Camera | 16MP Front Camera 3080 mAh Battery 1 Year Warranty', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10059', 'Redmi Y2 (Rose Gold, 32 GB)', ' 3 GB RAM | 32 GB ROM | 15.21 cm (5.99 inch) Display 12MP Rear Camera | 16MP Front Camera 3080 mAh Battery 1 Year Warranty', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10060', 'Redmi Note 5 (Black, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 128 GB 15.21 cm (5.99 inch) Full HD  Display 12MP Rear Camera | 5MP Front Camera 4000 mAh Li Polymer Battery Qualcomm Snapdragon 625 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10061', 'Redmi Y2 (Black, 32 GB)', ' 3 GB RAM | 32 GB ROM | 15.21 cm (5.99 inch) Display 12MP Rear Camera 3080 mAh Battery 1 Year Warranty', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10062', 'Mi A2 (Black, 128 GB)', ' 6 GB RAM | 128 GB ROM | 15.21 cm (5.99 inch) Display 20MP Rear Camera 3010 mAh Battery 1 Year Warranty', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10063', 'Redmi 6 Pro (Black, 32 GB)', ' 3 GB RAM | 32 GB ROM | Expandable Upto 256 GB 14.83 cm (5.84 inch) FHD  Display 12MP   5MP | 5MP Front Camera 4000 mAh Battery Qualcomm Snapdragon 625 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Battery and Accessories', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10064', 'Redmi 5 (Black, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 128 GB 14.48 cm (5.7 inch) HD  Display 12MP Rear Camera | 5MP Front Camera 3300 mAh Battery Qualcomm Snapdragon 450 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10065', 'Redmi 6 Pro (Gold, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 256 GB 14.83 cm (5.84 inch) FHD  Display 12MP   5MP | 5MP Front Camera 4000 mAh Battery Qualcomm Snapdragon 625 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Battery and Accessories', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10066', 'Redmi 5 (Gold, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 128 GB 14.48 cm (5.7 inch) HD  Display 12MP Rear Camera | 5MP Front Camera 3300 mAh Battery Qualcomm Snapdragon 450 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10067', 'Redmi 5 (Lake Blue, 16 GB)', ' 2 GB RAM | 16 GB ROM | Expandable Upto 128 GB 14.48 cm (5.7 inch) HD  Display 12MP Rear Camera | 5MP Front Camera 3300 mAh Battery Qualcomm Snapdragon 450 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10068', 'Redmi 5 (Rose Gold, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 128 GB 14.48 cm (5.7 inch) HD  Display 12MP Rear Camera | 5MP Front Camera 3300 mAh Battery Qualcomm Snapdragon 450 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10069', 'Mi Mix 2 (Black, 128 GB)', ' 6 GB RAM | 128 GB ROM | 15.21 cm (5.99 inch) Full HD  Display 12MP Rear Camera | 5MP Front Camera 3400 mAh Li-polymer Battery Qualcomm Snapdragon 835 Octa Core 2.5 GHz Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10070', 'Redmi 5 (Gold, 32 GB)', ' 3 GB RAM | 32 GB ROM | Expandable Upto 128 GB 14.48 cm (5.7 inch) HD  Display 12MP Rear Camera | 5MP Front Camera 3300 mAh Battery Qualcomm Snapdragon 450 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10071', 'Redmi Y2 (Black, 32 GB)', ' 3 GB RAM | 32 GB ROM | 15.21 cm (5.99 inch) Display 12MP Rear Camera 3080 mAh Battery 1 Year Warranty', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10072', 'Mi A2 (Black, 64 GB)', ' 4 GB RAM | 64 GB ROM | 15.21 cm (5.99 inch) FHD  Display 20MP   12MP | 20MP Front Camera 3010 mAh Battery Qualcomm Snapdragon 660 Octacore Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Battery and Accessories', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10073', 'Redmi Y1 lite (Rose Gold, 16 GB)', ' 2 GB RAM | 16 GB ROM | Expandable Upto 128 GB 13.97 cm (5.5 inch) HD Display 13MP Rear Camera | 5MP Front Camera 3080 mAh Battery Snapdragon 425 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10074', 'Redmi 5A (Blue, 32 GB)', ' 3 GB RAM | 32 GB ROM | Expandable Upto 128 GB 12.7 cm (5 inch) HD Display 13MP Rear Camera | 5MP Front Camera 3000 mAh Li-polymer Battery Qualcomm Snapdragon 425 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10075', 'Redmi 6 Pro (Gold, 32 GB)', ' 3 GB RAM | 32 GB ROM | Expandable Upto 256 GB 14.83 cm (5.84 inch) FHD  Display 12MP   5MP | 5MP Front Camera 4000 mAh Battery Qualcomm Snapdragon 625 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Battery and Accessories', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10076', 'Redmi 5A (Gold, 32 GB)', ' 3 GB RAM | 32 GB ROM | Expandable Upto 128 GB 12.7 cm (5 inch) HD Display 13MP Rear Camera | 5MP Front Camera 3000 mAh Li-polymer Battery Qualcomm Snapdragon 425 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10077', 'Redmi Y2 (Blue, 64 GB)', ' 4 GB RAM | 64 GB ROM | 15.21 cm (5.99 inch) Display 12MP Rear Camera | 16MP Front Camera 3080 mAh Battery 1 Year Warranty', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10078', 'Redmi 6A (Blue, 32 GB)', ' 2 GB RAM | 32 GB ROM | Expandable Upto 128 GB 13.84 cm (5.45 inch) HD Display 13MP Rear Camera 3000 mAh Battery Mediateck Processor 1 Year Manufacturer Warranty', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10079', 'Redmi Y2 (Black, 64 GB)', ' 4 GB RAM | 64 GB ROM | 15.21 cm (5.99 inch) HD Display 12MP Rear Camera | 16MP Front Camera 3080 mAh Battery 1 Year', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10080', 'Mi A2 (Red, 128 GB)', ' 6 GB RAM | 128 GB ROM | 15.21 cm (5.99 inch) Display 20MP Rear Camera 3010 mAh Battery 1 Year', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10081', 'Redmi 6 Pro (Black, 64 GB)', ' 4 GB RAM | 64 GB ROM | 14.83 cm (5.84 inch) Display 12MP Rear Camera 4000 mAh Battery 12 months', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10082', 'Redmi Note 5 (Gold, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 128 GB 15.21 cm (5.99 inch) Full HD  Display 12MP Rear Camera | 5MP Front Camera 4000 mAh Li Polymer Battery Qualcomm Snapdragon 625 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10083', 'Redmi 5 (Lake Blue, 32 GB)', ' 3 GB RAM | 32 GB ROM | Expandable Upto 128 GB 14.48 cm (5.7 inch) HD  Display 12MP Rear Camera | 5MP Front Camera 3300 mAh Battery Qualcomm Snapdragon 450 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10084', 'Redmi Note 5 (Rose Gold, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 128 GB 15.21 cm (5.99 inch) Full HD  Display 12MP Rear Camera | 5MP Front Camera 4000 mAh Li Polymer Battery Qualcomm Snapdragon 625 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10085', 'Redmi 6 Pro (Black, 32 GB)', ' 3 GB RAM | 32 GB ROM | Expandable Upto 256 GB 14.83 cm (5.84 inch) FHD  Display 12MP   5MP | 5MP Front Camera 4000 mAh Battery Qualcomm Snapdragon 625 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Battery and Accessories', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10086', 'Mi 4i (White, 16 GB)', ' 2 GB RAM | 16 GB ROM | 12.7 cm (5 inch) Full HD Display 13MP Rear Camera | 5MP Front Camera 3030 mAh Li-ion Polymer Battery 2nd-gen Snapdragon 615 64-bit octa-core Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10087', 'Mi 4i (Grey, 16 GB)', ' 2 GB RAM | 16 GB ROM | 12.7 cm (5 inch) Full HD Display 13MP Rear Camera | 5MP Front Camera 3030 mAh Li-ion Polymer Battery qualcomm 2nd-gen Snapdragon 615 64-bit octa-core Octa Core 1.7GHz Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10088', 'Redmi 6 Pro (Red, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 256 GB 14.83 cm (5.84 inch) FHD  Display 12MP   5MP | 5MP Front Camera 4000 mAh Battery Qualcomm Snapdragon 625 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Battery and Accessories', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10089', 'Mi A1 (Gold, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 128 GB 13.97 cm (5.5 inch) Full HD Display 12MP   12MP | 5MP Front Camera 3080 mAh Li-polymer Battery Qualcomm Snapdragon 625 64 bit Octa Core 2GHz Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10090', 'Mi A1 (Rose Gold, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 128 GB 13.97 cm (5.5 inch) Full HD Display 12MP   12MP | 5MP Front Camera 3080 mAh Li-polymer Battery Qualcomm Snapdragon 625 64 bit Octa Core 2GHz Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10091', 'Mi A1 (Black, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 128 GB 13.97 cm (5.5 inch) Full HD Display 12MP   12MP | 5MP Front Camera 3080 mAh Li-polymer Battery Qualcomm Snapdragon 625 64 bit Octa Core 2GHz Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10092', 'Redmi 5 (Black, 16 GB)', ' 2 GB RAM | 16 GB ROM | Expandable Upto 128 GB 14.48 cm (5.7 inch) HD  Display 12MP Rear Camera | 5MP Front Camera 3300 mAh Battery Qualcomm Snapdragon 450 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10093', 'MI3 (Metallic Grey, 16 GB)', ' 2 GB RAM | 16 GB ROM | 12.7 cm (5 inch) Full HD Display 13MP Rear Camera | 2MP Front Camera 3050 mAh Li-Ion Battery qualcomm Qualcomm Snapdragon 800 8274AB Quad Core 2.3GHz Processor 1 Year for Mobile ', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10094', 'Realme C1 (Navy Blue, 32 GB)', ' 3 GB RAM | 32 GB ROM | Expandable Upto 256 GB 15.75 cm (6.2 inch) HD  Display 13MP   2MP | 5MP Front Camera 4230 mAh Li-ion Battery Qualcomm Snapdragon 450 Octa Core 1.8 GHz Processor 2019 Edition Face Unlock Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10095', 'Realme C1 (Mirror Black, 32 GB)', ' 2 GB RAM | 32 GB ROM | Expandable Upto 256 GB 15.75 cm (6.2 inch) HD  Display 13MP   2MP | 5MP Front Camera 4230 mAh Li-ion Battery Qualcomm Snapdragon 450 Octa Core 1.8 GHz Processor 2019 Edition Face Unlock Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10096', 'Realme C1 (Mirror Black, 32 GB)', ' 3 GB RAM | 32 GB ROM | Expandable Upto 256 GB 15.75 cm (6.2 inch) HD  Display 13MP   2MP | 5MP Front Camera 4230 mAh Li-ion Battery Qualcomm Snapdragon 450 Octa Core 1.8 GHz Processor 2019 Edition Face Unlock Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10097', 'Realme C1 (Mirror Black, 16 GB)', ' 2 GB RAM | 16 GB ROM | Expandable Upto 256 GB 15.75 cm (6.2 inch) HD  Display 13MP   2MP | 5MP Front Camera 4230 mAh Li-ion Battery Qualcomm Snapdragon 450 Octa Core 1.8 GHz Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10098', 'Realme 2 (Diamond Black, 32 GB)', ' 3 GB RAM | 32 GB ROM | Expandable Upto 256 GB 15.75 cm (6.2 inch) HD  Display 13MP   2MP | 8MP Front Camera 4230 mAh Li-ion Battery Qualcomm Snapdragon 450 Octa Core 1.8 GHz Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10099', 'Realme 2 Pro (Ice Lake, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 256 GB 16.0 cm (6.3 inch) FHD  Display 16MP   2MP | 16MP Front Camera 3500 mAh Li-ion Battery Qualcomm Snapdragon 660 Octa Core 2.0GHz AIE Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10100', 'Realme 2 Pro (Blue Ocean, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 256 GB 16.0 cm (6.3 inch) FHD  Display 16MP   2MP | 16MP Front Camera 3500 mAh Li-ion Battery Qualcomm Snapdragon 660 Octa Core 2.0GHz AIE Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10101', 'Realme 2 Pro (Black Sea, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 256 GB 16.0 cm (6.3 inch) FHD  Display 16MP   2MP | 16MP Front Camera 3500 mAh Li-ion Battery Qualcomm Snapdragon 660 Octa Core 2.0GHz AIE Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10102', 'Realme 2 Pro (Blue Ocean, 64 GB)', ' 6 GB RAM | 64 GB ROM | Expandable Upto 256 GB 16.0 cm (6.3 inch) FHD  Display 16MP   2MP | 16MP Front Camera 3500 mAh Li-ion Battery Qualcomm Snapdragon 660 Octa Core 2.0GHz AIE Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10103', 'Realme 2 Pro (Black Sea, 64 GB)', ' 6 GB RAM | 64 GB ROM | Expandable Upto 256 GB 16.0 cm (6.3 inch) FHD  Display 16MP   2MP | 16MP Front Camera 3500 mAh Li-ion Battery Qualcomm Snapdragon 660 Octa Core 2.0GHz AIE Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10104', 'Realme U1 (Fiery Gold, 32 GB)', ' 3 GB RAM | 32 GB ROM | 16.0 cm (6.3 inch) Display 13MP Rear Camera 3500 mAh Battery 1 year manufacturer warranty for device and 6 months manufacturer warranty for in-box accessories including batteries from the date of purchase', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10105', 'Realme C1 (Navy Blue, 32 GB)', ' 2 GB RAM | 32 GB ROM | Expandable Upto 256 GB 15.75 cm (6.2 inch) HD  Display 13MP   2MP | 5MP Front Camera 4230 mAh Li-ion Battery Qualcomm Snapdragon 450 Octa Core 1.8 GHz Processor 2019 Edition Face Unlock Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10106', 'Realme U1 (Ambitious Black, 32 GB)', ' 3 GB RAM | 32 GB ROM | 16.0 cm (6.3 inch) Display 13MP Rear Camera 3500 mAh Battery 1 year manufacturer warranty for device and 6 months manufacturer warranty for in-box accessories including batteries from the date of purchase', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10107', 'Realme U1 (Brave Blue, 32 GB)', ' 3 GB RAM | 32 GB ROM | 16.0 cm (6.3 inch) Display 13MP Rear Camera 3500 mAh Battery 1 year manufacturer warranty for device and 6 months manufacturer warranty for in-box accessories including batteries from the date of purchase', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10108', 'Realme C1 (Navy Blue, 16 GB)', ' 2 GB RAM | 16 GB ROM | Expandable Upto 256 GB 15.75 cm (6.2 inch) HD  Display 13MP   2MP | 5MP Front Camera 4230 mAh Li-ion Battery Qualcomm Snapdragon 450 Octa Core 1.8 GHz Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10109', 'Realme 2 (Diamond Blue, 32 GB)', ' 3 GB RAM | 32 GB ROM | Expandable Upto 256 GB 15.75 cm (6.2 inch) HD  Display 13MP   2MP | 8MP Front Camera 4230 mAh Li-ion Battery Qualcomm Snapdragon 450 Octa Core 1.8 GHz Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10110', 'Realme 2 (Diamond Black, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 256 GB 15.75 cm (6.2 inch) HD  Display 13MP   2MP | 8MP Front Camera 4230 mAh Li-ion Battery Qualcomm Snapdragon 450 Octa Core 1.8 GHz Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10111', 'Realme 2 (Diamond Red, 32 GB)', ' 3 GB RAM | 32 GB ROM | Expandable Upto 256 GB 15.75 cm (6.2 inch) HD  Display 13MP   2MP | 8MP Front Camera 4230 mAh Li-ion Battery Qualcomm Snapdragon 450 Octa Core 1.8 GHz Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10112', 'Realme 2 (Diamond Red, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 256 GB 15.75 cm (6.2 inch) HD  Display 13MP   2MP | 8MP Front Camera 4230 mAh Li-ion Battery Qualcomm Snapdragon 450 Octa Core 1.8 GHz Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10113', 'Realme 2 Pro (Ice Lake, 64 GB)', ' 6 GB RAM | 64 GB ROM | Expandable Upto 256 GB 16.0 cm (6.3 inch) FHD  Display 16MP   2MP | 16MP Front Camera 3500 mAh Li-ion Battery Qualcomm Snapdragon 660 Octa Core 2.0GHz AIE Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10114', 'Realme 2 Pro (Blue Ocean, 128 GB)', ' 8 GB RAM | 128 GB ROM | Expandable Upto 256 GB 16.0 cm (6.3 inch) FHD  Display 16MP   2MP | 16MP Front Camera 3500 mAh Li-ion Battery Qualcomm Snapdragon 660 Octa Core 2.0GHz AIE Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10115', 'Realme 2 Pro (Black Sea, 128 GB)', ' 8 GB RAM | 128 GB ROM | Expandable Upto 256 GB 16.0 cm (6.3 inch) FHD  Display 16MP   2MP | 16MP Front Camera 3500 mAh Li-ion Battery Qualcomm Snapdragon 660 Octa Core 2.0GHz AIE Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10116', 'Realme Realme1 (Diamond Black, 128 GB)', ' 6 GB RAM | 128 GB ROM | 15.24 cm (6 inch) Display 13MP Rear Camera 3410 mAh Battery 1 year manufacturer warranty for device and 6 months manufacturer warranty for in-box accessories including batteries from the date of purchase', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10117', 'Realme Realme1 (Diamond Red, 32 GB)', ' 3 GB RAM | 32 GB ROM | 15.24 cm (6 inch) Display 13MP Rear Camera 3410 mAh Battery 1 year manufacturer warranty for device and 6 months manufacturer warranty for in-box accessories including batteries from the date of purchase', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10118', 'Asus TUF Core i7 8th Gen - (8 GB/1 TB HDD/128 GB SSD/Windows 10 Home/6 GB Graphics) FX504GM-EN017T Gam...', ' Intel Core i7 Processor (8th Gen) 8 GB DDR4 RAM 64 bit Windows 10 Operating System 1 TB HDD|128 GB SSD 39.62 cm (15.6 inch) Display 1 Year Onsite Warranty', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10119', 'Asus ROG Core i7 7th Gen - (8 GB/1 TB HDD/256 GB SSD/Windows 10 Home/6 GB Graphics) GL502VM-FY230T Gam...', ' Pre-installed Genuine Windows 10 Operating System (Includes Built-in Security, Free Automated Updates, Latest Features) Intel Core i7 Processor (7th Gen) 8 GB DDR4 RAM 64 bit Windows 10 Operating System 1 TB HDD|256 GB SSD 39.62 cm (15.6 inch) Display 1 Year Onsite Warranty', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10120', 'Lenovo Legion Core i5 7th Gen - (8 GB/1 TB HDD/128 GB SSD/Windows 10 Home/4 GB Graphics) LN Y520-15IKB...', ' NVIDIA GeForce GTX 1050Ti for Desktop Level Performance 128 GB SSD for Reduced Boot Up Time and in Game Loading 2 x Harman Speakers with Dolby Audio Premium for Best Audio Experience Pre-installed Genuine Windows 10 Operating System (Includes Built-in Security, Free Automated Updates, Latest Features) Intel Core i5 Processor (7th Gen) 8 GB DDR4 RAM 64 bit Windows 10 Operating System 1 TB HDD|128 GB SSD 39.62 cm (15.6 inch) Display 1 Year Onsite Warranty', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10121', 'Acer Predator Helios 300 Core i5 8th Gen - (8 GB/1 TB HDD/128 GB SSD/Windows 10 Home/4 GB Graphics) PH...', ' NVIDIA Geforce GTX 1050 Ti for Desktop Level Performance 128 GB SSD Capacity for Reduced Boot Up Time and in Game Loading Dual Fan Cooling with Metal AeroBlade for Interuption Free Gaming Optimized Dolby Audio Premium Sound Enhancement FineTip Backlit Keyboard with Independent Standard Numeric Keypad Intel Core i5 Processor (8th Gen) 8 GB DDR4 RAM 64 bit Windows 10 Operating System 1 TB HDD|128 GB SSD 39.62 cm (15.6 inch) Display 1 Year International Travelers Warranty (ITW)', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10122', 'Acer Predator Helios 300 Core i5 8th Gen - (8 GB/1 TB HDD/128 GB SSD/Windows 10 Home/4 GB Graphics) PH...', ' NVIDIA Geforce GTX 1050 Ti for Desktop Level Performance 128 GB SSD Capacity for Reduced Boot Up Time and in Game Loading Dual Fan Cooling with Metal AeroBlade for Interuption Free Gaming Optimized Dolby Audio Premium Sound Enhancement FineTip Backlit Keyboard with Independent Standard Numeric Keypad Intel Core i5 Processor (8th Gen) 8 GB DDR4 RAM 64 bit Windows 10 Operating System 1 TB HDD|128 GB SSD 39.62 cm (15.6 inch) Display 1 Year International Travelers Warranty (ITW)', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10123', 'Acer Predator Helios 300 Core i7 8th Gen - (8 GB/1 TB HDD/128 GB SSD/Windows 10 Home/4 GB Graphics) PH...', ' Intel Core i7 Processor (8th Gen) 8 GB DDR4 RAM 64 bit Windows 10 Operating System 1 TB HDD|128 GB SSD 39.62 cm (15.6 inch) Display 1 Year International Travelers Warranty (ITW)', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10124', 'MSI GP Core i7 8th Gen - (16 GB/1 TB HDD/256 GB SSD/Windows 10 Home/6 GB Graphics) GP63 Leopard 8RE -4...', ' NVIDIA Geforce GTX 1060 for Desktop Level Performance 512 GB SSD for Reduced Boot Up Time and in Game Loading MSI\'s Cooler Boost 5 Technology for Interruption Free Gaming Giant Speakers for Immersive Audio Experience Pre-installed Genuine Windows 10 Operating System (Includes Built-in Security, Free Automated Updates, Latest Features) Intel Core i7 Processor (8th Gen) 16 GB DDR4 RAM 64 bit Windows 10 Operating System 1 TB HDD|256 GB SSD 39.62 cm (15.6 inch) Display 2 Years Carry In Warranty', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10125', 'MSI GV Series Core i7 8th Gen - (16 GB/1 TB HDD/128 GB SSD/Windows 10 Home/6 GB Graphics) GV62 8RE-050...', ' Intel Core i7 Processor (8th Gen) 16 GB DDR4 RAM 64 bit Windows 10 Operating System 1 TB HDD|128 GB SSD 39.62 cm (15.6 inch) Display 2 Years Carry In Warranty', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10126', 'MSI GL Series Core i7 7th Gen - (8 GB/1 TB HDD/Windows 10 Home/4 GB Graphics) GL62M 7RDX-2680IN Gaming...', ' NVIDIA Geforce GTX 1050 for Desktop Level Performance 3D Sound Experience with Nahimic 2  Technology MSI\'s Cooler Boost 4 Technology for Interruption Free Gaming Full HD LED Backlit Wideview Anti-glare Display for Better Visual Experience Pre-installed Genuine Windows 10 Operating System (Includes Built-in Security, Free Automated Updates, Latest Features) Intel Core i7 Processor (7th Gen) 8 GB DDR4 RAM 64 bit Windows 10 Operating System 1 TB HDD 39.62 cm (15.6 inch) Display 2 Years Carry In Warranty', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10128', 'Asus TUF Core i5 8th Gen - (8 GB/1 TB HDD/Windows 10 Home/4 GB Graphics) FX504GD-E4021T Gaming Laptop', ' Intel Core i5 Processor (8th Gen) 8 GB DDR4 RAM 64 bit Windows 10 Operating System 1 TB HDD 39.62 cm (15.6 inch) Display 1 Year Onsite Warranty', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10129', 'MSI GE Core i7 8th Gen - (16 GB/1 TB HDD/512 GB SSD/Windows 10 Home/8 GB Graphics) GE73 Raider RGB 8RF...', ' NVIDIA Geforce GTX 1070 for Desktop Level Performance 512 GB SSD for Reduced Boot Up Time and in Game Loading MSI\'s Cooler Boost 5 Technology for Interruption Free Gaming Per-Key RGB Gaming Keyboard Helps in Customizing Each Key Pre-installed Genuine Windows 10 Operating System (Includes Built-in Security, Free Automated Updates, Latest Features) Intel Core i7 Processor (8th Gen) 16 GB DDR4 RAM 64 bit Windows 10 Operating System 1 TB HDD|512 GB SSD 43.94 cm (17.3 inch) Display 2 Years Carry In Warranty', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10130', 'Acer Nitro 5 Core i5 7th Gen - (8 GB/1 TB HDD/128 GB SSD/Windows 10 Home/2 GB Graphics) AN515-51 Gamin...', ' Pre-installed Genuine Windows 10 Operating System (Includes Built-in Security, Free Automated Updates, Latest Features) Intel Core i5 Processor (7th Gen) 8 GB DDR4 RAM 64 bit Windows 10 Operating System 1 TB HDD|128 GB SSD 39.62 cm (15.6 inch) Display 1 Year International Travelers Warranty (ITW)', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10131', 'MSI GL Core i7 8th Gen - (8 GB/1 TB HDD/128 GB SSD/Windows 10 Home/4 GB Graphics) GL63 8RD-450IN Gamin...', ' NVIDIA Geforce GTX 1050 Ti for Desktop Level Performance 128 GB SSD for Reduced Boot Up Time and in Game Loading MSI\'s Cooler Boost 5 Technology for Interruption Free Gaming Giant Speakers for Immersive Audio Experience Pre-installed Genuine Windows 10 Operating System (Includes Built-in Security, Free Automated Updates, Latest Features) Intel Core i7 Processor (8th Gen) 8 GB DDR4 RAM 64 bit Windows 10 Operating System 1 TB HDD|128 GB SSD 39.62 cm (15.6 inch) Display 2 Years Carry In Warranty', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10132', 'MSI GE Core i7 8th Gen - (16 GB/1 TB HDD/256 GB SSD/Windows 10 Home/8 GB Graphics) GE63 Raider RGB 8RF...', ' NVIDIA Geforce GTX 1070 for Desktop Level Performance 256 GB SSD for Reduced Boot Up Time and in Game Loading MSI\'s Cooler Boost 5 Technology for Interruption Free Gaming Giant Speakers for Immersive Audio Experience Pre-installed Genuine Windows 10 Operating System (Includes Built-in Security, Free Automated Updates, Latest Features) Intel Core i7 Processor (8th Gen) 16 GB DDR4 RAM 64 bit Windows 10 Operating System 1 TB HDD|256 GB SSD 39.62 cm (15.6 inch) Display 2 Years Carry In Warranty', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10133', 'Asus TUF Core i5 8th Gen - (8 GB/1 TB HDD/128 GB SSD/Windows 10 Home/4 GB Graphics) FX504GE-E4366T Gam...', ' Intel Core i5 Processor (8th Gen) 8 GB DDR4 RAM 64 bit Windows 10 Operating System 1 TB HDD|128 GB SSD 39.62 cm (15.6 inch) Display 1 Year Global Warranty by Asus', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10134', 'Asus TUF Core i7 8th Gen - (8 GB/1 TB HDD/128 GB SSD/Windows 10 Home/4 GB Graphics) FX504GE-EN224T Gam...', NULL, '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10135', 'Asus Core i7 7th Gen - (8 GB/1 TB HDD/128 GB SSD/Windows 10/4 GB Graphics) FX553VD-DM1032T Gaming Lapt...', ' Pre-installed Genuine Windows 10 Operating System (Includes Built-in Security, Free Automated Updates, Latest Features) Intel Core i7 Processor (7th Gen) 8 GB DDR4 RAM 64 bit Windows 10 Operating System 1 TB HDD|128 GB SSD 39.62 cm (15.6 inch) Display 1 Year Onsite Warranty', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10136', 'MSI GS Core i7 8th Gen - (16 GB/512 GB SSD/Windows 10 Home/6 GB Graphics) GS65 8RE-084IN Gaming Laptop', ' NVIDIA Geforce GTX 1060 for Desktop Level Performance 512 GB SSD for Reduced Boot Up Time and in Game Loading Per-Key RGB Gaming Keyboard Helps in Customizing Each Key Pre-installed Genuine Windows 10 Operating System (Includes Built-in Security, Free Automated Updates, Latest Features) Intel Core i7 Processor (8th Gen) 16 GB DDR4 RAM 64 bit Windows 10 Operating System 512 GB SSD 39.62 cm (15.6 inch) Display 2 Years Carry In Warranty', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10137', 'Asus ROG Strix Edition Core i7 7th Gen - (16 GB/1 TB HDD/128 GB SSD/Windows 10 Home/6 GB Graphics) GL5...', ' NVIDIA Geforce GTX 1060 for Desktop Level Performance 128 GB NVMe PCIe 3.0 x4 SSD 4 Zone Customizable RGB Backlit with Anti-ghosting N-Key Rollover Keyboard Dual Fans Intelligent Hyper Cooling Design Sonic Studio Software with in Game Noise Cancellation and Voice Volume Stabilization Technology Pre-installed Genuine Windows 10 Operating System (Includes Built-in Security, Free Automated Updates, Latest Features) Intel Core i7 Processor (7th Gen) 16 GB DDR4 RAM 64 bit Windows 10 Operating System 1 TB HDD|128 GB SSD 39.62 cm (15.6 inch) Display 2 Years Onsite Warranty', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10138', 'MSI GV Series Core i5 7th Gen - (8 GB/1 TB HDD/DOS/4 GB Graphics) GV62 7RD-2627XIN Laptop', ' NVIDIA Geforce GTX 1050 for Desktop Level Performance 3D Sound Experience with Nahimic 2  Technology Full HD LED Backlit Widescreen Anti-glare Display for Better Visual Experience Intel Core i5 Processor (7th Gen) 8 GB DDR4 RAM DOS Operating System 1 TB HDD 39.62 cm (15.6 inch) Display 2 Years Carry In Warranty', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10139', 'Asus FX553 Core i7 7th Gen - (8 GB/1 TB HDD/Windows 10/4 GB Graphics) FX553VE-DM318T Gaming Laptop', ' NVIDIA Geforce GTX 1050 Ti for Desktop Level Performance Red Backlit Anti Ghosting Keyboard Pre-installed Genuine Windows 10 Operating System (Includes Built-in Security, Free Automated Updates, Latest Features) Intel Core i7 Processor (7th Gen) 8 GB DDR4 RAM 64 bit Windows 10 Operating System 1 TB HDD 39.62 cm (15.6 inch) Display 2 Years Onsite Warranty', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10140', 'Asus FX503 Core i7 7th Gen - (8 GB/1 TB HDD/128 GB SSD/Windows 10 Home/4 GB Graphics) FX503VD-DM112T G...', ' NVIDIA Geforce GTX 1050 for Desktop Level Performance A High Capacity Battery Ensures Stay Productive and Entertained Throughout the Day Powered by ICEpower Technology which Delivers Truly Immersive Listening and Gaming Experiences Additional Fan Overboost Function Maximizes Cooling Efficiency Pre-installed Genuine Windows 10 Operating System (Includes Built-in Security, Free Automated Updates, Latest Features) Intel Core i7 Processor (7th Gen) 8 GB DDR4 RAM 64 bit Windows 10 Operating System 1 TB HDD|128 GB SSD 39.62 cm (15.6 inch) Display 2 Years Onsite Warranty', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10141', 'Asus FX553 Core i7 7th Gen - (8 GB/1 TB HDD/Windows 10 Home/4 GB Graphics) FX553VD-DM013T Gaming Lapto...', ' NVIDIA Geforce GTX 1050 for Desktop Level Performance Asus Cooling Overboost with Controllable Fan Speeds Array Microphones to Filter Out Ambient Noise Red Backlit Anti Ghosting Keyboard Stylish Red Backlit Anti Ghosting Keyboard with 30 Key Rollover Pre-installed Genuine Windows 10 Operating System (Includes Built-in Security, Free Automated Updates, Latest Features) Intel Core i7 Processor (7th Gen) 8 GB DDR4 RAM 64 bit Windows 10 Operating System 1 TB HDD 39.62 cm (15.6 inch) Display 2 Year Onsite Warranty', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10142', 'Asus ROG Strix Edition Core i7 7th Gen - (8 GB/1 TB HDD/128 GB SSD/Windows 10 Home/4 GB Graphics) GL50...', ' NVIDIA Geforce GTX 1050 for Desktop Level Performance 128 GB SSD for Reduced Boot Up Time and in Game Loading Pre-installed Genuine Windows 10 Operating System (Includes Built-in Security, Free Automated Updates, Latest Features) Intel Core i7 Processor (7th Gen) 8 GB DDR4 RAM 64 bit Windows 10 Operating System 1 TB HDD|128 GB SSD 39.62 cm (15.6 inch) Display 2 Years Onsite Warranty', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10143', 'Acer Predator Helios 300 Core i5 7th Gen - (8 GB/1 TB HDD/128 GB SSD/Windows 10 Home/4 GB Graphics) G3...', ' NVIDIA Geforce GTX 1050Ti for Desktop Level Performance 128 GB SSD for Reduced Boot Up Time and in Game Loading Upgradable SSD Upto 512 GB and RAM Upto 32 GB Dual Fan Cooling with Metal AeroBlade 3D Pre-installed Genuine Windows 10 Operating System (Includes Built-in Security, Free Automated Updates, Latest Features) Intel Core i5 Processor (7th Gen) 8 GB DDR4 RAM 64 bit Windows 10 Operating System 1 TB HDD|128 GB SSD 39.62 cm (15.6 inch) Display 1 Year International Travelers Warranty (ITW)', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10144', 'Asus ROG Core i7 7th Gen - (8 GB/1 TB HDD/Windows 10 Home/4 GB Graphics) GL553VD-FY103T Gaming Laptop', ' NVIDIA Geforce GTX 1050 for Desktop Level Performance 2.8 GHz with Turbo Boost Upto 3.8 GHz Clock Speed Full HD LED Backlit Ultra Slim 300-nits Anti-glare Display Pre-installed Genuine Windows 10 Operating System (Includes Built-in Security, Free Automated Updates, Latest Features) Intel Core i7 Processor (7th Gen) 8 GB DDR4 RAM 64 bit Windows 10 Operating System 1 TB HDD 39.62 cm (15.6 inch) Display 2 Years Onsite Warranty', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10145', 'MSI GV Series Core i7 7th Gen - (8 GB/1 TB HDD/128 GB SSD/Windows 10 Home/4 GB Graphics) GV62 7RE-2401...', ' NVIDIA Geforce GTX 1050 Ti for Desktop Level Performance 128 GB SSD for Reduced Boot Up Time and in Game Loading Cooler Boost 4 Technology Offers Effective Cooling Design Exclusive Cooler Boost 4 Technology Nahimic 2  Technology Provides Immersive Listening Experience Pre-installed Genuine Windows 10 Operating System (Includes Built-in Security, Free Automated Updates, Latest Features) Intel Core i7 Processor (7th Gen) 8 GB DDR4 RAM 64 bit Windows 10 Operating System 1 TB HDD|128 GB SSD 39.62 cm (15.6 inch) Display 2 Years Carry In Warranty', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10146', 'F', '', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10147', 'Intex IT 212 40 W Bluetooth Home Audio Speaker', '', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10148', 'F', '', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10149', 'F', '', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10150', 'Philips Multimedia Speaker System Explode MMS4040F/94', '', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10151', 'F', '', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10152', 'F', '', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10153', 'Intex IT 2655 60 W Laptop/Desktop Speaker', '', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10154', 'iball Hi-Basss Bluetooth Home Audio Speaker', '', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10155', 'Zoook ZB-ROCKER THUNDER 20 Bluetooth Home Audio Speaker', '', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10156', 'Zebronics BT4440 RUCF Bluetooth Home Audio Speaker', '', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10157', 'Impex Lyric 5.1 70 Bluetooth Home Audio Speaker', '', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10158', 'Philips SPA3800B/94 28 W Portable Bluetooth Home Audio ...', '', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10159', 'iBELL 5.1 45 W Bluetooth Home Audio Speaker', '', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10160', 'Intex IT 301N 60 W Home Audio Speaker', '', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10161', 'Philips MMS2580B/94 30 W Portable Bluetooth Home Audio ...', '', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10162', 'F', '', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10163', 'F', '', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10164', 'F', '', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10165', 'SSKY BT 20 BAZOOKA WITH MIC 10 W Bluetooth Home Audio S...', '', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10166', 'Intex IT 213 40 W Portable Bluetooth Home Audio Speaker', '', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10167', 'F', '', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10168', 'LG LK72B 40 W Bluetooth Home Audio Speaker', '', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10169', 'Zync Karaoke 32 Bluetooth Home Audio Speaker', '', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10170', 'Philips MMS2550F Dhoom 25 W Laptop/Computer Speaker wit...', '', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10171', 'Panasonic SC-HT19GW-K 45 W Bluetooth Home Audio Speaker', '', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10172', 'Philips SPA8140B/94 50 W Bluetooth Home Audio Speaker', '', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10173', 'Impex CLASSIC Bluetooth Home Audio Speaker', '', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10174', 'Philips MMS4545B/94 42 W Bluetooth Laptop/Desktop Speak...', '', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10175', 'Saregama Carvaan Mini 3 W Bluetooth Home Audio Speaker', '', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10176', 'Impex 5.1 (OPERA BLUE) Portable Bluetooth Home Audio Sp...', '', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10177', 'JVC XN21F 28 W Bluetooth Home Audio Speaker', '', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10178', 'Mitashi 3500 Watts PMPO 2.1 Ch. HT 2430 FUR Home Audio ...', '', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10179', 'Envent Deejay 310 20 W Bluetooth Home Audio Speaker', '', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10180', 'Zebronics 4.1 Multimedia SW3490 RUCF Home Audio Speaker', '', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10181', 'F', '', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10222', 'Samsung EVO Plus 32 GB MicroSDHC Class 10 95 MB/s Memo...', '', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10223', 'SanDisk Ultra 32 GB MicroSDHC Class 10 98 MB/s Memory ...', '', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10224', 'SanDisk Ultra 16 GB MicroSDHC Class 10 98 MB/s Memory ...', '', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12');
INSERT INTO `item_master` (`item_id`, `item_name`, `item_description`, `hsn_code`, `unit_id`, `start_datetime`, `end_datetime`) VALUES
('10225', 'SanDisk C10 32 GB Ultra SDHC Class 10 98 MB/s Memory C...', '', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10226', 'SanDisk Ultra 32 GB MicroSDHC Class 10 98 MB/s Memory ...', '', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10227', 'SanDisk Ultra 16 GB MicroSDHC Class 10 98 MB/s Memory ...', '', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10228', 'SanDisk SDSDQM-032G-B35 32 GB MicroSD Card Class 4 48 M...', '', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10229', 'Samsung EVO Plus 64 GB MicroSDXC Class 10 100 MB/s Mem...', '', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10230', 'SanDisk Ultra A1 16 GB MicroSD Card Class 10 98 MB/s M...', '', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10231', 'Samsung EVO 32 GB MicroSD Card Class 10 95 MB/s Memory...', '', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10232', 'Samsung Evo Plus 64 GB MicroSDHC Class 10 100 Memory C...', '', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10233', 'SanDisk Ultra 32 GB MicroSD Card Class 10 98 MB/s Memo...', '', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10234', 'SanDisk Ultra 32 GB MicroSDHC Class 10 80 MB/s Memory ...', '', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10235', 'SanDisk micro 16 GB MicroSD Card Class 4 4 MB/s Memory...', '', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10236', 'SanDisk simple 8 GB MicroSD Card Class 4 40 MB/s Memor...', '', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10237', 'SanDisk Ultra 16 GB MicroSDHC Class 10 98 MB/s Memory ...', '', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10238', 'HP Micro SDHC 16 GB MicroSDHC Class 10 80 MB/s Memory ...', '', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10239', 'SanDisk Micro 16 GB MicroSD Card Class 4 16 MB/s Memor...', '', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10240', 'Samsung Evo 32GB 95 MB/s 32 GB MicroSDHC Class 10 95 MB...', '', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10241', 'SanDisk Basic 16 GB MicroSDHC Class 4 20 MB/s Memory C...', '', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10242', 'SanDisk C4 16 GB SD Card Class 4 30 MB/s Memory Card', '', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10243', 'SanDisk Ultra 16 GB MicroSDHC Class 4 48 MB/s Memory C...', '', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10244', 'HP MicroSDHC 32 GB MicroSDHC Class 10 80 MB/s Memory C...', '', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10245', 'SanDisk ultra 32 GB MicroSDHC Class 10 80 MB/s Memory ...', '', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10246', 'Strontium Nitro A1 32 GB SDHC UHS Class 1 100 Mbps Mem...', '', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10247', 'Sony SR-32UY3A 32 GB MicroSD Card Class 10 90 MB/s Mem...', '', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10248', 'HP U1 64 GB MicroSDXC Class 10 80 Mbps Memory Card', '', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10249', 'SanDisk 4 16 GB SD Card Class 4 20 MB/s Memory Card', '', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10250', 'SanDisk A1 16 GB Ultra SDHC Class 10 98 MB/s Memory Ca...', '', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10251', 'SanDisk A1 Youtube 32 GB MicroSD Card Class 10 98 MB/s ...', '', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10252', 'Samsung MB-MC128GA/IN 128 GB Ultra SDHC UHS Class 3 100...', '', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10253', 'Samsung Evo  32 GB SD Card Class 10 95 MB/s Memory Car...', '', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10254', 'Samsung EVO 32 GB MicroSD Card UHS Class 1 95 Memory C...', '', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10255', 'SanDisk A1 32 GB Ultra SDHC Class 10 98 MB/s Memory Ca...', '', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10256', 'Sandisk 16 GB MicroSD Class 4 Memory Card', '', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10257', 'Samsung evo 32 GB MicroSDHC Class 10 95 MB/s Memory Ca...', '', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10258', 'SanDisk C10 16 GB SD Card Class 10 98 MB/s Memory Card', '', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10259', 'SanDisk 16 GB SDHC Class 4 90 MB/s Memory Card', '', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10260', 'SanDisk Memory Card 16 GB MicroSD Card Class 10 24 MB/s...', '', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10261', 'SanDisk SanDisk Ultra A1 16GB Class 10 Speed Up To 98MB...', '', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10262', 'Samsung Galaxy S9 Plus (Burgundy Red, 64 GB)', ' 6 GB RAM | 64 GB ROM | Expandable Upto 400 GB 15.75 cm (6.2 inch) Quad HD  Display 12MP   12MP | 8MP Front Camera 3500 mAh Battery Exynos 9810 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10263', 'Samsung Galaxy Note 9 (Alpine White, 128 GB)', ' 6 GB RAM | 128 GB ROM | Expandable Upto 512 GB 16.26 cm (6.4 inch) Quad HD  Display 12MP   12MP | 8MP Front Camera 4000 mAh Lithium-ion Battery Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10264', 'Samsung Galaxy S9 Plus (Polaris Blue, 64 GB)', ' 6 GB RAM | 64 GB ROM | Expandable Upto 400 GB 15.75 cm (6.2 inch) Quad HD  Display 12MP   12MP | 8MP Front Camera 3500 mAh Battery Exynos 9810 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10265', 'Samsung Galaxy A9 (Caviar Black, 128 GB)', ' 6 GB RAM | 128 GB ROM | Expandable Upto 512 GB 16.0 cm (6.3 inch) FHD  Display 24MP   5MP   10MP  8MP | 24MP Front Camera 3800 mAh Lithium-ion Battery Qualcomm Snapdragon 660 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10266', 'Samsung Galaxy A9 (Caviar Black, 128 GB)', ' 8 GB RAM | 128 GB ROM | Expandable Upto 512 GB 16.0 cm (6.3 inch) FHD  Display 24MP   5MP   10MP  8MP | 24MP Front Camera 3800 mAh Lithium-ion Battery Qualcomm Snapdragon 660 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10267', 'Samsung Galaxy A9 (Lemonade Blue, 128 GB)', ' 6 GB RAM | 128 GB ROM | Expandable Upto 512 GB 16.0 cm (6.3 inch) FHD  Display 24MP   5MP   10MP  8MP | 24MP Front Camera 3800 mAh Lithium-ion Battery Qualcomm Snapdragon 660 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10268', 'Samsung Galaxy A9 (Lemonade Blue, 128 GB)', ' 8 GB RAM | 128 GB ROM | Expandable Upto 512 GB 16.0 cm (6.3 inch) FHD  Display 24MP   5MP   10MP  8MP | 24MP Front Camera 3800 mAh Lithium-ion Battery Qualcomm Snapdragon 660 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10269', 'Samsung Galaxy A9 (Bubblegum Pink, 128 GB)', ' 6 GB RAM | 128 GB ROM | Expandable Upto 512 GB 16.0 cm (6.3 inch) FHD  Display 24MP   5MP   10MP  8MP | 24MP Front Camera 3800 mAh Lithium-ion Battery Qualcomm Snapdragon 660 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10270', 'Samsung Galaxy A7 (Black, 128 GB)', ' 6 GB RAM | 128 GB ROM | Expandable Upto 512 GB 15.24 cm (6.0 inch) FHD  Display 24MP   5MP   8MP | 24MP Front Camera 3300 mAh Lithium-ion Battery Samsung Exynos Octa Core Processor (2.2 GHz) Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10271', 'Samsung Galaxy A7 (Blue, 128 GB)', ' 6 GB RAM | 128 GB ROM | Expandable Upto 512 GB 15.24 cm (6.0 inch) FHD  Display 24MP   5MP   8MP | 24MP Front Camera 3300 mAh Lithium-ion Battery Samsung Exynos Octa Core Processor (2.2 GHz) Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10272', 'Samsung Galaxy A7 (Blue, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 512 GB 15.24 cm (6.0 inch) FHD  Display 24MP   5MP   8MP | 24MP Front Camera 3300 mAh Lithium-ion Battery Samsung Exynos Octa Core Processor (2.2 GHz) Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10273', 'Samsung Galaxy A7 (Gold, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 512 GB 15.24 cm (6.0 inch) FHD  Display 24MP   5MP   8MP | 24MP Front Camera 3300 mAh Lithium-ion Battery Samsung Exynos Octa Core Processor (2.2 GHz) Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10274', 'Samsung Galaxy A7 (Black, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 512 GB 15.24 cm (6.0 inch) FHD  Display 24MP   5MP   8MP | 24MP Front Camera 3300 mAh Lithium-ion Battery Samsung Exynos Octa Core Processor (2.2 GHz) Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10275', 'Samsung Galaxy J6 Plus (Black, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 512 GB 15.24 cm (6 inch) HD  Display 13MP   5MP | 8MP Front Camera 3300 mAh Battery Qualcomm Snapdragon SD425 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10276', 'Samsung Galaxy J4 Plus (Blue, 32 GB)', ' 2 GB RAM | 32 GB ROM | Expandable Upto 512 GB 15.24 cm (6 inch) HD  Display 13MP Rear Camera | 5MP Front Camera 3300 mAh Lithium-ion Battery Qualcomm Snapdragon SD425 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10277', 'Samsung Galaxy J6 Plus (Red, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 512 GB 15.24 cm (6 inch) HD  Display 13MP   5MP | 8MP Front Camera 3300 mAh Battery Qualcomm Snapdragon SD425 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10278', 'Samsung Galaxy J6 Plus (Blue, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 512 GB 15.24 cm (6 inch) HD  Display 13MP   5MP | 8MP Front Camera 3300 mAh Battery Qualcomm Snapdragon SD425 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10279', 'Samsung Galaxy J4 Plus (Black, 32 GB)', ' 2 GB RAM | 32 GB ROM | Expandable Upto 512 GB 15.24 cm (6 inch) HD  Display 13MP Rear Camera | 5MP Front Camera 3300 mAh Lithium-ion Battery Qualcomm Snapdragon SD425 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10280', 'Samsung Galaxy J4 Plus (Gold, 32 GB)', ' 2 GB RAM | 32 GB ROM | Expandable Upto 512 GB 15.24 cm (6 inch) HD  Display 13MP Rear Camera | 5MP Front Camera 3300 mAh Lithium-ion Battery Qualcomm Snapdragon SD425 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10281', 'Samsung Galaxy A8 Star (White, 64 GB)', ' 6 GB RAM | 64 GB ROM | 16.0 cm (6.3 inch) Display 24MP Rear Camera 3700 mAh Battery 1 year manufacturer warranty for device and 6 months manufacturer warranty for in-box accessories including batteries from the date of purchase', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10282', 'Samsung Galaxy A8 Star (Black, 64 GB)', ' 6 GB RAM | 64 GB ROM | 16.0 cm (6.3 inch) Display 24MP Rear Camera 3700 mAh Battery 1 year manufacturer warranty for device and 6 months manufacturer warranty for in-box accessories including batteries from the date of purchase', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10283', 'Samsung Galaxy J2 Core (Blue, 8 GB)', ' 1 GB RAM | 8 GB ROM | Expandable Upto 256 GB 12.7 cm (5 inch) quarter HD Display 8MP Rear Camera | 5MP Front Camera 2600 mAh Battery Exynos 7570 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10284', 'Samsung Galaxy J2 Core (Gold, 8 GB)', ' 1 GB RAM | 8 GB ROM | Expandable Upto 256 GB 12.7 cm (5 inch) quarter HD Display 8MP Rear Camera | 5MP Front Camera 2600 mAh Battery Exynos 7570 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10285', 'Samsung Galaxy J2 Core (Black, 8 GB)', ' 1 GB RAM | 8 GB ROM | Expandable Upto 256 GB 12.7 cm (5 inch) quarter HD Display 8MP Rear Camera | 5MP Front Camera 2600 mAh Battery Exynos 7570 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10286', 'Samsung Galaxy A8 Plus (Gold, 64 GB)', ' 6 GB RAM | 64 GB ROM | 15.24 cm (6 inch) Display 16MP Rear Camera 3500 mAh Battery 1 Year Warranty', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10287', 'Samsung On7 Pro (Black, 16 GB)', ' 2 GB RAM | 16 GB ROM | 13.97 cm (5.5 inch) Display 13MP Rear Camera | 5MP Front Camera 3000 mAh Battery Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10288', 'Samsung Galaxy Note 9 (Metallic Copper, 512 GB)', ' 8 GB RAM | 512 GB ROM | Expandable Upto 512 GB 16.26 cm (6.4 inch) Quad HD  Display 12MP   12MP | 8MP Front Camera 4000 mAh Lithium-ion Battery Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10289', 'Samsung Galaxy Note 9 (Midnight Black, 512 GB)', ' 8 GB RAM | 512 GB ROM | Expandable Upto 512 GB 16.26 cm (6.4 inch) Quad HD  Display 12MP   12MP | 8MP Front Camera 4000 mAh Lithium-ion Battery Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10290', 'Samsung Galaxy Note 9 (Ocean Blue, 128 GB)', ' 6 GB RAM | 128 GB ROM | Expandable Upto 512 GB 16.26 cm (6.4 inch) Quad HD  Display 12MP   12MP | 8MP Front Camera 4000 mAh Lithium-ion Battery Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10291', 'Samsung Galaxy Note 9 (Metallic Copper, 128 GB)', ' 6 GB RAM | 128 GB ROM | Expandable Upto 512 GB 16.26 cm (6.4 inch) Quad HD  Display 12MP   12MP | 8MP Front Camera 4000 mAh Lithium-ion Battery Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10292', 'Samsung Galaxy Note 9 (Ocean Blue, 512 GB)', ' 8 GB RAM | 512 GB ROM | Expandable Upto 512 GB 16.26 cm (6.4 inch) Quad HD  Display 12MP   12MP | 8MP Front Camera 4000 mAh Lithium-ion Battery Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10293', 'Samsung Galaxy Note 9 (Lavender Purple, 128 GB)', ' 6 GB RAM | 128 GB ROM | Expandable Upto 512 GB 16.26 cm (6.4 inch) Quad HD  Display 12MP   12MP | 8MP Front Camera 4000 mAh Lithium-ion Battery Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10294', 'Samsung Galaxy Note 9 (Midnight Black, 128 GB)', ' 6 GB RAM | 128 GB ROM | Expandable Upto 512 GB 16.26 cm (6.4 inch) Quad HD  Display 12MP   12MP | 8MP Front Camera 4000 mAh Lithium-ion Battery Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10295', 'Samsung Galaxy On8 (Black, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 256 GB 15.24 cm (6 inch) HD  Display 16MP   5MP | 16MP Front Camera 3500 mAh Lithium-ion Battery Qualcomm Snapdragon 450 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10296', 'Samsung Galaxy On8 (Blue, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 256 GB 15.24 cm (6 inch) HD  Display 16MP   5MP | 16MP Front Camera 3500 mAh Lithium-ion Battery Qualcomm Snapdragon 450 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10297', 'Samsung Galaxy A6  (Black, 64 GB)', ' 4 GB RAM | 64 GB ROM | 15.24 cm (6 inch) FHD  Display 16MP   5MP | 24MP Front Camera 3500 mAh Battery Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10298', 'Samsung Galaxy A6  (Blue, 64 GB)', ' 4 GB RAM | 64 GB ROM | 15.24 cm (6 inch) FHD  Display 16MP   5MP | 24MP Front Camera 3500 mAh Battery Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10299', 'Samsung Galaxy A6  (Gold, 64 GB)', ' 4 GB RAM | 64 GB ROM | 15.24 cm (6 inch) FHD  Display 16MP   5MP | 24MP Front Camera 3500 mAh Battery Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10300', 'Samsung Galaxy A6 (Black, 64 GB)', ' 4 GB RAM | 64 GB ROM | 14.22 cm (5.6 inch) Display 16MP Rear Camera | 16MP Front Camera 3000 mAh Battery Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10301', 'Samsung Galaxy A6 (Gold, 64 GB)', ' 4 GB RAM | 64 GB ROM | 14.22 cm (5.6 inch) Display 16MP Rear Camera | 16MP Front Camera 3000 mAh Battery Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10302', 'Samsung Galaxy A6 (Blue, 64 GB)', ' 4 GB RAM | 64 GB ROM | 14.22 cm (5.6 inch) Display 16MP Rear Camera | 16MP Front Camera 3000 mAh Battery Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10303', 'Samsung A6 (Gold, 32 GB)', ' 4 GB RAM | 32 GB ROM | 14.22 cm (5.6 inch) Display 16MP Rear Camera 3000 mAh Battery 1', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10304', 'Samsung Galaxy J8 (Blue, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 256 GB 15.24 cm (6 inch) HD  Display 16MP   5MP | 16MP Front Camera 3500 mAh Battery Qualcomm Snapdragon SDM450 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10305', 'Samsung Galaxy J8 (Black, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 256 GB 15.24 cm (6 inch) HD  Display 16MP   5MP | 16MP Front Camera 3500 mAh Battery Qualcomm Snapdragon SDM450 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10306', 'Samsung Galaxy J8 (Gold, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 256 GB 15.24 cm (6 inch) HD  Display 16MP   5MP | 16MP Front Camera 3500 mAh Battery Qualcomm Snapdragon SDM450 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10307', 'Samsung Galaxy On6 (Black, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 256 GB 14.22 cm (5.6 inch) HD  Display 13MP Rear Camera | 8MP Front Camera 3000 mAh Battery 1.6 GHz Exynos Octa Core Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10308', 'Samsung Galaxy On6 (Blue, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 256 GB 14.22 cm (5.6 inch) HD  Display 13MP Rear Camera | 8MP Front Camera 3000 mAh Battery 1.6 GHz Exynos Octa Core Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10309', 'Samsung Galaxy J4 (Blue, 32 GB)', ' 3 GB RAM | 32 GB ROM | Expandable Upto 256 GB 13.97 cm (5.5 inch) HD Display 13MP Rear Camera | 5MP Front Camera 3000 mAh Battery Exynos 7570 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10310', 'Samsung Galaxy J4 (Black, 32 GB)', ' 3 GB RAM | 32 GB ROM | Expandable Upto 256 GB 13.97 cm (5.5 inch) HD Display 13MP Rear Camera | 5MP Front Camera 3000 mAh Battery Exynos 7570 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10311', 'Samsung Galaxy J4 (Gold, 32 GB)', ' 3 GB RAM | 32 GB ROM | Expandable Upto 256 GB 13.97 cm (5.5 inch) HD Display 13MP Rear Camera | 5MP Front Camera 3000 mAh Battery Exynos 7570 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10312', 'Samsung Galaxy J4 (Gold, 16 GB)', ' 2 GB RAM | 16 GB ROM | Expandable Upto 256 GB 13.97 cm (5.5 inch) HD Display 13MP Rear Camera | 5MP Front Camera 3000 mAh Battery Exynos 7570 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10313', 'Samsung Galaxy J4 (Blue, 16 GB)', ' 2 GB RAM | 16 GB ROM | Expandable Upto 256 GB 13.97 cm (5.5 inch) HD Display 13MP Rear Camera | 5MP Front Camera 3000 mAh Battery Exynos 7570 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10314', 'Samsung Galaxy J7 Duo (Blue, 32 GB)', ' 4 GB RAM | 32 GB ROM | Expandable Upto 256 GB 13.97 cm (5.5 inch) HD Display 13MP   5MP | 8MP Front Camera 3000 mAh Battery Exynos 7884 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10315', 'Samsung Galaxy J4 (Black, 16 GB)', ' 2 GB RAM | 16 GB ROM | Expandable Upto 256 GB 13.97 cm (5.5 inch) HD Display 13MP Rear Camera | 5MP Front Camera 3000 mAh Battery Exynos 7570 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10316', 'Samsung Galaxy J6 (Gold, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 256 GB 14.22 cm (5.6 inch) HD  Display 13MP Rear Camera | 8MP Front Camera 3000 mAh Battery Exynos 7870 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10317', 'Samsung Galaxy J6 (Black, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 256 GB 14.22 cm (5.6 inch) HD  Display 13MP Rear Camera | 8MP Front Camera 3000 mAh Battery Exynos 7870 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10318', 'Samsung Galaxy J6 (Blue, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 256 GB 14.22 cm (5.6 inch) HD  Display 13MP Rear Camera | 8MP Front Camera 3000 mAh Battery Exynos 7870 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10319', 'Samsung Galaxy J6 (Blue, 32 GB)', ' 3 GB RAM | 32 GB ROM | Expandable Upto 256 GB 14.22 cm (5.6 inch) HD  Display 13MP Rear Camera | 8MP Front Camera 3000 mAh Battery Exynos 7870 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10320', 'Samsung Galaxy J6 (Black, 32 GB)', ' 3 GB RAM | 32 GB ROM | Expandable Upto 256 GB 14.22 cm (5.6 inch) HD  Display 13MP Rear Camera | 8MP Front Camera 3000 mAh Battery Exynos 7870 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10321', 'Samsung Galaxy J6 (Gold, 32 GB)', ' 3 GB RAM | 32 GB ROM | Expandable Upto 256 GB 14.22 cm (5.6 inch) HD  Display 13MP Rear Camera | 8MP Front Camera 3000 mAh Battery Exynos 7870 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10322', 'Samsung Guru FM Plus', ' NA ROM | 3.81 cm (1.5 inch) VGA Display 800 mAh Battery 1 Year Manufacturer Warranty', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10323', 'Samsung Guru Music 2', ' NA ROM | 5.08 cm (2 inch) NA Display 800 mAh Battery 1 Year Manufacturer Warranty', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10324', 'Samsung Metro XL', ' 64 MB RAM | 128 MB ROM | Expandable Upto 16 GB 7.11 cm (2.8 inch) QVGA Display 3.1MP Rear Camera | 2MP Front Camera 1200 mAh Li-Ion Battery 1 Year on Mobile', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10325', 'Samsung Guru 1200', ' NA ROM | 3.81 cm (1.5 inch) NA Display 800 mAh Battery 1 Year for Mobile ', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10326', 'Samsung Galaxy J2 2018 (Gold, 16 GB)', ' 2 GB RAM | 16 GB ROM | Expandable Upto 256 GB 12.7 cm (5 inch) Display 8MP Rear Camera | 5MP Front Camera 2600 mAh Battery Snapdragon 425 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10327', 'Samsung Galaxy J2 2018 (Black, 16 GB)', ' 2 GB RAM | 16 GB ROM | Expandable Upto 256 GB 12.7 cm (5 inch) Display 8MP Rear Camera | 5MP Front Camera 2600 mAh Battery Snapdragon 425 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10328', 'Samsung Galaxy J2 2018 (Pink, 16 GB)', ' 2 GB RAM | 16 GB ROM | Expandable Upto 256 GB 12.7 cm (5 inch) Display 8MP Rear Camera | 5MP Front Camera 2600 mAh Battery Snapdragon 425 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10329', 'Samsung Galaxy S9 Plus (Midnight Black, 256 GB)', ' 6 GB RAM | 256 GB ROM | 15.75 cm (6.2 inch) Full HD Display 12MP Rear Camera 3500 mAh Battery Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10330', 'Samsung Galaxy J7 Duo (Gold, 32 GB)', ' 4 GB RAM | 32 GB ROM | Expandable Upto 256 GB 13.97 cm (5.5 inch) HD Display 13MP   5MP | 8MP Front Camera 3000 mAh Battery Exynos 7884 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10331', 'Samsung Galaxy J7 Duo (Black, 32 GB)', ' 4 GB RAM | 32 GB ROM | Expandable Upto 256 GB 13.97 cm (5.5 inch) HD Display 13MP   5MP | 8MP Front Camera 3000 mAh Battery Exynos 7884 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10332', 'Samsung Galaxy S8 (Burgundy Red, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 256 GB 14.73 cm (5.8 inch) Quad HD  Display 12MP Rear Camera | 8MP Front Camera 3000 mAh Battery Exynos 8895 Octa Core 2.3GHz Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10333', 'Samsung Galaxy S9 (Midnight Black, 128 GB)', ' 4 GB RAM | 128 GB ROM | Expandable Upto 400 GB 14.73 cm (5.8 inch) Quad HD  Display 12MP Rear Camera | 8MP Front Camera 3000 mAh Battery Exynos 9810 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12');

-- --------------------------------------------------------

--
-- Table structure for table `state_type`
--

CREATE TABLE `state_type` (
  `state_id` int(20) NOT NULL,
  `state_type` varchar(20) DEFAULT NULL,
  `state_threshold` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `state_type`
--

INSERT INTO `state_type` (`state_id`, `state_type`, `state_threshold`) VALUES
(1, 'GREEN', 250),
(2, 'YELLOW', 100),
(3, 'RED', 10);

-- --------------------------------------------------------

--
-- Table structure for table `stock_master`
--

CREATE TABLE `stock_master` (
  `item_id` varchar(30) NOT NULL,
  `available_stock` int(20) DEFAULT NULL,
  `reserved_stock` int(20) DEFAULT NULL,
  `total_stock` int(20) DEFAULT NULL,
  `dead_stock` int(20) DEFAULT NULL,
  `state_id` int(20) NOT NULL,
  `preorder_level` int(20) DEFAULT 100,
  `reorder_level` int(20) DEFAULT NULL,
  `backorder_level` int(20) DEFAULT 100
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stock_master`
--

INSERT INTO `stock_master` (`item_id`, `available_stock`, `reserved_stock`, `total_stock`, `dead_stock`, `state_id`, `preorder_level`, `reorder_level`, `backorder_level`) VALUES
('10013', 500, 100, 400, 0, 1, 100, 200, 100),
('10014', 500, 100, 400, 0, 1, 100, 200, 100),
('10015', 210, 410, 400, 0, 1, 100, 200, 100),
('10016', 476, 100, 400, 0, 1, 100, 200, 100),
('10017', 499, 100, 400, 0, 1, 100, 200, 100),
('10018', 499, 100, 400, 0, 1, 100, 200, 100),
('10019', 499, 100, 400, 0, 1, 100, 200, 100),
('10020', 500, 100, 400, 0, 1, 100, 200, 100),
('10021', 500, 100, 400, 0, 1, 100, 200, 100),
('10022', 497, 100, 400, 0, 1, 100, 200, 100),
('10023', 500, 100, 400, 0, 1, 100, 200, 100),
('10024', 500, 100, 400, 0, 1, 100, 200, 100),
('10025', 500, 100, 400, 0, 1, 100, 200, 100),
('10026', 500, 100, 400, 0, 1, 100, 200, 100),
('10027', 500, 100, 400, 0, 1, 100, 200, 100),
('10028', 500, 100, 400, 0, 1, 100, 200, 100),
('10029', 500, 100, 400, 0, 1, 100, 200, 100),
('10030', 500, 100, 400, 0, 1, 100, 200, 100),
('10031', 500, 100, 400, 0, 1, 100, 200, 100),
('10046', 500, 100, 400, 0, 1, 100, 200, 100),
('10047', 500, 100, 400, 0, 1, 100, 200, 100),
('10048', 500, 100, 400, 0, 1, 100, 200, 100),
('10049', 500, 100, 400, 0, 1, 100, 200, 100),
('10050', 500, 100, 400, 0, 1, 100, 200, 100),
('10051', 500, 100, 400, 0, 1, 100, 200, 100),
('10052', 499, 100, 400, 0, 1, 100, 200, 100),
('10053', 500, 100, 400, 0, 1, 100, 200, 100),
('10054', 500, 100, 400, 0, 1, 100, 200, 100),
('10055', 500, 100, 400, 0, 1, 100, 200, 100),
('10056', 500, 100, 400, 0, 1, 100, 200, 100),
('10057', 500, 100, 400, 0, 1, 100, 200, 100),
('10058', 500, 100, 400, 0, 1, 100, 200, 100),
('10059', 500, 100, 400, 0, 1, 100, 200, 100),
('10060', 500, 100, 400, 0, 1, 100, 200, 100),
('10061', 500, 100, 400, 0, 1, 100, 200, 100),
('10062', 500, 100, 400, 0, 1, 100, 200, 100),
('10063', 500, 100, 400, 0, 1, 100, 200, 100),
('10064', 500, 100, 400, 0, 1, 100, 200, 100),
('10065', 500, 100, 400, 0, 1, 100, 200, 100),
('10066', 500, 100, 400, 0, 1, 100, 200, 100),
('10067', 500, 100, 400, 0, 1, 100, 200, 100),
('10068', 500, 100, 400, 0, 1, 100, 200, 100),
('10069', 500, 100, 400, 0, 1, 100, 200, 100),
('10070', 500, 100, 400, 0, 1, 100, 200, 100),
('10071', 500, 100, 400, 0, 1, 100, 200, 100),
('10072', 500, 100, 400, 0, 1, 100, 200, 100),
('10073', 500, 100, 400, 0, 1, 100, 200, 100),
('10074', 500, 100, 400, 0, 1, 100, 200, 100),
('10075', 500, 100, 400, 0, 1, 100, 200, 100),
('10076', 500, 100, 400, 0, 1, 100, 200, 100),
('10077', 500, 100, 400, 0, 1, 100, 200, 100),
('10078', 500, 100, 400, 0, 1, 100, 200, 100),
('10079', 500, 100, 400, 0, 1, 100, 200, 100),
('10080', 500, 100, 400, 0, 1, 100, 200, 100),
('10081', 500, 100, 400, 0, 1, 100, 200, 100),
('10082', 500, 100, 400, 0, 1, 100, 200, 100),
('10083', 500, 100, 400, 0, 1, 100, 200, 100),
('10084', 500, 100, 400, 0, 1, 100, 200, 100),
('10085', 500, 100, 400, 0, 1, 100, 200, 100),
('10086', 500, 100, 400, 0, 1, 100, 200, 100),
('10087', 500, 100, 400, 0, 1, 100, 200, 100),
('10088', 500, 100, 400, 0, 1, 100, 200, 100),
('10089', 500, 100, 400, 0, 1, 100, 200, 100),
('10090', 500, 100, 400, 0, 1, 100, 200, 100),
('10091', 500, 100, 400, 0, 1, 100, 200, 100),
('10092', 500, 100, 400, 0, 1, 100, 200, 100),
('10093', 500, 100, 400, 0, 1, 100, 200, 100),
('10094', 500, 100, 400, 0, 1, 100, 200, 100),
('10095', 500, 100, 400, 0, 1, 100, 200, 100),
('10096', 500, 100, 400, 0, 1, 100, 200, 100),
('10097', 500, 100, 400, 0, 1, 100, 200, 100),
('10098', 500, 100, 400, 0, 1, 100, 200, 100),
('10099', 500, 100, 400, 0, 1, 100, 200, 100),
('10100', 500, 100, 400, 0, 1, 100, 200, 100),
('10101', 500, 100, 400, 0, 1, 100, 200, 100),
('10102', 500, 100, 400, 0, 1, 100, 200, 100),
('10103', 500, 100, 400, 0, 1, 100, 200, 100),
('10104', 500, 100, 400, 0, 1, 100, 200, 100),
('10105', 500, 100, 400, 0, 1, 100, 200, 100),
('10106', 500, 100, 400, 0, 1, 100, 200, 100),
('10107', 500, 100, 400, 0, 1, 100, 200, 100),
('10108', 500, 100, 400, 0, 1, 100, 200, 100),
('10109', 500, 100, 400, 0, 1, 100, 200, 100),
('10110', 500, 100, 400, 0, 1, 100, 200, 100),
('10111', 500, 100, 400, 0, 1, 100, 200, 100),
('10112', 500, 100, 400, 0, 1, 100, 200, 100),
('10113', 500, 100, 400, 0, 1, 100, 200, 100),
('10114', 500, 100, 400, 0, 1, 100, 200, 100),
('10115', 500, 100, 400, 0, 1, 100, 200, 100),
('10116', 500, 100, 400, 0, 1, 100, 200, 100),
('10117', 500, 100, 400, 0, 1, 100, 200, 100),
('10118', 500, 100, 400, 0, 1, 100, 200, 100),
('10119', 500, 100, 400, 0, 1, 100, 200, 100),
('10120', 500, 100, 400, 0, 1, 100, 200, 100),
('10121', 500, 100, 400, 0, 1, 100, 200, 100),
('10122', 500, 100, 400, 0, 1, 100, 200, 100),
('10123', 500, 100, 400, 0, 1, 100, 200, 100),
('10124', 500, 100, 400, 0, 1, 100, 200, 100),
('10125', 500, 100, 400, 0, 1, 100, 200, 100),
('10126', 500, 100, 400, 0, 1, 100, 200, 100),
('10128', 500, 100, 400, 0, 1, 100, 200, 100),
('10129', 500, 100, 400, 0, 1, 100, 200, 100),
('10130', 500, 100, 400, 0, 1, 100, 200, 100),
('10131', 500, 100, 400, 0, 1, 100, 200, 100),
('10132', 500, 100, 400, 0, 1, 100, 200, 100),
('10133', 500, 100, 400, 0, 1, 100, 200, 100),
('10134', 500, 100, 400, 0, 1, 100, 200, 100),
('10135', 500, 100, 400, 0, 1, 100, 200, 100),
('10136', 500, 100, 400, 0, 1, 100, 200, 100),
('10137', 500, 100, 400, 0, 1, 100, 200, 100),
('10138', 500, 100, 400, 0, 1, 100, 200, 100),
('10139', 500, 100, 400, 0, 1, 100, 200, 100),
('10140', 500, 100, 400, 0, 1, 100, 200, 100),
('10141', 500, 100, 400, 0, 1, 100, 200, 100),
('10142', 500, 100, 400, 0, 1, 100, 200, 100),
('10143', 500, 100, 400, 0, 1, 100, 200, 100),
('10144', 500, 100, 400, 0, 1, 100, 200, 100),
('10145', 500, 100, 400, 0, 1, 100, 200, 100),
('10146', 500, 100, 400, 0, 1, 100, 200, 100),
('10147', 500, 100, 400, 0, 1, 100, 200, 100),
('10148', 500, 100, 400, 0, 1, 100, 200, 100),
('10149', 500, 100, 400, 0, 1, 100, 200, 100),
('10150', 500, 100, 400, 0, 1, 100, 200, 100),
('10151', 500, 100, 400, 0, 1, 100, 200, 100),
('10152', 500, 100, 400, 0, 1, 100, 200, 100),
('10153', 500, 100, 400, 0, 1, 100, 200, 100),
('10154', 500, 100, 400, 0, 1, 100, 200, 100),
('10155', 500, 100, 400, 0, 1, 100, 200, 100),
('10156', 500, 100, 400, 0, 1, 100, 200, 100),
('10157', 500, 100, 400, 0, 1, 100, 200, 100),
('10158', 500, 100, 400, 0, 1, 100, 200, 100),
('10159', 500, 100, 400, 0, 1, 100, 200, 100),
('10160', 500, 100, 400, 0, 1, 100, 200, 100),
('10161', 500, 100, 400, 0, 1, 100, 200, 100),
('10162', 500, 100, 400, 0, 1, 100, 200, 100),
('10163', 500, 100, 400, 0, 1, 100, 200, 100),
('10164', 500, 100, 400, 0, 1, 100, 200, 100),
('10165', 500, 100, 400, 0, 1, 100, 200, 100),
('10166', 500, 100, 400, 0, 1, 100, 200, 100),
('10167', 500, 100, 400, 0, 1, 100, 200, 100),
('10168', 500, 100, 400, 0, 1, 100, 200, 100),
('10169', 500, 100, 400, 0, 1, 100, 200, 100),
('10170', 500, 100, 400, 0, 1, 100, 200, 100),
('10171', 500, 100, 400, 0, 1, 100, 200, 100),
('10172', 500, 100, 400, 0, 1, 100, 200, 100),
('10173', 500, 100, 400, 0, 1, 100, 200, 100),
('10174', 500, 100, 400, 0, 1, 100, 200, 100),
('10175', 500, 100, 400, 0, 1, 100, 200, 100),
('10176', 500, 100, 400, 0, 1, 100, 200, 100),
('10177', 500, 100, 400, 0, 1, 100, 200, 100),
('10178', 500, 100, 400, 0, 1, 100, 200, 100),
('10179', 500, 100, 400, 0, 1, 100, 200, 100),
('10180', 500, 100, 400, 0, 1, 100, 200, 100),
('10181', 500, 100, 400, 0, 1, 100, 200, 100),
('10222', 500, 100, 400, 0, 1, 100, 200, 100),
('10223', 500, 100, 400, 0, 1, 100, 200, 100),
('10224', 500, 100, 400, 0, 1, 100, 200, 100),
('10225', 500, 100, 400, 0, 1, 100, 200, 100),
('10226', 500, 100, 400, 0, 1, 100, 200, 100),
('10227', 500, 100, 400, 0, 1, 100, 200, 100),
('10228', 500, 100, 400, 0, 1, 100, 200, 100),
('10229', 500, 100, 400, 0, 1, 100, 200, 100),
('10230', 500, 100, 400, 0, 1, 100, 200, 100),
('10231', 500, 100, 400, 0, 1, 100, 200, 100),
('10232', 500, 100, 400, 0, 1, 100, 200, 100),
('10233', 500, 100, 400, 0, 1, 100, 200, 100),
('10234', 500, 100, 400, 0, 1, 100, 200, 100),
('10235', 500, 100, 400, 0, 1, 100, 200, 100),
('10236', 500, 100, 400, 0, 1, 100, 200, 100),
('10237', 500, 100, 400, 0, 1, 100, 200, 100),
('10238', 500, 100, 400, 0, 1, 100, 200, 100),
('10239', 500, 100, 400, 0, 1, 100, 200, 100),
('10240', 500, 100, 400, 0, 1, 100, 200, 100),
('10241', 500, 100, 400, 0, 1, 100, 200, 100),
('10242', 500, 100, 400, 0, 1, 100, 200, 100),
('10243', 500, 100, 400, 0, 1, 100, 200, 100),
('10244', 500, 100, 400, 0, 1, 100, 200, 100),
('10245', 500, 100, 400, 0, 1, 100, 200, 100),
('10246', 500, 100, 400, 0, 1, 100, 200, 100),
('10247', 500, 100, 400, 0, 1, 100, 200, 100),
('10248', 500, 100, 400, 0, 1, 100, 200, 100),
('10249', 500, 100, 400, 0, 1, 100, 200, 100),
('10250', 500, 100, 400, 0, 1, 100, 200, 100),
('10251', 500, 100, 400, 0, 1, 100, 200, 100),
('10252', 500, 100, 400, 0, 1, 100, 200, 100),
('10253', 500, 100, 400, 0, 1, 100, 200, 100),
('10254', 500, 100, 400, 0, 1, 100, 200, 100),
('10255', 500, 100, 400, 0, 1, 100, 200, 100),
('10256', 500, 100, 400, 0, 1, 100, 200, 100),
('10257', 500, 100, 400, 0, 1, 100, 200, 100),
('10258', 500, 100, 400, 0, 1, 100, 200, 100),
('10259', 500, 100, 400, 0, 1, 100, 200, 100),
('10260', 500, 100, 400, 0, 1, 100, 200, 100),
('10261', 500, 100, 400, 0, 1, 100, 200, 100),
('10262', 500, 100, 400, 0, 1, 100, 200, 100),
('10263', 500, 100, 400, 0, 1, 100, 200, 100),
('10264', 500, 100, 400, 0, 1, 100, 200, 100),
('10265', 500, 100, 400, 0, 1, 100, 200, 100),
('10266', 500, 100, 400, 0, 1, 100, 200, 100),
('10267', 500, 100, 400, 0, 1, 100, 200, 100),
('10268', 500, 100, 400, 0, 1, 100, 200, 100),
('10269', 500, 100, 400, 0, 1, 100, 200, 100),
('10270', 500, 100, 400, 0, 1, 100, 200, 100),
('10271', 500, 100, 400, 0, 1, 100, 200, 100),
('10272', 500, 100, 400, 0, 1, 100, 200, 100),
('10273', 500, 100, 400, 0, 1, 100, 200, 100),
('10274', 500, 100, 400, 0, 1, 100, 200, 100),
('10275', 500, 100, 400, 0, 1, 100, 200, 100),
('10276', 500, 100, 400, 0, 1, 100, 200, 100),
('10277', 500, 100, 400, 0, 1, 100, 200, 100),
('10278', 500, 100, 400, 0, 1, 100, 200, 100),
('10279', 500, 100, 400, 0, 1, 100, 200, 100),
('10280', 500, 100, 400, 0, 1, 100, 200, 100),
('10281', 500, 100, 400, 0, 1, 100, 200, 100),
('10282', 500, 100, 400, 0, 1, 100, 200, 100),
('10283', 500, 100, 400, 0, 1, 100, 200, 100),
('10284', 500, 100, 400, 0, 1, 100, 200, 100),
('10285', 500, 100, 400, 0, 1, 100, 200, 100),
('10286', 500, 100, 400, 0, 1, 100, 200, 100),
('10287', 500, 100, 400, 0, 1, 100, 200, 100),
('10288', 500, 100, 400, 0, 1, 100, 200, 100),
('10289', 500, 100, 400, 0, 1, 100, 200, 100),
('10290', 500, 100, 400, 0, 1, 100, 200, 100),
('10291', 500, 100, 400, 0, 1, 100, 200, 100),
('10292', 500, 100, 400, 0, 1, 100, 200, 100),
('10293', 500, 100, 400, 0, 1, 100, 200, 100),
('10294', 500, 100, 400, 0, 1, 100, 200, 100),
('10295', 500, 100, 400, 0, 1, 100, 200, 100),
('10296', 500, 100, 400, 0, 1, 100, 200, 100),
('10297', 500, 100, 400, 0, 1, 100, 200, 100),
('10298', 500, 100, 400, 0, 1, 100, 200, 100),
('10299', 500, 100, 400, 0, 1, 100, 200, 100),
('10300', 500, 100, 400, 0, 1, 100, 200, 100),
('10301', 500, 100, 400, 0, 1, 100, 200, 100),
('10302', 500, 100, 400, 0, 1, 100, 200, 100),
('10303', 500, 100, 400, 0, 1, 100, 200, 100),
('10304', 500, 100, 400, 0, 1, 100, 200, 100),
('10305', 500, 100, 400, 0, 1, 100, 200, 100),
('10306', 500, 100, 400, 0, 1, 100, 200, 100),
('10307', 500, 100, 400, 0, 1, 100, 200, 100),
('10308', 500, 100, 400, 0, 1, 100, 200, 100),
('10309', 500, 100, 400, 0, 1, 100, 200, 100),
('10310', 500, 100, 400, 0, 1, 100, 200, 100),
('10311', 500, 100, 400, 0, 1, 100, 200, 100),
('10312', 500, 100, 400, 0, 1, 100, 200, 100),
('10313', 500, 100, 400, 0, 1, 100, 200, 100),
('10314', 500, 100, 400, 0, 1, 100, 200, 100),
('10315', 500, 100, 400, 0, 1, 100, 200, 100),
('10316', 500, 100, 400, 0, 1, 100, 200, 100),
('10317', 500, 100, 400, 0, 1, 100, 200, 100),
('10318', 500, 100, 400, 0, 1, 100, 200, 100),
('10319', 500, 100, 400, 0, 1, 100, 200, 100),
('10320', 500, 100, 400, 0, 1, 100, 200, 100),
('10321', 500, 100, 400, 0, 1, 100, 200, 100),
('10322', 500, 100, 400, 0, 1, 100, 200, 100),
('10323', 500, 100, 400, 0, 1, 100, 200, 100),
('10324', 500, 100, 400, 0, 1, 100, 200, 100),
('10325', 500, 100, 400, 0, 1, 100, 200, 100),
('10326', 500, 100, 400, 0, 1, 100, 200, 100),
('10327', 500, 100, 400, 0, 1, 100, 200, 100),
('10328', 500, 100, 400, 0, 1, 100, 200, 100),
('10329', 500, 100, 400, 0, 1, 100, 200, 100),
('10330', 500, 100, 400, 0, 1, 100, 200, 100),
('10331', 500, 100, 400, 0, 1, 100, 200, 100),
('10332', 500, 100, 400, 0, 1, 100, 200, 100),
('10333', 500, 100, 400, 0, 1, 100, 200, 100);

-- --------------------------------------------------------

--
-- Table structure for table `unit_master`
--

CREATE TABLE `unit_master` (
  `unit_id` int(10) NOT NULL,
  `unit_of_measure` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `unit_master`
--

INSERT INTO `unit_master` (`unit_id`, `unit_of_measure`) VALUES
(1, 'nos');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `item_master`
--
ALTER TABLE `item_master`
  ADD PRIMARY KEY (`item_id`),
  ADD KEY `unit` (`unit_id`);

--
-- Indexes for table `state_type`
--
ALTER TABLE `state_type`
  ADD PRIMARY KEY (`state_id`);

--
-- Indexes for table `stock_master`
--
ALTER TABLE `stock_master`
  ADD PRIMARY KEY (`item_id`),
  ADD KEY `status` (`state_id`);

--
-- Indexes for table `unit_master`
--
ALTER TABLE `unit_master`
  ADD PRIMARY KEY (`unit_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `unit_master`
--
ALTER TABLE `unit_master`
  MODIFY `unit_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `item_master`
--
ALTER TABLE `item_master`
  ADD CONSTRAINT `unit` FOREIGN KEY (`unit_id`) REFERENCES `unit_master` (`unit_id`);

--
-- Constraints for table `stock_master`
--
ALTER TABLE `stock_master`
  ADD CONSTRAINT `itm` FOREIGN KEY (`item_id`) REFERENCES `item_master` (`item_id`),
  ADD CONSTRAINT `status` FOREIGN KEY (`state_id`) REFERENCES `state_type` (`state_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
