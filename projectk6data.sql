-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 30, 2021 at 02:23 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projectk6data`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id_category` int(11) NOT NULL,
  `namecategory` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id_category`, `namecategory`) VALUES
(1, 'อาหารสด'),
(2, 'อาหารสำเร็จรูป'),
(3, 'อาหารหวาน'),
(4, 'เครื่องดื่ม'),
(5, 'สินค้าจิปาถะ'),
(6, 'เสื้อผ้าและเครื่องแต่งกาย'),
(7, 'สินค้ามือสอง'),
(8, 'ผลไม้'),
(9, 'ผัก'),
(10, 'อาหารแห้ง');

-- --------------------------------------------------------

--
-- Table structure for table `dataclick`
--

CREATE TABLE `dataclick` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_product` text COLLATE utf8_unicode_ci NOT NULL,
  `nameproduct` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `dataclick`
--

INSERT INTO `dataclick` (`id`, `id_user`, `id_product`, `nameproduct`) VALUES
(1, 1, '[6, 7, 8]', '[ผักชี, ไก่ทอด KFO, ข้าวผัด]'),
(2, 1, '[7, 8, 9]', '[ไก่ทอด KFO, ข้าวผัด, ข้าวขาหมู]'),
(3, 2, '[3, 4, 5]', '[เนื้อหมู, เนื้อวัว, ต้นไม้มงคล]'),
(5, 1, '[6, 4, 9]', '[ผักชี, เนื้อวัว, ข้าวขาหมู]'),
(6, 1, '[4, 3, 5]', '[เนื้อวัว, เนื้อหมู, ต้นไม้มงคล]'),
(7, 1, '[7, 8, 3]', '[ไก่ทอด KFO, ข้าวผัด, เนื้อหมู]'),
(8, 1, '[9, 8, 7]', '[ข้าวขาหมู, ข้าวผัด, ไก่ทอด KFO]'),
(9, 1, '[6, 8, 8]', '[ผักชี, ข้าวผัด, ข้าวผัด]');

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

CREATE TABLE `manager` (
  `id_manager` int(11) NOT NULL,
  `email` text COLLATE utf8_unicode_ci NOT NULL,
  `password` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `manager`
--

INSERT INTO `manager` (`id_manager`, `email`, `password`) VALUES
(1, '123456', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id_product` int(11) NOT NULL,
  `id_shop` int(11) NOT NULL,
  `id_category` int(11) NOT NULL,
  `nameproduct` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `detail` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id_product`, `id_shop`, `id_category`, `nameproduct`, `price`, `detail`, `image`) VALUES
(3, 13, 1, 'เนื้อหมู', '80 - 190', 'สดๆจากฟาร์ม', '/projectk6/Image/product/product803245.jpg'),
(4, 13, 1, 'เนื้อวัว', '1500 - 2000', 'ยังเป็นๆไม่ตาย', '/projectk6/Image/product/product627517.jpg'),
(5, 13, 5, 'ต้นไม้มงคล', '2500', 'ไปขุดเอาเลย ต้นใหญ่มาก', '/projectk6/Image/product/product170067.jpg'),
(6, 13, 9, 'ผักชี', '10', 'โลละ 10 ขีด', '/projectk6/Image/product/product206001.jpg'),
(7, 13, 2, 'ไก่ทอด KFO', '10', 'แข่งกับ KFC', '/projectk6/Image/product/product639305.jpg'),
(8, 13, 2, 'ข้าวผัด', '40', 'เลือกใส่เนื้อสัตว์ได้', '/projectk6/Image/product/product213031.jpg'),
(9, 13, 2, 'ข้าวขาหมู', '40', 'ส่งฟรี', '/projectk6/Image/product/product510293.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `seller`
--

CREATE TABLE `seller` (
  `id_seller` int(11) NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `lastname` text COLLATE utf8_unicode_ci NOT NULL,
  `idcard` varchar(13) COLLATE utf8_unicode_ci NOT NULL,
  `gender` text COLLATE utf8_unicode_ci NOT NULL,
  `phone` text COLLATE utf8_unicode_ci NOT NULL,
  `birthday` date NOT NULL,
  `email` text COLLATE utf8_unicode_ci NOT NULL,
  `password` text COLLATE utf8_unicode_ci NOT NULL,
  `image` text COLLATE utf8_unicode_ci NOT NULL,
  `idfb` text COLLATE utf8_unicode_ci NOT NULL,
  `status` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `seller`
--

INSERT INTO `seller` (`id_seller`, `name`, `lastname`, `idcard`, `gender`, `phone`, `birthday`, `email`, `password`, `image`, `idfb`, `status`) VALUES
(9, 'Yut', 'Pa', '1111111111111', 'ชาย', '1111111111', '2007-07-17', '123@123.com', '123456', '/projectk6/Image/seller/seller827842.jpg', '', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `shop`
--

CREATE TABLE `shop` (
  `id_shop` int(11) NOT NULL,
  `id_seller` int(11) NOT NULL,
  `id_area` int(11) NOT NULL,
  `nameshop` text COLLATE utf8_unicode_ci NOT NULL,
  `image` text COLLATE utf8_unicode_ci NOT NULL,
  `lat` text COLLATE utf8_unicode_ci NOT NULL,
  `long` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `shop`
--

INSERT INTO `shop` (`id_shop`, `id_seller`, `id_area`, `nameshop`, `image`, `lat`, `long`) VALUES
(13, 9, 0, 'Lotus Mall', '/projectk6/Image/shop/shop384727.jpg', '14.0358933', '100.7256567');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `lastname` text COLLATE utf8_unicode_ci NOT NULL,
  `email` text COLLATE utf8_unicode_ci NOT NULL,
  `password` text COLLATE utf8_unicode_ci NOT NULL,
  `gender` text COLLATE utf8_unicode_ci NOT NULL,
  `phone` text COLLATE utf8_unicode_ci NOT NULL,
  `image` text COLLATE utf8_unicode_ci NOT NULL,
  `idfb` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `name`, `lastname`, `email`, `password`, `gender`, `phone`, `image`, `idfb`) VALUES
(1, 'ลิง', 'จั๊กๆ', '123@123.com', '123456', 'ชาย', '1111111111', '/projectk6/Image/avatar/avatar73898.jpg', ''),
(2, 'Jack', 'papho', 'xx@xx.com', '123456', 'ชาย', '1111111111', '/projectk6/Image/avatar/avatar94000.jpg', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id_category`);

--
-- Indexes for table `dataclick`
--
ALTER TABLE `dataclick`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manager`
--
ALTER TABLE `manager`
  ADD PRIMARY KEY (`id_manager`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id_product`),
  ADD KEY `id_shop` (`id_shop`),
  ADD KEY `id_category` (`id_category`);

--
-- Indexes for table `seller`
--
ALTER TABLE `seller`
  ADD PRIMARY KEY (`id_seller`);

--
-- Indexes for table `shop`
--
ALTER TABLE `shop`
  ADD PRIMARY KEY (`id_shop`),
  ADD KEY `id_seller` (`id_seller`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id_category` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `dataclick`
--
ALTER TABLE `dataclick`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `manager`
--
ALTER TABLE `manager`
  MODIFY `id_manager` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id_product` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `seller`
--
ALTER TABLE `seller`
  MODIFY `id_seller` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `shop`
--
ALTER TABLE `shop`
  MODIFY `id_shop` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`id_category`) REFERENCES `category` (`id_category`),
  ADD CONSTRAINT `product_ibfk_2` FOREIGN KEY (`id_shop`) REFERENCES `shop` (`id_shop`);

--
-- Constraints for table `shop`
--
ALTER TABLE `shop`
  ADD CONSTRAINT `id_seller` FOREIGN KEY (`id_seller`) REFERENCES `seller` (`id_seller`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
