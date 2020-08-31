-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 11, 2018 at 03:59 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `munchez`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `house number` varchar(10) NOT NULL,
  `area` varchar(20) NOT NULL,
  `city` varchar(25) NOT NULL,
  `postal_code` int(10) NOT NULL,
  `cus_id` varchar(15) NOT NULL,
  `res_id` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`house number`, `area`, `city`, `postal_code`, `cus_id`, `res_id`) VALUES
('oo2', 'Mama Ngina drive', 'Thika', 201307, 'null', '301'),
('0015', 'Commercial street', 'Thika', 110001, 'null', '302');
('0393',  'A3 Thika highway', 'Thika', 238213,  'null', '303');
('0786', 'waithera plaza Nkuruma','Thika'202124, 'null','304');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `cus_id` int(15) NOT NULL,
  `cus_name` varchar(20) NOT NULL,
  `cus_phone` int(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `address` varchar(75) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cus_id`, `cus_name`, `cus_phone`, `email`, `password`, `address`) VALUES
(1000, 'john', 713522690, 'jkmwagi@gmail.com', '10000', 'makongeni\\kwangetheroad\\gate number 3'),
(1001, 'carolyne', 708009727, 'caromwangi@gmail.com', '20000', 'thika\\bluepost hotelroad\\gate number 3'),
(1002, 'jackson', 705430077, 'jacksonwanjuki@gmail.com', '30000', 'agha khan university hospital way\\ gate number0203'),
(1003, 'frank', 786815620, 'frankkiche@gmail.com', '40000', 'majengoroad\\gate number 4521');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `email` varchar(30) NOT NULL,
  `password` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`email`, `password`) VALUES
('jkmwagi@gmail.com', '10000'),
('caromwangi@gmail.com', '20000'),
('jacksonwanjuki@gmail.com', '30000'),
('frankkiche@gmail.com', '40000');

-- --------------------------------------------------------

--
-- Table structure for table `login_munchez`
--

CREATE TABLE `login_munchez` (
  `email` varchar(30) NOT NULL,
  `password` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `menu_item`
--

CREATE TABLE `menu_item` (
  `res_id` varchar(15) NOT NULL,
  `item_id` varchar(10) NOT NULL,
  `item_name` varchar(30) NOT NULL,
  `item_price` float(5,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `menu_item`
--

INSERT INTO `menu_item` (`res_id`, `item_id`, `item_name`, `item_price`) VALUES
('301', '301101', 'meat ball sandwitch', 500.00),
('301', '301102', 'pulled BBq beef sandwitch', 600.00),
('301', '301103', 'spicy chicken sandwich', 400.00),
('301', '301104', 'pork chops', 480.00),
('301', '301105', 'upgraded chapti', 175.00),
('301', '301106', 'biriani', 460.00),
('302', '302201', 'beef burger', 350.00),
('302', '302202', 'mixed vegatables burger', 250.00),
('302', '302203', 'chicken balls', 475.00),
('302', '302204', 'cocktail', 125.00),
('302', '302205', 'grilled', 520.00),
('302', '302206', 'fried', 450.00),
('302', '302207', 'salads', 300.00),
('302', '302208', 'grilled_beef', 400.00),
('302', '302209', 'fried_beef', 350.00),
('303', '303301', 'baked chiken', 450.00),
('303', '303302', 'dry fried beef', 300.00),
('303', '303301', 'pork with mukimo', 400.00),
('303', '303301', 'deep fried fish with african herbs', 500.00),
('304', '304401', 'deep fried', 450.00),
('304', '304402', 'grilled beef', 500.00),
('304', '304403', 'beef samosas', 50.00),
('304', '304404', 'pork samosas', 55.00),
('304', '304405', 'potatoes samosas', 40.00),
('304', '304406', 'beef with mixed rice', 400.00),
('304', '304407', 'chicken with mukimo', 700.00),


-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `item_id` varchar(15) NOT NULL,
  `res_id` varchar(15) NOT NULL,
  `order_id` varchar(15) NOT NULL,
  `order_date` date NOT NULL,
  `order_status` varchar(30) NOT NULL,
  `order_quantity` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `order_er`
--

CREATE TABLE `order_er` (
  `order_id` varchar(15) NOT NULL,
  `item_id` varchar(15) NOT NULL,
  `quantity` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

CREATE TABLE `restaurant` (
  `res_id` varchar(15) NOT NULL,
  `res_name` varchar(35) NOT NULL,
  `cuisine` int(35) NOT NULL,
  `res_phone` int(10) NOT NULL,
  `food_type` int(10) NOT NULL,
  `minimum_order` int(5) NOT NULL,
  `hours_open` time(6) NOT NULL,
  `avg_rating` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `restaurant`
--

INSERT INTO `restaurant` (`res_id`, `res_name`, `cuisine`, `res_phone`, `food_type`, `minimum_order`, `hours_open`, `avg_rating`) VALUES
('301', 'cascade restaurant', 0, 713522690, 5, 300, '07:00:23.000000', 4.2),
('302', 'spoonzoon restaurante', 0, 713522690, 5, 300, '07:00:23.000000', 3.9);
('303', 'cravers grill', 0, 713522690, 5, 300, '07:00:23.000000', 4.2);
('304') 'yummy food court',0, 711 752656,5,300, '07:00:23.000000' 4.1;

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `res_id` varchar(15) NOT NULL,
  `username` varchar(15) NOT NULL,
  `r_reviews` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`res_id`,`cus_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cus_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`email`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `password` (`password`);

--
-- Indexes for table `login_munchez`
--
ALTER TABLE `login_munchez`
  ADD PRIMARY KEY (`password`),
  ADD UNIQUE KEY `password` (`password`),
  ADD UNIQUE KEY `password_2` (`password`);

--
-- Indexes for table `menu_item`
--
ALTER TABLE `menu_item`
  ADD PRIMARY KEY (`item_id`),
  ADD UNIQUE KEY `item_id` (`item_id`),
  ADD UNIQUE KEY `item_name` (`item_name`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`order_id`),
  ADD UNIQUE KEY `order_id` (`order_id`);

--
-- Indexes for table `order_er`
--
ALTER TABLE `order_er`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `restaurant`
--
ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`res_id`),
  ADD UNIQUE KEY `res_id` (`res_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`res_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
