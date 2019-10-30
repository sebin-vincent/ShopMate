-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 04, 2019 at 06:22 AM
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
-- Database: `inventory_db_final`
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
  `tax_slab_id` int(10) DEFAULT NULL,
  `unit_id` int(10) DEFAULT NULL,
  `start_datetime` datetime NOT NULL DEFAULT current_timestamp(),
  `end_datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item_master`
--

INSERT INTO `item_master` (`item_id`, `item_name`, `item_description`, `hsn_code`, `tax_slab_id`, `unit_id`, `start_datetime`, `end_datetime`) VALUES
('10013', 'Redmi Note 6 Pro (Black, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 256 GB 15.9 cm (6.26 inch) FHD  Display 12MP   5MP | 20MP   2MP Dual Front Camera 4000 mAh Li-polymer Battery Qualcomm Snapdragon 636 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10014', 'Redmi Note 6 Pro (Blue, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 256 GB 15.9 cm (6.26 inch) FHD  Display 12MP   5MP | 20MP   2MP Dual Front Camera 4000 mAh Li-polymer Battery Qualcomm Snapdragon 636 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10015', 'Redmi Note 6 Pro (Rose Gold, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 256 GB 15.9 cm (6.26 inch) FHD  Display 12MP   5MP | 20MP   2MP Dual Front Camera 4000 mAh Li-polymer Battery Qualcomm Snapdragon 636 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10016', 'Redmi 6 (Rose Gold, 32 GB)', ' 3 GB RAM | 32 GB ROM | Expandable Upto 256 GB 13.84 cm (5.45 inch) HD  Display 12MP   5MP | 5MP Front Camera 3000 mAh Lithium-polymer Battery 2.0 GHz Mediatek P22 Octacore Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10017', 'Redmi Note 6 Pro (Black, 64 GB)', ' 6 GB RAM | 64 GB ROM | Expandable Upto 256 GB 15.9 cm (6.26 inch) FHD  Display 12MP   5MP | 20MP   2MP Dual Front Camera 4000 mAh Li-polymer Battery Qualcomm Snapdragon 636 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10018', 'Redmi 6 (Black, 64 GB)', ' 3 GB RAM | 64 GB ROM | Expandable Upto 256 GB 13.84 cm (5.45 inch) HD  Display 12MP   5MP | 5MP Front Camera 3000 mAh Lithium-polymer Battery 2.0 GHz Mediatek P22 Octacore Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10019', 'Redmi Note 5 Pro (Black, 64 GB)', ' 6 GB RAM | 64 GB ROM | Expandable Upto 128 GB 15.21 cm (5.99 inch) Full HD  Display 12MP   5MP | 20MP Front Camera 4000 mAh Li Polymer Battery Qualcomm Snapdragon 636 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10020', 'Redmi 6 (Black, 32 GB)', ' 3 GB RAM | 32 GB ROM | Expandable Upto 256 GB 13.84 cm (5.45 inch) HD  Display 12MP   5MP | 5MP Front Camera 3000 mAh Lithium-polymer Battery 2.0 GHz Mediatek P22 Octacore Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10021', 'Redmi 6 (Blue, 32 GB)', ' 3 GB RAM | 32 GB ROM | Expandable Upto 256 GB 13.84 cm (5.45 inch) HD  Display 12MP   5MP | 5MP Front Camera 3000 mAh Lithium-polymer Battery 2.0 GHz Mediatek P22 Octacore Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10022', 'Redmi 6 (Gold, 64 GB)', ' 3 GB RAM | 64 GB ROM | Expandable Upto 256 GB 13.84 cm (5.45 inch) HD  Display 12MP   5MP | 5MP Front Camera 3000 mAh Lithium-polymer Battery 2.0 GHz Mediatek P22 Octacore Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10023', 'Redmi 6 (Rose Gold, 64 GB)', ' 3 GB RAM | 64 GB ROM | Expandable Upto 256 GB 13.84 cm (5.45 inch) HD  Display 12MP   5MP | 5MP Front Camera 3000 mAh Lithium-polymer Battery 2.0 GHz Mediatek P22 Octacore Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10024', 'Redmi Note 6 Pro (Red, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 256 GB 15.9 cm (6.26 inch) FHD  Display 12MP   5MP | 20MP   2MP Dual Front Camera 4000 mAh Li-polymer Battery Qualcomm Snapdragon 636 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10025', 'Redmi Note 5 Pro (Gold, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 128 GB 15.21 cm (5.99 inch) Full HD  Display 12MP   5MP | 20MP Front Camera 4000 mAh Li Polymer Battery Qualcomm Snapdragon 636 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10026', 'Redmi 6 (Gold, 32 GB)', ' 3 GB RAM | 32 GB ROM | Expandable Upto 256 GB 13.84 cm (5.45 inch) HD  Display 12MP   5MP | 5MP Front Camera 3000 mAh Lithium-polymer Battery 2.0 GHz Mediatek P22 Octacore Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10027', 'Redmi 6 (Blue, 64 GB)', ' 3 GB RAM | 64 GB ROM | Expandable Upto 256 GB 13.84 cm (5.45 inch) HD  Display 12MP   5MP | 5MP Front Camera 3000 mAh Lithium-polymer Battery 2.0 GHz Mediatek P22 Octacore Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10028', 'Redmi Note 6 Pro (Blue, 64 GB)', ' 6 GB RAM | 64 GB ROM | Expandable Upto 256 GB 15.9 cm (6.26 inch) FHD  Display 12MP   5MP | 20MP   2MP Dual Front Camera 4000 mAh Li-polymer Battery Qualcomm Snapdragon 636 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10029', 'Redmi Note 5 Pro (Black, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 128 GB 15.21 cm (5.99 inch) Full HD  Display 12MP   5MP | 20MP Front Camera 4000 mAh Li Polymer Battery Qualcomm Snapdragon 636 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10030', 'Redmi Note 6 Pro (Red, 64 GB)', ' 6 GB RAM | 64 GB ROM | Expandable Upto 256 GB 15.9 cm (6.26 inch) FHD  Display 12MP   5MP | 20MP   2MP Dual Front Camera 4000 mAh Li-polymer Battery Qualcomm Snapdragon 636 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10031', 'Redmi Note 6 Pro (Rose Gold, 64 GB)', ' 6 GB RAM | 64 GB ROM | Expandable Upto 256 GB 15.9 cm (6.26 inch) FHD  Display 12MP   5MP | 20MP   2MP Dual Front Camera 4000 mAh Li-polymer Battery Qualcomm Snapdragon 636 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10046', 'Redmi 6 Pro (Lake Blue, 32 GB)', ' 3 GB RAM | 32 GB ROM | Expandable Upto 256 GB 14.83 cm (5.84 inch) FHD  Display 12MP   5MP | 5MP Front Camera 4000 mAh Battery Qualcomm Snapdragon 625 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Battery and Accessories', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10047', 'Mi A2 (Blue/Lake Blue, 64 GB)', ' 4 GB RAM | 64 GB ROM | 15.21 cm (5.99 inch) FHD  Display 20MP   12MP | 20MP Front Camera 3010 mAh Battery Qualcomm Snapdragon 660 Octacore Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Battery and Accessories', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10048', 'Mi Max 2 (Black, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 128 GB 16.36 cm (6.44 inch) Full HD Display 12MP Rear Camera | 5MP Front Camera 5300 mAh Li-Polymer Battery Qualcomm Snapdragon 625 Octa Core 2 Ghz Processor Brand Warranty of 1 Year Available for Mobile', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10049', 'Redmi 5 (Black, 32 GB)', ' 3 GB RAM | 32 GB ROM | Expandable Upto 128 GB 14.48 cm (5.7 inch) HD  Display 12MP Rear Camera | 5MP Front Camera 3300 mAh Battery Qualcomm Snapdragon 450 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10050', 'Redmi 6 Pro (Red, 32 GB)', ' 3 GB RAM | 32 GB ROM | Expandable Upto 256 GB 14.83 cm (5.84 inch) FHD  Display 12MP   5MP | 5MP Front Camera 4000 mAh Battery Qualcomm Snapdragon 625 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Battery and Accessories', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10051', 'Redmi Y2 (Gold, 32 GB)', ' 3 GB RAM | 32 GB ROM | 15.21 cm (5.99 inch) Display 12MP Rear Camera | 16MP Front Camera 3080 mAh Battery 1', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10052', 'Redmi Note 5 Pro (Rose Gold, 64 GB)', ' 6 GB RAM | 64 GB ROM | Expandable Upto 128 GB 15.21 cm (5.99 inch) Full HD  Display 12MP   5MP | 20MP Front Camera 4000 mAh Li Polymer Battery Qualcomm Snapdragon 636 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10053', 'Redmi Note 5 (Gold, 32 GB)', ' 3 GB RAM | 32 GB ROM | Expandable Upto 128 GB 15.21 cm (5.99 inch) Full HD  Display 12MP Rear Camera | 5MP Front Camera 4000 mAh Li Polymer Battery Qualcomm Snapdragon 625 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10054', 'Mi A2 (Red, 64 GB)', ' 4 GB RAM | 64 GB ROM | 15.21 cm (5.99 inch) FHD  Display 20MP   12MP | 20MP Front Camera 3010 mAh Battery Qualcomm Snapdragon 660 Octacore Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Battery and Accessories', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10055', 'Redmi 6 Pro (Lake Blue, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 256 GB 14.83 cm (5.84 inch) FHD  Display 12MP   5MP | 5MP Front Camera 4000 mAh Battery Qualcomm Snapdragon 625 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Battery and Accessories', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10056', 'Redmi 6 Pro (Gold, 32 GB)', ' 3 GB RAM | 32 GB ROM | Expandable Upto 256 GB 14.83 cm (5.84 inch) FHD  Display 12MP   5MP | 5MP Front Camera 4000 mAh Battery Qualcomm Snapdragon 625 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Battery and Accessories', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10057', 'Redmi 6 Pro (Black, 64 GB)', ' 4 GB RAM | 64 GB ROM | 14.83 cm (5.84 inch) Display 12MP Rear Camera 4000 mAh Battery 12 months', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10058', 'Redmi Y2 (Blue, 32 GB)', ' 3 GB RAM | 32 GB ROM | 15.21 cm (5.99 inch) Display 12MP Rear Camera | 16MP Front Camera 3080 mAh Battery 1 Year Warranty', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10059', 'Redmi Y2 (Rose Gold, 32 GB)', ' 3 GB RAM | 32 GB ROM | 15.21 cm (5.99 inch) Display 12MP Rear Camera | 16MP Front Camera 3080 mAh Battery 1 Year Warranty', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10060', 'Redmi Note 5 (Black, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 128 GB 15.21 cm (5.99 inch) Full HD  Display 12MP Rear Camera | 5MP Front Camera 4000 mAh Li Polymer Battery Qualcomm Snapdragon 625 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10061', 'Redmi Y2 (Black, 32 GB)', ' 3 GB RAM | 32 GB ROM | 15.21 cm (5.99 inch) Display 12MP Rear Camera 3080 mAh Battery 1 Year Warranty', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10062', 'Mi A2 (Black, 128 GB)', ' 6 GB RAM | 128 GB ROM | 15.21 cm (5.99 inch) Display 20MP Rear Camera 3010 mAh Battery 1 Year Warranty', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10063', 'Redmi 6 Pro (Black, 32 GB)', ' 3 GB RAM | 32 GB ROM | Expandable Upto 256 GB 14.83 cm (5.84 inch) FHD  Display 12MP   5MP | 5MP Front Camera 4000 mAh Battery Qualcomm Snapdragon 625 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Battery and Accessories', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10064', 'Redmi 5 (Black, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 128 GB 14.48 cm (5.7 inch) HD  Display 12MP Rear Camera | 5MP Front Camera 3300 mAh Battery Qualcomm Snapdragon 450 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10065', 'Redmi 6 Pro (Gold, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 256 GB 14.83 cm (5.84 inch) FHD  Display 12MP   5MP | 5MP Front Camera 4000 mAh Battery Qualcomm Snapdragon 625 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Battery and Accessories', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10066', 'Redmi 5 (Gold, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 128 GB 14.48 cm (5.7 inch) HD  Display 12MP Rear Camera | 5MP Front Camera 3300 mAh Battery Qualcomm Snapdragon 450 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10067', 'Redmi 5 (Lake Blue, 16 GB)', ' 2 GB RAM | 16 GB ROM | Expandable Upto 128 GB 14.48 cm (5.7 inch) HD  Display 12MP Rear Camera | 5MP Front Camera 3300 mAh Battery Qualcomm Snapdragon 450 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10068', 'Redmi 5 (Rose Gold, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 128 GB 14.48 cm (5.7 inch) HD  Display 12MP Rear Camera | 5MP Front Camera 3300 mAh Battery Qualcomm Snapdragon 450 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10069', 'Mi Mix 2 (Black, 128 GB)', ' 6 GB RAM | 128 GB ROM | 15.21 cm (5.99 inch) Full HD  Display 12MP Rear Camera | 5MP Front Camera 3400 mAh Li-polymer Battery Qualcomm Snapdragon 835 Octa Core 2.5 GHz Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10070', 'Redmi 5 (Gold, 32 GB)', ' 3 GB RAM | 32 GB ROM | Expandable Upto 128 GB 14.48 cm (5.7 inch) HD  Display 12MP Rear Camera | 5MP Front Camera 3300 mAh Battery Qualcomm Snapdragon 450 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10071', 'Redmi Y2 (Black, 32 GB)', ' 3 GB RAM | 32 GB ROM | 15.21 cm (5.99 inch) Display 12MP Rear Camera 3080 mAh Battery 1 Year Warranty', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10072', 'Mi A2 (Black, 64 GB)', ' 4 GB RAM | 64 GB ROM | 15.21 cm (5.99 inch) FHD  Display 20MP   12MP | 20MP Front Camera 3010 mAh Battery Qualcomm Snapdragon 660 Octacore Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Battery and Accessories', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10073', 'Redmi Y1 lite (Rose Gold, 16 GB)', ' 2 GB RAM | 16 GB ROM | Expandable Upto 128 GB 13.97 cm (5.5 inch) HD Display 13MP Rear Camera | 5MP Front Camera 3080 mAh Battery Snapdragon 425 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10074', 'Redmi 5A (Blue, 32 GB)', ' 3 GB RAM | 32 GB ROM | Expandable Upto 128 GB 12.7 cm (5 inch) HD Display 13MP Rear Camera | 5MP Front Camera 3000 mAh Li-polymer Battery Qualcomm Snapdragon 425 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10075', 'Redmi 6 Pro (Gold, 32 GB)', ' 3 GB RAM | 32 GB ROM | Expandable Upto 256 GB 14.83 cm (5.84 inch) FHD  Display 12MP   5MP | 5MP Front Camera 4000 mAh Battery Qualcomm Snapdragon 625 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Battery and Accessories', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10076', 'Redmi 5A (Gold, 32 GB)', ' 3 GB RAM | 32 GB ROM | Expandable Upto 128 GB 12.7 cm (5 inch) HD Display 13MP Rear Camera | 5MP Front Camera 3000 mAh Li-polymer Battery Qualcomm Snapdragon 425 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10077', 'Redmi Y2 (Blue, 64 GB)', ' 4 GB RAM | 64 GB ROM | 15.21 cm (5.99 inch) Display 12MP Rear Camera | 16MP Front Camera 3080 mAh Battery 1 Year Warranty', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10078', 'Redmi 6A (Blue, 32 GB)', ' 2 GB RAM | 32 GB ROM | Expandable Upto 128 GB 13.84 cm (5.45 inch) HD Display 13MP Rear Camera 3000 mAh Battery Mediateck Processor 1 Year Manufacturer Warranty', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10079', 'Redmi Y2 (Black, 64 GB)', ' 4 GB RAM | 64 GB ROM | 15.21 cm (5.99 inch) HD Display 12MP Rear Camera | 16MP Front Camera 3080 mAh Battery 1 Year', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10080', 'Mi A2 (Red, 128 GB)', ' 6 GB RAM | 128 GB ROM | 15.21 cm (5.99 inch) Display 20MP Rear Camera 3010 mAh Battery 1 Year', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10081', 'Redmi 6 Pro (Black, 64 GB)', ' 4 GB RAM | 64 GB ROM | 14.83 cm (5.84 inch) Display 12MP Rear Camera 4000 mAh Battery 12 months', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10082', 'Redmi Note 5 (Gold, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 128 GB 15.21 cm (5.99 inch) Full HD  Display 12MP Rear Camera | 5MP Front Camera 4000 mAh Li Polymer Battery Qualcomm Snapdragon 625 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10083', 'Redmi 5 (Lake Blue, 32 GB)', ' 3 GB RAM | 32 GB ROM | Expandable Upto 128 GB 14.48 cm (5.7 inch) HD  Display 12MP Rear Camera | 5MP Front Camera 3300 mAh Battery Qualcomm Snapdragon 450 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10084', 'Redmi Note 5 (Rose Gold, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 128 GB 15.21 cm (5.99 inch) Full HD  Display 12MP Rear Camera | 5MP Front Camera 4000 mAh Li Polymer Battery Qualcomm Snapdragon 625 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10085', 'Redmi 6 Pro (Black, 32 GB)', ' 3 GB RAM | 32 GB ROM | Expandable Upto 256 GB 14.83 cm (5.84 inch) FHD  Display 12MP   5MP | 5MP Front Camera 4000 mAh Battery Qualcomm Snapdragon 625 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Battery and Accessories', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10086', 'Mi 4i (White, 16 GB)', ' 2 GB RAM | 16 GB ROM | 12.7 cm (5 inch) Full HD Display 13MP Rear Camera | 5MP Front Camera 3030 mAh Li-ion Polymer Battery 2nd-gen Snapdragon 615 64-bit octa-core Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10087', 'Mi 4i (Grey, 16 GB)', ' 2 GB RAM | 16 GB ROM | 12.7 cm (5 inch) Full HD Display 13MP Rear Camera | 5MP Front Camera 3030 mAh Li-ion Polymer Battery qualcomm 2nd-gen Snapdragon 615 64-bit octa-core Octa Core 1.7GHz Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10088', 'Redmi 6 Pro (Red, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 256 GB 14.83 cm (5.84 inch) FHD  Display 12MP   5MP | 5MP Front Camera 4000 mAh Battery Qualcomm Snapdragon 625 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Battery and Accessories', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10089', 'Mi A1 (Gold, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 128 GB 13.97 cm (5.5 inch) Full HD Display 12MP   12MP | 5MP Front Camera 3080 mAh Li-polymer Battery Qualcomm Snapdragon 625 64 bit Octa Core 2GHz Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10090', 'Mi A1 (Rose Gold, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 128 GB 13.97 cm (5.5 inch) Full HD Display 12MP   12MP | 5MP Front Camera 3080 mAh Li-polymer Battery Qualcomm Snapdragon 625 64 bit Octa Core 2GHz Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10091', 'Mi A1 (Black, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 128 GB 13.97 cm (5.5 inch) Full HD Display 12MP   12MP | 5MP Front Camera 3080 mAh Li-polymer Battery Qualcomm Snapdragon 625 64 bit Octa Core 2GHz Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10092', 'Redmi 5 (Black, 16 GB)', ' 2 GB RAM | 16 GB ROM | Expandable Upto 128 GB 14.48 cm (5.7 inch) HD  Display 12MP Rear Camera | 5MP Front Camera 3300 mAh Battery Qualcomm Snapdragon 450 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10093', 'MI3 (Metallic Grey, 16 GB)', ' 2 GB RAM | 16 GB ROM | 12.7 cm (5 inch) Full HD Display 13MP Rear Camera | 2MP Front Camera 3050 mAh Li-Ion Battery qualcomm Qualcomm Snapdragon 800 8274AB Quad Core 2.3GHz Processor 1 Year for Mobile ', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10094', 'Realme C1 (Navy Blue, 32 GB)', ' 3 GB RAM | 32 GB ROM | Expandable Upto 256 GB 15.75 cm (6.2 inch) HD  Display 13MP   2MP | 5MP Front Camera 4230 mAh Li-ion Battery Qualcomm Snapdragon 450 Octa Core 1.8 GHz Processor 2019 Edition Face Unlock Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10095', 'Realme C1 (Mirror Black, 32 GB)', ' 2 GB RAM | 32 GB ROM | Expandable Upto 256 GB 15.75 cm (6.2 inch) HD  Display 13MP   2MP | 5MP Front Camera 4230 mAh Li-ion Battery Qualcomm Snapdragon 450 Octa Core 1.8 GHz Processor 2019 Edition Face Unlock Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10096', 'Realme C1 (Mirror Black, 32 GB)', ' 3 GB RAM | 32 GB ROM | Expandable Upto 256 GB 15.75 cm (6.2 inch) HD  Display 13MP   2MP | 5MP Front Camera 4230 mAh Li-ion Battery Qualcomm Snapdragon 450 Octa Core 1.8 GHz Processor 2019 Edition Face Unlock Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10097', 'Realme C1 (Mirror Black, 16 GB)', ' 2 GB RAM | 16 GB ROM | Expandable Upto 256 GB 15.75 cm (6.2 inch) HD  Display 13MP   2MP | 5MP Front Camera 4230 mAh Li-ion Battery Qualcomm Snapdragon 450 Octa Core 1.8 GHz Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10098', 'Realme 2 (Diamond Black, 32 GB)', ' 3 GB RAM | 32 GB ROM | Expandable Upto 256 GB 15.75 cm (6.2 inch) HD  Display 13MP   2MP | 8MP Front Camera 4230 mAh Li-ion Battery Qualcomm Snapdragon 450 Octa Core 1.8 GHz Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10099', 'Realme 2 Pro (Ice Lake, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 256 GB 16.0 cm (6.3 inch) FHD  Display 16MP   2MP | 16MP Front Camera 3500 mAh Li-ion Battery Qualcomm Snapdragon 660 Octa Core 2.0GHz AIE Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10100', 'Realme 2 Pro (Blue Ocean, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 256 GB 16.0 cm (6.3 inch) FHD  Display 16MP   2MP | 16MP Front Camera 3500 mAh Li-ion Battery Qualcomm Snapdragon 660 Octa Core 2.0GHz AIE Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10101', 'Realme 2 Pro (Black Sea, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 256 GB 16.0 cm (6.3 inch) FHD  Display 16MP   2MP | 16MP Front Camera 3500 mAh Li-ion Battery Qualcomm Snapdragon 660 Octa Core 2.0GHz AIE Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10102', 'Realme 2 Pro (Blue Ocean, 64 GB)', ' 6 GB RAM | 64 GB ROM | Expandable Upto 256 GB 16.0 cm (6.3 inch) FHD  Display 16MP   2MP | 16MP Front Camera 3500 mAh Li-ion Battery Qualcomm Snapdragon 660 Octa Core 2.0GHz AIE Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10103', 'Realme 2 Pro (Black Sea, 64 GB)', ' 6 GB RAM | 64 GB ROM | Expandable Upto 256 GB 16.0 cm (6.3 inch) FHD  Display 16MP   2MP | 16MP Front Camera 3500 mAh Li-ion Battery Qualcomm Snapdragon 660 Octa Core 2.0GHz AIE Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10104', 'Realme U1 (Fiery Gold, 32 GB)', ' 3 GB RAM | 32 GB ROM | 16.0 cm (6.3 inch) Display 13MP Rear Camera 3500 mAh Battery 1 year manufacturer warranty for device and 6 months manufacturer warranty for in-box accessories including batteries from the date of purchase', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10105', 'Realme C1 (Navy Blue, 32 GB)', ' 2 GB RAM | 32 GB ROM | Expandable Upto 256 GB 15.75 cm (6.2 inch) HD  Display 13MP   2MP | 5MP Front Camera 4230 mAh Li-ion Battery Qualcomm Snapdragon 450 Octa Core 1.8 GHz Processor 2019 Edition Face Unlock Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10106', 'Realme U1 (Ambitious Black, 32 GB)', ' 3 GB RAM | 32 GB ROM | 16.0 cm (6.3 inch) Display 13MP Rear Camera 3500 mAh Battery 1 year manufacturer warranty for device and 6 months manufacturer warranty for in-box accessories including batteries from the date of purchase', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10107', 'Realme U1 (Brave Blue, 32 GB)', ' 3 GB RAM | 32 GB ROM | 16.0 cm (6.3 inch) Display 13MP Rear Camera 3500 mAh Battery 1 year manufacturer warranty for device and 6 months manufacturer warranty for in-box accessories including batteries from the date of purchase', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10108', 'Realme C1 (Navy Blue, 16 GB)', ' 2 GB RAM | 16 GB ROM | Expandable Upto 256 GB 15.75 cm (6.2 inch) HD  Display 13MP   2MP | 5MP Front Camera 4230 mAh Li-ion Battery Qualcomm Snapdragon 450 Octa Core 1.8 GHz Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10109', 'Realme 2 (Diamond Blue, 32 GB)', ' 3 GB RAM | 32 GB ROM | Expandable Upto 256 GB 15.75 cm (6.2 inch) HD  Display 13MP   2MP | 8MP Front Camera 4230 mAh Li-ion Battery Qualcomm Snapdragon 450 Octa Core 1.8 GHz Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10110', 'Realme 2 (Diamond Black, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 256 GB 15.75 cm (6.2 inch) HD  Display 13MP   2MP | 8MP Front Camera 4230 mAh Li-ion Battery Qualcomm Snapdragon 450 Octa Core 1.8 GHz Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10111', 'Realme 2 (Diamond Red, 32 GB)', ' 3 GB RAM | 32 GB ROM | Expandable Upto 256 GB 15.75 cm (6.2 inch) HD  Display 13MP   2MP | 8MP Front Camera 4230 mAh Li-ion Battery Qualcomm Snapdragon 450 Octa Core 1.8 GHz Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10112', 'Realme 2 (Diamond Red, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 256 GB 15.75 cm (6.2 inch) HD  Display 13MP   2MP | 8MP Front Camera 4230 mAh Li-ion Battery Qualcomm Snapdragon 450 Octa Core 1.8 GHz Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10113', 'Realme 2 Pro (Ice Lake, 64 GB)', ' 6 GB RAM | 64 GB ROM | Expandable Upto 256 GB 16.0 cm (6.3 inch) FHD  Display 16MP   2MP | 16MP Front Camera 3500 mAh Li-ion Battery Qualcomm Snapdragon 660 Octa Core 2.0GHz AIE Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10114', 'Realme 2 Pro (Blue Ocean, 128 GB)', ' 8 GB RAM | 128 GB ROM | Expandable Upto 256 GB 16.0 cm (6.3 inch) FHD  Display 16MP   2MP | 16MP Front Camera 3500 mAh Li-ion Battery Qualcomm Snapdragon 660 Octa Core 2.0GHz AIE Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10115', 'Realme 2 Pro (Black Sea, 128 GB)', ' 8 GB RAM | 128 GB ROM | Expandable Upto 256 GB 16.0 cm (6.3 inch) FHD  Display 16MP   2MP | 16MP Front Camera 3500 mAh Li-ion Battery Qualcomm Snapdragon 660 Octa Core 2.0GHz AIE Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10116', 'Realme Realme1 (Diamond Black, 128 GB)', ' 6 GB RAM | 128 GB ROM | 15.24 cm (6 inch) Display 13MP Rear Camera 3410 mAh Battery 1 year manufacturer warranty for device and 6 months manufacturer warranty for in-box accessories including batteries from the date of purchase', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10117', 'Realme Realme1 (Diamond Red, 32 GB)', ' 3 GB RAM | 32 GB ROM | 15.24 cm (6 inch) Display 13MP Rear Camera 3410 mAh Battery 1 year manufacturer warranty for device and 6 months manufacturer warranty for in-box accessories including batteries from the date of purchase', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10118', 'Asus TUF Core i7 8th Gen - (8 GB/1 TB HDD/128 GB SSD/Windows 10 Home/6 GB Graphics) FX504GM-EN017T Gam...', ' Intel Core i7 Processor (8th Gen) 8 GB DDR4 RAM 64 bit Windows 10 Operating System 1 TB HDD|128 GB SSD 39.62 cm (15.6 inch) Display 1 Year Onsite Warranty', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10119', 'Asus ROG Core i7 7th Gen - (8 GB/1 TB HDD/256 GB SSD/Windows 10 Home/6 GB Graphics) GL502VM-FY230T Gam...', ' Pre-installed Genuine Windows 10 Operating System (Includes Built-in Security, Free Automated Updates, Latest Features) Intel Core i7 Processor (7th Gen) 8 GB DDR4 RAM 64 bit Windows 10 Operating System 1 TB HDD|256 GB SSD 39.62 cm (15.6 inch) Display 1 Year Onsite Warranty', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10120', 'Lenovo Legion Core i5 7th Gen - (8 GB/1 TB HDD/128 GB SSD/Windows 10 Home/4 GB Graphics) LN Y520-15IKB...', ' NVIDIA GeForce GTX 1050Ti for Desktop Level Performance 128 GB SSD for Reduced Boot Up Time and in Game Loading 2 x Harman Speakers with Dolby Audio Premium for Best Audio Experience Pre-installed Genuine Windows 10 Operating System (Includes Built-in Security, Free Automated Updates, Latest Features) Intel Core i5 Processor (7th Gen) 8 GB DDR4 RAM 64 bit Windows 10 Operating System 1 TB HDD|128 GB SSD 39.62 cm (15.6 inch) Display 1 Year Onsite Warranty', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10121', 'Acer Predator Helios 300 Core i5 8th Gen - (8 GB/1 TB HDD/128 GB SSD/Windows 10 Home/4 GB Graphics) PH...', ' NVIDIA Geforce GTX 1050 Ti for Desktop Level Performance 128 GB SSD Capacity for Reduced Boot Up Time and in Game Loading Dual Fan Cooling with Metal AeroBlade for Interuption Free Gaming Optimized Dolby Audio Premium Sound Enhancement FineTip Backlit Keyboard with Independent Standard Numeric Keypad Intel Core i5 Processor (8th Gen) 8 GB DDR4 RAM 64 bit Windows 10 Operating System 1 TB HDD|128 GB SSD 39.62 cm (15.6 inch) Display 1 Year International Travelers Warranty (ITW)', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10122', 'Acer Predator Helios 300 Core i5 8th Gen - (8 GB/1 TB HDD/128 GB SSD/Windows 10 Home/4 GB Graphics) PH...', ' NVIDIA Geforce GTX 1050 Ti for Desktop Level Performance 128 GB SSD Capacity for Reduced Boot Up Time and in Game Loading Dual Fan Cooling with Metal AeroBlade for Interuption Free Gaming Optimized Dolby Audio Premium Sound Enhancement FineTip Backlit Keyboard with Independent Standard Numeric Keypad Intel Core i5 Processor (8th Gen) 8 GB DDR4 RAM 64 bit Windows 10 Operating System 1 TB HDD|128 GB SSD 39.62 cm (15.6 inch) Display 1 Year International Travelers Warranty (ITW)', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10123', 'Acer Predator Helios 300 Core i7 8th Gen - (8 GB/1 TB HDD/128 GB SSD/Windows 10 Home/4 GB Graphics) PH...', ' Intel Core i7 Processor (8th Gen) 8 GB DDR4 RAM 64 bit Windows 10 Operating System 1 TB HDD|128 GB SSD 39.62 cm (15.6 inch) Display 1 Year International Travelers Warranty (ITW)', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10124', 'MSI GP Core i7 8th Gen - (16 GB/1 TB HDD/256 GB SSD/Windows 10 Home/6 GB Graphics) GP63 Leopard 8RE -4...', ' NVIDIA Geforce GTX 1060 for Desktop Level Performance 512 GB SSD for Reduced Boot Up Time and in Game Loading MSI\'s Cooler Boost 5 Technology for Interruption Free Gaming Giant Speakers for Immersive Audio Experience Pre-installed Genuine Windows 10 Operating System (Includes Built-in Security, Free Automated Updates, Latest Features) Intel Core i7 Processor (8th Gen) 16 GB DDR4 RAM 64 bit Windows 10 Operating System 1 TB HDD|256 GB SSD 39.62 cm (15.6 inch) Display 2 Years Carry In Warranty', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10125', 'MSI GV Series Core i7 8th Gen - (16 GB/1 TB HDD/128 GB SSD/Windows 10 Home/6 GB Graphics) GV62 8RE-050...', ' Intel Core i7 Processor (8th Gen) 16 GB DDR4 RAM 64 bit Windows 10 Operating System 1 TB HDD|128 GB SSD 39.62 cm (15.6 inch) Display 2 Years Carry In Warranty', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10126', 'MSI GL Series Core i7 7th Gen - (8 GB/1 TB HDD/Windows 10 Home/4 GB Graphics) GL62M 7RDX-2680IN Gaming...', ' NVIDIA Geforce GTX 1050 for Desktop Level Performance 3D Sound Experience with Nahimic 2  Technology MSI\'s Cooler Boost 4 Technology for Interruption Free Gaming Full HD LED Backlit Wideview Anti-glare Display for Better Visual Experience Pre-installed Genuine Windows 10 Operating System (Includes Built-in Security, Free Automated Updates, Latest Features) Intel Core i7 Processor (7th Gen) 8 GB DDR4 RAM 64 bit Windows 10 Operating System 1 TB HDD 39.62 cm (15.6 inch) Display 2 Years Carry In Warranty', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10128', 'Asus TUF Core i5 8th Gen - (8 GB/1 TB HDD/Windows 10 Home/4 GB Graphics) FX504GD-E4021T Gaming Laptop', ' Intel Core i5 Processor (8th Gen) 8 GB DDR4 RAM 64 bit Windows 10 Operating System 1 TB HDD 39.62 cm (15.6 inch) Display 1 Year Onsite Warranty', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10129', 'MSI GE Core i7 8th Gen - (16 GB/1 TB HDD/512 GB SSD/Windows 10 Home/8 GB Graphics) GE73 Raider RGB 8RF...', ' NVIDIA Geforce GTX 1070 for Desktop Level Performance 512 GB SSD for Reduced Boot Up Time and in Game Loading MSI\'s Cooler Boost 5 Technology for Interruption Free Gaming Per-Key RGB Gaming Keyboard Helps in Customizing Each Key Pre-installed Genuine Windows 10 Operating System (Includes Built-in Security, Free Automated Updates, Latest Features) Intel Core i7 Processor (8th Gen) 16 GB DDR4 RAM 64 bit Windows 10 Operating System 1 TB HDD|512 GB SSD 43.94 cm (17.3 inch) Display 2 Years Carry In Warranty', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10130', 'Acer Nitro 5 Core i5 7th Gen - (8 GB/1 TB HDD/128 GB SSD/Windows 10 Home/2 GB Graphics) AN515-51 Gamin...', ' Pre-installed Genuine Windows 10 Operating System (Includes Built-in Security, Free Automated Updates, Latest Features) Intel Core i5 Processor (7th Gen) 8 GB DDR4 RAM 64 bit Windows 10 Operating System 1 TB HDD|128 GB SSD 39.62 cm (15.6 inch) Display 1 Year International Travelers Warranty (ITW)', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10131', 'MSI GL Core i7 8th Gen - (8 GB/1 TB HDD/128 GB SSD/Windows 10 Home/4 GB Graphics) GL63 8RD-450IN Gamin...', ' NVIDIA Geforce GTX 1050 Ti for Desktop Level Performance 128 GB SSD for Reduced Boot Up Time and in Game Loading MSI\'s Cooler Boost 5 Technology for Interruption Free Gaming Giant Speakers for Immersive Audio Experience Pre-installed Genuine Windows 10 Operating System (Includes Built-in Security, Free Automated Updates, Latest Features) Intel Core i7 Processor (8th Gen) 8 GB DDR4 RAM 64 bit Windows 10 Operating System 1 TB HDD|128 GB SSD 39.62 cm (15.6 inch) Display 2 Years Carry In Warranty', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10132', 'MSI GE Core i7 8th Gen - (16 GB/1 TB HDD/256 GB SSD/Windows 10 Home/8 GB Graphics) GE63 Raider RGB 8RF...', ' NVIDIA Geforce GTX 1070 for Desktop Level Performance 256 GB SSD for Reduced Boot Up Time and in Game Loading MSI\'s Cooler Boost 5 Technology for Interruption Free Gaming Giant Speakers for Immersive Audio Experience Pre-installed Genuine Windows 10 Operating System (Includes Built-in Security, Free Automated Updates, Latest Features) Intel Core i7 Processor (8th Gen) 16 GB DDR4 RAM 64 bit Windows 10 Operating System 1 TB HDD|256 GB SSD 39.62 cm (15.6 inch) Display 2 Years Carry In Warranty', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10133', 'Asus TUF Core i5 8th Gen - (8 GB/1 TB HDD/128 GB SSD/Windows 10 Home/4 GB Graphics) FX504GE-E4366T Gam...', ' Intel Core i5 Processor (8th Gen) 8 GB DDR4 RAM 64 bit Windows 10 Operating System 1 TB HDD|128 GB SSD 39.62 cm (15.6 inch) Display 1 Year Global Warranty by Asus', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10134', 'Asus TUF Core i7 8th Gen - (8 GB/1 TB HDD/128 GB SSD/Windows 10 Home/4 GB Graphics) FX504GE-EN224T Gam...', NULL, '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10135', 'Asus Core i7 7th Gen - (8 GB/1 TB HDD/128 GB SSD/Windows 10/4 GB Graphics) FX553VD-DM1032T Gaming Lapt...', ' Pre-installed Genuine Windows 10 Operating System (Includes Built-in Security, Free Automated Updates, Latest Features) Intel Core i7 Processor (7th Gen) 8 GB DDR4 RAM 64 bit Windows 10 Operating System 1 TB HDD|128 GB SSD 39.62 cm (15.6 inch) Display 1 Year Onsite Warranty', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10136', 'MSI GS Core i7 8th Gen - (16 GB/512 GB SSD/Windows 10 Home/6 GB Graphics) GS65 8RE-084IN Gaming Laptop', ' NVIDIA Geforce GTX 1060 for Desktop Level Performance 512 GB SSD for Reduced Boot Up Time and in Game Loading Per-Key RGB Gaming Keyboard Helps in Customizing Each Key Pre-installed Genuine Windows 10 Operating System (Includes Built-in Security, Free Automated Updates, Latest Features) Intel Core i7 Processor (8th Gen) 16 GB DDR4 RAM 64 bit Windows 10 Operating System 512 GB SSD 39.62 cm (15.6 inch) Display 2 Years Carry In Warranty', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10137', 'Asus ROG Strix Edition Core i7 7th Gen - (16 GB/1 TB HDD/128 GB SSD/Windows 10 Home/6 GB Graphics) GL5...', ' NVIDIA Geforce GTX 1060 for Desktop Level Performance 128 GB NVMe PCIe 3.0 x4 SSD 4 Zone Customizable RGB Backlit with Anti-ghosting N-Key Rollover Keyboard Dual Fans Intelligent Hyper Cooling Design Sonic Studio Software with in Game Noise Cancellation and Voice Volume Stabilization Technology Pre-installed Genuine Windows 10 Operating System (Includes Built-in Security, Free Automated Updates, Latest Features) Intel Core i7 Processor (7th Gen) 16 GB DDR4 RAM 64 bit Windows 10 Operating System 1 TB HDD|128 GB SSD 39.62 cm (15.6 inch) Display 2 Years Onsite Warranty', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10138', 'MSI GV Series Core i5 7th Gen - (8 GB/1 TB HDD/DOS/4 GB Graphics) GV62 7RD-2627XIN Laptop', ' NVIDIA Geforce GTX 1050 for Desktop Level Performance 3D Sound Experience with Nahimic 2  Technology Full HD LED Backlit Widescreen Anti-glare Display for Better Visual Experience Intel Core i5 Processor (7th Gen) 8 GB DDR4 RAM DOS Operating System 1 TB HDD 39.62 cm (15.6 inch) Display 2 Years Carry In Warranty', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10139', 'Asus FX553 Core i7 7th Gen - (8 GB/1 TB HDD/Windows 10/4 GB Graphics) FX553VE-DM318T Gaming Laptop', ' NVIDIA Geforce GTX 1050 Ti for Desktop Level Performance Red Backlit Anti Ghosting Keyboard Pre-installed Genuine Windows 10 Operating System (Includes Built-in Security, Free Automated Updates, Latest Features) Intel Core i7 Processor (7th Gen) 8 GB DDR4 RAM 64 bit Windows 10 Operating System 1 TB HDD 39.62 cm (15.6 inch) Display 2 Years Onsite Warranty', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10140', 'Asus FX503 Core i7 7th Gen - (8 GB/1 TB HDD/128 GB SSD/Windows 10 Home/4 GB Graphics) FX503VD-DM112T G...', ' NVIDIA Geforce GTX 1050 for Desktop Level Performance A High Capacity Battery Ensures Stay Productive and Entertained Throughout the Day Powered by ICEpower Technology which Delivers Truly Immersive Listening and Gaming Experiences Additional Fan Overboost Function Maximizes Cooling Efficiency Pre-installed Genuine Windows 10 Operating System (Includes Built-in Security, Free Automated Updates, Latest Features) Intel Core i7 Processor (7th Gen) 8 GB DDR4 RAM 64 bit Windows 10 Operating System 1 TB HDD|128 GB SSD 39.62 cm (15.6 inch) Display 2 Years Onsite Warranty', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10141', 'Asus FX553 Core i7 7th Gen - (8 GB/1 TB HDD/Windows 10 Home/4 GB Graphics) FX553VD-DM013T Gaming Lapto...', ' NVIDIA Geforce GTX 1050 for Desktop Level Performance Asus Cooling Overboost with Controllable Fan Speeds Array Microphones to Filter Out Ambient Noise Red Backlit Anti Ghosting Keyboard Stylish Red Backlit Anti Ghosting Keyboard with 30 Key Rollover Pre-installed Genuine Windows 10 Operating System (Includes Built-in Security, Free Automated Updates, Latest Features) Intel Core i7 Processor (7th Gen) 8 GB DDR4 RAM 64 bit Windows 10 Operating System 1 TB HDD 39.62 cm (15.6 inch) Display 2 Year Onsite Warranty', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10142', 'Asus ROG Strix Edition Core i7 7th Gen - (8 GB/1 TB HDD/128 GB SSD/Windows 10 Home/4 GB Graphics) GL50...', ' NVIDIA Geforce GTX 1050 for Desktop Level Performance 128 GB SSD for Reduced Boot Up Time and in Game Loading Pre-installed Genuine Windows 10 Operating System (Includes Built-in Security, Free Automated Updates, Latest Features) Intel Core i7 Processor (7th Gen) 8 GB DDR4 RAM 64 bit Windows 10 Operating System 1 TB HDD|128 GB SSD 39.62 cm (15.6 inch) Display 2 Years Onsite Warranty', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10143', 'Acer Predator Helios 300 Core i5 7th Gen - (8 GB/1 TB HDD/128 GB SSD/Windows 10 Home/4 GB Graphics) G3...', ' NVIDIA Geforce GTX 1050Ti for Desktop Level Performance 128 GB SSD for Reduced Boot Up Time and in Game Loading Upgradable SSD Upto 512 GB and RAM Upto 32 GB Dual Fan Cooling with Metal AeroBlade 3D Pre-installed Genuine Windows 10 Operating System (Includes Built-in Security, Free Automated Updates, Latest Features) Intel Core i5 Processor (7th Gen) 8 GB DDR4 RAM 64 bit Windows 10 Operating System 1 TB HDD|128 GB SSD 39.62 cm (15.6 inch) Display 1 Year International Travelers Warranty (ITW)', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10144', 'Asus ROG Core i7 7th Gen - (8 GB/1 TB HDD/Windows 10 Home/4 GB Graphics) GL553VD-FY103T Gaming Laptop', ' NVIDIA Geforce GTX 1050 for Desktop Level Performance 2.8 GHz with Turbo Boost Upto 3.8 GHz Clock Speed Full HD LED Backlit Ultra Slim 300-nits Anti-glare Display Pre-installed Genuine Windows 10 Operating System (Includes Built-in Security, Free Automated Updates, Latest Features) Intel Core i7 Processor (7th Gen) 8 GB DDR4 RAM 64 bit Windows 10 Operating System 1 TB HDD 39.62 cm (15.6 inch) Display 2 Years Onsite Warranty', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10145', 'MSI GV Series Core i7 7th Gen - (8 GB/1 TB HDD/128 GB SSD/Windows 10 Home/4 GB Graphics) GV62 7RE-2401...', ' NVIDIA Geforce GTX 1050 Ti for Desktop Level Performance 128 GB SSD for Reduced Boot Up Time and in Game Loading Cooler Boost 4 Technology Offers Effective Cooling Design Exclusive Cooler Boost 4 Technology Nahimic 2  Technology Provides Immersive Listening Experience Pre-installed Genuine Windows 10 Operating System (Includes Built-in Security, Free Automated Updates, Latest Features) Intel Core i7 Processor (7th Gen) 8 GB DDR4 RAM 64 bit Windows 10 Operating System 1 TB HDD|128 GB SSD 39.62 cm (15.6 inch) Display 2 Years Carry In Warranty', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10146', 'F', '', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10147', 'Intex IT 212 40 W Bluetooth Home Audio Speaker', '', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10148', 'F', '', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10149', 'F', '', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10150', 'Philips Multimedia Speaker System Explode MMS4040F/94', '', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10151', 'F', '', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10152', 'F', '', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10153', 'Intex IT 2655 60 W Laptop/Desktop Speaker', '', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10154', 'iball Hi-Basss Bluetooth Home Audio Speaker', '', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10155', 'Zoook ZB-ROCKER THUNDER 20 Bluetooth Home Audio Speaker', '', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10156', 'Zebronics BT4440 RUCF Bluetooth Home Audio Speaker', '', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10157', 'Impex Lyric 5.1 70 Bluetooth Home Audio Speaker', '', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10158', 'Philips SPA3800B/94 28 W Portable Bluetooth Home Audio ...', '', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10159', 'iBELL 5.1 45 W Bluetooth Home Audio Speaker', '', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10160', 'Intex IT 301N 60 W Home Audio Speaker', '', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10161', 'Philips MMS2580B/94 30 W Portable Bluetooth Home Audio ...', '', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10162', 'F', '', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10163', 'F', '', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10164', 'F', '', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10165', 'SSKY BT 20 BAZOOKA WITH MIC 10 W Bluetooth Home Audio S...', '', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10166', 'Intex IT 213 40 W Portable Bluetooth Home Audio Speaker', '', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10167', 'F', '', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10168', 'LG LK72B 40 W Bluetooth Home Audio Speaker', '', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10169', 'Zync Karaoke 32 Bluetooth Home Audio Speaker', '', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10170', 'Philips MMS2550F Dhoom 25 W Laptop/Computer Speaker wit...', '', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10171', 'Panasonic SC-HT19GW-K 45 W Bluetooth Home Audio Speaker', '', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10172', 'Philips SPA8140B/94 50 W Bluetooth Home Audio Speaker', '', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10173', 'Impex CLASSIC Bluetooth Home Audio Speaker', '', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10174', 'Philips MMS4545B/94 42 W Bluetooth Laptop/Desktop Speak...', '', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10175', 'Saregama Carvaan Mini 3 W Bluetooth Home Audio Speaker', '', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10176', 'Impex 5.1 (OPERA BLUE) Portable Bluetooth Home Audio Sp...', '', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10177', 'JVC XN21F 28 W Bluetooth Home Audio Speaker', '', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10178', 'Mitashi 3500 Watts PMPO 2.1 Ch. HT 2430 FUR Home Audio ...', '', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10179', 'Envent Deejay 310 20 W Bluetooth Home Audio Speaker', '', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10180', 'Zebronics 4.1 Multimedia SW3490 RUCF Home Audio Speaker', '', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12');
INSERT INTO `item_master` (`item_id`, `item_name`, `item_description`, `hsn_code`, `tax_slab_id`, `unit_id`, `start_datetime`, `end_datetime`) VALUES
('10181', 'F', '', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10222', 'Samsung EVO Plus 32 GB MicroSDHC Class 10 95 MB/s Memo...', '', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10223', 'SanDisk Ultra 32 GB MicroSDHC Class 10 98 MB/s Memory ...', '', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10224', 'SanDisk Ultra 16 GB MicroSDHC Class 10 98 MB/s Memory ...', '', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10225', 'SanDisk C10 32 GB Ultra SDHC Class 10 98 MB/s Memory C...', '', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10226', 'SanDisk Ultra 32 GB MicroSDHC Class 10 98 MB/s Memory ...', '', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10227', 'SanDisk Ultra 16 GB MicroSDHC Class 10 98 MB/s Memory ...', '', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10228', 'SanDisk SDSDQM-032G-B35 32 GB MicroSD Card Class 4 48 M...', '', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10229', 'Samsung EVO Plus 64 GB MicroSDXC Class 10 100 MB/s Mem...', '', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10230', 'SanDisk Ultra A1 16 GB MicroSD Card Class 10 98 MB/s M...', '', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10231', 'Samsung EVO 32 GB MicroSD Card Class 10 95 MB/s Memory...', '', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10232', 'Samsung Evo Plus 64 GB MicroSDHC Class 10 100 Memory C...', '', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10233', 'SanDisk Ultra 32 GB MicroSD Card Class 10 98 MB/s Memo...', '', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10234', 'SanDisk Ultra 32 GB MicroSDHC Class 10 80 MB/s Memory ...', '', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10235', 'SanDisk micro 16 GB MicroSD Card Class 4 4 MB/s Memory...', '', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10236', 'SanDisk simple 8 GB MicroSD Card Class 4 40 MB/s Memor...', '', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10237', 'SanDisk Ultra 16 GB MicroSDHC Class 10 98 MB/s Memory ...', '', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10238', 'HP Micro SDHC 16 GB MicroSDHC Class 10 80 MB/s Memory ...', '', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10239', 'SanDisk Micro 16 GB MicroSD Card Class 4 16 MB/s Memor...', '', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10240', 'Samsung Evo 32GB 95 MB/s 32 GB MicroSDHC Class 10 95 MB...', '', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10241', 'SanDisk Basic 16 GB MicroSDHC Class 4 20 MB/s Memory C...', '', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10242', 'SanDisk C4 16 GB SD Card Class 4 30 MB/s Memory Card', '', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10243', 'SanDisk Ultra 16 GB MicroSDHC Class 4 48 MB/s Memory C...', '', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10244', 'HP MicroSDHC 32 GB MicroSDHC Class 10 80 MB/s Memory C...', '', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10245', 'SanDisk ultra 32 GB MicroSDHC Class 10 80 MB/s Memory ...', '', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10246', 'Strontium Nitro A1 32 GB SDHC UHS Class 1 100 Mbps Mem...', '', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10247', 'Sony SR-32UY3A 32 GB MicroSD Card Class 10 90 MB/s Mem...', '', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10248', 'HP U1 64 GB MicroSDXC Class 10 80 Mbps Memory Card', '', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10249', 'SanDisk 4 16 GB SD Card Class 4 20 MB/s Memory Card', '', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10250', 'SanDisk A1 16 GB Ultra SDHC Class 10 98 MB/s Memory Ca...', '', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10251', 'SanDisk A1 Youtube 32 GB MicroSD Card Class 10 98 MB/s ...', '', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10252', 'Samsung MB-MC128GA/IN 128 GB Ultra SDHC UHS Class 3 100...', '', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10253', 'Samsung Evo  32 GB SD Card Class 10 95 MB/s Memory Car...', '', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10254', 'Samsung EVO 32 GB MicroSD Card UHS Class 1 95 Memory C...', '', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10255', 'SanDisk A1 32 GB Ultra SDHC Class 10 98 MB/s Memory Ca...', '', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10256', 'Sandisk 16 GB MicroSD Class 4 Memory Card', '', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10257', 'Samsung evo 32 GB MicroSDHC Class 10 95 MB/s Memory Ca...', '', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10258', 'SanDisk C10 16 GB SD Card Class 10 98 MB/s Memory Card', '', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10259', 'SanDisk 16 GB SDHC Class 4 90 MB/s Memory Card', '', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10260', 'SanDisk Memory Card 16 GB MicroSD Card Class 10 24 MB/s...', '', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10261', 'SanDisk SanDisk Ultra A1 16GB Class 10 Speed Up To 98MB...', '', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10262', 'Samsung Galaxy S9 Plus (Burgundy Red, 64 GB)', ' 6 GB RAM | 64 GB ROM | Expandable Upto 400 GB 15.75 cm (6.2 inch) Quad HD  Display 12MP   12MP | 8MP Front Camera 3500 mAh Battery Exynos 9810 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10263', 'Samsung Galaxy Note 9 (Alpine White, 128 GB)', ' 6 GB RAM | 128 GB ROM | Expandable Upto 512 GB 16.26 cm (6.4 inch) Quad HD  Display 12MP   12MP | 8MP Front Camera 4000 mAh Lithium-ion Battery Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10264', 'Samsung Galaxy S9 Plus (Polaris Blue, 64 GB)', ' 6 GB RAM | 64 GB ROM | Expandable Upto 400 GB 15.75 cm (6.2 inch) Quad HD  Display 12MP   12MP | 8MP Front Camera 3500 mAh Battery Exynos 9810 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10265', 'Samsung Galaxy A9 (Caviar Black, 128 GB)', ' 6 GB RAM | 128 GB ROM | Expandable Upto 512 GB 16.0 cm (6.3 inch) FHD  Display 24MP   5MP   10MP  8MP | 24MP Front Camera 3800 mAh Lithium-ion Battery Qualcomm Snapdragon 660 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10266', 'Samsung Galaxy A9 (Caviar Black, 128 GB)', ' 8 GB RAM | 128 GB ROM | Expandable Upto 512 GB 16.0 cm (6.3 inch) FHD  Display 24MP   5MP   10MP  8MP | 24MP Front Camera 3800 mAh Lithium-ion Battery Qualcomm Snapdragon 660 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10267', 'Samsung Galaxy A9 (Lemonade Blue, 128 GB)', ' 6 GB RAM | 128 GB ROM | Expandable Upto 512 GB 16.0 cm (6.3 inch) FHD  Display 24MP   5MP   10MP  8MP | 24MP Front Camera 3800 mAh Lithium-ion Battery Qualcomm Snapdragon 660 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10268', 'Samsung Galaxy A9 (Lemonade Blue, 128 GB)', ' 8 GB RAM | 128 GB ROM | Expandable Upto 512 GB 16.0 cm (6.3 inch) FHD  Display 24MP   5MP   10MP  8MP | 24MP Front Camera 3800 mAh Lithium-ion Battery Qualcomm Snapdragon 660 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10269', 'Samsung Galaxy A9 (Bubblegum Pink, 128 GB)', ' 6 GB RAM | 128 GB ROM | Expandable Upto 512 GB 16.0 cm (6.3 inch) FHD  Display 24MP   5MP   10MP  8MP | 24MP Front Camera 3800 mAh Lithium-ion Battery Qualcomm Snapdragon 660 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10270', 'Samsung Galaxy A7 (Black, 128 GB)', ' 6 GB RAM | 128 GB ROM | Expandable Upto 512 GB 15.24 cm (6.0 inch) FHD  Display 24MP   5MP   8MP | 24MP Front Camera 3300 mAh Lithium-ion Battery Samsung Exynos Octa Core Processor (2.2 GHz) Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10271', 'Samsung Galaxy A7 (Blue, 128 GB)', ' 6 GB RAM | 128 GB ROM | Expandable Upto 512 GB 15.24 cm (6.0 inch) FHD  Display 24MP   5MP   8MP | 24MP Front Camera 3300 mAh Lithium-ion Battery Samsung Exynos Octa Core Processor (2.2 GHz) Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10272', 'Samsung Galaxy A7 (Blue, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 512 GB 15.24 cm (6.0 inch) FHD  Display 24MP   5MP   8MP | 24MP Front Camera 3300 mAh Lithium-ion Battery Samsung Exynos Octa Core Processor (2.2 GHz) Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10273', 'Samsung Galaxy A7 (Gold, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 512 GB 15.24 cm (6.0 inch) FHD  Display 24MP   5MP   8MP | 24MP Front Camera 3300 mAh Lithium-ion Battery Samsung Exynos Octa Core Processor (2.2 GHz) Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10274', 'Samsung Galaxy A7 (Black, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 512 GB 15.24 cm (6.0 inch) FHD  Display 24MP   5MP   8MP | 24MP Front Camera 3300 mAh Lithium-ion Battery Samsung Exynos Octa Core Processor (2.2 GHz) Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10275', 'Samsung Galaxy J6 Plus (Black, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 512 GB 15.24 cm (6 inch) HD  Display 13MP   5MP | 8MP Front Camera 3300 mAh Battery Qualcomm Snapdragon SD425 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10276', 'Samsung Galaxy J4 Plus (Blue, 32 GB)', ' 2 GB RAM | 32 GB ROM | Expandable Upto 512 GB 15.24 cm (6 inch) HD  Display 13MP Rear Camera | 5MP Front Camera 3300 mAh Lithium-ion Battery Qualcomm Snapdragon SD425 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10277', 'Samsung Galaxy J6 Plus (Red, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 512 GB 15.24 cm (6 inch) HD  Display 13MP   5MP | 8MP Front Camera 3300 mAh Battery Qualcomm Snapdragon SD425 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10278', 'Samsung Galaxy J6 Plus (Blue, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 512 GB 15.24 cm (6 inch) HD  Display 13MP   5MP | 8MP Front Camera 3300 mAh Battery Qualcomm Snapdragon SD425 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10279', 'Samsung Galaxy J4 Plus (Black, 32 GB)', ' 2 GB RAM | 32 GB ROM | Expandable Upto 512 GB 15.24 cm (6 inch) HD  Display 13MP Rear Camera | 5MP Front Camera 3300 mAh Lithium-ion Battery Qualcomm Snapdragon SD425 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10280', 'Samsung Galaxy J4 Plus (Gold, 32 GB)', ' 2 GB RAM | 32 GB ROM | Expandable Upto 512 GB 15.24 cm (6 inch) HD  Display 13MP Rear Camera | 5MP Front Camera 3300 mAh Lithium-ion Battery Qualcomm Snapdragon SD425 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10281', 'Samsung Galaxy A8 Star (White, 64 GB)', ' 6 GB RAM | 64 GB ROM | 16.0 cm (6.3 inch) Display 24MP Rear Camera 3700 mAh Battery 1 year manufacturer warranty for device and 6 months manufacturer warranty for in-box accessories including batteries from the date of purchase', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10282', 'Samsung Galaxy A8 Star (Black, 64 GB)', ' 6 GB RAM | 64 GB ROM | 16.0 cm (6.3 inch) Display 24MP Rear Camera 3700 mAh Battery 1 year manufacturer warranty for device and 6 months manufacturer warranty for in-box accessories including batteries from the date of purchase', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10283', 'Samsung Galaxy J2 Core (Blue, 8 GB)', ' 1 GB RAM | 8 GB ROM | Expandable Upto 256 GB 12.7 cm (5 inch) quarter HD Display 8MP Rear Camera | 5MP Front Camera 2600 mAh Battery Exynos 7570 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10284', 'Samsung Galaxy J2 Core (Gold, 8 GB)', ' 1 GB RAM | 8 GB ROM | Expandable Upto 256 GB 12.7 cm (5 inch) quarter HD Display 8MP Rear Camera | 5MP Front Camera 2600 mAh Battery Exynos 7570 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10285', 'Samsung Galaxy J2 Core (Black, 8 GB)', ' 1 GB RAM | 8 GB ROM | Expandable Upto 256 GB 12.7 cm (5 inch) quarter HD Display 8MP Rear Camera | 5MP Front Camera 2600 mAh Battery Exynos 7570 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10286', 'Samsung Galaxy A8 Plus (Gold, 64 GB)', ' 6 GB RAM | 64 GB ROM | 15.24 cm (6 inch) Display 16MP Rear Camera 3500 mAh Battery 1 Year Warranty', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10287', 'Samsung On7 Pro (Black, 16 GB)', ' 2 GB RAM | 16 GB ROM | 13.97 cm (5.5 inch) Display 13MP Rear Camera | 5MP Front Camera 3000 mAh Battery Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10288', 'Samsung Galaxy Note 9 (Metallic Copper, 512 GB)', ' 8 GB RAM | 512 GB ROM | Expandable Upto 512 GB 16.26 cm (6.4 inch) Quad HD  Display 12MP   12MP | 8MP Front Camera 4000 mAh Lithium-ion Battery Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10289', 'Samsung Galaxy Note 9 (Midnight Black, 512 GB)', ' 8 GB RAM | 512 GB ROM | Expandable Upto 512 GB 16.26 cm (6.4 inch) Quad HD  Display 12MP   12MP | 8MP Front Camera 4000 mAh Lithium-ion Battery Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10290', 'Samsung Galaxy Note 9 (Ocean Blue, 128 GB)', ' 6 GB RAM | 128 GB ROM | Expandable Upto 512 GB 16.26 cm (6.4 inch) Quad HD  Display 12MP   12MP | 8MP Front Camera 4000 mAh Lithium-ion Battery Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10291', 'Samsung Galaxy Note 9 (Metallic Copper, 128 GB)', ' 6 GB RAM | 128 GB ROM | Expandable Upto 512 GB 16.26 cm (6.4 inch) Quad HD  Display 12MP   12MP | 8MP Front Camera 4000 mAh Lithium-ion Battery Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10292', 'Samsung Galaxy Note 9 (Ocean Blue, 512 GB)', ' 8 GB RAM | 512 GB ROM | Expandable Upto 512 GB 16.26 cm (6.4 inch) Quad HD  Display 12MP   12MP | 8MP Front Camera 4000 mAh Lithium-ion Battery Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10293', 'Samsung Galaxy Note 9 (Lavender Purple, 128 GB)', ' 6 GB RAM | 128 GB ROM | Expandable Upto 512 GB 16.26 cm (6.4 inch) Quad HD  Display 12MP   12MP | 8MP Front Camera 4000 mAh Lithium-ion Battery Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10294', 'Samsung Galaxy Note 9 (Midnight Black, 128 GB)', ' 6 GB RAM | 128 GB ROM | Expandable Upto 512 GB 16.26 cm (6.4 inch) Quad HD  Display 12MP   12MP | 8MP Front Camera 4000 mAh Lithium-ion Battery Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10295', 'Samsung Galaxy On8 (Black, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 256 GB 15.24 cm (6 inch) HD  Display 16MP   5MP | 16MP Front Camera 3500 mAh Lithium-ion Battery Qualcomm Snapdragon 450 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10296', 'Samsung Galaxy On8 (Blue, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 256 GB 15.24 cm (6 inch) HD  Display 16MP   5MP | 16MP Front Camera 3500 mAh Lithium-ion Battery Qualcomm Snapdragon 450 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10297', 'Samsung Galaxy A6  (Black, 64 GB)', ' 4 GB RAM | 64 GB ROM | 15.24 cm (6 inch) FHD  Display 16MP   5MP | 24MP Front Camera 3500 mAh Battery Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10298', 'Samsung Galaxy A6  (Blue, 64 GB)', ' 4 GB RAM | 64 GB ROM | 15.24 cm (6 inch) FHD  Display 16MP   5MP | 24MP Front Camera 3500 mAh Battery Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10299', 'Samsung Galaxy A6  (Gold, 64 GB)', ' 4 GB RAM | 64 GB ROM | 15.24 cm (6 inch) FHD  Display 16MP   5MP | 24MP Front Camera 3500 mAh Battery Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10300', 'Samsung Galaxy A6 (Black, 64 GB)', ' 4 GB RAM | 64 GB ROM | 14.22 cm (5.6 inch) Display 16MP Rear Camera | 16MP Front Camera 3000 mAh Battery Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10301', 'Samsung Galaxy A6 (Gold, 64 GB)', ' 4 GB RAM | 64 GB ROM | 14.22 cm (5.6 inch) Display 16MP Rear Camera | 16MP Front Camera 3000 mAh Battery Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10302', 'Samsung Galaxy A6 (Blue, 64 GB)', ' 4 GB RAM | 64 GB ROM | 14.22 cm (5.6 inch) Display 16MP Rear Camera | 16MP Front Camera 3000 mAh Battery Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10303', 'Samsung A6 (Gold, 32 GB)', ' 4 GB RAM | 32 GB ROM | 14.22 cm (5.6 inch) Display 16MP Rear Camera 3000 mAh Battery 1', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10304', 'Samsung Galaxy J8 (Blue, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 256 GB 15.24 cm (6 inch) HD  Display 16MP   5MP | 16MP Front Camera 3500 mAh Battery Qualcomm Snapdragon SDM450 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10305', 'Samsung Galaxy J8 (Black, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 256 GB 15.24 cm (6 inch) HD  Display 16MP   5MP | 16MP Front Camera 3500 mAh Battery Qualcomm Snapdragon SDM450 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10306', 'Samsung Galaxy J8 (Gold, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 256 GB 15.24 cm (6 inch) HD  Display 16MP   5MP | 16MP Front Camera 3500 mAh Battery Qualcomm Snapdragon SDM450 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10307', 'Samsung Galaxy On6 (Black, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 256 GB 14.22 cm (5.6 inch) HD  Display 13MP Rear Camera | 8MP Front Camera 3000 mAh Battery 1.6 GHz Exynos Octa Core Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10308', 'Samsung Galaxy On6 (Blue, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 256 GB 14.22 cm (5.6 inch) HD  Display 13MP Rear Camera | 8MP Front Camera 3000 mAh Battery 1.6 GHz Exynos Octa Core Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10309', 'Samsung Galaxy J4 (Blue, 32 GB)', ' 3 GB RAM | 32 GB ROM | Expandable Upto 256 GB 13.97 cm (5.5 inch) HD Display 13MP Rear Camera | 5MP Front Camera 3000 mAh Battery Exynos 7570 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10310', 'Samsung Galaxy J4 (Black, 32 GB)', ' 3 GB RAM | 32 GB ROM | Expandable Upto 256 GB 13.97 cm (5.5 inch) HD Display 13MP Rear Camera | 5MP Front Camera 3000 mAh Battery Exynos 7570 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10311', 'Samsung Galaxy J4 (Gold, 32 GB)', ' 3 GB RAM | 32 GB ROM | Expandable Upto 256 GB 13.97 cm (5.5 inch) HD Display 13MP Rear Camera | 5MP Front Camera 3000 mAh Battery Exynos 7570 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10312', 'Samsung Galaxy J4 (Gold, 16 GB)', ' 2 GB RAM | 16 GB ROM | Expandable Upto 256 GB 13.97 cm (5.5 inch) HD Display 13MP Rear Camera | 5MP Front Camera 3000 mAh Battery Exynos 7570 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10313', 'Samsung Galaxy J4 (Blue, 16 GB)', ' 2 GB RAM | 16 GB ROM | Expandable Upto 256 GB 13.97 cm (5.5 inch) HD Display 13MP Rear Camera | 5MP Front Camera 3000 mAh Battery Exynos 7570 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10314', 'Samsung Galaxy J7 Duo (Blue, 32 GB)', ' 4 GB RAM | 32 GB ROM | Expandable Upto 256 GB 13.97 cm (5.5 inch) HD Display 13MP   5MP | 8MP Front Camera 3000 mAh Battery Exynos 7884 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10315', 'Samsung Galaxy J4 (Black, 16 GB)', ' 2 GB RAM | 16 GB ROM | Expandable Upto 256 GB 13.97 cm (5.5 inch) HD Display 13MP Rear Camera | 5MP Front Camera 3000 mAh Battery Exynos 7570 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10316', 'Samsung Galaxy J6 (Gold, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 256 GB 14.22 cm (5.6 inch) HD  Display 13MP Rear Camera | 8MP Front Camera 3000 mAh Battery Exynos 7870 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10317', 'Samsung Galaxy J6 (Black, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 256 GB 14.22 cm (5.6 inch) HD  Display 13MP Rear Camera | 8MP Front Camera 3000 mAh Battery Exynos 7870 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10318', 'Samsung Galaxy J6 (Blue, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 256 GB 14.22 cm (5.6 inch) HD  Display 13MP Rear Camera | 8MP Front Camera 3000 mAh Battery Exynos 7870 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10319', 'Samsung Galaxy J6 (Blue, 32 GB)', ' 3 GB RAM | 32 GB ROM | Expandable Upto 256 GB 14.22 cm (5.6 inch) HD  Display 13MP Rear Camera | 8MP Front Camera 3000 mAh Battery Exynos 7870 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10320', 'Samsung Galaxy J6 (Black, 32 GB)', ' 3 GB RAM | 32 GB ROM | Expandable Upto 256 GB 14.22 cm (5.6 inch) HD  Display 13MP Rear Camera | 8MP Front Camera 3000 mAh Battery Exynos 7870 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10321', 'Samsung Galaxy J6 (Gold, 32 GB)', ' 3 GB RAM | 32 GB ROM | Expandable Upto 256 GB 14.22 cm (5.6 inch) HD  Display 13MP Rear Camera | 8MP Front Camera 3000 mAh Battery Exynos 7870 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10322', 'Samsung Guru FM Plus', ' NA ROM | 3.81 cm (1.5 inch) VGA Display 800 mAh Battery 1 Year Manufacturer Warranty', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10323', 'Samsung Guru Music 2', ' NA ROM | 5.08 cm (2 inch) NA Display 800 mAh Battery 1 Year Manufacturer Warranty', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10324', 'Samsung Metro XL', ' 64 MB RAM | 128 MB ROM | Expandable Upto 16 GB 7.11 cm (2.8 inch) QVGA Display 3.1MP Rear Camera | 2MP Front Camera 1200 mAh Li-Ion Battery 1 Year on Mobile', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10325', 'Samsung Guru 1200', ' NA ROM | 3.81 cm (1.5 inch) NA Display 800 mAh Battery 1 Year for Mobile ', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10326', 'Samsung Galaxy J2 2018 (Gold, 16 GB)', ' 2 GB RAM | 16 GB ROM | Expandable Upto 256 GB 12.7 cm (5 inch) Display 8MP Rear Camera | 5MP Front Camera 2600 mAh Battery Snapdragon 425 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10327', 'Samsung Galaxy J2 2018 (Black, 16 GB)', ' 2 GB RAM | 16 GB ROM | Expandable Upto 256 GB 12.7 cm (5 inch) Display 8MP Rear Camera | 5MP Front Camera 2600 mAh Battery Snapdragon 425 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10328', 'Samsung Galaxy J2 2018 (Pink, 16 GB)', ' 2 GB RAM | 16 GB ROM | Expandable Upto 256 GB 12.7 cm (5 inch) Display 8MP Rear Camera | 5MP Front Camera 2600 mAh Battery Snapdragon 425 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10329', 'Samsung Galaxy S9 Plus (Midnight Black, 256 GB)', ' 6 GB RAM | 256 GB ROM | 15.75 cm (6.2 inch) Full HD Display 12MP Rear Camera 3500 mAh Battery Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10330', 'Samsung Galaxy J7 Duo (Gold, 32 GB)', ' 4 GB RAM | 32 GB ROM | Expandable Upto 256 GB 13.97 cm (5.5 inch) HD Display 13MP   5MP | 8MP Front Camera 3000 mAh Battery Exynos 7884 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10331', 'Samsung Galaxy J7 Duo (Black, 32 GB)', ' 4 GB RAM | 32 GB ROM | Expandable Upto 256 GB 13.97 cm (5.5 inch) HD Display 13MP   5MP | 8MP Front Camera 3000 mAh Battery Exynos 7884 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10332', 'Samsung Galaxy S8 (Burgundy Red, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 256 GB 14.73 cm (5.8 inch) Quad HD  Display 12MP Rear Camera | 8MP Front Camera 3000 mAh Battery Exynos 8895 Octa Core 2.3GHz Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12'),
('10333', 'Samsung Galaxy S9 (Midnight Black, 128 GB)', ' 4 GB RAM | 128 GB ROM | Expandable Upto 400 GB 14.73 cm (5.8 inch) Quad HD  Display 12MP Rear Camera | 8MP Front Camera 3000 mAh Battery Exynos 9810 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1, '2001-01-01 12:12:12', '2020-01-01 12:12:12');

-- --------------------------------------------------------

--
-- Table structure for table `state_type`
--

CREATE TABLE `state_type` (
  `state_id` int(20) NOT NULL,
  `state_type` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `state_type`
--

INSERT INTO `state_type` (`state_id`, `state_type`) VALUES
(1, 'GREEN'),
(2, 'YELLOW'),
(3, 'RED');

-- --------------------------------------------------------

--
-- Table structure for table `stock_master`
--

CREATE TABLE `stock_master` (
  `item_id` varchar(30) NOT NULL,
  `base_stock` int(20) DEFAULT NULL,
  `buffer_stock` int(20) DEFAULT NULL,
  `avilable_stock` int(20) DEFAULT NULL,
  `dead_stock` int(20) DEFAULT NULL,
  `reorder_level` int(20) DEFAULT NULL,
  `state_id` int(20) NOT NULL,
  `reserved` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stock_master`
--

INSERT INTO `stock_master` (`item_id`, `base_stock`, `buffer_stock`, `avilable_stock`, `dead_stock`, `reorder_level`, `state_id`, `reserved`) VALUES
('10013', 400, 100, 500, 0, 200, 1, NULL),
('10014', 400, 100, 500, 0, 200, 1, NULL),
('10015', 400, 100, 500, 0, 200, 1, NULL),
('10016', 400, 100, 476, 0, 200, 1, NULL),
('10017', 400, 100, 499, 0, 200, 1, NULL),
('10018', 400, 100, 499, 0, 200, 1, NULL),
('10019', 400, 100, 499, 0, 200, 1, NULL),
('10020', 400, 100, 500, 0, 200, 1, NULL),
('10021', 400, 100, 500, 0, 200, 1, NULL),
('10022', 400, 100, 497, 0, 200, 1, NULL),
('10023', 400, 100, 500, 0, 200, 1, NULL),
('10024', 400, 100, 500, 0, 200, 1, NULL),
('10025', 400, 100, 500, 0, 200, 1, NULL),
('10026', 400, 100, 500, 0, 200, 1, NULL),
('10027', 400, 100, 500, 0, 200, 1, NULL),
('10028', 400, 100, 500, 0, 200, 1, NULL),
('10029', 400, 100, 500, 0, 200, 1, NULL),
('10030', 400, 100, 500, 0, 200, 1, NULL),
('10031', 400, 100, 500, 0, 200, 1, NULL),
('10046', 400, 100, 500, 0, 200, 1, NULL),
('10047', 400, 100, 500, 0, 200, 1, NULL),
('10048', 400, 100, 500, 0, 200, 1, NULL),
('10049', 400, 100, 500, 0, 200, 1, NULL),
('10050', 400, 100, 500, 0, 200, 1, NULL),
('10051', 400, 100, 500, 0, 200, 1, NULL),
('10052', 400, 100, 499, 0, 200, 1, NULL),
('10053', 400, 100, 500, 0, 200, 1, NULL),
('10054', 400, 100, 500, 0, 200, 1, NULL),
('10055', 400, 100, 500, 0, 200, 1, NULL),
('10056', 400, 100, 500, 0, 200, 1, NULL),
('10057', 400, 100, 500, 0, 200, 1, NULL),
('10058', 400, 100, 500, 0, 200, 1, NULL),
('10059', 400, 100, 500, 0, 200, 1, NULL),
('10060', 400, 100, 500, 0, 200, 1, NULL),
('10061', 400, 100, 500, 0, 200, 1, NULL),
('10062', 400, 100, 500, 0, 200, 1, NULL),
('10063', 400, 100, 500, 0, 200, 1, NULL),
('10064', 400, 100, 500, 0, 200, 1, NULL),
('10065', 400, 100, 500, 0, 200, 1, NULL),
('10066', 400, 100, 500, 0, 200, 1, NULL),
('10067', 400, 100, 500, 0, 200, 1, NULL),
('10068', 400, 100, 500, 0, 200, 1, NULL),
('10069', 400, 100, 500, 0, 200, 1, NULL),
('10070', 400, 100, 500, 0, 200, 1, NULL),
('10071', 400, 100, 500, 0, 200, 1, NULL),
('10072', 400, 100, 500, 0, 200, 1, NULL),
('10073', 400, 100, 500, 0, 200, 1, NULL),
('10074', 400, 100, 500, 0, 200, 1, NULL),
('10075', 400, 100, 500, 0, 200, 1, NULL),
('10076', 400, 100, 500, 0, 200, 1, NULL),
('10077', 400, 100, 500, 0, 200, 1, NULL),
('10078', 400, 100, 500, 0, 200, 1, NULL),
('10079', 400, 100, 500, 0, 200, 1, NULL),
('10080', 400, 100, 500, 0, 200, 1, NULL),
('10081', 400, 100, 500, 0, 200, 1, NULL),
('10082', 400, 100, 500, 0, 200, 1, NULL),
('10083', 400, 100, 500, 0, 200, 1, NULL),
('10084', 400, 100, 500, 0, 200, 1, NULL),
('10085', 400, 100, 500, 0, 200, 1, NULL),
('10086', 400, 100, 500, 0, 200, 1, NULL),
('10087', 400, 100, 500, 0, 200, 1, NULL),
('10088', 400, 100, 500, 0, 200, 1, NULL),
('10089', 400, 100, 500, 0, 200, 1, NULL),
('10090', 400, 100, 500, 0, 200, 1, NULL),
('10091', 400, 100, 500, 0, 200, 1, NULL),
('10092', 400, 100, 500, 0, 200, 1, NULL),
('10093', 400, 100, 500, 0, 200, 1, NULL),
('10094', 400, 100, 500, 0, 200, 1, NULL),
('10095', 400, 100, 500, 0, 200, 1, NULL),
('10096', 400, 100, 500, 0, 200, 1, NULL),
('10097', 400, 100, 500, 0, 200, 1, NULL),
('10098', 400, 100, 500, 0, 200, 1, NULL),
('10099', 400, 100, 500, 0, 200, 1, NULL),
('10100', 400, 100, 500, 0, 200, 1, NULL),
('10101', 400, 100, 500, 0, 200, 1, NULL),
('10102', 400, 100, 500, 0, 200, 1, NULL),
('10103', 400, 100, 500, 0, 200, 1, NULL),
('10104', 400, 100, 500, 0, 200, 1, NULL),
('10105', 400, 100, 500, 0, 200, 1, NULL),
('10106', 400, 100, 500, 0, 200, 1, NULL),
('10107', 400, 100, 500, 0, 200, 1, NULL),
('10108', 400, 100, 500, 0, 200, 1, NULL),
('10109', 400, 100, 500, 0, 200, 1, NULL),
('10110', 400, 100, 500, 0, 200, 1, NULL),
('10111', 400, 100, 500, 0, 200, 1, NULL),
('10112', 400, 100, 500, 0, 200, 1, NULL),
('10113', 400, 100, 500, 0, 200, 1, NULL),
('10114', 400, 100, 500, 0, 200, 1, NULL),
('10115', 400, 100, 500, 0, 200, 1, NULL),
('10116', 400, 100, 500, 0, 200, 1, NULL),
('10117', 400, 100, 500, 0, 200, 1, NULL),
('10118', 400, 100, 500, 0, 200, 1, NULL),
('10119', 400, 100, 500, 0, 200, 1, NULL),
('10120', 400, 100, 500, 0, 200, 1, NULL),
('10121', 400, 100, 500, 0, 200, 1, NULL),
('10122', 400, 100, 500, 0, 200, 1, NULL),
('10123', 400, 100, 500, 0, 200, 1, NULL),
('10124', 400, 100, 500, 0, 200, 1, NULL),
('10125', 400, 100, 500, 0, 200, 1, NULL),
('10126', 400, 100, 500, 0, 200, 1, NULL),
('10128', 400, 100, 500, 0, 200, 1, NULL),
('10129', 400, 100, 500, 0, 200, 1, NULL),
('10130', 400, 100, 500, 0, 200, 1, NULL),
('10131', 400, 100, 500, 0, 200, 1, NULL),
('10132', 400, 100, 500, 0, 200, 1, NULL),
('10133', 400, 100, 500, 0, 200, 1, NULL),
('10134', 400, 100, 500, 0, 200, 1, NULL),
('10135', 400, 100, 500, 0, 200, 1, NULL),
('10136', 400, 100, 500, 0, 200, 1, NULL),
('10137', 400, 100, 500, 0, 200, 1, NULL),
('10138', 400, 100, 500, 0, 200, 1, NULL),
('10139', 400, 100, 500, 0, 200, 1, NULL),
('10140', 400, 100, 500, 0, 200, 1, NULL),
('10141', 400, 100, 500, 0, 200, 1, NULL),
('10142', 400, 100, 500, 0, 200, 1, NULL),
('10143', 400, 100, 500, 0, 200, 1, NULL),
('10144', 400, 100, 500, 0, 200, 1, NULL),
('10145', 400, 100, 500, 0, 200, 1, NULL),
('10146', 400, 100, 500, 0, 200, 1, NULL),
('10147', 400, 100, 500, 0, 200, 1, NULL),
('10148', 400, 100, 500, 0, 200, 1, NULL),
('10149', 400, 100, 500, 0, 200, 1, NULL),
('10150', 400, 100, 500, 0, 200, 1, NULL),
('10151', 400, 100, 500, 0, 200, 1, NULL),
('10152', 400, 100, 500, 0, 200, 1, NULL),
('10153', 400, 100, 500, 0, 200, 1, NULL),
('10154', 400, 100, 500, 0, 200, 1, NULL),
('10155', 400, 100, 500, 0, 200, 1, NULL),
('10156', 400, 100, 500, 0, 200, 1, NULL),
('10157', 400, 100, 500, 0, 200, 1, NULL),
('10158', 400, 100, 500, 0, 200, 1, NULL),
('10159', 400, 100, 500, 0, 200, 1, NULL),
('10160', 400, 100, 500, 0, 200, 1, NULL),
('10161', 400, 100, 500, 0, 200, 1, NULL),
('10162', 400, 100, 500, 0, 200, 1, NULL),
('10163', 400, 100, 500, 0, 200, 1, NULL),
('10164', 400, 100, 500, 0, 200, 1, NULL),
('10165', 400, 100, 500, 0, 200, 1, NULL),
('10166', 400, 100, 500, 0, 200, 1, NULL),
('10167', 400, 100, 500, 0, 200, 1, NULL),
('10168', 400, 100, 500, 0, 200, 1, NULL),
('10169', 400, 100, 500, 0, 200, 1, NULL),
('10170', 400, 100, 500, 0, 200, 1, NULL),
('10171', 400, 100, 500, 0, 200, 1, NULL),
('10172', 400, 100, 500, 0, 200, 1, NULL),
('10173', 400, 100, 500, 0, 200, 1, NULL),
('10174', 400, 100, 500, 0, 200, 1, NULL),
('10175', 400, 100, 500, 0, 200, 1, NULL),
('10176', 400, 100, 500, 0, 200, 1, NULL),
('10177', 400, 100, 500, 0, 200, 1, NULL),
('10178', 400, 100, 500, 0, 200, 1, NULL),
('10179', 400, 100, 500, 0, 200, 1, NULL),
('10180', 400, 100, 500, 0, 200, 1, NULL),
('10181', 400, 100, 500, 0, 200, 1, NULL),
('10222', 400, 100, 500, 0, 200, 1, NULL),
('10223', 400, 100, 500, 0, 200, 1, NULL),
('10224', 400, 100, 500, 0, 200, 1, NULL),
('10225', 400, 100, 500, 0, 200, 1, NULL),
('10226', 400, 100, 500, 0, 200, 1, NULL),
('10227', 400, 100, 500, 0, 200, 1, NULL),
('10228', 400, 100, 500, 0, 200, 1, NULL),
('10229', 400, 100, 500, 0, 200, 1, NULL),
('10230', 400, 100, 500, 0, 200, 1, NULL),
('10231', 400, 100, 500, 0, 200, 1, NULL),
('10232', 400, 100, 500, 0, 200, 1, NULL),
('10233', 400, 100, 500, 0, 200, 1, NULL),
('10234', 400, 100, 500, 0, 200, 1, NULL),
('10235', 400, 100, 500, 0, 200, 1, NULL),
('10236', 400, 100, 500, 0, 200, 1, NULL),
('10237', 400, 100, 500, 0, 200, 1, NULL),
('10238', 400, 100, 500, 0, 200, 1, NULL),
('10239', 400, 100, 500, 0, 200, 1, NULL),
('10240', 400, 100, 500, 0, 200, 1, NULL),
('10241', 400, 100, 500, 0, 200, 1, NULL),
('10242', 400, 100, 500, 0, 200, 1, NULL),
('10243', 400, 100, 500, 0, 200, 1, NULL),
('10244', 400, 100, 500, 0, 200, 1, NULL),
('10245', 400, 100, 500, 0, 200, 1, NULL),
('10246', 400, 100, 500, 0, 200, 1, NULL),
('10247', 400, 100, 500, 0, 200, 1, NULL),
('10248', 400, 100, 500, 0, 200, 1, NULL),
('10249', 400, 100, 500, 0, 200, 1, NULL),
('10250', 400, 100, 500, 0, 200, 1, NULL),
('10251', 400, 100, 500, 0, 200, 1, NULL),
('10252', 400, 100, 500, 0, 200, 1, NULL),
('10253', 400, 100, 500, 0, 200, 1, NULL),
('10254', 400, 100, 500, 0, 200, 1, NULL),
('10255', 400, 100, 500, 0, 200, 1, NULL),
('10256', 400, 100, 500, 0, 200, 1, NULL),
('10257', 400, 100, 500, 0, 200, 1, NULL),
('10258', 400, 100, 500, 0, 200, 1, NULL),
('10259', 400, 100, 500, 0, 200, 1, NULL),
('10260', 400, 100, 500, 0, 200, 1, NULL),
('10261', 400, 100, 500, 0, 200, 1, NULL),
('10262', 400, 100, 500, 0, 200, 1, NULL),
('10263', 400, 100, 500, 0, 200, 1, NULL),
('10264', 400, 100, 500, 0, 200, 1, NULL),
('10265', 400, 100, 500, 0, 200, 1, NULL),
('10266', 400, 100, 500, 0, 200, 1, NULL),
('10267', 400, 100, 500, 0, 200, 1, NULL),
('10268', 400, 100, 500, 0, 200, 1, NULL),
('10269', 400, 100, 500, 0, 200, 1, NULL),
('10270', 400, 100, 500, 0, 200, 1, NULL),
('10271', 400, 100, 500, 0, 200, 1, NULL),
('10272', 400, 100, 500, 0, 200, 1, NULL),
('10273', 400, 100, 500, 0, 200, 1, NULL),
('10274', 400, 100, 500, 0, 200, 1, NULL),
('10275', 400, 100, 500, 0, 200, 1, NULL),
('10276', 400, 100, 500, 0, 200, 1, NULL),
('10277', 400, 100, 500, 0, 200, 1, NULL),
('10278', 400, 100, 500, 0, 200, 1, NULL),
('10279', 400, 100, 500, 0, 200, 1, NULL),
('10280', 400, 100, 500, 0, 200, 1, NULL),
('10281', 400, 100, 500, 0, 200, 1, NULL),
('10282', 400, 100, 500, 0, 200, 1, NULL),
('10283', 400, 100, 500, 0, 200, 1, NULL),
('10284', 400, 100, 500, 0, 200, 1, NULL),
('10285', 400, 100, 500, 0, 200, 1, NULL),
('10286', 400, 100, 500, 0, 200, 1, NULL),
('10287', 400, 100, 500, 0, 200, 1, NULL),
('10288', 400, 100, 500, 0, 200, 1, NULL),
('10289', 400, 100, 500, 0, 200, 1, NULL),
('10290', 400, 100, 500, 0, 200, 1, NULL),
('10291', 400, 100, 500, 0, 200, 1, NULL),
('10292', 400, 100, 500, 0, 200, 1, NULL),
('10293', 400, 100, 500, 0, 200, 1, NULL),
('10294', 400, 100, 500, 0, 200, 1, NULL),
('10295', 400, 100, 500, 0, 200, 1, NULL),
('10296', 400, 100, 500, 0, 200, 1, NULL),
('10297', 400, 100, 500, 0, 200, 1, NULL),
('10298', 400, 100, 500, 0, 200, 1, NULL),
('10299', 400, 100, 500, 0, 200, 1, NULL),
('10300', 400, 100, 500, 0, 200, 1, NULL),
('10301', 400, 100, 500, 0, 200, 1, NULL),
('10302', 400, 100, 500, 0, 200, 1, NULL),
('10303', 400, 100, 500, 0, 200, 1, NULL),
('10304', 400, 100, 500, 0, 200, 1, NULL),
('10305', 400, 100, 500, 0, 200, 1, NULL),
('10306', 400, 100, 500, 0, 200, 1, NULL),
('10307', 400, 100, 500, 0, 200, 1, NULL),
('10308', 400, 100, 500, 0, 200, 1, NULL),
('10309', 400, 100, 500, 0, 200, 1, NULL),
('10310', 400, 100, 500, 0, 200, 1, NULL),
('10311', 400, 100, 500, 0, 200, 1, NULL),
('10312', 400, 100, 500, 0, 200, 1, NULL),
('10313', 400, 100, 500, 0, 200, 1, NULL),
('10314', 400, 100, 500, 0, 200, 1, NULL),
('10315', 400, 100, 500, 0, 200, 1, NULL),
('10316', 400, 100, 500, 0, 200, 1, NULL),
('10317', 400, 100, 500, 0, 200, 1, NULL),
('10318', 400, 100, 500, 0, 200, 1, NULL),
('10319', 400, 100, 500, 0, 200, 1, NULL),
('10320', 400, 100, 500, 0, 200, 1, NULL),
('10321', 400, 100, 500, 0, 200, 1, NULL),
('10322', 400, 100, 500, 0, 200, 1, NULL),
('10323', 400, 100, 500, 0, 200, 1, NULL),
('10324', 400, 100, 500, 0, 200, 1, NULL),
('10325', 400, 100, 500, 0, 200, 1, NULL),
('10326', 400, 100, 500, 0, 200, 1, NULL),
('10327', 400, 100, 500, 0, 200, 1, NULL),
('10328', 400, 100, 500, 0, 200, 1, NULL),
('10329', 400, 100, 500, 0, 200, 1, NULL),
('10330', 400, 100, 500, 0, 200, 1, NULL),
('10331', 400, 100, 500, 0, 200, 1, NULL),
('10332', 400, 100, 500, 0, 200, 1, NULL),
('10333', 400, 100, 500, 0, 200, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tax_master`
--

CREATE TABLE `tax_master` (
  `tax_slab_id` int(10) NOT NULL,
  `tax_percent` float(4,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tax_master`
--

INSERT INTO `tax_master` (`tax_slab_id`, `tax_percent`) VALUES
(1, 18.00);

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
  ADD KEY `unit` (`unit_id`),
  ADD KEY `tax` (`tax_slab_id`);

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
-- Indexes for table `tax_master`
--
ALTER TABLE `tax_master`
  ADD PRIMARY KEY (`tax_slab_id`);

--
-- Indexes for table `unit_master`
--
ALTER TABLE `unit_master`
  ADD PRIMARY KEY (`unit_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tax_master`
--
ALTER TABLE `tax_master`
  MODIFY `tax_slab_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  ADD CONSTRAINT `tax` FOREIGN KEY (`tax_slab_id`) REFERENCES `tax_master` (`tax_slab_id`),
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
