-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 11, 2016 at 03:49 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `rank`
--

-- --------------------------------------------------------

--
-- Table structure for table `play`
--

CREATE TABLE IF NOT EXISTS `play` (
  `_id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `guid` varchar(200) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `publish_date` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=42 ;

--
-- Dumping data for table `play`
--

INSERT INTO `play` (`_id`, `guid`, `type`, `publish_date`) VALUES
(29, '8a5b50d8-b4ff-4dee-b9b9-15a3477c0980', 'CRAZY', '2016-10-27 12:37:30'),
(30, '8a5b50d8-b4ff-4dee-b9b9-15a3477c0980', 'CRAZY', '2016-10-27 12:55:58'),
(31, '8a5b50d8-b4ff-4dee-b9b9-15a3477c0980', 'CRAZY', '2016-10-27 12:57:21'),
(32, '8a5b50d8-b4ff-4dee-b9b9-15a3477c0980', 'CRAZY', '2016-10-27 12:57:25'),
(33, '8a5b50d8-b4ff-4dee-b9b9-15a3477c0980', 'CRAZY', '2016-10-27 12:58:27'),
(34, '31c08f2b-3108-4f14-80f8-f6a431e19d93', 'CLASSIC', '2016-10-31 03:24:04'),
(35, '31c08f2b-3108-4f14-80f8-f6a431e19d93', 'CRAZY', '2016-10-31 03:28:44'),
(36, '31c08f2b-3108-4f14-80f8-f6a431e19d93', 'CLASSIC', '2016-11-04 15:55:56'),
(37, '31c08f2b-3108-4f14-80f8-f6a431e19d93', 'CLASSIC', '2016-11-04 16:04:06'),
(38, '31c08f2b-3108-4f14-80f8-f6a431e19d93', 'CLASSIC', '2016-11-04 16:27:55'),
(39, '31c08f2b-3108-4f14-80f8-f6a431e19d93', 'CLASSIC', '2016-11-05 03:40:54'),
(40, '31c08f2b-3108-4f14-80f8-f6a431e19d93', 'CRAZY', '2016-11-05 03:48:31'),
(41, '31c08f2b-3108-4f14-80f8-f6a431e19d93', 'CRAZY', '2016-11-05 05:57:08');

-- --------------------------------------------------------

--
-- Table structure for table `rank`
--

CREATE TABLE IF NOT EXISTS `rank` (
  `_id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `level` int(4) NOT NULL DEFAULT '0',
  `publish_date` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `rank`
--

INSERT INTO `rank` (`_id`, `name`, `level`, `publish_date`) VALUES
(7, 'God', 15, '2016-10-22 15:58:32'),
(12, 'JackkkkY', 17, '2016-10-23 09:39:46'),
(13, 'play in 818', 15, '2016-10-23 10:40:59'),
(14, 'TangQingXin', 6, '2016-10-23 15:03:17'),
(15, 'æ¸¸æˆä¹‹ç¥ž', 12, '2016-10-23 15:08:10'),
(17, 'Kkkkkkkkkkkkkk', 30, '2016-10-27 12:42:29'),
(18, 'Me', 42, '2016-10-27 12:51:11'),
(19, 'Me', 48, '2016-10-27 13:07:36'),
(20, 'Me', 35, '2016-11-05 03:56:12');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
