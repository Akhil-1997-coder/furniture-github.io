-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 01, 2023 at 12:26 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `furniture`
--

-- --------------------------------------------------------

--
-- Table structure for table `item_list`
--

CREATE TABLE `item_list` (
  `item_list_id` int(11) NOT NULL,
  `item_name` varchar(250) NOT NULL,
  `item_code` varchar(50) NOT NULL,
  `item_type_id` int(10) NOT NULL,
  `active_flag` int(10) NOT NULL DEFAULT 0,
  `mrp` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `item_list`
--

INSERT INTO `item_list` (`item_list_id`, `item_name`, `item_code`, `item_type_id`, `active_flag`, `mrp`) VALUES
(1, 'Latest Stylish Chair', 'LSC01', 1, 0, '2500'),
(2, 'Bar Chair', 'BC01', 1, 0, '6500'),
(3, 'Canopy Type Chair', 'CTC03', 1, 0, '15000'),
(4, 'Latest Foam Sofa', 'LFS01', 2, 0, '10000'),
(5, 'Premium Stool', 'PS05', 5, 0, '50000'),
(6, 'Quartz Cahir with Foam Comfortable', 'QCWFC06', 1, 0, '1500'),
(7, 'Quartz Cahir with Foam with Orange Color', 'QCWFOC07', 1, 0, '1700'),
(8, 'Restraunt Special Chair', 'RSC08', 1, 0, '800');

-- --------------------------------------------------------

--
-- Table structure for table `item_type`
--

CREATE TABLE `item_type` (
  `item_type_id` int(10) NOT NULL,
  `item_type_name` varchar(250) NOT NULL,
  `item_type` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `item_type`
--

INSERT INTO `item_type` (`item_type_id`, `item_type_name`, `item_type`) VALUES
(1, 'chair', 'A'),
(2, 'Sofa', 'B'),
(3, 'premium sofa', 'C'),
(4, 'table', 'D'),
(5, 'stool', 'E');

-- --------------------------------------------------------

--
-- Table structure for table `subscribe`
--

CREATE TABLE `subscribe` (
  `subscribe_id` int(11) NOT NULL,
  `email` varchar(250) NOT NULL,
  `cflag` int(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subscribe`
--

INSERT INTO `subscribe` (`subscribe_id`, `email`, `cflag`) VALUES
(1, 'akhil123789singh@gmail.com', 0),
(2, 'akhil123789singh@gmail.com', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sub_item`
--

CREATE TABLE `sub_item` (
  `sub_item_id` int(10) NOT NULL,
  `sub_item_name` varchar(200) NOT NULL,
  `item_code` varchar(200) NOT NULL,
  `item_type_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `cart_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `cust_name` int(11) NOT NULL,
  `cust_mobile` int(11) NOT NULL,
  `cust_add` int(11) NOT NULL,
  `cust_email` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user_reg`
--

CREATE TABLE `user_reg` (
  `user_id` int(10) NOT NULL,
  `f_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phcode` varchar(10) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `f_password` varchar(100) NOT NULL,
  `flag` int(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_reg`
--

INSERT INTO `user_reg` (`user_id`, `f_name`, `email`, `phcode`, `phone`, `f_password`, `flag`) VALUES
(1, 'akhil1621', 'akhil123789singh@gmail.com', '', '1234567895', 'Ddnddn@123456', 0),
(2, 'manav152', 'manavraina087@gmail.com', '', '7895214635', '147258369', 0),
(3, 'admin@gmail.com', 'manav152@gmail.com', '', '147258369', '123456789', 0),
(4, 'admin@gmail.com', 'manav152@gmail.com', '', '857569874', '96666666666', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `item_list`
--
ALTER TABLE `item_list`
  ADD PRIMARY KEY (`item_list_id`);

--
-- Indexes for table `item_type`
--
ALTER TABLE `item_type`
  ADD PRIMARY KEY (`item_type_id`);

--
-- Indexes for table `subscribe`
--
ALTER TABLE `subscribe`
  ADD PRIMARY KEY (`subscribe_id`);

--
-- Indexes for table `sub_item`
--
ALTER TABLE `sub_item`
  ADD PRIMARY KEY (`sub_item_id`);

--
-- Indexes for table `user_reg`
--
ALTER TABLE `user_reg`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `item_list`
--
ALTER TABLE `item_list`
  MODIFY `item_list_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `item_type`
--
ALTER TABLE `item_type`
  MODIFY `item_type_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `subscribe`
--
ALTER TABLE `subscribe`
  MODIFY `subscribe_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sub_item`
--
ALTER TABLE `sub_item`
  MODIFY `sub_item_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_reg`
--
ALTER TABLE `user_reg`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
