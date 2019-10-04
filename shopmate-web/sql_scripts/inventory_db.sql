-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 03, 2019 at 07:13 AM
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
-- Database: `inventory_db`
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
  `unit_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item_master`
--

INSERT INTO `item_master` (`item_id`, `item_name`, `item_description`, `hsn_code`, `tax_slab_id`, `unit_id`) VALUES
('10013', 'Redmi Note 6 Pro (Black, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 256 GB 15.9 cm (6.26 inch) FHD  Display 12MP   5MP | 20MP   2MP Dual Front Camera 4000 mAh Li-polymer Battery Qualcomm Snapdragon 636 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1),
('10014', 'Redmi Note 6 Pro (Blue, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 256 GB 15.9 cm (6.26 inch) FHD  Display 12MP   5MP | 20MP   2MP Dual Front Camera 4000 mAh Li-polymer Battery Qualcomm Snapdragon 636 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1),
('10015', 'Redmi Note 6 Pro (Rose Gold, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 256 GB 15.9 cm (6.26 inch) FHD  Display 12MP   5MP | 20MP   2MP Dual Front Camera 4000 mAh Li-polymer Battery Qualcomm Snapdragon 636 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1),
('10016', 'Redmi 6 (Rose Gold, 32 GB)', ' 3 GB RAM | 32 GB ROM | Expandable Upto 256 GB 13.84 cm (5.45 inch) HD  Display 12MP   5MP | 5MP Front Camera 3000 mAh Lithium-polymer Battery 2.0 GHz Mediatek P22 Octacore Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1),
('10017', 'Redmi Note 6 Pro (Black, 64 GB)', ' 6 GB RAM | 64 GB ROM | Expandable Upto 256 GB 15.9 cm (6.26 inch) FHD  Display 12MP   5MP | 20MP   2MP Dual Front Camera 4000 mAh Li-polymer Battery Qualcomm Snapdragon 636 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1),
('10018', 'Redmi 6 (Black, 64 GB)', ' 3 GB RAM | 64 GB ROM | Expandable Upto 256 GB 13.84 cm (5.45 inch) HD  Display 12MP   5MP | 5MP Front Camera 3000 mAh Lithium-polymer Battery 2.0 GHz Mediatek P22 Octacore Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1),
('10019', 'Redmi Note 5 Pro (Black, 64 GB)', ' 6 GB RAM | 64 GB ROM | Expandable Upto 128 GB 15.21 cm (5.99 inch) Full HD  Display 12MP   5MP | 20MP Front Camera 4000 mAh Li Polymer Battery Qualcomm Snapdragon 636 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1),
('10020', 'Redmi 6 (Black, 32 GB)', ' 3 GB RAM | 32 GB ROM | Expandable Upto 256 GB 13.84 cm (5.45 inch) HD  Display 12MP   5MP | 5MP Front Camera 3000 mAh Lithium-polymer Battery 2.0 GHz Mediatek P22 Octacore Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1),
('10021', 'Redmi 6 (Blue, 32 GB)', ' 3 GB RAM | 32 GB ROM | Expandable Upto 256 GB 13.84 cm (5.45 inch) HD  Display 12MP   5MP | 5MP Front Camera 3000 mAh Lithium-polymer Battery 2.0 GHz Mediatek P22 Octacore Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1),
('10022', 'Redmi 6 (Gold, 64 GB)', ' 3 GB RAM | 64 GB ROM | Expandable Upto 256 GB 13.84 cm (5.45 inch) HD  Display 12MP   5MP | 5MP Front Camera 3000 mAh Lithium-polymer Battery 2.0 GHz Mediatek P22 Octacore Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1),
('10023', 'Redmi 6 (Rose Gold, 64 GB)', ' 3 GB RAM | 64 GB ROM | Expandable Upto 256 GB 13.84 cm (5.45 inch) HD  Display 12MP   5MP | 5MP Front Camera 3000 mAh Lithium-polymer Battery 2.0 GHz Mediatek P22 Octacore Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1),
('10024', 'Redmi Note 6 Pro (Red, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 256 GB 15.9 cm (6.26 inch) FHD  Display 12MP   5MP | 20MP   2MP Dual Front Camera 4000 mAh Li-polymer Battery Qualcomm Snapdragon 636 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1),
('10025', 'Redmi Note 5 Pro (Gold, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 128 GB 15.21 cm (5.99 inch) Full HD  Display 12MP   5MP | 20MP Front Camera 4000 mAh Li Polymer Battery Qualcomm Snapdragon 636 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1),
('10026', 'Redmi 6 (Gold, 32 GB)', ' 3 GB RAM | 32 GB ROM | Expandable Upto 256 GB 13.84 cm (5.45 inch) HD  Display 12MP   5MP | 5MP Front Camera 3000 mAh Lithium-polymer Battery 2.0 GHz Mediatek P22 Octacore Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1),
('10027', 'Redmi 6 (Blue, 64 GB)', ' 3 GB RAM | 64 GB ROM | Expandable Upto 256 GB 13.84 cm (5.45 inch) HD  Display 12MP   5MP | 5MP Front Camera 3000 mAh Lithium-polymer Battery 2.0 GHz Mediatek P22 Octacore Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1),
('10028', 'Redmi Note 6 Pro (Blue, 64 GB)', ' 6 GB RAM | 64 GB ROM | Expandable Upto 256 GB 15.9 cm (6.26 inch) FHD  Display 12MP   5MP | 20MP   2MP Dual Front Camera 4000 mAh Li-polymer Battery Qualcomm Snapdragon 636 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1),
('10029', 'Redmi Note 5 Pro (Black, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 128 GB 15.21 cm (5.99 inch) Full HD  Display 12MP   5MP | 20MP Front Camera 4000 mAh Li Polymer Battery Qualcomm Snapdragon 636 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1),
('10030', 'Redmi Note 6 Pro (Red, 64 GB)', ' 6 GB RAM | 64 GB ROM | Expandable Upto 256 GB 15.9 cm (6.26 inch) FHD  Display 12MP   5MP | 20MP   2MP Dual Front Camera 4000 mAh Li-polymer Battery Qualcomm Snapdragon 636 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1),
('10031', 'Redmi Note 6 Pro (Rose Gold, 64 GB)', ' 6 GB RAM | 64 GB ROM | Expandable Upto 256 GB 15.9 cm (6.26 inch) FHD  Display 12MP   5MP | 20MP   2MP Dual Front Camera 4000 mAh Li-polymer Battery Qualcomm Snapdragon 636 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1),
('10046', 'Redmi 6 Pro (Lake Blue, 32 GB)', ' 3 GB RAM | 32 GB ROM | Expandable Upto 256 GB 14.83 cm (5.84 inch) FHD  Display 12MP   5MP | 5MP Front Camera 4000 mAh Battery Qualcomm Snapdragon 625 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Battery and Accessories', '8517', 1, 1),
('10047', 'Mi A2 (Blue/Lake Blue, 64 GB)', ' 4 GB RAM | 64 GB ROM | 15.21 cm (5.99 inch) FHD  Display 20MP   12MP | 20MP Front Camera 3010 mAh Battery Qualcomm Snapdragon 660 Octacore Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Battery and Accessories', '8517', 1, 1),
('10048', 'Mi Max 2 (Black, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 128 GB 16.36 cm (6.44 inch) Full HD Display 12MP Rear Camera | 5MP Front Camera 5300 mAh Li-Polymer Battery Qualcomm Snapdragon 625 Octa Core 2 Ghz Processor Brand Warranty of 1 Year Available for Mobile', '8517', 1, 1),
('10049', 'Redmi 5 (Black, 32 GB)', ' 3 GB RAM | 32 GB ROM | Expandable Upto 128 GB 14.48 cm (5.7 inch) HD  Display 12MP Rear Camera | 5MP Front Camera 3300 mAh Battery Qualcomm Snapdragon 450 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1),
('10050', 'Redmi 6 Pro (Red, 32 GB)', ' 3 GB RAM | 32 GB ROM | Expandable Upto 256 GB 14.83 cm (5.84 inch) FHD  Display 12MP   5MP | 5MP Front Camera 4000 mAh Battery Qualcomm Snapdragon 625 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Battery and Accessories', '8517', 1, 1),
('10051', 'Redmi Y2 (Gold, 32 GB)', ' 3 GB RAM | 32 GB ROM | 15.21 cm (5.99 inch) Display 12MP Rear Camera | 16MP Front Camera 3080 mAh Battery 1', '8517', 1, 1),
('10052', 'Redmi Note 5 Pro (Rose Gold, 64 GB)', ' 6 GB RAM | 64 GB ROM | Expandable Upto 128 GB 15.21 cm (5.99 inch) Full HD  Display 12MP   5MP | 20MP Front Camera 4000 mAh Li Polymer Battery Qualcomm Snapdragon 636 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1),
('10053', 'Redmi Note 5 (Gold, 32 GB)', ' 3 GB RAM | 32 GB ROM | Expandable Upto 128 GB 15.21 cm (5.99 inch) Full HD  Display 12MP Rear Camera | 5MP Front Camera 4000 mAh Li Polymer Battery Qualcomm Snapdragon 625 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1),
('10054', 'Mi A2 (Red, 64 GB)', ' 4 GB RAM | 64 GB ROM | 15.21 cm (5.99 inch) FHD  Display 20MP   12MP | 20MP Front Camera 3010 mAh Battery Qualcomm Snapdragon 660 Octacore Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Battery and Accessories', '8517', 1, 1),
('10055', 'Redmi 6 Pro (Lake Blue, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 256 GB 14.83 cm (5.84 inch) FHD  Display 12MP   5MP | 5MP Front Camera 4000 mAh Battery Qualcomm Snapdragon 625 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Battery and Accessories', '8517', 1, 1),
('10056', 'Redmi 6 Pro (Gold, 32 GB)', ' 3 GB RAM | 32 GB ROM | Expandable Upto 256 GB 14.83 cm (5.84 inch) FHD  Display 12MP   5MP | 5MP Front Camera 4000 mAh Battery Qualcomm Snapdragon 625 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Battery and Accessories', '8517', 1, 1),
('10057', 'Redmi 6 Pro (Black, 64 GB)', ' 4 GB RAM | 64 GB ROM | 14.83 cm (5.84 inch) Display 12MP Rear Camera 4000 mAh Battery 12 months', '8517', 1, 1),
('10058', 'Redmi Y2 (Blue, 32 GB)', ' 3 GB RAM | 32 GB ROM | 15.21 cm (5.99 inch) Display 12MP Rear Camera | 16MP Front Camera 3080 mAh Battery 1 Year Warranty', '8517', 1, 1),
('10059', 'Redmi Y2 (Rose Gold, 32 GB)', ' 3 GB RAM | 32 GB ROM | 15.21 cm (5.99 inch) Display 12MP Rear Camera | 16MP Front Camera 3080 mAh Battery 1 Year Warranty', '8517', 1, 1),
('10060', 'Redmi Note 5 (Black, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 128 GB 15.21 cm (5.99 inch) Full HD  Display 12MP Rear Camera | 5MP Front Camera 4000 mAh Li Polymer Battery Qualcomm Snapdragon 625 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1),
('10061', 'Redmi Y2 (Black, 32 GB)', ' 3 GB RAM | 32 GB ROM | 15.21 cm (5.99 inch) Display 12MP Rear Camera 3080 mAh Battery 1 Year Warranty', '8517', 1, 1),
('10062', 'Mi A2 (Black, 128 GB)', ' 6 GB RAM | 128 GB ROM | 15.21 cm (5.99 inch) Display 20MP Rear Camera 3010 mAh Battery 1 Year Warranty', '8517', 1, 1),
('10063', 'Redmi 6 Pro (Black, 32 GB)', ' 3 GB RAM | 32 GB ROM | Expandable Upto 256 GB 14.83 cm (5.84 inch) FHD  Display 12MP   5MP | 5MP Front Camera 4000 mAh Battery Qualcomm Snapdragon 625 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Battery and Accessories', '8517', 1, 1),
('10064', 'Redmi 5 (Black, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 128 GB 14.48 cm (5.7 inch) HD  Display 12MP Rear Camera | 5MP Front Camera 3300 mAh Battery Qualcomm Snapdragon 450 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1),
('10065', 'Redmi 6 Pro (Gold, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 256 GB 14.83 cm (5.84 inch) FHD  Display 12MP   5MP | 5MP Front Camera 4000 mAh Battery Qualcomm Snapdragon 625 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Battery and Accessories', '8517', 1, 1),
('10066', 'Redmi 5 (Gold, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 128 GB 14.48 cm (5.7 inch) HD  Display 12MP Rear Camera | 5MP Front Camera 3300 mAh Battery Qualcomm Snapdragon 450 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1),
('10067', 'Redmi 5 (Lake Blue, 16 GB)', ' 2 GB RAM | 16 GB ROM | Expandable Upto 128 GB 14.48 cm (5.7 inch) HD  Display 12MP Rear Camera | 5MP Front Camera 3300 mAh Battery Qualcomm Snapdragon 450 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1),
('10068', 'Redmi 5 (Rose Gold, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 128 GB 14.48 cm (5.7 inch) HD  Display 12MP Rear Camera | 5MP Front Camera 3300 mAh Battery Qualcomm Snapdragon 450 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1),
('10069', 'Mi Mix 2 (Black, 128 GB)', ' 6 GB RAM | 128 GB ROM | 15.21 cm (5.99 inch) Full HD  Display 12MP Rear Camera | 5MP Front Camera 3400 mAh Li-polymer Battery Qualcomm Snapdragon 835 Octa Core 2.5 GHz Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1),
('10070', 'Redmi 5 (Gold, 32 GB)', ' 3 GB RAM | 32 GB ROM | Expandable Upto 128 GB 14.48 cm (5.7 inch) HD  Display 12MP Rear Camera | 5MP Front Camera 3300 mAh Battery Qualcomm Snapdragon 450 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1),
('10071', 'Redmi Y2 (Black, 32 GB)', ' 3 GB RAM | 32 GB ROM | 15.21 cm (5.99 inch) Display 12MP Rear Camera 3080 mAh Battery 1 Year Warranty', '8517', 1, 1),
('10072', 'Mi A2 (Black, 64 GB)', ' 4 GB RAM | 64 GB ROM | 15.21 cm (5.99 inch) FHD  Display 20MP   12MP | 20MP Front Camera 3010 mAh Battery Qualcomm Snapdragon 660 Octacore Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Battery and Accessories', '8517', 1, 1),
('10073', 'Redmi Y1 lite (Rose Gold, 16 GB)', ' 2 GB RAM | 16 GB ROM | Expandable Upto 128 GB 13.97 cm (5.5 inch) HD Display 13MP Rear Camera | 5MP Front Camera 3080 mAh Battery Snapdragon 425 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1),
('10074', 'Redmi 5A (Blue, 32 GB)', ' 3 GB RAM | 32 GB ROM | Expandable Upto 128 GB 12.7 cm (5 inch) HD Display 13MP Rear Camera | 5MP Front Camera 3000 mAh Li-polymer Battery Qualcomm Snapdragon 425 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1),
('10075', 'Redmi 6 Pro (Gold, 32 GB)', ' 3 GB RAM | 32 GB ROM | Expandable Upto 256 GB 14.83 cm (5.84 inch) FHD  Display 12MP   5MP | 5MP Front Camera 4000 mAh Battery Qualcomm Snapdragon 625 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Battery and Accessories', '8517', 1, 1),
('10076', 'Redmi 5A (Gold, 32 GB)', ' 3 GB RAM | 32 GB ROM | Expandable Upto 128 GB 12.7 cm (5 inch) HD Display 13MP Rear Camera | 5MP Front Camera 3000 mAh Li-polymer Battery Qualcomm Snapdragon 425 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1),
('10077', 'Redmi Y2 (Blue, 64 GB)', ' 4 GB RAM | 64 GB ROM | 15.21 cm (5.99 inch) Display 12MP Rear Camera | 16MP Front Camera 3080 mAh Battery 1 Year Warranty', '8517', 1, 1),
('10078', 'Redmi 6A (Blue, 32 GB)', ' 2 GB RAM | 32 GB ROM | Expandable Upto 128 GB 13.84 cm (5.45 inch) HD Display 13MP Rear Camera 3000 mAh Battery Mediateck Processor 1 Year Manufacturer Warranty', '8517', 1, 1),
('10079', 'Redmi Y2 (Black, 64 GB)', ' 4 GB RAM | 64 GB ROM | 15.21 cm (5.99 inch) HD Display 12MP Rear Camera | 16MP Front Camera 3080 mAh Battery 1 Year', '8517', 1, 1),
('10080', 'Mi A2 (Red, 128 GB)', ' 6 GB RAM | 128 GB ROM | 15.21 cm (5.99 inch) Display 20MP Rear Camera 3010 mAh Battery 1 Year', '8517', 1, 1),
('10081', 'Redmi 6 Pro (Black, 64 GB)', ' 4 GB RAM | 64 GB ROM | 14.83 cm (5.84 inch) Display 12MP Rear Camera 4000 mAh Battery 12 months', '8517', 1, 1),
('10082', 'Redmi Note 5 (Gold, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 128 GB 15.21 cm (5.99 inch) Full HD  Display 12MP Rear Camera | 5MP Front Camera 4000 mAh Li Polymer Battery Qualcomm Snapdragon 625 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1),
('10083', 'Redmi 5 (Lake Blue, 32 GB)', ' 3 GB RAM | 32 GB ROM | Expandable Upto 128 GB 14.48 cm (5.7 inch) HD  Display 12MP Rear Camera | 5MP Front Camera 3300 mAh Battery Qualcomm Snapdragon 450 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1),
('10084', 'Redmi Note 5 (Rose Gold, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 128 GB 15.21 cm (5.99 inch) Full HD  Display 12MP Rear Camera | 5MP Front Camera 4000 mAh Li Polymer Battery Qualcomm Snapdragon 625 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1),
('10085', 'Redmi 6 Pro (Black, 32 GB)', ' 3 GB RAM | 32 GB ROM | Expandable Upto 256 GB 14.83 cm (5.84 inch) FHD  Display 12MP   5MP | 5MP Front Camera 4000 mAh Battery Qualcomm Snapdragon 625 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Battery and Accessories', '8517', 1, 1),
('10086', 'Mi 4i (White, 16 GB)', ' 2 GB RAM | 16 GB ROM | 12.7 cm (5 inch) Full HD Display 13MP Rear Camera | 5MP Front Camera 3030 mAh Li-ion Polymer Battery 2nd-gen Snapdragon 615 64-bit octa-core Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1),
('10087', 'Mi 4i (Grey, 16 GB)', ' 2 GB RAM | 16 GB ROM | 12.7 cm (5 inch) Full HD Display 13MP Rear Camera | 5MP Front Camera 3030 mAh Li-ion Polymer Battery qualcomm 2nd-gen Snapdragon 615 64-bit octa-core Octa Core 1.7GHz Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1),
('10088', 'Redmi 6 Pro (Red, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 256 GB 14.83 cm (5.84 inch) FHD  Display 12MP   5MP | 5MP Front Camera 4000 mAh Battery Qualcomm Snapdragon 625 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Battery and Accessories', '8517', 1, 1),
('10089', 'Mi A1 (Gold, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 128 GB 13.97 cm (5.5 inch) Full HD Display 12MP   12MP | 5MP Front Camera 3080 mAh Li-polymer Battery Qualcomm Snapdragon 625 64 bit Octa Core 2GHz Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1),
('10090', 'Mi A1 (Rose Gold, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 128 GB 13.97 cm (5.5 inch) Full HD Display 12MP   12MP | 5MP Front Camera 3080 mAh Li-polymer Battery Qualcomm Snapdragon 625 64 bit Octa Core 2GHz Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1),
('10091', 'Mi A1 (Black, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 128 GB 13.97 cm (5.5 inch) Full HD Display 12MP   12MP | 5MP Front Camera 3080 mAh Li-polymer Battery Qualcomm Snapdragon 625 64 bit Octa Core 2GHz Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1),
('10092', 'Redmi 5 (Black, 16 GB)', ' 2 GB RAM | 16 GB ROM | Expandable Upto 128 GB 14.48 cm (5.7 inch) HD  Display 12MP Rear Camera | 5MP Front Camera 3300 mAh Battery Qualcomm Snapdragon 450 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1),
('10093', 'MI3 (Metallic Grey, 16 GB)', ' 2 GB RAM | 16 GB ROM | 12.7 cm (5 inch) Full HD Display 13MP Rear Camera | 2MP Front Camera 3050 mAh Li-Ion Battery qualcomm Qualcomm Snapdragon 800 8274AB Quad Core 2.3GHz Processor 1 Year for Mobile ', '8517', 1, 1),
('10094', 'Realme C1 (Navy Blue, 32 GB)', ' 3 GB RAM | 32 GB ROM | Expandable Upto 256 GB 15.75 cm (6.2 inch) HD  Display 13MP   2MP | 5MP Front Camera 4230 mAh Li-ion Battery Qualcomm Snapdragon 450 Octa Core 1.8 GHz Processor 2019 Edition Face Unlock Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1),
('10095', 'Realme C1 (Mirror Black, 32 GB)', ' 2 GB RAM | 32 GB ROM | Expandable Upto 256 GB 15.75 cm (6.2 inch) HD  Display 13MP   2MP | 5MP Front Camera 4230 mAh Li-ion Battery Qualcomm Snapdragon 450 Octa Core 1.8 GHz Processor 2019 Edition Face Unlock Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1),
('10096', 'Realme C1 (Mirror Black, 32 GB)', ' 3 GB RAM | 32 GB ROM | Expandable Upto 256 GB 15.75 cm (6.2 inch) HD  Display 13MP   2MP | 5MP Front Camera 4230 mAh Li-ion Battery Qualcomm Snapdragon 450 Octa Core 1.8 GHz Processor 2019 Edition Face Unlock Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1),
('10097', 'Realme C1 (Mirror Black, 16 GB)', ' 2 GB RAM | 16 GB ROM | Expandable Upto 256 GB 15.75 cm (6.2 inch) HD  Display 13MP   2MP | 5MP Front Camera 4230 mAh Li-ion Battery Qualcomm Snapdragon 450 Octa Core 1.8 GHz Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1),
('10098', 'Realme 2 (Diamond Black, 32 GB)', ' 3 GB RAM | 32 GB ROM | Expandable Upto 256 GB 15.75 cm (6.2 inch) HD  Display 13MP   2MP | 8MP Front Camera 4230 mAh Li-ion Battery Qualcomm Snapdragon 450 Octa Core 1.8 GHz Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1),
('10099', 'Realme 2 Pro (Ice Lake, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 256 GB 16.0 cm (6.3 inch) FHD  Display 16MP   2MP | 16MP Front Camera 3500 mAh Li-ion Battery Qualcomm Snapdragon 660 Octa Core 2.0GHz AIE Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1),
('10100', 'Realme 2 Pro (Blue Ocean, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 256 GB 16.0 cm (6.3 inch) FHD  Display 16MP   2MP | 16MP Front Camera 3500 mAh Li-ion Battery Qualcomm Snapdragon 660 Octa Core 2.0GHz AIE Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1),
('10101', 'Realme 2 Pro (Black Sea, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 256 GB 16.0 cm (6.3 inch) FHD  Display 16MP   2MP | 16MP Front Camera 3500 mAh Li-ion Battery Qualcomm Snapdragon 660 Octa Core 2.0GHz AIE Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1),
('10102', 'Realme 2 Pro (Blue Ocean, 64 GB)', ' 6 GB RAM | 64 GB ROM | Expandable Upto 256 GB 16.0 cm (6.3 inch) FHD  Display 16MP   2MP | 16MP Front Camera 3500 mAh Li-ion Battery Qualcomm Snapdragon 660 Octa Core 2.0GHz AIE Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1),
('10103', 'Realme 2 Pro (Black Sea, 64 GB)', ' 6 GB RAM | 64 GB ROM | Expandable Upto 256 GB 16.0 cm (6.3 inch) FHD  Display 16MP   2MP | 16MP Front Camera 3500 mAh Li-ion Battery Qualcomm Snapdragon 660 Octa Core 2.0GHz AIE Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1),
('10104', 'Realme U1 (Fiery Gold, 32 GB)', ' 3 GB RAM | 32 GB ROM | 16.0 cm (6.3 inch) Display 13MP Rear Camera 3500 mAh Battery 1 year manufacturer warranty for device and 6 months manufacturer warranty for in-box accessories including batteries from the date of purchase', '8517', 1, 1),
('10105', 'Realme C1 (Navy Blue, 32 GB)', ' 2 GB RAM | 32 GB ROM | Expandable Upto 256 GB 15.75 cm (6.2 inch) HD  Display 13MP   2MP | 5MP Front Camera 4230 mAh Li-ion Battery Qualcomm Snapdragon 450 Octa Core 1.8 GHz Processor 2019 Edition Face Unlock Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1),
('10106', 'Realme U1 (Ambitious Black, 32 GB)', ' 3 GB RAM | 32 GB ROM | 16.0 cm (6.3 inch) Display 13MP Rear Camera 3500 mAh Battery 1 year manufacturer warranty for device and 6 months manufacturer warranty for in-box accessories including batteries from the date of purchase', '8517', 1, 1),
('10107', 'Realme U1 (Brave Blue, 32 GB)', ' 3 GB RAM | 32 GB ROM | 16.0 cm (6.3 inch) Display 13MP Rear Camera 3500 mAh Battery 1 year manufacturer warranty for device and 6 months manufacturer warranty for in-box accessories including batteries from the date of purchase', '8517', 1, 1),
('10108', 'Realme C1 (Navy Blue, 16 GB)', ' 2 GB RAM | 16 GB ROM | Expandable Upto 256 GB 15.75 cm (6.2 inch) HD  Display 13MP   2MP | 5MP Front Camera 4230 mAh Li-ion Battery Qualcomm Snapdragon 450 Octa Core 1.8 GHz Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1),
('10109', 'Realme 2 (Diamond Blue, 32 GB)', ' 3 GB RAM | 32 GB ROM | Expandable Upto 256 GB 15.75 cm (6.2 inch) HD  Display 13MP   2MP | 8MP Front Camera 4230 mAh Li-ion Battery Qualcomm Snapdragon 450 Octa Core 1.8 GHz Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1),
('10110', 'Realme 2 (Diamond Black, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 256 GB 15.75 cm (6.2 inch) HD  Display 13MP   2MP | 8MP Front Camera 4230 mAh Li-ion Battery Qualcomm Snapdragon 450 Octa Core 1.8 GHz Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1),
('10111', 'Realme 2 (Diamond Red, 32 GB)', ' 3 GB RAM | 32 GB ROM | Expandable Upto 256 GB 15.75 cm (6.2 inch) HD  Display 13MP   2MP | 8MP Front Camera 4230 mAh Li-ion Battery Qualcomm Snapdragon 450 Octa Core 1.8 GHz Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1),
('10112', 'Realme 2 (Diamond Red, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 256 GB 15.75 cm (6.2 inch) HD  Display 13MP   2MP | 8MP Front Camera 4230 mAh Li-ion Battery Qualcomm Snapdragon 450 Octa Core 1.8 GHz Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1),
('10113', 'Realme 2 Pro (Ice Lake, 64 GB)', ' 6 GB RAM | 64 GB ROM | Expandable Upto 256 GB 16.0 cm (6.3 inch) FHD  Display 16MP   2MP | 16MP Front Camera 3500 mAh Li-ion Battery Qualcomm Snapdragon 660 Octa Core 2.0GHz AIE Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1),
('10114', 'Realme 2 Pro (Blue Ocean, 128 GB)', ' 8 GB RAM | 128 GB ROM | Expandable Upto 256 GB 16.0 cm (6.3 inch) FHD  Display 16MP   2MP | 16MP Front Camera 3500 mAh Li-ion Battery Qualcomm Snapdragon 660 Octa Core 2.0GHz AIE Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1),
('10115', 'Realme 2 Pro (Black Sea, 128 GB)', ' 8 GB RAM | 128 GB ROM | Expandable Upto 256 GB 16.0 cm (6.3 inch) FHD  Display 16MP   2MP | 16MP Front Camera 3500 mAh Li-ion Battery Qualcomm Snapdragon 660 Octa Core 2.0GHz AIE Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1),
('10116', 'Realme Realme1 (Diamond Black, 128 GB)', ' 6 GB RAM | 128 GB ROM | 15.24 cm (6 inch) Display 13MP Rear Camera 3410 mAh Battery 1 year manufacturer warranty for device and 6 months manufacturer warranty for in-box accessories including batteries from the date of purchase', '8517', 1, 1),
('10117', 'Realme Realme1 (Diamond Red, 32 GB)', ' 3 GB RAM | 32 GB ROM | 15.24 cm (6 inch) Display 13MP Rear Camera 3410 mAh Battery 1 year manufacturer warranty for device and 6 months manufacturer warranty for in-box accessories including batteries from the date of purchase', '8517', 1, 1),
('10118', 'Asus TUF Core i7 8th Gen - (8 GB/1 TB HDD/128 GB SSD/Windows 10 Home/6 GB Graphics) FX504GM-EN017T Gam...', ' Intel Core i7 Processor (8th Gen) 8 GB DDR4 RAM 64 bit Windows 10 Operating System 1 TB HDD|128 GB SSD 39.62 cm (15.6 inch) Display 1 Year Onsite Warranty', '8517', 1, 1),
('10119', 'Asus ROG Core i7 7th Gen - (8 GB/1 TB HDD/256 GB SSD/Windows 10 Home/6 GB Graphics) GL502VM-FY230T Gam...', ' Pre-installed Genuine Windows 10 Operating System (Includes Built-in Security, Free Automated Updates, Latest Features) Intel Core i7 Processor (7th Gen) 8 GB DDR4 RAM 64 bit Windows 10 Operating System 1 TB HDD|256 GB SSD 39.62 cm (15.6 inch) Display 1 Year Onsite Warranty', '8517', 1, 1),
('10120', 'Lenovo Legion Core i5 7th Gen - (8 GB/1 TB HDD/128 GB SSD/Windows 10 Home/4 GB Graphics) LN Y520-15IKB...', ' NVIDIA GeForce GTX 1050Ti for Desktop Level Performance 128 GB SSD for Reduced Boot Up Time and in Game Loading 2 x Harman Speakers with Dolby Audio Premium for Best Audio Experience Pre-installed Genuine Windows 10 Operating System (Includes Built-in Security, Free Automated Updates, Latest Features) Intel Core i5 Processor (7th Gen) 8 GB DDR4 RAM 64 bit Windows 10 Operating System 1 TB HDD|128 GB SSD 39.62 cm (15.6 inch) Display 1 Year Onsite Warranty', '8517', 1, 1),
('10121', 'Acer Predator Helios 300 Core i5 8th Gen - (8 GB/1 TB HDD/128 GB SSD/Windows 10 Home/4 GB Graphics) PH...', ' NVIDIA Geforce GTX 1050 Ti for Desktop Level Performance 128 GB SSD Capacity for Reduced Boot Up Time and in Game Loading Dual Fan Cooling with Metal AeroBlade for Interuption Free Gaming Optimized Dolby Audio Premium Sound Enhancement FineTip Backlit Keyboard with Independent Standard Numeric Keypad Intel Core i5 Processor (8th Gen) 8 GB DDR4 RAM 64 bit Windows 10 Operating System 1 TB HDD|128 GB SSD 39.62 cm (15.6 inch) Display 1 Year International Travelers Warranty (ITW)', '8517', 1, 1),
('10122', 'Acer Predator Helios 300 Core i5 8th Gen - (8 GB/1 TB HDD/128 GB SSD/Windows 10 Home/4 GB Graphics) PH...', ' NVIDIA Geforce GTX 1050 Ti for Desktop Level Performance 128 GB SSD Capacity for Reduced Boot Up Time and in Game Loading Dual Fan Cooling with Metal AeroBlade for Interuption Free Gaming Optimized Dolby Audio Premium Sound Enhancement FineTip Backlit Keyboard with Independent Standard Numeric Keypad Intel Core i5 Processor (8th Gen) 8 GB DDR4 RAM 64 bit Windows 10 Operating System 1 TB HDD|128 GB SSD 39.62 cm (15.6 inch) Display 1 Year International Travelers Warranty (ITW)', '8517', 1, 1),
('10123', 'Acer Predator Helios 300 Core i7 8th Gen - (8 GB/1 TB HDD/128 GB SSD/Windows 10 Home/4 GB Graphics) PH...', ' Intel Core i7 Processor (8th Gen) 8 GB DDR4 RAM 64 bit Windows 10 Operating System 1 TB HDD|128 GB SSD 39.62 cm (15.6 inch) Display 1 Year International Travelers Warranty (ITW)', '8517', 1, 1),
('10124', 'MSI GP Core i7 8th Gen - (16 GB/1 TB HDD/256 GB SSD/Windows 10 Home/6 GB Graphics) GP63 Leopard 8RE -4...', ' NVIDIA Geforce GTX 1060 for Desktop Level Performance 512 GB SSD for Reduced Boot Up Time and in Game Loading MSI\'s Cooler Boost 5 Technology for Interruption Free Gaming Giant Speakers for Immersive Audio Experience Pre-installed Genuine Windows 10 Operating System (Includes Built-in Security, Free Automated Updates, Latest Features) Intel Core i7 Processor (8th Gen) 16 GB DDR4 RAM 64 bit Windows 10 Operating System 1 TB HDD|256 GB SSD 39.62 cm (15.6 inch) Display 2 Years Carry In Warranty', '8517', 1, 1),
('10125', 'MSI GV Series Core i7 8th Gen - (16 GB/1 TB HDD/128 GB SSD/Windows 10 Home/6 GB Graphics) GV62 8RE-050...', ' Intel Core i7 Processor (8th Gen) 16 GB DDR4 RAM 64 bit Windows 10 Operating System 1 TB HDD|128 GB SSD 39.62 cm (15.6 inch) Display 2 Years Carry In Warranty', '8517', 1, 1),
('10126', 'MSI GL Series Core i7 7th Gen - (8 GB/1 TB HDD/Windows 10 Home/4 GB Graphics) GL62M 7RDX-2680IN Gaming...', ' NVIDIA Geforce GTX 1050 for Desktop Level Performance 3D Sound Experience with Nahimic 2  Technology MSI\'s Cooler Boost 4 Technology for Interruption Free Gaming Full HD LED Backlit Wideview Anti-glare Display for Better Visual Experience Pre-installed Genuine Windows 10 Operating System (Includes Built-in Security, Free Automated Updates, Latest Features) Intel Core i7 Processor (7th Gen) 8 GB DDR4 RAM 64 bit Windows 10 Operating System 1 TB HDD 39.62 cm (15.6 inch) Display 2 Years Carry In Warranty', '8517', 1, 1),
('10128', 'Asus TUF Core i5 8th Gen - (8 GB/1 TB HDD/Windows 10 Home/4 GB Graphics) FX504GD-E4021T Gaming Laptop', ' Intel Core i5 Processor (8th Gen) 8 GB DDR4 RAM 64 bit Windows 10 Operating System 1 TB HDD 39.62 cm (15.6 inch) Display 1 Year Onsite Warranty', '8517', 1, 1),
('10129', 'MSI GE Core i7 8th Gen - (16 GB/1 TB HDD/512 GB SSD/Windows 10 Home/8 GB Graphics) GE73 Raider RGB 8RF...', ' NVIDIA Geforce GTX 1070 for Desktop Level Performance 512 GB SSD for Reduced Boot Up Time and in Game Loading MSI\'s Cooler Boost 5 Technology for Interruption Free Gaming Per-Key RGB Gaming Keyboard Helps in Customizing Each Key Pre-installed Genuine Windows 10 Operating System (Includes Built-in Security, Free Automated Updates, Latest Features) Intel Core i7 Processor (8th Gen) 16 GB DDR4 RAM 64 bit Windows 10 Operating System 1 TB HDD|512 GB SSD 43.94 cm (17.3 inch) Display 2 Years Carry In Warranty', '8517', 1, 1),
('10130', 'Acer Nitro 5 Core i5 7th Gen - (8 GB/1 TB HDD/128 GB SSD/Windows 10 Home/2 GB Graphics) AN515-51 Gamin...', ' Pre-installed Genuine Windows 10 Operating System (Includes Built-in Security, Free Automated Updates, Latest Features) Intel Core i5 Processor (7th Gen) 8 GB DDR4 RAM 64 bit Windows 10 Operating System 1 TB HDD|128 GB SSD 39.62 cm (15.6 inch) Display 1 Year International Travelers Warranty (ITW)', '8517', 1, 1),
('10131', 'MSI GL Core i7 8th Gen - (8 GB/1 TB HDD/128 GB SSD/Windows 10 Home/4 GB Graphics) GL63 8RD-450IN Gamin...', ' NVIDIA Geforce GTX 1050 Ti for Desktop Level Performance 128 GB SSD for Reduced Boot Up Time and in Game Loading MSI\'s Cooler Boost 5 Technology for Interruption Free Gaming Giant Speakers for Immersive Audio Experience Pre-installed Genuine Windows 10 Operating System (Includes Built-in Security, Free Automated Updates, Latest Features) Intel Core i7 Processor (8th Gen) 8 GB DDR4 RAM 64 bit Windows 10 Operating System 1 TB HDD|128 GB SSD 39.62 cm (15.6 inch) Display 2 Years Carry In Warranty', '8517', 1, 1),
('10132', 'MSI GE Core i7 8th Gen - (16 GB/1 TB HDD/256 GB SSD/Windows 10 Home/8 GB Graphics) GE63 Raider RGB 8RF...', ' NVIDIA Geforce GTX 1070 for Desktop Level Performance 256 GB SSD for Reduced Boot Up Time and in Game Loading MSI\'s Cooler Boost 5 Technology for Interruption Free Gaming Giant Speakers for Immersive Audio Experience Pre-installed Genuine Windows 10 Operating System (Includes Built-in Security, Free Automated Updates, Latest Features) Intel Core i7 Processor (8th Gen) 16 GB DDR4 RAM 64 bit Windows 10 Operating System 1 TB HDD|256 GB SSD 39.62 cm (15.6 inch) Display 2 Years Carry In Warranty', '8517', 1, 1),
('10133', 'Asus TUF Core i5 8th Gen - (8 GB/1 TB HDD/128 GB SSD/Windows 10 Home/4 GB Graphics) FX504GE-E4366T Gam...', ' Intel Core i5 Processor (8th Gen) 8 GB DDR4 RAM 64 bit Windows 10 Operating System 1 TB HDD|128 GB SSD 39.62 cm (15.6 inch) Display 1 Year Global Warranty by Asus', '8517', 1, 1),
('10134', 'Asus TUF Core i7 8th Gen - (8 GB/1 TB HDD/128 GB SSD/Windows 10 Home/4 GB Graphics) FX504GE-EN224T Gam...', NULL, '8517', 1, 1),
('10135', 'Asus Core i7 7th Gen - (8 GB/1 TB HDD/128 GB SSD/Windows 10/4 GB Graphics) FX553VD-DM1032T Gaming Lapt...', ' Pre-installed Genuine Windows 10 Operating System (Includes Built-in Security, Free Automated Updates, Latest Features) Intel Core i7 Processor (7th Gen) 8 GB DDR4 RAM 64 bit Windows 10 Operating System 1 TB HDD|128 GB SSD 39.62 cm (15.6 inch) Display 1 Year Onsite Warranty', '8517', 1, 1),
('10136', 'MSI GS Core i7 8th Gen - (16 GB/512 GB SSD/Windows 10 Home/6 GB Graphics) GS65 8RE-084IN Gaming Laptop', ' NVIDIA Geforce GTX 1060 for Desktop Level Performance 512 GB SSD for Reduced Boot Up Time and in Game Loading Per-Key RGB Gaming Keyboard Helps in Customizing Each Key Pre-installed Genuine Windows 10 Operating System (Includes Built-in Security, Free Automated Updates, Latest Features) Intel Core i7 Processor (8th Gen) 16 GB DDR4 RAM 64 bit Windows 10 Operating System 512 GB SSD 39.62 cm (15.6 inch) Display 2 Years Carry In Warranty', '8517', 1, 1),
('10137', 'Asus ROG Strix Edition Core i7 7th Gen - (16 GB/1 TB HDD/128 GB SSD/Windows 10 Home/6 GB Graphics) GL5...', ' NVIDIA Geforce GTX 1060 for Desktop Level Performance 128 GB NVMe PCIe 3.0 x4 SSD 4 Zone Customizable RGB Backlit with Anti-ghosting N-Key Rollover Keyboard Dual Fans Intelligent Hyper Cooling Design Sonic Studio Software with in Game Noise Cancellation and Voice Volume Stabilization Technology Pre-installed Genuine Windows 10 Operating System (Includes Built-in Security, Free Automated Updates, Latest Features) Intel Core i7 Processor (7th Gen) 16 GB DDR4 RAM 64 bit Windows 10 Operating System 1 TB HDD|128 GB SSD 39.62 cm (15.6 inch) Display 2 Years Onsite Warranty', '8517', 1, 1),
('10138', 'MSI GV Series Core i5 7th Gen - (8 GB/1 TB HDD/DOS/4 GB Graphics) GV62 7RD-2627XIN Laptop', ' NVIDIA Geforce GTX 1050 for Desktop Level Performance 3D Sound Experience with Nahimic 2  Technology Full HD LED Backlit Widescreen Anti-glare Display for Better Visual Experience Intel Core i5 Processor (7th Gen) 8 GB DDR4 RAM DOS Operating System 1 TB HDD 39.62 cm (15.6 inch) Display 2 Years Carry In Warranty', '8517', 1, 1),
('10139', 'Asus FX553 Core i7 7th Gen - (8 GB/1 TB HDD/Windows 10/4 GB Graphics) FX553VE-DM318T Gaming Laptop', ' NVIDIA Geforce GTX 1050 Ti for Desktop Level Performance Red Backlit Anti Ghosting Keyboard Pre-installed Genuine Windows 10 Operating System (Includes Built-in Security, Free Automated Updates, Latest Features) Intel Core i7 Processor (7th Gen) 8 GB DDR4 RAM 64 bit Windows 10 Operating System 1 TB HDD 39.62 cm (15.6 inch) Display 2 Years Onsite Warranty', '8517', 1, 1),
('10140', 'Asus FX503 Core i7 7th Gen - (8 GB/1 TB HDD/128 GB SSD/Windows 10 Home/4 GB Graphics) FX503VD-DM112T G...', ' NVIDIA Geforce GTX 1050 for Desktop Level Performance A High Capacity Battery Ensures Stay Productive and Entertained Throughout the Day Powered by ICEpower Technology which Delivers Truly Immersive Listening and Gaming Experiences Additional Fan Overboost Function Maximizes Cooling Efficiency Pre-installed Genuine Windows 10 Operating System (Includes Built-in Security, Free Automated Updates, Latest Features) Intel Core i7 Processor (7th Gen) 8 GB DDR4 RAM 64 bit Windows 10 Operating System 1 TB HDD|128 GB SSD 39.62 cm (15.6 inch) Display 2 Years Onsite Warranty', '8517', 1, 1),
('10141', 'Asus FX553 Core i7 7th Gen - (8 GB/1 TB HDD/Windows 10 Home/4 GB Graphics) FX553VD-DM013T Gaming Lapto...', ' NVIDIA Geforce GTX 1050 for Desktop Level Performance Asus Cooling Overboost with Controllable Fan Speeds Array Microphones to Filter Out Ambient Noise Red Backlit Anti Ghosting Keyboard Stylish Red Backlit Anti Ghosting Keyboard with 30 Key Rollover Pre-installed Genuine Windows 10 Operating System (Includes Built-in Security, Free Automated Updates, Latest Features) Intel Core i7 Processor (7th Gen) 8 GB DDR4 RAM 64 bit Windows 10 Operating System 1 TB HDD 39.62 cm (15.6 inch) Display 2 Year Onsite Warranty', '8517', 1, 1),
('10142', 'Asus ROG Strix Edition Core i7 7th Gen - (8 GB/1 TB HDD/128 GB SSD/Windows 10 Home/4 GB Graphics) GL50...', ' NVIDIA Geforce GTX 1050 for Desktop Level Performance 128 GB SSD for Reduced Boot Up Time and in Game Loading Pre-installed Genuine Windows 10 Operating System (Includes Built-in Security, Free Automated Updates, Latest Features) Intel Core i7 Processor (7th Gen) 8 GB DDR4 RAM 64 bit Windows 10 Operating System 1 TB HDD|128 GB SSD 39.62 cm (15.6 inch) Display 2 Years Onsite Warranty', '8517', 1, 1),
('10143', 'Acer Predator Helios 300 Core i5 7th Gen - (8 GB/1 TB HDD/128 GB SSD/Windows 10 Home/4 GB Graphics) G3...', ' NVIDIA Geforce GTX 1050Ti for Desktop Level Performance 128 GB SSD for Reduced Boot Up Time and in Game Loading Upgradable SSD Upto 512 GB and RAM Upto 32 GB Dual Fan Cooling with Metal AeroBlade 3D Pre-installed Genuine Windows 10 Operating System (Includes Built-in Security, Free Automated Updates, Latest Features) Intel Core i5 Processor (7th Gen) 8 GB DDR4 RAM 64 bit Windows 10 Operating System 1 TB HDD|128 GB SSD 39.62 cm (15.6 inch) Display 1 Year International Travelers Warranty (ITW)', '8517', 1, 1),
('10144', 'Asus ROG Core i7 7th Gen - (8 GB/1 TB HDD/Windows 10 Home/4 GB Graphics) GL553VD-FY103T Gaming Laptop', ' NVIDIA Geforce GTX 1050 for Desktop Level Performance 2.8 GHz with Turbo Boost Upto 3.8 GHz Clock Speed Full HD LED Backlit Ultra Slim 300-nits Anti-glare Display Pre-installed Genuine Windows 10 Operating System (Includes Built-in Security, Free Automated Updates, Latest Features) Intel Core i7 Processor (7th Gen) 8 GB DDR4 RAM 64 bit Windows 10 Operating System 1 TB HDD 39.62 cm (15.6 inch) Display 2 Years Onsite Warranty', '8517', 1, 1),
('10145', 'MSI GV Series Core i7 7th Gen - (8 GB/1 TB HDD/128 GB SSD/Windows 10 Home/4 GB Graphics) GV62 7RE-2401...', ' NVIDIA Geforce GTX 1050 Ti for Desktop Level Performance 128 GB SSD for Reduced Boot Up Time and in Game Loading Cooler Boost 4 Technology Offers Effective Cooling Design Exclusive Cooler Boost 4 Technology Nahimic 2  Technology Provides Immersive Listening Experience Pre-installed Genuine Windows 10 Operating System (Includes Built-in Security, Free Automated Updates, Latest Features) Intel Core i7 Processor (7th Gen) 8 GB DDR4 RAM 64 bit Windows 10 Operating System 1 TB HDD|128 GB SSD 39.62 cm (15.6 inch) Display 2 Years Carry In Warranty', '8517', 1, 1),
('10146', 'F', '', '8517', 1, 1),
('10147', 'Intex IT 212 40 W Bluetooth Home Audio Speaker', '', '8517', 1, 1),
('10148', 'F', '', '8517', 1, 1),
('10149', 'F', '', '8517', 1, 1),
('10150', 'Philips Multimedia Speaker System Explode MMS4040F/94', '', '8517', 1, 1),
('10151', 'F', '', '8517', 1, 1),
('10152', 'F', '', '8517', 1, 1),
('10153', 'Intex IT 2655 60 W Laptop/Desktop Speaker', '', '8517', 1, 1),
('10154', 'iball Hi-Basss Bluetooth Home Audio Speaker', '', '8517', 1, 1),
('10155', 'Zoook ZB-ROCKER THUNDER 20 Bluetooth Home Audio Speaker', '', '8517', 1, 1),
('10156', 'Zebronics BT4440 RUCF Bluetooth Home Audio Speaker', '', '8517', 1, 1),
('10157', 'Impex Lyric 5.1 70 Bluetooth Home Audio Speaker', '', '8517', 1, 1),
('10158', 'Philips SPA3800B/94 28 W Portable Bluetooth Home Audio ...', '', '8517', 1, 1),
('10159', 'iBELL 5.1 45 W Bluetooth Home Audio Speaker', '', '8517', 1, 1),
('10160', 'Intex IT 301N 60 W Home Audio Speaker', '', '8517', 1, 1),
('10161', 'Philips MMS2580B/94 30 W Portable Bluetooth Home Audio ...', '', '8517', 1, 1),
('10162', 'F', '', '8517', 1, 1),
('10163', 'F', '', '8517', 1, 1),
('10164', 'F', '', '8517', 1, 1),
('10165', 'SSKY BT 20 BAZOOKA WITH MIC 10 W Bluetooth Home Audio S...', '', '8517', 1, 1),
('10166', 'Intex IT 213 40 W Portable Bluetooth Home Audio Speaker', '', '8517', 1, 1),
('10167', 'F', '', '8517', 1, 1),
('10168', 'LG LK72B 40 W Bluetooth Home Audio Speaker', '', '8517', 1, 1),
('10169', 'Zync Karaoke 32 Bluetooth Home Audio Speaker', '', '8517', 1, 1),
('10170', 'Philips MMS2550F Dhoom 25 W Laptop/Computer Speaker wit...', '', '8517', 1, 1),
('10171', 'Panasonic SC-HT19GW-K 45 W Bluetooth Home Audio Speaker', '', '8517', 1, 1),
('10172', 'Philips SPA8140B/94 50 W Bluetooth Home Audio Speaker', '', '8517', 1, 1),
('10173', 'Impex CLASSIC Bluetooth Home Audio Speaker', '', '8517', 1, 1),
('10174', 'Philips MMS4545B/94 42 W Bluetooth Laptop/Desktop Speak...', '', '8517', 1, 1),
('10175', 'Saregama Carvaan Mini 3 W Bluetooth Home Audio Speaker', '', '8517', 1, 1),
('10176', 'Impex 5.1 (OPERA BLUE) Portable Bluetooth Home Audio Sp...', '', '8517', 1, 1),
('10177', 'JVC XN21F 28 W Bluetooth Home Audio Speaker', '', '8517', 1, 1),
('10178', 'Mitashi 3500 Watts PMPO 2.1 Ch. HT 2430 FUR Home Audio ...', '', '8517', 1, 1),
('10179', 'Envent Deejay 310 20 W Bluetooth Home Audio Speaker', '', '8517', 1, 1),
('10180', 'Zebronics 4.1 Multimedia SW3490 RUCF Home Audio Speaker', '', '8517', 1, 1),
('10181', 'F', '', '8517', 1, 1),
('10222', 'Samsung EVO Plus 32 GB MicroSDHC Class 10 95 MB/s Memo...', '', '8517', 1, 1),
('10223', 'SanDisk Ultra 32 GB MicroSDHC Class 10 98 MB/s Memory ...', '', '8517', 1, 1),
('10224', 'SanDisk Ultra 16 GB MicroSDHC Class 10 98 MB/s Memory ...', '', '8517', 1, 1),
('10225', 'SanDisk C10 32 GB Ultra SDHC Class 10 98 MB/s Memory C...', '', '8517', 1, 1),
('10226', 'SanDisk Ultra 32 GB MicroSDHC Class 10 98 MB/s Memory ...', '', '8517', 1, 1),
('10227', 'SanDisk Ultra 16 GB MicroSDHC Class 10 98 MB/s Memory ...', '', '8517', 1, 1),
('10228', 'SanDisk SDSDQM-032G-B35 32 GB MicroSD Card Class 4 48 M...', '', '8517', 1, 1),
('10229', 'Samsung EVO Plus 64 GB MicroSDXC Class 10 100 MB/s Mem...', '', '8517', 1, 1),
('10230', 'SanDisk Ultra A1 16 GB MicroSD Card Class 10 98 MB/s M...', '', '8517', 1, 1),
('10231', 'Samsung EVO 32 GB MicroSD Card Class 10 95 MB/s Memory...', '', '8517', 1, 1),
('10232', 'Samsung Evo Plus 64 GB MicroSDHC Class 10 100 Memory C...', '', '8517', 1, 1),
('10233', 'SanDisk Ultra 32 GB MicroSD Card Class 10 98 MB/s Memo...', '', '8517', 1, 1),
('10234', 'SanDisk Ultra 32 GB MicroSDHC Class 10 80 MB/s Memory ...', '', '8517', 1, 1),
('10235', 'SanDisk micro 16 GB MicroSD Card Class 4 4 MB/s Memory...', '', '8517', 1, 1),
('10236', 'SanDisk simple 8 GB MicroSD Card Class 4 40 MB/s Memor...', '', '8517', 1, 1),
('10237', 'SanDisk Ultra 16 GB MicroSDHC Class 10 98 MB/s Memory ...', '', '8517', 1, 1),
('10238', 'HP Micro SDHC 16 GB MicroSDHC Class 10 80 MB/s Memory ...', '', '8517', 1, 1),
('10239', 'SanDisk Micro 16 GB MicroSD Card Class 4 16 MB/s Memor...', '', '8517', 1, 1),
('10240', 'Samsung Evo 32GB 95 MB/s 32 GB MicroSDHC Class 10 95 MB...', '', '8517', 1, 1),
('10241', 'SanDisk Basic 16 GB MicroSDHC Class 4 20 MB/s Memory C...', '', '8517', 1, 1),
('10242', 'SanDisk C4 16 GB SD Card Class 4 30 MB/s Memory Card', '', '8517', 1, 1),
('10243', 'SanDisk Ultra 16 GB MicroSDHC Class 4 48 MB/s Memory C...', '', '8517', 1, 1),
('10244', 'HP MicroSDHC 32 GB MicroSDHC Class 10 80 MB/s Memory C...', '', '8517', 1, 1),
('10245', 'SanDisk ultra 32 GB MicroSDHC Class 10 80 MB/s Memory ...', '', '8517', 1, 1),
('10246', 'Strontium Nitro A1 32 GB SDHC UHS Class 1 100 Mbps Mem...', '', '8517', 1, 1),
('10247', 'Sony SR-32UY3A 32 GB MicroSD Card Class 10 90 MB/s Mem...', '', '8517', 1, 1),
('10248', 'HP U1 64 GB MicroSDXC Class 10 80 Mbps Memory Card', '', '8517', 1, 1),
('10249', 'SanDisk 4 16 GB SD Card Class 4 20 MB/s Memory Card', '', '8517', 1, 1),
('10250', 'SanDisk A1 16 GB Ultra SDHC Class 10 98 MB/s Memory Ca...', '', '8517', 1, 1),
('10251', 'SanDisk A1 Youtube 32 GB MicroSD Card Class 10 98 MB/s ...', '', '8517', 1, 1),
('10252', 'Samsung MB-MC128GA/IN 128 GB Ultra SDHC UHS Class 3 100...', '', '8517', 1, 1),
('10253', 'Samsung Evo  32 GB SD Card Class 10 95 MB/s Memory Car...', '', '8517', 1, 1),
('10254', 'Samsung EVO 32 GB MicroSD Card UHS Class 1 95 Memory C...', '', '8517', 1, 1),
('10255', 'SanDisk A1 32 GB Ultra SDHC Class 10 98 MB/s Memory Ca...', '', '8517', 1, 1),
('10256', 'Sandisk 16 GB MicroSD Class 4 Memory Card', '', '8517', 1, 1),
('10257', 'Samsung evo 32 GB MicroSDHC Class 10 95 MB/s Memory Ca...', '', '8517', 1, 1),
('10258', 'SanDisk C10 16 GB SD Card Class 10 98 MB/s Memory Card', '', '8517', 1, 1),
('10259', 'SanDisk 16 GB SDHC Class 4 90 MB/s Memory Card', '', '8517', 1, 1),
('10260', 'SanDisk Memory Card 16 GB MicroSD Card Class 10 24 MB/s...', '', '8517', 1, 1),
('10261', 'SanDisk SanDisk Ultra A1 16GB Class 10 Speed Up To 98MB...', '', '8517', 1, 1),
('10262', 'Samsung Galaxy S9 Plus (Burgundy Red, 64 GB)', ' 6 GB RAM | 64 GB ROM | Expandable Upto 400 GB 15.75 cm (6.2 inch) Quad HD  Display 12MP   12MP | 8MP Front Camera 3500 mAh Battery Exynos 9810 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1),
('10263', 'Samsung Galaxy Note 9 (Alpine White, 128 GB)', ' 6 GB RAM | 128 GB ROM | Expandable Upto 512 GB 16.26 cm (6.4 inch) Quad HD  Display 12MP   12MP | 8MP Front Camera 4000 mAh Lithium-ion Battery Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1),
('10264', 'Samsung Galaxy S9 Plus (Polaris Blue, 64 GB)', ' 6 GB RAM | 64 GB ROM | Expandable Upto 400 GB 15.75 cm (6.2 inch) Quad HD  Display 12MP   12MP | 8MP Front Camera 3500 mAh Battery Exynos 9810 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1),
('10265', 'Samsung Galaxy A9 (Caviar Black, 128 GB)', ' 6 GB RAM | 128 GB ROM | Expandable Upto 512 GB 16.0 cm (6.3 inch) FHD  Display 24MP   5MP   10MP  8MP | 24MP Front Camera 3800 mAh Lithium-ion Battery Qualcomm Snapdragon 660 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1),
('10266', 'Samsung Galaxy A9 (Caviar Black, 128 GB)', ' 8 GB RAM | 128 GB ROM | Expandable Upto 512 GB 16.0 cm (6.3 inch) FHD  Display 24MP   5MP   10MP  8MP | 24MP Front Camera 3800 mAh Lithium-ion Battery Qualcomm Snapdragon 660 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1),
('10267', 'Samsung Galaxy A9 (Lemonade Blue, 128 GB)', ' 6 GB RAM | 128 GB ROM | Expandable Upto 512 GB 16.0 cm (6.3 inch) FHD  Display 24MP   5MP   10MP  8MP | 24MP Front Camera 3800 mAh Lithium-ion Battery Qualcomm Snapdragon 660 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1),
('10268', 'Samsung Galaxy A9 (Lemonade Blue, 128 GB)', ' 8 GB RAM | 128 GB ROM | Expandable Upto 512 GB 16.0 cm (6.3 inch) FHD  Display 24MP   5MP   10MP  8MP | 24MP Front Camera 3800 mAh Lithium-ion Battery Qualcomm Snapdragon 660 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1),
('10269', 'Samsung Galaxy A9 (Bubblegum Pink, 128 GB)', ' 6 GB RAM | 128 GB ROM | Expandable Upto 512 GB 16.0 cm (6.3 inch) FHD  Display 24MP   5MP   10MP  8MP | 24MP Front Camera 3800 mAh Lithium-ion Battery Qualcomm Snapdragon 660 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1),
('10270', 'Samsung Galaxy A7 (Black, 128 GB)', ' 6 GB RAM | 128 GB ROM | Expandable Upto 512 GB 15.24 cm (6.0 inch) FHD  Display 24MP   5MP   8MP | 24MP Front Camera 3300 mAh Lithium-ion Battery Samsung Exynos Octa Core Processor (2.2 GHz) Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1),
('10271', 'Samsung Galaxy A7 (Blue, 128 GB)', ' 6 GB RAM | 128 GB ROM | Expandable Upto 512 GB 15.24 cm (6.0 inch) FHD  Display 24MP   5MP   8MP | 24MP Front Camera 3300 mAh Lithium-ion Battery Samsung Exynos Octa Core Processor (2.2 GHz) Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1);
INSERT INTO `item_master` (`item_id`, `item_name`, `item_description`, `hsn_code`, `tax_slab_id`, `unit_id`) VALUES
('10272', 'Samsung Galaxy A7 (Blue, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 512 GB 15.24 cm (6.0 inch) FHD  Display 24MP   5MP   8MP | 24MP Front Camera 3300 mAh Lithium-ion Battery Samsung Exynos Octa Core Processor (2.2 GHz) Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1),
('10273', 'Samsung Galaxy A7 (Gold, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 512 GB 15.24 cm (6.0 inch) FHD  Display 24MP   5MP   8MP | 24MP Front Camera 3300 mAh Lithium-ion Battery Samsung Exynos Octa Core Processor (2.2 GHz) Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1),
('10274', 'Samsung Galaxy A7 (Black, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 512 GB 15.24 cm (6.0 inch) FHD  Display 24MP   5MP   8MP | 24MP Front Camera 3300 mAh Lithium-ion Battery Samsung Exynos Octa Core Processor (2.2 GHz) Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1),
('10275', 'Samsung Galaxy J6 Plus (Black, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 512 GB 15.24 cm (6 inch) HD  Display 13MP   5MP | 8MP Front Camera 3300 mAh Battery Qualcomm Snapdragon SD425 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1),
('10276', 'Samsung Galaxy J4 Plus (Blue, 32 GB)', ' 2 GB RAM | 32 GB ROM | Expandable Upto 512 GB 15.24 cm (6 inch) HD  Display 13MP Rear Camera | 5MP Front Camera 3300 mAh Lithium-ion Battery Qualcomm Snapdragon SD425 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1),
('10277', 'Samsung Galaxy J6 Plus (Red, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 512 GB 15.24 cm (6 inch) HD  Display 13MP   5MP | 8MP Front Camera 3300 mAh Battery Qualcomm Snapdragon SD425 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1),
('10278', 'Samsung Galaxy J6 Plus (Blue, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 512 GB 15.24 cm (6 inch) HD  Display 13MP   5MP | 8MP Front Camera 3300 mAh Battery Qualcomm Snapdragon SD425 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1),
('10279', 'Samsung Galaxy J4 Plus (Black, 32 GB)', ' 2 GB RAM | 32 GB ROM | Expandable Upto 512 GB 15.24 cm (6 inch) HD  Display 13MP Rear Camera | 5MP Front Camera 3300 mAh Lithium-ion Battery Qualcomm Snapdragon SD425 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1),
('10280', 'Samsung Galaxy J4 Plus (Gold, 32 GB)', ' 2 GB RAM | 32 GB ROM | Expandable Upto 512 GB 15.24 cm (6 inch) HD  Display 13MP Rear Camera | 5MP Front Camera 3300 mAh Lithium-ion Battery Qualcomm Snapdragon SD425 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1),
('10281', 'Samsung Galaxy A8 Star (White, 64 GB)', ' 6 GB RAM | 64 GB ROM | 16.0 cm (6.3 inch) Display 24MP Rear Camera 3700 mAh Battery 1 year manufacturer warranty for device and 6 months manufacturer warranty for in-box accessories including batteries from the date of purchase', '8517', 1, 1),
('10282', 'Samsung Galaxy A8 Star (Black, 64 GB)', ' 6 GB RAM | 64 GB ROM | 16.0 cm (6.3 inch) Display 24MP Rear Camera 3700 mAh Battery 1 year manufacturer warranty for device and 6 months manufacturer warranty for in-box accessories including batteries from the date of purchase', '8517', 1, 1),
('10283', 'Samsung Galaxy J2 Core (Blue, 8 GB)', ' 1 GB RAM | 8 GB ROM | Expandable Upto 256 GB 12.7 cm (5 inch) quarter HD Display 8MP Rear Camera | 5MP Front Camera 2600 mAh Battery Exynos 7570 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1),
('10284', 'Samsung Galaxy J2 Core (Gold, 8 GB)', ' 1 GB RAM | 8 GB ROM | Expandable Upto 256 GB 12.7 cm (5 inch) quarter HD Display 8MP Rear Camera | 5MP Front Camera 2600 mAh Battery Exynos 7570 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1),
('10285', 'Samsung Galaxy J2 Core (Black, 8 GB)', ' 1 GB RAM | 8 GB ROM | Expandable Upto 256 GB 12.7 cm (5 inch) quarter HD Display 8MP Rear Camera | 5MP Front Camera 2600 mAh Battery Exynos 7570 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1),
('10286', 'Samsung Galaxy A8 Plus (Gold, 64 GB)', ' 6 GB RAM | 64 GB ROM | 15.24 cm (6 inch) Display 16MP Rear Camera 3500 mAh Battery 1 Year Warranty', '8517', 1, 1),
('10287', 'Samsung On7 Pro (Black, 16 GB)', ' 2 GB RAM | 16 GB ROM | 13.97 cm (5.5 inch) Display 13MP Rear Camera | 5MP Front Camera 3000 mAh Battery Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1),
('10288', 'Samsung Galaxy Note 9 (Metallic Copper, 512 GB)', ' 8 GB RAM | 512 GB ROM | Expandable Upto 512 GB 16.26 cm (6.4 inch) Quad HD  Display 12MP   12MP | 8MP Front Camera 4000 mAh Lithium-ion Battery Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1),
('10289', 'Samsung Galaxy Note 9 (Midnight Black, 512 GB)', ' 8 GB RAM | 512 GB ROM | Expandable Upto 512 GB 16.26 cm (6.4 inch) Quad HD  Display 12MP   12MP | 8MP Front Camera 4000 mAh Lithium-ion Battery Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1),
('10290', 'Samsung Galaxy Note 9 (Ocean Blue, 128 GB)', ' 6 GB RAM | 128 GB ROM | Expandable Upto 512 GB 16.26 cm (6.4 inch) Quad HD  Display 12MP   12MP | 8MP Front Camera 4000 mAh Lithium-ion Battery Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1),
('10291', 'Samsung Galaxy Note 9 (Metallic Copper, 128 GB)', ' 6 GB RAM | 128 GB ROM | Expandable Upto 512 GB 16.26 cm (6.4 inch) Quad HD  Display 12MP   12MP | 8MP Front Camera 4000 mAh Lithium-ion Battery Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1),
('10292', 'Samsung Galaxy Note 9 (Ocean Blue, 512 GB)', ' 8 GB RAM | 512 GB ROM | Expandable Upto 512 GB 16.26 cm (6.4 inch) Quad HD  Display 12MP   12MP | 8MP Front Camera 4000 mAh Lithium-ion Battery Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1),
('10293', 'Samsung Galaxy Note 9 (Lavender Purple, 128 GB)', ' 6 GB RAM | 128 GB ROM | Expandable Upto 512 GB 16.26 cm (6.4 inch) Quad HD  Display 12MP   12MP | 8MP Front Camera 4000 mAh Lithium-ion Battery Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1),
('10294', 'Samsung Galaxy Note 9 (Midnight Black, 128 GB)', ' 6 GB RAM | 128 GB ROM | Expandable Upto 512 GB 16.26 cm (6.4 inch) Quad HD  Display 12MP   12MP | 8MP Front Camera 4000 mAh Lithium-ion Battery Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1),
('10295', 'Samsung Galaxy On8 (Black, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 256 GB 15.24 cm (6 inch) HD  Display 16MP   5MP | 16MP Front Camera 3500 mAh Lithium-ion Battery Qualcomm Snapdragon 450 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1),
('10296', 'Samsung Galaxy On8 (Blue, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 256 GB 15.24 cm (6 inch) HD  Display 16MP   5MP | 16MP Front Camera 3500 mAh Lithium-ion Battery Qualcomm Snapdragon 450 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1),
('10297', 'Samsung Galaxy A6  (Black, 64 GB)', ' 4 GB RAM | 64 GB ROM | 15.24 cm (6 inch) FHD  Display 16MP   5MP | 24MP Front Camera 3500 mAh Battery Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1),
('10298', 'Samsung Galaxy A6  (Blue, 64 GB)', ' 4 GB RAM | 64 GB ROM | 15.24 cm (6 inch) FHD  Display 16MP   5MP | 24MP Front Camera 3500 mAh Battery Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1),
('10299', 'Samsung Galaxy A6  (Gold, 64 GB)', ' 4 GB RAM | 64 GB ROM | 15.24 cm (6 inch) FHD  Display 16MP   5MP | 24MP Front Camera 3500 mAh Battery Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1),
('10300', 'Samsung Galaxy A6 (Black, 64 GB)', ' 4 GB RAM | 64 GB ROM | 14.22 cm (5.6 inch) Display 16MP Rear Camera | 16MP Front Camera 3000 mAh Battery Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1),
('10301', 'Samsung Galaxy A6 (Gold, 64 GB)', ' 4 GB RAM | 64 GB ROM | 14.22 cm (5.6 inch) Display 16MP Rear Camera | 16MP Front Camera 3000 mAh Battery Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1),
('10302', 'Samsung Galaxy A6 (Blue, 64 GB)', ' 4 GB RAM | 64 GB ROM | 14.22 cm (5.6 inch) Display 16MP Rear Camera | 16MP Front Camera 3000 mAh Battery Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1),
('10303', 'Samsung A6 (Gold, 32 GB)', ' 4 GB RAM | 32 GB ROM | 14.22 cm (5.6 inch) Display 16MP Rear Camera 3000 mAh Battery 1', '8517', 1, 1),
('10304', 'Samsung Galaxy J8 (Blue, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 256 GB 15.24 cm (6 inch) HD  Display 16MP   5MP | 16MP Front Camera 3500 mAh Battery Qualcomm Snapdragon SDM450 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1),
('10305', 'Samsung Galaxy J8 (Black, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 256 GB 15.24 cm (6 inch) HD  Display 16MP   5MP | 16MP Front Camera 3500 mAh Battery Qualcomm Snapdragon SDM450 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1),
('10306', 'Samsung Galaxy J8 (Gold, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 256 GB 15.24 cm (6 inch) HD  Display 16MP   5MP | 16MP Front Camera 3500 mAh Battery Qualcomm Snapdragon SDM450 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1),
('10307', 'Samsung Galaxy On6 (Black, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 256 GB 14.22 cm (5.6 inch) HD  Display 13MP Rear Camera | 8MP Front Camera 3000 mAh Battery 1.6 GHz Exynos Octa Core Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1),
('10308', 'Samsung Galaxy On6 (Blue, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 256 GB 14.22 cm (5.6 inch) HD  Display 13MP Rear Camera | 8MP Front Camera 3000 mAh Battery 1.6 GHz Exynos Octa Core Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1),
('10309', 'Samsung Galaxy J4 (Blue, 32 GB)', ' 3 GB RAM | 32 GB ROM | Expandable Upto 256 GB 13.97 cm (5.5 inch) HD Display 13MP Rear Camera | 5MP Front Camera 3000 mAh Battery Exynos 7570 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1),
('10310', 'Samsung Galaxy J4 (Black, 32 GB)', ' 3 GB RAM | 32 GB ROM | Expandable Upto 256 GB 13.97 cm (5.5 inch) HD Display 13MP Rear Camera | 5MP Front Camera 3000 mAh Battery Exynos 7570 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1),
('10311', 'Samsung Galaxy J4 (Gold, 32 GB)', ' 3 GB RAM | 32 GB ROM | Expandable Upto 256 GB 13.97 cm (5.5 inch) HD Display 13MP Rear Camera | 5MP Front Camera 3000 mAh Battery Exynos 7570 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1),
('10312', 'Samsung Galaxy J4 (Gold, 16 GB)', ' 2 GB RAM | 16 GB ROM | Expandable Upto 256 GB 13.97 cm (5.5 inch) HD Display 13MP Rear Camera | 5MP Front Camera 3000 mAh Battery Exynos 7570 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1),
('10313', 'Samsung Galaxy J4 (Blue, 16 GB)', ' 2 GB RAM | 16 GB ROM | Expandable Upto 256 GB 13.97 cm (5.5 inch) HD Display 13MP Rear Camera | 5MP Front Camera 3000 mAh Battery Exynos 7570 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1),
('10314', 'Samsung Galaxy J7 Duo (Blue, 32 GB)', ' 4 GB RAM | 32 GB ROM | Expandable Upto 256 GB 13.97 cm (5.5 inch) HD Display 13MP   5MP | 8MP Front Camera 3000 mAh Battery Exynos 7884 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1),
('10315', 'Samsung Galaxy J4 (Black, 16 GB)', ' 2 GB RAM | 16 GB ROM | Expandable Upto 256 GB 13.97 cm (5.5 inch) HD Display 13MP Rear Camera | 5MP Front Camera 3000 mAh Battery Exynos 7570 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1),
('10316', 'Samsung Galaxy J6 (Gold, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 256 GB 14.22 cm (5.6 inch) HD  Display 13MP Rear Camera | 8MP Front Camera 3000 mAh Battery Exynos 7870 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1),
('10317', 'Samsung Galaxy J6 (Black, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 256 GB 14.22 cm (5.6 inch) HD  Display 13MP Rear Camera | 8MP Front Camera 3000 mAh Battery Exynos 7870 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1),
('10318', 'Samsung Galaxy J6 (Blue, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 256 GB 14.22 cm (5.6 inch) HD  Display 13MP Rear Camera | 8MP Front Camera 3000 mAh Battery Exynos 7870 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1),
('10319', 'Samsung Galaxy J6 (Blue, 32 GB)', ' 3 GB RAM | 32 GB ROM | Expandable Upto 256 GB 14.22 cm (5.6 inch) HD  Display 13MP Rear Camera | 8MP Front Camera 3000 mAh Battery Exynos 7870 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1),
('10320', 'Samsung Galaxy J6 (Black, 32 GB)', ' 3 GB RAM | 32 GB ROM | Expandable Upto 256 GB 14.22 cm (5.6 inch) HD  Display 13MP Rear Camera | 8MP Front Camera 3000 mAh Battery Exynos 7870 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1),
('10321', 'Samsung Galaxy J6 (Gold, 32 GB)', ' 3 GB RAM | 32 GB ROM | Expandable Upto 256 GB 14.22 cm (5.6 inch) HD  Display 13MP Rear Camera | 8MP Front Camera 3000 mAh Battery Exynos 7870 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1),
('10322', 'Samsung Guru FM Plus', ' NA ROM | 3.81 cm (1.5 inch) VGA Display 800 mAh Battery 1 Year Manufacturer Warranty', '8517', 1, 1),
('10323', 'Samsung Guru Music 2', ' NA ROM | 5.08 cm (2 inch) NA Display 800 mAh Battery 1 Year Manufacturer Warranty', '8517', 1, 1),
('10324', 'Samsung Metro XL', ' 64 MB RAM | 128 MB ROM | Expandable Upto 16 GB 7.11 cm (2.8 inch) QVGA Display 3.1MP Rear Camera | 2MP Front Camera 1200 mAh Li-Ion Battery 1 Year on Mobile', '8517', 1, 1),
('10325', 'Samsung Guru 1200', ' NA ROM | 3.81 cm (1.5 inch) NA Display 800 mAh Battery 1 Year for Mobile ', '8517', 1, 1),
('10326', 'Samsung Galaxy J2 2018 (Gold, 16 GB)', ' 2 GB RAM | 16 GB ROM | Expandable Upto 256 GB 12.7 cm (5 inch) Display 8MP Rear Camera | 5MP Front Camera 2600 mAh Battery Snapdragon 425 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1),
('10327', 'Samsung Galaxy J2 2018 (Black, 16 GB)', ' 2 GB RAM | 16 GB ROM | Expandable Upto 256 GB 12.7 cm (5 inch) Display 8MP Rear Camera | 5MP Front Camera 2600 mAh Battery Snapdragon 425 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1),
('10328', 'Samsung Galaxy J2 2018 (Pink, 16 GB)', ' 2 GB RAM | 16 GB ROM | Expandable Upto 256 GB 12.7 cm (5 inch) Display 8MP Rear Camera | 5MP Front Camera 2600 mAh Battery Snapdragon 425 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1),
('10329', 'Samsung Galaxy S9 Plus (Midnight Black, 256 GB)', ' 6 GB RAM | 256 GB ROM | 15.75 cm (6.2 inch) Full HD Display 12MP Rear Camera 3500 mAh Battery Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1),
('10330', 'Samsung Galaxy J7 Duo (Gold, 32 GB)', ' 4 GB RAM | 32 GB ROM | Expandable Upto 256 GB 13.97 cm (5.5 inch) HD Display 13MP   5MP | 8MP Front Camera 3000 mAh Battery Exynos 7884 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1),
('10331', 'Samsung Galaxy J7 Duo (Black, 32 GB)', ' 4 GB RAM | 32 GB ROM | Expandable Upto 256 GB 13.97 cm (5.5 inch) HD Display 13MP   5MP | 8MP Front Camera 3000 mAh Battery Exynos 7884 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1),
('10332', 'Samsung Galaxy S8 (Burgundy Red, 64 GB)', ' 4 GB RAM | 64 GB ROM | Expandable Upto 256 GB 14.73 cm (5.8 inch) Quad HD  Display 12MP Rear Camera | 8MP Front Camera 3000 mAh Battery Exynos 8895 Octa Core 2.3GHz Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1),
('10333', 'Samsung Galaxy S9 (Midnight Black, 128 GB)', ' 4 GB RAM | 128 GB ROM | Expandable Upto 400 GB 14.73 cm (5.8 inch) Quad HD  Display 12MP Rear Camera | 8MP Front Camera 3000 mAh Battery Exynos 9810 Processor Brand Warranty of 1 Year Available for Mobile and 6 Months for Accessories', '8517', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `price_master`
--

CREATE TABLE `price_master` (
  `item_id` varchar(50) NOT NULL,
  `mrp` float(20,2) DEFAULT NULL,
  `sale_price` float(20,2) DEFAULT NULL,
  `discount_price` float(20,2) DEFAULT NULL,
  `additional_charge` float(20,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `price_master`
--

INSERT INTO `price_master` (`item_id`, `mrp`, `sale_price`, `discount_price`, `additional_charge`) VALUES
('10013', 15999.00, 13999.00, 2000.00, 0.00),
('10014', 15999.00, 13999.00, 2000.00, 0.00),
('10015', 15999.00, 13999.00, 2000.00, 0.00),
('10016', 8999.00, 7999.00, 1000.00, 0.00),
('10017', 17999.00, 15999.00, 2000.00, 0.00),
('10018', 10499.00, 8499.00, 2000.00, 0.00),
('10019', 16999.00, 13999.00, 3000.00, 0.00),
('10020', 8999.00, 7999.00, 1000.00, 0.00),
('10021', 8999.00, 7999.00, 1000.00, 0.00),
('10022', 10499.00, 8499.00, 2000.00, 0.00),
('10023', 10499.00, 8499.00, 2000.00, 0.00),
('10024', 15999.00, 13999.00, 2000.00, 0.00),
('10025', 14999.00, 12999.00, 2000.00, 0.00),
('10026', 8999.00, 7999.00, 1000.00, 0.00),
('10027', 10499.00, 8499.00, 2000.00, 0.00),
('10028', 17999.00, 15999.00, 2000.00, 0.00),
('10029', 14999.00, 12999.00, 2000.00, 0.00),
('10030', 17999.00, 15999.00, 2000.00, 0.00),
('10031', 17999.00, 15999.00, 2000.00, 0.00),
('10046', 10990.00, 10990.00, 0.00, 0.00),
('10047', 14790.00, 14790.00, 0.00, 0.00),
('10048', 16999.00, 14999.00, 2000.00, 0.00),
('10049', 9199.00, 9199.00, 0.00, 0.00),
('10050', 10995.00, 10995.00, 0.00, 0.00),
('10051', 8999.00, 8999.00, 0.00, 0.00),
('10052', 15999.00, 15999.00, 0.00, 0.00),
('10053', 10585.00, 10585.00, 0.00, 0.00),
('10054', 14790.00, 14790.00, 0.00, 0.00),
('10055', 13490.00, 13490.00, 0.00, 0.00),
('10056', 10699.00, 10699.00, 0.00, 0.00),
('10057', 12399.00, 12399.00, 0.00, 0.00),
('10058', 9090.00, 9090.00, 0.00, 0.00),
('10059', 9090.00, 9090.00, 0.00, 0.00),
('10060', 12980.00, 12980.00, 0.00, 0.00),
('10061', 8999.00, 8999.00, 0.00, 0.00),
('10062', 17990.00, 17990.00, 0.00, 0.00),
('10063', 10390.00, 10390.00, 0.00, 0.00),
('10064', 11999.00, 11999.00, 0.00, 0.00),
('10065', 11890.00, 11890.00, 0.00, 0.00),
('10066', 11499.00, 11499.00, 0.00, 0.00),
('10067', 8495.00, 8495.00, 0.00, 0.00),
('10068', 11999.00, 11999.00, 0.00, 0.00),
('10069', 37999.00, 29999.00, 8000.00, 0.00),
('10070', 9799.00, 9799.00, 0.00, 0.00),
('10071', 8999.00, 8999.00, 0.00, 0.00),
('10072', 14790.00, 14790.00, 0.00, 0.00),
('10073', 7805.00, 7805.00, 0.00, 0.00),
('10074', 8179.00, 8179.00, 0.00, 0.00),
('10075', 10890.00, 10890.00, 0.00, 0.00),
('10076', 8279.00, 8279.00, 0.00, 0.00),
('10077', 11298.00, 11298.00, 0.00, 0.00),
('10078', 7550.00, 7550.00, 0.00, 0.00),
('10079', 11579.00, 11579.00, 0.00, 0.00),
('10080', 17590.00, 17590.00, 0.00, 0.00),
('10081', 11999.00, 11999.00, 0.00, 0.00),
('10082', 12350.00, 12350.00, 0.00, 0.00),
('10083', 9390.00, 9390.00, 0.00, 0.00),
('10084', 12999.00, 12999.00, 0.00, 0.00),
('10085', 10890.00, 10890.00, 0.00, 0.00),
('10086', 11599.00, 11599.00, 0.00, 0.00),
('10087', 11599.00, 11599.00, 0.00, 0.00),
('10088', 12890.00, 12890.00, 0.00, 0.00),
('10089', 13489.00, 13489.00, 0.00, 0.00),
('10090', 14148.00, 14148.00, 0.00, 0.00),
('10091', 13999.00, 13999.00, 0.00, 0.00),
('10092', 8499.00, 8499.00, 0.00, 0.00),
('10093', 13999.00, 13999.00, 0.00, 0.00),
('10094', 9999.00, 8499.00, 1500.00, 0.00),
('10095', 8999.00, 7499.00, 1500.00, 0.00),
('10096', 9999.00, 8499.00, 1500.00, 0.00),
('10097', 8990.00, 7499.00, 1491.00, 0.00),
('10098', 9990.00, 9499.00, 491.00, 0.00),
('10099', 14990.00, 12990.00, 2000.00, 0.00),
('10100', 14990.00, 12990.00, 2000.00, 0.00),
('10101', 14990.00, 12990.00, 2000.00, 0.00),
('10102', 16990.00, 14990.00, 2000.00, 0.00),
('10103', 16990.00, 14990.00, 2000.00, 0.00),
('10104', 11975.00, 11975.00, 0.00, 0.00),
('10105', 8999.00, 7499.00, 1500.00, 0.00),
('10106', 11999.00, 11999.00, 0.00, 0.00),
('10107', 12290.00, 12290.00, 0.00, 0.00),
('10108', 8990.00, 7499.00, 1491.00, 0.00),
('10109', 9990.00, 9499.00, 491.00, 0.00),
('10110', 11990.00, 10990.00, 1000.00, 0.00),
('10111', 9990.00, 9499.00, 491.00, 0.00),
('10112', 11990.00, 10990.00, 1000.00, 0.00),
('10113', 16990.00, 14990.00, 2000.00, 0.00),
('10114', 18990.00, 16990.00, 2000.00, 0.00),
('10115', 18990.00, 16990.00, 2000.00, 0.00),
('10116', 14990.00, 14990.00, 0.00, 0.00),
('10117', 12990.00, 12990.00, 0.00, 0.00),
('10118', 111990.00, 104990.00, 7000.00, 0.00),
('10119', 146490.00, 146490.00, 0.00, 0.00),
('10120', 81000.00, 72900.00, 8100.00, 0.00),
('10121', 104999.00, 67990.00, 37009.00, 0.00),
('10122', 104999.00, 67990.00, 37009.00, 0.00),
('10123', 119999.00, 77990.00, 42009.00, 0.00),
('10124', 134990.00, 119990.00, 15000.00, 0.00),
('10125', 124990.00, 101990.00, 23000.00, 0.00),
('10126', 75990.00, 70990.00, 5000.00, 0.00),
('10128', 74990.00, 61990.00, 13000.00, 0.00),
('10129', 179990.00, 179990.00, 0.00, 0.00),
('10130', 68999.00, 62990.00, 6009.00, 0.00),
('10131', 94990.00, 75990.00, 19000.00, 0.00),
('10132', 164990.00, 164990.00, 0.00, 0.00),
('10133', 82990.00, 66990.00, 16000.00, 0.00),
('10134', 95990.00, 74990.00, 21000.00, 0.00),
('10135', 87990.00, 87990.00, 0.00, 0.00),
('10136', 169990.00, 169990.00, 0.00, 0.00),
('10137', 139990.00, 139990.00, 0.00, 0.00),
('10138', 69990.00, 66990.00, 3000.00, 0.00),
('10139', 83990.00, 75990.00, 8000.00, 0.00),
('10140', 87990.00, 87990.00, 0.00, 0.00),
('10141', 77990.00, 70990.00, 7000.00, 0.00),
('10142', 92990.00, 92990.00, 0.00, 0.00),
('10143', 120000.00, 76990.00, 43010.00, 0.00),
('10144', 107990.00, 107990.00, 0.00, 0.00),
('10145', 104990.00, 99999.00, 4991.00, 0.00),
('10146', 2299.00, 2099.00, 200.00, 0.00),
('10147', 2999.00, 2240.00, 759.00, 0.00),
('10148', 2590.00, 2331.00, 259.00, 0.00),
('10149', 3990.00, 2999.00, 991.00, 0.00),
('10150', 3990.00, 2999.00, 991.00, 0.00),
('10151', 5490.00, 4221.00, 1269.00, 0.00),
('10152', 3990.00, 2799.00, 1191.00, 0.00),
('10153', 3499.00, 2195.00, 1304.00, 0.00),
('10154', 2999.00, 2379.00, 620.00, 0.00),
('10155', 2499.00, 2064.00, 435.00, 0.00),
('10156', 3399.00, 3149.00, 250.00, 0.00),
('10157', 6490.00, 3569.00, 2921.00, 0.00),
('10158', 4900.00, 4491.00, 409.00, 0.00),
('10159', 4950.00, 3999.00, 951.00, 0.00),
('10160', 3499.00, 2499.00, 1000.00, 0.00),
('10161', 4499.00, 3681.00, 818.00, 0.00),
('10162', 2353.00, 2239.00, 114.00, 0.00),
('10163', 2990.00, 2399.00, 591.00, 0.00),
('10164', 4990.00, 3690.00, 1300.00, 0.00),
('10165', 3499.00, 2899.00, 600.00, 0.00),
('10166', 2999.00, 2199.00, 800.00, 0.00),
('10167', 4990.00, 4500.00, 490.00, 0.00),
('10168', 4990.00, 4200.00, 790.00, 0.00),
('10169', 6999.00, 3949.00, 3050.00, 0.00),
('10170', 2990.00, 2690.00, 300.00, 0.00),
('10171', 4290.00, 3767.00, 523.00, 0.00),
('10172', 5290.00, 4330.00, 960.00, 0.00),
('10173', 4990.00, 3992.00, 998.00, 0.00),
('10174', 4590.00, 3889.00, 701.00, 0.00),
('10175', 2290.00, 2290.00, 0.00, 0.00),
('10176', 5990.00, 4312.00, 1678.00, 0.00),
('10177', 5999.00, 2199.00, 3800.00, 0.00),
('10178', 2190.00, 2190.00, 0.00, 0.00),
('10179', 3999.00, 2199.00, 1800.00, 0.00),
('10180', 3599.00, 3190.00, 409.00, 0.00),
('10181', 2990.00, 2399.00, 591.00, 0.00),
('10222', 1149.00, 500.00, 649.00, 0.00),
('10223', 1000.00, 465.00, 535.00, 0.00),
('10224', 600.00, 299.00, 301.00, 0.00),
('10225', 999.00, 447.00, 552.00, 0.00),
('10226', 1000.00, 500.00, 500.00, 0.00),
('10227', 600.00, 299.00, 301.00, 0.00),
('10228', 599.00, 395.00, 204.00, 0.00),
('10229', 1999.00, 1160.00, 839.00, 0.00),
('10230', 550.00, 325.00, 225.00, 0.00),
('10231', 1643.00, 530.00, 1113.00, 0.00),
('10232', 2300.00, 1249.00, 1051.00, 0.00),
('10233', 899.00, 461.00, 438.00, 0.00),
('10234', 1344.00, 465.00, 879.00, 0.00),
('10235', 584.00, 273.00, 311.00, 0.00),
('10236', 699.00, 280.00, 419.00, 0.00),
('10237', 599.00, 327.00, 272.00, 0.00),
('10238', 549.00, 349.00, 200.00, 0.00),
('10239', 584.00, 273.00, 311.00, 0.00),
('10240', 1145.00, 549.00, 596.00, 0.00),
('10241', 648.00, 275.00, 373.00, 0.00),
('10242', 500.00, 290.00, 210.00, 0.00),
('10243', 1770.00, 853.00, 917.00, 0.00),
('10244', 1600.00, 555.00, 1045.00, 0.00),
('10245', 1150.00, 464.00, 686.00, 0.00),
('10246', 1199.00, 470.00, 729.00, 0.00),
('10247', 699.00, 499.00, 200.00, 0.00),
('10248', 1598.00, 1234.00, 364.00, 0.00),
('10249', 499.00, 287.00, 212.00, 0.00),
('10250', 545.00, 325.00, 220.00, 0.00),
('10251', 1150.00, 479.00, 671.00, 0.00),
('10252', 4599.00, 2179.00, 2420.00, 0.00),
('10253', 1391.00, 570.00, 821.00, 0.00),
('10254', 1299.00, 580.00, 719.00, 0.00),
('10255', 1050.00, 533.00, 517.00, 0.00),
('10256', 700.00, 289.00, 411.00, 0.00),
('10257', 1145.00, 649.00, 496.00, 0.00),
('10258', 499.00, 325.00, 174.00, 0.00),
('10259', 661.00, 349.00, 312.00, 0.00),
('10260', 699.00, 305.00, 394.00, 0.00),
('10261', 699.00, 358.00, 341.00, 0.00),
('10262', 52999.00, 52999.00, 0.00, 0.00),
('10263', 73600.00, 67900.00, 5700.00, 0.00),
('10264', 64900.00, 57900.00, 7000.00, 0.00),
('10265', 36000.00, 30990.00, 5010.00, 0.00),
('10266', 39000.00, 33990.00, 5010.00, 0.00),
('10267', 36000.00, 30990.00, 5010.00, 0.00),
('10268', 39000.00, 33990.00, 5010.00, 0.00),
('10269', 36000.00, 30990.00, 5010.00, 0.00),
('10270', 22900.00, 22900.00, 0.00, 0.00),
('10271', 24600.00, 22990.00, 1610.00, 0.00),
('10272', 22300.00, 18990.00, 3310.00, 0.00),
('10273', 22300.00, 18990.00, 3310.00, 0.00),
('10274', 22300.00, 18990.00, 3310.00, 0.00),
('10275', 13800.00, 12990.00, 810.00, 0.00),
('10276', 9490.00, 9490.00, 0.00, 0.00),
('10277', 13800.00, 12990.00, 810.00, 0.00),
('10278', 12990.00, 12990.00, 0.00, 0.00),
('10279', 9000.00, 8490.00, 510.00, 0.00),
('10280', 8590.00, 8590.00, 0.00, 0.00),
('10281', 28990.00, 28990.00, 0.00, 0.00),
('10282', 26490.00, 26490.00, 0.00, 0.00),
('10283', 6400.00, 5990.00, 410.00, 0.00),
('10284', 6400.00, 5990.00, 410.00, 0.00),
('10285', 6400.00, 5990.00, 410.00, 0.00),
('10286', 29990.00, 29990.00, 0.00, 0.00),
('10287', 8899.00, 8899.00, 0.00, 0.00),
('10288', 93000.00, 77900.00, 15100.00, 0.00),
('10289', 93000.00, 77900.00, 15100.00, 0.00),
('10290', 73600.00, 67900.00, 5700.00, 0.00),
('10291', 73600.00, 67900.00, 5700.00, 0.00),
('10292', 93000.00, 77900.00, 15100.00, 0.00),
('10293', 73600.00, 67900.00, 5700.00, 0.00),
('10294', 73600.00, 67900.00, 5700.00, 0.00),
('10295', 19990.00, 16990.00, 3000.00, 0.00),
('10296', 19990.00, 16990.00, 3000.00, 0.00),
('10297', 25600.00, 18990.00, 6610.00, 0.00),
('10298', 25600.00, 18990.00, 6610.00, 0.00),
('10299', 25600.00, 18990.00, 6610.00, 0.00),
('10300', 16990.00, 16990.00, 0.00, 0.00),
('10301', 25500.00, 16990.00, 8510.00, 0.00),
('10302', 16990.00, 16990.00, 0.00, 0.00),
('10303', 15190.00, 15190.00, 0.00, 0.00),
('10304', 17000.00, 15990.00, 1010.00, 0.00),
('10305', 17000.00, 15990.00, 1010.00, 0.00),
('10306', 15990.00, 15990.00, 0.00, 0.00),
('10307', 15490.00, 12990.00, 2500.00, 0.00),
('10308', 15490.00, 12990.00, 2500.00, 0.00),
('10309', 11250.00, 11250.00, 0.00, 0.00),
('10310', 10880.00, 10880.00, 0.00, 0.00),
('10311', 10990.00, 10990.00, 0.00, 0.00),
('10312', 9600.00, 8750.00, 850.00, 0.00),
('10313', 9600.00, 8750.00, 850.00, 0.00),
('10314', 12999.00, 12999.00, 0.00, 0.00),
('10315', 9600.00, 8750.00, 850.00, 0.00),
('10316', 12999.00, 12999.00, 0.00, 0.00),
('10317', 11990.00, 11990.00, 0.00, 0.00),
('10318', 12900.00, 11990.00, 910.00, 0.00),
('10319', 11500.00, 10490.00, 1010.00, 0.00),
('10320', 11500.00, 10490.00, 1010.00, 0.00),
('10321', 11500.00, 10490.00, 1010.00, 0.00),
('10322', 1500.00, 1375.00, 125.00, 0.00),
('10323', 1450.00, 1450.00, 0.00, 0.00),
('10324', 3225.00, 3225.00, 0.00, 0.00),
('10325', 1260.00, 1100.00, 160.00, 0.00),
('10326', 8200.00, 7490.00, 710.00, 0.00),
('10327', 8200.00, 7490.00, 710.00, 0.00),
('10328', 6799.00, 6799.00, 0.00, 0.00),
('10329', 64999.00, 64999.00, 0.00, 0.00),
('10330', 13990.00, 13990.00, 0.00, 0.00),
('10331', 13490.00, 13490.00, 0.00, 0.00),
('10332', 49990.00, 39990.00, 10000.00, 0.00),
('10333', 61900.00, 61900.00, 0.00, 0.00);

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
-- Indexes for table `price_master`
--
ALTER TABLE `price_master`
  ADD PRIMARY KEY (`item_id`);

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
-- Constraints for table `price_master`
--
ALTER TABLE `price_master`
  ADD CONSTRAINT `item` FOREIGN KEY (`item_id`) REFERENCES `item_master` (`item_id`);

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
