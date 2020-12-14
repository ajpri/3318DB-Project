-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 14, 2020 at 05:36 AM
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

--
-- Dumping data for table `Editors`
--

INSERT INTO `Editors` (`firstName`, `lastName`, `address`, `ContactNumber`, `city`, `state`, `zipCode`) VALUES
('Chris', 'Sawyer', '123 Main Street', '1234567890', 'Austin', 'Texas', '90210'),
('Tracy', 'Goldstein', '266 High Meadow St', '5704959454', 'Pittston', 'Pennsylvania', '18640'),
('James', 'Bauch', '2650 Freedom Ln', '6192005508', 'Hornitos', 'California', '95325'),
('George', 'Hotz', '1414 Meyer St', '7134645124', 'Victoria', 'Texas', '77856');

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

--
-- Dumping data for table `Locations`
--

INSERT INTO `Locations` (`name`, `address`, `ContactNumber`, `city`, `state`, `zipCode`) VALUES
('Houston Galleria', '5085 Westheimer Rd', '7136220663', 'Houston', 'Texas', '77056'),
('Pine Sol', '9410 Fuqua', '7139879479', 'Houston', 'Texas', '77075'),
('Rock Peak', '845 Watters Rd', '8451784343', 'Philadelphia', 'Pennsylvania', '71333'),
('Green Park', '843 Windy Blvd', '8479128143', 'Pasadena', 'Texas', '77034');

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
('Terry', 'Issacs', 33, '3485 Davisson St', '7657619281', 'Indianapolis', 'Indiana', '46226'),
('Olivia', 'Maxwell', 20, '4705 Heavner Avenue', '7707760811', 'Norcross', 'Georgia', '30071'),
('Austin', 'Pritchett', 22, '9538 Misty Vale Ln', '8324093442', 'Houston', 'Texas', '77075'),
('James', 'Henson', 24, '1380 Lunch Rd', '9209945212', 'Random Lake', 'Wisconsin', '53075');

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
-- Dumping data for table `Photographers`
--

INSERT INTO `Photographers` (`firstName`, `lastName`, `address`, `ContactNumber`, `city`, `state`, `zipCode`) VALUES
('John', 'Moore', '14 Golly Ave', '1341322386', 'Chicago', 'Illinois', '44474'),
('Univ', 'ofHous', '1 Main St', '7132218000', 'Houston', 'Texas', '77002'),
('Philip', 'Sherman', '42 Wallaby Way', '8674443919', 'Sydney', 'California', '91434'),
('Darth', 'Vador', '999 Resistance Way', '9999999999', 'Space City', 'Texas', '11111');

-- --------------------------------------------------------

--
-- Table structure for table `UpcomingShoots`
--

CREATE TABLE `UpcomingShoots` (
  `id` int(11) NOT NULL,
  `locationContactNumber` varchar(45) NOT NULL,
  `photographerContactNumber` varchar(45) NOT NULL,
  `modelContactNumber` varchar(45) NOT NULL,
  `dateTime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `UpcomingShoots`
--

INSERT INTO `UpcomingShoots` (`id`, `locationContactNumber`, `photographerContactNumber`, `modelContactNumber`, `dateTime`) VALUES
(1, '7136220663', '7132218000', '7657619281', '2021-01-01 13:00:00'),
(2, '7139879479', '7132218000', '7707760811', '2021-01-01 18:00:00'),
(3, '8479128143', '9999999999', '8324093442', '2021-03-15 09:00:00');

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

--
-- Indexes for table `UpcomingShoots`
--
ALTER TABLE `UpcomingShoots`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `UpcomingShoots`
--
ALTER TABLE `UpcomingShoots`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
