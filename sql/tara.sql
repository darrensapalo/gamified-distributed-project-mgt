-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 15, 2014 at 05:35 AM
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

INSERT INTO `tasks` (`id`, `name`, `desc`, `deadline`, `board`, `milestone_id`) VALUES
(1, 'Design Analysis', 'Study the design of the open source PHP frameworks. Learn more.', '2014-04-12 16:00:00', 1, NULL),
(2, 'Present the prototype', 'Allow the determined target users to use the prototype and apply contextual inquiry user research method.', '2014-04-14 16:00:00', 0, NULL),
(3, 'Review more works', 'Find out if there are other concepts that you can apply to encourage users to engage more.', '2014-04-29 16:00:00', -1, NULL),
(4, 'Integrate to open source framework', 'Once the design for project management is finished, integrate this design to the open source project management system determined earlier.', '2014-04-18 04:03:00', -1, NULL),
(5, 'Drink a cup of tea', 'What programming is complete without a cup of tea?', '2014-04-23 16:00:00', -1, NULL),
(13, 'Distributed monitoring module', 'Find a way to require the users to check up on each other.', '2014-04-25 16:00:00', -1, NULL);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tasks`
--
ALTER TABLE `tasks`
  ADD CONSTRAINT `tasks_ibfk_3` FOREIGN KEY (`milestone_id`) REFERENCES `milestone` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
