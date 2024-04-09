-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 14, 2024 at 12:10 PM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `school`
--

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `empid` int(20) NOT NULL,
  `fullname` varchar(20) DEFAULT NULL,
  `department` varchar(20) DEFAULT NULL,
  `responsibility` varchar(20) DEFAULT NULL,
  `level` varchar(20) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`empid`, `fullname`, `department`, `responsibility`, `level`, `username`, `password`) VALUES
(1, 'Mwizerwa', 'dep1', 'cashier', '2', 'stivo', '123'),
(2, 'Mbarushimana Mike', 'dep2', 'cashier', '6', 'Wizz', '123'),
(3, 'Emable', 'dep1', 'cashier', '4', 'fgnk', '123'),
(4, 'Burasa', 'dep2', 'cashier', '9', 'loic', '123'),
(5, 'Micah', 'dep2', 'cashier', '9', 'Chance', '123'),
(6, 'Hakim', 'dep3', 'cashier', '8', 'Cee', '123'),
(7, 'Wizz', 'dep5', 'cashier', '9', 'drip', '123'),
(8, 'Elvis', 'dep1', 'cashier', '9', 'Djjaiz', '123'),
(9, 'Jose', 'dep7', 'cashier', '5', 'Mjose', '123');

-- --------------------------------------------------------

--
-- Table structure for table `farmer`
--

CREATE TABLE `farmer` (
  `farmid` int(20) NOT NULL,
  `farmername` varchar(20) DEFAULT NULL,
  `idnumber` int(20) DEFAULT NULL,
  `croptype` varchar(20) DEFAULT NULL,
  `seasontype` varchar(20) DEFAULT NULL,
  `quantity` varchar(20) DEFAULT NULL,
  `regdate` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `marks`
--

CREATE TABLE `marks` (
  `mid` int(30) NOT NULL,
  `sid` int(30) DEFAULT NULL,
  `module` varchar(30) DEFAULT NULL,
  `year` int(7) DEFAULT NULL,
  `term` varchar(30) DEFAULT NULL,
  `score` int(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marks`
--

INSERT INTO `marks` (`mid`, `sid`, `module`, `year`, `term`, `score`) VALUES
(5, 1, 'PROGRAMMING', 2023, '1ST TERM', 80),
(9, 2, 'ENGLISH', 2023, '1ST TERM', 99),
(10, 3, 'DATABASE SECURITY', 2023, '3RD TERM', 74),
(11, 8, 'HISTORY', 2023, '1ST TERM', 89),
(12, 5, 'ROUTING', 2023, '1ST TERM', 10),
(13, 1, 'DATABASE SECURITY', 2023, '1ST TERM', 83),
(14, 6, 'ROUTER AND SWITCH', 2023, '1ST TERM', 84),
(15, 6, 'ROUTER AND SWITCH', 2023, '1ST TERM', 84),
(16, 13, 'ROUTING', 2023, '1ST TERM', 45),
(17, 5, 'SWITCHING', 2023, '1ST TERM', 89),
(18, 15, 'PROGRAMMING', 2023, '1ST TERM', 78),
(19, 1, 'asasa', 2023, '2ND TERM', 0),
(20, 18, 'ENGLISH', 2023, '1ST TERM', 60),
(21, 1, 'PROGRAMMING', 2023, '1ST TERM', 34),
(22, 19, 'PROGRAMMING', 2024, '2ND TERM', 78);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payid` int(20) NOT NULL,
  `farmid` int(20) DEFAULT NULL,
  `quantity` varchar(20) DEFAULT NULL,
  `price_per_unit` varchar(20) DEFAULT NULL,
  `total_payment` varchar(20) DEFAULT NULL,
  `paydate` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `productid` int(20) NOT NULL,
  `farmerid` int(20) DEFAULT NULL,
  `productname` varchar(20) DEFAULT NULL,
  `producttype` varchar(20) DEFAULT NULL,
  `quantity` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`productid`, `farmerid`, `productname`, `producttype`, `quantity`) VALUES
(1, 0, 'Maize', 'Long maize', ' 5000kg'),
(2, 0, 'Beans', 'Type1', ' 10000'),
(3, 0, 'Rice', 'Biryari', ' 30000kg'),
(4, 0, 'Patatoes', 'Type1', ' 1000kg'),
(5, 0, 'Coffe', 'Type4', ' 444'),
(6, 0, 'Juice', 'Type3', ' 5000L'),
(7, 0, 'Yoghati', 'type5', ' 12345'),
(8, 0, 'Akabanga', 'type7', ' 1233kg'),
(9, 0, 'Ibirayi', 'type3', ' 789kg'),
(10, 0, 'Ibijumba', 'type2', ' 1111kg'),
(11, 0, 'Ibitoki', 'type1', ' 700kg'),
(12, 0, 'Sweet Potatoes', 'type1', ' 44444kg');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `sid` int(30) NOT NULL,
  `sname` varchar(30) NOT NULL,
  `age` int(30) NOT NULL,
  `sex` varchar(30) NOT NULL,
  `level` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`sid`, `sname`, `age`, `sex`, `level`) VALUES
(1, 'ISHEMA MANZI Bernard', 17, 'Male', 'L5 SOD'),
(2, 'sano Richard', 14, 'Male', 'L5 SOD'),
(3, 'ishema bernard', 21, 'Male', 'L5 SOD'),
(4, 'UHIRWA Aimable', 17, 'Male', 'L5 SOD'),
(5, 'BIROHERA TAGWAN', 16, 'Male', 'L5 NET'),
(6, 'ISHIMWE YVES', 17, 'Male', 'L5 NET'),
(7, 'mucyo kevin', 18, 'Male', 'L5 NET'),
(8, 'ISHIMWE FABRICE', 14, 'Male', 'L3 NET'),
(9, 'MANZI Fred', 20, 'Male', 'L3 NET'),
(12, 'MUHOZA Moistress', 18, 'Female', 'L5 NET'),
(13, 'ISHIMWE Thiery', 20, 'Male', 'L5 NET'),
(14, 'MWIZERWA STIVEN', 18, 'Male', 'L5 SOD'),
(15, 'MBARUSHIMANA Mike', 19, 'Male', 'L5 SOD'),
(17, 'MUCYO DAVID', 21, 'Male', 'L5 SOD'),
(18, 'ISHIMWE Samuel', 17, 'Male', 'L3 NET'),
(19, 'MUCYO DAVID', 21, 'Male', 'L5 SOD'),
(20, 'rtytt', 15, 'Male', 'L4 SOD'),
(21, 'ISHEMA MANZI Bernard', 18, 'Male', 'L4 SOD');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`empid`);

--
-- Indexes for table `farmer`
--
ALTER TABLE `farmer`
  ADD PRIMARY KEY (`farmid`);

--
-- Indexes for table `marks`
--
ALTER TABLE `marks`
  ADD PRIMARY KEY (`mid`),
  ADD KEY `sid` (`sid`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payid`),
  ADD KEY `farmid` (`farmid`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`productid`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`sid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `empid` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `farmer`
--
ALTER TABLE `farmer`
  MODIFY `farmid` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `marks`
--
ALTER TABLE `marks`
  MODIFY `mid` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payid` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `productid` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `sid` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `farmer`
--
ALTER TABLE `farmer`
  ADD CONSTRAINT `farmer_ibfk_1` FOREIGN KEY (`farmid`) REFERENCES `payment` (`payid`);

--
-- Constraints for table `marks`
--
ALTER TABLE `marks`
  ADD CONSTRAINT `marks_ibfk_1` FOREIGN KEY (`sid`) REFERENCES `student` (`sid`);

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`farmid`) REFERENCES `payment` (`payid`),
  ADD CONSTRAINT `payment_ibfk_2` FOREIGN KEY (`payid`) REFERENCES `farmer` (`farmid`),
  ADD CONSTRAINT `payment_ibfk_3` FOREIGN KEY (`farmid`) REFERENCES `farmer` (`farmid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
