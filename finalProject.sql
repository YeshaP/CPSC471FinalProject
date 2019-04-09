-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 09, 2019 at 11:58 PM
-- Server version: 5.7.25-0ubuntu0.18.04.2
-- PHP Version: 7.2.15-0ubuntu0.18.04.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `finalProject`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `username` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `middle_name` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `street_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `city` text COLLATE utf8_unicode_ci NOT NULL,
  `province` text COLLATE utf8_unicode_ci NOT NULL,
  `country` text COLLATE utf8_unicode_ci NOT NULL,
  `postal_code` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(35) COLLATE utf8_unicode_ci NOT NULL,
  `shopping_cart_items` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`username`, `first_name`, `middle_name`, `last_name`, `street_name`, `city`, `province`, `country`, `postal_code`, `password`, `shopping_cart_items`) VALUES
('johndoe@google.ca', 'John', 'A', 'Doe', '1 University Drive', 'Calgary', 'Alberta', 'Canada', 'V0H0H0', 'johndoe', 0),
('janedoe@yahoo.ca', 'Jane', 'A', 'Doe', '1 Avenue', 'Calgary', 'Alberta', 'Canada', 'V0H0H1', 'janedoe', 0),
('Andy', 'Andy', 'A', 'A', 'A', 'C', 'P', 'Canada', 'V0H0H0', 'snvvv', 0),
('Ben', 'Benjamin', 'A', 'Macdonald', 'Downtown Ave', 'Calgary', 'Alberta', 'Canada', 'V9H9H9', 'bennie', 0),
('jonathan@yahoo.ca', 'Jonathan', 'A', 'Mcnuggits', 'Streetave', 'Saskatoon', 'Saskatchewan', 'Canada', 'H1H1H1', 'johnny', 0),
('jimbob', 'jim', 'a', 'bob', '419 0129', 'Citad', 'Somewhere', 'Country', 'A1A1A1', 'jimbob', 0),
('anton', 'Anton', 'A', 'Anton', 'aokfokweg', 'okaaa', 'hello', 'Germany', 'A901920', 'anton', 0);

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `ID` int(8) NOT NULL,
  `username` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` text COLLATE utf8_unicode_ci NOT NULL,
  `middle_name` text COLLATE utf8_unicode_ci NOT NULL,
  `last_name` text COLLATE utf8_unicode_ci NOT NULL,
  `street_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `city` text COLLATE utf8_unicode_ci NOT NULL,
  `province` text COLLATE utf8_unicode_ci NOT NULL,
  `country` text COLLATE utf8_unicode_ci NOT NULL,
  `postal_code` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(35) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`ID`, `username`, `first_name`, `middle_name`, `last_name`, `street_name`, `city`, `province`, `country`, `postal_code`, `password`) VALUES
(20000001, 'admin', '', '', '', '', '', '', '', '', 'administrator');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `name` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `type` text COLLATE utf8_unicode_ci NOT NULL,
  `barcode` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `color` text COLLATE utf8_unicode_ci NOT NULL,
  `price` int(3) NOT NULL,
  `size` text COLLATE utf8_unicode_ci NOT NULL,
  `gender` text COLLATE utf8_unicode_ci NOT NULL,
  `quantity` int(4) NOT NULL,
  `description` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `image_location` varchar(400) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`name`, `type`, `barcode`, `color`, `price`, `size`, `gender`, `quantity`, `description`, `image_location`) VALUES
('T-Shirt', 'T-shirt', 'a00100001', 'Blue', 16, 'M', 'M', 50, 'Comfortable, stylish and soft.', 'https://cdn.allbirds.com/image/fetch/q_auto,f_auto/w_1000,f_auto,q_auto,b_rgb:F2F2F2/https://cdn.shopify.com/s/files/1/2804/0750/products/ChalkTreeRunnerToe_0954a783-46fe-4073-81b7-f6f1c30b8dc5.png?v=1541457923'),
('T-Shirt', 'T-Shirt', 'a00100002', 'Black', 16, 'M', 'M', 40, '100% cotton, stylish shirt!', 'https://www.bfgcdn.com/1500_1500_90/114-1236-0211/prana-womens-sway-tank-yoga-tops.jpg'),
('Jacket', 'Jacket', 'b00100001', 'Brown', 40, 'M', 'F', 25, 'Stylish brown jacket, perfect for any event!', 'https://i.ebayimg.com/images/g/VusAAOSwSrNaGQGx/s-l300.jpg'),
('Socks', 'Socks', 'c00100001', 'Black', 10, 'O', 'O', 50, 'Socks, one-size fit all.', 'https://assets.myntassets.com/dpr_2,q_60,w_210,c_limit,fl_progressive/assets/images/6846215/2018/7/4/a76129c0-5393-4be9-92e6-f50a767e172d1530708777706-Columbus-Men-Navy-Blue-Running-Shoes-9971530708777505-1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

CREATE TABLE `purchase` (
  `card_number` int(10) NOT NULL,
  `card_type` text NOT NULL,
  `username` text NOT NULL,
  `expiry_month` int(2) NOT NULL,
  `expiry_year` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchase`
--

INSERT INTO `purchase` (`card_number`, `card_type`, `username`, `expiry_month`, `expiry_year`) VALUES
(1249129491, 'VISA', 'jonathan@yahoo.ca', 0, 0),
(1249129491, 'VISA', 'jonathan@yahoo.ca', 0, 0),
(1234567788, 'Debit', 'jonathan@yahoo.ca', 0, 12);

-- --------------------------------------------------------

--
-- Table structure for table `shopping_cart`
--

CREATE TABLE `shopping_cart` (
  `username` text NOT NULL,
  `barcode` varchar(20) NOT NULL,
  `quantity` int(3) NOT NULL,
  `url` varchar(320) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shopping_cart`
--

INSERT INTO `shopping_cart` (`username`, `barcode`, `quantity`, `url`) VALUES
('jimbob', '1234', 1, 'https://cdn.allbirds.com/image/fetch/q_auto,f_auto/w_1000,f_auto,q_auto,b_rgb:F2F2F2/https://cdn.shopify.com/s/files/1/2804/0750/products/ChalkTreeRunnerToe_0954a783-46fe-4073-81b7-f6f1c30b8dc5.png?v=1541457923'),
('jimbob', '2123', 2, 'https://i.ebayimg.com/images/g/VusAAOSwSrNaGQGx/s-l300.jpg'),
('jimbob', '1345', 3, 'https://www.bfgcdn.com/1500_1500_90/114-1236-0211/prana-womens-sway-tank-yoga-tops.jpg'),
('jimbob', '2234', 2, 'https://assets.myntassets.com/dpr_2,q_60,w_210,c_limit,fl_progressive/assets/images/6846215/2018/7/4/a76129c0-5393-4be9-92e6-f50a767e172d1530708777706-Columbus-Men-Navy-Blue-Running-Shoes-9971530708777505-1.jpg'),
('jimbob', '1456', 3, 'http://www.kimscotch.com/images/booztNewBalance-us/14287688.jpg'),
('jimbob', '2345', 1, 'https://images-na.ssl-images-amazon.com/images/I/91RUNc0BO%2BL._UX342_.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`username`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ID` (`ID`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`barcode`),
  ADD UNIQUE KEY `barcode` (`barcode`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
