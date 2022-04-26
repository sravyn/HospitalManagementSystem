-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 21, 2022 at 02:02 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hospital1`
--
CREATE DATABASE IF NOT EXISTS `hospital1` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `hospital1`;

-- --------------------------------------------------------

--
-- Table structure for table `channel`
--
-- Creation: Apr 19, 2021 at 02:45 PM
--

CREATE TABLE `channel` (
  `channel_no` varchar(250) NOT NULL,
  `dr_name` varchar(30) NOT NULL,
  `pa_name` varchar(30) NOT NULL,
  `room` int(20) NOT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `channel`
--

INSERT INTO `channel` (`channel_no`, `dr_name`, `pa_name`, `room`, `Date`) VALUES
('CH001', 'DS001', 'PS002', 1, '2021-04-23'),
('CH002', 'DS002', 'PS001', 2, '2021-04-20'),
('CH003', 'DS003', 'PS003', 4, '2021-04-23'),
('CH004', 'DS003', 'PS001', 4, '2021-04-24');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--
-- Creation: Apr 15, 2021 at 06:45 AM
--

CREATE TABLE `doctor` (
  `doctor_no` varchar(250) NOT NULL,
  `doctor_name` varchar(250) NOT NULL,
  `specialization` varchar(250) NOT NULL,
  `qualification` varchar(250) NOT NULL,
  `fee` int(200) NOT NULL,
  `phone_no` int(200) NOT NULL,
  `room` int(20) NOT NULL,
  `logid` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`doctor_no`, `doctor_name`, `specialization`, `qualification`, `fee`, `phone_no`, `room`, `logid`) VALUES
('DS001', 'Mouni', 'Cardio', 'MD', 1000, 775895, 1, 0),
('DS002', 'Thomas', 'Dental', 'BDS', 500, 7688, 2, 4),
('DS003', 'Vinay', 'Pediatrician', 'MD,MBBS', 500, 6786789, 4, 105),
('DS004', 'Smriti', 'Gynecologist', 'MD,MBBS', 1000, 5678547, 6, 106),
('DS005', 'Sindhu', 'General Medicine', 'MD', 900, 67895, 7, 107);

-- --------------------------------------------------------

--
-- Table structure for table `item`
--
-- Creation: Apr 15, 2021 at 08:38 AM
--

CREATE TABLE `item` (
  `itemid` varchar(30) NOT NULL,
  `itemname` varchar(200) NOT NULL,
  `itemdesc` varchar(300) NOT NULL,
  `itemsp` int(30) NOT NULL,
  `itembp` int(30) NOT NULL,
  `itemqty` int(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`itemid`, `itemname`, `itemdesc`, `itemsp`, `itembp`, `itemqty`) VALUES
('IT001', 'paracetamol', '1234', 10, 7, 10),
('IT002', 'telma', 'anti hypertensive', 20, 16, 1000),
('IT003', 'ecosprin', 'Anti coagulant', 15, 13, 100),
('IT004', 'Gabantin', 'Nerve Strengthing', 20, 17, 200),
('IT005', 'levo cetrizen', 'anti allergic', 10, 8, 100),
('IT006', 'sece', 'antibiotic', 30, 26, 1000),
('IT007', 'heparin', 'injection', 55, 50, 250);

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--
-- Creation: Apr 14, 2021 at 09:57 AM
--

CREATE TABLE `patient` (
  `patient_no` varchar(250) NOT NULL,
  `patient_name` varchar(200) NOT NULL,
  `phone` int(200) NOT NULL,
  `address` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`patient_no`, `patient_name`, `phone`, `address`) VALUES
('PS001', 'Sita', 45672, 'AP,India'),
('PS002', 'Ram', 67854, 'Africa'),
('PS003', 'Nitya', 765489, 'Gandhi Street,Mumbai'),
('PS004', 'Satya', 9976568, 'Vidya Nagar,Mumbai'),
('PS006', 'Jahnavi', 6578995, 'SR Nagar,Mumbai'),
('PS007', 'Hema', 3895847, 'Nehru nagar');

-- --------------------------------------------------------

--
-- Table structure for table `prescription`
--
-- Creation: Apr 16, 2021 at 07:33 AM
--

CREATE TABLE `prescription` (
  `prs_id` varchar(250) NOT NULL,
  `ch_id` varchar(250) NOT NULL,
  `doc_name` varchar(250) NOT NULL,
  `problem` varchar(250) NOT NULL,
  `description` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `prescription`
--

INSERT INTO `prescription` (`prs_id`, `ch_id`, `doc_name`, `problem`, `description`) VALUES
('PC001', 'CH003', 'Thomas', 'Fever', 'High Fever,medicine suggested'),
('PC002', 'CH003', 'Vinay', 'Fever', 'Paracetmol');

-- --------------------------------------------------------

--
-- Table structure for table `productsales`
--
-- Creation: Apr 16, 2021 at 11:01 AM
--

CREATE TABLE `productsales` (
  `id` int(250) NOT NULL,
  `sales_id` int(250) NOT NULL,
  `product_id` varchar(250) NOT NULL,
  `sellprice` int(250) NOT NULL,
  `qty` int(250) NOT NULL,
  `total` int(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `productsales`
--

INSERT INTO `productsales` (`id`, `sales_id`, `product_id`, `sellprice`, `qty`, `total`) VALUES
(1, 2, 'IT001', 10, 5, 50),
(2, 3, 'IT001', 10, 5, 50),
(3, 4, 'IT001', 10, 4, 40);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--
-- Creation: Apr 16, 2021 at 10:57 AM
--

CREATE TABLE `sales` (
  `id` int(250) NOT NULL,
  `date` date NOT NULL,
  `subtotal` int(250) NOT NULL,
  `pay` int(250) NOT NULL,
  `balance` int(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `date`, `subtotal`, `pay`, `balance`) VALUES
(1, '2021-04-16', 50, 55, 5),
(2, '2021-04-16', 50, 60, 10),
(3, '2021-04-29', 50, 55, 5),
(4, '2021-11-01', 40, 45, 5);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--
-- Creation: Apr 14, 2021 at 12:25 PM
--

CREATE TABLE `user` (
  `id` int(200) NOT NULL,
  `name` varchar(40) NOT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `usertype` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `username`, `password`, `usertype`) VALUES
(1, 'John', 'john', '1234', 'Receptionist'),
(2, 'Ram', 'ram', '1234', 'Pharmacist'),
(3, 'Smith', 'smith', '1234', 'Pharmacist'),
(4, 'Thomas', 'thomas', '2345', 'Doctor'),
(100, 'Deepu', 'deepu', '2345', 'Pharmacist'),
(101, 'Mouni', 'mouni', '12345', 'Doctor'),
(102, 'Rajesh', 'rajesh', '3456', 'Receptionist'),
(103, 'Shwetha', 'shwetha', '4567', 'Receptionist'),
(104, 'Aasish', 'aasish', '5678', 'Pharmacist'),
(105, 'Vinay', 'vinay', '4578', 'Doctor'),
(106, 'Smriti', 'smriti', '3897', 'Doctor'),
(107, 'Sindhu', 'sindhu', '4980', 'Doctor'),
(108, 'Swetha', 'swetha', '4567', 'Doctor');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `channel`
--
ALTER TABLE `channel`
  ADD PRIMARY KEY (`channel_no`),
  ADD KEY `pa_name` (`pa_name`),
  ADD KEY `dr_name` (`dr_name`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`doctor_no`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`itemid`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`patient_no`);

--
-- Indexes for table `prescription`
--
ALTER TABLE `prescription`
  ADD PRIMARY KEY (`prs_id`);

--
-- Indexes for table `productsales`
--
ALTER TABLE `productsales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `productsales`
--
ALTER TABLE `productsales`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `channel`
--
ALTER TABLE `channel`
  ADD CONSTRAINT `channel_ibfk_1` FOREIGN KEY (`pa_name`) REFERENCES `patient` (`patient_no`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
