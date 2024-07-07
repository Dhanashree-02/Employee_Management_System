-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 10, 2020 at 02:48 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ems`
--

-- --------------------------------------------------------

--
-- Table structure for table `alogin`
--

CREATE TABLE `alogin` (
  `id` int(11) NOT NULL,
  `email` tinytext NOT NULL,
  `password` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `alogin`
--

INSERT INTO `alogin` (`id`, `email`, `password`) VALUES
(1, 'admin@gmail.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `firstName` varchar(100) NOT NULL,
  `lastName` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` text NOT NULL,
  `birthday` date NOT NULL,
  `gender` varchar(10) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `nid` int(20) NOT NULL,
  `address` varchar(100) DEFAULT NULL,
  `dept` varchar(100) NOT NULL,
  `degree` varchar(100) NOT NULL,
  `pic` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `firstName`, `lastName`, `email`, `password`, `birthday`, `gender`, `contact`, `nid`, `address`, `dept`, `degree`, `pic`) VALUES
(1, 'Ravina', 'Pawar', 'ravina@gmail.com', 'ravina', '1998-03-31', 'Female', '8896475189', 1, 'Pimpri', ' Cybersecurity', 'Bsc', 'images/Ravina.jpeg'),
(2, 'Nikita', 'Chauhan', 'nikita@gmail.com', 'nikita', '1998-06-24', 'Female', '9856471239',2, 'Bhosari', 'Data Analytics', 'Bsc', 'images/Nikita.jpeg'),
(3, 'Vaishnavi', 'Jadhav', 'vaishnavi@gmail.com', 'vaishnavi', '1998-04-07', 'Female', '6654789325', 3, 'Chikhali', 'Computer Programming', 'BBA(CA)', 'images/Vaishnavi.jpeg'),
(4, 'Rutuja', 'Tandale', 'rutuja@gmail.com', 'rutuja', '1998-04-27', 'Female', '7754896548', 4, 'Kalewadi', 'Software Development', '', 'images/1.png'),
(5, 'Aishwarya', 'Shinde', 'aishwarya@gmail.com', 'aishwarya', '1998-10-16', 'Female', '9586714239', 5, 'Kalewadi', 'Tester', 'BBA', 'images/1.png'),
(6, 'Pranita', 'Dumal', 'pranita@gmail.com', 'pranita', '1998-7-31', 'Female', '8874569156',6, 'Chinchwad', 'Full stack Developer', '', 'images/Pranita.jpeg'),
(7, 'Sudarshan', 'Bhosale', 'sudarshan@gmail.com', 'sudarshan', '1998-7-31', 'Male', '9987456329',7, 'Aalandi', 'BCA', '', 'images/.jpeg'),
(8, 'Saddam', 'Shaikh', 'saddam@gmail.com', 'saddam', '1998-7-31', 'Male', '54879654265',8, 'Thergao', '', '', 'images/.jpeg'),
(9, 'Aadity', 'Mali', 'aadity@gmail.com', 'aadity', '1998-7-31', 'Male', '8597469829',9, 'Diggi', '', '', 'images/.jpeg'),
(10, 'Ram', 'Sawake', 'ram@gmail.com', 'ram', '1998-7-31', 'Male', '8854697123',10, 'Wakad', '', '', 'images/.jpeg'),
(11, 'Maruti', 'Talware', 'maruti@gmail.com', 'maruti', '1998-7-31', 'Male', '8899745686',11, 'Rahatani', '', '', 'images/.jpeg'),
(12, 'Prathamesh', 'Munde', 'prathamesh@gmail.com', 'prathamesh', '1998-7-31', 'Male', '7758964289',12, 'Bhosari', '', '', 'images/.jpeg'),
(13, 'Vikas', 'Patil', 'vikas@gmail.com', 'vikas', '1998-7-31', 'Male', '8796547893',13,  'Kalewadi', '', '', 'images/.jpeg');


-- --------------------------------------------------------

--
-- Table structure for table `employee_leave`
--

CREATE TABLE `employee_leave` (
  `id` int(11) DEFAULT NULL,
  `token` int(11) NOT NULL,
  `start` date DEFAULT NULL,
  `end` date DEFAULT NULL,
  `reason` char(100) DEFAULT NULL,
  `status` char(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee_leave`
--

INSERT INTO `employee_leave` (`id`, `token`, `start`, `end`, `reason`, `status`) VALUES
(1, 1, '2023-01-15', '2023-01-16', 'parents doctor appoinment', 'Approved'),   
(2, 2, '2022-05-07', '2022-05-08', 'Relatives Wedding', 'Approved'),
(3, 3, '2022-07-22', '2022-07-23', ' I have dentist appointment', 'Approved'),
(4, 4, '2022-12-11', '2022-12-12', 'family member is not well', 'Approved'),
(5, 5, '2022-03-04', '2022-03-06', 'Suffered from an accident.', 'Approved'),
(6, 6, '2022-03-04', '2022-03-06', 'Due to illness or injury ', 'Approved'),
(7, 7, '2022-03-04', '2022-03-06', 'Personal reasons.', 'Approved'),
(8, 8, '2022-03-04', '2022-03-06', 'Car Problem', 'Approved'),
(9, 9, '2022-03-04', '2022-03-06', 'Car Problem', 'Approved'),
(10, 10, '2022-03-04', '2022-03-06', 'Car Problem', 'Approved'),
(11, 11, '2022-03-04', '2022-03-06', 'Car Problem', 'Approved'),
(12, 12, '2022-03-04', '2022-03-06', 'Car Problem', 'Approved'),
(13, 13, '2022-04-20', '2022-04-21', 'Daycare child problem', 'Approved');
-- --------------------------------------------------------


--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `pid` int(11) NOT NULL,
  `eid` int(11) DEFAULT NULL,
  `pname` varchar(100) DEFAULT NULL,
  `duedate` date DEFAULT NULL,
  `subdate` date DEFAULT '0000-00-00',
  `mark` int(11) NOT NULL,
  `status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`pid`, `eid`, `pname`, `duedate`, `subdate`, `mark`, `status`) VALUES
(1, 1, 'Car Rental Project','2022-01-07', '2022-01-06', '10', 'Submitted'),
(2, 2, 'Cake Shope','2023-03-22', '2023-03-20', '10', 'Submitted'),
(3, 3, 'Acadami management ','2023-05-11', '2023-05-11', '10', 'Pending'),
(4, 4, 'Tour & Travel Agency','2020-11-20', '2020-11-20', '10','Submitted'),
(5, 5, 'Restaurant','2021-1-15', '2021-1-15', '10','Submitted'),
(6, 6, 'NGO Management','2021-2-15', '2021-2-15', '10','Submitted'),
(7, 7, 'Institute Management','2021-2-15', '2021-2-15', '10','Submitted'),
(8, 8, 'Attendance Managemnt','2021-3-15', '2021-3-15', '10','Submitted'),
(9, 9, 'Bus Tikit Booking','2021-4-15', '2021-4-15', '10','Submitted'),
(10, 10, 'Hospital management ','2021-5-15', '2021-5-15', '10','Submitted'),
(11, 11, 'Shopping Management System','2021-6-15', '2021-6-15', '10','Submitted'),
(12, 12, 'Hospital Mangement','2021-7-15', '2021-7-15', '10','Submitted'),
(13, 13, 'Gym Management','2022-8-19', '2022-8-19', '10','Submitted');


-- --------------------------------------------------------
--
-- Table structure for table `rank`
--

CREATE TABLE `rank` (
  `eid` int(11) NOT NULL,
  `points` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rank`
--

INSERT INTO `rank` (`eid`, `points`) VALUES
(1, 10),
(2, 10),
(3, 10),
(4, 10),
(5, 10),
(6, 10),
(7, 10),
(8, 10),
(9, 10),
(10, 10),
(11, 10),
(12, 10),
(13, 10);

-- --------------------------------------------------------

--
-- Table structure for table `salary`
--

CREATE TABLE `salary` (
  `id` int(11) NOT NULL,
  `base` int(11) NOT NULL,
  `bonus` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `salary`
--

INSERT INTO `salary` (`id`, `base`, `bonus`, `total`) VALUES
(1, 30000, 0, 30000),
(2, 25000, 0, 25000),
(3, 20000, 0, 20000),
(4, 15000, 0, 15000),
(5, 22000, 0, 22000),
(6, 30000, 0, 23000),
(7, 30000, 0, 19000),
(8, 30000, 0, 18000),
(9, 30000, 0, 17000),
(10, 30000, 0,11000),
(11, 30000, 0, 25000),
(12, 30000, 0, 27000),
(13, 23000, 0, 22000);



--
-- Indexes for dumped tables
--

--
-- Indexes for table `alogin`
--
ALTER TABLE `alogin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `employee_leave`
--
ALTER TABLE `employee_leave`
  ADD PRIMARY KEY (`token`),
  ADD KEY `employee_leave_ibfk_1` (`id`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`pid`),
  ADD KEY `project_ibfk_1` (`eid`);

--
-- Indexes for table `rank`
--
ALTER TABLE `rank`
  ADD PRIMARY KEY (`eid`);

--
-- Indexes for table `salary`
--
ALTER TABLE `salary`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alogin`
--
ALTER TABLE `alogin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `employee_leave`
--
ALTER TABLE `employee_leave`
  MODIFY `token` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employee_leave`
--
ALTER TABLE `employee_leave`
  ADD CONSTRAINT `employee_leave_ibfk_1` FOREIGN KEY (`id`) REFERENCES `employee` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `project`
--
ALTER TABLE `project`
  ADD CONSTRAINT `project_ibfk_1` FOREIGN KEY (`eid`) REFERENCES `employee` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rank`
--
ALTER TABLE `rank`
  ADD CONSTRAINT `rank_ibfk_1` FOREIGN KEY (`eid`) REFERENCES `employee` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `salary`
--
ALTER TABLE `salary`
  ADD CONSTRAINT `salary_ibfk_1` FOREIGN KEY (`id`) REFERENCES `employee` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
