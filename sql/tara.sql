-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 15, 2014 at 06:21 AM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `tara`
--

-- --------------------------------------------------------

--
-- Table structure for table `distributed_monitoring`
--

CREATE TABLE IF NOT EXISTS `distributed_monitoring` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `assignment_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `value` int(11) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `fk_assignment_to_verify_idx` (`assignment_id`),
  KEY `fl_verify_to_user_idx` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE IF NOT EXISTS `logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `description` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_log_to_user_idx` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=403 ;

--
-- Dumping data for table `logs`
--

INSERT DELAYED INTO `logs` (`id`, `user_id`, `timestamp`, `description`) VALUES
(18, 1, '2014-04-13 11:12:52', 'darrensapalo moved task ''Design Analysis'' to ''Doing'' board.'),
(19, 1, '2014-04-13 11:12:52', 'darrensapalo received 5 experience.'),
(20, 1, '2014-04-13 11:12:52', 'darrensapalo moved task ''Test prototype'' to ''Doing'' board.'),
(21, 1, '2014-04-13 11:12:55', 'darrensapalo moved task ''Design Analysis'' to ''To-do'' board.'),
(22, 1, '2014-04-13 11:12:56', 'darrensapalo received 2 experience.'),
(23, 1, '2014-04-13 11:12:56', 'darrensapalo moved task ''Test prototype'' to ''To-do'' board.'),
(24, 1, '2014-04-13 11:13:08', 'darrensapalo moved task ''Design Analysis'' to ''Doing'' board.'),
(25, 1, '2014-04-13 11:13:08', 'darrensapalo received 7 experience.'),
(26, 1, '2014-04-13 11:13:08', 'darrensapalo moved task ''Test prototype'' to ''Doing'' board.'),
(27, 1, '2014-04-13 11:13:11', 'darrensapalo received 21 experience.'),
(28, 1, '2014-04-13 11:13:11', 'darrensapalo moved task ''Design Analysis'' to ''Done'' board.'),
(29, 1, '2014-04-13 11:13:12', 'darrensapalo received 15 experience.'),
(30, 1, '2014-04-13 11:13:12', 'darrensapalo moved task ''Test prototype'' to ''Done'' board.'),
(31, 1, '2014-04-13 11:13:13', 'darrensapalo moved task ''Test prototype'' to ''Doing'' board.'),
(32, 1, '2014-04-13 11:13:14', 'darrensapalo moved task ''Test prototype'' to ''To-do'' board.'),
(33, 1, '2014-04-13 11:13:29', 'darrensapalo moved task ''Design Analysis'' to ''Doing'' board.'),
(34, 1, '2014-04-13 11:13:30', 'darrensapalo moved task ''Test prototype'' to ''Doing'' board.'),
(35, 1, '2014-04-13 11:13:47', 'darrensapalo received 6 experience.'),
(36, 1, '2014-04-13 11:13:47', 'darrensapalo moved task ''Design Analysis'' to ''Doing'' board.'),
(37, 1, '2014-04-13 11:13:48', 'darrensapalo moved task ''Test prototype'' to ''Doing'' board.'),
(38, 1, '2014-04-13 11:14:27', 'darrensapalo moved task ''Design Analysis'' to ''Doing'' board.'),
(39, 1, '2014-04-13 11:14:29', 'darrensapalo moved task ''Test prototype'' to ''Doing'' board.'),
(40, 1, '2014-04-13 11:15:12', 'darrensapalo moved task ''Design Analysis'' to ''Doing'' board.'),
(41, 1, '2014-04-13 11:15:32', 'darrensapalo moved task ''Design Analysis'' to ''Doing'' board.'),
(42, 1, '2014-04-13 11:16:46', 'darrensapalo moved task ''Design Analysis'' to ''To-do'' board.'),
(43, 1, '2014-04-13 11:17:00', 'darrensapalo moved task ''Design Analysis'' to ''To-do'' board.'),
(44, 1, '2014-04-13 11:17:54', 'darrensapalo moved task ''Design Analysis'' to ''To-do'' board.'),
(45, 1, '2014-04-13 11:18:15', 'darrensapalo moved task ''Design Analysis'' to ''To-do'' board.'),
(46, 1, '2014-04-13 11:18:34', 'darrensapalo moved task ''Test prototype'' to ''To-do'' board.'),
(47, 1, '2014-04-13 11:18:36', 'darrensapalo moved task ''Design Analysis'' to ''To-do'' board.'),
(48, 1, '2014-04-13 11:24:00', 'darrensapalo moved task ''Design Analysis'' to ''Doing'' board.'),
(49, 1, '2014-04-13 11:24:03', 'darrensapalo received 7 experience.'),
(50, 1, '2014-04-13 11:24:03', 'darrensapalo moved task ''Design Analysis'' to ''Doing'' board.'),
(51, 1, '2014-04-13 11:24:35', 'darrensapalo moved task ''Design Analysis'' to ''Doing'' board.'),
(52, 1, '2014-04-13 11:27:20', 'darrensapalo moved task ''Design Analysis'' to ''Done'' board.'),
(53, 1, '2014-04-13 11:27:20', 'darrensapalo received 10 experience.'),
(54, 1, '2014-04-13 11:27:24', 'darrensapalo received 5 experience.'),
(55, 1, '2014-04-13 11:27:24', 'darrensapalo moved task ''Design Analysis'' to ''To-do'' board.'),
(56, 1, '2014-04-13 11:27:29', 'darrensapalo received 7 experience.'),
(57, 1, '2014-04-13 11:27:29', 'darrensapalo moved task ''Design Analysis'' to ''To-do'' board.'),
(58, 1, '2014-04-13 11:27:57', 'darrensapalo moved task ''Test prototype'' to ''To-do'' board.'),
(59, 1, '2014-04-13 11:28:09', 'darrensapalo received 7 experience.'),
(60, 1, '2014-04-13 11:28:09', 'darrensapalo moved task ''Design Analysis'' to ''To-do'' board.'),
(61, 1, '2014-04-13 11:28:10', 'darrensapalo moved task ''Test prototype'' to ''To-do'' board.'),
(62, 1, '2014-04-13 11:28:10', 'darrensapalo received 6 experience.'),
(63, 1, '2014-04-13 11:28:12', 'darrensapalo moved task ''Design Analysis'' to ''Doing'' board.'),
(64, 1, '2014-04-13 11:28:14', 'darrensapalo moved task ''Design Analysis'' to ''Done'' board.'),
(65, 1, '2014-04-13 11:28:14', 'darrensapalo received 23 experience.'),
(66, 1, '2014-04-13 11:28:16', 'darrensapalo received 6 experience.'),
(67, 1, '2014-04-13 11:28:16', 'darrensapalo moved task ''Design Analysis'' to ''Doing'' board.'),
(68, 1, '2014-04-13 11:28:42', 'darrensapalo moved task ''Test prototype'' to ''Doing'' board.'),
(69, 1, '2014-04-13 11:28:43', 'darrensapalo moved task ''Test prototype'' to ''To-do'' board.'),
(70, 1, '2014-04-13 11:29:56', 'darrensapalo moved task ''Test prototype'' to ''Doing'' board.'),
(71, 1, '2014-04-13 11:29:57', 'darrensapalo received 17 experience.'),
(72, 1, '2014-04-13 11:29:57', 'darrensapalo moved task ''Test prototype'' to ''Done'' board.'),
(73, 1, '2014-04-13 11:29:59', 'darrensapalo moved task ''Test prototype'' to ''Doing'' board.'),
(74, 1, '2014-04-13 11:30:02', 'darrensapalo moved task ''Design Analysis'' to ''Doing'' board.'),
(75, 1, '2014-04-13 11:30:10', 'darrensapalo moved task ''Design Analysis'' to ''Doing'' board.'),
(76, 1, '2014-04-13 11:30:10', 'darrensapalo received 3 experience.'),
(77, 1, '2014-04-13 11:30:13', 'darrensapalo moved task ''Design Analysis'' to ''Doing'' board.'),
(78, 1, '2014-04-13 11:30:16', 'darrensapalo received 4 experience.'),
(79, 1, '2014-04-13 11:30:16', 'darrensapalo moved task ''Design Analysis'' to ''Doing'' board.'),
(80, 1, '2014-04-13 11:30:17', 'darrensapalo received 5 experience.'),
(81, 1, '2014-04-13 11:30:17', 'darrensapalo moved task ''Test prototype'' to ''Doing'' board.'),
(82, 1, '2014-04-13 11:30:26', 'darrensapalo moved task ''Design Analysis'' to ''Done'' board.'),
(83, 1, '2014-04-13 11:30:27', 'darrensapalo received 18 experience.'),
(84, 1, '2014-04-13 11:30:27', 'darrensapalo moved task ''Design Analysis'' to ''Done'' board.'),
(85, 1, '2014-04-13 11:30:27', 'darrensapalo moved task ''Design Analysis'' to ''Done'' board.'),
(86, 1, '2014-04-13 11:30:27', 'darrensapalo moved task ''Design Analysis'' to ''Done'' board.'),
(87, 1, '2014-04-13 11:30:28', 'darrensapalo moved task ''Design Analysis'' to ''Done'' board.'),
(88, 1, '2014-04-13 11:30:28', 'darrensapalo moved task ''Design Analysis'' to ''Done'' board.'),
(89, 1, '2014-04-13 11:30:29', 'darrensapalo moved task ''Design Analysis'' to ''Done'' board.'),
(90, 1, '2014-04-13 11:30:29', 'darrensapalo received 12 experience.'),
(91, 1, '2014-04-13 11:30:42', 'darrensapalo received 23 experience.'),
(92, 1, '2014-04-13 11:30:42', 'darrensapalo moved task ''Test prototype'' to ''Done'' board.'),
(93, 1, '2014-04-13 11:30:43', 'darrensapalo received 13 experience.'),
(94, 1, '2014-04-13 11:30:43', 'darrensapalo moved task ''Test prototype'' to ''Done'' board.'),
(95, 1, '2014-04-13 11:30:44', 'darrensapalo received 21 experience.'),
(96, 1, '2014-04-13 11:30:44', 'darrensapalo moved task ''Design Analysis'' to ''Done'' board.'),
(97, 1, '2014-04-13 11:30:44', 'darrensapalo moved task ''Design Analysis'' to ''To-do'' board.'),
(98, 1, '2014-04-13 11:30:45', 'darrensapalo moved task ''Design Analysis'' to ''Doing'' board.'),
(99, 1, '2014-04-13 11:30:46', 'darrensapalo moved task ''Test prototype'' to ''Doing'' board.'),
(100, 1, '2014-04-13 11:30:47', 'darrensapalo moved task ''Design Analysis'' to ''To-do'' board.'),
(101, 1, '2014-04-13 11:30:48', 'darrensapalo moved task ''Design Analysis'' to ''To-do'' board.'),
(102, 1, '2014-04-13 11:30:49', 'darrensapalo moved task ''Test prototype'' to ''Doing'' board.'),
(103, 1, '2014-04-13 11:30:50', 'darrensapalo moved task ''Test prototype'' to ''Doing'' board.'),
(104, 1, '2014-04-13 11:30:50', 'darrensapalo moved task ''Test prototype'' to ''Doing'' board.'),
(105, 1, '2014-04-13 11:30:51', 'darrensapalo moved task ''Test prototype'' to ''Doing'' board.'),
(106, 1, '2014-04-13 11:30:52', 'darrensapalo moved task ''Test prototype'' to ''Doing'' board.'),
(107, 1, '2014-04-13 11:30:52', 'darrensapalo received 4 experience.'),
(108, 1, '2014-04-13 11:30:52', 'darrensapalo moved task ''Test prototype'' to ''Doing'' board.'),
(109, 1, '2014-04-13 11:30:52', 'darrensapalo moved task ''Test prototype'' to ''Doing'' board.'),
(110, 1, '2014-04-13 11:30:53', 'darrensapalo moved task ''Test prototype'' to ''Doing'' board.'),
(111, 1, '2014-04-13 11:31:55', 'darrensapalo moved task ''Design Analysis'' to ''Doing'' board.'),
(112, 1, '2014-04-13 11:31:56', 'darrensapalo received 2 experience.'),
(113, 1, '2014-04-13 11:31:56', 'darrensapalo moved task ''Test prototype'' to ''To-do'' board.'),
(114, 1, '2014-04-13 11:31:56', 'darrensapalo moved task ''Test prototype'' to ''Doing'' board.'),
(115, 1, '2014-04-13 11:31:57', 'darrensapalo received 7 experience.'),
(116, 1, '2014-04-13 11:31:57', 'darrensapalo moved task ''Test prototype'' to ''To-do'' board.'),
(117, 1, '2014-04-13 11:32:01', 'darrensapalo moved task ''Design Analysis'' to ''Doing'' board.'),
(118, 1, '2014-04-13 11:32:02', 'darrensapalo moved task ''Design Analysis'' to ''Done'' board.'),
(119, 1, '2014-04-13 11:32:02', 'darrensapalo moved task ''Design Analysis'' to ''Doing'' board.'),
(120, 1, '2014-04-13 11:53:12', 'darrensapalo moved task ''Test prototype'' to ''Doing'' board.'),
(121, 1, '2014-04-13 11:53:12', 'darrensapalo received 4 experience.'),
(122, 1, '2014-04-13 11:53:12', 'darrensapalo moved task ''Test prototype'' to ''To-do'' board.'),
(123, 1, '2014-04-13 11:55:48', 'darrensapalo received 7 experience.'),
(124, 1, '2014-04-13 11:55:48', 'darrensapalo moved task ''Test prototype'' to ''Doing'' board.'),
(125, 1, '2014-04-13 11:55:49', 'darrensapalo moved task ''Test prototype'' to ''To-do'' board.'),
(126, 1, '2014-04-13 12:11:49', 'darrensapalo moved task ''Test prototype'' to ''To-do'' board.'),
(127, 1, '2014-04-13 12:12:25', 'darrensapalo moved task ''Test prototype'' to ''Doing'' board.'),
(128, 1, '2014-04-13 12:12:25', 'darrensapalo received 2 experience.'),
(129, 1, '2014-04-13 12:12:25', 'darrensapalo moved task ''Design Analysis'' to ''To-do'' board.'),
(130, 1, '2014-04-13 12:12:26', 'darrensapalo received 6 experience.'),
(131, 1, '2014-04-13 12:12:26', 'darrensapalo moved task ''Design Analysis'' to ''Doing'' board.'),
(132, 1, '2014-04-13 12:12:30', 'darrensapalo moved task ''Design Analysis'' to ''To-do'' board.'),
(133, 1, '2014-04-13 12:12:31', 'darrensapalo moved task ''Design Analysis'' to ''Doing'' board.'),
(134, 1, '2014-04-13 12:12:32', 'darrensapalo received 5 experience.'),
(135, 1, '2014-04-13 12:12:32', 'darrensapalo moved task ''Design Analysis'' to ''To-do'' board.'),
(136, 1, '2014-04-13 12:12:33', 'darrensapalo moved task ''Test prototype'' to ''To-do'' board.'),
(137, 1, '2014-04-13 12:12:34', 'darrensapalo moved task ''Design Analysis'' to ''Doing'' board.'),
(138, 1, '2014-04-13 12:12:36', 'darrensapalo moved task ''Test prototype'' to ''To-do'' board.'),
(139, 1, '2014-04-13 12:23:21', 'darrensapalo moved task ''Design Analysis'' to ''Done'' board.'),
(140, 1, '2014-04-13 12:23:24', 'darrensapalo moved task ''Design Analysis'' to ''Doing'' board.'),
(141, 1, '2014-04-13 12:23:34', 'darrensapalo moved task ''Test prototype'' to ''Doing'' board.'),
(142, 1, '2014-04-13 12:23:35', 'darrensapalo received 2 experience.'),
(143, 1, '2014-04-13 12:23:35', 'darrensapalo moved task ''Test prototype'' to ''To-do'' board.'),
(144, 1, '2014-04-13 12:23:36', 'darrensapalo moved task ''Design Analysis'' to ''Doing'' board.'),
(145, 1, '2014-04-13 12:23:38', 'darrensapalo received 5 experience.'),
(146, 1, '2014-04-13 12:23:38', 'darrensapalo moved task ''Design Analysis'' to ''Doing'' board.'),
(147, 1, '2014-04-13 12:23:38', 'darrensapalo moved task ''Design Analysis'' to ''Doing'' board.'),
(148, 1, '2014-04-13 12:23:39', 'darrensapalo moved task ''Design Analysis'' to ''Doing'' board.'),
(149, 1, '2014-04-13 12:23:39', 'darrensapalo moved task ''Design Analysis'' to ''Doing'' board.'),
(150, 1, '2014-04-13 12:23:40', 'darrensapalo moved task ''Design Analysis'' to ''Doing'' board.'),
(151, 1, '2014-04-13 12:23:41', 'darrensapalo moved task ''Design Analysis'' to ''Doing'' board.'),
(152, 1, '2014-04-13 12:23:42', 'darrensapalo received 5 experience.'),
(153, 1, '2014-04-13 12:23:42', 'darrensapalo moved task ''Design Analysis'' to ''Doing'' board.'),
(154, 1, '2014-04-13 12:23:42', 'darrensapalo received 5 experience.'),
(155, 1, '2014-04-13 12:23:42', 'darrensapalo moved task ''Design Analysis'' to ''Doing'' board.'),
(156, 1, '2014-04-13 12:23:43', 'darrensapalo moved task ''Design Analysis'' to ''Doing'' board.'),
(157, 1, '2014-04-13 12:23:44', 'darrensapalo moved task ''Design Analysis'' to ''Doing'' board.'),
(158, 1, '2014-04-13 12:23:44', 'darrensapalo moved task ''Design Analysis'' to ''Doing'' board.'),
(159, 1, '2014-04-13 12:23:45', 'darrensapalo moved task ''Design Analysis'' to ''Doing'' board.'),
(160, 1, '2014-04-13 12:23:49', 'darrensapalo moved task ''Test prototype'' to ''Done'' board.'),
(161, 1, '2014-04-13 12:23:49', 'darrensapalo moved task ''Test prototype'' to ''Done'' board.'),
(162, 1, '2014-04-13 12:23:50', 'darrensapalo moved task ''Test prototype'' to ''Done'' board.'),
(163, 1, '2014-04-13 12:23:50', 'darrensapalo moved task ''Test prototype'' to ''Done'' board.'),
(164, 1, '2014-04-13 12:23:52', 'darrensapalo received 20 experience.'),
(165, 1, '2014-04-13 12:23:52', 'darrensapalo moved task ''Test prototype'' to ''Done'' board.'),
(166, 1, '2014-04-13 12:23:52', 'darrensapalo moved task ''Test prototype'' to ''Done'' board.'),
(167, 1, '2014-04-13 12:23:53', 'darrensapalo moved task ''Test prototype'' to ''Done'' board.'),
(168, 1, '2014-04-13 12:23:53', 'darrensapalo moved task ''Test prototype'' to ''Done'' board.'),
(169, 1, '2014-04-13 12:23:54', 'darrensapalo moved task ''Test prototype'' to ''Done'' board.'),
(170, 1, '2014-04-13 12:23:54', 'darrensapalo moved task ''Test prototype'' to ''Done'' board.'),
(171, 1, '2014-04-13 12:23:55', 'darrensapalo received 19 experience.'),
(172, 1, '2014-04-13 12:23:55', 'darrensapalo moved task ''Test prototype'' to ''Done'' board.'),
(173, 1, '2014-04-13 12:23:55', 'darrensapalo moved task ''Test prototype'' to ''Done'' board.'),
(174, 1, '2014-04-13 12:23:57', 'darrensapalo received 3 experience.'),
(175, 1, '2014-04-13 12:23:57', 'darrensapalo moved task ''Test prototype'' to ''To-do'' board.'),
(176, 1, '2014-04-13 12:24:04', 'darrensapalo moved task ''Test prototype'' to ''Doing'' board.'),
(177, 1, '2014-04-13 12:24:05', 'darrensapalo moved task ''Design Analysis'' to ''Done'' board.'),
(178, 1, '2014-04-13 12:24:06', 'darrensapalo received 15 experience.'),
(179, 1, '2014-04-13 12:24:06', 'darrensapalo moved task ''Test prototype'' to ''Done'' board.'),
(180, 1, '2014-04-13 12:24:06', 'darrensapalo received 24 experience.'),
(181, 1, '2014-04-13 12:24:06', 'darrensapalo moved task ''Test prototype'' to ''Done'' board.'),
(182, 1, '2014-04-13 12:24:07', 'darrensapalo received 24 experience.'),
(183, 1, '2014-04-13 12:24:07', 'darrensapalo moved task ''Design Analysis'' to ''Done'' board.'),
(184, 1, '2014-04-13 12:24:07', 'darrensapalo received 23 experience.'),
(185, 1, '2014-04-13 12:24:07', 'darrensapalo moved task ''Design Analysis'' to ''Done'' board.'),
(186, 1, '2014-04-13 12:24:08', 'darrensapalo moved task ''Test prototype'' to ''Done'' board.'),
(187, 1, '2014-04-13 12:24:08', 'darrensapalo received 22 experience.'),
(188, 1, '2014-04-13 12:24:08', 'darrensapalo moved task ''Design Analysis'' to ''Done'' board.'),
(189, 1, '2014-04-13 12:24:08', 'darrensapalo received 20 experience.'),
(190, 1, '2014-04-13 12:24:08', 'darrensapalo moved task ''Test prototype'' to ''Done'' board.'),
(191, 1, '2014-04-13 12:24:09', 'darrensapalo received 19 experience.'),
(192, 1, '2014-04-13 12:24:09', 'darrensapalo moved task ''Test prototype'' to ''Done'' board.'),
(193, 1, '2014-04-13 12:24:09', 'darrensapalo moved task ''Test prototype'' to ''Done'' board.'),
(194, 1, '2014-04-13 12:24:09', 'darrensapalo received 19 experience.'),
(195, 1, '2014-04-13 12:24:09', 'darrensapalo moved task ''Test prototype'' to ''Done'' board.'),
(196, 1, '2014-04-13 12:24:10', 'darrensapalo moved task ''Test prototype'' to ''Done'' board.'),
(197, 1, '2014-04-13 12:51:17', 'darrensapalo moved task ''Test 2'' to ''Doing'' board.'),
(198, 1, '2014-04-13 12:51:22', 'darrensapalo received 2 experience.'),
(199, 1, '2014-04-13 12:51:22', 'darrensapalo moved task ''Test 2'' to ''To-do'' board.'),
(200, 1, '2014-04-13 12:51:24', 'darrensapalo moved task ''Test 2'' to ''Doing'' board.'),
(201, 1, '2014-04-13 12:51:28', 'darrensapalo received 7 experience.'),
(202, 1, '2014-04-13 12:51:28', 'darrensapalo moved task ''Design Analysis'' to ''Doing'' board.'),
(203, 1, '2014-04-13 12:51:55', 'darrensapalo moved task ''Design Analysis'' to ''Doing'' board.'),
(204, 1, '2014-04-13 12:52:05', 'darrensapalo moved task ''Design Analysis'' to ''Doing'' board.'),
(205, 1, '2014-04-13 12:52:59', 'darrensapalo moved task ''Design Analysis'' to ''Doing'' board.'),
(206, 1, '2014-04-13 12:53:06', 'darrensapalo moved task ''Design Analysis'' to ''Doing'' board.'),
(207, 1, '2014-04-13 12:53:11', 'darrensapalo moved task ''Design Analysis'' to ''Doing'' board.'),
(208, 1, '2014-04-13 12:54:12', 'darrensapalo received 3 experience.'),
(209, 1, '2014-04-13 12:54:12', 'darrensapalo moved task ''Design Analysis'' to ''Doing'' board.'),
(210, 1, '2014-04-13 12:54:48', 'darrensapalo moved task ''Design Analysis'' to ''Doing'' board.'),
(211, 1, '2014-04-13 12:55:57', 'darrensapalo moved task ''Design Analysis'' to ''Doing'' board.'),
(212, 1, '2014-04-13 12:58:50', 'darrensapalo received 2 experience.'),
(213, 1, '2014-04-13 12:58:50', 'darrensapalo moved task ''Design Analysis'' to ''Doing'' board.'),
(214, 1, '2014-04-13 12:58:55', 'darrensapalo moved task ''Design Analysis'' to ''Doing'' board.'),
(215, 1, '2014-04-13 12:59:32', 'darrensapalo moved task ''Design Analysis'' to ''Doing'' board.'),
(216, 1, '2014-04-13 12:59:47', 'darrensapalo moved task ''Design Analysis'' to ''Doing'' board.'),
(217, 1, '2014-04-13 13:04:58', 'darrensapalo received 13 experience.'),
(218, 1, '2014-04-13 13:04:58', 'darrensapalo moved task ''Design Analysis'' to ''Done'' board.'),
(219, 1, '2014-04-13 13:04:59', 'darrensapalo moved task ''Test prototype'' to ''Doing'' board.'),
(220, 1, '2014-04-13 13:05:01', 'darrensapalo moved task ''Test prototype'' to ''Doing'' board.'),
(221, 1, '2014-04-13 13:05:01', 'darrensapalo moved task ''Test prototype'' to ''Doing'' board.'),
(222, 1, '2014-04-13 13:05:01', 'darrensapalo received 2 experience.'),
(223, 1, '2014-04-13 13:08:04', 'darrensapalo moved task ''Test prototype'' to ''Doing'' board.'),
(224, 1, '2014-04-13 13:08:05', 'darrensapalo received 4 experience.'),
(225, 1, '2014-04-13 13:08:05', 'darrensapalo moved task ''Test 2'' to ''Doing'' board.'),
(226, 1, '2014-04-13 13:08:05', 'darrensapalo moved task ''Test prototype'' to ''Doing'' board.'),
(227, 1, '2014-04-13 13:08:06', 'darrensapalo moved task ''Test prototype'' to ''Doing'' board.'),
(228, 1, '2014-04-13 13:08:06', 'darrensapalo moved task ''Test 2'' to ''Doing'' board.'),
(229, 1, '2014-04-13 13:08:07', 'darrensapalo moved task ''Test prototype'' to ''Doing'' board.'),
(230, 1, '2014-04-13 13:08:07', 'darrensapalo moved task ''tata'' to ''Doing'' board.'),
(231, 1, '2014-04-13 13:08:08', 'darrensapalo moved task ''tata'' to ''To-do'' board.'),
(232, 1, '2014-04-13 13:08:08', 'darrensapalo moved task ''Test 2'' to ''Doing'' board.'),
(233, 1, '2014-04-13 13:08:09', 'darrensapalo moved task ''Test 2'' to ''Doing'' board.'),
(234, 1, '2014-04-13 13:08:10', 'darrensapalo moved task ''Test 2'' to ''Doing'' board.'),
(235, 1, '2014-04-13 13:08:10', 'darrensapalo received 3 experience.'),
(236, 1, '2014-04-13 13:08:10', 'darrensapalo moved task ''Test 2'' to ''Doing'' board.'),
(237, 1, '2014-04-13 13:08:11', 'darrensapalo moved task ''tata'' to ''Doing'' board.'),
(238, 1, '2014-04-13 13:08:11', 'darrensapalo moved task ''tata'' to ''To-do'' board.'),
(239, 1, '2014-04-13 13:10:58', 'darrensapalo added a new task: ''Task 3''.'),
(240, 1, '2014-04-13 13:20:22', 'darrensapalo moved task ''tata'' to ''Doing'' board.'),
(241, 1, '2014-04-13 13:20:23', 'darrensapalo moved task ''tata'' to ''Doing'' board.'),
(242, 1, '2014-04-13 13:20:24', 'darrensapalo moved task ''tata'' to ''To-do'' board.'),
(243, 1, '2014-04-13 13:20:37', 'darrensapalo moved task ''tata'' to ''Doing'' board.'),
(244, 1, '2014-04-13 13:20:38', 'darrensapalo moved task ''tata'' to ''To-do'' board.'),
(245, 1, '2014-04-13 13:27:38', 'darrensapalo received 24 experience.'),
(246, 1, '2014-04-13 13:27:38', 'darrensapalo moved task ''Test prototype'' to ''Done'' board.'),
(247, 1, '2014-04-13 13:27:38', 'darrensapalo moved task ''Test prototype'' to ''Doing'' board.'),
(248, 1, '2014-04-13 13:29:10', 'darrensapalo moved task ''tata'' to ''Doing'' board.'),
(249, 1, '2014-04-13 13:29:11', 'darrensapalo moved task ''tata'' to ''To-do'' board.'),
(250, 1, '2014-04-13 13:30:08', 'darrensapalo moved task ''Test prototype'' to ''Done'' board.'),
(251, 1, '2014-04-13 13:30:09', 'darrensapalo moved task ''Test prototype'' to ''Doing'' board.'),
(252, 1, '2014-04-13 13:30:16', 'darrensapalo moved task ''tata'' to ''Doing'' board.'),
(253, 1, '2014-04-13 13:30:17', 'darrensapalo moved task ''tata'' to ''To-do'' board.'),
(254, 1, '2014-04-13 13:30:17', 'darrensapalo moved task ''tata'' to ''Doing'' board.'),
(255, 1, '2014-04-13 13:30:23', 'darrensapalo received 5 experience.'),
(256, 1, '2014-04-13 13:30:23', 'darrensapalo moved task ''Test prototype'' to ''Doing'' board.'),
(257, 1, '2014-04-13 13:30:39', 'darrensapalo moved task ''Task 3'' to ''Doing'' board.'),
(258, 1, '2014-04-13 13:30:40', 'darrensapalo moved task ''Task 3'' to ''Doing'' board.'),
(259, 1, '2014-04-13 13:30:41', 'darrensapalo moved task ''Task 3'' to ''Doing'' board.'),
(260, 1, '2014-04-13 13:30:42', 'darrensapalo moved task ''tata'' to ''To-do'' board.'),
(261, 1, '2014-04-13 13:30:43', 'darrensapalo received 2 experience.'),
(262, 1, '2014-04-13 13:30:43', 'darrensapalo moved task ''Task 3'' to ''To-do'' board.'),
(263, 1, '2014-04-13 13:30:44', 'darrensapalo moved task ''Test 2'' to ''To-do'' board.'),
(264, 1, '2014-04-13 13:33:28', 'darrensapalo moved task ''Integrate to open source framework'' to ''Doing'' board.'),
(265, 1, '2014-04-13 13:33:29', 'darrensapalo moved task ''Test prototype'' to ''Doing'' board.'),
(266, 1, '2014-04-13 13:33:31', 'darrensapalo moved task ''Integrate to open source framework'' to ''To-do'' board.'),
(267, 1, '2014-04-13 13:33:32', 'darrensapalo moved task ''Integrate to open source framework'' to ''To-do'' board.'),
(268, 1, '2014-04-13 13:33:43', 'darrensapalo moved task ''Test prototype'' to ''Done'' board.'),
(269, 1, '2014-04-13 13:33:44', 'darrensapalo moved task ''Design Analysis'' to ''Doing'' board.'),
(270, 1, '2014-04-13 13:33:46', 'darrensapalo received 13 experience.'),
(271, 1, '2014-04-13 13:33:46', 'darrensapalo moved task ''Design Analysis'' to ''Done'' board.'),
(272, 1, '2014-04-13 13:33:47', 'darrensapalo moved task ''Test prototype'' to ''Done'' board.'),
(273, 1, '2014-04-13 13:33:47', 'darrensapalo received 18 experience.'),
(274, 1, '2014-04-13 13:33:48', 'darrensapalo moved task ''Test prototype'' to ''Done'' board.'),
(275, 1, '2014-04-13 13:33:48', 'darrensapalo moved task ''Test prototype'' to ''Done'' board.'),
(276, 1, '2014-04-13 13:33:48', 'darrensapalo received 18 experience.'),
(277, 1, '2014-04-13 13:33:49', 'darrensapalo received 13 experience.'),
(278, 1, '2014-04-13 13:33:49', 'darrensapalo moved task ''Test prototype'' to ''Done'' board.'),
(279, 1, '2014-04-13 13:33:49', 'darrensapalo received 12 experience.'),
(280, 1, '2014-04-13 13:33:49', 'darrensapalo moved task ''Test prototype'' to ''Done'' board.'),
(281, 1, '2014-04-13 13:33:49', 'darrensapalo received 10 experience.'),
(282, 1, '2014-04-13 13:33:49', 'darrensapalo moved task ''Test prototype'' to ''Done'' board.'),
(283, 1, '2014-04-14 23:58:04', 'darrensapalo moved task ''Review more works'' to ''To-do'' board.'),
(284, 1, '2014-04-14 23:58:04', 'darrensapalo moved task ''Review more works'' to ''To-do'' board.'),
(285, 1, '2014-04-14 23:58:05', 'darrensapalo moved task ''Review more works'' to ''Doing'' board.'),
(286, 1, '2014-04-14 23:58:10', 'darrensapalo moved task ''Design Analysis'' to ''To-do'' board.'),
(287, 1, '2014-04-14 23:58:11', 'darrensapalo moved task ''Design Analysis'' to ''Doing'' board.'),
(288, 1, '2014-04-14 23:58:23', 'darrensapalo moved task ''Design Analysis'' to ''To-do'' board.'),
(289, 1, '2014-04-14 23:58:23', 'darrensapalo moved task ''Test prototype'' to ''Doing'' board.'),
(290, 1, '2014-04-14 23:58:33', 'darrensapalo received 24 experience.'),
(291, 1, '2014-04-14 23:58:33', 'darrensapalo moved task ''Design Analysis'' to ''Done'' board.'),
(292, 1, '2014-04-15 01:05:22', 'darrensapalo moved task ''Present the prototype'' to ''Doing'' board.'),
(293, 1, '2014-04-15 01:05:23', 'darrensapalo moved task ''Design Analysis'' to ''Done'' board.'),
(294, 1, '2014-04-15 01:05:23', 'darrensapalo moved task ''Design Analysis'' to ''Done'' board.'),
(295, 1, '2014-04-15 01:05:24', 'darrensapalo received 18 experience.'),
(296, 1, '2014-04-15 01:05:24', 'darrensapalo moved task ''Design Analysis'' to ''Done'' board.'),
(297, 1, '2014-04-15 01:05:24', 'darrensapalo received 23 experience.'),
(298, 1, '2014-04-15 01:05:24', 'darrensapalo moved task ''Design Analysis'' to ''Done'' board.'),
(299, 1, '2014-04-15 01:05:25', 'darrensapalo moved task ''Design Analysis'' to ''Done'' board.'),
(300, 1, '2014-04-15 01:05:28', 'darrensapalo moved task ''Design Analysis'' to ''Done'' board.'),
(301, 1, '2014-04-15 01:05:28', 'darrensapalo moved task ''Design Analysis'' to ''Done'' board.'),
(302, 1, '2014-04-15 01:05:29', 'darrensapalo moved task ''Design Analysis'' to ''Done'' board.'),
(303, 1, '2014-04-15 01:05:29', 'darrensapalo received 18 experience.'),
(304, 1, '2014-04-15 01:05:35', 'darrensapalo moved task ''Review more works'' to ''To-do'' board.'),
(305, 1, '2014-04-15 01:05:36', 'darrensapalo received 7 experience.'),
(306, 1, '2014-04-15 01:05:36', 'darrensapalo moved task ''Review more works'' to ''To-do'' board.'),
(307, 1, '2014-04-15 01:05:36', 'darrensapalo moved task ''Review more works'' to ''To-do'' board.'),
(308, 1, '2014-04-15 01:05:37', 'darrensapalo moved task ''Integrate to open source framework'' to ''To-do'' board.'),
(309, 1, '2014-04-15 01:06:05', 'darrensapalo added a new task ''Distributed monitoring module''.'),
(310, 1, '2014-04-15 01:09:03', 'darrensapalo added a new task ''Distributed monitoring module''.'),
(311, 1, '2014-04-15 01:09:36', 'darrensapalo added a new task ''Distributed monitoring module''.'),
(312, 1, '2014-04-15 01:09:59', 'darrensapalo added a new task ''Distributed monitoring module''.'),
(313, 1, '2014-04-15 01:10:46', 'darrensapalo added a new task ''Distributed monitoring module''.'),
(314, 1, '2014-04-15 01:11:42', 'darrensapalo added a new task ''Distributed monitoring module''.'),
(315, 1, '2014-04-15 01:12:11', 'darrensapalo added a new task ''Distributed monitoring module''.'),
(316, 1, '2014-04-15 01:12:53', 'darrensapalo received 13 experience.'),
(317, 1, '2014-04-15 01:12:53', 'darrensapalo moved task ''Drink a cup of tea'' to ''Done'' board.'),
(318, 1, '2014-04-15 01:24:35', 'darrensapalo moved task ''Present the prototype'' to ''Done'' board.'),
(319, 1, '2014-04-15 01:24:35', 'darrensapalo moved task ''Present the prototype'' to ''Doing'' board.'),
(320, 1, '2014-04-15 01:24:37', 'darrensapalo moved task ''Design Analysis'' to ''Done'' board.'),
(321, 1, '2014-04-15 01:24:37', 'darrensapalo received 15 experience.'),
(322, 1, '2014-04-15 01:24:37', 'darrensapalo moved task ''Design Analysis'' to ''Done'' board.'),
(323, 1, '2014-04-15 01:24:38', 'darrensapalo moved task ''Design Analysis'' to ''Done'' board.'),
(324, 1, '2014-04-15 01:24:38', 'darrensapalo moved task ''Design Analysis'' to ''Done'' board.'),
(325, 1, '2014-04-15 02:12:26', 'darrensapalo moved task ''Review more works'' to ''Doing'' board.'),
(326, 1, '2014-04-15 02:12:27', 'darrensapalo moved task ''Review more works'' to ''To-do'' board.'),
(327, 1, '2014-04-15 02:12:39', 'darrensapalo moved task ''Present the prototype'' to ''Done'' board.'),
(328, 1, '2014-04-15 02:12:39', 'darrensapalo received 15 experience.'),
(329, 1, '2014-04-15 02:12:39', 'darrensapalo moved task ''Present the prototype'' to ''Done'' board.'),
(330, 1, '2014-04-15 02:12:41', 'darrensapalo moved task ''Present the prototype'' to ''Done'' board.'),
(331, 1, '2014-04-15 02:12:41', 'darrensapalo received 18 experience.'),
(332, 1, '2014-04-15 02:12:41', 'darrensapalo moved task ''Present the prototype'' to ''Done'' board.'),
(333, 1, '2014-04-15 02:12:41', 'darrensapalo moved task ''Present the prototype'' to ''Done'' board.'),
(334, 1, '2014-04-15 02:12:42', 'darrensapalo moved task ''Present the prototype'' to ''Done'' board.'),
(335, 1, '2014-04-15 02:46:35', 'darrensapalo received 24 experience.'),
(336, 1, '2014-04-15 02:46:35', 'darrensapalo moved task ''Design Analysis'' to ''Done'' board.'),
(337, 1, '2014-04-15 02:46:35', 'darrensapalo moved task ''Design Analysis'' to ''Done'' board.'),
(338, 1, '2014-04-15 02:46:36', 'darrensapalo moved task ''Design Analysis'' to ''Done'' board.'),
(339, 1, '2014-04-15 02:46:36', 'darrensapalo received 14 experience.'),
(340, 1, '2014-04-15 02:46:36', 'darrensapalo moved task ''Design Analysis'' to ''Done'' board.'),
(341, 1, '2014-04-15 02:46:37', 'darrensapalo received 24 experience.'),
(342, 1, '2014-04-15 02:46:37', 'darrensapalo moved task ''Present the prototype'' to ''Done'' board.'),
(343, 1, '2014-04-15 02:46:38', 'darrensapalo moved task ''Present the prototype'' to ''Done'' board.'),
(344, 1, '2014-04-15 02:46:38', 'darrensapalo moved task ''Drink a cup of tea'' to ''Done'' board.'),
(345, 1, '2014-04-15 02:46:38', 'darrensapalo received 21 experience.'),
(346, 1, '2014-04-15 02:46:38', 'darrensapalo moved task ''Design Analysis'' to ''Done'' board.'),
(347, 1, '2014-04-15 02:46:39', 'darrensapalo received 18 experience.'),
(348, 1, '2014-04-15 02:46:39', 'darrensapalo moved task ''Design Analysis'' to ''Done'' board.'),
(349, 1, '2014-04-15 02:46:39', 'darrensapalo received 21 experience.'),
(350, 1, '2014-04-15 02:46:39', 'darrensapalo moved task ''Design Analysis'' to ''Done'' board.'),
(351, 1, '2014-04-15 02:46:39', 'darrensapalo received 11 experience.'),
(352, 1, '2014-04-15 02:46:39', 'darrensapalo moved task ''Design Analysis'' to ''Done'' board.'),
(353, 1, '2014-04-15 02:46:47', 'darrensapalo moved task ''Present the prototype'' to ''Done'' board.'),
(354, 1, '2014-04-15 02:46:48', 'darrensapalo received 18 experience.'),
(355, 1, '2014-04-15 02:46:48', 'darrensapalo moved task ''Present the prototype'' to ''Done'' board.'),
(356, 1, '2014-04-15 02:46:48', 'darrensapalo moved task ''Design Analysis'' to ''Done'' board.'),
(357, 1, '2014-04-15 02:46:48', 'darrensapalo received 15 experience.'),
(358, 1, '2014-04-15 02:46:48', 'darrensapalo moved task ''Design Analysis'' to ''Done'' board.'),
(359, 1, '2014-04-15 02:48:03', 'darrensapalo moved task ''Design Analysis'' to ''Done'' board.'),
(360, 1, '2014-04-15 02:48:03', 'darrensapalo moved task ''Design Analysis'' to ''Done'' board.'),
(361, 1, '2014-04-15 02:48:05', 'darrensapalo received 24 experience.'),
(362, 1, '2014-04-15 02:48:05', 'darrensapalo moved task ''Present the prototype'' to ''Done'' board.'),
(363, 1, '2014-04-15 02:48:05', 'darrensapalo moved task ''Design Analysis'' to ''Done'' board.'),
(364, 1, '2014-04-15 02:48:06', 'darrensapalo received 16 experience.'),
(365, 1, '2014-04-15 02:48:06', 'darrensapalo moved task ''Design Analysis'' to ''Done'' board.'),
(366, 1, '2014-04-15 02:48:06', 'darrensapalo moved task ''Present the prototype'' to ''Done'' board.'),
(367, 1, '2014-04-15 02:48:06', 'darrensapalo moved task ''Present the prototype'' to ''Done'' board.'),
(368, 1, '2014-04-15 02:48:07', 'darrensapalo moved task ''Present the prototype'' to ''Done'' board.'),
(369, 1, '2014-04-15 02:48:08', 'darrensapalo moved task ''Drink a cup of tea'' to ''Done'' board.'),
(370, 1, '2014-04-15 02:48:08', 'darrensapalo moved task ''Present the prototype'' to ''Done'' board.'),
(371, 1, '2014-04-15 02:48:08', 'darrensapalo received 16 experience.'),
(372, 1, '2014-04-15 02:48:08', 'darrensapalo moved task ''Present the prototype'' to ''Done'' board.'),
(373, 1, '2014-04-15 02:48:09', 'darrensapalo received 17 experience.'),
(374, 1, '2014-04-15 02:48:09', 'darrensapalo moved task ''Present the prototype'' to ''Done'' board.'),
(375, 1, '2014-04-15 02:48:09', 'darrensapalo moved task ''Present the prototype'' to ''Done'' board.'),
(376, 1, '2014-04-15 02:48:25', 'darrensapalo moved task ''Design Analysis'' to ''Done'' board.'),
(377, 1, '2014-04-15 02:48:25', 'darrensapalo moved task ''Design Analysis'' to ''Done'' board.'),
(378, 1, '2014-04-15 02:48:38', 'darrensapalo received 15 experience.'),
(379, 1, '2014-04-15 02:48:38', 'darrensapalo moved task ''Design Analysis'' to ''Done'' board.'),
(380, 1, '2014-04-15 02:51:37', 'darrensapalo moved task ''Design Analysis'' to ''Doing'' board.'),
(381, 1, '2014-04-15 02:55:19', 'darrensapalo received 16 experience.'),
(382, 1, '2014-04-15 02:55:19', 'darrensapalo moved task ''Design Analysis'' to ''Done'' board.'),
(383, 1, '2014-04-15 02:55:20', 'darrensapalo moved task ''Design Analysis'' to ''Doing'' board.'),
(384, 1, '2014-04-15 02:55:21', 'darrensapalo received 23 experience.'),
(385, 1, '2014-04-15 02:55:21', 'darrensapalo moved task ''Design Analysis'' to ''Done'' board.'),
(386, 1, '2014-04-15 03:35:17', 'darrensapalo received 7 experience.'),
(387, 1, '2014-04-15 03:35:17', 'darrensapalo moved task ''Design Analysis'' to ''To-do'' board.'),
(388, 1, '2014-04-15 03:35:19', 'darrensapalo moved task ''Design Analysis'' to ''Done'' board.'),
(389, 1, '2014-04-15 03:35:20', 'darrensapalo moved task ''Present the prototype'' to ''To-do'' board.'),
(390, 1, '2014-04-15 03:35:21', 'darrensapalo moved task ''Drink a cup of tea'' to ''To-do'' board.'),
(391, 1, '2014-04-15 03:35:25', 'darrensapalo moved task ''Present the prototype'' to ''Doing'' board.'),
(392, 1, '2014-04-15 03:49:23', 'darrensapalo moved task ''Review more works'' to ''Doing'' board.'),
(393, 1, '2014-04-15 03:49:24', 'darrensapalo received 21 experience.'),
(394, 1, '2014-04-15 03:49:24', 'darrensapalo moved task ''Present the prototype'' to ''Done'' board.'),
(395, 1, '2014-04-15 03:49:27', 'darrensapalo received 21 experience.'),
(396, 1, '2014-04-15 03:49:27', 'darrensapalo moved task ''Design Analysis'' to ''Done'' board.'),
(397, 1, '2014-04-15 03:55:15', 'darrensapalo moved task ''Integrate to open source framework'' to ''Doing'' board.'),
(398, 1, '2014-04-15 03:57:05', 'darrensapalo received 20 experience.'),
(399, 1, '2014-04-15 03:57:05', 'darrensapalo moved task ''Drink a cup of tea'' to ''Done'' board.'),
(400, 1, '2014-04-15 04:02:44', 'darrensapalo received 4 experience.'),
(401, 1, '2014-04-15 04:02:44', 'darrensapalo moved task ''Distributed monitoring module'' to ''Doing'' board.'),
(402, 1, '2014-04-15 04:03:53', 'darrensapalo moved task ''Distributed monitoring module'' to ''To-do'' board.');

-- --------------------------------------------------------

--
-- Table structure for table `milestone`
--

CREATE TABLE IF NOT EXISTS `milestone` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `desc` text,
  `deadline` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE IF NOT EXISTS `tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `color` varchar(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `tags`
--

INSERT DELAYED INTO `tags` (`id`, `name`, `color`) VALUES
(1, 'Changes and Revisions', 'orange'),
(2, 'Bugs', 'red'),
(3, 'Design', 'yellow'),
(4, 'Code', 'blue'),
(5, 'Literature Review', 'green');

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE IF NOT EXISTS `tasks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `desc` text,
  `deadline` timestamp NULL DEFAULT NULL,
  `board` int(1) NOT NULL DEFAULT '-1',
  `milestone_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `milestone_id` (`milestone_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `tasks`
--

INSERT DELAYED INTO `tasks` (`id`, `name`, `desc`, `deadline`, `board`, `milestone_id`) VALUES
(1, 'Design Analysis', 'Study the design of the open source PHP frameworks. Learn more.', '2014-04-12 16:00:00', 1, NULL),
(2, 'Present the prototype', 'Allow the determined target users to use the prototype and apply contextual inquiry user research method.', '2014-04-14 16:00:00', 1, NULL),
(3, 'Review more works', 'Find out if there are other concepts that you can apply to encourage users to engage more.', '2014-04-29 16:00:00', 0, NULL),
(4, 'Integrate to open source framework', 'Once the design for project management is finished, integrate this design to the open source project management system determined earlier.', '2014-04-18 04:03:00', 0, NULL),
(5, 'Drink a cup of tea', 'What programming is complete without a cup of tea?', '2014-04-23 16:00:00', 1, NULL),
(13, 'Distributed monitoring module', 'Find a way to require the users to check up on each other.', '2014-04-25 16:00:00', -1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tasks_to_tags`
--

CREATE TABLE IF NOT EXISTS `tasks_to_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `task_id` int(11) DEFAULT NULL,
  `tags_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_tasks_to_tags_idx` (`tags_id`),
  KEY `fk_tags_to_tasks_idx` (`task_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=54 ;

--
-- Dumping data for table `tasks_to_tags`
--

INSERT DELAYED INTO `tasks_to_tags` (`id`, `task_id`, `tags_id`) VALUES
(2, 2, 4),
(3, 2, 1),
(40, 3, 5),
(49, 1, 3),
(50, 1, 4),
(51, 13, 3),
(52, 13, 4),
(53, 5, 3);

-- --------------------------------------------------------

--
-- Table structure for table `tasks_to_users`
--

CREATE TABLE IF NOT EXISTS `tasks_to_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `task_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_task_to_user_idx` (`user_id`),
  KEY `fl_user_to_task_idx` (`task_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `tasks_to_users`
--

INSERT DELAYED INTO `tasks_to_users` (`id`, `task_id`, `user_id`) VALUES
(1, 1, 1),
(2, 3, 2),
(3, 5, 3),
(4, 13, 4),
(6, 13, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `experience` int(11) NOT NULL DEFAULT '0',
  `level` int(11) NOT NULL DEFAULT '1',
  `label` varchar(45) DEFAULT 'Newbie',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `users`
--

INSERT DELAYED INTO `users` (`id`, `user_id`, `email`, `password`, `experience`, `level`, `label`) VALUES
(1, 'darrensapalo', 'darren.sapalo@gmail.com', 'test', 414, 1, 'Newbie'),
(2, 'robertocruz', 'rbecruz@gmail.com', 'test', 999, 4, 'Apprentice'),
(3, 'marvinsuangco', 'msuangco@gmail.com', 'test', 3768, 7, 'Professional'),
(4, 'jeremiahluy', 'jluy@gmail.com', 'test', 7421, 11, 'Expert');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `distributed_monitoring`
--
ALTER TABLE `distributed_monitoring`
  ADD CONSTRAINT `fk_assignment_to_verify` FOREIGN KEY (`assignment_id`) REFERENCES `tasks_to_users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fl_verify_to_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `logs`
--
ALTER TABLE `logs`
  ADD CONSTRAINT `fk_log_to_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tasks`
--
ALTER TABLE `tasks`
  ADD CONSTRAINT `tasks_ibfk_3` FOREIGN KEY (`milestone_id`) REFERENCES `milestone` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tasks_to_tags`
--
ALTER TABLE `tasks_to_tags`
  ADD CONSTRAINT `fk_tags_to_tasks` FOREIGN KEY (`task_id`) REFERENCES `tasks` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_tasks_to_tags` FOREIGN KEY (`tags_id`) REFERENCES `tags` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tasks_to_users`
--
ALTER TABLE `tasks_to_users`
  ADD CONSTRAINT `fk_task_to_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fl_user_to_task` FOREIGN KEY (`task_id`) REFERENCES `tasks` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
