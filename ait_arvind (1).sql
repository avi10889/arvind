-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 01, 2018 at 09:18 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ait_arvind`
--

-- --------------------------------------------------------

--
-- Table structure for table `ait_admin`
--

CREATE TABLE `ait_admin` (
  `uid` int(11) NOT NULL,
  `uname` varchar(30) CHARACTER SET utf8 NOT NULL,
  `pass` varchar(250) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
  `email` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `mobile_no` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `level` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'SADMIN,ADMIN',
  `last_login` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `created_on` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('A','D') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'A' COMMENT 'A(Active),D(Disabled)'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ait_admin`
--

INSERT INTO `ait_admin` (`uid`, `uname`, `pass`, `email`, `mobile_no`, `level`, `last_login`, `created_on`, `status`) VALUES
(1, 'admin', '240be518fabd2724ddb6f04eeb1da5967448d7e831c08c8fa822809f74c720a9', 'faisal.sayed301@gmail.com', '', 'SADMIN', '1525199875', '', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `ait_admin_access_logs`
--

CREATE TABLE `ait_admin_access_logs` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `ip` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `user_agent` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `time` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ait_admin_access_logs`
--

INSERT INTO `ait_admin_access_logs` (`id`, `uid`, `ip`, `user_agent`, `time`) VALUES
(16, 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '1523388494'),
(17, 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '1523475121'),
(18, 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '1523562301'),
(19, 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '1523819014'),
(20, 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '1523903528'),
(21, 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '1524163532'),
(22, 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '1524300884'),
(23, 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '1524336833'),
(24, 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '1525113601'),
(25, 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '1525199875');

-- --------------------------------------------------------

--
-- Table structure for table `ait_board`
--

CREATE TABLE `ait_board` (
  `board_id` int(11) NOT NULL,
  `board_name` varchar(100) NOT NULL,
  `board_state` varchar(50) NOT NULL,
  `board_active` enum('Y','N') NOT NULL DEFAULT 'Y' COMMENT 'Y(YES),N(NO)',
  `board_created_on` varchar(20) NOT NULL,
  `board_modified_on` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ait_board`
--

INSERT INTO `ait_board` (`board_id`, `board_name`, `board_state`, `board_active`, `board_created_on`, `board_modified_on`) VALUES
(1, 'Maharashtra (HSC)', 'Maharashtra', 'Y', '', ''),
(2, 'CBSE', '', 'Y', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `ait_branch`
--

CREATE TABLE `ait_branch` (
  `branch_id` int(11) NOT NULL,
  `branch_name` varchar(100) NOT NULL,
  `classes_name` varchar(100) NOT NULL,
  `branch_state` varchar(50) NOT NULL,
  `branch_active` enum('Y','N') NOT NULL DEFAULT 'Y',
  `branch_created_on` varchar(20) NOT NULL,
  `branch_modified_on` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ait_branch`
--

INSERT INTO `ait_branch` (`branch_id`, `branch_name`, `classes_name`, `branch_state`, `branch_active`, `branch_created_on`, `branch_modified_on`) VALUES
(1, 'Sakinaka', 'Arvind Classes', 'Maharashtra', 'Y', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Marol', 'Arvind Classes', 'Maharashtra', 'Y', '2018-04-21 16:01:02', '1524336903'),
(4, 'Vakola', 'Arvind Classes', 'Maharashtra', 'N', '1524337653', '');

-- --------------------------------------------------------

--
-- Table structure for table `ait_chapters`
--

CREATE TABLE `ait_chapters` (
  `chap_id` int(11) NOT NULL,
  `chap_title` varchar(50) NOT NULL,
  `sub_id` int(11) NOT NULL,
  `std_id` int(1) NOT NULL,
  `chap_active` enum('Y','N') NOT NULL DEFAULT 'Y',
  `created_on` varchar(20) NOT NULL,
  `modified_on` varchar(20) NOT NULL,
  `syllabus_print_year` varchar(10) NOT NULL,
  `modified_by_admin_uid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `ait_chapters`
--

INSERT INTO `ait_chapters` (`chap_id`, `chap_title`, `sub_id`, `std_id`, `chap_active`, `created_on`, `modified_on`, `syllabus_print_year`, `modified_by_admin_uid`) VALUES
(1, 'Sexual Reproduction In Angiosperm', 13, 2, 'Y', '0000-00-00 00:00:00', '2017-11-30 13:01:37', '', 3),
(5, 'Metrics', 11, 2, 'Y', '0000-00-00 00:00:00', '2017-12-01 17:33:58', '', 3),
(6, 'Radiation', 7, 2, 'Y', '0000-00-00 00:00:00', '2018-01-10 12:08:02', '', 3),
(7, 'Reactions', 9, 2, 'Y', '0000-00-00 00:00:00', '2018-01-10 12:08:19', '', 3),
(8, 'HTML', 14, 3, 'Y', '0000-00-00 00:00:00', '2018-01-10 12:08:41', '', 3),
(9, 'Law Of Motion', 8, 3, 'Y', '0000-00-00 00:00:00', '2018-01-10 12:08:58', '', 3),
(10, 'Chain Equlibrium', 10, 3, 'Y', '0000-00-00 00:00:00', '2018-01-10 12:09:20', '', 3),
(11, 'Limits', 12, 0, 'Y', '0000-00-00 00:00:00', '2018-01-10 12:09:35', '', 3),
(12, 'Black Box Theory', 7, 5, 'Y', '1524164311', '', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ait_lecture_schedule`
--

CREATE TABLE `ait_lecture_schedule` (
  `lecture_id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `std_id` int(11) NOT NULL,
  `sub_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `lecture_datetime` varchar(20) NOT NULL,
  `lecture_active` enum('Y','N') NOT NULL DEFAULT 'Y',
  `created_on` varchar(20) NOT NULL,
  `modified_on` varchar(20) NOT NULL,
  `modified_by_admin_uid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ait_sessions_log`
--

CREATE TABLE `ait_sessions_log` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ait_standards`
--

CREATE TABLE `ait_standards` (
  `std_id` int(11) NOT NULL,
  `std_name` varchar(50) NOT NULL,
  `std_number` int(1) NOT NULL,
  `std_desc` varchar(150) NOT NULL,
  `std_type` varchar(25) NOT NULL,
  `std_active` enum('Y','N') NOT NULL DEFAULT 'Y',
  `created_on` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `ait_standards`
--

INSERT INTO `ait_standards` (`std_id`, `std_name`, `std_number`, `std_desc`, `std_type`, `std_active`, `created_on`) VALUES
(2, 'F.Y.J.C', 11, 'First Year Of Junior College', 'Junior College', 'Y', '2017-10-15 10:20:43'),
(5, 'S.Y.J.C', 12, 'Second Year Of Junior College', 'Junior College', 'Y', '2017-11-28 12:34:47'),
(6, 'S.S.C', 0, 'Secondary School Certificate', 'Junior College', 'Y', '1524164182');

-- --------------------------------------------------------

--
-- Table structure for table `ait_standard_fields`
--

CREATE TABLE `ait_standard_fields` (
  `fld_id` int(11) NOT NULL,
  `fld_name` varchar(50) NOT NULL,
  `fld_active` enum('Y','N') NOT NULL DEFAULT 'Y',
  `created_on` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `ait_standard_fields`
--

INSERT INTO `ait_standard_fields` (`fld_id`, `fld_name`, `fld_active`, `created_on`) VALUES
(1, 'Arts', 'Y', ''),
(2, 'Commerce', 'Y', ''),
(3, 'Science', 'Y', '');

-- --------------------------------------------------------

--
-- Table structure for table `ait_subjects`
--

CREATE TABLE `ait_subjects` (
  `sub_id` int(11) NOT NULL,
  `std_field_id` int(11) NOT NULL,
  `subject_name` varchar(50) NOT NULL,
  `sub_active` enum('Y','N') NOT NULL DEFAULT 'Y',
  `created_on` varchar(20) NOT NULL,
  `modified_on` varchar(20) NOT NULL,
  `modified_by_admin_uid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `ait_subjects`
--

INSERT INTO `ait_subjects` (`sub_id`, `std_field_id`, `subject_name`, `sub_active`, `created_on`, `modified_on`, `modified_by_admin_uid`) VALUES
(7, 3, 'Physics', 'Y', '0000-00-00 00:00:00', '2017-11-28 12:35:09', 3),
(10, 3, 'Chemistry', 'Y', '0000-00-00 00:00:00', '2017-11-28 12:35:42', 3),
(11, 3, 'Maths', 'Y', '0000-00-00 00:00:00', '2017-11-28 12:35:58', 3),
(13, 3, 'Biology', 'Y', '0000-00-00 00:00:00', '1523475572', 1),
(17, 2, 'Accounts', 'Y', '0000-00-00 00:00:00', '2018-01-10 12:05:48', 3);

-- --------------------------------------------------------

--
-- Table structure for table `ait_teachers`
--

CREATE TABLE `ait_teachers` (
  `teacher_id` int(11) NOT NULL,
  `teacher_name` varchar(100) NOT NULL,
  `teacher_desc` varchar(250) NOT NULL,
  `teacher_active` enum('Y','N') NOT NULL DEFAULT 'Y',
  `created_on` varchar(20) NOT NULL,
  `modified_on` varchar(20) NOT NULL,
  `modified_by_admin_uid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ait_test_schedule`
--

CREATE TABLE `ait_test_schedule` (
  `id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `std_id` int(11) NOT NULL,
  `sub_id` int(11) NOT NULL,
  `chap_id` int(11) NOT NULL,
  `marks` int(11) NOT NULL,
  `test_datetime` varchar(20) NOT NULL,
  `test_active` enum('Y','N') NOT NULL DEFAULT 'Y',
  `created_on` varchar(20) NOT NULL,
  `modified_on` varchar(20) NOT NULL,
  `modified_by_admin_uid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ait_test_schedule`
--

INSERT INTO `ait_test_schedule` (`id`, `branch_id`, `std_id`, `sub_id`, `chap_id`, `marks`, `test_datetime`, `test_active`, `created_on`, `modified_on`, `modified_by_admin_uid`) VALUES
(1, 1, 2, 7, 6, 5, '1523906468', 'Y', '1523906468', '', 0),
(2, 1, 2, 13, 1, 5, '1524164017', 'Y', '1524164017', '', 0),
(3, 2, 2, 7, 12, 5, '1524733200', 'Y', '1524164338', '', 0),
(4, 1, 2, 13, 1, 5, '1524839400', 'Y', '1524167363', '', 0),
(5, 2, 2, 7, 12, 5, '1524753000', 'Y', '1524167865', '', 0),
(6, 1, 2, 7, 6, 3, '1525330800', 'Y', '1524338443', '', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ait_admin`
--
ALTER TABLE `ait_admin`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `ait_admin_access_logs`
--
ALTER TABLE `ait_admin_access_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ait_board`
--
ALTER TABLE `ait_board`
  ADD PRIMARY KEY (`board_id`);

--
-- Indexes for table `ait_branch`
--
ALTER TABLE `ait_branch`
  ADD PRIMARY KEY (`branch_id`);

--
-- Indexes for table `ait_chapters`
--
ALTER TABLE `ait_chapters`
  ADD PRIMARY KEY (`chap_id`),
  ADD KEY `sid` (`sub_id`),
  ADD KEY `admin_id` (`modified_by_admin_uid`);

--
-- Indexes for table `ait_lecture_schedule`
--
ALTER TABLE `ait_lecture_schedule`
  ADD PRIMARY KEY (`lecture_id`);

--
-- Indexes for table `ait_sessions_log`
--
ALTER TABLE `ait_sessions_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `ait_standards`
--
ALTER TABLE `ait_standards`
  ADD PRIMARY KEY (`std_id`);

--
-- Indexes for table `ait_standard_fields`
--
ALTER TABLE `ait_standard_fields`
  ADD PRIMARY KEY (`fld_id`);

--
-- Indexes for table `ait_subjects`
--
ALTER TABLE `ait_subjects`
  ADD PRIMARY KEY (`sub_id`),
  ADD KEY `std_id` (`std_field_id`),
  ADD KEY `admin_id` (`modified_by_admin_uid`);

--
-- Indexes for table `ait_teachers`
--
ALTER TABLE `ait_teachers`
  ADD PRIMARY KEY (`teacher_id`);

--
-- Indexes for table `ait_test_schedule`
--
ALTER TABLE `ait_test_schedule`
  ADD PRIMARY KEY (`id`),
  ADD KEY `modified_by_admin_uid` (`modified_by_admin_uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ait_admin`
--
ALTER TABLE `ait_admin`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ait_admin_access_logs`
--
ALTER TABLE `ait_admin_access_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `ait_board`
--
ALTER TABLE `ait_board`
  MODIFY `board_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `ait_branch`
--
ALTER TABLE `ait_branch`
  MODIFY `branch_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `ait_chapters`
--
ALTER TABLE `ait_chapters`
  MODIFY `chap_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `ait_lecture_schedule`
--
ALTER TABLE `ait_lecture_schedule`
  MODIFY `lecture_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ait_standards`
--
ALTER TABLE `ait_standards`
  MODIFY `std_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `ait_standard_fields`
--
ALTER TABLE `ait_standard_fields`
  MODIFY `fld_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `ait_subjects`
--
ALTER TABLE `ait_subjects`
  MODIFY `sub_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `ait_teachers`
--
ALTER TABLE `ait_teachers`
  MODIFY `teacher_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ait_test_schedule`
--
ALTER TABLE `ait_test_schedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
