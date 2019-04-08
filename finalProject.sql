-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 08, 2019 at 10:46 PM
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
  `password` varchar(35) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`username`, `first_name`, `middle_name`, `last_name`, `street_name`, `city`, `province`, `country`, `postal_code`, `password`) VALUES
('johndoe@google.ca', 'John', 'A', 'Doe', '1 University Drive', 'Calgary', 'Alberta', 'Canada', 'V0H0H0', 'johndoe'),
('janedoe@yahoo.ca', 'Jane', 'A', 'Doe', '1 Avenue', 'Calgary', 'Alberta', 'Canada', 'V0H0H1', 'janedoe'),
('Andy', 'Andy', 'A', 'A', 'A', 'C', 'P', 'Canada', 'V0H0H0', 'snvvv'),
('Ben', 'Benjamin', 'A', 'Macdonald', 'Downtown Ave', 'Calgary', 'Alberta', 'Canada', 'V9H9H9', 'bennie'),
('jonathan@yahoo.ca', 'Jonathan', 'A', 'Mcnuggits', 'Streetave', 'Saskatoon', 'Saskatchewan', 'Canada', 'H1H1H1', 'johnny');

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
  `description` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`name`, `type`, `barcode`, `color`, `price`, `size`, `gender`, `quantity`, `description`) VALUES
('T-Shirt', 'T-shirt', 'a00100001', 'Blue', 16, 'M', 'M', 50, 'Comfortable, stylish and soft.'),
('T-Shirt', 'T-Shirt', 'a00100002', 'Black', 16, 'M', 'M', 40, '100% cotton, stylish shirt!'),
('Jacket', 'Jacket', 'b00100001', 'Brown', 40, 'M', 'F', 25, 'Stylish brown jacket, perfect for any event!'),
('Socks', 'Socks', 'c00100001', 'Black', 10, 'O', 'O', 50, 'Socks, one-size fit all.');

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

CREATE TABLE `purchase` (
  `card_number` int(10) NOT NULL,
  `card_type` char(1) NOT NULL,
  `username` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
