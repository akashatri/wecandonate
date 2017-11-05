-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 11, 2017 at 05:52 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `portal`
--

-- --------------------------------------------------------

--
-- Table structure for table `donationform`
--

CREATE TABLE `donationform` (
  `id` int(11) NOT NULL,
  `f_name` text NOT NULL,
  `l_name` text NOT NULL,
  `u_email` text NOT NULL,
  `ruppee` varchar(250) NOT NULL,
  `q4` varchar(250) NOT NULL,
  `q5` varchar(250) NOT NULL,
  `q1` varchar(250) NOT NULL,
  `q2` varchar(250) NOT NULL,
  `q3` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `donationform`
--

INSERT INTO `donationform` (`id`, `f_name`, `l_name`, `u_email`, `ruppee`, `q4`, `q5`, `q1`, `q2`, `q3`) VALUES
(1, 'akash', 'atri', '', '100', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `medicineform`
--

CREATE TABLE `medicineform` (
  `id` int(11) NOT NULL,
  `u_name` text NOT NULL,
  `u_email` text NOT NULL,
  `phonenumber` varchar(10) NOT NULL,
  `state` text NOT NULL,
  `city` text NOT NULL,
  `address` text NOT NULL,
  `pincode` text NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medicineform`
--

INSERT INTO `medicineform` (`id`, `u_name`, `u_email`, `phonenumber`, `state`, `city`, `address`, `pincode`, `message`) VALUES
(1, 'akash atri', 'akashatri97@gmail.com', '99142969', 'haryana', 'hisar', 'hno 410 pla', '125001', 'antibiotics 50 medicines');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(60) NOT NULL,
  `email` varchar(60) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`user_id`, `username`, `email`, `password`) VALUES
(1, 'akash', 'akashatri97@gmail.com', '$2y$10$8ZMHOjJ7J9HJ.dfPzCeVBOU3gZ2cGN92isgqABFzs2eToQ2ObX2CK');

-- --------------------------------------------------------

--
-- Table structure for table `tb_cform`
--

CREATE TABLE `tb_cform` (
  `id` int(11) NOT NULL,
  `u_name` text NOT NULL,
  `u_email` text NOT NULL,
  `subj` text NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_cform`
--

INSERT INTO `tb_cform` (`id`, `u_name`, `u_email`, `subj`, `message`) VALUES
(1, 'akash', 'akashatri97@gmail.com', 'story', 'hi want to be part of your organization plzzz sir'),
(2, 'akash', 'akashatri99@gmail.com', 'aaa', 'asfdghgjhkj'),
(3, 'aditya', 'aditya99@gmail.com', 'donated 1000 medicines', 'my story');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `donationform`
--
ALTER TABLE `donationform`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medicineform`
--
ALTER TABLE `medicineform`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq` (`phonenumber`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `tb_cform`
--
ALTER TABLE `tb_cform`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `donationform`
--
ALTER TABLE `donationform`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `medicineform`
--
ALTER TABLE `medicineform`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tb_cform`
--
ALTER TABLE `tb_cform`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
