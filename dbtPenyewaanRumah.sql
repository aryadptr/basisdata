-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 14, 2020 at 01:54 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `PenyewaanRumah`
--

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `branchNo` char(5) NOT NULL,
  `street` varchar(35) DEFAULT NULL,
  `city` varchar(10) DEFAULT NULL,
  `postcode` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`branchNo`, `street`, `city`, `postcode`) VALUES
('B002', '56 Clover Dr', 'London', 'NW10 6EU'),
('B003', '163 Main St', 'Glasgow', 'G11 9QX'),
('B004', '32 Manse Rd', 'Bristol', 'BS99 1NZ'),
('B005', '22 Deer Rd', 'London', 'SW1 4EH'),
('B007', '16 Argyll St', 'Aberdeen', 'AB2 3SU');

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `clientNo` char(5) NOT NULL,
  `fName` varchar(10) DEFAULT NULL,
  `lName` varchar(10) DEFAULT NULL,
  `telNo` char(15) DEFAULT NULL,
  `prefType` varchar(10) DEFAULT NULL,
  `maxRent` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`clientNo`, `fName`, `lName`, `telNo`, `prefType`, `maxRent`) VALUES
('CR56', 'Aline', 'Steward', '0141-848-1825', 'Flat', 350),
('CR62', 'Mary', 'Tregear', '01224-196720', 'Flat', 600),
('CR74', 'Mike', 'Ritchie', '01475-943-1728', 'House', 750),
('CR76', 'John', 'Kay', '0171-774-5632', 'Flat', 425);

-- --------------------------------------------------------

--
-- Table structure for table `privateOwner`
--

CREATE TABLE `privateOwner` (
  `ownerNo` char(5) NOT NULL,
  `fName` varchar(10) DEFAULT NULL,
  `lName` varchar(10) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `telNo` char(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `privateOwner`
--

INSERT INTO `privateOwner` (`ownerNo`, `fName`, `lName`, `address`, `telNo`) VALUES
('CO40', 'Tina', 'Murphy', '63 Well St. Glasgow G42', '0141-943-1728'),
('CO46', 'Joe', 'Keogh', '2 Fergus Dr. Aberdeen AB2 ', '01224-861212'),
('CO87', 'Carol', 'Farrel', '6 Achray St. Glasgow G32 9DX', '0141-357-7419'),
('CO93', 'Tony', 'Shaw', '12 Park Pl. Glasgow G4 0QR', '0141-225-7025');

-- --------------------------------------------------------

--
-- Table structure for table `propertyForRent`
--

CREATE TABLE `propertyForRent` (
  `propertyNo` char(5) NOT NULL,
  `street` varchar(35) DEFAULT NULL,
  `city` varchar(10) DEFAULT NULL,
  `postcode` varchar(10) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `rooms` smallint(6) DEFAULT NULL,
  `rent` int(11) DEFAULT NULL,
  `ownerNo` char(5) NOT NULL,
  `staffNo` char(5) DEFAULT NULL,
  `branchNo` char(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `propertyForRent`
--

INSERT INTO `propertyForRent` (`propertyNo`, `street`, `city`, `postcode`, `type`, `rooms`, `rent`, `ownerNo`, `staffNo`, `branchNo`) VALUES
('PA14', '16 Holhead', 'Aberdeen', 'AB7 5SU', 'House', 6, 650, 'CO46', 'SA9', 'B007'),
('PG16', '5 Novar Dr', 'Glasgow', 'G12 9AX', 'Flat', 4, 450, 'CO93', 'SG14', 'B003'),
('PG21', '18 Dale Rd', 'Glasgow', 'G12', 'House', 5, 600, 'CO87', 'SG37', 'B003'),
('PG36', '2 Manor Rd', 'Glasgow', 'G32 4QX', 'Flat', 3, 375, 'CO93', 'SG37', 'B003'),
('PG4', '6 Lawrence St', 'Glasgow', 'G11 9QX', 'Flat', 3, 350, 'CO40', NULL, 'B003'),
('PL94', '6 Argyll St', 'London', 'NW2', 'Flat', 4, 400, 'CO87', 'SL41', 'B005');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `clientNo` char(5) NOT NULL,
  `branchNo` char(5) NOT NULL,
  `staffNo` char(5) NOT NULL,
  `dateJoined` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`clientNo`, `branchNo`, `staffNo`, `dateJoined`) VALUES
('CR76', 'B005', 'SL41', '2015-01-13'),
('CR56', 'B003', 'SG37', '2014-04-13'),
('CR74', 'B003', 'SG37', '2013-11-16'),
('CR62', 'B007', 'SA9', '2014-03-07');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `staffNo` char(5) NOT NULL,
  `fName` varchar(10) DEFAULT NULL,
  `lName` varchar(10) DEFAULT NULL,
  `position` varchar(10) DEFAULT NULL,
  `sex` char(1) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `salary` int(11) DEFAULT NULL,
  `branchNo` char(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`staffNo`, `fName`, `lName`, `position`, `sex`, `DOB`, `salary`, `branchNo`) VALUES
('SA9', 'Mary', 'Howe', 'Assistant', 'F', '1990-02-19', 9000, 'B007'),
('SG14', 'David', 'Ford', 'Supervisor', 'M', '1978-03-24', 18000, 'B003'),
('SG37', 'Ann', 'Beech', 'Assistant', 'F', '1980-11-10', 12000, 'B003'),
('SG5', 'Susan', 'Brand', 'Manager', 'F', '1960-06-03', 24000, 'B003'),
('SL21', 'John', 'White', 'Manager', 'M', '1965-10-01', 30000, 'B005'),
('SL41', 'Julie', 'Lee', 'Assistant', 'F', '1985-06-13', 9000, 'B005');

-- --------------------------------------------------------

--
-- Table structure for table `viewing`
--

CREATE TABLE `viewing` (
  `clientNo` char(5) NOT NULL,
  `propertyNo` char(5) NOT NULL,
  `viewDate` date DEFAULT NULL,
  `comment` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `viewing`
--

INSERT INTO `viewing` (`clientNo`, `propertyNo`, `viewDate`, `comment`) VALUES
('CR56', 'PA14', '2015-05-24', 'too small'),
('CR76', 'PG4', '2015-04-20', 'too remote'),
('CR56', 'PG4', '2015-05-26', ''),
('CR62', 'PA14', '2015-05-14', 'no dining room'),
('CR56', 'PG36', '2015-04-28', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`branchNo`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`clientNo`);

--
-- Indexes for table `privateOwner`
--
ALTER TABLE `privateOwner`
  ADD PRIMARY KEY (`ownerNo`);

--
-- Indexes for table `propertyForRent`
--
ALTER TABLE `propertyForRent`
  ADD PRIMARY KEY (`propertyNo`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`staffNo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
