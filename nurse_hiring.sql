-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 11, 2025 at 07:59 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nurse_hiring`
--

-- --------------------------------------------------------

--
-- Table structure for table `nurse`
--

CREATE TABLE `nurse` (
  `N_id` int(8) NOT NULL,
  `F_name` varchar(20) DEFAULT NULL,
  `L_name` varchar(20) DEFAULT NULL,
  `NID` bigint(11) DEFAULT NULL,
  `Email` varchar(20) DEFAULT NULL,
  `Password` varchar(32) DEFAULT NULL,
  `Service` varchar(20) DEFAULT NULL,
  `BNMC_Verification` bigint(11) DEFAULT NULL,
  `Mobile` bigint(11) DEFAULT NULL,
  `Emergency_Mobile` bigint(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nurse`
--

INSERT INTO `nurse` (`N_id`, `F_name`, `L_name`, `NID`, `Email`, `Password`, `Service`, `BNMC_Verification`, `Mobile`, `Emergency_Mobile`) VALUES
(1, 'Abid', 'D', 219217648767, 'nurse@1234.com', '123456', 'Child care', 472846755675, 1836721246, 1638387656),
(6, 'Rahim', 'Q', 783982927843, 'nurse2@gmail.com', '123456', 'Elderly care', 12341241245, 1983567256, 6288462143),
(7, 'Karim', 'A', 829946472547, 'karim@gmail.com', '123456', 'Emergency care', 123541233547, 1437869337, 3994738994),
(8, 'Ria', 'F', 738998955782, 'ria@gmail.com.com', '123456', 'Oncology care', 872995583653, 1739539783, 1748825647),
(10, 'Nur', 'A', 526585937552, 'nur@gmail.com', '123456', 'Orthopedic care', 214748536472, 1235412412, 1124125412),
(15, 'Roy', 'R', 274399033675, 'roy@gmail.com', '123456', 'Psychiatric care', 673482587372, 1763438267, 1978463277),
(17, 'Joy', 'B', 789632389512, 'joy@gmail.com', '123456', 'Cardiac care', 738923974827, 1932732564, 1835636747),
(18, 'Fahim', 'F', 127385497236, 'fahim@gmail.com', '123456', 'Emergency care', 673288337727, 1836725631, 1937745626),
(19, 'Apu', 'A', 73829486237, 'apu@gmail.com', '123456', 'Emergency care', 12345876142, 1938589376, 1846266534),
(20, 'Ana', 'A', 78482899128, 'ana@gamil.com', '123456', 'Elderly care', 54753635673, 1278476238, 1123565654),
(21, 'Moon', ' M', 23523523523, 'moon@gmail.com', '123456', 'Child care', 87687235489, 1983788346, 1837486523),
(22, 'Sam', 'S', 1235421352, 'sam@gmail.com', '123456', 'Child care', 7825323563, 183276287, 189787867);

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `P_id` int(11) NOT NULL,
  `F_name` varchar(20) DEFAULT NULL,
  `L_name` varchar(20) DEFAULT NULL,
  `NID` int(11) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Mobile` int(11) DEFAULT NULL,
  `Emergency_Mobile` int(11) DEFAULT NULL,
  `Password` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`P_id`, `F_name`, `L_name`, `NID`, `Email`, `Mobile`, `Emergency_Mobile`, `Password`) VALUES
(1, 'Saad', 'H', 1234567890, 'saad@gmail.com', NULL, NULL, '123456'),
(2, 'sdrgsagh', 'aerghaerhgaergh', 234631426, 'fsda@gbdxz.asf', NULL, NULL, '123456'),
(3, 'asdasdf', 'asdfasfdas', 2147483647, 'asdfasdf@asfasf.asfasf', 2147483647, 2147483647, '123456'),
(4, 'asd', 'asd', 23123, 'asd@asd.asd', 1243124, 124124, '222222'),
(16, 'fsdf', 'sdfsdg', 2352346, 'gf@gfrd.asdf', 235235, 346346, '222222'),
(18, 'rimi', 'jimi', 8687572, 'rim@gmail.com', 1938997, 3294059, '2222222'),
(19, 'erygeg', 'waydfytawf', 235346, 'euefyuaey@hgaef.wafeyg', 346346, 3463467, '111111');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `nurse`
--
ALTER TABLE `nurse`
  ADD PRIMARY KEY (`N_id`),
  ADD UNIQUE KEY `BNMC verification` (`BNMC_Verification`),
  ADD UNIQUE KEY `Email` (`Email`),
  ADD UNIQUE KEY `NID` (`NID`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`P_id`),
  ADD UNIQUE KEY `NID` (`NID`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `nurse`
--
ALTER TABLE `nurse`
  MODIFY `N_id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `P_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
