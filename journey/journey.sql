-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 11, 2019 at 08:58 AM
-- Server version: 5.7.21
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `journey`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'Beaches'),
(2, 'Camping'),
(3, 'restaurants'),
(4, 'low_budget'),
(5, 'photography'),
(6, 'fishing');

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

DROP TABLE IF EXISTS `topics`;
CREATE TABLE IF NOT EXISTS `topics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `date` date NOT NULL,
  `cat_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `topics`
--

INSERT INTO `topics` (`id`, `title`, `content`, `date`, `cat_id`) VALUES
(1, 'dcr', 'd4ded', '2019-02-10', 1),
(2, 'dcr', 'd4ded', '2019-02-10', 1),
(3, 'dcr', 'd4ded', '2019-02-10', 1),
(4, 'dcr', 'd4ded', '2019-02-10', 1),
(5, 'kk', 'kjj', '2019-02-10', 1),
(6, 'kk', 'kjj', '2019-02-10', 2),
(7, 'fthy5', '', '2019-02-10', 1),
(8, 'nnnnnnnnnnnnnnnnnnnnnn', 'nnnnnnnnnnnnnnnnnnnn', '2019-02-10', 1),
(9, 'nnnnnnnnnnnnnnnnnnnnnn', 'nnnnnnnnnnnnnnnnnnnn', '2019-02-10', 1),
(10, 'nnnnnnnnnnnnnnnnnnnnnnd', 'nnnnnnnnnnnnnnnnnnnn', '2019-02-10', 1),
(11, 'ffewfe', 'wefwef', '2019-02-10', 1),
(12, 'ffewfe', 'wefwef', '2019-02-10', 1),
(13, 'ffewfesf', 'wefwef', '2019-02-10', 1),
(14, 'frgr', 'rgse', '2019-02-10', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(55) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`) VALUES
(1, 'yaseen', 'yaseen.ly98@gmail.com', 'e10adc3949ba59abbe56e057f20f883e');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
