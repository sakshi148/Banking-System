-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 16, 2021 at 09:52 AM
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
-- Database: `bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `S_no` int(255) NOT NULL,
  `sender` varchar(255) NOT NULL,
  `receiver` varchar(255) NOT NULL,
  `amount` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`S_no`, `sender`, `receiver`, `amount`) VALUES
(1, 'sakshi gaikwad', 'Mansi Pisal', '1000'),
(2, 'sakshi gaikwad', 'Mansi Pisal', '1000'),
(3, 'sakshi gaikwad', 'swara deshmukh', '1000'),
(4, 'sakshi gaikwad', 'sakshi patil', '200'),
(5, 'Mansi Pisal', 'sakshi gaikwad', '1000'),
(6, 'swara deshmukh', 'Mansi Pisal', '100'),
(7, 'smita patil', 'samiksha jadhav', '5000'),
(8, 'hindvi patil', 'vicky jadhav', '5000');

-- --------------------------------------------------------

--
-- Table structure for table `view`
--

CREATE TABLE `view` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email_id` varchar(255) NOT NULL,
  `balance` varchar(255) NOT NULL,
  `Transfer` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `view`
--

INSERT INTO `view` (`id`, `name`, `email_id`, `balance`, `Transfer`) VALUES
(1, 'sakshi gaikwad', 'sakshigaikwad@gmail.com', '999800', ''),
(2, 'Mansi Pisal', 'mnpisal@gmail.com', '199100', ''),
(3, 'sakshi patil', 'sakshipatil@gmail.com', '5000200', ''),
(4, 'swara deshmukh', 'swara@gmail.com', '30900', ''),
(5, 'smita patil', 'smita@gmail.com', '15000', ''),
(6, 'rushi patil', 'rushi@gmial.com', '50000', ''),
(7, 'atharv gaikwad', 'atharv@gmail.com', '90000', ''),
(8, 'samiksha jadhav', 'samiksha2gmail.com', '65000', ''),
(9, 'vicky jadhav', 'vicky@gmail.com', '25000', ''),
(10, 'hindvi patil', 'hindvi@gmail.com', '65000', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`S_no`);

--
-- Indexes for table `view`
--
ALTER TABLE `view`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `S_no` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `view`
--
ALTER TABLE `view`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
