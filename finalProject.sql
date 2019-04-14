-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 14, 2019 at 11:39 PM
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
('anton', 'Anton', 'A', 'Anton', 'aokfokweg', 'okaaa', 'hello', 'Germany', 'A901920', 'anton', 0),
('admin', 'Jack', 'J', 'Jack', 'University', 'Calgary', 'Alberta', 'Canada', 'T6T6T6', 'admin', 0),
('woekfoewkf', 'abcd', 'abcd', 'abcd', 'okoektoew', 'ijweijw', 'owkegokweg', 'wojwoekgew', '8729u12nr1', 'abcd', 0),
('testing', 'John', 'A', 'Smith', 'Hamburg Drive', 'Hamburg', 'Lower Saxony', 'Germany', '70173', 'testing', 0),
('471@yahoo..ca', 'CPSC', 'C', 'CPSC', 'University Dr.', 'Calgary', 'Alberta', 'Canada', 'T4H4H4', '471', 0),
('tamer', 'Tamer', 'A', 'Jerada', '123 Street', 'Calgary', 'Alberta', 'Canada', 'V0H0H0', 'tamer', 0);

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
  `type` text COLLATE utf8_unicode_ci NOT NULL,
  `barcode` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `color` text COLLATE utf8_unicode_ci NOT NULL,
  `price` int(5) NOT NULL,
  `size` text COLLATE utf8_unicode_ci NOT NULL,
  `gender` text COLLATE utf8_unicode_ci NOT NULL,
  `quantity` int(4) NOT NULL,
  `description` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(600) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`type`, `barcode`, `color`, `price`, `size`, `gender`, `quantity`, `description`, `url`) VALUES
('T-Shirt', '1001113', 'Gray', 20, 'M', 'M+F', 15, 'Coding shirt', 'https://cdn.shopify.com/s/files/1/0051/4802/products/i-octocat-code_600x600.png?v=1520399372'),
('T-Shirt', '1001112', 'Navy', 29, 'S', 'M+F', 95, '100% Cotton Navy T-Shirt', 'https://rendering.documents.cimpress.io/v1/vp/preview?width=690&height=690&quality=80&scene=https://scene.products.cimpress.io/v1/scenes/39fff789-7ad5-4b08-8faf-753d0c960f48'),
('Jacket', '1456', 'Black', 130, 'M', 'F', 20, 'Cozy winter jacket!', 'http://www.kimscotch.com/images/booztNewBalance-us/14287688.jpg'),
('Top', '2345', 'Grey', 40, 'M', 'M', 4, 'Slick grey top.', 'https://images-na.ssl-images-amazon.com/images/I/91RUNc0BO%2BL._UX342_.jpg'),
('T-Shirt', '1001111', 'Gray', 50, 'L', 'M+F', 31, 'Soft blue t-shirt', 'https://de9luwq5d40h2.cloudfront.net/catalog/product/large_image/05_407044.jpg'),
('Shoe', '1234', 'White', 90, 'M', 'O', 2, 'Comfortable white shoes', 'https://cdn.allbirds.com/image/fetch/q_auto,f_auto/w_1000,f_auto,q_auto,b_rgb:F2F2F2/https://cdn.shopify.com/s/files/1/2804/0750/products/ChalkTreeRunnerToe_0954a783-46fe-4073-81b7-f6f1c30b8dc5.png?v=1541457923'),
('Jacket', '2123', 'Grey', 120, 'M', 'O', 3, 'Cozy winter jacket!', 'https://i.ebayimg.com/images/g/VusAAOSwSrNaGQGx/s-l300.jpg'),
('Sock', '10291020', 'Blue', 59, 'M', 'M', 100, 't', 'https://www.traditionsjewishgifts.com/media/blue-dreidel-pattern-hanukkah-baby-socks-RLTYNSOCKC1.jpg'),
('Socks', '1001115', 'Gray', 11, 'O', 'M', 99, 'Quirky dress socks', 'https://cdn11.bigcommerce.com/s-4np45xy/images/stencil/1024x1024/products/574/1912/Chicago_Flag_Crew_Socks_Mens__98704.1507134945.jpg?c=2'),
('Jacket', '1001116', 'Brown', 149, 'M', 'M', 10, 'Stylish brown jacket', 'https://www.elisfrroku.com/ambiant/images/jacket.jpg'),
('Socks', '1001117', 'Multi-colored', 9, 'M', 'F', 5, 'Colorful socks!', 'https://cdn11.bigcommerce.com/s-j602wc6a/images/stencil/300x300/products/6572/23541/cosmos-recycled-cotton-socks-w__56287.1502809283.jpg'),
('Suit', '1001119', 'Brown', 399, 'M', 'F', 3, 'Beautiful suit', 'https://thrilling.imgix.net/s/files/1/0118/0132/9723/products/DSC_0250_ref_3_Shopify_Maximum_4472x4472.png');

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

CREATE TABLE `purchase` (
  `card_number` bigint(200) NOT NULL,
  `card_type` text NOT NULL,
  `username` text NOT NULL,
  `expiry_month` int(2) NOT NULL,
  `expiry_year` int(2) NOT NULL,
  `totalprice` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchase`
--

INSERT INTO `purchase` (`card_number`, `card_type`, `username`, `expiry_month`, `expiry_year`, `totalprice`) VALUES
(3193681968918691, 'VISA', 'jimbob', 6, 19, 168),
(1939316913691369, 'VISA', 'jimbob', 11, 19, 168),
(1112912848128481, 'MasterCard', 'jimbob', 8, 19, 137),
(1002915010291023, 'American_Express', 'testing', 10, 2022, 156),
(1234, 'VISA', '471@yahoo..ca', 11, 11, 125),
(1234567898765222, 'Debit', 'tamer', 11, 19, 30),
(9159195821958921, 'American_Express', 'jimbob', 9, 19, 534);

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
('471@yahoo..ca', '1234', 2, 'https://cdn.allbirds.com/image/fetch/q_auto,f_auto/w_1000,f_auto,q_auto,b_rgb:F2F2F2/https://cdn.shopify.com/s/files/1/2804/0750/products/ChalkTreeRunnerToe_0954a783-46fe-4073-81b7-f6f1c30b8dc5.png?v=1541457923'),
('471@yahoo..ca', '1001117', 1, 'https://cdn11.bigcommerce.com/s-j602wc6a/images/stencil/300x300/products/6572/23541/cosmos-recycled-cotton-socks-w__56287.1502809283.jpg'),
('471@yahoo..ca', '1001113', 1, 'https://cdn.shopify.com/s/files/1/0051/4802/products/i-octocat-code_600x600.png?v=1520399372');

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
