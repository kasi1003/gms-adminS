-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 19, 2023 at 04:24 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `htdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `cemeteries`
--

CREATE TABLE `cemeteries` (
  `CemeteryID` int(11) NOT NULL,
  `Region` varchar(50) DEFAULT NULL,
  `CemeteryName` varchar(50) NOT NULL,
  `Town` varchar(50) DEFAULT NULL,
  `NumberOfSections` int(11) DEFAULT NULL,
  `TotalGraves` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cemeteries`
--

INSERT INTO `cemeteries` (`CemeteryID`, `Region`, `CemeteryName`, `Town`, `NumberOfSections`, `TotalGraves`) VALUES
(1, '', 'Oponganda', '', 3, 3),
(2, 'Khomas', 'Oponganda', 'Windhoek', 4, 1),
(4, 'Khomas', 'Katutura', 'Windhoek', 4, 0),
(5, 'Khomas', 'Kataura', 'Windhoek', 5, 6);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cemeteries`
--
ALTER TABLE `cemeteries`
  ADD PRIMARY KEY (`CemeteryID`),
  ADD UNIQUE KEY `LocationName` (`Region`,`CemeteryName`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cemeteries`
--
ALTER TABLE `cemeteries`
  MODIFY `CemeteryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
