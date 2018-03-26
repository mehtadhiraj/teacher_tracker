-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 26, 2018 at 05:12 PM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `teacher_tracker`
--

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `branch` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`branch`) VALUES
('CE'),
('EXTC'),
('IT'),
('Mech'),
('PPT');

-- --------------------------------------------------------

--
-- Table structure for table `day_of_week`
--

CREATE TABLE `day_of_week` (
  `days` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `day_of_week`
--

INSERT INTO `day_of_week` (`days`) VALUES
('Friday'),
('Monday'),
('Thursday'),
('Tuesday'),
('Wednesday');

-- --------------------------------------------------------

--
-- Table structure for table `lec_no`
--

CREATE TABLE `lec_no` (
  `lecture` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lec_no`
--

INSERT INTO `lec_no` (`lecture`) VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7);

-- --------------------------------------------------------

--
-- Table structure for table `room_no`
--

CREATE TABLE `room_no` (
  `room` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room_no`
--

INSERT INTO `room_no` (`room`) VALUES
('CR-101'),
('CR-102'),
('CR-111'),
('CR-112'),
('CR-113'),
('CR-117'),
('CR-118'),
('CR-119'),
('CR-201'),
('CR-202'),
('CR-203'),
('CR-211'),
('CR-301'),
('CR-302'),
('CR-303'),
('CR-304'),
('CR-313'),
('CR-319'),
('Faculty Room'),
('FR-04-A'),
('FR-103A'),
('FR-103B'),
('FR-108'),
('FR-115'),
('FR-116'),
('FR-212'),
('FR-213'),
('FR-214'),
('FR-215'),
('FR-217'),
('FR-311'),
('L-01'),
('L-02'),
('L-03'),
('L-04'),
('L-05'),
('L-06'),
('L-07'),
('L-104'),
('L-105'),
('L-106'),
('L-107'),
('L-114'),
('L-205'),
('L-206'),
('L-207'),
('L-208'),
('L-305'),
('L-306'),
('L-307'),
('L-308'),
('L-313'),
('L-314'),
('L-328'),
('L-330'),
('L-331'),
('L-332'),
('NL1'),
('NL2'),
('NL3'),
('NT1'),
('NT2'),
('R-120'),
('R-121'),
('R-209'),
('R-216'),
('R-309'),
('R-312'),
('R-315'),
('SR-310');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `name` varchar(25) NOT NULL,
  `branch` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`name`, `branch`) VALUES
('Prof. Aparna Bannore', 'CE'),
('Prof. Deepti Reddy', 'CE'),
('Prof. Rizwana Shaikh', 'CE'),
('Prof.Kalyani Pampattiwar', 'CE'),
('Prof.Masooda Modak', 'CE'),
('Prof.Namrata Patel', 'CE'),
('Prof.Prachi Shahane', 'CE'),
('Prof.Rajesh Kadu', 'CE'),
('Prof.Roopal Mamtora', 'CE'),
('Prof.Suvarna Chaure', 'CE'),
('NO DATA (EXTC)', 'EXTC'),
('Prof. Bushra Shaikh', 'IT'),
('Prof. Deepali Gawali', 'IT'),
('Prof. Lakshmisudha K.', 'IT'),
('Prof. Leena V. Ladge', 'IT'),
('Prof. Mrinal Khadse.', 'IT'),
('Prof. Saritha L.R.', 'IT'),
('Prof. Savita Lohiya', 'IT'),
('Prof. Seema Redekar', 'IT'),
('Prof. Stephy Benny', 'IT'),
('Prof. Stuti Ahuja', 'IT'),
('Prof. Varsha Mali', 'IT'),
('Prof. Vijay Katkar', 'IT'),
('NO DATA (MECH)', 'Mech'),
('NO DATA (PPT)', 'PPT');

-- --------------------------------------------------------

--
-- Table structure for table `teachers_load`
--

CREATE TABLE `teachers_load` (
  `name` varchar(50) DEFAULT NULL,
  `branch` varchar(25) DEFAULT NULL,
  `day` varchar(25) DEFAULT NULL,
  `L1` varchar(25) DEFAULT NULL,
  `L2` varchar(25) DEFAULT NULL,
  `L3` varchar(25) DEFAULT NULL,
  `L4` varchar(25) DEFAULT NULL,
  `L5` varchar(25) DEFAULT NULL,
  `L6` varchar(25) DEFAULT NULL,
  `L7` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teachers_load`
--

INSERT INTO `teachers_load` (`name`, `branch`, `day`, `L1`, `L2`, `L3`, `L4`, `L5`, `L6`, `L7`) VALUES
('Prof. Leena V. Ladge', 'IT', 'Monday', 'Faculty Room', 'Faculty Room', 'Faculty Room', 'Faculty Room', 'Faculty Room', 'CR-118', 'Faculty Room'),
('Prof. Leena V. Ladge', 'IT', 'Tuesday', 'CR-118', 'Faculty Room', 'L-314', 'L-314', 'Faculty Room', 'Faculty Room', 'Faculty Room'),
('Prof. Leena V. Ladge', 'IT', 'Wednesday', 'L-314', 'L-314', 'Faculty Room', 'Faculty Room', 'Faculty Room', 'CR-118', 'Faculty Room'),
('Prof. Leena V. Ladge', 'IT', 'Thursday', 'L-314', 'L-314', 'CR-202', 'Faculty Room', 'Faculty Room', 'L-314', 'L-314'),
('Prof. Leena V. Ladge', 'IT', 'Friday', 'Faculty Room', 'Faculty Room', 'Faculty Room', 'Faculty Room', 'Faculty Room', 'Faculty Room', 'Faculty Room'),
('Prof. Lakshmisudha K.', 'IT', 'Monday', 'L-107', 'L-107', 'Faculty Room', 'Faculty Room', 'Faculty Room', 'Faculty Room', 'CR-118'),
('Prof. Lakshmisudha K.', 'IT', 'Tuesday', 'Faculty Room', 'Faculty Room', 'L-107', 'L-107', 'Faculty Room', 'CR-202', 'Faculty Room'),
('Prof. Lakshmisudha K.', 'IT', 'Wednesday', 'L-107', 'L-107', 'Faculty Room', 'CR-118', 'Faculty Room', 'Faculty Room', 'Faculty Room'),
('Prof. Lakshmisudha K.', 'IT', 'Thursday', 'Faculty Room', 'Faculty Room', 'Faculty Room', 'CR-202', 'Faculty Room', 'Faculty Room', 'Faculty Room'),
('Prof. Lakshmisudha K.', 'IT', 'Friday', 'Faculty Room', 'Faculty Room', 'Faculty Room', 'Faculty Room', 'Faculty Room', 'Faculty Room', 'Faculty Room'),
('Prof. Mrinal Khadse.', 'IT', 'Monday', 'Faculty Room', 'Faculty Room', 'L-107', 'L-107', 'Faculty Room', 'CR-202', 'Faculty Room'),
('Prof. Mrinal Khadse.', 'IT', 'Tuesday', 'L-107', 'L-107', 'Faculty Room', 'Faculty Room', 'CR-118', 'Faculty Room', 'Faculty Room'),
('Prof. Mrinal Khadse.', 'IT', 'Wednesday', 'CR-202', 'Faculty Room', 'L-107', 'L-107', 'Faculty Room', 'Faculty Room', 'Faculty Room'),
('Prof. Mrinal Khadse.', 'IT', 'Thursday', 'Faculty Room', 'CR-202', 'L-107', 'L-107', 'Faculty Room', 'Faculty Room', 'Faculty Room'),
('Prof. Mrinal Khadse.', 'IT', 'Friday', 'L-107', 'L-107', 'L-107', 'L-107', 'Faculty Room', 'Faculty Room', 'Faculty Room'),
('Prof. Vijay Katkar', 'IT', 'Monday', 'Faculty Room', 'CR-202', 'Faculty Room', 'Faculty Room', 'CR-118', 'L-106', 'L-106'),
('Prof. Vijay Katkar', 'IT', 'Tuesday', 'Faculty Room', 'Faculty Room', 'CR-202', 'Faculty Room', 'Faculty Room', 'Faculty Room', 'Faculty Room'),
('Prof. Vijay Katkar', 'IT', 'Wednesday', 'Faculty Room', 'CR-118', 'L-106', 'L-106', 'Faculty Room', 'Faculty Room', 'Faculty Room'),
('Prof. Vijay Katkar', 'IT', 'Thursday', 'Faculty Room', 'Faculty Room', 'Faculty Room', 'Faculty Room', 'Faculty Room', 'Faculty Room', 'Faculty Room'),
('Prof. Vijay Katkar', 'IT', 'Friday', 'L-106', 'L-106', 'Faculty Room', 'CR-202', 'CR-118', 'Faculty Room', 'Faculty Room'),
('Prof. Savita Lohiya', 'IT', 'Monday', 'Faculty Room', 'CR-118', 'Faculty Room', 'Faculty Room', 'Faculty Room', 'Faculty Room', 'Faculty Room'),
('Prof. Savita Lohiya', 'IT', 'Tuesday', 'L-105', 'L-105', 'Faculty Room', 'CR-118', 'Faculty Room', 'L-107', 'L-107'),
('Prof. Savita Lohiya', 'IT', 'Wednesday', 'Faculty Room', 'Faculty Room', 'L-107', 'L-107', 'L-107', 'L-107', 'Faculty Room'),
('Prof. Savita Lohiya', 'IT', 'Thursday', 'Faculty Room', 'Faculty Room', 'L-106', 'L-106', 'CR-118', 'Faculty Room', 'Faculty Room'),
('Prof. Savita Lohiya', 'IT', 'Friday', 'CR-118', 'Faculty Room', 'L-107', 'L-107', 'Faculty Room', 'Faculty Room', 'Faculty Room'),
('Prof. Seema Redekar', 'IT', 'Monday', 'Faculty Room', 'Faculty Room', 'L-106', 'L-106', 'CR-202', 'Faculty Room', 'Faculty Room'),
('Prof. Seema Redekar', 'IT', 'Tuesday', 'L-106', 'L-106', 'Faculty Room', 'Faculty Room', 'Faculty Room', 'L-106', 'L-106'),
('Prof. Seema Redekar', 'IT', 'Wednesday', 'Faculty Room', 'CR-202', 'Faculty Room', 'Faculty Room', 'L-106', 'L-106', 'Faculty Room'),
('Prof. Seema Redekar', 'IT', 'Thursday', 'CR-202', 'Faculty Room', 'Faculty Room', 'Faculty Room', 'Faculty Room', 'Faculty Room', 'Faculty Room'),
('Prof. Seema Redekar', 'IT', 'Friday', 'Faculty Room', 'Faculty Room', 'L-106', 'L-106', 'Faculty Room', 'CR-202', 'Faculty Room'),
('Prof. Saritha L.R.', 'IT', 'Monday', 'Faculty Room', 'Faculty Room', 'L-105', 'L-105', 'CR-117', 'Faculty Room', 'Faculty Room'),
('Prof. Saritha L.R.', 'IT', 'Tuesday', 'Faculty Room', 'Faculty Room', 'CR-118', 'Faculty Room', 'CR-117', 'Faculty Room', 'Faculty Room'),
('Prof. Saritha L.R.', 'IT', 'Wednesday', 'Faculty Room', 'Faculty Room', 'CR-202', 'Faculty Room', 'Faculty Room', 'CR-202', 'Faculty Room'),
('Prof. Saritha L.R.', 'IT', 'Thursday', 'Faculty Room', 'Faculty Room', 'L-105', 'L-105', 'Faculty Room', 'CR-118', 'Faculty Room'),
('Prof. Saritha L.R.', 'IT', 'Friday', 'L-107', 'L-107', 'CR-118', 'Faculty Room', 'CR-202', 'Faculty Room', 'Faculty Room'),
('Prof. Varsha Mali', 'IT', 'Monday', 'Faculty Room', 'Faculty Room', 'Faculty Room', 'Faculty Room', 'NT2', 'L-107', 'L-107'),
('Prof. Varsha Mali', 'IT', 'Tuesday', 'Faculty Room', 'Faculty Room', 'L-105', 'L-105', 'NT2', 'Faculty Room', 'Faculty Room'),
('Prof. Varsha Mali', 'IT', 'Wednesday', 'L-105', 'L-105', 'Faculty Room', 'Faculty Room', 'Faculty Room', 'NT2', 'Faculty Room'),
('Prof. Varsha Mali', 'IT', 'Thursday', 'Faculty Room', 'Faculty Room', 'Faculty Room', 'Faculty Room', 'Faculty Room', 'L-105', 'L-105'),
('Prof. Varsha Mali', 'IT', 'Friday', 'Faculty Room', 'Faculty Room', 'NT2', 'Faculty Room', 'Faculty Room', 'L-105', 'L-105'),
('Prof. Bushra Shaikh', 'IT', 'Monday', 'L-106', 'L-106', 'CR-118', 'Faculty Room', 'L-106', 'L-106', 'Faculty Room'),
('Prof. Bushra Shaikh', 'IT', 'Tuesday', 'Faculty Room', 'Faculty Room', 'L-106', 'L-106', 'Faculty Room', 'Faculty Room', 'CR-202'),
('Prof. Bushra Shaikh', 'IT', 'Wednesday', 'Faculty Room', 'Faculty Room', 'CR-202', 'Faculty Room', 'Faculty Room', 'Faculty Room', 'Faculty Room'),
('Prof. Bushra Shaikh', 'IT', 'Thursday', 'L-106', 'L-106', 'Faculty Room', 'Faculty Room', 'Faculty Room', 'L-106', 'L-106'),
('Prof. Bushra Shaikh', 'IT', 'Friday', 'Faculty Room', 'Faculty Room', 'CR-202', 'Faculty Room', 'L-106', 'L-106', 'Faculty Room'),
('Prof. Stuti Ahuja', 'IT', 'Monday', 'Faculty Room', 'Faculty Room', 'CR-202', 'Faculty Room', 'Faculty Room', 'L-105', 'L-105'),
('Prof. Stuti Ahuja', 'IT', 'Tuesday', 'Faculty Room', 'CR-202', 'Faculty Room', 'Faculty Room', 'Faculty Room', 'L-105', 'L-105'),
('Prof. Stuti Ahuja', 'IT', 'Wednesday', 'CR-118', 'Faculty Room', 'L-105', 'L-105', 'L-105', 'L-105', 'Faculty Room'),
('Prof. Stuti Ahuja', 'IT', 'Thursday', 'Faculty Room', 'Faculty Room', 'Faculty Room', 'Faculty Room', 'Faculty Room', 'Faculty Room', 'Faculty Room'),
('Prof. Stuti Ahuja', 'IT', 'Friday', 'L-105', 'L-105', 'L-105', 'L-105', 'Faculty Room', 'CR-118', 'Faculty Room'),
('Prof. Stephy Benny', 'IT', 'Monday', 'CR-118', 'Faculty Room', 'L-107', 'L-107', 'Faculty Room', 'Faculty Room', 'Faculty Room'),
('Prof. Stephy Benny', 'IT', 'Tuesday', 'L-107', 'L-107', 'Faculty Room', 'Faculty Room', 'Faculty Room', 'CR-118', 'Faculty Room'),
('Prof. Stephy Benny', 'IT', 'Wednesday', 'Faculty Room', 'Faculty Room', 'Faculty Room', 'CR-202', 'L-107', 'L-107', 'Faculty Room'),
('Prof. Stephy Benny', 'IT', 'Thursday', 'Faculty Room', 'Faculty Room', 'L-107', 'L-107', 'Faculty Room', 'L-107', 'L-107'),
('Prof. Stephy Benny', 'IT', 'Friday', 'Faculty Room', 'CR-118', 'Faculty Room', 'Faculty Room', 'L-107', 'L-107', 'Faculty Room'),
('Prof. Deepali Gawali', 'IT', 'Monday', 'Faculty Room', 'NT1', 'Faculty Room', 'CR-202', 'Faculty Room', 'L-107', 'L-107'),
('Prof. Deepali Gawali', 'IT', 'Tuesday', 'Faculty Room', 'CR-118', 'Faculty Room', 'CR-202', 'Faculty Room', 'L-107', 'L-107'),
('Prof. Deepali Gawali', 'IT', 'Wednesday', 'Faculty Room', 'NT1', 'Faculty Room', 'Faculty Room', 'CR-202', 'Faculty Room', 'Faculty Room'),
('Prof. Deepali Gawali', 'IT', 'Thursday', 'Faculty Room', 'NT2', 'Faculty Room', 'Faculty Room', 'CR-202', 'Faculty Room', 'Faculty Room'),
('Prof. Deepali Gawali', 'IT', 'Friday', 'CR-202', 'Faculty Room', 'Faculty Room', 'CR-118', 'Faculty Room', 'NT1', 'Faculty Room'),
('Prof. Rizwana Shaikh', 'CE', 'Monday', 'Faculty Room', 'Faculty Room', 'CR-102', 'Faculty Room', 'Faculty Room', 'Faculty Room', 'Faculty Room'),
('Prof. Rizwana Shaikh', 'CE', 'Tuesday', 'Faculty Room', 'Faculty Room', 'NL2', 'NL2', 'Faculty Room', 'Faculty Room', 'CR-201'),
('Prof. Rizwana Shaikh', 'CE', 'Wednesday', 'Faculty Room', 'Faculty Room', 'Faculty Room', 'CR-102', 'Faculty Room', 'Faculty Room', 'Faculty Room'),
('Prof. Rizwana Shaikh', 'CE', 'Thursday', 'Faculty Room', 'CR-102', 'Faculty Room', 'Faculty Room', 'Faculty Room', 'Faculty Room', 'Faculty Room'),
('Prof. Rizwana Shaikh', 'CE', 'Friday', 'NL3', 'NL3', 'Faculty Room', 'Faculty Room', 'Faculty Room', 'NL1', 'NL1'),
('Prof. Aparna Bannore', 'CE', 'Monday', 'L-308', 'L-308', 'Faculty Room', 'CR-113', 'Faculty Room', 'Faculty Room', 'CR-113'),
('Prof. Aparna Bannore', 'CE', 'Tuesday', 'NL2', 'NL2', 'CR-113', 'Faculty Room', 'Faculty Room', 'CR-113', 'Faculty Room'),
('Prof. Aparna Bannore', 'CE', 'Wednesday', 'Faculty Room', 'Faculty Room', 'Faculty Room', 'Faculty Room', 'Faculty Room', 'Faculty Room', 'Faculty Room'),
('Prof. Aparna Bannore', 'CE', 'Thursday', 'Faculty Room', 'CR-113', 'Faculty Room', 'CR-113', 'Faculty Room', 'Faculty Room', 'Faculty Room'),
('Prof. Aparna Bannore', 'CE', 'Friday', 'Faculty Room', 'Faculty Room', 'Faculty Room', 'CR-113', 'Faculty Room', 'CR-113', 'Faculty Room'),
('Prof. Deepti Reddy', 'CE', 'Monday', 'L-313', 'L-313', 'Faculty Room', 'CR-102', 'Faculty Room', 'Faculty Room', 'Faculty Room'),
('Prof. Deepti Reddy', 'CE', 'Tuesday', 'NL3', 'NL3', 'Faculty Room', 'Faculty Room', 'L-308', 'L-308', 'Faculty Room'),
('Prof. Deepti Reddy', 'CE', 'Wednesday', 'Faculty Room', 'CR-102', 'Faculty Room', 'Faculty Room', 'L-106', 'L-106', 'CR-102'),
('Prof. Deepti Reddy', 'CE', 'Thursday', 'Faculty Room', 'Faculty Room', 'Faculty Room', 'CR-102', 'Faculty Room', 'L-107', 'L-107'),
('Prof.Prachi Shahane', 'CE', 'Monday', 'Faculty Room', 'Faculty Room', 'Faculty Room', 'Faculty Room', 'CR-201', 'Faculty Room', 'CR-201'),
('Prof.Prachi Shahane', 'CE', 'Tuesday', 'Faculty Room', 'Faculty Room', 'Faculty Room', 'CR-113', 'Faculty Room', 'Faculty Room', 'Faculty Room'),
('Prof.Prachi Shahane', 'CE', 'Wednesday', 'Faculty Room', 'CR-201', 'NL3', 'NL3', 'L-308', 'L-308', 'Faculty Room'),
('Prof.Prachi Shahane', 'CE', 'Thursday', 'Faculty Room', 'Faculty Room', 'CR-113', 'Faculty Room', 'NL3', 'NL3', 'CR-201'),
('Prof.Prachi Shahane', 'CE', 'Friday', 'CR-113', 'Faculty Room', 'L-308', 'L-308', 'CR-201', 'Faculty Room', 'Faculty Room'),
('Prof.Suvarna Chaure', 'CE', 'Monday', 'Faculty Room', 'CR-113', 'Faculty Room', 'Faculty Room', 'L-308', 'L-308', 'CR-101'),
('Prof.Suvarna Chaure', 'CE', 'Tuesday', 'Faculty Room', 'Faculty Room', 'CR-101', 'Faculty Room', 'CR-113', 'NL2', 'NL2'),
('Prof.Suvarna Chaure', 'CE', 'Wednesday', 'NL2', 'NL2', 'Faculty Room', 'CR-101', 'Faculty Room', 'Faculty Room', 'Faculty Room'),
('Prof.Suvarna Chaure', 'CE', 'Thursday', 'Faculty Room', 'Faculty Room', 'Faculty Room', 'Faculty Room', 'CR-113', 'Faculty Room', 'Faculty Room'),
('Prof.Suvarna Chaure', 'CE', 'Friday', 'Faculty Room', 'CR-113', 'NL2', 'NL2', 'Faculty Room', 'Faculty Room', 'CR-101'),
('Prof.Masooda Modak', 'CE', 'Monday', 'Faculty Room', 'CR-101', 'Faculty Room', 'CR-112', 'L-308', 'L-308', 'Faculty Room'),
('Prof.Masooda Modak', 'CE', 'Tuesday', 'L-313', 'L-313', 'Faculty Room', 'Faculty Room', 'Faculty Room', 'Faculty Room', 'Faculty Room'),
('Prof.Masooda Modak', 'CE', 'Wednesday', 'Faculty Room', 'Faculty Room', 'Faculty Room', 'Faculty Room', 'NL2', 'NL2', 'Faculty Room'),
('Prof.Masooda Modak', 'CE', 'Thursday', 'Faculty Room', 'CR-101', 'Faculty Room', 'CR-112', 'NL1', 'NL1', 'Faculty Room'),
('Prof.Masooda Modak', 'CE', 'Friday', 'L-308', 'L-308', 'Faculty Room', 'Faculty Room', 'Faculty Room', 'NL2', 'NL2'),
('Prof.Kalyani Pampattiwar', 'CE', 'Monday', 'NL1', 'NL1', 'Faculty Room', 'Faculty Room', 'Faculty Room', 'CR-102', 'Faculty Room'),
('Prof.Kalyani Pampattiwar', 'CE', 'Tuesday', 'L-308', 'L-308', 'CR-102', 'Faculty Room', 'L-313', 'L-313', 'Faculty Room'),
('Prof.Kalyani Pampattiwar', 'CE', 'Wednesday', 'L-106', 'L-106', 'Faculty Room', 'Faculty Room', 'CR-102', 'Faculty Room', 'Faculty Room'),
('Prof.Kalyani Pampattiwar', 'CE', 'Thursday', 'Faculty Room', 'Faculty Room', 'L-106', 'L-106', 'Faculty Room', 'Faculty Room', 'Faculty Room'),
('Prof.Kalyani Pampattiwar', 'CE', 'Friday', 'L-313', 'L-313', 'CR-102', 'Faculty Room', 'L-106', 'L-106', 'Faculty Room'),
('Prof.Namrata Patel', 'CE', 'Monday', 'Faculty Room', 'Faculty Room', 'CR-101', 'Faculty Room', 'Faculty Room', 'CR-319', 'Faculty Room'),
('Prof.Namrata Patel', 'CE', 'Tuesday', 'Faculty Room', 'Faculty Room', 'CR-319', 'Faculty Room', 'L-05', 'L-05', 'Faculty Room'),
('Prof.Namrata Patel', 'CE', 'Wednesday', 'Faculty Room', 'Faculty Room', 'CR-319', 'Faculty Room', 'NL1', 'NL1', 'CR-201'),
('Prof.Namrata Patel', 'CE', 'Thursday', 'L-05', 'L-05', 'Faculty Room', 'Faculty Room', 'CR-101', 'Faculty Room', 'L-05'),
('Prof.Namrata Patel', 'CE', 'Friday', 'CR-319', 'Faculty Room', 'L-05', 'L-05', 'Faculty Room', 'CR-101', 'Faculty Room'),
('Prof.Roopal Mamtora', 'CE', 'Monday', 'Faculty Room', 'Faculty Room', 'CR-113', 'Faculty Room', 'L-313', 'L-313', 'Faculty Room'),
('Prof.Roopal Mamtora', 'CE', 'Wednesday', 'Faculty Room', 'Faculty Room', 'Faculty Room', 'CR-201', 'L-313', 'L-313', 'Faculty Room'),
('Prof.Roopal Mamtora', 'CE', 'Thursday', 'L-313', 'L-313', 'L-308', 'L-308', 'CR-102', 'Faculty Room', 'Faculty Room'),
('Prof.Roopal Mamtora', 'CE', 'Friday', 'Faculty Room', 'Faculty Room', 'L-106', 'L-106', 'Faculty Room', 'Faculty Room', 'Faculty Room'),
('Prof.Roopal Mamtora', 'CE', 'Tuesday', 'L-106', 'L-106', 'L-313', 'L-313', 'Faculty Room', 'CR-313', 'Faculty Room'),
('Prof. Deepti Reddy', 'CE', 'Friday', 'Faculty Room', 'Faculty Room', 'Faculty Room', 'Faculty Room', 'Faculty Room', 'Faculty Room', 'Faculty Room'),
('Prof.Rajesh Kadu', 'CE', 'Monday', 'Faculty Room', 'Faculty Room', 'CR-201', 'Faculty Room', 'NL3', 'NL3', 'Faculty Room'),
('Prof.Rajesh Kadu', 'CE', 'Tuesday', 'CR-101', 'Faculty Room', 'NL3', 'NL3', 'Faculty Room', 'Faculty Room', 'Faculty Room'),
('Prof.Rajesh Kadu', 'CE', 'Wednesday', 'CR-201', 'CR-201', 'CR-113', 'CR-113', 'Faculty Room', 'Faculty Room', 'Faculty Room'),
('Prof.Rajesh Kadu', 'CE', 'Thursday', 'Faculty Room', 'Faculty Room', 'Faculty Room', 'Faculty Room', 'Faculty Room', 'L-106', 'L-106'),
('Prof.Rajesh Kadu', 'CE', 'Friday', 'Faculty Room', 'Faculty Room', 'Faculty Room', 'Faculty Room', 'L-308', 'L-308', 'Faculty Room');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`branch`);

--
-- Indexes for table `day_of_week`
--
ALTER TABLE `day_of_week`
  ADD PRIMARY KEY (`days`);

--
-- Indexes for table `lec_no`
--
ALTER TABLE `lec_no`
  ADD PRIMARY KEY (`lecture`),
  ADD KEY `lecture` (`lecture`);

--
-- Indexes for table `room_no`
--
ALTER TABLE `room_no`
  ADD PRIMARY KEY (`room`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`name`),
  ADD KEY `fk_branch` (`branch`);

--
-- Indexes for table `teachers_load`
--
ALTER TABLE `teachers_load`
  ADD KEY `name` (`name`),
  ADD KEY `branch` (`branch`),
  ADD KEY `L1` (`L1`),
  ADD KEY `L2` (`L2`),
  ADD KEY `L3` (`L3`),
  ADD KEY `L4` (`L4`),
  ADD KEY `L5` (`L5`),
  ADD KEY `L6` (`L6`),
  ADD KEY `L7` (`L7`),
  ADD KEY `day` (`day`,`L1`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `teacher`
--
ALTER TABLE `teacher`
  ADD CONSTRAINT `fk_branch` FOREIGN KEY (`branch`) REFERENCES `branch` (`branch`);

--
-- Constraints for table `teachers_load`
--
ALTER TABLE `teachers_load`
  ADD CONSTRAINT `teachers_load_ibfk_1` FOREIGN KEY (`name`) REFERENCES `teacher` (`name`),
  ADD CONSTRAINT `teachers_load_ibfk_10` FOREIGN KEY (`L7`) REFERENCES `room_no` (`room`),
  ADD CONSTRAINT `teachers_load_ibfk_2` FOREIGN KEY (`branch`) REFERENCES `branch` (`branch`),
  ADD CONSTRAINT `teachers_load_ibfk_3` FOREIGN KEY (`day`) REFERENCES `day_of_week` (`days`),
  ADD CONSTRAINT `teachers_load_ibfk_4` FOREIGN KEY (`L1`) REFERENCES `room_no` (`room`),
  ADD CONSTRAINT `teachers_load_ibfk_5` FOREIGN KEY (`L2`) REFERENCES `room_no` (`room`),
  ADD CONSTRAINT `teachers_load_ibfk_6` FOREIGN KEY (`L3`) REFERENCES `room_no` (`room`),
  ADD CONSTRAINT `teachers_load_ibfk_7` FOREIGN KEY (`L4`) REFERENCES `room_no` (`room`),
  ADD CONSTRAINT `teachers_load_ibfk_8` FOREIGN KEY (`L5`) REFERENCES `room_no` (`room`),
  ADD CONSTRAINT `teachers_load_ibfk_9` FOREIGN KEY (`L6`) REFERENCES `room_no` (`room`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
