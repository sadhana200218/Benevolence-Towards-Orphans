-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 19, 2022 at 07:39 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `orphan`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `areq`
--

CREATE TABLE `areq` (
  `arid` int(100) NOT NULL,
  `oid` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `uamess` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `areq`
--

INSERT INTO `areq` (`arid`, `oid`, `username`, `uamess`) VALUES
(1, '1', 'raj', 'i like to adopt this kid');

-- --------------------------------------------------------

--
-- Table structure for table `bv`
--

CREATE TABLE `bv` (
  `vid` int(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `avail` varchar(100) NOT NULL,
  `purpose` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bv`
--

INSERT INTO `bv` (`vid`, `username`, `avail`, `purpose`) VALUES
(1, 'raj', 'Full-Time', 'i like to be volunteer ');

-- --------------------------------------------------------

--
-- Table structure for table `donation`
--

CREATE TABLE `donation` (
  `did` int(100) NOT NULL,
  `dtitle` varchar(100) NOT NULL,
  `dimage` varchar(100) NOT NULL,
  `ddes` varchar(100) NOT NULL,
  `ddate` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `donation`
--

INSERT INTO `donation` (`did`, `dtitle`, `dimage`, `ddes`, `ddate`) VALUES
(1, 'DHARMASHLAA', 'family-giving-donation-to-orphanage-vector-illustration-56283484.jpg', 'A donation is a gift for charity, humanitarian aid, or to benefit a cause. A donation may take vario', '2023-01-23'),
(2, 'ENLIGHTMENT', '2.jpg', 'I was inspired to donate to X Organization after hearing you talk so much about their work. .', '2023-01-22');

-- --------------------------------------------------------

--
-- Table structure for table `dreq`
--

CREATE TABLE `dreq` (
  `drid` int(100) NOT NULL,
  `did` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `umess` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dreq`
--

INSERT INTO `dreq` (`drid`, `did`, `username`, `umess`) VALUES
(1, '1', 'raj', 'i want to donate sir');

-- --------------------------------------------------------

--
-- Table structure for table `ereq`
--

CREATE TABLE `ereq` (
  `erid` int(100) NOT NULL,
  `eid` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `uemess` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ereq`
--

INSERT INTO `ereq` (`erid`, `eid`, `username`, `uemess`) VALUES
(1, '1', 'raj', 'i like to participate in this event');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `eid` int(100) NOT NULL,
  `etitle` varchar(100) NOT NULL,
  `eimage` varchar(100) NOT NULL,
  `edate` varchar(100) NOT NULL,
  `etime` varchar(100) NOT NULL,
  `eabout` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`eid`, `etitle`, `eimage`, `edate`, `etime`, `eabout`) VALUES
(1, 'Blood Camp', 'blood-donor.jpg', '2022-12-25', '12:31', 'blood camp event');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `fid` int(100) NOT NULL,
  `oaname` varchar(100) NOT NULL,
  `uid` varchar(100) NOT NULL,
  `rating` varchar(100) NOT NULL,
  `message` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`fid`, `oaname`, `uid`, `rating`, `message`) VALUES
(2, 'ramesh', '1', '75', 'Very supportive Man');

-- --------------------------------------------------------

--
-- Table structure for table `oadmin`
--

CREATE TABLE `oadmin` (
  `oaid` int(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `trn_date` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `oadmin`
--

INSERT INTO `oadmin` (`oaid`, `username`, `fullname`, `phone`, `email`, `address`, `password`, `trn_date`) VALUES
(1, 'ramesh', ' rajkumar', ' 8884644589', 'rajkumar@gmail.com', 'Mysore, Karnataka, India', '698d51a19d8a121ce581499d7b701668', '2022-12-14 12:22:22');

-- --------------------------------------------------------

--
-- Table structure for table `orphanage`
--

CREATE TABLE `orphanage` (
  `oid` int(100) NOT NULL,
  `oname` varchar(100) NOT NULL,
  `oimage` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `age` varchar(100) NOT NULL,
  `about` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orphanage`
--

INSERT INTO `orphanage` (`oid`, `oname`, `oimage`, `gender`, `age`, `about`) VALUES
(1, 'Riya', 'd78p8b7-c6d151a1-f805-4aeb-a058-043052dd0199.png', 'Female', '10 years', ' a maternal orphan is a child whose mother has died, a paternal orphan is a child whose father has d'),
(2, 'Sam', '12.jpg', 'Male', '11 years', 'A chilling performance from Isabelle Fuhrman as the relentlessly brutal villain makes this rise to t');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `uid` int(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `trn_date` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`uid`, `username`, `fullname`, `phone`, `email`, `address`, `password`, `trn_date`) VALUES
(1, 'raj', ' rajkumar', ' 8884644589', 'rajkumar@gmail.com', 'Mysore, Karnataka, India', '698d51a19d8a121ce581499d7b701668', '2022-12-14 19:51:30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `areq`
--
ALTER TABLE `areq`
  ADD PRIMARY KEY (`arid`);

--
-- Indexes for table `bv`
--
ALTER TABLE `bv`
  ADD PRIMARY KEY (`vid`);

--
-- Indexes for table `donation`
--
ALTER TABLE `donation`
  ADD PRIMARY KEY (`did`);

--
-- Indexes for table `dreq`
--
ALTER TABLE `dreq`
  ADD PRIMARY KEY (`drid`);

--
-- Indexes for table `ereq`
--
ALTER TABLE `ereq`
  ADD PRIMARY KEY (`erid`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`eid`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`fid`);

--
-- Indexes for table `oadmin`
--
ALTER TABLE `oadmin`
  ADD PRIMARY KEY (`oaid`);

--
-- Indexes for table `orphanage`
--
ALTER TABLE `orphanage`
  ADD PRIMARY KEY (`oid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `areq`
--
ALTER TABLE `areq`
  MODIFY `arid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bv`
--
ALTER TABLE `bv`
  MODIFY `vid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `donation`
--
ALTER TABLE `donation`
  MODIFY `did` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `dreq`
--
ALTER TABLE `dreq`
  MODIFY `drid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ereq`
--
ALTER TABLE `ereq`
  MODIFY `erid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `eid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `fid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oadmin`
--
ALTER TABLE `oadmin`
  MODIFY `oaid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orphanage`
--
ALTER TABLE `orphanage`
  MODIFY `oid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `uid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
