-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 13, 2014 at 03:32 PM
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=264 ;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`id`, `user_id`, `timestamp`, `description`) VALUES
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
(263, 1, '2014-04-13 13:30:44', 'darrensapalo moved task ''Test 2'' to ''To-do'' board.');

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

INSERT INTO `tags` (`id`, `name`, `color`) VALUES
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `name`, `desc`, `deadline`, `board`) VALUES
(1, 'Design Analysis', 'Study the design of the open source PHP frameworks. Learn more.', '2014-04-12 16:00:00', 1),
(2, 'Test prototype', 'Allow the determined target users to use the prototype and apply contextual inquiry user research method.', '2014-04-14 16:00:00', 0),
(3, 'Review more works', 'Find out if there are other concepts that you can apply to encourage users to engage more.', '0000-00-00 00:00:00', -1),
(4, 'Integrate to open source framework', 'Once the design for project management is finished, integrate this design to the open source project management system determined earlier.', '2014-04-18 04:03:00', -1),
(5, 'Drink a cup of tea', 'What programming is complete without a cup of tea?', '2014-04-23 16:00:00', -1);

-- --------------------------------------------------------

--
-- Table structure for table `tasks_to_milestone`
--

CREATE TABLE IF NOT EXISTS `tasks_to_milestone` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `task_id` int(11) NOT NULL,
  `milestone_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fl_milestone_to_task_idx` (`task_id`),
  KEY `fk_task_to_milestone_idx` (`milestone_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tasks_to_tags`
--

INSERT INTO `tasks_to_tags` (`id`, `task_id`, `tags_id`) VALUES
(1, 1, 3),
(2, 2, 4),
(3, 2, 1);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tasks_to_users`
--

INSERT INTO `tasks_to_users` (`id`, `task_id`, `user_id`) VALUES
(1, 1, 1);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_id`, `email`, `password`, `experience`, `level`, `label`) VALUES
(1, 'darrensapalo', 'darren.sapalo@gmail.com', 'test', 733, 1, 'Newbie');

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
-- Constraints for table `tasks_to_milestone`
--
ALTER TABLE `tasks_to_milestone`
  ADD CONSTRAINT `fk_task_to_milestone` FOREIGN KEY (`milestone_id`) REFERENCES `milestone` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fl_milestone_to_task` FOREIGN KEY (`task_id`) REFERENCES `tasks` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

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
