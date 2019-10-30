-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 30, 2019 at 03:27 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vendor_reg_schema`
--

-- --------------------------------------------------------

--
-- Table structure for table `baranggayrequest`
--

CREATE TABLE `baranggayrequest` (
  `BaranggayReq_ID` int(11) NOT NULL,
  `BaranggayAppForm` varchar(30) NOT NULL,
  `validID_ID` int(11) NOT NULL,
  `PoA_ID` int(11) NOT NULL,
  `Cert_BarBusinessReg` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bir_req`
--

CREATE TABLE `bir_req` (
  `BIR_ReqID` int(11) NOT NULL,
  `DTI_CertOfReg` varchar(30) NOT NULL,
  `Cert_BarBusinessReg` varchar(30) NOT NULL,
  `MayorBusinessPermit` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `businessnames`
--

CREATE TABLE `businessnames` (
  `businessNameID` int(11) NOT NULL,
  `nameID` int(11) NOT NULL,
  `businessName` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `businessrequest`
--

CREATE TABLE `businessrequest` (
  `businessRequestID` int(11) NOT NULL,
  `clientID` int(11) NOT NULL,
  `DTI_ReqID` int(11) NOT NULL,
  `Baranggay_ReqID` int(11) NOT NULL,
  `Mayor_ReqID` int(11) NOT NULL,
  `BIR_ReqID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `clientinfo`
--

CREATE TABLE `clientinfo` (
  `clientID` int(11) NOT NULL,
  `clientName` varchar(30) NOT NULL,
  `contactNo` int(15) NOT NULL,
  `address` varchar(50) NOT NULL,
  `emailAddress` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dtirequest`
--

CREATE TABLE `dtirequest` (
  `DTI_ReqID` int(11) NOT NULL,
  `businessNameID` int(11) NOT NULL,
  `BNAppForm` varchar(30) NOT NULL,
  `DTI_CertReg` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mayorrequest`
--

CREATE TABLE `mayorrequest` (
  `MayorReq_ID` int(11) NOT NULL,
  `mayorAppForm` varchar(30) NOT NULL,
  `mayorBusinessPermit` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `poa`
--

CREATE TABLE `poa` (
  `PoA_ID` int(11) NOT NULL,
  `proof_ID` int(11) NOT NULL,
  `proof_Type` varchar(30) NOT NULL,
  `PoA` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `validid`
--

CREATE TABLE `validid` (
  `validID_ID` int(11) NOT NULL,
  `ID_no` int(11) NOT NULL,
  `idType` varchar(30) NOT NULL,
  `ID` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `baranggayrequest`
--
ALTER TABLE `baranggayrequest`
  ADD PRIMARY KEY (`BaranggayReq_ID`);

--
-- Indexes for table `bir_req`
--
ALTER TABLE `bir_req`
  ADD PRIMARY KEY (`BIR_ReqID`);

--
-- Indexes for table `businessnames`
--
ALTER TABLE `businessnames`
  ADD PRIMARY KEY (`businessNameID`);

--
-- Indexes for table `businessrequest`
--
ALTER TABLE `businessrequest`
  ADD PRIMARY KEY (`businessRequestID`);

--
-- Indexes for table `clientinfo`
--
ALTER TABLE `clientinfo`
  ADD PRIMARY KEY (`clientID`);

--
-- Indexes for table `dtirequest`
--
ALTER TABLE `dtirequest`
  ADD PRIMARY KEY (`DTI_ReqID`);

--
-- Indexes for table `mayorrequest`
--
ALTER TABLE `mayorrequest`
  ADD PRIMARY KEY (`MayorReq_ID`);

--
-- Indexes for table `poa`
--
ALTER TABLE `poa`
  ADD UNIQUE KEY `PoA_ID` (`PoA_ID`);

--
-- Indexes for table `validid`
--
ALTER TABLE `validid`
  ADD PRIMARY KEY (`validID_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
