-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 17, 2016 at 01:57 AM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dbrips`
--
CREATE DATABASE IF NOT EXISTS `dbrips` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `dbrips`;

-- --------------------------------------------------------

--
-- Table structure for table `tblAmenity`
--

CREATE TABLE IF NOT EXISTS `tblAmenity` (
  `strAmenityId` varchar(45) NOT NULL,
  `strAmenityName` varchar(100) NOT NULL,
  `strAmenityDesc` text,
  `strAmenityATId` varchar(45) NOT NULL,
  `dblAmenityERate` float NOT NULL,
  `intAmenityStatus` tinyint(1) NOT NULL,
  PRIMARY KEY (`strAmenityId`),
  KEY `strAmenityATId_idx` (`strAmenityATId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblAmenity`
--

INSERT INTO `tblAmenity` (`strAmenityId`, `strAmenityName`, `strAmenityDesc`, `strAmenityATId`, `dblAmenityERate`, `intAmenityStatus`) VALUES
('AME-0001', 'Claro M. Recto Hall', 'testing', 'ATYPE-0002', 101.25, 1),
('AME-0002', 'Bulwagang Balagtas', 'adsfa', 'ATYPE-0002', 101.5, 1),
('AME-0003', 'PUP-Oval', '', 'ATYPE-0001', 12.98, 1),
('AME-0004', 'PUP Freedom Park', 'freedom', 'ATYPE-0001', 15.96, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblAmenityType`
--

CREATE TABLE IF NOT EXISTS `tblAmenityType` (
  `strAmenityTId` varchar(45) NOT NULL,
  `strAmenityTName` varchar(100) NOT NULL,
  `strAmenityTDesc` text,
  PRIMARY KEY (`strAmenityTId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblAmenityType`
--

INSERT INTO `tblAmenityType` (`strAmenityTId`, `strAmenityTName`, `strAmenityTDesc`) VALUES
('ATYPE-0001', 'Open Area', 'shit'),
('ATYPE-0002', 'Hall', ''),
('ATYPE-0003', 'Auditorium', ''),
('ATYPE-0004', 'Conference Room', '');

-- --------------------------------------------------------

--
-- Table structure for table `tblClient`
--

CREATE TABLE IF NOT EXISTS `tblClient` (
  `strClientId` varchar(45) NOT NULL,
  `strClientFirst` varchar(100) NOT NULL,
  `strClientMiddle` varchar(100) DEFAULT NULL,
  `strClientLast` varchar(100) NOT NULL,
  `strClientContact` varchar(45) NOT NULL,
  `intClientType` tinyint(2) NOT NULL,
  `strClientOfficeId` varchar(45) NOT NULL,
  PRIMARY KEY (`strClientId`),
  UNIQUE KEY `strClientFirst` (`strClientFirst`,`strClientMiddle`,`strClientLast`),
  KEY `strClientOfficeId_idx` (`strClientOfficeId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblClient`
--

INSERT INTO `tblClient` (`strClientId`, `strClientFirst`, `strClientMiddle`, `strClientLast`, `strClientContact`, `intClientType`, `strClientOfficeId`) VALUES
('CLIENT-0001', 'Angelito', '', 'Pastrana', '09054095023', 3, 'OFFICE-0001'),
('CLIENT-0002', 'Paul', '', 'Cruz', '090234324', 1, 'OFFICE-0001'),
('CLIENT-0003', 'Angelica', 'Caba-nilla', 'O''Ramos', '09054090523', 3, 'OFFICE-0001'),
('CLIENT-0004', 'Rexielyn', 'Sta.Catalina', 'Santos', '09054090523', 1, 'OFFICE-0001'),
('CLIENT-0005', 'Emmanuel', 'Capuz', 'Cambronero', '09054090523', 1, 'OFFICE-0001'),
('CLIENT-0006', 'Moises', '', 'Unisa', '09054090523', 1, 'OFFICE-0001'),
('CLIENT-0007', 'Emman', '', 'Cambronero', '093812974918', 1, 'OFFICE-0001'),
('CLIENT-0008', 'Mami', 'Paw', 'Parail', '09054090523', 3, 'OFFICE-0004');

-- --------------------------------------------------------

--
-- Table structure for table `tblEmployee`
--

CREATE TABLE IF NOT EXISTS `tblEmployee` (
  `strEmpId` varchar(45) NOT NULL,
  `strEmpFirst` varchar(100) NOT NULL,
  `strEmpMiddle` varchar(100) DEFAULT NULL,
  `strEmpLast` varchar(100) NOT NULL,
  `strEmpContact` varchar(45) NOT NULL,
  `dtmEmpBirth` date NOT NULL,
  `dtmEmpHired` date NOT NULL,
  `strEmpJobId` varchar(45) NOT NULL,
  `dtmEmpResigned` date DEFAULT NULL,
  `dtmEmpUpdated` datetime NOT NULL,
  `intEmpStatus` tinyint(1) NOT NULL,
  PRIMARY KEY (`strEmpId`),
  UNIQUE KEY `strEmpFirst` (`strEmpFirst`,`strEmpMiddle`,`strEmpLast`),
  KEY `strEmpJobId_idx` (`strEmpJobId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblEmployee`
--

INSERT INTO `tblEmployee` (`strEmpId`, `strEmpFirst`, `strEmpMiddle`, `strEmpLast`, `strEmpContact`, `dtmEmpBirth`, `dtmEmpHired`, `strEmpJobId`, `dtmEmpResigned`, `dtmEmpUpdated`, `intEmpStatus`) VALUES
('EMP-0001', 'Paul Andrei', 'Navarro', 'Cruz', '09054090523', '1999-01-28', '2016-10-01', 'TITLE-0003', NULL, '2016-10-01 07:46:42', 1),
('EMP-0002', 'Mami Piyur', 'Paw', 'Parail', '123124234', '1998-04-26', '2016-10-01', 'TITLE-0002', NULL, '2016-10-01 18:44:38', 0),
('EMP-0003', 'Emmanuel', '', 'Lacsamana', '234234', '2016-10-04', '2016-10-12', 'TITLE-0001', NULL, '2016-10-04 17:46:46', 1),
('EMP-0004', 'Angelou', 'O''bilar', 'Capa-rosso', '09054090523', '1969-09-08', '2016-10-04', 'TITLE-0004', NULL, '2016-10-04 22:26:29', 1),
('EMP-0005', 'Alexis', '', 'Libunao', '09054090523', '1970-03-09', '2016-10-10', 'TITLE-0004', NULL, '2016-10-10 08:18:14', 0),
('EMP-0006', 'Rosita', 'Escfabanan', 'Canlas', '09054090523', '1965-03-05', '1986-06-17', 'TITLE-0004', NULL, '2016-10-17 09:32:18', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblEmpSkill`
--

CREATE TABLE IF NOT EXISTS `tblEmpSkill` (
  `strEmpSEmpId` varchar(45) NOT NULL,
  `strEmpSJobSId` varchar(45) NOT NULL,
  PRIMARY KEY (`strEmpSEmpId`,`strEmpSJobSId`),
  KEY `strEmpSEmpId_idx` (`strEmpSEmpId`),
  KEY `strEmpSJobSId_idx` (`strEmpSJobSId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblEmpSkill`
--

INSERT INTO `tblEmpSkill` (`strEmpSEmpId`, `strEmpSJobSId`) VALUES
('EMP-0001', 'SKILL-0001'),
('EMP-0001', 'SKILL-0002'),
('EMP-0001', 'SKILL-0003'),
('EMP-0001', 'SKILL-0005'),
('EMP-0001', 'SKILL-0006'),
('EMP-0001', 'SKILL-0007'),
('EMP-0002', 'SKILL-0005'),
('EMP-0002', 'SKILL-0006'),
('EMP-0003', 'SKILL-0001'),
('EMP-0003', 'SKILL-0003'),
('EMP-0004', 'SKILL-0005'),
('EMP-0004', 'SKILL-0006'),
('EMP-0005', 'SKILL-0005'),
('EMP-0005', 'SKILL-0006'),
('EMP-0005', 'SKILL-0007'),
('EMP-0006', 'SKILL-0005'),
('EMP-0006', 'SKILL-0006'),
('EMP-0006', 'SKILL-0007');

-- --------------------------------------------------------

--
-- Table structure for table `tblItem`
--

CREATE TABLE IF NOT EXISTS `tblItem` (
  `strItemId` varchar(45) NOT NULL,
  `strItemName` varchar(100) NOT NULL,
  `strItemDesc` text,
  `strItemITypeId` varchar(45) NOT NULL,
  PRIMARY KEY (`strItemId`),
  KEY `strItemITypeId_idx` (`strItemITypeId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblItem`
--

INSERT INTO `tblItem` (`strItemId`, `strItemName`, `strItemDesc`, `strItemITypeId`) VALUES
('ITEM-0001', 'Gunting', '', 'ITYPE-0001'),
('ITEM-0002', 'Turnilyo - 10mm', 'sample lang to bes', 'ITYPE-0006'),
('ITEM-0003', 'Semento - sako', '', 'ITYPE-0007'),
('ITEM-0004', 'Acrylic Pintura - Can', 'f', 'ITYPE-0003'),
('ITEM-0005', 'Turnilyo - 20mm', '', 'ITYPE-0006'),
('ITEM-0006', 'Meter stick', '', 'ITYPE-0008'),
('ITEM-0007', 'Ruler', '', 'ITYPE-0008'),
('ITEM-0008', 'Plywood', 'wood', 'ITYPE-0009'),
('ITEM-0009', 'palo-china', '', 'ITYPE-0009');

-- --------------------------------------------------------

--
-- Table structure for table `tblItemDefect`
--

CREATE TABLE IF NOT EXISTS `tblItemDefect` (
  `strItemDefId` varchar(45) NOT NULL,
  `strItemDefItemId` varchar(45) NOT NULL,
  `strItemDefUnitId` varchar(45) NOT NULL,
  `intItemDefQty` int(11) NOT NULL,
  `dtmItemDefDate` datetime DEFAULT NULL,
  PRIMARY KEY (`strItemDefId`),
  KEY `strItemDefItemId_idx` (`strItemDefItemId`),
  KEY `strItemDefUnitId_idx` (`strItemDefUnitId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblItemDelDetail`
--

CREATE TABLE IF NOT EXISTS `tblItemDelDetail` (
  `intDeliId` int(11) NOT NULL AUTO_INCREMENT,
  `strDeliHId` varchar(45) NOT NULL,
  `strDeliDItemId` varchar(45) NOT NULL,
  `strDeliDUnitId` varchar(45) NOT NULL,
  `intDeliDQty` int(11) NOT NULL,
  PRIMARY KEY (`intDeliId`,`strDeliHId`),
  KEY `strDeliDItemId_idx` (`strDeliDItemId`),
  KEY `strDeliDUnitId_idx` (`strDeliDUnitId`),
  KEY `strDeliHId_idx` (`strDeliHId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `tblItemDelDetail`
--

INSERT INTO `tblItemDelDetail` (`intDeliId`, `strDeliHId`, `strDeliDItemId`, `strDeliDUnitId`, `intDeliDQty`) VALUES
(2, 'DELI-0001', 'ITEM-0004', 'UNIT-0006', 25),
(3, 'DELI-0002', 'ITEM-0007', 'UNIT-0002', 50),
(4, 'DELI-0002', 'ITEM-0003', 'UNIT-0003', 80),
(5, 'DELI-0003', 'ITEM-0009', 'UNIT-0002', 50),
(6, 'DELI-0004', 'ITEM-0002', 'UNIT-0006', 10);

-- --------------------------------------------------------

--
-- Table structure for table `tblItemDelHeader`
--

CREATE TABLE IF NOT EXISTS `tblItemDelHeader` (
  `strDeliId` varchar(45) NOT NULL,
  `strDeliHNo` varchar(100) NOT NULL,
  `strDeliHPurReqHId` varchar(45) NOT NULL,
  `strDeliHEmpId` varchar(45) NOT NULL,
  `dtmDeliHDate` datetime NOT NULL,
  PRIMARY KEY (`strDeliId`),
  KEY `strDeliPurReqHId_idx` (`strDeliHPurReqHId`),
  KEY `strDeliEmpId_idx` (`strDeliHEmpId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblItemDelHeader`
--

INSERT INTO `tblItemDelHeader` (`strDeliId`, `strDeliHNo`, `strDeliHPurReqHId`, `strDeliHEmpId`, `dtmDeliHDate`) VALUES
('DELI-0001', 'dsfgsdg', 'PREQ-0001', 'EMP-0001', '2016-10-10 02:57:52'),
('DELI-0002', 'Semen2 - 09123z', 'PREQ-0002', 'EMP-0003', '2016-10-10 07:05:22'),
('DELI-0003', 'asdf', 'PREQ-0003', 'EMP-0004', '2016-10-12 12:36:16'),
('DELI-0004', 'ACE HARDWARE - 00123456789', 'PREQ-0004', 'EMP-0006', '2016-10-17 09:40:33');

-- --------------------------------------------------------

--
-- Table structure for table `tblItemRelDetail`
--

CREATE TABLE IF NOT EXISTS `tblItemRelDetail` (
  `intItemRelDId` int(11) NOT NULL AUTO_INCREMENT,
  `strItemRelHId` varchar(45) NOT NULL,
  `strItemRelDItemId` varchar(45) NOT NULL,
  `strItemRelDUnitId` varchar(45) NOT NULL,
  `intItemRelDQty` int(11) NOT NULL,
  PRIMARY KEY (`intItemRelDId`,`strItemRelHId`),
  KEY `strItemRelDItemId_idx` (`strItemRelDItemId`),
  KEY `strItemRelDUnitId_idx` (`strItemRelDUnitId`),
  KEY `strItemRelHId_idx` (`strItemRelHId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `tblItemRelDetail`
--

INSERT INTO `tblItemRelDetail` (`intItemRelDId`, `strItemRelHId`, `strItemRelDItemId`, `strItemRelDUnitId`, `intItemRelDQty`) VALUES
(1, 'REL-0003', 'ITEM-0007', 'UNIT-0002', 4),
(2, 'REL-0003', 'ITEM-0003', 'UNIT-0003', 5),
(3, 'REL-0004', 'ITEM-0007', 'UNIT-0002', 1),
(4, 'REL-0004', 'ITEM-0002', 'UNIT-0006', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tblItemRelHeader`
--

CREATE TABLE IF NOT EXISTS `tblItemRelHeader` (
  `strItemRelId` varchar(45) NOT NULL,
  `strItemRelItemReqId` varchar(45) NOT NULL,
  `strItemRelEmpId` varchar(45) NOT NULL,
  `dtmItemRelDate` datetime NOT NULL,
  PRIMARY KEY (`strItemRelId`),
  KEY `strItemRelReqId_idx` (`strItemRelItemReqId`),
  KEY `strItemRelEmpId_idx` (`strItemRelEmpId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblItemRelHeader`
--

INSERT INTO `tblItemRelHeader` (`strItemRelId`, `strItemRelItemReqId`, `strItemRelEmpId`, `dtmItemRelDate`) VALUES
('REL-0001', 'IREQ-0001', 'EMP-0004', '2016-10-10 07:06:05'),
('REL-0002', 'IREQ-0006', 'EMP-0005', '2016-10-10 08:50:58'),
('REL-0003', 'IREQ-0001', 'EMP-0003', '2016-10-16 16:43:01'),
('REL-0004', 'IREQ-0007', 'EMP-0004', '2016-10-17 09:40:48');

-- --------------------------------------------------------

--
-- Table structure for table `tblItemReqDetail`
--

CREATE TABLE IF NOT EXISTS `tblItemReqDetail` (
  `intItemReqDId` int(11) NOT NULL AUTO_INCREMENT,
  `strItemReqHId` varchar(45) NOT NULL DEFAULT '',
  `strItemReqDItemId` varchar(45) NOT NULL,
  `strItemReqDUnitId` varchar(45) NOT NULL,
  `intItemReqDQty` int(11) NOT NULL,
  PRIMARY KEY (`intItemReqDId`,`strItemReqHId`),
  KEY `strItemReqDItemId_idx` (`strItemReqDItemId`),
  KEY `strItemReqDUnitId_idx` (`strItemReqDUnitId`),
  KEY `strItemReqHId` (`strItemReqHId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `tblItemReqDetail`
--

INSERT INTO `tblItemReqDetail` (`intItemReqDId`, `strItemReqHId`, `strItemReqDItemId`, `strItemReqDUnitId`, `intItemReqDQty`) VALUES
(4, 'IREQ-0001', 'ITEM-0007', 'UNIT-0002', 4),
(5, 'IREQ-0001', 'ITEM-0003', 'UNIT-0003', 5),
(6, 'IREQ-0002', 'ITEM-0004', 'UNIT-0006', 10),
(7, 'IREQ-0002', 'ITEM-0009', 'UNIT-0002', 2),
(8, 'IREQ-0002', 'ITEM-0008', 'UNIT-0002', 1),
(9, 'IREQ-0003', 'ITEM-0004', 'UNIT-0001', 5),
(10, 'IREQ-0003', 'ITEM-0008', 'UNIT-0002', 7),
(11, 'IREQ-0003', 'ITEM-0003', 'UNIT-0003', 10),
(12, 'IREQ-0004', 'ITEM-0009', 'UNIT-0002', 2),
(13, 'IREQ-0005', 'ITEM-0009', 'UNIT-0002', 5),
(14, 'IREQ-0006', 'ITEM-0009', 'UNIT-0002', 4),
(15, 'IREQ-0007', 'ITEM-0007', 'UNIT-0002', 5),
(16, 'IREQ-0007', 'ITEM-0002', 'UNIT-0006', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tblItemReqHeader`
--

CREATE TABLE IF NOT EXISTS `tblItemReqHeader` (
  `strItemReqId` varchar(45) NOT NULL,
  `strItemReqHProjHId` varchar(45) NOT NULL,
  `strItemReqHEmpId` varchar(45) NOT NULL,
  `dtmItemReqHDate` date NOT NULL,
  PRIMARY KEY (`strItemReqId`),
  KEY `strItemReqHProjHId_idx` (`strItemReqHProjHId`),
  KEY `strItemReqHEmpId_idx` (`strItemReqHEmpId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblItemReqHeader`
--

INSERT INTO `tblItemReqHeader` (`strItemReqId`, `strItemReqHProjHId`, `strItemReqHEmpId`, `dtmItemReqHDate`) VALUES
('IREQ-0001', 'REQ-0001', 'EMP-0001', '2016-10-08'),
('IREQ-0002', 'REQ-0002', 'EMP-0001', '2016-10-10'),
('IREQ-0003', 'REQ-0003', 'EMP-0005', '2016-10-10'),
('IREQ-0004', 'REQ-0002', 'EMP-0005', '2016-10-10'),
('IREQ-0005', 'REQ-0006', 'EMP-0005', '2016-10-10'),
('IREQ-0006', 'REQ-0007', 'EMP-0005', '2016-10-10'),
('IREQ-0007', 'REQ-0008', 'EMP-0006', '2016-10-17');

-- --------------------------------------------------------

--
-- Table structure for table `tblItemType`
--

CREATE TABLE IF NOT EXISTS `tblItemType` (
  `strItemTypeId` varchar(45) NOT NULL,
  `strItemTypeName` varchar(45) NOT NULL,
  `strItemTypeDesc` text,
  PRIMARY KEY (`strItemTypeId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblItemType`
--

INSERT INTO `tblItemType` (`strItemTypeId`, `strItemTypeName`, `strItemTypeDesc`) VALUES
('ITYPE-0001', 'Cutting', 'Used for cutting objects'),
('ITYPE-0002', 'Masonry', ''),
('ITYPE-0003', 'Painting', ''),
('ITYPE-0004', 'Fabricating', ''),
('ITYPE-0005', 'Adhesives', ''),
('ITYPE-0006', 'Fasteners', ''),
('ITYPE-0007', 'Concrete', ''),
('ITYPE-0008', 'Measuring', ''),
('ITYPE-0009', 'Wood', ''),
('ITYPE-0010', 'Hammering', ''),
('ITYPE-0011', 'Trial', '');

-- --------------------------------------------------------

--
-- Table structure for table `tblJobSkill`
--

CREATE TABLE IF NOT EXISTS `tblJobSkill` (
  `strJobSId` varchar(45) NOT NULL,
  `strJobSName` varchar(100) NOT NULL,
  `strJobSDesc` text,
  `intJobSStatus` tinyint(1) NOT NULL,
  PRIMARY KEY (`strJobSId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblJobSkill`
--

INSERT INTO `tblJobSkill` (`strJobSId`, `strJobSName`, `strJobSDesc`, `intJobSStatus`) VALUES
('SKILL-0001', 'Wood carving', '', 1),
('SKILL-0002', 'Wood painting', '', 1),
('SKILL-0003', 'Wood fabricating', '', 1),
('SKILL-0004', 'Wood carvingsss', 'asdf', 0),
('SKILL-0005', 'Typing', '', 1),
('SKILL-0006', 'File keeping', '', 1),
('SKILL-0007', 'Electrical Maintenance', '', 1),
('SKILL-0008', 'Masonry', '', 1),
('SKILL-0009', 'Plumbing', '', 0),
('SKILL-0010', 'aa', 'aaa', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblJobTitle`
--

CREATE TABLE IF NOT EXISTS `tblJobTitle` (
  `strJobTId` varchar(45) NOT NULL,
  `strJobTName` varchar(100) NOT NULL,
  `strJobTDesc` text,
  PRIMARY KEY (`strJobTId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblJobTitle`
--

INSERT INTO `tblJobTitle` (`strJobTId`, `strJobTName`, `strJobTDesc`) VALUES
('TITLE-0001', 'Carpenter', 'gupit ng kahoy'),
('TITLE-0002', 'Secretary', 'tago papel'),
('TITLE-0003', 'Electrician', 'ayos kuryente'),
('TITLE-0004', 'Chief', 'eto ba yun tagaluto'),
('TITLE-0005', 'Warehouse Maintenance', 'taga tago ng gamit'),
('TITLE-0006', 'Painter', ''),
('TITLEID-0007', 'Mason', '');

-- --------------------------------------------------------

--
-- Table structure for table `tblOffice`
--

CREATE TABLE IF NOT EXISTS `tblOffice` (
  `strOfficeId` varchar(45) NOT NULL,
  `strOfficeName` varchar(100) NOT NULL,
  `strOfficeDesc` text,
  `strOfficeContact` varchar(45) NOT NULL,
  PRIMARY KEY (`strOfficeId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblOffice`
--

INSERT INTO `tblOffice` (`strOfficeId`, `strOfficeName`, `strOfficeDesc`, `strOfficeContact`) VALUES
('OFFICE-0001', 'College of Computer and Information Sciences', 'asdf', '13123'),
('OFFICE-0002', 'College of Accountancy and Finance', 'puro pera dito', '123123'),
('OFFICE-0003', 'College of Communication', 'asdf', '32432'),
('OFFICE-0004', 'Office of the President', '', '207');

-- --------------------------------------------------------

--
-- Table structure for table `tblProjAssignment`
--

CREATE TABLE IF NOT EXISTS `tblProjAssignment` (
  `strProjAProjHId` varchar(45) NOT NULL,
  `strProjAEmpId` varchar(45) NOT NULL,
  PRIMARY KEY (`strProjAProjHId`,`strProjAEmpId`),
  KEY `strProjAEmpId_idx` (`strProjAEmpId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblProjAssignment`
--

INSERT INTO `tblProjAssignment` (`strProjAProjHId`, `strProjAEmpId`) VALUES
('REQ-0001', 'EMP-0001'),
('REQ-0008', 'EMP-0001'),
('REQ-0003', 'EMP-0003'),
('REQ-0008', 'EMP-0003'),
('REQ-0003', 'EMP-0004'),
('REQ-0008', 'EMP-0004');

-- --------------------------------------------------------

--
-- Table structure for table `tblProjectDetail`
--

CREATE TABLE IF NOT EXISTS `tblProjectDetail` (
  `intProjDId` int(11) NOT NULL AUTO_INCREMENT,
  `strProjDProjHId` varchar(45) NOT NULL,
  `strProjDItemId` varchar(45) NOT NULL,
  `strProjDUnitId` varchar(45) NOT NULL,
  `intProjDQty` int(11) NOT NULL,
  PRIMARY KEY (`intProjDId`,`strProjDProjHId`),
  KEY `strProjDItemId_idx` (`strProjDItemId`),
  KEY `strProjDUnitId_idx` (`strProjDUnitId`),
  KEY `strProjDProjHId_idx` (`strProjDProjHId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `tblProjectDetail`
--

INSERT INTO `tblProjectDetail` (`intProjDId`, `strProjDProjHId`, `strProjDItemId`, `strProjDUnitId`, `intProjDQty`) VALUES
(5, 'REQ-0001', 'ITEM-0007', 'UNIT-0002', 4),
(6, 'REQ-0001', 'ITEM-0003', 'UNIT-0003', 5),
(9, 'REQ-0002', 'ITEM-0008', 'UNIT-0002', 1),
(10, 'REQ-0002', 'ITEM-0009', 'UNIT-0002', 2),
(11, 'REQ-0002', 'ITEM-0004', 'UNIT-0006', 10),
(17, 'REQ-0003', 'ITEM-0008', 'UNIT-0002', 10),
(18, 'REQ-0003', 'ITEM-0003', 'UNIT-0003', 10),
(19, 'REQ-0003', 'ITEM-0004', 'UNIT-0001', 5),
(20, 'REQ-0006', 'ITEM-0009', 'UNIT-0002', 5),
(21, 'REQ-0007', 'ITEM-0009', 'UNIT-0002', 4),
(22, 'REQ-0008', 'ITEM-0007', 'UNIT-0002', 5),
(23, 'REQ-0008', 'ITEM-0002', 'UNIT-0006', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tblProjectHeader`
--

CREATE TABLE IF NOT EXISTS `tblProjectHeader` (
  `strProjHReqId` varchar(45) NOT NULL,
  `strProjHSecId` varchar(45) NOT NULL,
  `dtmProjHStart` datetime NOT NULL,
  `dtmProjHEnd` datetime NOT NULL,
  `intProjHPriority` tinyint(2) NOT NULL,
  `strProjHRemarks` text,
  PRIMARY KEY (`strProjHReqId`),
  KEY `strProjHSecId_idx` (`strProjHSecId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblProjectHeader`
--

INSERT INTO `tblProjectHeader` (`strProjHReqId`, `strProjHSecId`, `dtmProjHStart`, `dtmProjHEnd`, `intProjHPriority`, `strProjHRemarks`) VALUES
('REQ-0001', 'SEC-0005', '2016-10-10 06:58:44', '2016-10-10 07:06:22', 3, NULL),
('REQ-0002', 'SEC-0001', '2016-10-05 14:31:43', '0000-00-00 00:00:00', 1, NULL),
('REQ-0003', 'SEC-0001', '2016-10-10 08:35:37', '0000-00-00 00:00:00', 2, NULL),
('REQ-0006', 'SEC-0005', '2016-10-10 08:49:06', '0000-00-00 00:00:00', 1, NULL),
('REQ-0007', 'SEC-0005', '2016-10-10 08:49:10', '0000-00-00 00:00:00', 1, NULL),
('REQ-0008', 'SEC-0001', '2016-10-17 09:38:15', '0000-00-00 00:00:00', 3, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblProjReqD`
--

CREATE TABLE IF NOT EXISTS `tblProjReqD` (
  `strProjReqDId` varchar(45) NOT NULL,
  `strProjReqDReqHId` varchar(45) NOT NULL,
  `strProjReqDServId` varchar(45) NOT NULL,
  `strProjReqDDesc` text NOT NULL,
  `intProjReqDStatus` tinyint(2) NOT NULL,
  PRIMARY KEY (`strProjReqDId`),
  KEY `strProjReqDReqHId_idx` (`strProjReqDReqHId`),
  KEY `strProjReqDServId_idx` (`strProjReqDServId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblProjReqD`
--

INSERT INTO `tblProjReqD` (`strProjReqDId`, `strProjReqDReqHId`, `strProjReqDServId`, `strProjReqDDesc`, `intProjReqDStatus`) VALUES
('REQ-0001', 'PROJR-0001', 'SERV-0002', 'Air-condition', 2),
('REQ-0002', 'PROJR-0001', 'SERV-0003', 'Teachers table', 2),
('REQ-0003', 'PROJR-0002', 'SERV-0001', 'Teachers Table', 2),
('REQ-0004', 'PROJR-0002', 'SERV-0002', 'Air-condition', 1),
('REQ-0005', 'PROJR-0002', 'SERV-0003', 'Teacher', 1),
('REQ-0006', 'PROJR-0003', 'SERV-0002', 'Table ', 2),
('REQ-0007', 'PROJR-0003', 'SERV-0002', 'chair', 2),
('REQ-0008', 'PROJR-0004', 'SERV-0002', 'Electric Fan', 2),
('REQ-0009', 'PROJR-0004', 'SERV-0001', 'Teachers Table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblProjReqH`
--

CREATE TABLE IF NOT EXISTS `tblProjReqH` (
  `strProjReqHId` varchar(45) NOT NULL,
  `strProjReqHDesc` text,
  `strProjReqHClientId` varchar(45) NOT NULL,
  `dtmProjReqHDateRec` datetime NOT NULL,
  PRIMARY KEY (`strProjReqHId`),
  KEY `strProjReqHClientId_idx` (`strProjReqHClientId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblProjReqH`
--

INSERT INTO `tblProjReqH` (`strProjReqHId`, `strProjReqHDesc`, `strProjReqHClientId`, `dtmProjReqHDateRec`) VALUES
('PROJR-0001', 'basta aircon', 'CLIENT-0003', '2016-10-04 22:35:49'),
('PROJR-0002', 'For room renovation and fabrication', 'CLIENT-0006', '2016-10-10 08:24:48'),
('PROJR-0003', 'project na may palochina', 'CLIENT-0007', '2016-10-10 08:47:49'),
('PROJR-0004', 'Room Renovation', 'CLIENT-0008', '2016-10-17 09:36:42');

-- --------------------------------------------------------

--
-- Table structure for table `tblPurReqDetail`
--

CREATE TABLE IF NOT EXISTS `tblPurReqDetail` (
  `intPurReqDId` int(11) NOT NULL AUTO_INCREMENT,
  `strPurReqHId` varchar(45) NOT NULL,
  `strPurReqDItemId` varchar(45) NOT NULL,
  `strPurReqDUnitId` varchar(45) NOT NULL,
  `intPurReqDQty` int(11) NOT NULL,
  PRIMARY KEY (`intPurReqDId`,`strPurReqHId`),
  KEY `strPurReqDItemId_idx` (`strPurReqDItemId`),
  KEY `strPurReqDUnitId_idx` (`strPurReqDUnitId`),
  KEY `strPurReqHId_idx` (`strPurReqHId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=32 ;

--
-- Dumping data for table `tblPurReqDetail`
--

INSERT INTO `tblPurReqDetail` (`intPurReqDId`, `strPurReqHId`, `strPurReqDItemId`, `strPurReqDUnitId`, `intPurReqDQty`) VALUES
(27, 'PREQ-0001', 'ITEM-0004', 'UNIT-0006', 3),
(28, 'PREQ-0002', 'ITEM-0007', 'UNIT-0002', 50),
(29, 'PREQ-0002', 'ITEM-0003', 'UNIT-0003', 80),
(30, 'PREQ-0003', 'ITEM-0009', 'UNIT-0002', 50),
(31, 'PREQ-0004', 'ITEM-0002', 'UNIT-0006', 10);

-- --------------------------------------------------------

--
-- Table structure for table `tblPurReqHeader`
--

CREATE TABLE IF NOT EXISTS `tblPurReqHeader` (
  `strPurReqId` varchar(45) NOT NULL,
  `strPurReqHEmpId` varchar(45) NOT NULL,
  `dtmPurReqHDate` datetime NOT NULL,
  `intPurReqHStatus` tinyint(2) NOT NULL,
  PRIMARY KEY (`strPurReqId`),
  KEY `strPurReqHEmpId_idx` (`strPurReqHEmpId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblPurReqHeader`
--

INSERT INTO `tblPurReqHeader` (`strPurReqId`, `strPurReqHEmpId`, `dtmPurReqHDate`, `intPurReqHStatus`) VALUES
('PREQ-0001', 'EMP-0004', '2016-10-10 00:34:17', 1),
('PREQ-0002', 'EMP-0004', '2016-10-10 07:04:38', 1),
('PREQ-0003', 'EMP-0004', '2016-10-12 12:36:04', 1),
('PREQ-0004', 'EMP-0001', '2016-10-17 09:40:10', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblReservation`
--

CREATE TABLE IF NOT EXISTS `tblReservation` (
  `strResId` varchar(45) NOT NULL,
  `strResEName` varchar(100) NOT NULL,
  `strResAmenityId` varchar(45) NOT NULL,
  `dtmResDateRec` datetime NOT NULL,
  `dateReservation` date NOT NULL,
  `timeResStart` time NOT NULL,
  `timeResEnd` time NOT NULL,
  `intResStatus` tinyint(2) NOT NULL,
  `strResClientId` varchar(45) NOT NULL,
  PRIMARY KEY (`strResId`),
  KEY `strResAmenityId_idx` (`strResAmenityId`),
  KEY `strResClientId_idx` (`strResClientId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblReservation`
--

INSERT INTO `tblReservation` (`strResId`, `strResEName`, `strResAmenityId`, `dtmResDateRec`, `dateReservation`, `timeResStart`, `timeResEnd`, `intResStatus`, `strResClientId`) VALUES
('RES-0001', 'iSEMINAR', 'AME-0001', '2016-10-06 00:27:57', '2016-10-09', '09:00:00', '12:00:00', 1, 'CLIENT-0004'),
('RES-0002', 'iSeminart part 2', 'AME-0002', '2016-10-08 08:57:00', '2016-10-09', '08:00:00', '12:00:00', 1, 'CLIENT-0004'),
('RES-0003', 'DBA Seminar - Finals', 'AME-0002', '2016-10-10 08:22:39', '2016-10-15', '12:00:00', '16:00:00', 1, 'CLIENT-0005'),
('RES-0004', 'Lord Digong', 'AME-0004', '2016-10-17 09:35:39', '2016-10-22', '11:00:00', '12:00:00', 1, 'CLIENT-0005');

-- --------------------------------------------------------

--
-- Table structure for table `tblSection`
--

CREATE TABLE IF NOT EXISTS `tblSection` (
  `strSecId` varchar(45) NOT NULL,
  `strSecName` varchar(100) NOT NULL,
  `strSecDesc` text,
  PRIMARY KEY (`strSecId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblSection`
--

INSERT INTO `tblSection` (`strSecId`, `strSecName`, `strSecDesc`) VALUES
('SEC-0001', 'Building Maintenance', 'checking edit'),
('SEC-0002', 'Lights and Sounds', ''),
('SEC-0003', 'Grounds Maintenance', ''),
('SEC-0004', 'Electrical Maintenance', ''),
('SEC-0005', 'Air-conditioning', ''),
('SEC-0006', 'Building Maintenance - HASMIN', '');

-- --------------------------------------------------------

--
-- Table structure for table `tblService`
--

CREATE TABLE IF NOT EXISTS `tblService` (
  `strServId` varchar(45) NOT NULL,
  `strServName` varchar(100) NOT NULL,
  `strServDesc` varchar(100) DEFAULT NULL,
  `intServStatus` tinyint(2) NOT NULL,
  PRIMARY KEY (`strServId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblService`
--

INSERT INTO `tblService` (`strServId`, `strServName`, `strServDesc`, `intServStatus`) VALUES
('SERV-0001', 'Repair', 'under replacement', 1),
('SERV-0002', 'Install', '', 1),
('SERV-0003', 'Replacement', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblUnit`
--

CREATE TABLE IF NOT EXISTS `tblUnit` (
  `strUnitId` varchar(45) NOT NULL,
  `strUnitName` varchar(100) NOT NULL,
  `strUnitDesc` text,
  PRIMARY KEY (`strUnitId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblUnit`
--

INSERT INTO `tblUnit` (`strUnitId`, `strUnitName`, `strUnitDesc`) VALUES
('UNIT-0001', 'Can - 4 liters', ''),
('UNIT-0002', 'Piece', ''),
('UNIT-0003', 'Kilogram', ''),
('UNIT-0004', 'Gram', ''),
('UNIT-0005', 'Pack', ''),
('UNIT-0006', 'Box', 'd'),
('UNIT-0007', 'Liter', '');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tblAmenity`
--
ALTER TABLE `tblAmenity`
  ADD CONSTRAINT `strAmenityATId` FOREIGN KEY (`strAmenityATId`) REFERENCES `tblAmenityType` (`strAmenityTId`) ON UPDATE CASCADE;

--
-- Constraints for table `tblClient`
--
ALTER TABLE `tblClient`
  ADD CONSTRAINT `strClientOfficeId` FOREIGN KEY (`strClientOfficeId`) REFERENCES `tblOffice` (`strOfficeId`) ON UPDATE CASCADE;

--
-- Constraints for table `tblEmployee`
--
ALTER TABLE `tblEmployee`
  ADD CONSTRAINT `strEmpJobId` FOREIGN KEY (`strEmpJobId`) REFERENCES `tblJobTitle` (`strJobTId`) ON UPDATE CASCADE;

--
-- Constraints for table `tblEmpSkill`
--
ALTER TABLE `tblEmpSkill`
  ADD CONSTRAINT `strEmpSEmpId` FOREIGN KEY (`strEmpSEmpId`) REFERENCES `tblEmployee` (`strEmpId`) ON UPDATE CASCADE,
  ADD CONSTRAINT `strEmpSJobSId` FOREIGN KEY (`strEmpSJobSId`) REFERENCES `tblJobSkill` (`strJobSId`) ON UPDATE CASCADE;

--
-- Constraints for table `tblItem`
--
ALTER TABLE `tblItem`
  ADD CONSTRAINT `strItemITypeId` FOREIGN KEY (`strItemITypeId`) REFERENCES `tblItemType` (`strItemTypeId`) ON UPDATE CASCADE;

--
-- Constraints for table `tblItemDefect`
--
ALTER TABLE `tblItemDefect`
  ADD CONSTRAINT `strItemDefItemId` FOREIGN KEY (`strItemDefItemId`) REFERENCES `tblItem` (`strItemId`) ON UPDATE CASCADE,
  ADD CONSTRAINT `strItemDefUnitId` FOREIGN KEY (`strItemDefUnitId`) REFERENCES `tblUnit` (`strUnitId`) ON UPDATE CASCADE;

--
-- Constraints for table `tblItemDelDetail`
--
ALTER TABLE `tblItemDelDetail`
  ADD CONSTRAINT `strDeliDItemId` FOREIGN KEY (`strDeliDItemId`) REFERENCES `tblItem` (`strItemId`) ON UPDATE CASCADE,
  ADD CONSTRAINT `strDeliDUnitId` FOREIGN KEY (`strDeliDUnitId`) REFERENCES `tblUnit` (`strUnitId`) ON UPDATE CASCADE,
  ADD CONSTRAINT `strDeliHId` FOREIGN KEY (`strDeliHId`) REFERENCES `tblItemDelHeader` (`strDeliId`) ON UPDATE CASCADE;

--
-- Constraints for table `tblItemDelHeader`
--
ALTER TABLE `tblItemDelHeader`
  ADD CONSTRAINT `strDeliEmpId` FOREIGN KEY (`strDeliHEmpId`) REFERENCES `tblEmployee` (`strEmpId`) ON UPDATE CASCADE,
  ADD CONSTRAINT `strDeliPurReqHId` FOREIGN KEY (`strDeliHPurReqHId`) REFERENCES `tblPurReqHeader` (`strPurReqId`) ON UPDATE CASCADE;

--
-- Constraints for table `tblItemRelDetail`
--
ALTER TABLE `tblItemRelDetail`
  ADD CONSTRAINT `strItemRelDItemId` FOREIGN KEY (`strItemRelDItemId`) REFERENCES `tblItem` (`strItemId`) ON UPDATE CASCADE,
  ADD CONSTRAINT `strItemRelDUnitId` FOREIGN KEY (`strItemRelDUnitId`) REFERENCES `tblUnit` (`strUnitId`) ON UPDATE CASCADE,
  ADD CONSTRAINT `strItemRelHId` FOREIGN KEY (`strItemRelHId`) REFERENCES `tblItemRelHeader` (`strItemRelId`) ON UPDATE CASCADE;

--
-- Constraints for table `tblItemRelHeader`
--
ALTER TABLE `tblItemRelHeader`
  ADD CONSTRAINT `strItemRelEmpId` FOREIGN KEY (`strItemRelEmpId`) REFERENCES `tblEmployee` (`strEmpId`) ON UPDATE CASCADE,
  ADD CONSTRAINT `strItemRelReqId` FOREIGN KEY (`strItemRelItemReqId`) REFERENCES `tblItemReqHeader` (`strItemReqId`) ON UPDATE CASCADE;

--
-- Constraints for table `tblItemReqDetail`
--
ALTER TABLE `tblItemReqDetail`
  ADD CONSTRAINT `strItemReqDItemId` FOREIGN KEY (`strItemReqDItemId`) REFERENCES `tblItem` (`strItemId`) ON UPDATE CASCADE,
  ADD CONSTRAINT `strItemReqDUnitId` FOREIGN KEY (`strItemReqDUnitId`) REFERENCES `tblUnit` (`strUnitId`) ON UPDATE CASCADE,
  ADD CONSTRAINT `strItemReqHId` FOREIGN KEY (`strItemReqHId`) REFERENCES `tblItemReqHeader` (`strItemReqId`) ON UPDATE CASCADE;

--
-- Constraints for table `tblItemReqHeader`
--
ALTER TABLE `tblItemReqHeader`
  ADD CONSTRAINT `strItemReqHEmpId` FOREIGN KEY (`strItemReqHEmpId`) REFERENCES `tblEmployee` (`strEmpId`) ON UPDATE CASCADE,
  ADD CONSTRAINT `strItemReqHProjHId` FOREIGN KEY (`strItemReqHProjHId`) REFERENCES `tblProjectHeader` (`strProjHReqId`) ON UPDATE CASCADE;

--
-- Constraints for table `tblProjAssignment`
--
ALTER TABLE `tblProjAssignment`
  ADD CONSTRAINT `strProjAEmpId` FOREIGN KEY (`strProjAEmpId`) REFERENCES `tblEmployee` (`strEmpId`) ON UPDATE CASCADE,
  ADD CONSTRAINT `strProjAProjHId` FOREIGN KEY (`strProjAProjHId`) REFERENCES `tblProjectHeader` (`strProjHReqId`) ON UPDATE CASCADE;

--
-- Constraints for table `tblProjectDetail`
--
ALTER TABLE `tblProjectDetail`
  ADD CONSTRAINT `strProjDItemId` FOREIGN KEY (`strProjDItemId`) REFERENCES `tblItem` (`strItemId`) ON UPDATE CASCADE,
  ADD CONSTRAINT `strProjDProjHId` FOREIGN KEY (`strProjDProjHId`) REFERENCES `tblProjectHeader` (`strProjHReqId`) ON UPDATE CASCADE,
  ADD CONSTRAINT `strProjDUnitId` FOREIGN KEY (`strProjDUnitId`) REFERENCES `tblUnit` (`strUnitId`) ON UPDATE CASCADE;

--
-- Constraints for table `tblProjectHeader`
--
ALTER TABLE `tblProjectHeader`
  ADD CONSTRAINT `strProjHReqId` FOREIGN KEY (`strProjHReqId`) REFERENCES `tblProjReqD` (`strProjReqDId`) ON UPDATE CASCADE,
  ADD CONSTRAINT `strProjHSecId` FOREIGN KEY (`strProjHSecId`) REFERENCES `tblSection` (`strSecId`) ON UPDATE CASCADE;

--
-- Constraints for table `tblProjReqD`
--
ALTER TABLE `tblProjReqD`
  ADD CONSTRAINT `strProjReqDReqHId` FOREIGN KEY (`strProjReqDReqHId`) REFERENCES `tblProjReqH` (`strProjReqHId`) ON UPDATE CASCADE,
  ADD CONSTRAINT `strProjReqDServId` FOREIGN KEY (`strProjReqDServId`) REFERENCES `tblService` (`strServId`) ON UPDATE CASCADE;

--
-- Constraints for table `tblProjReqH`
--
ALTER TABLE `tblProjReqH`
  ADD CONSTRAINT `strProjReqHClientId` FOREIGN KEY (`strProjReqHClientId`) REFERENCES `tblClient` (`strClientId`) ON UPDATE CASCADE;

--
-- Constraints for table `tblPurReqDetail`
--
ALTER TABLE `tblPurReqDetail`
  ADD CONSTRAINT `strPurReqDItemId` FOREIGN KEY (`strPurReqDItemId`) REFERENCES `tblItem` (`strItemId`) ON UPDATE CASCADE,
  ADD CONSTRAINT `strPurReqDUnitId` FOREIGN KEY (`strPurReqDUnitId`) REFERENCES `tblUnit` (`strUnitId`) ON UPDATE CASCADE,
  ADD CONSTRAINT `strPurReqHId` FOREIGN KEY (`strPurReqHId`) REFERENCES `tblPurReqHeader` (`strPurReqId`) ON UPDATE CASCADE;

--
-- Constraints for table `tblPurReqHeader`
--
ALTER TABLE `tblPurReqHeader`
  ADD CONSTRAINT `strPurReqHEmpId` FOREIGN KEY (`strPurReqHEmpId`) REFERENCES `tblEmployee` (`strEmpId`) ON UPDATE CASCADE;

--
-- Constraints for table `tblReservation`
--
ALTER TABLE `tblReservation`
  ADD CONSTRAINT `strResAmenityId` FOREIGN KEY (`strResAmenityId`) REFERENCES `tblAmenity` (`strAmenityId`) ON UPDATE CASCADE,
  ADD CONSTRAINT `strResClientId` FOREIGN KEY (`strResClientId`) REFERENCES `tblClient` (`strClientId`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
