-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 15, 2018 at 12:20 PM
-- Server version: 5.7.21-0ubuntu0.17.10.1
-- PHP Version: 7.1.15-0ubuntu0.17.10.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ambpc`
--

-- --------------------------------------------------------

--
-- Table structure for table `mobo`
--

CREATE TABLE `mobo` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `brand` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `form_factor` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `socket` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `chipset` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `max_ram` int(8) NOT NULL,
  `price` float NOT NULL,
  `links` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mobo`
--

INSERT INTO `mobo` (`id`, `name`, `brand`, `form_factor`, `socket`, `chipset`, `max_ram`, `price`, `links`) VALUES
(1, 'Asus ROG STRIX Z370-E GAMING', 'Asus', 'ATX', 'LGA 1151', 'Intel Z370', 64, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `processor`
--

CREATE TABLE `processor` (
  `id` int(11) NOT NULL,
  `platform` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'intel',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `socket` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `core` int(5) NOT NULL,
  `threads` int(4) NOT NULL,
  `freq_base` int(11) NOT NULL,
  `l3cache` int(5) NOT NULL,
  `tdp` int(4) NOT NULL,
  `price` float NOT NULL,
  `links` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `processor`
--

INSERT INTO `processor` (`id`, `platform`, `name`, `slug`, `socket`, `core`, `threads`, `freq_base`, `l3cache`, `tdp`, `price`, `links`) VALUES
(3, 'intel', 'i7-8700k', '', 'LGA 1151', 6, 12, 4, 12, 95, 23099, ''),
(4, 'intel', 'i7-8700', '', 'LGA 1151', 6, 12, 3, 12, 65, 32799, ''),
(5, 'intel', 'i5-8600K', '', 'LGA 1151', 6, 6, 4, 9, 95, 16699, ''),
(6, 'intel', 'i5-8400', '', 'LGA 1151', 6, 6, 3, 9, 65, 11099, ''),
(7, 'intel', 'i3-8350K', '', 'LGA 1151', 4, 4, 4, 8, 91, 16428, ''),
(8, 'intel', 'i3-8100', '', 'LGA 1151', 4, 4, 4, 6, 65, 7534, '');

-- --------------------------------------------------------

--
-- Table structure for table `processor_mobo`
--

CREATE TABLE `processor_mobo` (
  `id` int(11) NOT NULL,
  `processor_id` int(11) NOT NULL,
  `mobo_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `processor_mobo`
--

INSERT INTO `processor_mobo` (`id`, `processor_id`, `mobo_id`) VALUES
(1, 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mobo`
--
ALTER TABLE `mobo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `processor`
--
ALTER TABLE `processor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `processor_mobo`
--
ALTER TABLE `processor_mobo`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mobo`
--
ALTER TABLE `mobo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `processor`
--
ALTER TABLE `processor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `processor_mobo`
--
ALTER TABLE `processor_mobo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
