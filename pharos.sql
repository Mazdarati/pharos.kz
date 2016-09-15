-- phpMyAdmin SQL Dump
-- version 3.2.3
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 24, 2013 at 10:22 AM
-- Server version: 5.1.40
-- PHP Version: 5.2.12

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `pharos`
--

-- --------------------------------------------------------

--
-- Table structure for table `pe_menu`
--

CREATE TABLE IF NOT EXISTS `pe_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `url` varchar(255) NOT NULL,
  `title_kz` varchar(255) DEFAULT NULL,
  `title_ru` varchar(255) NOT NULL,
  `title_en` varchar(255) DEFAULT NULL,
  `created` int(11) NOT NULL,
  `modified` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `pe_menu`
--

INSERT INTO `pe_menu` (`id`, `parent_id`, `url`, `title_kz`, `title_ru`, `title_en`, `created`, `modified`) VALUES
(1, NULL, '/page/1', 'Главная', 'Главная', 'Главная', 0, NULL),
(2, 1, '/page/11', 'Портфолио', 'Портфолио', 'Портфолио', 0, NULL),
(3, NULL, '/page/2', '', 'Контакты', '', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pe_pages`
--

CREATE TABLE IF NOT EXISTS `pe_pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_id` int(11) NOT NULL,
  `title_kz` varchar(255) DEFAULT NULL,
  `title_ru` varchar(255) NOT NULL,
  `title_en` varchar(255) DEFAULT NULL,
  `descr_kz` text,
  `descr_ru` text NOT NULL,
  `descr_en` text,
  `text_kz` text,
  `text_ru` text NOT NULL,
  `text_en` text,
  `created` int(11) NOT NULL,
  `modified` int(11) DEFAULT NULL,
  `meta` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `pe_pages`
--

INSERT INTO `pe_pages` (`id`, `menu_id`, `title_kz`, `title_ru`, `title_en`, `descr_kz`, `descr_ru`, `descr_en`, `text_kz`, `text_ru`, `text_en`, `created`, `modified`, `meta`) VALUES
(1, 1, 'Главная', 'Главная', 'Главная', '<p>\r\n	Главная</p>\r\n', '<p>\r\n	Главная</p>\r\n', '', '', '<p>\r\n	Главная</p>\r\n', '', 0, NULL, ''),
(2, 3, '', 'контакты', '', '', '<p>\r\n	контакты</p>\r\n', '', '', '<p>\r\n	контакты</p>\r\n', '', 0, NULL, ''),
(6, 2, '', 'Портфолио', '', '', '<p>\r\n	Портфолио</p>\r\n', '', '', '<p>\r\n	Портфолио</p>\r\n', '', 0, NULL, ''),
(7, 2, '', 'Портфолио', '', '', '<p>\r\n	Портфолио</p>\r\n', '', '', '<p>\r\n	Портфолио</p>\r\n', '', 0, NULL, ''),
(8, 2, '', 'Портфолио', '', '', '<p>\r\n	Портфолио</p>\r\n', '', '', '<p>\r\n	Портфолио</p>\r\n', '', 0, NULL, ''),
(9, 2, '', 'Портфолио', '', '', '<p>\r\n	Портфолио</p>\r\n', '', '', '<p>\r\n	Портфолио</p>\r\n', '', 0, NULL, ''),
(10, 2, '', 'Портфолио', '', '', '<p>\r\n	Портфолио</p>\r\n', '', '', '<p>\r\n	Портфолио</p>\r\n', '', 0, NULL, ''),
(11, 2, '', 'Портфолио', '', '', '<p>\r\n	Портфолио</p>\r\n', '', '', '<p>\r\n	Портфолио</p>\r\n', '', 0, NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `pe_slider`
--

CREATE TABLE IF NOT EXISTS `pe_slider` (
  `id` int(11) NOT NULL,
  `title_kz` varchar(255) DEFAULT NULL,
  `title_ru` varchar(255) NOT NULL,
  `title_en` varchar(255) DEFAULT NULL,
  `modified` int(11) DEFAULT NULL,
  `created` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pe_slider`
--

