-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 12, 2022 at 11:27 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online card`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `getcat` (IN `cid` INT)   SELECT * FROM categories WHERE cat_id=cid$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `admin_info`
--

CREATE TABLE `admin_info` (
  `admin_id` int(10) NOT NULL,
  `admin_name` varchar(100) NOT NULL,
  `admin_email` varchar(300) NOT NULL,
  `admin_password` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_info`
--

INSERT INTO `admin_info` (`admin_id`, `admin_name`, `admin_email`, `admin_password`) VALUES
(1, 'admin', 'admin@gmail.com', '25f9e794323b453885f5181f1b624d0b');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(100) NOT NULL,
  `brand_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES
(1, 'HP'),
(2, 'Samsung'),
(3, 'Apple'),
(4, 'motorolla'),
(5, 'LG'),
(6, 'Cloth Brand');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(10) NOT NULL,
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(250) NOT NULL,
  `user_id` int(10) DEFAULT NULL,
  `qty` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `p_id`, `ip_add`, `user_id`, `qty`) VALUES
(6, 26, '::1', 4, 1),
(9, 10, '::1', 7, 1),
(10, 11, '::1', 7, 1),
(11, 45, '::1', 7, 1),
(44, 5, '::1', 3, 0),
(46, 2, '::1', 3, 0),
(48, 72, '::1', 3, 0),
(49, 60, '::1', 8, 1),
(50, 61, '::1', 8, 1),
(51, 1, '::1', 8, 1),
(52, 5, '::1', 9, 1),
(53, 2, '::1', 14, 1),
(54, 3, '::1', 14, 1),
(55, 5, '::1', 14, 1),
(56, 1, '::1', 9, 1),
(57, 2, '::1', 9, 1),
(71, 61, '127.0.0.1', -1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(100) NOT NULL,
  `cat_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'All'),
(2, 'Birthday-cards'),
(3, 'Business-cards'),
(4, 'Wedding-cards'),
(5, 'Babyshower-cards'),
(6, 'Banners'),
(7, 'Billbook'),
(8, 'Stickers'),
(9, 'Envelope cover');

-- --------------------------------------------------------

--
-- Table structure for table `email_info`
--

CREATE TABLE `email_info` (
  `email_id` int(100) NOT NULL,
  `email` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `email_info`
--

INSERT INTO `email_info` (`email_id`, `email`) VALUES
(3, 'admin@gmail.com'),
(4, 'puneethreddy951@gmail.com'),
(5, 'puneethreddy@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `action` varchar(50) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `trx_id` varchar(255) NOT NULL,
  `p_status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `user_id`, `product_id`, `qty`, `trx_id`, `p_status`) VALUES
(1, 12, 7, 1, '07M47684BS5725041', 'Completed'),
(2, 14, 2, 1, '07M47684BS5725041', 'Completed');

-- --------------------------------------------------------

--
-- Table structure for table `orders_info`
--

CREATE TABLE `orders_info` (
  `order_id` int(10) NOT NULL,
  `user_id` int(11) NOT NULL,
  `f_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `zip` int(10) NOT NULL,
  `cardname` varchar(255) NOT NULL,
  `cardnumber` varchar(20) NOT NULL,
  `expdate` varchar(255) NOT NULL,
  `prod_count` int(15) DEFAULT NULL,
  `total_amt` int(15) DEFAULT NULL,
  `cvv` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders_info`
--

INSERT INTO `orders_info` (`order_id`, `user_id`, `f_name`, `email`, `address`, `city`, `state`, `zip`, `cardname`, `cardnumber`, `expdate`, `prod_count`, `total_amt`, `cvv`) VALUES
(1, 12, 'Puneeth', 'puneethreddy951@gmail.com', 'Bangalore, Kumbalagodu, Karnataka', 'Bangalore', 'Karnataka', 560074, 'pokjhgfcxc', '4321 2345 6788 7654', '12/90', 3, 77000, 1234);

-- --------------------------------------------------------

--
-- Table structure for table `order_products`
--

CREATE TABLE `order_products` (
  `order_pro_id` int(10) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(15) DEFAULT NULL,
  `amt` int(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_products`
--

INSERT INTO `order_products` (`order_pro_id`, `order_id`, `product_id`, `qty`, `amt`) VALUES
(73, 1, 1, 1, 5000),
(74, 1, 4, 2, 64000),
(75, 1, 8, 1, 40000);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(100) NOT NULL,
  `product_cat` int(100) NOT NULL,
  `product_brand` int(100) NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_price` int(100) NOT NULL,
  `product_desc` text NOT NULL,
  `product_image` text NOT NULL,
  `product_keywords` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_cat`, `product_brand`, `product_title`, `product_price`, `product_desc`, `product_image`, `product_keywords`) VALUES
(1, 1, 1, 'birthday card', 200, 'birthday card', 'birthday card16.jpeg', 'birthday'),
(2, 1, 1, 'birthday card', 250, 'birthday card', 'birthday card17.jpeg', 'birthday'),
(3, 1, 1, 'wedding card', 300, 'wedding card', 'letest wedding.jpeg', 'wedding card'),
(4, 1, 3, 'wedding card', 1000, 'wedding card', 'wedding bag card1.jpeg', 'wedding card'),
(5, 1, 2, 'wedding card', 800, 'wedding card', 'western wedding card6.jpeg', 'wedding card'),
(6, 1, 1, 'wedding card', 600, 'wedding card', 'western wedding card3.jpeg', 'wedding card'),
(7, 1, 1, 'wedding card', 500, 'wedding card', 'window wedding.jpeg', 'wedding card'),
(8, 1, 4, 'wedding card', 400, 'wedding card', 'wedding bag card.jpeg', 'wedding card'),
(9, 1, 3, 'baby shower', 200, 'baby shower', 'baby shower card 2.jpg', 'baby shower'),
(10, 2, 6, 'birthday card', 1000, 'birthday card', 'birthday card 1.jpeg', 'birthday card'),
(11, 2, 6, 'birthday card', 200, 'birthday card', 'birthday card 2.png', 'birthday card'),
(12, 2, 6, 'birthday card', 250, 'birthday card', 'birthday card 3.jpg', 'birthday card'),
(13, 2, 6, 'birthday card', 300, 'birthday card', 'birthday card 4.jpg', 'birthday card'),
(14, 2, 6, 'birthday card', 400, 'birthday card', 'birthday card 5.jpg', 'birthday card'),
(15, 2, 6, 'birthday card', 300, 'birthday card', 'birthday card7.jpeg', 'birthday card'),
(16, 2, 6, 'birthday card', 300, 'birthday card', 'birthday card8.jpeg', 'birthday card'),
(17, 2, 6, 'birthday card', 500, 'birthday card', 'birthday card9.jpeg', 'birthday card'),
(18, 8, 6, 'business sticker', 200, 'sticker\r\n', 'business stickers 1.jpeg', 'sticker'),
(19, 2, 6, 'birthday card', 500, 'birthday card', 'birthday card10.jpeg', 'birthday card'),
(20, 2, 6, 'birthday card', 500, 'birthday card', 'birthday card11.jpeg', 'birthday card'),
(21, 3, 6, 'Business Invitation', 800, 'Business Invitation', 'invitation bag.jpeg', 'Business Invitation'),
(22, 4, 6, 'wedding card', 600, 'wedding card', 'All in one wedding card.jpeg', 'wedding card'),
(23, 4, 6, 'wedding card', 500, 'wedding card', 'Indian wedding card.jpeg', 'wedding card'),
(24, 4, 6, 'wedding card', 400, 'wedding card', 'Indian wedding card1.jpeg', 'wedding card'),
(25, 4, 6, 'wedding card', 450, 'wedding card', 'Indian wedding card2.jpeg', 'wedding card'),
(26, 8, 6, 'business sticker', 100, 'sticker\r\n', 'business stickers 2.jpeg', 'sticker'),
(27, 4, 6, 'wedding card', 690, 'wedding card', 'Indian wedding card5.jpeg', 'wedding card'),
(28, 8, 6, 'wedding sticker', 100, 'sticker\r\n', 'wedding sticker.jpg', 'sticker'),
(29, 9, 6, 'envelop cover', 200, 'cover\r\n', 'cover1.jpg', 'cover'),
(31, 9, 6, 'envelop cover', 200, 'cover\r\n', 'envelop 1.jpeg', 'cover'),
(32, 5, 0, 'baby shower', 2500, 'baby shower', 'baby shower card 1.jpeg', 'baby shower'),
(33, 6, 2, 'banner', 350, 'banner', 'banner.jpeg', 'banner'),
(34, 6, 4, 'wedding banner', 1000, 'wedding banner', 'wedding banner.jpeg', 'wedding banner'),
(35, 6, 0, 'wedding banner', 800, 'wedding banner', 'wedding banner1.jpeg', 'wedding banner'),
(36, 6, 5, 'wedding banner', 1500, 'wedding banner', 'wedding car poster.jpeg', 'wedding banner'),
(37, 2, 5, 'birthday card', 1000, 'birthday card', 'birthday card13.jpeg', 'birthday card'),
(38, 2, 4, 'birthday card', 1000, 'birthday card', 'birthday card14.jpeg', 'birthday card'),
(39, 2, 5, 'birthday card', 300, 'birthday card', 'birthday card15.jpeg', 'birthday card'),
(40, 2, 6, 'birthday card', 300, 'birthday card', 'birthday card6.jpeg', 'birthday '),
(41, 9, 6, 'envelop cover', 200, 'cover\r\n', 'wedding cover 2.jpeg', 'cover'),
(42, 9, 6, 'envelop cover', 200, 'cover\r\n', 'wedding cover 1.jpeg', 'cover'),
(43, 5, 0, 'baby shower', 250, 'baby shower', 'baby shower card 3.jpg', 'baby shower'),
(44, 5, 0, 'baby shower', 200, 'baby shower', 'baby shower card 4.jpg', 'baby shower'),
(45, 1, 2, 'baby shower', 200, 'baby shower', 'baby shower card 5.jpeg', 'baby shower'),
(46, 1, 2, 'baby shower', 500, 'baby shower', 'baby shower card 8.jpeg', 'baby shower'),
(47, 4, 6, 'Indian wedding card', 650, 'Indian wedding card', 'Indian wedding card3.jpeg', 'Indian wedding card'),
(48, 1, 7, 'baby shower', 250, 'baby shower', 'baby shower card 11.jpeg', 'baby shower'),
(49, 1, 7, 'baby shower', 250, 'baby shower', 'baby shower card 16.jpeg', 'baby shower'),
(50, 3, 6, 'Business Invitation', 550, 'Business Invitation', 'invitation box.jpeg', 'Business Invitation'),
(51, 3, 6, 'Business Invitation', 200, 'Business Invitation', 'invitation unbox.jpeg', 'Business Invitation'),
(52, 3, 6, 'Business Invitation', 250, 'Business Invitation', 'invitation window.jpg', 'Business Invitation'),
(53, 3, 6, 'Business Invitation', 220, 'Business Invitation', 'invitation.png', 'Business Invitation'),
(54, 3, 6, 'Business Invitation', 290, 'Business Invitation', 'invitation1.jpeg', 'Business Invitation'),
(55, 3, 6, 'Business Invitation', 259, 'Business Invitation', 'invitation2.jpeg', 'Business Invitation'),
(56, 3, 6, 'Business Invitation', 200, 'Business Invitation', 'invitation3.jpeg', 'Business Invitation'),
(57, 3, 6, 'Business Invitation', 200, 'Business Invitation', 'invitation4.png', 'Business Invitation'),
(58, 3, 6, 'Business Invitation', 350, 'Business Invitation', 'invitation5.jpeg', 'Business Invitation'),
(59, 3, 6, 'Business Invitation', 350, 'Business Invitation', 'invitation6.jpeg', 'Business Invitation'),
(60, 3, 6, 'Business Invitation', 350, 'Business Invitation', 'invitation7.jpeg', 'Business Invitation'),
(61, 3, 6, 'Business Invitation', 200, 'Business Invitation', 'invitation8.jpeg', 'Business Invitation'),
(62, 3, 6, 'Business Invitation', 299, 'Business Invitation', 'invitation9.jpeg', 'Business Invitation'),
(63, 3, 6, 'Business Invitation', 250, 'Business Invitation', 'invitation10.jpeg', 'Business Invitation'),
(64, 3, 6, 'Business Invitation', 200, 'Business Invitation', 'invitation11.jpeg', 'Business Invitation'),
(65, 3, 6, 'Business Invitation', 400, 'Business Invitation', 'invitation12.jpeg', 'Business Invitation'),
(66, 3, 6, 'Business Invitation', 450, 'Business Invitation', 'business card1.jpeg', 'Business Invitation'),
(67, 3, 6, 'Business Invitation', 300, 'Business Invitation', 'business card2.jpg', 'Business Invitation'),
(68, 3, 6, 'Business Invitation', 350, 'Business Invitation', 'business card3.jpg', 'Business Invitation'),
(69, 3, 6, 'Business Invitation', 390, 'Business Invitation', 'business card4.jpg', 'Business Invitation'),
(70, 2, 6, 'birthday card', 399, 'birthday card', 'birthday card12.jpeg', 'birthday card'),
(71, 1, 2, 'billboook a4', 400, 'billbook a4', 'bill a4 2.jpeg', 'billbook'),
(72, 7, 2, 'billbook a3', 350, 'bill a3', 'bill a3 1.jpeg', 'billbook'),
(73, 7, 2, 'billbook a3', 350, 'bill a3', 'bill a3 2.jpeg', 'billbook'),
(74, 1, 1, 'Indian wedding card', 550, 'wedding card', 'Indian wedding card7.jpeg', 'wedding card'),
(75, 1, 1, 'western wedding card', 550, 'wedding card', 'western wedding card7.jpeg', 'wedding card'),
(76, 1, 5, 'baby showe', 300, 'baby showe', 'baby shower card 14.jpeg', 'baby showe'),
(77, 1, 4, 'envelop cover', 200, 'cover', 'wedding cover 3.jpeg', 'cover'),
(78, 1, 5, 'envelop cover', 200, 'cover', 'cover3.jpg', 'cover'),
(79, 7, 2, 'billbook a4', 350, 'bill a4', 'bill a4 1.jpeg', 'billbook'),
(80, 1, 1, 'business sticker', 200, 'sticker', 'business stickers 3.jpeg', 'sticker'),
(81, 4, 6, 'Indian wedding card', 400, 'Indian wedding card', 'Indian wedding card4.jpeg', 'Indian wedding card'),
(82, 5, 0, 'baby shower', 600, 'baby shower', 'baby shower card 9.jpeg', 'baby shower'),
(83, 5, 0, 'baby shower', 600, 'baby shower', 'baby shower card 6.jpeg', 'baby shower'),
(84, 5, 0, 'baby shower', 500, 'baby shower', 'baby shower card 12.jpeg', 'baby shower'),
(86, 5, 0, 'baby shower', 800, 'baby shower', 'baby shower card 10.jpeg', 'baby shower'),
(87, 5, 0, 'baby shower', 300, 'baby shower', 'baby shower card 13.jpeg', 'baby shower'),
(88, 5, 0, 'baby shower', 400, 'baby shower', 'baby shower card 15.jpeg', 'baby shower'),
(89, 5, 0, 'baby shower', 500, 'baby shower', 'baby shower card 7.jpeg', 'baby shower'),
(90, 4, 6, 'wedding card', 700, 'wedding card', 'wedding box.jpeg', 'wedding card'),
(91, 4, 6, 'wedding card', 900, 'wedding card', 'wedding box1.jpeg', 'wedding card'),
(92, 4, 6, 'wedding card', 700, 'wedding card', 'Indian wedding card6.jpeg', 'wedding card'),
(93, 4, 6, 'wedding card', 400, 'wedding card', 'wedding card 1.jpeg', 'wedding card'),
(94, 4, 6, 'wedding card', 600, 'wedding card', 'wedding card 2.jpg', 'wedding card'),
(95, 4, 6, 'wedding card', 300, 'wedding card', 'wedding card.jpeg', 'wedding card'),
(96, 4, 6, 'wedding card', 500, 'wedding card', 'wedding unbox card.jpeg', 'wedding card'),
(97, 4, 6, 'wedding card', 690, 'wedding card', 'wedding card3.jpeg', 'wedding card'),
(98, 4, 6, 'wedding card', 600, 'wedding card', 'western wedding card.jpeg', 'wedding card'),
(99, 4, 6, 'wedding card', 500, 'wedding card', 'western wedding card1.jpeg', 'wedding card'),
(100, 4, 6, 'wedding card', 690, 'wedding card', 'western wedding card8.jpeg', 'wedding card');

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `user_id` int(10) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address1` varchar(300) NOT NULL,
  `address2` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`user_id`, `first_name`, `last_name`, `email`, `password`, `mobile`, `address1`, `address2`) VALUES
(12, 'puneeth', 'Reddy', 'puneethreddy951@gmail.com', 'puneeth', '9448121558', '123456789', 'sdcjns,djc'),
(15, 'hemu', 'ajhgdg', 'puneethreddy951@gmail.com', '346778', '536487276', ',mdnbca', 'asdmhmhvbv'),
(16, 'venky', 'vs', 'venkey@gmail.com', '1234534', '9877654334', 'snhdgvajfehyfygv', 'asdjbhfkeur'),
(19, 'abhishek', 'bs', 'abhishekbs@gmail.com', 'asdcsdcc', '9871236534', 'bangalore', 'hassan'),
(21, 'prajval', 'mcta', 'prajvalmcta@gmail.com', '1234545662', '202-555-01', 'bangalore', 'kumbalagodu'),
(22, 'puneeth', 'v', 'hemu@gmail.com', '1234534', '9877654334', 'snhdgvajfehyfygv', 'asdjbhfkeur'),
(23, 'hemanth', 'reddy', 'hemanth@gmail.com', 'Puneeth@123', '9876543234', 'Bangalore', 'Kumbalagodu'),
(24, 'newuser', 'user', 'newuser@gmail.com', 'puneeth@123', '9535688928', 'Bangalore', 'Kumbalagodu'),
(25, 'otheruser', 'user', 'otheruser@gmail.com', 'puneeth@123', '9535688928', 'Bangalore', 'Kumbalagodu');

--
-- Triggers `user_info`
--
DELIMITER $$
CREATE TRIGGER `after_user_info_insert` AFTER INSERT ON `user_info` FOR EACH ROW BEGIN 
INSERT INTO user_info_backup VALUES(new.user_id,new.first_name,new.last_name,new.email,new.password,new.mobile,new.address1,new.address2);
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `user_info_backup`
--

CREATE TABLE `user_info_backup` (
  `user_id` int(10) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address1` varchar(300) NOT NULL,
  `address2` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_info_backup`
--

INSERT INTO `user_info_backup` (`user_id`, `first_name`, `last_name`, `email`, `password`, `mobile`, `address1`, `address2`) VALUES
(12, 'puneeth', 'Reddy', 'puneethreddy951@gmail.com', '123456789', '9448121558', '123456789', 'sdcjns,djc'),
(14, 'hemanthu', 'reddy', 'hemanthreddy951@gmail.com', '123456788', '6526436723', 's,dc wfjvnvn', 'b efhfhvvbr'),
(15, 'hemu', 'ajhgdg', 'keeru@gmail.com', '346778', '536487276', ',mdnbca', 'asdmhmhvbv'),
(16, 'venky', 'vs', 'venkey@gmail.com', '1234534', '9877654334', 'snhdgvajfehyfygv', 'asdjbhfkeur'),
(19, 'abhishek', 'bs', 'abhishekbs@gmail.com', 'asdcsdcc', '9871236534', 'bangalore', 'hassan'),
(20, 'pramod', 'vh', 'pramod@gmail.com', '124335353', '9767645653', 'ksbdfcdf', 'sjrgrevgsib'),
(21, 'prajval', 'mcta', 'prajvalmcta@gmail.com', '1234545662', '202-555-01', 'bangalore', 'kumbalagodu'),
(22, 'puneeth', 'v', 'hemu@gmail.com', '1234534', '9877654334', 'snhdgvajfehyfygv', 'asdjbhfkeur'),
(23, 'hemanth', 'reddy', 'hemanth@gmail.com', 'Puneeth@123', '9876543234', 'Bangalore', 'Kumbalagodu'),
(24, 'newuser', 'user', 'newuser@gmail.com', 'puneeth@123', '9535688928', 'Bangalore', 'Kumbalagodu'),
(25, 'otheruser', 'user', 'otheruser@gmail.com', 'puneeth@123', '9535688928', 'Bangalore', 'Kumbalagodu');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_info`
--
ALTER TABLE `admin_info`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `email_info`
--
ALTER TABLE `email_info`
  ADD PRIMARY KEY (`email_id`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `orders_info`
--
ALTER TABLE `orders_info`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `order_products`
--
ALTER TABLE `order_products`
  ADD PRIMARY KEY (`order_pro_id`),
  ADD KEY `order_products` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_info_backup`
--
ALTER TABLE `user_info_backup`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_info`
--
ALTER TABLE `admin_info`
  MODIFY `admin_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `email_info`
--
ALTER TABLE `email_info`
  MODIFY `email_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orders_info`
--
ALTER TABLE `orders_info`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `order_products`
--
ALTER TABLE `order_products`
  MODIFY `order_pro_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `user_info_backup`
--
ALTER TABLE `user_info_backup`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders_info`
--
ALTER TABLE `orders_info`
  ADD CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `user_info` (`user_id`);

--
-- Constraints for table `order_products`
--
ALTER TABLE `order_products`
  ADD CONSTRAINT `order_products` FOREIGN KEY (`order_id`) REFERENCES `orders_info` (`order_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `product_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
