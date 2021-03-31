-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 29, 2021 at 11:54 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mitry_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `assign`
--

CREATE TABLE `assign` (
  `sold_id` int(11) NOT NULL,
  `type` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `assign`
--

INSERT INTO `assign` (`sold_id`, `type`) VALUES
(10045, 'Soldier'),
(10305, 'Captain'),
(10345, 'Lieutenant'),
(10923, 'Major General'),
(11002, 'Soldier'),
(11045, 'Soldier'),
(11046, 'Captain'),
(11053, 'Soldier'),
(11088, 'Soldier'),
(11145, 'Brigadier'),
(11238, 'Captain'),
(11305, 'Havildar'),
(12005, 'Colonel'),
(12045, 'Soldier'),
(12051, 'Soldier'),
(12105, 'Major'),
(12115, 'Soldier'),
(12245, 'Soldier'),
(12300, 'Soldier'),
(12345, 'Lieutenant'),
(12356, 'Captain'),
(12398, 'Soldier'),
(12402, 'Captain'),
(12498, 'Soldier'),
(13011, 'Captain'),
(13023, 'Soldier'),
(13043, 'Soldier'),
(13045, 'Havildar'),
(13423, 'Soldier'),
(13424, 'Soldier'),
(14245, 'Soldier'),
(14255, 'Captain'),
(14256, 'Captain'),
(14298, 'Lieutenant General'),
(14345, 'Soldier'),
(19338, 'Soldier'),
(19339, 'Soldier'),
(21040, 'Soldier'),
(21045, 'Soldier'),
(21474, 'Field Marshal'),
(22045, 'Major'),
(22192, 'Soldier'),
(22513, 'Soldier'),
(23432, 'Soldier'),
(27989, 'Captain'),
(28613, 'Soldier'),
(29603, 'Soldier'),
(31931, 'Soldier'),
(33728, 'Brigadier'),
(33994, 'Soldier'),
(33998, 'Soldier'),
(36099, 'Havildar'),
(40386, 'Soldier'),
(48563, 'Colonel'),
(49158, 'Captain'),
(49159, 'Major General');

-- --------------------------------------------------------

--
-- Table structure for table `batallian`
--

CREATE TABLE `batallian` (
  `batallion_name` varchar(50) NOT NULL,
  `captain_id` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `total_capacity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `batallian`
--

INSERT INTO `batallian` (`batallion_name`, `captain_id`, `year`, `total_capacity`) VALUES
('brigde of gards', 36099, 1948, 400),
('dogra regiment', 49159, 1877, 2459),
('gorkha rifles', 19339, 1815, 3000),
('grenardies regiment', 14256, 1758, 1000),
('jat regiment ', 33998, 1818, 897),
('madras regiment', 28613, 1945, 600),
('marath light infantry', 48563, 1768, 1200),
('panjab regiment', 11046, 1775, 6545),
('parachute regiment', 12345, 1941, 600),
('rajaputana rifles', 23432, 1789, 769),
('rajput regiment ', 33728, 1775, 200),
('sick light infra', 31931, 1846, 433),
('sick regiment', 40386, 1777, 675);

-- --------------------------------------------------------

--
-- Table structure for table `catagory`
--

CREATE TABLE `catagory` (
  `name` varchar(50) NOT NULL,
  `class` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `catagory`
--

INSERT INTO `catagory` (`name`, `class`) VALUES
('Glock-18', 'Pistol'),
('Dual Berettas', 'Pistol'),
('P250', 'Pistol'),
('Tec-9', 'Pistol'),
('CZ75-Auto', 'Pistol'),
('Desert Eagle', 'Pistol'),
('R8 Revolver', 'Pistol'),
('USP-S', 'Pistol'),
('P2000', 'Pistol'),
('Five-Seven', 'Pistol'),
('Nova', 'Heavy'),
('XM1014', 'Heavy'),
('Sawed-Off', 'Heavy'),
('M249', 'Heavy'),
('Negev', 'Heavy'),
('MAG-7', 'Heavy'),
('MAC-10', 'submachine gun'),
('MP7', 'submachine gun'),
('UMP-45', 'submachine gun'),
('P90', 'submachine gun'),
('PP-Bizon', 'submachine gun'),
('MP9', 'submachine gun'),
('Galil AR', 'rifles'),
('AK-47', 'rifles'),
('SSG 08', 'rifles'),
('SG 553', 'rifles'),
('AWP', 'rifles'),
('G3SG1', 'rifles'),
('FAMAS', 'rifles'),
('M4A4', 'rifles'),
('M4A1-S', 'rifles'),
('AUG', 'rifles'),
('SCAR-20 ', 'rifles');

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `company_name` varchar(50) NOT NULL,
  `country_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`company_name`, `country_name`) VALUES
('Bersa', 'Argentina'),
('Boeing Australia', 'Australia'),
('Steyr Mannlicher', 'Austria'),
('MDI Azerbaijan', 'Azerbaijan'),
('Defence Advancement Trading Company (DATCO)', 'Bangladesh'),
('Fabrique Nationale de Herstal', 'Belgium'),
('Pretis dd', 'Bosnia and Herzegovi'),
('Avibras', 'Brazil'),
('TEREM', 'Bulgaria'),
('Hindustan Aeronautics Limited', 'India'),
('HMT', 'America');

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `w_id` int(11) NOT NULL,
  `ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`w_id`, `ID`) VALUES
(1053, 19339),
(1054, 36099),
(1055, 12345),
(1056, 28613),
(1057, 14256),
(1058, 48563),
(1059, 33728),
(1060, 23432),
(1061, 33998),
(1062, 40386),
(1063, 31931),
(1064, 49159),
(1065, 19338),
(1066, 21474),
(1067, 12498),
(1068, 14298),
(1069, 33994),
(1070, 12398),
(1071, 13424),
(1072, 49158),
(1073, 29603),
(1074, 22513),
(1075, 27989),
(1076, 12245),
(1077, 10305),
(1078, 12051),
(1079, 12300),
(1080, 10923),
(1081, 11053),
(1082, 13423),
(1083, 12105),
(1084, 14345),
(1065, 11145),
(1066, 12115),
(1067, 12045),
(1068, 10345),
(1069, 10045),
(1062, 12005),
(1065, 11305),
(1064, 11045),
(1069, 21045);

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `pincode` int(11) NOT NULL CHECK (100000 <= `pincode` and `pincode` <= 999999),
  `district` varchar(30) NOT NULL,
  `state` varchar(30) NOT NULL,
  `country` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`pincode`, `district`, `state`, `country`) VALUES
(382421, 'Gandhinagar', 'Gujarat', 'India'),
(382422, 'Allahabad', 'Uttar Pradesh', 'India'),
(382423, 'Bakora Steel City', 'Jharkhand', 'India'),
(382424, 'patna', 'Bihar', 'India'),
(382425, 'jabalpur', 'Madhya Pradesh', 'India'),
(382426, 'Imphal', 'Manipur', 'India'),
(382427, 'Pune', 'Mumbai', 'India'),
(382428, 'Delhi', 'Delhi', 'India'),
(382429, 'Kargil', 'J&K', 'India'),
(382430, 'Danapur', 'Bihar', 'India'),
(382431, 'Gangtok', 'Sikkim', 'India'),
(382432, 'Ganganagar', 'Rajasthan', 'India'),
(382433, 'Kohima', 'Nagaland', 'India'),
(382434, 'Roorkee', 'Uttarakhand', 'India'),
(382436, 'Durgapur', 'Westbangal', 'India'),
(382437, 'Chiniot', 'Panjab', 'India');

-- --------------------------------------------------------

--
-- Table structure for table `manufacturing`
--

CREATE TABLE `manufacturing` (
  `w_id` int(11) NOT NULL,
  `manufacturing_date` date NOT NULL,
  `manufacturing_location` varchar(50) NOT NULL,
  `c_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `manufacturing`
--

INSERT INTO `manufacturing` (`w_id`, `manufacturing_date`, `manufacturing_location`, `c_name`) VALUES
(1053, '2000-01-01', 'Argentina', 'Bersa'),
(1054, '2001-02-02', 'Australia', 'Boeing Australia'),
(1055, '2005-03-03', 'Austria', 'Steyr Mannlicher'),
(1056, '2002-04-04', 'Azerbaijan', 'MDI Azerbaijan'),
(1057, '2003-05-05', 'Bangladesh', 'Defence Advancement Trading Company (DATCO)'),
(1058, '2001-06-06', 'Belgium', 'Fabrique Nationale de Herstal'),
(1059, '2002-07-07', 'Bosnia and Herzegovina', 'Pretis dd'),
(1060, '2006-08-08', 'Brazil', 'Avibras'),
(1061, '2005-09-09', 'Bulgaria', 'TEREM'),
(1062, '2001-10-10', 'India', 'Hindustan Aeronautics Limited'),
(1063, '2000-11-11', 'Argentina', 'Bersa'),
(1064, '2003-12-12', 'Australia', 'Boeing Australia'),
(1065, '2005-01-13', 'Austria', 'Steyr Mannlicher'),
(1066, '2002-02-14', 'Azerbaijan', 'MDI Azerbaijan'),
(1067, '2001-03-15', 'Bangladesh', 'Defence Advancement Trading Company (DATCO)'),
(1068, '2004-04-16', 'Belgium', 'Fabrique Nationale de Herstal'),
(1069, '2003-05-17', 'Bosnia and Herzegovina', 'Pretis dd'),
(1070, '2006-06-18', 'Brazil', 'Avibras'),
(1071, '2002-07-19', 'Bulgaria', 'TEREM'),
(1072, '2000-08-20', 'India', 'Hindustan Aeronautics Limited'),
(1073, '2001-09-21', 'Argentina', 'Bersa'),
(1074, '2005-10-22', 'Australia', 'Boeing Australia'),
(1075, '2004-11-23', 'Austria', 'Steyr Mannlicher'),
(1076, '2006-12-24', 'Azerbaijan', 'MDI Azerbaijan'),
(1077, '2003-01-25', 'Bangladesh', 'Defence Advancement Trading Company (DATCO)'),
(1078, '2004-02-26', 'Belgium', 'Fabrique Nationale de Herstal'),
(1079, '2001-03-27', 'Bosnia and Herzegovina', 'Pretis dd'),
(1080, '2003-04-28', 'Brazil', 'Avibras'),
(1081, '2002-05-01', 'Bulgaria', 'TEREM'),
(1082, '2001-06-02', 'India', 'Hindustan Aeronautics Limited'),
(1083, '2006-07-03', 'India', 'Hindustan Aeronautics Limited'),
(1084, '2003-08-04', 'India', 'Hindustan Aeronautics Limited'),
(1085, '2004-09-05', 'India', 'Hindustan Aeronautics Limited');

-- --------------------------------------------------------

--
-- Table structure for table `medal`
--

CREATE TABLE `medal` (
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `medal`
--

INSERT INTO `medal` (`name`) VALUES
('Ashok Chakra Award '),
('Ati Vishisht Seva Medal '),
('Bharat Award '),
('Jeevan Raksha Padak'),
('Kirti Chakra '),
('Sarvottam Jeevan Raksha Padak'),
('Sarvottam Yudh Seva Medal'),
('Shaurya Chakra '),
('Uttam Jeevan Raksha Padak'),
('Vishisht Seva Medal'),
('Yudh Seva Medal');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `soldier_id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL CHECK (char_length(`password`) > 8),
  `phone_no` varchar(15) NOT NULL,
  `soldier_rank` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`first_name`, `last_name`, `soldier_id`, `email`, `password`, `phone_no`, `soldier_rank`) VALUES
('darshan', 'a', 0, 'Darshanavddp@gmail.com', 'Darshan@01', '8296058148', 'Lieutenant'),
('hj', 'jd', 45, 'hi', 'ysgdsyugdqs', '783739', 'Captain'),
('vamshi', 'krishna', 1234, 'vamshikrishna.engineer@gmail.com', 'Vamshi@01', '1623879300', 'Lieutenant');

-- --------------------------------------------------------

--
-- Table structure for table `reward`
--

CREATE TABLE `reward` (
  `r_name` varchar(50) NOT NULL,
  `id` int(11) NOT NULL,
  `year` int(11) NOT NULL CHECK (`year` >= 1000 and `year` <= 5000)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reward`
--

INSERT INTO `reward` (`r_name`, `id`, `year`) VALUES
('Ashok Chakra Award ', 19339, 2001),
('Yudh Seva Medal', 36099, 2001),
('Jeevan Raksha Padak', 12345, 2001),
('Ashok Chakra Award ', 28613, 2001),
('Jeevan Raksha Padak', 14256, 2001),
('Ati Vishisht Seva Medal ', 48563, 2001),
('Kirti Chakra ', 33728, 2001),
('Sarvottam Yudh Seva Medal', 23432, 2001),
('Ashok Chakra Award ', 33998, 2001),
('Shaurya Chakra ', 40386, 2001),
('Ashok Chakra Award ', 31931, 2008),
('Sarvottam Yudh Seva Medal', 49159, 2008),
('Kirti Chakra ', 19338, 2008),
('Ashok Chakra Award ', 21474, 2008),
('Yudh Seva Medal', 12498, 2008),
('Ashok Chakra Award ', 14298, 2008),
('Sarvottam Yudh Seva Medal', 33994, 2009),
('Kirti Chakra ', 12398, 2009),
('Ati Vishisht Seva Medal ', 13424, 2009),
('Bharat Award ', 49158, 2009),
('Ashok Chakra Award ', 29603, 2009),
('Yudh Seva Medal', 22513, 2009),
('Sarvottam Jeevan Raksha Padak', 27989, 2016),
('Shaurya Chakra ', 12245, 2016),
('Bharat Award ', 10305, 2001),
('Kirti Chakra ', 12051, 2001),
('Sarvottam Jeevan Raksha Padak', 12300, 2001),
('Shaurya Chakra ', 10923, 2001),
('Ati Vishisht Seva Medal ', 11053, 2011),
('Ashok Chakra Award ', 13423, 2011),
('Jeevan Raksha Padak', 12105, 2011),
('Shaurya Chakra ', 14345, 2011),
('Kirti Chakra ', 11145, 2013),
('Ashok Chakra Award ', 12115, 2013),
('Yudh Seva Medal', 12045, 2013),
('Ashok Chakra Award ', 10345, 2010),
('Sarvottam Yudh Seva Medal', 10045, 2010),
('Shaurya Chakra ', 12005, 2010),
('Kirti Chakra ', 11305, 2003);

-- --------------------------------------------------------

--
-- Table structure for table `soldier`
--

CREATE TABLE `soldier` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `doj` date NOT NULL,
  `squadno` varchar(50) NOT NULL,
  `birth_pincode` int(11) NOT NULL,
  `height` int(11) NOT NULL,
  `weight` int(11) NOT NULL,
  `chest` int(11) NOT NULL,
  `sex` int(1) NOT NULL,
  `dor` date DEFAULT NULL,
  `dob` date NOT NULL,
  `soldier_rank` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `soldier`
--

INSERT INTO `soldier` (`id`, `name`, `doj`, `squadno`, `birth_pincode`, `height`, `weight`, `chest`, `sex`, `dor`, `dob`, `soldier_rank`) VALUES
(10045, 'Shubhandra Vikram', '2007-10-19', 'Rajputana Rifles', 382434, 173, 74, 42, 1, '2045-08-26', '1987-03-11', 'Soldier'),
(10305, 'Vikul Kumar', '2014-10-11', 'Jat Regiment', 382426, 176, 75, 41, 1, '2050-07-16', '1994-01-24', 'Captain'),
(10345, 'Vikram Meena', '2013-06-18', 'Rajputana Rifles', 382433, 176, 88, 40, 1, '2055-09-16', '1992-08-28', 'Lieutenant'),
(10923, 'Disha Singh', '2001-05-25', 'Jat Regiment', 382424, 171, 52, 42, 1, '2041-02-01', '1990-10-02', 'Major General'),
(11045, 'Shivam Singh', '2013-08-29', 'Rajputana Riffles', 382422, 177, 78, 42, 1, '2050-08-26', '1990-08-14', 'Soldier'),
(11046, 'Kilan Ravani', '2011-08-30', 'Sikh Regiment', 382427, 175, 78, 43, 1, '2044-04-16', '1990-03-18', 'Soldier'),
(11145, 'Ankur Ranjan', '2013-10-11', 'Sikh Regiment', 382430, 170, 76, 43, 1, '2050-07-16', '1990-01-14', 'Brigadier'),
(11305, 'Rohit Singh', '2011-01-21', 'Rajput Regiment', 382437, 173, 86, 41, 1, '2056-06-16', '1989-09-14', 'Havildar'),
(12005, 'Vikas Singh', '2015-10-21', 'Rajput Regiment', 382436, 174, 81, 40, 1, '2055-04-26', '1994-07-14', 'Colonel'),
(12045, 'Himanshu Kumar', '2011-08-11', 'Madras Regiment', 382432, 172, 80, 41, 1, '2052-07-16', '1990-03-16', 'Soldier'),
(12051, 'Mayank', '2011-09-21', 'Jat Regiment', 382427, 174, 75, 42, 1, '2045-06-26', '1991-02-24', 'Soldier'),
(12105, 'Yogendra', '2009-06-11', 'Jat Regiment', 382429, 162, 68, 41, 1, '2042-07-26', '1989-02-14', 'Major'),
(12115, 'Anil Kumvat', '2008-10-11', 'Madras Regiment', 382431, 171, 80, 42, 1, '2045-07-16', '1988-06-14', 'Soldier'),
(12245, 'Dheeru', '2010-09-11', 'Jat Regiment', 382425, 172, 78, 43, 1, '2040-06-16', '1990-02-24', 'Soldier'),
(12300, 'Piyush', '2005-09-21', 'Madras Regiment', 382428, 162, 68, 41, 1, '2040-06-16', '1985-01-24', 'Soldier'),
(12398, 'Saurabh Pandit', '2011-04-15', 'Jat Regiment', 382423, 185, 74, 42, 1, '2051-12-11', '1996-03-29', 'Soldier'),
(12498, 'Rajat Talesra', '2008-12-04', 'Sikh Regiment', 382425, 177, 79, 43, 1, '2048-12-10', '1995-01-13', 'Soldier'),
(13045, 'Ayush Mudgal', '2010-09-19', 'Madras Regiment', 382426, 172, 80, 42, 1, '2045-01-20', '1989-01-24', 'Havildar'),
(13423, 'Jaspreet Singh Kaur', '2010-09-24', 'Sikh Regiment', 382426, 182, 75, 40, 1, '2054-04-17', '1985-09-09', 'Soldier'),
(14298, 'Niranjan Arya', '2014-05-14', 'Sikh Regiment', 382421, 158, 82, 43, 1, '2054-02-01', '1996-11-12', 'Lieutenant Gene'),
(14345, 'Shubham verma', '2004-03-11', 'Jat Regiment', 282429, 172, 78, 42, 1, '2040-05-26', '1990-02-24', 'Soldier'),
(19339, 'Arjun Pratap', '2012-04-15', 'Sikh Regiment', 382436, 176, 70, 40, 1, '2059-08-20', '1987-05-23', 'Soldier'),
(21040, 'Sunny Prakash', '2013-01-29', 'Jat Regiment', 382425, 169, 74, 45, 1, '2047-04-16', '1991-05-14', 'Soldier'),
(21045, 'Shubham Singh', '2000-11-29', 'Sikh Regiment', 382424, 178, 88, 41, 1, '2045-01-26', '1980-01-24', 'Soldier'),
(21474, 'Brijmohan Singh', '2010-12-21', 'Sikh Regiment', 382422, 172, 80, 41, 1, '2050-05-17', '1990-12-24', 'Field Marshal'),
(22045, 'Virat Kohli', '2011-10-21', 'Madras Regiment', 382426, 175, 68, 43, 1, '2048-01-26', '1992-06-11', 'Major'),
(29603, 'Rohan Dhoot', '2005-06-21', 'Sikh Soldier', 382429, 182, 76, 37, 1, '2012-05-17', '1987-08-24', 'Soldier'),
(33998, 'Karan Jagtap', '2008-05-16', 'Sikh Regiment', 382427, 179, 76, 39, 1, '2049-04-21', '1982-05-23', 'Soldier'),
(49159, 'Vijay Kumar Ahirwar', '2011-03-15', 'Sikh Regiment', 382427, 176, 70, 40, 1, '2020-03-21', '1983-04-27', 'Major General');

-- --------------------------------------------------------

--
-- Table structure for table `soldier_status`
--

CREATE TABLE `soldier_status` (
  `sold_id` int(11) NOT NULL,
  `alive` int(11) NOT NULL,
  `wardate` int(11) NOT NULL,
  `pincode` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `visited`
--

CREATE TABLE `visited` (
  `soldier_id` int(11) NOT NULL,
  `pincode` int(11) NOT NULL,
  `reason` varchar(200) NOT NULL,
  `visit_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `visited`
--

INSERT INTO `visited` (`soldier_id`, `pincode`, `reason`, `visit_date`) VALUES
(19339, 382422, 'For a confidential meeting', '2011-01-10'),
(33998, 382426, 'For meeting with a Chinese officer', '2015-10-05'),
(13423, 382425, 'For meeting on movement of pakistan', '2013-05-26'),
(49159, 382429, 'For a meeting of visit of Dalai Lama', '2006-12-28'),
(29603, 382436, 'For reviewing a deal of weapons with Russia', '2008-07-12'),
(10923, 382429, 'For awarding a medal', '2005-03-21'),
(12300, 382427, 'For discussing border-security issues in Capital', '2003-11-04'),
(11305, 382430, 'For a techincal meeting on radar technology with Taiwan', '2010-01-05'),
(10045, 382431, 'For a surgical strike on Pakistan.', '2013-01-19'),
(12005, 382425, 'For a meeting with the naval-chief', '2016-09-30'),
(11046, 382436, 'For a meeting at Indo-Pak Border', '2017-01-31'),
(13045, 382437, 'For a meeting with Air-chief', '2011-01-17'),
(21045, 382428, 'For a confidential meeting', '2001-10-12'),
(14345, 382422, 'For reviewing a deal of weapons with America', '2016-12-12'),
(12300, 382421, 'For a meeting in New-Delhi', '2009-05-19'),
(14345, 382427, 'For a meeting with Chinese officials', '2008-08-05'),
(12245, 382433, 'For a meeting on purchasing new weapons', '2001-11-24');

-- --------------------------------------------------------

--
-- Table structure for table `war`
--

CREATE TABLE `war` (
  `pincode` varchar(6) NOT NULL,
  `status` int(11) NOT NULL CHECK (`status` = 0 or `status` = 1 or `status` = 2),
  `date` int(11) NOT NULL,
  `strength` int(11) NOT NULL CHECK (`strength` > 0)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `war`
--

INSERT INTO `war` (`pincode`, `status`, `date`, `strength`) VALUES
('382423', 0, 2000, 300),
('382425', 0, 1995, 250),
('382427', 1, 1997, 500),
('382429', 1, 2003, 1000);

-- --------------------------------------------------------

--
-- Table structure for table `weapons`
--

CREATE TABLE `weapons` (
  `W_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `weapons`
--

INSERT INTO `weapons` (`W_id`, `name`) VALUES
(1076, 'AK-47'),
(1084, 'AUG'),
(1079, 'AWP'),
(1057, 'CZ75-Auto'),
(1058, 'Desert Eagle'),
(1054, 'Dual Berettas'),
(1081, 'FAMAS'),
(1062, 'Five-Seven'),
(1080, 'G3SG1'),
(1075, 'Galil AR'),
(1053, 'Glock-18'),
(1066, 'M249'),
(1083, 'M4A1-S'),
(1082, 'M4A4'),
(1069, 'MAC-10'),
(1068, 'MAG-7'),
(1070, 'MP7'),
(1074, 'MP9'),
(1067, 'Negev'),
(1063, 'Nova'),
(1061, 'P2000'),
(1055, 'P250'),
(1072, 'P90'),
(1073, 'PP-Bizon'),
(1059, 'R8 Revolver'),
(1065, 'Sawed-Off'),
(1085, 'SCAR-20'),
(1078, 'SG 553'),
(1077, 'SSG 08'),
(1056, 'Tec-9'),
(1071, 'UMP-45'),
(1060, 'USP-S'),
(1064, 'XM1014');

-- --------------------------------------------------------

--
-- Table structure for table `work`
--

CREATE TABLE `work` (
  `type` varchar(80) NOT NULL,
  `salary` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `work`
--

INSERT INTO `work` (`type`, `salary`) VALUES
('Brigadier', 134400),
('Captain', 61300),
('Colonel', 125700),
('Field Marshal', 250000),
('Havildar', 12000),
('Lieutenant', 56100),
('Lieutenant General', 225000),
('Major', 69400),
('Major General', 144200),
('Soldier', 23000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assign`
--
ALTER TABLE `assign`
  ADD PRIMARY KEY (`sold_id`,`type`);

--
-- Indexes for table `batallian`
--
ALTER TABLE `batallian`
  ADD PRIMARY KEY (`batallion_name`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`pincode`);

--
-- Indexes for table `medal`
--
ALTER TABLE `medal`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`email`,`soldier_id`);

--
-- Indexes for table `soldier`
--
ALTER TABLE `soldier`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `soldier_status`
--
ALTER TABLE `soldier_status`
  ADD PRIMARY KEY (`sold_id`,`wardate`,`pincode`),
  ADD UNIQUE KEY `sold_id` (`sold_id`,`wardate`,`pincode`),
  ADD KEY `wardate` (`wardate`,`pincode`);

--
-- Indexes for table `war`
--
ALTER TABLE `war`
  ADD PRIMARY KEY (`pincode`,`date`),
  ADD UNIQUE KEY `date` (`date`);

--
-- Indexes for table `weapons`
--
ALTER TABLE `weapons`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `work`
--
ALTER TABLE `work`
  ADD PRIMARY KEY (`type`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `soldier_status`
--
ALTER TABLE `soldier_status`
  ADD CONSTRAINT `soldier_status_ibfk_1` FOREIGN KEY (`wardate`,`pincode`) REFERENCES `war` (`date`, `pincode`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
