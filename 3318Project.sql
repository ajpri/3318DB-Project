-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 13, 2020 at 07:55 PM
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
-- Database: `3318Project`
--

-- --------------------------------------------------------

--
-- Table structure for table `Editors`
--

CREATE TABLE `Editors` (
  `firstName` longtext DEFAULT NULL,
  `lastName` longtext DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `ContactNumber` varchar(45) NOT NULL,
  `city` longtext DEFAULT NULL,
  `state` longtext DEFAULT NULL,
  `zipCode` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Locations`
--

CREATE TABLE `Locations` (
  `name` longtext DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `ContactNumber` varchar(45) NOT NULL,
  `city` longtext DEFAULT NULL,
  `state` longtext DEFAULT NULL,
  `zipCode` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Models`
--

CREATE TABLE `Models` (
  `firstName` longtext DEFAULT NULL,
  `lastName` longtext DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `ContactNumber` varchar(45) NOT NULL,
  `city` longtext DEFAULT NULL,
  `state` longtext DEFAULT NULL,
  `zipCode` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Models`
--

INSERT INTO `Models` (`firstName`, `lastName`, `age`, `address`, `ContactNumber`, `city`, `state`, `zipCode`) VALUES
('Austin', 'Pritchett', 22, '9538 Misty Vale Ln', '8324093442', 'Houston', 'Texas', '77075');

-- --------------------------------------------------------

--
-- Table structure for table `Photographers`
--

CREATE TABLE `Photographers` (
  `firstName` longtext DEFAULT NULL,
  `lastName` longtext DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `ContactNumber` varchar(45) NOT NULL,
  `city` longtext DEFAULT NULL,
  `state` longtext DEFAULT NULL,
  `zipCode` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Editors`
--
ALTER TABLE `Editors`
  ADD PRIMARY KEY (`ContactNumber`);

--
-- Indexes for table `Locations`
--
ALTER TABLE `Locations`
  ADD PRIMARY KEY (`ContactNumber`);

--
-- Indexes for table `Models`
--
ALTER TABLE `Models`
  ADD PRIMARY KEY (`ContactNumber`);

--
-- Indexes for table `Photographers`
--
ALTER TABLE `Photographers`
  ADD PRIMARY KEY (`ContactNumber`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
