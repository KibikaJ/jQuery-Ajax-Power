-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 23, 2019 at 09:55 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `display_images`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `book_id` int(10) UNSIGNED NOT NULL,
  `book_name` varchar(50) NOT NULL,
  `author` varchar(50) NOT NULL,
  `category` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`book_id`, `book_name`, `author`, `category`) VALUES
(1, 'Secondary English', 'Kwamboka', 'English'),
(2, 'Secondary Mathematics', 'Kibika', 'Mathematics'),
(3, 'Hard Times', 'Charles Dickens', 'Literature'),
(4, 'New General Mathematics', 'Channon', 'Mathematics'),
(5, 'Things Fall Apart', 'Chinua Achebe', 'Literature'),
(6, 'Bob Wine', 'Bobby', 'Literature');

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `brand_id` int(11) NOT NULL,
  `brand_name` varchar(250) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`brand_id`, `brand_name`) VALUES
(1, 'Samsung'),
(2, 'Sony'),
(3, 'Motorola'),
(4, 'Xiaomi');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `city_id` int(11) NOT NULL,
  `state_id` int(11) NOT NULL,
  `city_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1=Active | 0=Inactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`city_id`, `state_id`, `city_name`, `status`) VALUES
(1, 1, 'Nairobi', 1),
(2, 2, 'Dodoma', 1),
(3, 3, 'Kampala', 1),
(4, 4, 'Kigali', 1),
(5, 5, 'Bujumbura', 1);

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `country_id` int(11) NOT NULL,
  `country_name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1=Active | 0=Inactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`country_id`, `country_name`, `status`) VALUES
(1, 'Kenya', 1),
(2, 'Tanzania', 1),
(3, 'Uganda', 1),
(4, 'Rwanda', 1),
(5, 'Burundi', 1);

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `id` int(11) NOT NULL,
  `country_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `country_name`) VALUES
(1, 'Brazil'),
(2, 'China'),
(3, 'France'),
(4, 'India'),
(5, 'USA');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `no` int(30) NOT NULL,
  `postid` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`no`, `postid`) VALUES
(1, 'Kibika'),
(2, 'Wanjala'),
(5, 'Johnstone');

-- --------------------------------------------------------

--
-- Table structure for table `persons`
--

CREATE TABLE `persons` (
  `personId` int(10) NOT NULL,
  `firstName` varchar(40) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `age` int(3) NOT NULL,
  `gender` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `persons`
--

INSERT INTO `persons` (`personId`, `firstName`, `lastName`, `age`, `gender`) VALUES
(1, 'English', '1', 101, 'Paper 1'),
(2, 'English', '2', 101, 'Paper 2'),
(3, 'English', '3', 101, 'Paper 3'),
(4, 'Kiswahili', '1', 102, 'Paper 1'),
(5, 'Kiswahili', '2', 102, 'Lugha'),
(6, 'Kiswahili', '3', 102, 'Fasihi'),
(7, 'Mathematics', '1', 121, 'Paper 1'),
(8, 'Mathematics', '2', 121, 'Paper 2');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(250) NOT NULL,
  `brand_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `brand_id`) VALUES
(1, 'Samsung Galaxy A9', 1),
(2, 'Samsung Galaxy S7', 1),
(3, 'Samsung Galaxy S6 edge', 1),
(4, 'Xperia Z5 Premium', 2),
(5, 'Xperia M5 Dual', 2),
(6, 'Xperia C5 uplta', 2),
(7, 'Moto G Turbo', 3),
(8, 'Moto X Force', 3),
(9, 'Redmi 3 Pro', 4),
(10, 'Mi 5', 4);

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `countryID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`id`, `name`, `countryID`) VALUES
(1, 'Sao Paulo', 1),
(2, 'Rio de Janeiro', 1),
(3, 'Ceara', 1),
(4, 'Santa Catarina', 1),
(5, 'Espirito Santo', 1),
(6, 'Beijing', 2),
(7, 'Hebei', 2),
(8, 'Jiangsu', 2),
(9, 'Guangdong', 2),
(10, 'Guangdong', 2),
(11, 'Ile-de-France', 3),
(12, 'Midi-Pyrenees', 3),
(13, 'Picardie', 3),
(14, 'Franche-Comte', 3),
(15, 'Alsace', 3),
(16, 'Haryana', 4),
(17, 'Andhra Pradesh', 4),
(18, 'Delhi', 4),
(19, 'Tamil Nadu', 4),
(20, 'Uttar Pradesh', 4),
(21, 'California', 5),
(22, 'Iowa', 5),
(23, 'New York4', 5),
(24, 'New Jersey', 5),
(25, 'Massachusetts', 5);

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `state_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `state_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1=Active | 0=Inactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`state_id`, `country_id`, `state_name`, `status`) VALUES
(1, 1, 'Nairobi', 1),
(2, 2, 'Dodoma', 1),
(3, 3, 'Kampala', 1),
(4, 4, 'Kigali', 1),
(5, 5, 'Bujumbura', 1),
(6, 1, 'Mombasa', 1),
(7, 1, 'Kisumu', 1);

-- --------------------------------------------------------

--
-- Table structure for table `table1`
--

CREATE TABLE `table1` (
  `name` varchar(100) NOT NULL,
  `images1` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `table1`
--

INSERT INTO `table1` (`name`, `images1`) VALUES
('firstimage', 'pictures/desert.jpg'),
('secondimage', 'pictures/triangle.jpg'),
('third image', 'gradient.jpg'),
('thirdimage', 'pictures/gradient.jpg'),
('thirdimage', 'pictures/gradient.jpg'),
('fourthimage', 'error'),
('fourthimage', 'pictures/error'),
('fifthimage', 'pictures/fractions.jpg'),
('sixthimage', 'pictures/integers.jpg'),
('seventhimage', 'pictures/radians.jpg'),
('seventhimage', 'pictures/radians'),
('eightyimage', 'pictures/radians.gif');

-- --------------------------------------------------------

--
-- Table structure for table `table2`
--

CREATE TABLE `table2` (
  `imageId` int(11) UNSIGNED NOT NULL,
  `subtopicId` int(11) NOT NULL,
  `images1` varchar(30) NOT NULL,
  `subjectCode` int(12) NOT NULL,
  `paper` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `table2`
--

INSERT INTO `table2` (`imageId`, `subtopicId`, `images1`, `subjectCode`, `paper`) VALUES
(1, 1, 'pictures/fm1111.jpg', 121, 1),
(2, 2, 'pictures/fm1221.jpg', 121, 1),
(3, 3, 'pictures/fm1222.jpg', 121, 1),
(4, 4, 'pictures/fm1411.jpg', 121, 1),
(5, 7, 'pictures/fm1755.jpg', 121, 1),
(6, 6, 'pictures/fm1631.jpg', 121, 1),
(7, 7, 'pictures/fm1751.jpg', 121, 1),
(9, 1, 'pictures/fm1112.jpg', 121, 1),
(10, 1, 'pictures/fm1113.jpg', 121, 1),
(11, 1, 'pictures/fm1161.jpg', 121, 1),
(12, 1, 'pictures/fm1151.jpg', 121, 1),
(13, 1, 'pictures/fm1162.jpg', 121, 1),
(14, 2, 'pictures/fm1223.jpg', 121, 1),
(15, 2, 'pictures/fm1224.jpg', 121, 1),
(16, 4, 'pictures/fm1412.jpg', 121, 1),
(17, 4, 'pictures/fm1413.jpg', 121, 1),
(18, 4, 'pictures/fm1414.jpg', 121, 1),
(19, 5, 'pictures/fm1531.jpg', 121, 1),
(20, 5, 'pictures/fm1532.jpg', 121, 1),
(21, 5, 'pictures/fm1533.jpg', 121, 1),
(22, 5, 'pictures/fm1534.jpg', 121, 1),
(23, 5, 'pictures/fm1535.jpg', 121, 1),
(24, 5, 'pictures/fm1536.jpg', 121, 1),
(25, 5, 'pictures/fm1537.jpg', 121, 1),
(26, 5, 'pictures/fm1538.jpg', 121, 1),
(27, 5, 'pictures/fm1539.jpg', 121, 1),
(28, 5, 'pictures/fm15310.jpg', 121, 1),
(29, 5, 'pictures/fm15311.jpg', 121, 1),
(30, 5, 'pictures/fm15312.jpg', 121, 1),
(31, 7, 'pictures/fm1752.jpg', 121, 1),
(32, 5, 'pictures/fm1533.jpg', 121, 1),
(33, 7, 'pictures/fm1771.jpg', 121, 1),
(34, 7, 'pictures/fm1772.jpg', 121, 1),
(35, 7, 'pictures/fm1773.jpg', 121, 1),
(36, 7, 'pictures/fm1774.jpg', 121, 1),
(37, 7, 'pictures/fm1754.jpg', 121, 1),
(38, 8, 'pictures/fm1831.jpg', 121, 1),
(39, 8, 'pictures/fm1861.jpg', 121, 1),
(40, 8, 'pictures/fm1851.jpg', 121, 1),
(41, 8, 'pictures/fm1821.jpg', 121, 1),
(42, 8, 'pictures/fm1852.jpg', 121, 1),
(43, 8, 'pictures/fm1822.jpg', 121, 1),
(44, 7, 'pictures/fm1753.jpg', 121, 1);

-- --------------------------------------------------------

--
-- Table structure for table `table3`
--

CREATE TABLE `table3` (
  `topicId` int(11) NOT NULL,
  `topic` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `table3`
--

INSERT INTO `table3` (`topicId`, `topic`) VALUES
(1, 'Natural Numbers '),
(2, 'Factors'),
(3, 'Divisibility Tests '),
(4, 'Greatest Common Divisor'),
(5, 'Least Common Multiple'),
(6, 'Integers'),
(7, 'Fractions '),
(8, 'Decimals'),
(9, 'Squares and Square Roots'),
(10, 'Algebraic Expressions');

-- --------------------------------------------------------

--
-- Table structure for table `tblcform`
--

CREATE TABLE `tblcform` (
  `cform_id` int(11) NOT NULL,
  `cform_name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1=Active | 0=Inactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tblcform`
--

INSERT INTO `tblcform` (`cform_id`, `cform_name`, `status`) VALUES
(1, 'One', 1),
(2, 'Two', 1),
(3, 'Three', 1),
(4, 'Four', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblsections`
--

CREATE TABLE `tblsections` (
  `sectionId` varchar(10) NOT NULL,
  `subjectCode` int(12) NOT NULL,
  `paper` int(1) NOT NULL,
  `marks` int(3) NOT NULL,
  `numOfQuestions` int(5) NOT NULL,
  `compulsoryQuestion` int(1) DEFAULT NULL,
  `sectionInstruction` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsections`
--

INSERT INTO `tblsections` (`sectionId`, `subjectCode`, `paper`, `marks`, `numOfQuestions`, `compulsoryQuestion`, `sectionInstruction`) VALUES
('I', 121, 1, 50, 16, 0, ''),
('I', 121, 2, 50, 16, NULL, 'Answer ALL questions in this section'),
('II', 121, 1, 80, 8, NULL, 'Answer ANY 5 Questions from this section'),
('II', 121, 2, 80, 8, NULL, 'Answer ANY Five Questions from this section');

-- --------------------------------------------------------

--
-- Table structure for table `tblsform`
--

CREATE TABLE `tblsform` (
  `sform_id` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `cform_id` int(11) NOT NULL,
  `stream_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1=Active | 0=Inactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tblsform`
--

INSERT INTO `tblsform` (`sform_id`, `cform_id`, `stream_name`, `status`) VALUES
('1B', 1, 'Blue', 1),
('1R', 1, 'Red', 1),
('1W', 1, 'White', 1),
('2B', 2, 'Blue', 1),
('2R', 2, 'Red', 1),
('2W', 2, 'White', 1),
('3B', 3, 'Blue', 1),
('3R', 3, 'Red', 1),
('3W', 3, 'White', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblstudent`
--

CREATE TABLE `tblstudent` (
  `student_id` int(11) NOT NULL,
  `sname` varchar(255) CHARACTER SET utf8 NOT NULL,
  `cform_id` int(11) NOT NULL,
  `sform_id` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(250) CHARACTER SET utf8 NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1=Active | 0=Inactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tblstudent`
--

INSERT INTO `tblstudent` (`student_id`, `sname`, `cform_id`, `sform_id`, `address`, `status`) VALUES
(1, 'Abuga Bosibori', 1, '1B', 'Box 100 Homa Bay ', 1),
(2, 'Angasa Nyaboke', 2, '2B', 'Box 20 Sondu', 1),
(3, 'Ayieko Bosibori', 2, '2R', 'Box 50 Ogembo', 1),
(4, 'Bichanga Mogendi', 3, '3W', 'Box 500 Kitale ', 1),
(5, 'Juma Wycliffe', 1, '1R', 'Box 200 Kisumu', 1),
(6, 'Kebati Kwamboka', 2, '2W', 'Box 150 Nyamiri', 1),
(7, 'Kemue Mecheo', 3, '3B', 'Box 115 Migori', 1),
(8, 'Happiness Bosibori', 3, '3R', 'Box 120 Kogoi', 1),
(9, 'Janet Magare', 1, '1W', 'Box 111 Tuko ', 1),
(10, 'Kemue Nyakina', 1, '1B', 'Box 121 Mboyo', 1),
(11, 'Damacline Ondabu ', 2, '2B', 'Box 119 Bibo', 1),
(12, 'Ruth Kenyanya', 3, '3B ', 'Box 117 Kocho', 1),
(13, 'Damaris Kwamboka ', 1, '1R', 'Box 127 Bibo', 1),
(14, 'Getrude Kwamboka', 2, '2R', 'Box 101 Tuko', 1),
(15, 'Salome Omweri', 3, '3R', 'Box 115 Migori', 1),
(16, 'Supedah Kwamboka', 1, '1W', 'Box 200 Kisumu', 1),
(17, 'Brian Abobo', 2, '2W', 'Box 500 Kitale', 1),
(18, 'Agnes Magare ', 3, '3W', 'Box 500 Ogembo', 1),
(19, 'Evans Nyandoro', 1, '1B', 'Box 20 Sondu', 1),
(20, 'Kevin Kagai', 2, '2B', 'Box 1 Miruka', 1),
(21, 'Sydinah Makori', 3, '3B', 'Box 150 Nyamiri', 1),
(22, 'Feinline Kerubo', 1, '1R', 'Box 2 Kwetu', 1),
(23, 'Alice Mauti', 2, '2R', 'Box 3 Boi', 1),
(24, 'Roseline Nyanchera', 3, '3R', 'Box 21 Kito', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblsubjectpapers`
--

CREATE TABLE `tblsubjectpapers` (
  `subjectId` int(12) NOT NULL,
  `paper` int(1) NOT NULL,
  `paperTitle` varchar(30) NOT NULL,
  `examTimeDuration` varchar(10) NOT NULL,
  `subjectCode` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsubjectpapers`
--

INSERT INTO `tblsubjectpapers` (`subjectId`, `paper`, `paperTitle`, `examTimeDuration`, `subjectCode`) VALUES
(101, 1, '', '', 101),
(101, 2, '', '', 101),
(101, 3, '', '', 101),
(102, 1, 'Insha', '', 102),
(102, 2, '', '', 102),
(102, 3, '', '', 102),
(121, 1, '', '', 121),
(121, 2, '', '', 121),
(231, 1, '', '', 231),
(231, 2, '', '', 231),
(231, 3, '', '', 231),
(232, 1, '', '', 232),
(232, 2, '', '', 232),
(232, 3, '', '', 232),
(233, 1, '', '', 233),
(233, 2, '', '', 233),
(233, 3, '', '', 233),
(311, 1, '', '', 311),
(311, 2, '', '', 311),
(312, 1, '', '', 312),
(312, 2, '', '', 312),
(313, 1, '', '', 313),
(313, 2, '', '', 313),
(443, 1, '', '', 443),
(443, 2, '', '', 443),
(451, 1, '', '', 451),
(451, 2, '', '', 451),
(565, 1, '', '', 565),
(565, 2, '', '', 565);

-- --------------------------------------------------------

--
-- Table structure for table `tblsubjects`
--

CREATE TABLE `tblsubjects` (
  `subjectCode` int(12) NOT NULL,
  `subjectName` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsubjects`
--

INSERT INTO `tblsubjects` (`subjectCode`, `subjectName`) VALUES
(101, 'English'),
(102, 'Kiswahili'),
(121, 'Mathematics'),
(231, 'Biology'),
(232, 'Physics'),
(233, 'Chemistry'),
(311, 'History & Government'),
(312, 'Geography'),
(313, 'Christian Religious Education'),
(443, 'Agriculture'),
(451, 'Computer Studies'),
(565, 'Business Studies');

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `userId` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`userId`, `name`, `address`) VALUES
(1, 'Abuga Bosibori', 'Box 100 Ogembo'),
(2, 'Angasa Nyaboke', 'Box 20 Kenyenya '),
(3, 'Ayieko Bosibori', 'Box 50 Nairobi'),
(4, 'Bichanga Mogendi ', 'Box 500 Kisii'),
(5, 'Juma Wycliffe ', 'Box 200 Kisumu'),
(6, 'Kebati Kwamboka ', 'Box 150 Nyamira '),
(7, 'Kemue Mecheo', 'Box 115 Mombasa ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`city_id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `persons`
--
ALTER TABLE `persons`
  ADD PRIMARY KEY (`personId`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`state_id`);

--
-- Indexes for table `table2`
--
ALTER TABLE `table2`
  ADD PRIMARY KEY (`imageId`);

--
-- Indexes for table `table3`
--
ALTER TABLE `table3`
  ADD PRIMARY KEY (`topicId`);

--
-- Indexes for table `tblcform`
--
ALTER TABLE `tblcform`
  ADD PRIMARY KEY (`cform_id`);

--
-- Indexes for table `tblsections`
--
ALTER TABLE `tblsections`
  ADD PRIMARY KEY (`sectionId`,`subjectCode`,`paper`);

--
-- Indexes for table `tblsform`
--
ALTER TABLE `tblsform`
  ADD PRIMARY KEY (`sform_id`);

--
-- Indexes for table `tblstudent`
--
ALTER TABLE `tblstudent`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `tblsubjectpapers`
--
ALTER TABLE `tblsubjectpapers`
  ADD PRIMARY KEY (`subjectId`,`paper`);

--
-- Indexes for table `tblsubjects`
--
ALTER TABLE `tblsubjects`
  ADD PRIMARY KEY (`subjectCode`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`userId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `book_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `brand_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `city_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `no` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `persons`
--
ALTER TABLE `persons`
  MODIFY `personId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `state_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `table2`
--
ALTER TABLE `table2`
  MODIFY `imageId` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `table3`
--
ALTER TABLE `table3`
  MODIFY `topicId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tblcform`
--
ALTER TABLE `tblcform`
  MODIFY `cform_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblstudent`
--
ALTER TABLE `tblstudent`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `userId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
