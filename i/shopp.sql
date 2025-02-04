-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 07, 2025 at 06:10 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopp`
--
CREATE DATABASE IF NOT EXISTS `shopp` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `shopp`;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `p_id` int(7) NOT NULL,
  `p_name` varchar(200) NOT NULL,
  `p_detail` text NOT NULL,
  `p_price` float(9,2) NOT NULL,
  `p_ext` varchar(50) NOT NULL,
  `c_id` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`p_id`, `p_name`, `p_detail`, `p_price`, `p_ext`, `c_id`) VALUES
(1, 'Universe', 'อัลบั้มNCTThe3rdAlbum\"Universe\"', 650.00, 'jpg', 2),
(2, 'Sticker', 'อัลบั้มSticker\'Sticker\' อัลบั้มเต็มชุดที่ 3 ของ NCT 127', 500.00, 'jpg', 3),
(3, 'ISTJ', 'อัลบั้ม NCT DREAM ? The 3rd Album?ISTJ?', 350.00, 'jpg', 5),
(4, 'Favorite', 'อัลบั้มNCT 127 - 3rd Album Repackage [ Favorite ]', 350.00, 'jpg', 2),
(5, 'Resonance', 'อัลบั้มเต็มชุดที่ 2 NCT 2020 RESONANCE Pt. 1', 750.00, 'jpg', 4),
(6, 'DREAM( )SCAPE', 'อัลบั้ม NCT DREAM - DREAM( )SCAPE [Photobook]', 550.00, 'jpg', 3),
(7, 'Digipack', 'อัลบั้ม The Second Step : Chapter Two - Mini Album', 300.00, 'jpg', 2),
(8, 'EFFECT', 'อัลบั้ม1st  [THE FIRST STEP : TREASURE EFFECT]', 650.00, 'jpg', 4),
(9, 'Firt Step', 'อัลบั้ม 2nd Singlethe First Step Chapter Two', 500.00, 'jpg', 5),
(10, 'Magazine', 'Magazine 3rd Anniversary', 1500.00, 'jpg', 3),
(11, 'Reboot', 'อัลบั้ม 2nd Reboot Photobook Ver Random', 450.00, 'jpg', 2),
(12, 'Welcoming', 'Welcoming Collection 2022', 1300.00, 'jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `________________________`
--

DROP TABLE IF EXISTS `________________________`;
CREATE TABLE `________________________` (
  `COL 1` varchar(2) DEFAULT NULL,
  `COL 2` varchar(13) DEFAULT NULL,
  `COL 3` varchar(55) DEFAULT NULL,
  `COL 4` varchar(6) DEFAULT NULL,
  `COL 5` varchar(6) DEFAULT NULL,
  `COL 6` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `________________________`
--

INSERT INTO `________________________` (`COL 1`, `COL 2`, `COL 3`, `COL 4`, `COL 5`, `COL 6`) VALUES
('1', 'Universe', 'อัลบั้มNCTThe3rdAlbum\"Universe\"', '650.00', '1.jpg', '2'),
('2', 'Sticker', 'อัลบั้มSticker\'Sticker\' อัลบั้มเต็มชุดที่ 3 ของ NCT 127', '500.00', '2.jpg', '3'),
('3', 'ISTJ', 'อัลบั้ม NCT DREAM ? The 3rd Album?ISTJ?', '350.00', '3.jpg', '5'),
('4', 'Favorite', 'อัลบั้มNCT 127 - 3rd Album Repackage [ Favorite ]', '350.00', '4.jpg', '2'),
('5', 'Resonance', 'อัลบั้มเต็มชุดที่ 2 NCT 2020 RESONANCE Pt. 1', '750.00', '5.jpg', '4'),
('6', 'DREAM( )SCAPE', 'อัลบั้ม NCT DREAM - DREAM( )SCAPE [Photobook]', '550.00', '6.jpg', '3'),
('7', 'Digipack', 'อัลบั้ม The Second Step : Chapter Two - Mini Album', '300.00', '7.jpg', '2'),
('8', 'EFFECT', 'อัลบั้ม1st  [THE FIRST STEP : TREASURE EFFECT]', '650.00', '8.jpg', '4'),
('9', 'Firt Step', 'อัลบั้ม 2nd Singlethe First Step Chapter Two', '500.00', '9.jpg', '5'),
('10', 'Magazine', 'Magazine 3rd Anniversary', '1500.0', '10.jpg', '3'),
('11', 'Reboot', 'อัลบั้ม 2nd Reboot Photobook Ver Random', '450.00', '11.jpg', '2'),
('12', 'Welcoming', 'Welcoming Collection 2022', '1300.0', '12.jpg', '1'),
('', '', '', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`p_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `p_id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
