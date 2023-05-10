-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 12, 2023 at 09:06 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `odlms_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointment_list`
--

CREATE TABLE `appointment_list` (
  `id` int(30) NOT NULL,
  `code` varchar(100) NOT NULL,
  `schedule` datetime NOT NULL,
  `client_id` int(30) NOT NULL,
  `prescription_path` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `appointment_list`
--

INSERT INTO `appointment_list` (`id`, `code`, `schedule`, `client_id`, `prescription_path`, `status`, `date_created`, `date_updated`) VALUES
(1, '202201-0001', '2022-01-11 15:30:00', 2, '1_sample.pdf?v=1641884206', 2, '2022-01-11 14:06:30', '2022-11-20 00:21:12'),
(4, '202201-0003', '2022-01-13 10:00:00', 2, '', 4, '2022-01-11 17:07:05', '2022-11-20 10:59:01'),
(5, '202211-0001', '2022-11-26 22:55:00', 2, '', 5, '2022-11-19 22:55:58', '2022-11-20 09:25:19'),
(6, '202211-0002', '2022-10-19 20:59:00', 6, '', 3, '2022-11-20 06:57:45', '2022-11-20 10:58:18'),
(7, '202211-0003', '2022-11-21 09:22:00', 6, '', 1, '2022-11-20 09:22:42', '2022-11-20 10:57:54'),
(8, '202211-0004', '2022-11-20 11:55:00', 2, '', 6, '2022-11-20 10:55:12', '2022-11-20 11:04:31'),
(9, '202211-0005', '2022-11-22 11:02:00', 2, '', 4, '2022-11-20 11:02:07', '2022-11-20 11:06:52'),
(10, '202211-0006', '2022-11-23 02:11:00', 7, '', 5, '2022-11-20 11:11:30', '2022-11-20 11:16:53'),
(11, '202211-0007', '2022-11-22 21:53:00', 2, '', 0, '2022-11-20 21:53:09', NULL),
(12, '202211-0008', '2022-11-22 21:53:00', 2, '', 6, '2022-11-20 21:54:07', '2022-11-20 21:55:46'),
(13, '202211-0009', '2022-11-26 10:10:00', 2, '202211-0008.pdf?v=1669003884', 6, '2022-11-21 07:11:24', '2022-11-21 07:13:30'),
(14, '202211-0010', '2022-11-30 12:00:00', 7, '', 1, '2022-11-21 12:20:23', '2022-11-21 12:21:13'),
(15, '202212-0001', '2022-12-15 07:12:00', 2, '', 5, '2022-12-11 07:12:28', '2022-12-11 07:22:49'),
(16, '202212-0002', '2023-01-01 12:00:00', 2, '', 0, '2022-12-21 22:40:28', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `appointment_test_list`
--

CREATE TABLE `appointment_test_list` (
  `appointment_id` int(30) NOT NULL,
  `test_id` int(30) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `appointment_test_list`
--

INSERT INTO `appointment_test_list` (`appointment_id`, `test_id`, `date_created`) VALUES
(1, 1, '2022-01-11 14:06:30'),
(1, 3, '2022-01-11 14:06:30'),
(1, 1, '2022-01-11 14:14:13'),
(1, 3, '2022-01-11 14:14:13'),
(1, 1, '2022-01-11 14:15:45'),
(1, 3, '2022-01-11 14:15:45'),
(1, 1, '2022-01-11 14:15:57'),
(1, 3, '2022-01-11 14:15:57'),
(1, 1, '2022-01-11 14:16:34'),
(1, 3, '2022-01-11 14:16:34'),
(1, 1, '2022-01-11 14:16:39'),
(1, 3, '2022-01-11 14:16:39'),
(1, 1, '2022-01-11 14:17:44'),
(1, 3, '2022-01-11 14:17:44'),
(1, 1, '2022-01-11 14:48:09'),
(1, 3, '2022-01-11 14:48:09'),
(1, 1, '2022-01-11 14:56:46'),
(1, 3, '2022-01-11 14:56:46'),
(4, 3, '2022-01-11 17:07:05'),
(4, 5, '2022-01-11 17:07:05'),
(5, 1, '2022-11-19 22:55:58'),
(6, 3, '2022-11-20 06:58:16'),
(6, 5, '2022-11-20 06:58:16'),
(6, 4, '2022-11-20 06:58:16'),
(6, 2, '2022-11-20 06:58:16'),
(6, 3, '2022-11-20 07:01:37'),
(6, 5, '2022-11-20 07:01:37'),
(6, 4, '2022-11-20 07:01:37'),
(6, 2, '2022-11-20 07:01:37'),
(6, 1, '2022-11-20 07:01:37'),
(7, 4, '2022-11-20 09:22:56'),
(7, 2, '2022-11-20 09:22:56'),
(8, 2, '2022-11-20 10:55:12'),
(8, 2, '2022-11-20 10:55:31'),
(9, 5, '2022-11-20 11:02:19'),
(10, 7, '2022-11-20 11:11:45'),
(12, 5, '2022-11-20 21:54:07'),
(13, 8, '2022-11-21 07:11:24'),
(14, 3, '2022-11-21 12:20:23'),
(15, 4, '2022-12-11 07:12:28'),
(1, 1, '2022-01-11 14:06:30'),
(1, 3, '2022-01-11 14:06:30'),
(1, 1, '2022-01-11 14:14:13'),
(1, 3, '2022-01-11 14:14:13'),
(1, 1, '2022-01-11 14:15:45'),
(1, 3, '2022-01-11 14:15:45'),
(1, 1, '2022-01-11 14:15:57'),
(1, 3, '2022-01-11 14:15:57'),
(1, 1, '2022-01-11 14:16:34'),
(1, 3, '2022-01-11 14:16:34'),
(1, 1, '2022-01-11 14:16:39'),
(1, 3, '2022-01-11 14:16:39'),
(1, 1, '2022-01-11 14:17:44'),
(1, 3, '2022-01-11 14:17:44'),
(1, 1, '2022-01-11 14:48:09'),
(1, 3, '2022-01-11 14:48:09'),
(1, 1, '2022-01-11 14:56:46'),
(1, 3, '2022-01-11 14:56:46'),
(4, 3, '2022-01-11 17:07:05'),
(4, 5, '2022-01-11 17:07:05'),
(5, 1, '2022-11-19 22:55:58'),
(6, 3, '2022-11-20 06:58:16'),
(6, 5, '2022-11-20 06:58:16'),
(6, 4, '2022-11-20 06:58:16'),
(6, 2, '2022-11-20 06:58:16'),
(6, 3, '2022-11-20 07:01:37'),
(6, 5, '2022-11-20 07:01:37'),
(6, 4, '2022-11-20 07:01:37'),
(6, 2, '2022-11-20 07:01:37'),
(6, 1, '2022-11-20 07:01:37'),
(7, 4, '2022-11-20 09:22:56'),
(7, 2, '2022-11-20 09:22:56'),
(8, 2, '2022-11-20 10:55:12'),
(8, 2, '2022-11-20 10:55:31'),
(9, 5, '2022-11-20 11:02:19'),
(10, 7, '2022-11-20 11:11:45'),
(12, 5, '2022-11-20 21:54:07'),
(13, 8, '2022-11-21 07:11:24'),
(14, 3, '2022-11-21 12:20:23'),
(15, 4, '2022-12-11 07:12:28'),
(16, 4, '2022-12-21 22:40:28');

-- --------------------------------------------------------

--
-- Table structure for table `borrow_return_list`
--

CREATE TABLE `borrow_return_list` (
  `id` int(225) NOT NULL,
  `borrower_name` varchar(128) NOT NULL,
  `item_borrowed` varchar(128) NOT NULL,
  `date_borrowed` date NOT NULL,
  `room` varchar(128) NOT NULL,
  `date_returned` date NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `borrow_return_list`
--

INSERT INTO `borrow_return_list` (`id`, `borrower_name`, `item_borrowed`, `date_borrowed`, `room`, `date_returned`, `status`) VALUES
(2, 'frank marwa', 'projector', '2022-12-14', 'LAB_THREE', '0000-00-00', '');

-- --------------------------------------------------------

--
-- Table structure for table `client_list`
--

CREATE TABLE `client_list` (
  `id` int(30) NOT NULL,
  `firstname` text NOT NULL,
  `middlename` text NOT NULL,
  `lastname` text NOT NULL,
  `gender` varchar(50) NOT NULL,
  `contact` varchar(150) NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `dob` date NOT NULL,
  `address` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `client_list`
--

INSERT INTO `client_list` (`id`, `firstname`, `middlename`, `lastname`, `gender`, `contact`, `email`, `password`, `dob`, `address`, `avatar`, `delete_flag`, `date_created`, `date_updated`) VALUES
(2, 'Apeles', 'Mgogo', 'vancho', 'Male', '255627424813', 'apeles@sample.com', 'de071899738bbee8475142d5b1e5bc83', '1997-10-14', 'DIT', 'uploads/client-2.png?v=1668887452', 0, '2022-01-11 11:35:33', '2022-11-19 22:50:52'),
(6, 'john', '', 'newton', 'Male', '25572882822', 'chinaman@sample.com', 'abfb6c665e560c5f38f710bd4439f9f9', '1999-04-20', 'musoma', NULL, 0, '2022-11-20 06:56:57', NULL),
(7, 'marlow', '', 'smith', 'Male', '25578975544', 'marlow@sample.com', '7106735ee583167c53c99ee45566253d', '1890-11-22', 'kimara', NULL, 0, '2022-11-20 11:10:03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `equipment_stores`
--

CREATE TABLE `equipment_stores` (
  `id` int(255) NOT NULL,
  `Equipment_Name` varchar(128) NOT NULL,
  `Equipment_in_store` int(100) NOT NULL,
  `Equipment_left` int(100) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `equipment_stores`
--

INSERT INTO `equipment_stores` (`id`, `Equipment_Name`, `Equipment_in_store`, `Equipment_left`, `date`) VALUES
(2, 'projector', 3, 2, '2022-12-17 00:00:00'),
(3, 'mouse', 16, 12, '2022-12-23 00:00:00'),
(5, 'pc', 12, 12, '2023-01-11 00:00:00'),
(6, 'pcsHG', 67, 4, '2023-01-09 00:00:00'),
(7, 'pcsoi', 67, 7, '2023-01-10 00:00:00'),
(8, 'macbook', 6, 4, '2023-01-10 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `history_list`
--

CREATE TABLE `history_list` (
  `id` int(30) NOT NULL,
  `appointment_id` int(30) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `remarks` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `history_list`
--

INSERT INTO `history_list` (`id`, `appointment_id`, `status`, `remarks`, `date_created`) VALUES
(14, 5, 0, '', '2022-11-20 00:23:30'),
(26, 8, 0, '', '2022-11-20 10:57:41'),
(32, 8, 0, '', '2022-11-20 11:03:53'),
(38, 9, 0, '', '2022-11-20 11:06:08'),
(39, 9, 1, '', '2022-11-20 11:06:18'),
(45, 12, 1, '', '2022-11-20 21:55:00'),
(50, 13, 1, '', '2022-11-21 07:12:23'),
(55, 14, 1, '', '2022-11-21 12:21:13'),
(56, 15, 5, 'kfohpytzd', '2022-12-11 07:22:50');

-- --------------------------------------------------------

--
-- Table structure for table `reagent_store`
--

CREATE TABLE `reagent_store` (
  `id` int(225) NOT NULL,
  `reagent_name` varchar(128) NOT NULL,
  `reagent_in_store` text NOT NULL,
  `quantinty_left` text NOT NULL,
  `expiry_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reagent_store`
--

INSERT INTO `reagent_store` (`id`, `reagent_name`, `reagent_in_store`, `quantinty_left`, `expiry_date`) VALUES
(2, 'HYDROCHROLIC ACID', '3L', '1L', '2022-12-17 15:07:55'),
(3, 'Ammonium solution ', '5L', '2L', '2022-12-17 15:07:45'),
(4, 'Ammonium Chrolide ', '500g', '450g', '2022-12-17 15:07:29'),
(5, 'Sulphuric Acid', '9L', '5L', '2022-12-17 16:50:51'),
(6, '', '', '', '2022-12-17 16:54:53');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int(225) NOT NULL,
  `Room` text NOT NULL,
  `room_supervisor` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `Room`, `room_supervisor`) VALUES
(2, 'Lab 1', 'Mr. Ngulika'),
(3, 'LAB 2', 'MR. Masasi');

-- --------------------------------------------------------

--
-- Table structure for table `system_info`
--

CREATE TABLE `system_info` (
  `id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `system_info`
--

INSERT INTO `system_info` (`id`, `meta_field`, `meta_value`) VALUES
(1, 'name', 'DIT LAB MANAGEMENT SYSTEM'),
(6, 'short_name', 'DLMS'),
(11, 'logo', 'uploads/logo-1668887047.png'),
(13, 'user_avatar', 'uploads/user_avatar.jpg'),
(14, 'cover', 'uploads/cover-1641866302.png');

-- --------------------------------------------------------

--
-- Table structure for table `test_list`
--

CREATE TABLE `test_list` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `cost` float NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `test_list`
--

INSERT INTO `test_list` (`id`, `name`, `description`, `cost`, `status`, `delete_flag`, `date_created`, `date_updated`) VALUES
(1, 'proximal analysis', 'determination of ash content, moisture content, volatile matter and fixed carbon on as-received basis', 25000, 1, 0, '2022-01-11 10:20:35', '2022-11-19 23:18:58'),
(2, 'pH analysis', 'a measure of how acidic/basic water is', 15000, 1, 0, '2022-01-11 10:21:20', '2022-11-19 23:19:06'),
(3, 'Chromatography lab analyis', 'analytical technique commonly used for separating a mixture of chemicals components, so that the individual components can be thoroughly analyzed ', 25000, 1, 0, '2022-01-11 10:22:06', '2022-12-10 16:12:34'),
(4, 'microscpy lab analysis', 'provide examination of samples and microstructures to solve arange of issue and support product development', 75000, 1, 0, '2022-01-11 10:22:41', '2022-11-19 23:19:27'),
(5, 'determination of heavy metals', 'Check for potentially harmful metals in different samples', 15000, 1, 0, '2022-01-11 10:23:07', '2022-11-19 23:19:48'),
(6, 'particle size techique', 'process in which dry, free-flowing materials is analyzed to determine the size and shape of the individual particle', 18000, 0, 1, '2022-01-11 10:23:18', '2022-11-19 23:19:43'),
(7, 'XRF Analysis', 'determination of elemental compositions of materials', 150000, 1, 0, '2022-11-19 23:23:55', '2022-11-20 06:51:59'),
(8, 'Sulphur analysis', 'determination of Sulphur in cement samples ', 150000, 1, 0, '2022-11-20 06:51:21', NULL),
(9, 'kdkd ', '', 0, 1, 0, '2022-12-11 14:10:06', NULL),
(10, 'hjdksjs', '', 0, 1, 0, '2022-12-11 14:11:19', NULL),
(11, '', '', 0, 1, 1, '2022-12-11 14:23:28', '2022-12-30 12:47:35'),
(12, 'm,d;lsvsdxzkdl', '1345454', 11212100000, 0, 0, '2022-12-11 14:23:50', NULL),
(13, 'kvkvcv', '', 0, 1, 0, '2022-12-11 14:25:01', NULL),
(14, 'hjdksjs', '', 0, 1, 0, '2022-12-11 14:25:10', NULL),
(15, 'zzxzzxzxz', '', 0, 1, 0, '2022-12-11 14:25:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `middlename` text DEFAULT NULL,
  `lastname` varchar(250) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `status` int(1) NOT NULL DEFAULT 1 COMMENT '0=not verified, 1 = verified',
  `date_added` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `middlename`, `lastname`, `username`, `password`, `avatar`, `last_login`, `type`, `status`, `date_added`, `date_updated`) VALUES
(1, 'Adminstrator', NULL, 'Admin', 'admin', '0192023a7bbd73250516f069df18b500', 'uploads/avatar-1.png?v=1668887148', NULL, 1, 1, '2021-01-20 14:02:37', '2022-11-19 22:45:48'),
(7, 'Frank', NULL, 'marwa', 'frank', '9ecec037362061f55c1c4ea6a9f13166', 'uploads/avatar-7.png?v=1668892586', NULL, 2, 1, '2022-11-20 00:16:25', '2022-11-20 00:16:26'),
(8, 'nassoro', NULL, 'lipangile', 'lipangile', 'cd369652c71d8e01b1b06ba1508e9ebc', 'uploads/avatar-8.png?v=1668892680', NULL, 2, 1, '2022-11-20 00:18:00', '2022-11-20 00:18:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointment_list`
--
ALTER TABLE `appointment_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_id` (`client_id`);

--
-- Indexes for table `appointment_test_list`
--
ALTER TABLE `appointment_test_list`
  ADD KEY `appointment_id` (`appointment_id`),
  ADD KEY `test_id` (`test_id`);

--
-- Indexes for table `borrow_return_list`
--
ALTER TABLE `borrow_return_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `client_list`
--
ALTER TABLE `client_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `equipment_stores`
--
ALTER TABLE `equipment_stores`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history_list`
--
ALTER TABLE `history_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`,`appointment_id`),
  ADD KEY `appointment_id` (`appointment_id`);

--
-- Indexes for table `reagent_store`
--
ALTER TABLE `reagent_store`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_info`
--
ALTER TABLE `system_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `test_list`
--
ALTER TABLE `test_list`
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
-- AUTO_INCREMENT for table `appointment_list`
--
ALTER TABLE `appointment_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `borrow_return_list`
--
ALTER TABLE `borrow_return_list`
  MODIFY `id` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `client_list`
--
ALTER TABLE `client_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `equipment_stores`
--
ALTER TABLE `equipment_stores`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `history_list`
--
ALTER TABLE `history_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `reagent_store`
--
ALTER TABLE `reagent_store`
  MODIFY `id` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `test_list`
--
ALTER TABLE `test_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appointment_list`
--
ALTER TABLE `appointment_list`
  ADD CONSTRAINT `appointment_list_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `client_list` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
