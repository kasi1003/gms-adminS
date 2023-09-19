-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 19, 2023 at 04:25 PM
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
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `SectionID` int(11) NOT NULL,
  `CemeteryID` int(11) DEFAULT NULL,
  `SectionCode` varchar(10) NOT NULL,
  `TotalGraves` int(11) DEFAULT NULL,
  `AvailableGraves` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`SectionID`, `CemeteryID`, `SectionCode`, `TotalGraves`, `AvailableGraves`) VALUES
(1, 1, 'Section 1', 3, 3),
(2, 1, 'Section 2', 3, 3),
(3, 1, 'Section 3', 3, 3),
(4, 2, 'Section 1', 1, 1),
(5, 2, 'Section 2', 1, 1),
(6, 2, 'Section 3', 1, 1),
(7, 2, 'Section 4', 1, 1),
(8, 4, 'Section 1', 0, 0),
(9, 4, 'Section 2', 0, 0),
(10, 4, 'Section 3', 0, 0),
(11, 4, 'Section 4', 0, 0),
(12, 5, 'Section 1', 6, 6),
(13, 5, 'Section 2', 6, 6),
(14, 5, 'Section 3', 6, 6),
(15, 5, 'Section 4', 6, 6),
(16, 5, 'Section 5', 6, 6);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`SectionID`),
  ADD KEY `CemeteryID` (`CemeteryID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `SectionID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `sections`
--
ALTER TABLE `sections`
  ADD CONSTRAINT `sections_ibfk_1` FOREIGN KEY (`CemeteryID`) REFERENCES `cemeteries` (`CemeteryID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
