-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 04, 2023 at 12:44 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `module_6_assignment`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_ID` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_ID`, `name`) VALUES
(1, 'Electronics'),
(2, 'Mobiles'),
(3, 'Home Appliances'),
(4, 'Beauty & Health'),
(5, 'Sports');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_ID` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `location` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_ID`, `name`, `email`, `location`) VALUES
(1, 'Karim', 'karim@gmail.com', 'Dhaka'),
(2, 'Rafiq', 'rafiq@gmail.com', 'Barishal'),
(3, 'Shafiul', 'shafiul@gmail.com', 'Rangpur'),
(4, 'Amjad', 'amjad@gmail.com', 'Sylhet'),
(5, 'Habib', 'habib@gmail.com', 'Chattogram'),
(6, 'Aftab', 'aftab@gmail.com', 'Rajshahi'),
(7, 'Atikul', 'atik@gmail.com', 'Mymensingh'),
(8, 'Sohel', 'sohel@gmail.com', 'Khulna'),
(9, 'Kalam', 'kalam@gmail.com', 'Dhaka'),
(10, 'Jamil', 'jamil@gmail.com', 'Rangpur');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_ID` bigint(20) UNSIGNED NOT NULL,
  `customer_ID` bigint(20) UNSIGNED NOT NULL,
  `product_ID` bigint(20) UNSIGNED NOT NULL,
  `order_date` date DEFAULT NULL,
  `total_amount` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_ID`, `customer_ID`, `product_ID`, `order_date`, `total_amount`) VALUES
(1, 8, 15, '2023-11-03', '4999'),
(2, 10, 16, '2023-11-03', '480'),
(3, 7, 10, '2023-11-03', '18000'),
(4, 9, 14, '2023-11-03', '3850'),
(5, 1, 22, '2023-11-03', '1100'),
(6, 3, 13, '2023-11-03', '8500'),
(7, 2, 12, '2023-11-03', '1800'),
(8, 4, 5, '2023-11-03', '790'),
(9, 6, 21, '2023-11-03', '976'),
(10, 5, 2, '2023-11-03', '5499'),
(11, 4, 1, '2023-11-03', '4649'),
(12, 6, 22, '2023-11-03', '1100'),
(13, 6, 23, '2023-11-03', '2300'),
(14, 9, 20, '2023-11-03', '280');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `order_item_ID` bigint(20) UNSIGNED NOT NULL,
  `order_ID` bigint(20) UNSIGNED NOT NULL,
  `product_ID` bigint(20) UNSIGNED NOT NULL,
  `quantity` varchar(50) NOT NULL,
  `unit_price` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`order_item_ID`, `order_ID`, `product_ID`, `quantity`, `unit_price`) VALUES
(1, 12, 22, '2', '1100'),
(2, 11, 1, '1', '4649'),
(3, 4, 14, '1', '3850'),
(4, 1, 15, '1', '4999'),
(5, 6, 13, '1', '8500'),
(6, 2, 16, '3', '480'),
(7, 3, 10, '1', '18000');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_ID` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(50) NOT NULL,
  `price` varchar(50) NOT NULL,
  `category_ID` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_ID`, `name`, `description`, `price`, `category_ID`) VALUES
(1, 'IMILAB W02 Smart Watch', 'Smart Bluetooth Calling, Long Battery Life & Rapid', '4649', 1),
(2, 'Mibro Smart Watch Lite 2', 'Dual-core main chip, 12-day battery life', '5499', 1),
(3, 'Wireless Bluetooth 5.0 Mini Ear-hook', 'the built-in microphone closer to the sound source', '441', 1),
(4, 'UiiSii N13 Neck-Mounted Bluetooth Earphone', 'Bluetooth distance: About 10 meters', '1200', 1),
(5, 'Lenovo K3 Portable Bluetooth Speaker Hifi', ' Bluetooth speaker, BT version: V5.0', '790', 1),
(6, 'Samsung s23 ultra', 'Features, LED flash, auto-HDR, panorama. Video, 8K', '89000', 2),
(7, 'Huawei Mate 60 Pro', 'Features 6.82″ display, Kirin 9000S chipset, 5000 ', '52000', 2),
(8, 'iPhone 15', 'Apple iPhone 15 ; Type, Super Retina XDR OLED, HDR', '125000', 2),
(9, 'Xiaomi Redmi Note 12R', 'Features: 199g, 8.2mm thickness Android 13, MIUI 1', '22000', 2),
(10, 'Infinix Hot 30 5G', 'Features: 215g, 9.2mm thickness Android 13, XOS 13', '18000', 2),
(11, 'Sharp Washing Machine', 'Japanese no.1 washing machine', '76000', 3),
(12, 'Vision Room Heater', 'A perfect room heater for winter season', '1800', 3),
(13, 'Sanford Mixer Grinder', 'The best 500watts powerful copper motor grinder', '8500', 3),
(14, 'Philips Dry Iron', 'Modern looks for best iron experience', '3850', 3),
(15, 'Pureit Classic 23L', 'Virus removal, Activated carbon trap, Multi-stage ', '4999', 3),
(16, 'Breylee Face Wash', 'This acne facial cleanser is proven to works face ', '480', 4),
(17, 'Cetaphil Hydrating Face Wash', 'IDEAL FOR DRY TO NORMAL SENSITIVE SKIN: Non-Comedo', '624', 4),
(18, 'RiBANA organic Coconut Oil', 'For hair problem solutions,Treat Dandruff', '560', 4),
(19, 'Lanbena Hair Nourishing Essential Oil', 'Pure essential oil, Repair hair follicles duct, Ac', '220', 4),
(20, 'AXE Deodorant Body Spray For Men', 'AXE DARK TEMPTATION deodorant a sensual, exhilarat', '380', 4),
(21, 'Myrurgia Yacht Man Red EDT Perfume For Men', 'Yacht Man Red Cologne by Myrurgia, Yacht man red i', '976', 4),
(22, '5kg Dumbbell - Black/ Hex Dumbbell', 'Black/ Hex Dumbbell,BEST QUALITY', '1100', 5),
(23, 'Combo Dumbbell Plate With 3 Feet Barbell', 'Features smooth edges Dumbell for Better Fitness', '2300', 5),
(24, 'HEAVY PUNCHING BAG 60 CM LONG', 'Top Notch Quality Best for Boxing Practice', '800', 5),
(25, 'Everlast Leather Boxing Gloves - 1 Pair', ' Elite Pro Style, Material: Leather', '1150', 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_ID`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_ID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_ID`),
  ADD KEY `customer_ID` (`customer_ID`),
  ADD KEY `product_ID` (`product_ID`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`order_item_ID`),
  ADD KEY `order_ID` (`order_ID`),
  ADD KEY `product_ID` (`product_ID`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_ID`),
  ADD KEY `category_ID` (`category_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `order_item_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_ID`) REFERENCES `customers` (`customer_ID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`product_ID`) REFERENCES `products` (`product_ID`) ON UPDATE CASCADE;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`order_ID`) REFERENCES `orders` (`order_ID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `order_items_ibfk_2` FOREIGN KEY (`product_ID`) REFERENCES `products` (`product_ID`) ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_ID`) REFERENCES `categories` (`category_ID`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
