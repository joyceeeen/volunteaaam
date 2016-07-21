-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 21, 2016 at 03:00 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `volunteam`
--

-- --------------------------------------------------------

--
-- Table structure for table `applications`
--

CREATE TABLE IF NOT EXISTS `applications` (
`application_id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `timeIn` varchar(25) NOT NULL,
  `timeOut` varchar(25) NOT NULL,
  `numberOfHours` int(25) NOT NULL,
  `accepted` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE IF NOT EXISTS `events` (
`id` int(11) NOT NULL,
  `event_name` varchar(155) NOT NULL,
  `event_location` varchar(155) NOT NULL,
  `event_fromDate` varchar(155) NOT NULL,
  `event_toDate` varchar(155) NOT NULL,
  `event_fromTime` varchar(155) NOT NULL,
  `event_toTime` varchar(155) NOT NULL,
  `event_volunteer` varchar(544) NOT NULL,
  `event_description` varchar(2000) NOT NULL,
  `event_noNeeds` int(10) NOT NULL,
  `event_pic` varchar(155) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `event_name`, `event_location`, `event_fromDate`, `event_toDate`, `event_fromTime`, `event_toTime`, `event_volunteer`, `event_description`, `event_noNeeds`, `event_pic`, `user_id`) VALUES
(1, 'Relief Operation', 'Quezon City, Manila', 'July 24,2016', 'July 24, 2016', '8:00 AM', '3:00 PM', 'Relief Bagger', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 50, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `event_volunteer`
--

CREATE TABLE IF NOT EXISTS `event_volunteer` (
`event_volunteerID` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `event_gneed` varchar(155) NOT NULL,
  `event_sneed` varchar(155) NOT NULL,
  `event_noVolunteers` int(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event_volunteer`
--

INSERT INTO `event_volunteer` (`event_volunteerID`, `event_id`, `event_gneed`, `event_sneed`, `event_noVolunteers`) VALUES
(1, 1, '', '', 0),
(2, 1, '', '', 0),
(3, 1, '', '', 0),
(4, 1, '', '', 0),
(5, 1, '', '', 0),
(6, 1, '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `organizations`
--

CREATE TABLE IF NOT EXISTS `organizations` (
`organization_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `organization_name` varchar(155) NOT NULL,
  `organization_profile` varchar(155) NOT NULL,
  `organization_cover` varchar(155) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `organizations`
--

INSERT INTO `organizations` (`organization_id`, `user_id`, `organization_name`, `organization_profile`, `organization_cover`) VALUES
(1, 61, 'Sagip Kapamilya Foundation Inc.', 'sagip.png', 'cover.jpg'),
(2, 61, 'Bantay Bata 168', '2.jpg', 'yeye');

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE IF NOT EXISTS `user_info` (
`id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL,
  `user` varchar(15) NOT NULL,
  `profile_pic` varchar(155) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`id`, `name`, `gender`, `email`, `password`, `user`, `profile_pic`) VALUES
(9, 'Conrado Acedo IV', 'Male', 'rado@gmail.com', 'janice', 'coordinator', ''),
(11, 'Jaa', 'Female', 'jaaaa@gmail.com', '12345678', 'volunteer', ''),
(58, 'gagagaga', 'Female', 'vatsbsus@ggail.com', 'gahahaha', 'volunteer', ''),
(59, 'hehehe', 'Female', 'hahahaha@gamio.com', 'hajajaja', 'volunteer', ''),
(60, 'hahahahah', 'Female', 'gahahaga@gamul.com', 'hahahahh', 'volunteer', ''),
(61, 'Joyce Ann S. Potestades', 'Female', 'joycen@gmail.com', 'joycejoyce', 'coordinator', 'joyce.jpg'),
(62, 'Jewel Alexa Potestades', 'Female', 'jewel@gmail.com', 'adminadmin', 'Coordinator', ''),
(63, 'Jewel Alexa Potestades', 'Female', 'jewevgl@gmail.com', 'adminadmin', 'Coordinator', ''),
(64, 'Joyceeee', 'Female', 'gggggh@gmail.com', 'hwhehehe', 'Volunteer', '');

-- --------------------------------------------------------

--
-- Table structure for table `volunteers`
--

CREATE TABLE IF NOT EXISTS `volunteers` (
`volunteer_id` int(11) NOT NULL,
  `volunteer_type` varchar(11) NOT NULL,
  `volunteer_name` varchar(155) NOT NULL,
  `volunteer_address` varchar(155) NOT NULL,
  `volunteer_skills` varchar(155) NOT NULL,
  `volunteer_profilepic` varchar(155) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `volunteers`
--

INSERT INTO `volunteers` (`volunteer_id`, `volunteer_type`, `volunteer_name`, `volunteer_address`, `volunteer_skills`, `volunteer_profilepic`) VALUES
(1, 'coordinator', 'Joyce Ann Potestades', 'Real, Quezon', 'Doctor', 'joyce.jpg'),
(2, 'volunteer', 'Janice Jean Velarde', 'Sta. Barbara, Zambales', 'Nurse', 'janice.jpg'),
(4, 'volunteer', 'Mordecai Rufa', 'Bulacan', 'Doctor', 'mor.jpg'),
(5, 'volunteer', 'Conrado Acedo', 'Manila', 'Doctor', 'rado.jpg'),
(6, 'volunteer', 'Jason Patrick Lopez', 'Bacood, Sta. Mesa, Manila', 'Teacher', 'jason.jpg'),
(7, 'volunteer', 'Amanda T. Asis', 'Tanauan, Quezon', 'Nurse', 'bada.jpg'),
(8, 'volunteer', 'Christian Joshua Andal', 'Real, Quezon', 'Teacher', 'cj.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `applications`
--
ALTER TABLE `applications`
 ADD PRIMARY KEY (`application_id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_volunteer`
--
ALTER TABLE `event_volunteer`
 ADD PRIMARY KEY (`event_volunteerID`);

--
-- Indexes for table `organizations`
--
ALTER TABLE `organizations`
 ADD PRIMARY KEY (`organization_id`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `volunteers`
--
ALTER TABLE `volunteers`
 ADD PRIMARY KEY (`volunteer_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `applications`
--
ALTER TABLE `applications`
MODIFY `application_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `event_volunteer`
--
ALTER TABLE `event_volunteer`
MODIFY `event_volunteerID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `organizations`
--
ALTER TABLE `organizations`
MODIFY `organization_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=65;
--
-- AUTO_INCREMENT for table `volunteers`
--
ALTER TABLE `volunteers`
MODIFY `volunteer_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
