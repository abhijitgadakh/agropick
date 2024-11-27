-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 27, 2024 at 09:24 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_agro_pick`
--

-- --------------------------------------------------------

--
-- Table structure for table `delivery_people`
--

CREATE TABLE `delivery_people` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `available_at_ids` text NOT NULL,
  `on_delivery` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_by` varchar(50) DEFAULT NULL,
  `created_on` datetime DEFAULT current_timestamp(),
  `modified_by` varchar(50) DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `delivery_people`
--

INSERT INTO `delivery_people` (`id`, `user_id`, `available_at_ids`, `on_delivery`, `status`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES
(1, 43, '1,2,5,9', 0, 1, '1', '2024-11-26 21:33:03', '1', '2024-11-26 21:33:03'),
(2, 44, '2,1,6,9,10', 0, 1, '1', '2024-11-26 21:33:03', '1', '2024-11-26 21:33:03'),
(3, 45, '7,2,1,9,10', 0, 1, '1', '2024-11-26 21:33:03', '1', '2024-11-26 21:33:03'),
(4, 46, '2,1,8,9,10', 0, 1, '1', '2024-11-26 21:33:03', '1', '2024-11-26 21:33:03'),
(5, 47, '9,1,2,5', 0, 1, '1', '2024-11-26 21:33:03', '1', '2024-11-26 21:33:03'),
(6, 48, '1,8,10,5,7', 0, 1, '1', '2024-11-26 21:33:03', '1', '2024-11-26 21:33:03'),
(7, 49, '13,11,12,14,15', 0, 1, '1', '2024-11-26 21:33:03', '1', '2024-11-26 21:33:03'),
(8, 50, '16,17,18,19,20', 0, 1, '1', '2024-11-26 21:33:03', '1', '2024-11-26 21:33:03');

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `description` text DEFAULT NULL,
  `grown_by_id` int(11) DEFAULT NULL,
  `grown_at_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `available_at_ids` varchar(255) DEFAULT NULL,
  `use_before` date DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) DEFAULT NULL,
  `modified_on` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modified_by` int(11) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`id`, `product_id`, `description`, `grown_by_id`, `grown_at_id`, `quantity`, `available_at_ids`, `use_before`, `created_on`, `created_by`, `modified_on`, `modified_by`, `price`) VALUES
(1, 1, 'Fresh and Juicy Mangoes, Grown in the Tropical Regions', 51, 1, 100, '1,2,5,3,9', '2024-12-31', '2024-11-26 05:34:21', 1, '2024-11-26 05:34:21', 1, 150.00),
(2, 2, 'Ripe Bananas, Perfect for Smoothies and Snacks', 52, 2, 200, '2,1,6,9,7', '2024-12-31', '2024-11-26 05:34:21', 1, '2024-11-26 05:34:21', 1, 40.00),
(3, 3, 'Sweet and Tangy Guavas, Rich in Vitamin C', 53, 7, 150, '7,2,1,9,10', '2024-12-31', '2024-11-26 05:34:21', 1, '2024-11-26 05:34:21', 1, 60.00),
(4, 4, 'Crisp and Refreshing Apples, Freshly Harvested', 54, 1, 120, '1,8,10,5,7', '2024-12-31', '2024-11-26 05:34:21', 1, '2024-11-26 05:34:21', 1, 120.00),
(5, 5, 'Delicious and Sweet Papayas, Ideal for Juices and Salads', 55, 2, 180, '2,1,8,9,10', '2024-12-31', '2024-11-26 05:34:21', 1, '2024-11-26 05:34:21', 1, 50.00),
(6, 6, 'Tangy and Refreshing Oranges, Rich in Vitamin C', 51, 1, 250, '1,2,6,8,9', '2024-12-31', '2024-11-26 05:34:21', 1, '2024-11-26 05:34:21', 1, 80.00),
(7, 7, 'Sweet and Juicy Pomegranates, Loaded with Antioxidants', 52, 9, 90, '9,1,2,5,6', '2024-12-31', '2024-11-26 05:34:21', 1, '2024-11-26 05:34:21', 1, 100.00),
(8, 8, 'Tropical Pineapples, Sweet and Refreshing', 53, 8, 130, '8,1,2,5,6', '2024-12-31', '2024-11-26 05:34:21', 1, '2024-11-26 05:34:21', 1, 70.00),
(9, 9, 'Hydrating and Refreshing Watermelons, Perfect for Hot Days', 54, 1, 250, '1,2,9,10,7', '2024-12-31', '2024-11-26 05:34:21', 1, '2024-11-26 05:34:21', 1, 60.00),
(10, 10, 'Sweet and Refreshing Musk Melons, Ideal for Desserts', 55, 5, 100, '5,1,8,6,9', '2024-12-31', '2024-11-26 05:34:21', 1, '2024-11-26 05:34:21', 1, 90.00),
(11, 11, 'Fresh Grapes, Sweet and Juicy, Perfect for Snacking', 51, 1, 200, '1,8,2,9,6', '2024-12-31', '2024-11-26 05:34:21', 1, '2024-11-26 05:34:21', 1, 120.00),
(12, 12, 'Sweet and Tangy Strawberries, Rich in Flavor', 52, 2, 150, '2,1,9,5,8', '2024-12-31', '2024-11-26 05:34:21', 1, '2024-11-26 05:34:21', 1, 200.00),
(13, 1, 'Fresh and Juicy Mangoes, Grown in the Tropical Regions', 55, 2, 100, '2,1,8,9,10', '2024-12-31', '2024-11-26 05:34:21', 1, '2024-11-26 05:34:21', 1, 150.00),
(14, 6, 'Tangy and Refreshing Oranges, Rich in Vitamin C', 53, 8, 250, '8,1,2,5,6', '2024-12-31', '2024-11-26 05:34:21', 1, '2024-11-26 05:34:21', 1, 80.00),
(15, 10, 'Sweet and Refreshing Musk Melons, Ideal for Desserts', 52, 2, 100, '2,1,9,5,8', '2024-12-31', '2024-11-26 05:34:21', 1, '2024-11-26 05:34:21', 1, 90.00);

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `id` int(11) NOT NULL,
  `city` varchar(50) NOT NULL,
  `subarea` varchar(100) NOT NULL,
  `area` varchar(100) NOT NULL,
  `pincode` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_by` varchar(50) DEFAULT NULL,
  `created_on` datetime DEFAULT current_timestamp(),
  `modified_by` varchar(50) DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`id`, `city`, `subarea`, `area`, `pincode`, `status`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES
(1, 'Pune', 'Eastern Pune', 'Kharadi', 411014, 1, 'Admin', '2024-11-26 20:42:42', NULL, NULL),
(2, 'Pune', 'Western Pune', 'Baner', 411045, 1, 'Admin', '2024-11-26 20:42:42', NULL, NULL),
(3, 'Pune', 'Central Pune', 'Camp', 411001, 1, 'Admin', '2024-11-26 20:42:42', NULL, NULL),
(4, 'Pune', 'Eastern Pune', 'Viman Nagar', 411014, 1, 'Admin', '2024-11-26 20:42:42', NULL, NULL),
(5, 'Pune', 'Southern Pune', 'Katraj', 411046, 1, 'Admin', '2024-11-26 20:42:42', NULL, NULL),
(6, 'Pune', 'Western Pune', 'Aundh', 411007, 1, 'Admin', '2024-11-26 20:42:42', NULL, NULL),
(7, 'Pune', 'Eastern Pune', 'Wagholi', 412207, 1, 'Admin', '2024-11-26 20:42:42', NULL, NULL),
(8, 'Pune', 'Central Pune', 'Shivajinagar', 411005, 1, 'Admin', '2024-11-26 20:42:42', NULL, NULL),
(9, 'Pune', 'Northern Pune', 'Chinchwad', 411033, 1, 'Admin', '2024-11-26 20:42:42', NULL, NULL),
(10, 'Pune', 'Western Pune', 'Hinjewadi', 411057, 1, 'Admin', '2024-11-26 20:42:42', NULL, NULL),
(11, 'Mumbai', 'Western Mumbai', 'Andheri', 400058, 1, 'Admin', '2024-11-26 20:42:42', NULL, NULL),
(12, 'Mumbai', 'South Mumbai', 'Colaba', 400005, 1, 'Admin', '2024-11-26 20:42:42', NULL, NULL),
(13, 'Mumbai', 'Central Mumbai', 'Dadar', 400014, 1, 'Admin', '2024-11-26 20:42:42', NULL, NULL),
(14, 'Mumbai', 'Western Mumbai', 'Bandra', 400050, 1, 'Admin', '2024-11-26 20:42:42', NULL, NULL),
(15, 'Mumbai', 'Eastern Mumbai', 'Ghatkopar', 400086, 1, 'Admin', '2024-11-26 20:42:42', NULL, NULL),
(16, 'Mumbai', 'South Mumbai', 'Marine Lines', 400002, 1, 'Admin', '2024-11-26 20:42:42', NULL, NULL),
(17, 'Mumbai', 'Western Mumbai', 'Juhu', 400049, 1, 'Admin', '2024-11-26 20:42:42', NULL, NULL),
(18, 'Mumbai', 'Central Mumbai', 'Lower Parel', 400013, 1, 'Admin', '2024-11-26 20:42:42', NULL, NULL),
(19, 'Mumbai', 'Northern Mumbai', 'Borivali', 400092, 1, 'Admin', '2024-11-26 20:42:42', NULL, NULL),
(20, 'Mumbai', 'Eastern Mumbai', 'Mulund', 400080, 1, 'Admin', '2024-11-26 20:42:42', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `status` enum('inprocess','delivered','returning','returned') NOT NULL,
  `delivery_person_id` int(11) DEFAULT NULL,
  `is_cancelled` tinyint(1) DEFAULT 0,
  `created_by` int(11) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `inventory_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` char(1) NOT NULL CHECK (`type` in ('f','v')),
  `image` varchar(255) NOT NULL,
  `sell_by` char(1) NOT NULL CHECK (`sell_by` in ('w','u')),
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_on` datetime DEFAULT current_timestamp(),
  `created_by` varchar(255) DEFAULT NULL,
  `modified_on` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modified_by` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `type`, `image`, `sell_by`, `status`, `created_on`, `created_by`, `modified_on`, `modified_by`) VALUES
(1, 'Mango', 'f', 'mango.jpg', 'w', 1, '2024-11-26 15:01:03', 'admin', '2024-11-26 15:01:03', NULL),
(2, 'Banana', 'f', 'banana.jpg', 'u', 1, '2024-11-26 15:01:03', 'admin', '2024-11-26 15:01:03', NULL),
(3, 'Guava', 'f', 'guava.jpg', 'w', 1, '2024-11-26 15:01:03', 'admin', '2024-11-26 15:01:03', NULL),
(4, 'Apple', 'f', 'apple.jpg', 'w', 1, '2024-11-26 15:01:03', 'admin', '2024-11-26 15:01:03', NULL),
(5, 'Papaya', 'f', 'papaya.jpg', 'u', 1, '2024-11-26 15:01:03', 'admin', '2024-11-26 15:01:03', NULL),
(6, 'Orange', 'f', 'orange.jpg', 'w', 1, '2024-11-26 15:01:03', 'admin', '2024-11-26 15:01:03', NULL),
(7, 'Pomegranate', 'f', 'pomegranate.jpg', 'w', 1, '2024-11-26 15:01:03', 'admin', '2024-11-26 15:01:03', NULL),
(8, 'Pineapple', 'f', 'pineapple.jpg', 'u', 1, '2024-11-26 15:01:03', 'admin', '2024-11-26 15:01:03', NULL),
(9, 'Watermelon', 'f', 'watermelon.jpg', 'u', 1, '2024-11-26 15:01:03', 'admin', '2024-11-26 15:01:03', NULL),
(10, 'Musk Melon', 'f', 'musk_melon.jpg', 'u', 1, '2024-11-26 15:01:03', 'admin', '2024-11-26 15:01:03', NULL),
(11, 'Grapes', 'f', 'grapes.jpg', 'w', 1, '2024-11-26 15:01:03', 'admin', '2024-11-26 15:01:03', NULL),
(12, 'Strawberry', 'f', 'strawberry.jpg', 'w', 1, '2024-11-26 15:01:03', 'admin', '2024-11-26 15:01:03', NULL),
(13, 'Potato', 'v', 'potato.jpg', 'w', 1, '2024-11-26 15:01:03', 'admin', '2024-11-26 15:01:03', NULL),
(14, 'Tomato', 'v', 'tomato.jpg', 'w', 1, '2024-11-26 15:01:03', 'admin', '2024-11-26 15:01:03', NULL),
(15, 'Onion', 'v', 'onion.jpg', 'w', 1, '2024-11-26 15:01:03', 'admin', '2024-11-26 15:01:03', NULL),
(16, 'Garlic', 'v', 'garlic.jpg', 'w', 1, '2024-11-26 15:01:03', 'admin', '2024-11-26 15:01:03', NULL),
(17, 'Ginger', 'v', 'ginger.jpg', 'w', 1, '2024-11-26 15:01:03', 'admin', '2024-11-26 15:01:03', NULL),
(18, 'Green Chilli', 'v', 'green_chilli.jpg', 'w', 1, '2024-11-26 15:01:03', 'admin', '2024-11-26 15:01:03', NULL),
(19, 'Brinjal (Eggplant)', 'v', 'brinjal.jpg', 'w', 1, '2024-11-26 15:01:03', 'admin', '2024-11-26 15:01:03', NULL),
(20, 'Bitter Gourd (Karela)', 'v', 'bitter_gourd.jpg', 'w', 1, '2024-11-26 15:01:03', 'admin', '2024-11-26 15:01:03', NULL),
(21, 'Bottle Gourd (Lauki/Doodhi)', 'v', 'bottle_gourd.jpg', 'w', 1, '2024-11-26 15:01:03', 'admin', '2024-11-26 15:01:03', NULL),
(22, 'Pumpkin', 'v', 'pumpkin.jpg', 'u', 1, '2024-11-26 15:01:03', 'admin', '2024-11-26 15:01:03', NULL),
(23, 'Lady\'s Finger (Bhindi/Okra)', 'v', 'ladys_finger.jpg', 'w', 1, '2024-11-26 15:01:03', 'admin', '2024-11-26 15:01:03', NULL),
(24, 'Cabbage', 'v', 'cabbage.jpg', 'u', 1, '2024-11-26 15:01:03', 'admin', '2024-11-26 15:01:03', NULL),
(25, 'Cauliflower', 'v', 'cauliflower.jpg', 'u', 1, '2024-11-26 15:01:03', 'admin', '2024-11-26 15:01:03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `contact_number` varchar(15) NOT NULL,
  `user_type` char(1) NOT NULL CHECK (`user_type` in ('a','c','d','f')),
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_on` datetime DEFAULT current_timestamp(),
  `created_by` varchar(255) DEFAULT NULL,
  `modified_on` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modified_by` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `pincode_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `password`, `contact_number`, `user_type`, `status`, `created_on`, `created_by`, `modified_on`, `modified_by`, `address`, `pincode_id`) VALUES
(1, 'Abhijit Gadakh', 'abhijit.gadakh', 'abhijit.gadakh@example.com', 'password123', '9876543210', 'a', 1, '2024-11-26 21:37:16', '1', '2024-11-26 21:39:05', '1', 'Kharadi', 1),
(2, 'Ishaan Sharma', 'ishaan.sharma', 'ishaan.sharma@example.com', 'password123', '9876543220', 'a', 1, '2024-11-26 21:37:16', '1', '2024-11-26 21:39:05', '1', 'Baner', 2),
(3, 'Diya Mehta', 'diya.mehta', 'diya.mehta@example.com', 'password123', '9876543230', 'a', 1, '2024-11-26 21:37:16', '1', '2024-11-26 21:39:05', '1', 'Camp', 3),
(4, 'Ravi Kumar', 'ravi.kumar', 'ravi.kumar@example.com', 'password123', '9876543240', 'c', 1, '2024-11-26 21:37:16', '1', '2024-11-26 21:39:05', '1', 'Viman Nagar', 1),
(5, 'Sanya Singh', 'sanya.singh', 'sanya.singh@example.com', 'password123', '9876543250', 'c', 1, '2024-11-26 21:37:16', '1', '2024-11-26 21:39:05', '1', 'Katraj', 5),
(6, 'Karan Joshi', 'karan.joshi', 'karan.joshi@example.com', 'password123', '9876543260', 'c', 1, '2024-11-26 21:37:16', '1', '2024-11-26 21:39:05', '1', 'Aundh', 6),
(7, 'Nisha Reddy', 'nisha.reddy', 'nisha.reddy@example.com', 'password123', '9876543270', 'c', 1, '2024-11-26 21:37:16', '1', '2024-11-26 21:39:05', '1', 'Shivajinagar', 8),
(8, 'Arjun Gupta', 'arjun.gupta', 'arjun.gupta@example.com', 'password123', '9876543280', 'c', 1, '2024-11-26 21:37:16', '1', '2024-11-26 21:39:05', '1', 'Wagholi', 7),
(9, 'Ananya Verma', 'ananya.verma', 'ananya.verma@example.com', 'password123', '9876543290', 'c', 1, '2024-11-26 21:37:16', '1', '2024-11-26 21:39:05', '1', 'Chinchwad', 9),
(10, 'Pranav Patil', 'pranav.patil', 'pranav.patil@example.com', 'password123', '9876543300', 'c', 1, '2024-11-26 21:37:16', '1', '2024-11-26 21:39:05', '1', 'Hinjewadi', 10),
(11, 'Radhika Bhat', 'radhika.bhat', 'radhika.bhat@example.com', 'password123', '9876543310', 'c', 1, '2024-11-26 21:37:16', '1', '2024-11-26 21:39:05', '1', 'Andheri', 11),
(12, 'Vikram Sharma', 'vikram.sharma', 'vikram.sharma@example.com', 'password123', '9876543320', 'c', 1, '2024-11-26 21:37:16', '1', '2024-11-26 21:39:05', '1', 'Colaba', 12),
(13, 'Meera Desai', 'meera.desai', 'meera.desai@example.com', 'password123', '9876543330', 'c', 1, '2024-11-26 21:37:16', '1', '2024-11-26 21:39:05', '1', 'Dadar', 13),
(14, 'Kunal Kapoor', 'kunal.kapoor', 'kunal.kapoor@example.com', 'password123', '9876543340', 'c', 1, '2024-11-26 21:37:16', '1', '2024-11-26 21:39:05', '1', 'Bandra', 14),
(15, 'Sneha Agarwal', 'sneha.agarwal', 'sneha.agarwal@example.com', 'password123', '9876543350', 'c', 1, '2024-11-26 21:37:16', '1', '2024-11-26 21:39:05', '1', 'Ghatkopar', 15),
(16, 'Rahul Joshi', 'rahul.joshi', 'rahul.joshi@example.com', 'password123', '9876543360', 'c', 1, '2024-11-26 21:37:16', '1', '2024-11-26 21:39:05', '1', 'Marine Lines', 16),
(17, 'Tanya Pillai', 'tanya.pillai', 'tanya.pillai@example.com', 'password123', '9876543370', 'c', 1, '2024-11-26 21:37:16', '1', '2024-11-26 21:39:05', '1', 'Juhu', 17),
(18, 'Viraj Singh', 'viraj.singh', 'viraj.singh@example.com', 'password123', '9876543380', 'c', 1, '2024-11-26 21:37:16', '1', '2024-11-26 21:39:05', '1', 'Lower Parel', 18),
(19, 'Aditi Bansal', 'aditi.bansal', 'aditi.bansal@example.com', 'password123', '9876543390', 'c', 1, '2024-11-26 21:37:16', '1', '2024-11-26 21:39:05', '1', 'Borivali', 19),
(20, 'Ashwin Patil', 'ashwin.patil', 'ashwin.patil@example.com', 'password123', '9876543400', 'c', 1, '2024-11-26 21:37:16', '1', '2024-11-26 21:39:05', '1', 'Mulund', 20),
(21, 'Harsha Reddy', 'harsha.reddy', 'harsha.reddy@example.com', 'password123', '9876543410', 'c', 1, '2024-11-26 21:37:16', '1', '2024-11-26 21:39:05', '1', 'Kharadi', 1),
(22, 'Jai Sharma', 'jai.sharma', 'jai.sharma@example.com', 'password123', '9876543420', 'c', 1, '2024-11-26 21:37:16', '1', '2024-11-26 21:39:05', '1', 'Baner', 2),
(23, 'Neha Agarwal', 'neha.agarwal', 'neha.agarwal@example.com', 'password123', '9876543430', 'c', 1, '2024-11-26 21:37:16', '1', '2024-11-26 21:39:05', '1', 'Camp', 3),
(24, 'Rohit Yadav', 'rohit.yadav', 'rohit.yadav@example.com', 'password123', '9876543440', 'c', 1, '2024-11-26 21:37:16', '1', '2024-11-26 21:39:05', '1', 'Viman Nagar', 1),
(25, 'Laxmi Nair', 'laxmi.nair', 'laxmi.nair@example.com', 'password123', '9876543450', 'c', 1, '2024-11-26 21:37:16', '1', '2024-11-26 21:39:05', 'Katraj', '1', 5),
(26, 'Vinay Joshi', 'vinay.joshi', 'vinay.joshi@example.com', 'password123', '9876543460', 'c', 1, '2024-11-26 21:37:16', '1', '2024-11-26 21:39:05', '1', 'Aundh', 6),
(27, 'Shivani Deshmukh', 'shivani.deshmukh', 'shivani.deshmukh@example.com', 'password123', '9876543470', 'c', 1, '2024-11-26 21:37:16', '1', '2024-11-26 21:39:05', '1', 'Shivajinagar', 8),
(28, 'Akash Mehta', 'akash.mehta', 'akash.mehta@example.com', 'password123', '9876543480', 'c', 1, '2024-11-26 21:37:16', '1', '2024-11-26 21:39:05', '1', 'Wagholi', 7),
(29, 'Surbhi Patel', 'surbhi.patel', 'surbhi.patel@example.com', 'password123', '9876543490', 'c', 1, '2024-11-26 21:37:16', '1', '2024-11-26 21:39:05', '1', 'Chinchwad', 9),
(30, 'Siddhi Kapoor', 'siddhi.kapoor', 'siddhi.kapoor@example.com', 'password123', '9876543500', 'c', 1, '2024-11-26 21:37:16', '1', '2024-11-26 21:39:05', '1', 'Hinjewadi', 10),
(31, 'Kritika Sharma', 'kritika.sharma', 'kritika.sharma@example.com', 'password123', '9876543510', 'c', 1, '2024-11-26 21:37:16', '1', '2024-11-26 21:39:05', '1', 'Andheri', 11),
(32, 'Aditya Bansal', 'aditya.bansal', 'aditya.bansal@example.com', 'password123', '9876543520', 'c', 1, '2024-11-26 21:37:16', '1', '2024-11-26 21:39:05', '1', 'Colaba', 12),
(33, 'Maya Joshi', 'maya.joshi', 'maya.joshi@example.com', 'password123', '9876543530', 'c', 1, '2024-11-26 21:37:16', '1', '2024-11-26 21:39:05', '1', 'Dadar', 13),
(34, 'Arvind Kapoor', 'arvind.kapoor', 'arvind.kapoor@example.com', 'password123', '9876543540', 'c', 1, '2024-11-26 21:37:16', '1', '2024-11-26 21:39:05', '1', 'Bandra', 14),
(35, 'Mehul Reddy', 'mehul.reddy', 'mehul.reddy@example.com', 'password123', '9876543550', 'c', 1, '2024-11-26 21:37:16', '1', '2024-11-26 21:39:05', '1', 'Ghatkopar', 15),
(36, 'Rishabh Joshi', 'rishabh.joshi', 'rishabh.joshi@example.com', 'password123', '9876543560', 'c', 1, '2024-11-26 21:37:16', '1', '2024-11-26 21:39:05', '1', 'Marine Lines', 16),
(37, 'Tanya Shah', 'tanya.shah', 'tanya.shah@example.com', 'password123', '9876543570', 'c', 1, '2024-11-26 21:37:16', '1', '2024-11-26 21:39:05', '1', 'Juhu', 17),
(38, 'Gaurav Iyer', 'gaurav.iyer', 'gaurav.iyer@example.com', 'password123', '9876543580', 'c', 1, '2024-11-26 21:37:16', '1', '2024-11-26 21:39:05', '1', 'Lower Parel', 18),
(39, 'Aarav Joshi', 'aarav.joshi', 'aarav.joshi@example.com', 'password123', '9876543590', 'c', 1, '2024-11-26 21:37:16', '1', '2024-11-26 21:39:05', '1', 'Borivali', 19),
(40, 'Akshay Mehta', 'akshay.mehta', 'akshay.mehta@example.com', 'password123', '9876543600', 'c', 1, '2024-11-26 21:37:16', '1', '2024-11-26 21:39:05', '1', 'Mulund', 20),
(41, 'Preeti Singh', 'preeti.singh', 'preeti.singh@example.com', 'password123', '9876543690', 'c', 1, '2024-11-26 21:37:16', '1', '2024-11-26 21:39:05', '1', 'Kharadi', 1),
(42, 'Krishna Iyer', 'krishna.iyer', 'krishna.iyer@example.com', 'password123', '9876543700', 'c', 1, '2024-11-26 21:37:16', '1', '2024-11-26 21:39:05', '1', 'Shivajinagar', 8),
(43, 'Ravi Kumar', 'ravi.kumar1', 'ravi.kumar1@example.com', 'password123', '9876543610', 'd', 1, '2024-11-26 21:37:16', '1', '2024-11-26 21:39:05', '1', 'Kharadi', 1),
(44, 'Shivani Singh', 'shivani.singh', 'shivani.singh@example.com', 'password123', '9876543620', 'd', 1, '2024-11-26 21:37:16', '1', '2024-11-26 21:39:05', '1', 'Baner', 2),
(45, 'Harsh Patel', 'harsh.patel', 'harsh.patel@example.com', 'password123', '9876543630', 'd', 1, '2024-11-26 21:37:16', '1', '2024-11-26 21:39:05', '1', 'Wagholi', 7),
(46, 'Simran Reddy', 'simran.reddy', 'simran.reddy@example.com', 'password123', '9876543640', 'd', 1, '2024-11-26 21:37:16', '1', '2024-11-26 21:39:05', '1', 'Shivajinagar', 8),
(47, 'Neelam Agarwal', 'neelam.agarwal', 'neelam.agarwal@example.com', 'password123', '9876543650', 'd', 1, '2024-11-26 21:37:16', '1', '2024-11-26 21:39:05', '1', 'Chinchwad', 9),
(48, 'Vikrant Kumar', 'vikrant.kumar', 'vikrant.kumar@example.com', 'password123', '9876543660', 'd', 1, '2024-11-26 21:37:16', '1', '2024-11-26 21:39:05', '1', 'Hinjewadi', 10),
(49, 'Nikita Desai', 'nikita.desai', 'nikita.desai@example.com', 'password123', '9876543670', 'd', 1, '2024-11-26 21:37:16', '1', '2024-11-26 21:39:05', '1', 'Dadar', 13),
(50, 'Aman Kapoor', 'aman.kapoor', 'aman.kapoor@example.com', 'password123', '9876543680', 'd', 1, '2024-11-26 21:37:16', '1', '2024-11-26 21:39:05', '1', 'Bandra', 14),
(51, 'Shalini Gupta', 'shalini.gupta', 'shalini.gupta@example.com', 'password123', '9876543225', 'f', 1, '2024-11-26 21:56:16', '1', '2024-11-26 21:58:30', '1', 'Chinchwad', 9),
(52, 'Raghavendra Singh', 'raghavendra.singh', 'raghavendra.singh@example.com', 'password123', '9876543221', 'f', 1, '2024-11-26 21:42:16', '1', '2024-11-26 21:45:00', '1', 'Baner', 2),
(53, 'Arun Kumar', 'arun.kumar', 'arun.kumar@example.com', 'password123', '9876543222', 'f', 1, '2024-11-26 21:46:16', '1', '2024-11-26 21:48:30', '1', 'Viman Nagar', 1),
(54, 'Vijay Reddy', 'vijay.reddy', 'vijay.reddy@example.com', 'password123', '9876543223', 'f', 1, '2024-11-26 21:49:16', '1', '2024-11-26 21:51:45', '1', 'Juhu', 17),
(55, 'Manoj Verma', 'manoj.verma', 'manoj.verma@example.com', 'password123', '9876543224', 'f', 1, '2024-11-26 21:52:16', '1', '2024-11-26 21:55:10', '1', 'Dadar', 13),
(56, 'test', 'test', 'test@test.com', 'test@123', '1234567890', 'c', 1, '2024-11-27 02:11:51', '0', '2024-11-27 02:11:51', '0', 'Dhanori', 411047),
(112, 'test', 'test', 'test@test.com', 'test@123', '1234567890', 'c', 1, '2024-11-27 02:16:37', '0', '2024-11-27 02:16:37', '0', 'Dhanori', 411047),
(113, 'hello test ', 'hellotest@er.com', 'hellotest@er.com', 'hellotest', '123456', 'c', 1, '2024-11-26 21:06:20', '0', '2024-11-26 21:06:20', '0', 'Vishrantwadi', 311000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
