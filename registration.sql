-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 29, 2017 at 01:28 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `registration`
--

-- --------------------------------------------------------

--
-- Table structure for table `checkout`
--

CREATE TABLE `checkout` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `card` text NOT NULL,
  `cvc` int(11) NOT NULL,
  `month` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `amount` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `checkout`
--

INSERT INTO `checkout` (`id`, `name`, `card`, `cvc`, `month`, `year`, `amount`) VALUES
(3, 'vanessa', '1234', 11, 11, 1111, '1599'),
(4, 'vanessa', '123412341234', 311, 12, 2424, '2655'),
(5, 'vanessa', '123412341234', 311, 12, 2012, '2578');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `message` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `name`, `email`, `subject`, `message`) VALUES
(13, 'jie', 'jie@outlookk.my', 'hello', 'complain'),
(14, 'vanessa', 'vanessapeng93@gmail.com', 'laptop repair', 'air cooler');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `phone` text NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `zip` text NOT NULL,
  `website` varchar(255) NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `first_name`, `last_name`, `email`, `gender`, `phone`, `address`, `city`, `state`, `zip`, `website`, `image`) VALUES
(1, 'khor', 'peng', 'heelo@gmail.com', 'female', '01290283', 'sungai pinang', 'georgetown', 'Sarawak', '11600', 'website@gmail.com', ''),
(2, 'hello', 'ewrr', 'heelo@gmail.com', 'female', '01290283', 'sungai pinang', 'georgetown', 'Negeri Sembilan', '11600', 'website@gmail.com', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` double(10,2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`id`, `name`, `image`, `price`) VALUES
(16, 'Gaming Pc Intel Core i7 @ 3.1ghz Alienware Aurora Asus GTX 1050 ', '61476659229501511852614.jpg', 2188.00),
(21, 'AVF X6 Gaming Freak II 6D Laser Gaming Mouse', '8235819669541511857396.jpg', 23.50),
(14, 'MSI STEALTH GS63 7RD-075 15.6\" FHD Gaming Laptop Black ', '257738459261511852425.jpg', 6299.00),
(13, 'MSI GL62M 7RDX-1825 15.6\" FHD Gaming Laptop Black ', '2541827468921511852357.jpg', 3649.00),
(12, 'Lenovo IdeaPad 320-14IKBN 80XK004KMJ 14â€ Notebook ', '82877509377871511852280.png', 2299.00),
(15, 'CPU AMD A4-6300 3.9GHz Turbo Gaming Specs', '89704905667241511852531.jpg', 1499.00),
(18, 'QNIGLO7 Color Backlit LED USB Wired Game Keyboard', '36328507721671511852807.jpg', 200.00),
(19, 'AVF X6 Gaming Freak II 6D Laser Gaming Mouse  ', '98589383820541511852880.jpg', 59.00),
(20, 'Fantech Uther V4 2400 DPI LED OPtical 6D USB Wired Gaming Mouse', '6040449263451511852964.jpg', 79.00),
(28, 'computer', '3088556864451511877579.jpg', 123.00),
(29, 'AVF X6 Gaming Freak II 6D Laser Gaming Mouse', '97380757987681511878151.jpg', 23.50);

-- --------------------------------------------------------

--
-- Table structure for table `try`
--

CREATE TABLE `try` (
  `id` int(11) NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstName` varchar(15) NOT NULL,
  `lastName` varchar(15) NOT NULL,
  `role` varchar(11) NOT NULL DEFAULT 'user',
  `email` varchar(80) NOT NULL,
  `password` text NOT NULL,
  `image` text NOT NULL,
  `date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstName`, `lastName`, `role`, `email`, `password`, `image`, `date`) VALUES
(8, 'khor', 'world', 'user', 'heelo@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', 'computer1.jpg', ''),
(9, 'khor', 'peng', 'user', 'khorpeng@gmil.com', '5f4dcc3b5aa765d61d8327deb882cf99', 'computer4.jpg', ''),
(10, 'khor', 'peng', 'user', 'khorpeng@gmil.com', '5f4dcc3b5aa765d61d8327deb882cf99', '15025261831551510551710.jpg', ''),
(11, 'khor', 'peng', 'user', 'khorpeng@gmil.com', '5f4dcc3b5aa765d61d8327deb882cf99', '52917448385711510551730.jpg', ''),
(12, 'khor', 'peng', 'user', 'khorpeng@gmil.com', '25d55ad283aa400af464c76d713c07ad', '72899454366551510551776.jpg', ''),
(13, 'khor', 'peng', 'user', 'khorpeng@gmil.com', '25d55ad283aa400af464c76d713c07ad', 'raining1.jpg', ''),
(14, 'khor', 'peng', 'user', 'khorpeng@gmil.com', '5f4dcc3b5aa765d61d8327deb882cf99', 'computer4.jpg', ''),
(15, 'khor', 'world', 'user', 'heelo@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', '733166218901510552304.jpg', ''),
(16, 'khor', 'world', 'user', 'heelo@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', '33284524491161510552321.jpg', ''),
(17, 'hello', 'world', 'user', 'heelo@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', '9924578650631510552790.jpg', 'November,13 17'),
(18, 'hello', 'world', 'user', 'heelo@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', '50057348089941510552924.jpg', 'November,13 2017'),
(19, 'hello', 'world', 'user', 'heelo@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', '9356943946681510552934.jpg', 'November,13 2017'),
(20, 'hello', 'world', 'user', 'heelo@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', '22342303980591510553284.jpg', 'November,13 2017'),
(21, 'hello', 'world', 'user', 'heelo@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', '30949232999541510555028.jpg', 'November,13 2017'),
(22, 'asasa', 'sadsad', 'user', 'hello@gmail.com', '25d55ad283aa400af464c76d713c07ad', '500657683771510557365.jpg', 'November,13 2017'),
(23, 'khor', 'peng', 'user', 'vanessapeng93@gmail.com', '019b0b27113bc3d190958a6b7cf2c177', '22524200323501510558519.jpg', 'November,13 2017'),
(24, 'has', 'linda', 'user', 'haslinda@gmail.com', '019b0b27113bc3d190958a6b7cf2c177', '87067346453371510629526.jpg', 'November,14 2017'),
(25, 'van', 'pwnf', 'admin', 'pwng@gmail.com', '25d55ad283aa400af464c76d713c07ad', '68893227382741510713158.jpg', 'November,15 2017'),
(26, 'admin', 'admin', 'admin', 'admin@gmail.com', 'admin', '', ''),
(27, 'vanessa', 'peng', 'user', 'vanessa9393@gmail.com', '8eba60653c342dd27d207ca0ed8e2a34', '5069585436391511866234.jpg', 'November,28 2017');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `checkout`
--
ALTER TABLE `checkout`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `try`
--
ALTER TABLE `try`
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
-- AUTO_INCREMENT for table `checkout`
--
ALTER TABLE `checkout`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `try`
--
ALTER TABLE `try`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
