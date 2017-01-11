-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 11, 2017 at 12:34 PM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 7.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spring_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_employees`
--

CREATE TABLE `tbl_employees` (
  `employee_id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email_id` varchar(255) NOT NULL,
  `contact_number` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_employees`
--

INSERT INTO `tbl_employees` (`employee_id`, `first_name`, `last_name`, `email_id`, `contact_number`) VALUES
(1, 'asdasd', 'thyhjty', 'sssgrehthth@gmail.com', '68568567000000'),
(2, 'ssaas', 'uiouioui', 'yuogsrgre', '2353434'),
(3, 'poiuyu', 'qrewgk', 'yiyiuiyu', '8054645'),
(4, 'Soffdg', 'fgdhd', 'dffdf@gmail.com', '6867867');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_enquiries`
--

CREATE TABLE `tbl_enquiries` (
  `enquiry_id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contact_no` varchar(255) NOT NULL,
  `enquiry_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `is_read` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_enquiries`
--

INSERT INTO `tbl_enquiries` (`enquiry_id`, `first_name`, `last_name`, `email`, `contact_no`, `enquiry_date`, `subject`, `message`, `is_read`) VALUES
(1, 'Sujan', 'Hyoju', 'ahahahaha@gmail.com', '34536544', '2016-12-31 10:57:06', 'Hello Yo!!', ' Wass up!!!???', 0),
(2, 'Susan', 'Hyoju', 'lol@gmail.com', '546856', '2016-12-31 10:57:06', 'Pasa!', ' Thye ye kha kaa !!', 0),
(3, 'Zlatan', 'Ibra', 'asdasd@gdf.com', '4549342', '2016-12-31 11:33:59', 'Zlatan Time', 'Hattrick handinchu aaja ma', 0),
(4, 'Bakra', 'Prasad', 'bakra@gmail.com', '4549342', '2017-01-03 09:38:46', 'K ho para?', 'MTV Bakraa??', 0),
(5, 'Mbokani', 'Striker', 'mbokani@gmail.com', '4549342', '2017-01-03 09:41:57', 'Goal hanum ki nahanum?', 'Hannai garo cha kasari hannu k aba mailey', 0),
(6, 'Lutey', 'Prasad', 'lulu@gmail.com', '346346', '2017-01-11 08:41:50', 'Jyaan Bananu k garney?', 'GYm Jaam', 0),
(7, 'Odfdf', 'dfgdf', 'rgdfg@gg.com', '34734', '2017-01-11 08:49:35', 'rtrgg', 'fdgdff', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_registration`
--

CREATE TABLE `tbl_registration` (
  `registration_id` int(11) NOT NULL,
  `first_name` varchar(200) NOT NULL,
  `last_name` varchar(200) NOT NULL,
  `username` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_registration`
--

INSERT INTO `tbl_registration` (`registration_id`, `first_name`, `last_name`, `username`, `email`, `password`) VALUES
(2, 'Sujan', 'Hyoju', 'havoc11', 'funky_suz@hotmail.com', 'f942fc68c7c65a81c060128d399154f7');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `user_id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `registered_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `is_admin` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`user_id`, `first_name`, `last_name`, `email`, `username`, `password`, `registered_date`, `is_admin`) VALUES
(2, 'Sujan', 'Hyoju', 'funky_suz@hotmail.com', 'havoc11', 'f942fc68c7c65a81c060128d399154f7', '2017-01-10 11:42:58', 1),
(3, 'Zlatan', 'Ibra', 'asdasd@gdf.com', 'zlatan', '85ffd536abe3bac08a92529a97dd34cb', '2017-01-10 11:51:47', 1),
(4, 'Mbokani', 'Striker', 'mbokani@gmail.com', 'Mbokani', 'e6cef22749f5e218172aafbdebf2c4f3', '2017-01-11 06:43:03', 0),
(5, 'Lutey', 'Prasad', 'lulu@gmail.com', 'lutey', 'efd62113a502d6d3e3e867f06014cc53', '2017-01-11 11:00:10', 0),
(9, 'gfgfdg', 'fdgdfgfd', 'dfdgdfg@ggfhfg.com', 'sfsdfds', 'ff6827140a7e83199c1673e4b14b6292', '2017-01-11 11:02:55', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_employees`
--
ALTER TABLE `tbl_employees`
  ADD PRIMARY KEY (`employee_id`);

--
-- Indexes for table `tbl_enquiries`
--
ALTER TABLE `tbl_enquiries`
  ADD PRIMARY KEY (`enquiry_id`);

--
-- Indexes for table `tbl_registration`
--
ALTER TABLE `tbl_registration`
  ADD PRIMARY KEY (`registration_id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_employees`
--
ALTER TABLE `tbl_employees`
  MODIFY `employee_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbl_enquiries`
--
ALTER TABLE `tbl_enquiries`
  MODIFY `enquiry_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `tbl_registration`
--
ALTER TABLE `tbl_registration`
  MODIFY `registration_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
