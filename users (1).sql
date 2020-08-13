-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 13, 2020 at 03:54 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phplearning`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `email_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `number` bigint(11) NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `registration_date` date NOT NULL,
  `block_state` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `auth_token` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime(6) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `plan` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `modified` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email_id`, `number`, `password`, `registration_date`, `block_state`, `auth_token`, `name`, `last_login`, `ip_address`, `plan`, `modified`, `user_id`) VALUES
(9, 'rohan@gmaol.com', 545345345345, 'MTIzNDU=', '2020-08-13', '', '', 'fsdfsd', '0000-00-00 00:00:00.000000', '0', '', '', '5f354061c6ac3'),
(10, 'rohan1@gmaol.com', 545345345345, 'MTIzNDU=', '2020-08-13', '', '', 'fsdfsd', '0000-00-00 00:00:00.000000', '0', '', '', '5f354495b6fc1'),
(11, 'rohan12@gmaol.com', 545345345345, 'MTIzNDU=', '2020-08-13', '', '', 'fsdfsd', '0000-00-00 00:00:00.000000', '0', '', '', '5f3544f4da62a'),
(12, 'rohan123@gmaol.com', 545345345345, 'MTIzNDU=', '2020-08-13', '', '', 'fsdfsd', '0000-00-00 00:00:00.000000', '::1', '', '', '5f35451458b7f'),
(13, 'rohan1253@gmaol.com', 545345345345, 'MTIzNDU=', '2020-08-13', '', '', 'fsdfsd', '0000-00-00 00:00:00.000000', '::1', '', '', '5f354569de87e');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
