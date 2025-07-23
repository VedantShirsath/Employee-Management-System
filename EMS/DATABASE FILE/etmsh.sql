-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 08, 2023 at 06:57 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `etmsh`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendance_info`
--

CREATE TABLE `attendance_info` (
  `aten_id` int(20) NOT NULL,
  `atn_user_id` int(20) NOT NULL,
  `in_time` varchar(200) DEFAULT NULL,
  `out_time` varchar(150) DEFAULT NULL,
  `total_duration` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `attendance_info`
--

INSERT INTO `attendance_info` (`aten_id`, `atn_user_id`, `in_time`, `out_time`, `total_duration`) VALUES
(38, 18, '22-03-2021 13:51:01', NULL, NULL),
(35, 17, '22-03-2021 11:37:44', NULL, NULL),
(37, 21, '22-03-2021 13:49:26', NULL, NULL),
(39, 23, '22-03-2021 13:51:51', NULL, NULL),
(40, 20, '22-03-2021 13:52:24', NULL, NULL),
(54, 1, '08-05-2023 22:18:19', NULL, NULL),
(55, 27, '08-05-2023 22:19:59', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `task_info`
--

CREATE TABLE `task_info` (
  `task_id` int(50) NOT NULL,
  `t_title` varchar(120) NOT NULL,
  `t_description` text DEFAULT NULL,
  `t_start_time` varchar(100) DEFAULT NULL,
  `t_end_time` varchar(100) DEFAULT NULL,
  `t_user_id` int(20) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0 COMMENT '0 = incomplete, 1 = In progress, 2 = complete'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `task_info`
--

INSERT INTO `task_info` (`task_id`, `t_title`, `t_description`, `t_start_time`, `t_end_time`, `t_user_id`, `status`) VALUES
(20, 'Communications', 'You\'re assigned to handle incoming calls and other communications within the office.', '2021-03-22 12:00', '2021-03-22 13:00', 17, 2),
(28, 'file copy', 'fast', '2023-05-08 12:00', '2023-05-09 12:00', 27, 0),
(22, 'Virtual Meeting', 'Please join the virtual meeting with your senior manager regarding your works on this placement.', '2021-03-22 15:00', '2021-03-22 15:20', 24, 0),
(23, 'Data Entry 21', 'ho gya', '2021-03-22 14:00', '2021-03-22 17:00', 25, 2),
(27, 'asdsf', '435dfs', '2023-05-09 00:00', '2023-05-29 12:00', 27, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `user_id` int(20) NOT NULL,
  `fullname` varchar(120) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `temp_password` varchar(100) DEFAULT NULL,
  `user_role` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`user_id`, `fullname`, `username`, `email`, `password`, `temp_password`, `user_role`) VALUES
(1, 'Admin', 'admin', 'admin@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', NULL, 1),
(17, 'Henry Gonzalez', 'henry', 'henry@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', '', 2),
(18, 'Christine Randolph', 'christine', 'christine0@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', '', 2),
(19, 'Thomas Yorke', 'thomas', 'thomasrh@gmail.com', 'd19cbde3f7ae39d1ac027dd5319ff687', '7301941', 2),
(20, 'Elijah Jones', 'elijah', 'elijah.jns@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', '', 2),
(21, 'Jacob Miller', 'jacob', 'miller.jacob96@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', '', 2),
(22, 'Isabella Moore', 'isabella', 'mooreisa@gmail.com', 'd03b2612e88338d193a0ff05c3216053', '7329407', 2),
(23, 'Harry Denn', 'harryden', 'harryden@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', '', 2),
(24, 'Ava Anderson', 'ava', 'avason@gmail.com', '789395abc72a025db1604582f52af520', '5876160', 2),
(25, 'Logan Smith', 'logan', 'logansmith@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', '', 2),
(27, 'VED', 'ved', 'ved@gmail.com', '591b39a9c1f05b4e0338485b1b57318d', '', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance_info`
--
ALTER TABLE `attendance_info`
  ADD PRIMARY KEY (`aten_id`);

--
-- Indexes for table `task_info`
--
ALTER TABLE `task_info`
  ADD PRIMARY KEY (`task_id`);

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendance_info`
--
ALTER TABLE `attendance_info`
  MODIFY `aten_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `task_info`
--
ALTER TABLE `task_info`
  MODIFY `task_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `user_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
