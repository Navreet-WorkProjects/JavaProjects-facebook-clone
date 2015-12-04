-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 04, 2015 at 05:09 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `socialcommunity`
--

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE IF NOT EXISTS `comment` (
  `COMMENTID` int(11) NOT NULL AUTO_INCREMENT,
  `COMMENT` varchar(255) DEFAULT NULL,
  `COMMENT_DATE` varchar(255) DEFAULT NULL,
  `ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`COMMENTID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `page`
--

CREATE TABLE IF NOT EXISTS `page` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `FIRST_NAME` varchar(255) DEFAULT NULL,
  `Gender` varchar(255) DEFAULT NULL,
  `LAST_NAME` varchar(255) DEFAULT NULL,
  `Password` varchar(255) DEFAULT NULL,
  `USERNAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `person`
--

CREATE TABLE IF NOT EXISTS `person` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DOB` varchar(255) DEFAULT NULL,
  `EMAIL` varchar(255) DEFAULT NULL,
  `FIRST_NAME` varchar(255) DEFAULT NULL,
  `GENDER` varchar(255) DEFAULT NULL,
  `LAST_NAME` varchar(255) DEFAULT NULL,
  `PASSWORD` varchar(255) DEFAULT NULL,
  `STATUS` varchar(255) DEFAULT NULL,
  `USERNAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `USERNAME` (`USERNAME`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `person`
--

INSERT INTO `person` (`ID`, `DOB`, `EMAIL`, `FIRST_NAME`, `GENDER`, `LAST_NAME`, `PASSWORD`, `STATUS`, `USERNAME`) VALUES
(13, '12/01/1986', 'arpithparikh@gmail.com', 'Navreet', 'female', 'Kaur', 'd917cd677d30fd55b67bcb3b09571a3b35bd777294bce234d2253cc582b0f58a', 'ACTIVE', 'admin1'),
(15, '12/01/1986', 'arpithparikh@gmail.com', 'Rajat', 'male', 'Vij', 'd917cd677d30fd55b67bcb3b09571a3b35bd777294bce234d2253cc582b0f58a', 'ACTIVE', 'rajatvij'),
(16, '10/12/1992', 'xyu5@gwu.edu', 'xiaobei', 'female', 'yu', 'd917cd677d30fd55b67bcb3b09571a3b35bd777294bce234d2253cc582b0f58a', 'ACTIVE', 'xiaobei1'),
(17, '10/12/1992', 'magan@gmail.com', 'MAGAN', 'male', 'SHAH', 'd917cd677d30fd55b67bcb3b09571a3b35bd777294bce234d2253cc582b0f58a', 'ACTIVE', 'maganshah'),
(18, '25/03/1992', 'apoorvak1992@gmail.com', 'apoorva', 'male', 'channankaiah', '05294c39d4dc1eee7b85635ca03b46e1ae6dc4b9664cbbbbcbcfb857f508e7e8', 'ACTIVE', 'appu12'),
(19, '12/01/1986', 'arpithparikh@gmail.com', 'Nak', 'male', 'Lak', 'd917cd677d30fd55b67bcb3b09571a3b35bd777294bce234d2253cc582b0f58a', 'ACTIVE', 'naklak'),
(20, '10/12/1992', 'arpithparikh@gmail.com', 'ARPIT ', 'male', 'PARIKH', 'd917cd677d30fd55b67bcb3b09571a3b35bd777294bce234d2253cc582b0f58a', 'BLOCK', 'arpithparikh');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE IF NOT EXISTS `post` (
  `POSTID` int(11) NOT NULL AUTO_INCREMENT,
  `POST` varchar(255) DEFAULT NULL,
  `POST_DATE` varchar(255) DEFAULT NULL,
  `PERSON_ID` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`POSTID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`POSTID`, `POST`, `POST_DATE`, `PERSON_ID`) VALUES
(13, 'Hi! I am new to the community.', '1449107889843', 'arpithparikh'),
(14, 'Hi I am new too..', '1449108166395', 'rajatsingh'),
(15, 'HI I am new to community!', '1449162974517', 'xiaobei1'),
(16, 'Test', '10-11-2015', '1'),
(17, 'Test', '10-11-2015', '1'),
(18, 'Test', '10-11-2015', '1'),
(19, 'Test', '10-11-2015', '1'),
(20, 'HI!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!', '1449166576665', 'appu12'),
(21, 'Hi, All', '1449167763813', 'naklak'),
(22, 'Hi Welcome to community!', '1449180206675', 'arpithparikh');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
