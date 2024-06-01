-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 17, 2022 at 11:30 AM
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
-- Database: `career_guidance`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', '0192023a7bbd73250516f069df18b500', '2017-01-24 16:21:18', '13-01-2020 02:41:52 PM');

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `id` int(100) NOT NULL,
  `qid` text NOT NULL,
  `ansid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`id`, `qid`, `ansid`) VALUES
(1, '5e36aa91e306c', '5e36aa9204a14'),
(2, '5e36aa925079f', '5e36aa9260d0a'),
(3, '5e393eb61e909', '5e393eb63484d'),
(4, '5e393eb67b3e0', '5e393eb68b6a8'),
(5, '5e393eb6d48fe', '5e393eb6dc8a0'),
(6, '624ff74e26e3c', '624ff74e27a97'),
(7, '624ff74e2ad39', '624ff74e2bad8'),
(8, '624ff74e2ed2e', '624ff74e2f985'),
(9, '624ff74e32402', '624ff74e32cee'),
(10, '624ff74e35a49', '624ff74e36658');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(300) NOT NULL,
  `email` varchar(300) NOT NULL,
  `mobile` varchar(300) NOT NULL,
  `subject` varchar(300) NOT NULL,
  `message` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `coursename` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `coursename`, `creationDate`) VALUES
(1, '10th Pass Out', '2020-01-29 10:59:36'),
(2, '10th Fail', '2020-01-29 11:00:23'),
(3, '12th Pass Out', '2020-01-31 07:42:08'),
(5, 'Undergraduate Degree', '2022-04-08 08:34:57');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `message` varchar(300) NOT NULL,
  `fdate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `id` int(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `eid` text NOT NULL,
  `score` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `correct` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `timestamp` bigint(50) NOT NULL,
  `status` varchar(40) NOT NULL,
  `score_updated` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `id` int(100) NOT NULL,
  `qid` varchar(50) NOT NULL,
  `option` varchar(5000) NOT NULL,
  `optionid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`id`, `qid`, `option`, `optionid`) VALUES
(1, '5e36aa91e306c', '10', '5e36aa9204a14'),
(2, '5e36aa91e306c', '5', '5e36aa9204a29'),
(3, '5e36aa91e306c', '2', '5e36aa9204a32'),
(4, '5e36aa91e306c', '0', '5e36aa9204a39'),
(5, '5e36aa925079f', '0', '5e36aa9260ceb'),
(6, '5e36aa925079f', '20', '5e36aa9260d00'),
(7, '5e36aa925079f', '25', '5e36aa9260d0a'),
(8, '5e36aa925079f', '10', '5e36aa9260d12'),
(9, '5e393eb61e909', 'Central Processing Unit', '5e393eb63484d'),
(10, '5e393eb61e909', 'Central Processing Utilaition', '5e393eb634878'),
(11, '5e393eb61e909', 'Control Processing Unit', '5e393eb634883'),
(12, '5e393eb61e909', 'none of above', '5e393eb63488a'),
(13, '5e393eb67b3e0', 'cd', '5e393eb68b68f'),
(14, '5e393eb67b3e0', 'Compactable Read Only Memory', '5e393eb68b6a8'),
(15, '5e393eb67b3e0', 'none of above', '5e393eb68b6b1'),
(16, '5e393eb67b3e0', 'Cd Read Only Memory', '5e393eb68b6b8'),
(17, '5e393eb6d48fe', 'Junk', '5e393eb6dc87c'),
(18, '5e393eb6d48fe', 'nothing', '5e393eb6dc892'),
(19, '5e393eb6d48fe', 'span', '5e393eb6dc89a'),
(20, '5e393eb6d48fe', 'spam', '5e393eb6dc8a0'),
(21, '624ff74e26e3c', 'line departments', '624ff74e27a90'),
(22, '624ff74e26e3c', 'authority department', '624ff74e27a96'),
(23, '624ff74e26e3c', 'service department', '624ff74e27a97'),
(24, '624ff74e26e3c', 'functional department', '624ff74e27a98'),
(25, '624ff74e2ad39', ' Micro and macro issues of socio­economic factor.', '624ff74e2bad5'),
(26, '624ff74e2ad39', ' Interrelated Physiological, Psychological and Socio-ethical aspects of human being.', '624ff74e2bad8'),
(27, '624ff74e2ad39', 'The entire concept of human behaviour', '624ff74e2bad9'),
(28, '624ff74e2ad39', 'None of the above.', '624ff74e2bada'),
(29, '624ff74e2ed2e', 'specific job', '624ff74e2f985'),
(30, '624ff74e2ed2e', 'specific product', '624ff74e2f98a'),
(31, '624ff74e2ed2e', ' specific service', '624ff74e2f98b'),
(32, '624ff74e2ed2e', 'all of these', '624ff74e2f98c'),
(33, '624ff74e32402', ' Development of scientific management and awakened sense of social responsibility.', '624ff74e32ce8'),
(34, '624ff74e32402', 'The problem of how the available human resource could effectively minimise the cost and maximise the production.', '624ff74e32ced'),
(35, '624ff74e32402', 'Technical factors, awakening amongst workers, attitude of the government, cultural and social system.', '624ff74e32cee'),
(36, '624ff74e32402', 'All the above.', '624ff74e32cef'),
(37, '624ff74e35a49', 'Human Resource inventory', '624ff74e36658'),
(38, '624ff74e35a49', 'HRIS', '624ff74e3665b'),
(39, '624ff74e35a49', 'Skills inventory', '624ff74e3665c'),
(40, '624ff74e35a49', 'Management inventories', '624ff74e3665d');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(100) NOT NULL,
  `eid` text NOT NULL,
  `courseid` int(11) NOT NULL,
  `categoryid` int(11) NOT NULL,
  `sub_courseid` int(11) NOT NULL,
  `qid` text NOT NULL,
  `qns` text NOT NULL,
  `choice` int(10) NOT NULL,
  `sn` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `eid`, `courseid`, `categoryid`, `sub_courseid`, `qid`, `qns`, `choice`, `sn`) VALUES
(1, '5e36aa33cdfc4', 2, 2, 7, '5e36aa91e306c', '5+5=?', 0, 1),
(2, '5e36aa33cdfc4', 2, 2, 7, '5e36aa925079f', '5*5=?', 0, 2),
(3, '5e393de609e44', 1, 1, 6, '5e393eb61e909', 'cpu full form?', 0, 1),
(4, '5e393de609e44', 1, 1, 6, '5e393eb67b3e0', 'CD-ROM stands for?', 0, 2),
(5, '5e393de609e44', 1, 1, 6, '5e393eb6d48fe', 'Junk e-mail is also called?', 0, 3),
(6, '624ff48e93244', 5, 4, 8, '624ff74e26e3c', 'Human Resource departments are______________', 0, 1),
(7, '624ff48e93244', 5, 4, 8, '624ff74e2ad39', 'What is human factor?', 0, 2),
(8, '624ff48e93244', 5, 4, 8, '624ff74e2ed2e', 'Analysis is a systematic procedure for securing and reporting information defining a ______________.\r\n', 0, 3),
(9, '624ff48e93244', 5, 4, 8, '624ff74e32402', 'What are the factors responsible for the growth of HRM?', 0, 4),
(10, '624ff48e93244', 5, 4, 8, '624ff74e35a49', 'Which among the followings describe the skills that are available within the company?', 0, 5);

-- --------------------------------------------------------

--
-- Table structure for table `rank`
--

CREATE TABLE `rank` (
  `id` int(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `score` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sub_category`
--

CREATE TABLE `sub_category` (
  `id` int(11) NOT NULL,
  `courseid` int(11) DEFAULT NULL,
  `sub_courseid` int(11) NOT NULL,
  `sub_coursecat` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub_category`
--

INSERT INTO `sub_category` (`id`, `courseid`, `sub_courseid`, `sub_coursecat`, `creationDate`, `updationDate`) VALUES
(6, 1, 1, 'BE', '2020-01-30 06:37:40', NULL),
(7, 2, 2, 'Fitters', '2020-01-31 08:29:25', NULL),
(8, 5, 4, 'Human Resources Management', '2022-04-08 08:37:44', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sub_course`
--

CREATE TABLE `sub_course` (
  `id` int(11) NOT NULL,
  `courseid` int(11) DEFAULT NULL,
  `sub_course` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub_course`
--

INSERT INTO `sub_course` (`id`, `courseid`, `sub_course`, `creationDate`) VALUES
(1, 1, '12th Sciences', '2020-01-29 13:31:55'),
(2, 2, 'I.T.I', '2020-01-31 08:10:18'),
(4, 5, 'Post Graduation', '2022-04-08 08:35:29');

-- --------------------------------------------------------

--
-- Table structure for table `test_quiz`
--

CREATE TABLE `test_quiz` (
  `id` int(100) NOT NULL,
  `eid` text NOT NULL,
  `courseid` int(11) NOT NULL,
  `categoryid` int(11) NOT NULL,
  `sub_courseid` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `correct` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `ctime` bigint(20) NOT NULL,
  `cdate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `test_quiz`
--

INSERT INTO `test_quiz` (`id`, `eid`, `courseid`, `categoryid`, `sub_courseid`, `title`, `correct`, `wrong`, `total`, `ctime`, `cdate`, `status`) VALUES
(1, '5e36aa33cdfc4', 2, 2, 7, 'Fitter Test', 1, 1, 2, 3, '2020-02-05 10:21:42', 'enabled'),
(2, '5e393de609e44', 1, 1, 6, 'Computer Engineer', 1, 1, 3, 3, '2020-02-05 10:21:47', 'enabled'),
(3, '624ff48e93244', 5, 4, 8, 'Human Resources Management Test', 1, 1, 5, 5, '2022-04-09 06:49:11', 'enabled'),
(4, '626a2fd80d2bf', 1, 1, 6, 'test', 1, 0, 3, 5, '0000-00-00 00:00:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `courseid` int(11) NOT NULL,
  `categoryid` int(11) NOT NULL,
  `sub_courseid` int(11) NOT NULL,
  `fullname` varchar(300) NOT NULL,
  `email` varchar(300) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `address` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `userimage` varchar(500) NOT NULL,
  `rdate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_answer`
--

CREATE TABLE `user_answer` (
  `id` int(100) NOT NULL,
  `qid` varchar(50) NOT NULL,
  `ans` varchar(50) NOT NULL,
  `correctans` varchar(50) NOT NULL,
  `eid` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `answer`
--
ALTER TABLE `answer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rank`
--
ALTER TABLE `rank`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_category`
--
ALTER TABLE `sub_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_course`
--
ALTER TABLE `sub_course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `test_quiz`
--
ALTER TABLE `test_quiz`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_answer`
--
ALTER TABLE `user_answer`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `answer`
--
ALTER TABLE `answer`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `rank`
--
ALTER TABLE `rank`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sub_category`
--
ALTER TABLE `sub_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `sub_course`
--
ALTER TABLE `sub_course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `test_quiz`
--
ALTER TABLE `test_quiz`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user_answer`
--
ALTER TABLE `user_answer`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
