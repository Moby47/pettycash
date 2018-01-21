-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 23, 2017 at 01:59 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `pettycash`
--

-- --------------------------------------------------------

--
-- Table structure for table `cash`
--

CREATE TABLE IF NOT EXISTS `cash` (
  `cash_id` int(10) NOT NULL AUTO_INCREMENT,
  `total_amount` int(50) NOT NULL,
  `last_added` int(20) NOT NULL,
  `date_added` date NOT NULL,
  PRIMARY KEY (`cash_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=130 ;

--
-- Dumping data for table `cash`
--

INSERT INTO `cash` (`cash_id`, `total_amount`, `last_added`, `date_added`) VALUES
(90, 20000, 20000, '2017-11-10'),
(91, 25000, 5000, '2017-11-10'),
(92, 20000, 0, '0000-00-00'),
(93, 17000, 0, '0000-00-00'),
(94, 19000, 2000, '2017-11-13'),
(95, 20000, 1000, '2017-11-14'),
(98, 25000, 5000, '2017-11-17'),
(99, 18000, 0, '0000-00-00'),
(100, 3000, 0, '0000-00-00'),
(101, 38000, 35000, '2017-11-21'),
(102, 33000, 0, '0000-00-00'),
(103, 30000, 0, '0000-00-00'),
(104, 29500, 0, '0000-00-00'),
(105, 28500, 0, '0000-00-00'),
(106, 27900, 0, '0000-00-00'),
(107, 25900, 0, '0000-00-00'),
(108, 25500, 0, '0000-00-00'),
(109, 25400, 0, '0000-00-00'),
(110, 25300, 0, '0000-00-00'),
(111, 24300, 0, '0000-00-00'),
(112, 23800, 0, '0000-00-00'),
(113, 23300, 0, '0000-00-00'),
(114, 21300, 0, '0000-00-00'),
(115, 21299, 0, '0000-00-00'),
(116, 20299, 0, '0000-00-00'),
(117, 18299, 0, '0000-00-00'),
(118, 16299, 0, '0000-00-00'),
(119, 16298, 0, '0000-00-00'),
(120, 16297, 0, '0000-00-00'),
(121, 16296, 0, '0000-00-00'),
(122, 16196, 0, '0000-00-00'),
(123, 16096, 0, '0000-00-00'),
(124, 16095, 0, '0000-00-00'),
(125, 14095, 0, '0000-00-00'),
(126, 13995, 0, '0000-00-00'),
(127, 13895, 0, '0000-00-00'),
(128, 13795, 0, '0000-00-00'),
(129, 11295, 0, '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `cash_warning`
--

CREATE TABLE IF NOT EXISTS `cash_warning` (
  `warning_id` int(6) NOT NULL AUTO_INCREMENT,
  `warning` int(10) NOT NULL,
  PRIMARY KEY (`warning_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `cash_warning`
--

INSERT INTO `cash_warning` (`warning_id`, `warning`) VALUES
(1, 15000);

-- --------------------------------------------------------

--
-- Table structure for table `company_position`
--

CREATE TABLE IF NOT EXISTS `company_position` (
  `pos_id` int(100) NOT NULL AUTO_INCREMENT,
  `position` varchar(255) NOT NULL,
  PRIMARY KEY (`pos_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `company_position`
--

INSERT INTO `company_position` (`pos_id`, `position`) VALUES
(1, 'MD'),
(2, 'BM'),
(5, 'Cleaner'),
(6, 'corper');

-- --------------------------------------------------------

--
-- Table structure for table `request`
--

CREATE TABLE IF NOT EXISTS `request` (
  `req_id` int(255) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `amount` int(255) NOT NULL,
  `request_details` text NOT NULL,
  `unit` int(4) NOT NULL,
  `category` varchar(50) NOT NULL,
  `request_time` date NOT NULL,
  `status` varchar(10) NOT NULL,
  `action` varchar(10) NOT NULL,
  `admin_name` varchar(15) NOT NULL,
  PRIMARY KEY (`req_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=115 ;

--
-- Dumping data for table `request`
--

INSERT INTO `request` (`req_id`, `first_name`, `last_name`, `amount`, `request_details`, `unit`, `category`, `request_time`, `status`, `action`, `admin_name`) VALUES
(65, 'jordan', 'ajene', 5000, 'technical issues in the office', 0, 'Ac', '2017-11-10', 'closed', 'approved', 'Henry'),
(66, 'jordan', 'ajene', 10000, 'diesel for the bus', 0, 'Vehicle', '2017-11-10', 'closed', 'declined', 'Henry'),
(71, 'jordan', 'ajene', 3000, 'love', 0, 'light', '2017-11-10', 'closed', 'approved', 'Henry'),
(72, 'Damy', 'Ade', 5000, 'gallery excursion to Abj', 0, 'Vehicle', '2017-11-14', 'closed', 'approved', 'Henry'),
(73, 'jordan', 'ajene', 3000, 'books', 0, 'education', '2017-11-16', 'closed', 'approved', 'Henry'),
(74, 'jordan', 'ajene', 5000, 'food', 0, 'Transport', '2017-11-16', 'pending', '', ''),
(75, 'jordan', 'ajene', 7000, 'text  book', 0, 'books', '2017-11-17', 'closed', 'approved', 'Henry'),
(76, 'taye', 'sho', 15000, 'lunch', 0, 'Vehicle', '2017-11-20', 'closed', 'approved', 'Henry'),
(77, 'taye', 'sho', 5000, 'light light energy', 0, 'Energy Cost/GRE', '2017-11-21', 'closed', 'approved', 'Henry'),
(78, 'taye', 'sho', 3000, 'power', 0, 'Energy Cost/GRE', '2017-11-21', 'closed', 'approved', 'Henry'),
(79, 'taye', 'sho', 500, 'laptop', 0, 'Energy Cost/PHCN', '2017-11-21', 'closed', 'approved', 'Henry'),
(80, 'taye', 'sho', 1000, 'checks', 0, 'Energy Cost/PHCN', '2017-11-21', 'closed', 'approved', 'Henry'),
(81, 'taye', 'sho', 3000, 'meds', 0, 'Energy Cost/GRE', '2017-11-21', 'closed', 'declined', 'Henry'),
(82, 'taye', 'sho', 600, 'text book', 0, 'LRE ADMIN', '2017-11-21', 'closed', 'approved', 'Henry'),
(83, 'jordan', 'ajene', 100, 'klk', 0, 'LRE ADMIN', '2017-11-21', 'closed', 'approved', 'Henry'),
(84, 'jordan', 'ajene', 500, 'hgyh', 0, 'VRE', '2017-11-21', 'closed', 'declined', 'Henry'),
(85, 'jordan', 'ajene', 1000, 'gukj', 0, 'TEL CRM', '2017-11-21', 'closed', 'declined', 'Henry'),
(86, 'jordan', 'ajene', 400, 'nvjh', 0, 'TEL CRM', '2017-11-21', 'closed', 'approved', 'Henry'),
(87, 'jordan', 'ajene', 2000, 'hjfduhtg', 0, 'VRE', '2017-11-21', 'closed', 'approved', 'Henry'),
(88, 'jordan', 'ajene', 500, 'jbkjm', 0, 'NYSC MKG', '2017-11-21', 'closed', 'approved', 'Henry'),
(89, 'jordan', 'ajene', 500, 'bhvhyj', 0, 'Newspaper/Magazine.', '2017-11-21', 'closed', 'approved', 'Henry'),
(90, 'jordan', 'ajene', 1000, 'jgvhgj', 0, 'NYSC MKG', '2017-11-21', 'closed', 'approved', 'Henry'),
(91, 'jordan', 'ajene', 100, 'jmhbjk', 0, 'Newspaper/Magazine.', '2017-11-21', 'closed', 'approved', 'Henry'),
(92, 'jordan', 'ajene', 100, 'cvbcv', 0, 'Office Repair & Maint.', '2017-11-21', 'closed', 'approved', 'Henry'),
(93, 'jordan', 'ajene', 100, 'feyg', 0, 'Office Repair & Maint.', '2017-11-21', 'closed', 'approved', 'Henry'),
(94, 'jordan', 'ajene', 100, 'fgvb', 0, 'Fac. Exp', '2017-11-21', 'closed', 'approved', 'Henry'),
(95, 'jordan', 'ajene', 2000, 'gfh', 0, 'Fac. Exp', '2017-11-21', 'closed', 'approved', 'Henry'),
(96, 'jordan', 'ajene', 1, 'rhr', 0, 'Vehicle Maint. ADMIN', '2017-11-21', 'closed', 'approved', 'Henry'),
(97, 'jordan', 'ajene', 2000, 'cvdvx3', 0, 'Vehicle Maint. ADMIN', '2017-11-21', 'closed', 'declined', 'Henry'),
(98, 'jordan', 'ajene', 100, 'ef', 0, 'Vehicle Maint. ADMIN', '2017-11-21', 'closed', 'approved', 'Henry'),
(99, 'jordan', 'ajene', 1000, 'fdfwe', 0, 'PRINT & Stationaries ADM', '2017-11-21', 'closed', 'declined', 'Henry'),
(100, 'jordan', 'ajene', 100, 'dghyhg', 0, 'PRINT & Stationaries ADM', '2017-11-21', 'closed', 'approved', 'Henry'),
(101, 'jordan', 'ajene', 1, 'zcfvb', 0, 'Computer Maint', '2017-11-21', 'closed', 'approved', 'Henry'),
(102, 'jordan', 'ajene', 1, 'sdfgt', 0, 'Computer Maint', '2017-11-21', 'closed', 'approved', 'Henry'),
(103, 'jordan', 'ajene', 1, 'fcbc', 0, 'BroadBand Data Purchase', '2017-11-21', 'closed', 'approved', 'Henry'),
(104, 'jordan', 'ajene', 2000, 'jijj', 0, 'BroadBand Data Purchase', '2017-11-21', 'closed', 'approved', 'Henry'),
(106, 'jordan', 'ajene', 2000, 'm m', 0, 'LRE MKG', '2017-11-21', 'closed', 'declined', 'Henry'),
(107, 'jordan', 'ajene', 2000, 'nm,m', 0, 'ID Card Production', '2017-11-21', 'closed', 'declined', 'Henry'),
(108, 'jordan', 'ajene', 2000, 'nhn', 0, 'LRE MKG', '2017-11-21', 'closed', 'approved', 'Henry'),
(109, 'jordan', 'ajene', 1000, 'hn', 0, 'ID Card Production', '2017-11-21', 'closed', 'approved', 'Henry'),
(110, 'jordan', 'ajene', 1, 'jn,,m', 0, 'Refreshments', '2017-11-21', 'closed', 'approved', 'Henry'),
(111, 'jordan', 'ajene', 2000, ',,,nb ,m', 0, 'Refreshments', '2017-11-21', 'closed', 'approved', 'Henry'),
(113, 'taye', 'sho', 2500, 'pc cables', 3, 'Computer Maint', '2017-11-22', 'closed', 'approved', 'Henry');

-- --------------------------------------------------------

--
-- Table structure for table `request_category`
--

CREATE TABLE IF NOT EXISTS `request_category` (
  `cat_id` int(100) NOT NULL AUTO_INCREMENT,
  `category` varchar(255) NOT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=44 ;

--
-- Dumping data for table `request_category`
--

INSERT INTO `request_category` (`cat_id`, `category`) VALUES
(28, 'Energy Cost/GRE'),
(29, 'Energy Cost/PHCN'),
(30, 'LRE ADMIN'),
(31, 'VRE'),
(32, 'TEL CRM'),
(33, 'NYSC MKG'),
(34, 'Newspaper/Magazine.'),
(35, 'Office Repair & Maint.'),
(36, 'Fac. Exp'),
(37, 'Vehicle Maint. ADMIN'),
(38, 'PRINT & Stationaries ADM'),
(39, 'Computer Maint'),
(40, 'BroadBand Data Purchase'),
(41, 'LRE MKG'),
(42, 'ID Card Production'),
(43, 'Refreshments');

-- --------------------------------------------------------

--
-- Table structure for table `security_question`
--

CREATE TABLE IF NOT EXISTS `security_question` (
  `que_id` int(15) NOT NULL AUTO_INCREMENT,
  `question` varchar(100) NOT NULL,
  PRIMARY KEY (`que_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `security_question`
--

INSERT INTO `security_question` (`que_id`, `question`) VALUES
(1, 'What is your favorite color?'),
(2, 'What is your best food?'),
(3, 'What is your best social network?'),
(4, 'What was/is your course of study?'),
(5, 'What is the name of your best staff?');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `status` varchar(30) NOT NULL,
  `position` varchar(20) NOT NULL,
  `question` varchar(125) NOT NULL,
  `answer` varchar(50) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `first_name`, `last_name`, `email`, `password`, `status`, `position`, `question`, `answer`) VALUES
(10, 'Henry', 'Moby', 'honred47@yahoo.com', '11111', 'admin', 'MD', 'What is your best social network?', 'whatsapp'),
(11, 'jordan', 'ajene', 'bisojake@yahoo.com', 'wwwww', 'user', 'BM', 'What is your best food?', 'rice'),
(14, 'taye', 'sho', 'tayesho@yahoo.com', 'taye', 'user', 'Cleaner', 'What is your best food?', 'rice');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
