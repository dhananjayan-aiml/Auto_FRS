-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 27, 2021 at 07:55 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `school_mangement`
--

-- --------------------------------------------------------

--
-- Table structure for table `course_details`
--

CREATE TABLE `course_details` (
  `course_id` int(50) NOT NULL,
  `unit` int(2) DEFAULT NULL,
  `lesson_plan` blob DEFAULT NULL,
  `lecture_material` blob DEFAULT NULL,
  `lecture_video` varchar(900) DEFAULT NULL,
  `discussion_question` blob DEFAULT NULL,
  `discussion_link` varchar(900) DEFAULT NULL,
  `course_status` varchar(100) DEFAULT NULL,
  `course_timestamp` timestamp NULL DEFAULT current_timestamp(),
  `remark` varchar(900) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course_details`
--
--
--INSERT INTO `course_details` (`course_id`, `unit`, `course_grade`, `course_name`, `course_description`, `course_duration`, `no_of_session`, `course_status`, `course_timestamp`, `admin_id`) VALUES
--(1, 1, 10, 'Trigonometry', 'Solving for an angle in a right triangle using the trigonometric ratios: Right triangles & trigonometry\r\nSine and cosine of complementary angles: Right triangles & trigonometry\r\nModeling with right triangles: Right triangles & trigonometry\r\nThe reciprocal trigonometric ratios', 60, 3, 'open', '2021-05-27 05:31:54', 11);

-- --------------------------------------------------------

--
-- Table structure for table `course_session_details`
--
--
--CREATE TABLE `course_session_details` (
--  `session_id` int(50) NOT NULL,
--  `course_id` int(50) DEFAULT NULL,
--  `session_duration` varchar(50) DEFAULT NULL,
--  `faculty_id` int(50) DEFAULT NULL,
--  `session_name` varchar(100) DEFAULT NULL,
--  `session_discription` varchar(1000) DEFAULT NULL,
--  `session_date` date DEFAULT NULL,
--  `session_starttime` varchar(50) DEFAULT NULL,
--  `session_endtime` varchar(50) DEFAULT NULL,
--  `session_timestamp` timestamp NULL DEFAULT current_timestamp(),
--  `session_status` varchar(100) DEFAULT NULL
--) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course_session_details`
----
--
--INSERT INTO `course_session_details` (`session_id`, `course_id`, `session_duration`, `faculty_id`, `session_name`, `session_discription`, `session_date`, `session_starttime`, `session_endtime`, `session_timestamp`, `session_status`) VALUES
--(1, 1, '120', 1, 'trignomenty session 1', 'introduction about trignomentry', '2021-05-27', '2.00 AM', '3.00 PM', '2021-05-27 05:35:12', 'open');

-- --------------------------------------------------------

--
-- Table structure for table `faculty_details`
--
--
--CREATE TABLE `faculty_details` (
--  `faculty_id` int(11) NOT NULL,
--  `faculty_name` varchar(50) DEFAULT NULL,
--  `faculty_email` varchar(50) DEFAULT NULL,
--  `faculty_contact` varchar(50) DEFAULT NULL,
--  `faculty_timestamp` timestamp NULL DEFAULT current_timestamp()
--) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
--
----
---- Dumping data for table `faculty_details`
--
--
--INSERT INTO `faculty_details` (`faculty_id`, `faculty_name`, `faculty_email`, `faculty_contact`, `faculty_timestamp`) VALUES
--(1, 'anooshkavin', 'anooshkavin@gmail.com', '9562513517', '2021-05-27 05:54:05');

-- --------------------------------------------------------

--
-- Table structure for table `student_attendance`
--
--
--CREATE TABLE `student_attendance` (
--  `satt_id` int(100) NOT NULL,
--  `student_id` int(100) DEFAULT NULL,
--  `session_id` int(100) DEFAULT NULL,
--  `satt_present` varchar(50) DEFAULT 'YES',
--  `satt_timestamp` timestamp NULL DEFAULT current_timestamp()
--) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
--
----
---- Dumping data for table `student_attendance`
----
--
--INSERT INTO `student_attendance` (`satt_id`, `student_id`, `session_id`, `satt_present`, `satt_timestamp`) VALUES
--(1, 1, 1, 'YES', '2021-05-27 05:36:18');

-- --------------------------------------------------------

--
-- Table structure for table `student_details`
--
--
--CREATE TABLE `student_details` (
--  `student_id` int(50) NOT NULL,
--  `student_name` varchar(50) DEFAULT NULL,
--  `student_contact` varchar(50) DEFAULT NULL,
--  `student_email` varchar(50) NOT NULL,
--  `school_name` varchar(50) DEFAULT NULL,
--  `school_grade` varchar(50) DEFAULT NULL,
--  `school_state` varchar(50) NOT NULL,
--  `school_district` varchar(50) DEFAULT NULL,
--  `school_pincode` varchar(50) DEFAULT NULL,
--  `student_whatsapp` varchar(50) DEFAULT NULL,
--  `school_board` varchar(50) DEFAULT NULL,
--  `timestamp` timestamp NULL DEFAULT current_timestamp()
--) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_details`
--

--INSERT INTO `student_details` (`student_id`, `student_name`, `student_contact`, `student_email`, `school_name`, `school_grade`, `school_state`, `school_district`, `school_pincode`, `student_whatsapp`, `school_board`, `timestamp`) VALUES
--(1, 'kishore D', '9787688154', 'kishore.ct19@bitsathy.ac.in', 'Bannari Amman Institute Of Technology', '10', 'Tamil Nadu', 'Erode', '639117', '9787688154', 'CBSE', '2021-05-26 18:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `student_session_feedback`
--
--
--CREATE TABLE `student_session_feedback` (
--  `stu_feed_id` int(50) NOT NULL,
--  `student_id` int(50) DEFAULT NULL,
--  `session_id` int(50) DEFAULT NULL,
--  `stu_session_feedback` varchar(10000) DEFAULT NULL,
--  `stu_session_willingness` varchar(100) DEFAULT NULL,
--  `stu_session_timestamp` timestamp NULL DEFAULT current_timestamp()
--) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_session_feedback`
--
--
--INSERT INTO `student_session_feedback` (`stu_feed_id`, `student_id`, `session_id`, `stu_session_feedback`, `stu_session_willingness`, `stu_session_timestamp`) VALUES
--(1, 1, 1, 'excellent', 'yes', '2021-05-27 05:44:07');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
----
--
--CREATE TABLE `subject` (
--  `subject_id` int(50) NOT NULL,
--  `subject_name` varchar(50) DEFAULT NULL,
--  `subject_description` varchar(1000) DEFAULT NULL
--) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
--
----
-- Dumping data for table `subject`
--
--
--INSERT INTO `subject` (`subject_id`, `subject_name`, `subject_description`) VALUES
--(1, 'Mathematics', 'mathsss');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `course_details`
--
ALTER TABLE `course_details`
  ADD PRIMARY KEY (`course_id`),
  ADD KEY `subject_forignkey` (`subject_id`);

--
-- Indexes for table `course_session_details`
--
ALTER TABLE `course_session_details`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `course_table_foreignkey` (`course_id`),
  ADD KEY `faculty_forignkey` (`faculty_id`);

--
---- Indexes for table `faculty_details`
----
--ALTER TABLE `faculty_details`
--  ADD PRIMARY KEY (`faculty_id`);

--
-- Indexes for table `student_attendance`
----
--ALTER TABLE `student_attendance`
--  ADD PRIMARY KEY (`satt_id`),
--  ADD KEY `student_forignkey` (`student_id`),
--  ADD KEY `session_forignkey` (`session_id`);

--
---- Indexes for table `student_details`
----
--ALTER TABLE `student_details`
--  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `student_session_feedback`
----
--ALTER TABLE `student_session_feedback`
--  ADD PRIMARY KEY (`stu_feed_id`);
--
----
-- Indexes for table `subject`
----
--ALTER TABLE `subject`
--  ADD PRIMARY KEY (`subject_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `course_details`
----
--ALTER TABLE `course_details`
--  MODIFY `course_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `course_session_details`
----
--ALTER TABLE `course_session_details`
--  MODIFY `session_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `faculty_details`
----
--ALTER TABLE `faculty_details`
--  MODIFY `faculty_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
----
-- AUTO_INCREMENT for table `student_attendance`
----
--ALTER TABLE `student_attendance`
--  MODIFY `satt_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
----
-- AUTO_INCREMENT for table `student_details`
--
--ALTER TABLE `student_details`
--  MODIFY `student_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
----
-- AUTO_INCREMENT for table `student_session_feedback`
----
--ALTER TABLE `student_session_feedback`
--  MODIFY `stu_feed_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
----
-- AUTO_INCREMENT for table `subject`
--
--ALTER TABLE `subject`
--  MODIFY `subject_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
----
---- Constraints for dumped tables
----

--
-- Constraints for table `course_details`
--
ALTER TABLE `course_details`
  ADD CONSTRAINT `subject_forignkey` FOREIGN KEY (`subject_id`) REFERENCES `subject` (`subject_id`);

--
-- Constraints for table `course_session_details`
----
--ALTER TABLE `course_session_details`
--  ADD CONSTRAINT `course_table_foreignkey` FOREIGN KEY (`course_id`) REFERENCES `course_details` (`course_id`),
--  ADD CONSTRAINT `faculty_forignkey` FOREIGN KEY (`faculty_id`) REFERENCES `faculty_details` (`faculty_id`);

--
-- Constraints for table `student_attendance`
----
--ALTER TABLE `student_attendance`
--  ADD CONSTRAINT `session_forignkey` FOREIGN KEY (`session_id`) REFERENCES `course_session_details` (`session_id`),
--  ADD CONSTRAINT `student_forignkey` FOREIGN KEY (`student_id`) REFERENCES `student_details` (`student_id`);
--COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
