-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 16, 2023 at 06:30 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `frs`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(50) NOT NULL,
  `admin_name` varchar(50) DEFAULT NULL,
  `admin_username` varchar(50) DEFAULT NULL,
  `admin_password` varchar(50) DEFAULT NULL,
  `admin_status` varchar(50) DEFAULT 'yes',
  `admin_usertype` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_name`, `admin_username`, `admin_password`, `admin_status`, `admin_usertype`) VALUES
(1, 'kishore', 'kishore', '123', 'yes', 'data_entry'),
(2, 'gokul', 'gokul', '123', 'yes', 'data_entry'),
(3, 'Admin', '123', '123', 'yes', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `course_dept`
--

CREATE TABLE `course_dept` (
  `course_code` varchar(100) NOT NULL,
  `course_name` varchar(1000) NOT NULL,
  `dept_id` varchar(100) NOT NULL,
  `subject_no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course_dept`
--

INSERT INTO `course_dept` (`course_code`, `course_name`, `dept_id`, `subject_no`) VALUES
('212AM101', 'Engineering Mathematics', 'AM', 1),
('212AD101', 'Engineering Mathematics', 'AD', 2),
('212IT101', 'Engineering Mathematics', 'IT', 3),
('212AM306', 'Java Programming', 'AM', 4),
('212AM202', 'Engineering Physics-II', 'AM', 5),
('212AD205', 'Digital System Design', 'AD', 6);

-- --------------------------------------------------------

--
-- Table structure for table `course_details`
--

CREATE TABLE `course_details` (
  `course_id` int(50) NOT NULL,
  `subject_id` int(50) DEFAULT NULL,
  `course_description` varchar(900) DEFAULT NULL,
  `course_duration` varchar(1000) DEFAULT NULL,
  `no_of_session` varchar(200) DEFAULT NULL,
  `course_status` varchar(100) DEFAULT 'pending',
  `course_enroll_status` varchar(1000) DEFAULT '-',
  `course_timestamp` timestamp NULL DEFAULT current_timestamp(),
  `admin_id` int(50) DEFAULT NULL,
  `course_grade` varchar(1000) DEFAULT NULL,
  `course_name` varchar(1000) DEFAULT NULL,
  `l_name` varchar(5) DEFAULT NULL,
  `course_code` varchar(100) NOT NULL,
  `nfrs` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course_details`
--

INSERT INTO `course_details` (`course_id`, `subject_id`, `course_description`, `course_duration`, `no_of_session`, `course_status`, `course_enroll_status`, `course_timestamp`, `admin_id`, `course_grade`, `course_name`, `l_name`, `course_code`, `nfrs`) VALUES
(7, 3, 'https://drive.google.com/file/d/1wggpQ27JHmK7tYkvDSkx9SoFOVidDyOH/preview', 'Suggest the possible ways to organize the student details in an Institute / Organization \nHow to extract the needed information or data from the data store ?\nState the reason : Database is better choice than the file system storage\nCompare data redundancy and consistency\nHow to control concurrent access in a centralized data ?', 'https://discourse.bitsathy.ac.in/t/unit-1-constructor-and-destructor-in-c/24382', 'rejected', ' Rejected entries : Unit-3 --> LessonPlan-5 | LectureVideo-5 | DiscussionQuestion-5 | lp was not good ', '2022-11-22 06:36:53', 1, 'https://drive.google.com/file/d/1nDEEEBi-iCk3zdEAf-ZE8ibYra9YHf3b/preview', 'https://drive.google.com/file/d/1ar3Mv81SdD5223NvGrPaotNOJbdHYAeC/preview', '5', '212AM101', 30),
(8, 5, 'https://drive.google.com/file/d/1gmv6jj8HO0YoEVJAsKO-f_nxZc9xlU7b/preview', '1. Why do you think Java is not a pure object oriented language?\n\n2. Pointers are used in C/ C++. Why does Java not make use of pointers?\n\n3. What do you understand by Object and Class?\n\n4. Compare JVM, JDK, and JRE to understand the differences.\n\n5. What do you think are the advantages of using Java?', 'https://discourse.bitsathy.ac.in/t/unit-ii-queue-and-its-operations/24391', 'rejected', ' Rejected entries : Unit-5 --> LessonPlan-2 | LectureVideo-2 | DiscourseLink-2 | lp mind map is wrong ', '2022-11-22 06:38:13', 1, 'https://drive.google.com/file/d/1nDEEEBi-iCk3zdEAf-ZE8ibYra9YHf3b/view?usp=sharing', 'https://drive.google.com/file/d/1TdbN1enPGKnFfw3mJ8ASmEqz9vYawzwB/preview', '2', '212AM306', 30),
(9, 4, 'https://drive.google.com/file/d/1Q26vC1lPCTyHt71XcgtxBfkJ9Zlf8nze/preview', '1. Explain the role of scriplets in JSP tags?\n\n2. Did page directives can include other pages?\n\n3. Explain the importance of JSP declaration tags?', 'https://discourse.bitsathy.ac.in/t/unit-iv-minimum-spanning-tree/24399', 'rejected', ' Rejected entries : Unit-4 --> LectureVideo-3 | DiscourseLink-3 | DiscussionQuestion-3 |  ', '2022-11-22 06:39:09', 1, 'https://drive.google.com/file/d/1nDEEEBi-iCk3zdEAf-ZE8ibYra9YHf3b/view?usp=sharing', 'https://drive.google.com/file/d/1qUhuHu19_9zh-6bj_OMfiAgfDavLm_3S/preview', '3', '212AM202', 30),
(10, 1, 'https://drive.google.com/file/d/1SLegnMoeGgUiWbklOH1m_s2DW-ywOWTj/preview', '1. Can we write only try block without catch and finally blocks?\n\n2. There are three statements in a try block – statement1, statement2 and statement3. After that there is a catch block to catch the exceptions occurred in the try block. Assume that exception has occurred in statement2. Does statement3 get executed or not?\n\n3. Does finally block get executed If either try or catch blocks are returning the control?\n\n4. Why is it always recommended to keep clean up operations like closing the DB resources inside a finally block?', 'https://discourse.bitsathy.ac.in/t/unit-ii-stack-and-its-operations/24390', 'rejected', ' Rejected entries : Unit-1 --> LectureMaterial-4 | LessonPlan-4 | LectureVideo-4 | DiscourseLink-4 | DiscussionQuestion-4 |  ', '2022-11-22 07:32:47', 1, 'https://drive.google.com/file/d/1nDEEEBi-iCk3zdEAf-ZE8ibYra9YHf3b/view?usp=sharing', 'https://drive.google.com/file/d/17SCMzfwuugUDr-RmqLjaQ-_VsXiO1bTo/preview', '4', '212AM101', 50),
(14, 1, 'https://drive.google.com/file/d/1hHCbal5aWfdB584i4u2nhD3qDn_Elgl-/preview', '1. Differentiate primary index and secondary index.\n2. How hashing table minimize the searching time of a record?\n3. How memory address of the data block is calculated by using hash function?', 'https://discourse.bitsathy.ac.in/t/unit-1-topic-1-introduction/19894?u=kiruthika_v_r', 'approved', '- ', '2022-11-22 08:12:01', 1, 'https://drive.google.com/file/d/1nDEEEBi-iCk3zdEAf-ZE8ibYra9YHf3b/view?usp=sharing', 'https://drive.google.com/file/d/1nDEEEBi-iCk3zdEAf-ZE8ibYra9YHf3b/preview', '3', '212IT101', 0),
(15, 5, 'https://drive.google.com/file/d/1hHCbal5aWfdB584i4u2nhD3qDn_Elgl-/preview', 'What is null and alternate hypothesis?\nInterpret the connection between null hypothesis and critical values.', 'https://discourse.bitsathy.ac.in/t/unit-2-topic-3-relational-model-and-database-design/20603?u=kiruthika_v_r', 'rejected', ' Rejected entries : Unit-5 --> LectureMaterial-4 | LessonPlan-4 | DiscourseLink-4 | DiscussionQuestion-4 |  ', '2022-11-23 04:23:33', 1, 'https://drive.google.com/file/d/1nDEEEBi-iCk3zdEAf-ZE8ibYra9YHf3b/view?usp=sharing', 'https://drive.google.com/file/d/1KJU0GgSX7xL--PxCaN4LvcC7LObp_dmC/preview', '4', '212AM101', 40),
(16, 3, 'https://drive.google.com/file/d/1Q26vC1lPCTyHt71XcgtxBfkJ9Zlf8nze/preview', 'can we do the test of hypothesis about the difference between two means?\ncan we do the test of hypothesis about the difference between two mean with dependent samples?\nwhat is degrees of freedom.', 'https://discourse.bitsathy.ac.in/t/unit-2-topic-3-relational-model-and-database-design/20603?u=kiruthika_v_r', 'rejected', ' Rejected entries : Unit-3 --> LessonPlan-2 | DiscourseLink-2 | DiscussionQuestion-2 |  ', '2022-11-23 07:36:46', 1, 'https://drive.google.com/file/d/1nDEEEBi-iCk3zdEAf-ZE8ibYra9YHf3b/view?usp=sharing', 'https://drive.google.com/file/d/1Wxr8vC7I_pjuaGvNfeflZ6ZTXTYTELHE/preview', '2', '212AM101', 30),
(17, 3, 'https://drive.google.com/file/d/1SLegnMoeGgUiWbklOH1m_s2DW-ywOWTj/preview', '1. How can you view the bivariat random variables in engineering fields?                \n2. Do you know any mathematical and statistical tool that allows you to view your data\'s in a different field to analyse?\n3. How can you identify the various types of bivariate random variables ?', 'https://www.google.com/', 'rejected', ' Rejected entries : Unit-3 --> LectureVideo-4 | wrongly ', '2022-11-23 08:09:05', 1, 'https://www.google.com/', 'https://drive.google.com/file/d/1Wxr8vC7I_pjuaGvNfeflZ6ZTXTYTELHE/preview', '4', '212AM101', 10),
(18, 4, 'https://drive.google.com/file/d/1SLegnMoeGgUiWbklOH1m_s2DW-ywOWTj/preview', '1\r\n2\r\n3\r\n', 'https://www.w3schools.com/cssref/pr_background-repeat.php', 'approved', '- ', '2023-01-19 12:03:48', 1, 'https://www.w3schools.com/cssref/pr_background-repeat.php', 'https://drive.google.com/file/d/1nDEEEBi-iCk3zdEAf-ZE8ibYra9YHf3b/preview', '3', '212AM306', 0),
(19, 1, 'https://drive.google.com/file/d/1Q26vC1lPCTyHt71XcgtxBfkJ9Zlf8nze/preview', '1234', 'https://www.w3schools.com/cssref/pr_background-repeat.php', 'approved', '-', '2023-02-02 13:03:31', 1, 'https://www.w3schools.com/cssref/pr_background-repeat.php', 'https://drive.google.com/file/d/17SCMzfwuugUDr-RmqLjaQ-_VsXiO1bTo/preview', '1', '212IT101', 0),
(20, 1, 'https://drive.google.com/file/d/1SLegnMoeGgUiWbklOH1m_s2DW-ywOWTj/preview', '123123123', 'https://www.w3schools.com/cssref/pr_background-repeat.php', 'rejected', ' Rejected entries : Unit-1 --> LectureMaterial-1 | LessonPlan-1 | DiscourseLink-1 | DiscussionQuestion-1 |  ', '2023-02-02 13:07:37', 1, 'https://www.w3schools.com/cssref/pr_background-repeat.php', 'https://drive.google.com/file/d/17SCMzfwuugUDr-RmqLjaQ-_VsXiO1bTo/preview', '1', '212IT101', 40),
(21, 1, 'https://drive.google.com/file/d/1Q26vC1lPCTyHt71XcgtxBfkJ9Zlf8nze/preview', '<input type=\"hidden\" name=\"c_c\" value=\"{{c_c}}\">', '<input type=\"hidden\" name=\"c_c\" value=\"{{c_c}}\">', 'pending', '-', '2023-02-02 13:20:58', 1, 'https://www.w3schools.com/cssref/pr_background-repeat.php', 'https://drive.google.com/file/d/1nDEEEBi-iCk3zdEAf-ZE8ibYra9YHf3b/preview', '1', '212AM202', NULL),
(22, 1, 'https://drive.google.com/file/d/1SLegnMoeGgUiWbklOH1m_s2DW-ywOWTj/preview', 'asdf', 'https://www.w3schools.com/cssref/pr_background-repeat.php', 'pending', '-', '2023-02-04 12:40:37', 1, 'https://www.w3schools.com/cssref/pr_background-repeat.php', 'https://drive.google.com/file/d/1KJU0GgSX7xL--PxCaN4LvcC7LObp_dmC/preview', '1', '212AM306', NULL),
(23, 5, 'https://drive.google.com/file/d/1AeUI69NjNgIXScB_oRoppRr_YRFRICVM/preview', '1234554', 'https://www.w3schools.com/cssref/pr_background-repeat.php', 'pending', '-', '2023-02-06 14:37:36', 1, 'https://www.w3schools.com/cssref/pr_background-repeat.php', 'https://drive.google.com/file/d/17SCMzfwuugUDr-RmqLjaQ-_VsXiO1bTo/preview', '1', '212AM202', NULL),
(24, 4, 'https://drive.google.com/file/d/1gmv6jj8HO0YoEVJAsKO-f_nxZc9xlU7b/preview', '1.\r\n2.\r\n3.', 'https://www.w3schools.com/cssref/pr_background-repeat.php', 'rejected', ' Rejected entries : Unit-4 --> LectureMaterial-4 | LessonPlan-4 | LectureVideo-4 | DiscourseLink-4 | DiscussionQuestion-4 |  ', '2023-02-06 18:28:27', 1, 'https://www.w3schools.com/cssref/pr_background-repeat.php', 'https://drive.google.com/file/d/1qUhuHu19_9zh-6bj_OMfiAgfDavLm_3S/preview', '4', '212AM101', 50),
(25, 5, 'https://drive.google.com/file/d/1wggpQ27JHmK7tYkvDSkx9SoFOVidDyOH/preview', 'demo time', 'https://www.w3schools.com/cssref/pr_background-repeat.php', 'pending', '-', '2023-02-08 09:43:34', 1, 'https://www.w3schools.com/cssref/pr_background-repeat.php', 'https://drive.google.com/file/d/1qUhuHu19_9zh-6bj_OMfiAgfDavLm_3S/preview', '1', '212AM101', NULL),
(26, 4, 'https://drive.google.com/file/d/1wggpQ27JHmK7tYkvDSkx9SoFOVidDyOH/preview', 'demo duplicate', 'https://www.w3schools.com/cssref/pr_background-repeat.php', 'pending', '-', '2023-02-08 09:45:30', 1, 'https://www.w3schools.com/cssref/pr_background-repeat.php', 'https://drive.google.com/file/d/1ar3Mv81SdD5223NvGrPaotNOJbdHYAeC/preview', '1', '212AM101', NULL),
(27, 2, 'https://drive.google.com/file/d/1gmv6jj8HO0YoEVJAsKO-f_nxZc9xlU7b/preview', 'demo time2', 'https://www.w3schools.com/cssref/pr_background-repeat.php', 'pending', '-', '2023-02-08 09:51:46', 1, 'https://www.w3schools.com/cssref/pr_background-repeat.php', 'https://drive.google.com/file/d/1qUhuHu19_9zh-6bj_OMfiAgfDavLm_3S/preview', '1', '212AM101', NULL),
(28, 2, 'https://drive.google.com/file/d/1gmv6jj8HO0YoEVJAsKO-f_nxZc9xlU7b/preview', '234', 'https://www.w3schools.com/cssref/pr_background-repeat.php', 'rejected', ' Rejected entries : Unit-2 --> LectureMaterial-3 | DiscourseLink-3 | DiscussionQuestion-3 | poda po ', '2023-02-08 17:33:42', 1, 'https://www.w3schools.com/cssref/pr_background-repeat.php', 'https://drive.google.com/file/d/1ar3Mv81SdD5223NvGrPaotNOJbdHYAeC/preview', '3', '212AM101', 30),
(29, 2, 'https://drive.google.com/file/d/1gmv6jj8HO0YoEVJAsKO-f_nxZc9xlU7b/preview', 'w2erdf', 'https://www.w3schools.com/cssref/pr_background-repeat.php', 'pending', '-', '2023-02-08 17:49:51', 1, 'https://www.w3schools.com/cssref/pr_background-repeat.php', 'https://drive.google.com/file/d/1ar3Mv81SdD5223NvGrPaotNOJbdHYAeC/preview', '3', '212AM202', NULL),
(30, 3, 'https://drive.google.com/file/d/1gmv6jj8HO0YoEVJAsKO-f_nxZc9xlU7b/preview', 'q23r', 'https://www.w3schools.com/cssref/pr_background-repeat.php', 'pending', '-', '2023-02-08 17:55:15', 1, 'https://www.w3schools.com/cssref/pr_background-repeat.php', 'https://drive.google.com/file/d/1ar3Mv81SdD5223NvGrPaotNOJbdHYAeC/preview', '3', '212AM202', NULL),
(31, 4, 'https://drive.google.com/file/d/1gmv6jj8HO0YoEVJAsKO-f_nxZc9xlU7b/preview', 'awefd', 'https://www.w3schools.com/cssref/pr_background-repeat.php', 'rejected', ' Rejected entries : Unit-4 --> LectureVideo-3 | DiscourseLink-3 | DiscussionQuestion-3 |  ', '2023-02-08 18:06:39', 1, 'https://www.w3schools.com/cssref/pr_background-repeat.php', 'https://drive.google.com/file/d/1ar3Mv81SdD5223NvGrPaotNOJbdHYAeC/preview', '3', '212AM202', 30),
(32, 4, 'https://drive.google.com/file/d/1gmv6jj8HO0YoEVJAsKO-f_nxZc9xlU7b/preview', 'awefd', 'https://www.w3schools.com/cssref/pr_background-repeat.php', 'rejected', ' Rejected entries : Unit-4 --> LessonPlan-3 | DiscussionQuestion-3 | not submitted proper lp and discourse link ', '2023-02-08 18:10:25', 1, 'https://www.w3schools.com/cssref/pr_background-repeat.php', 'https://drive.google.com/file/d/1ar3Mv81SdD5223NvGrPaotNOJbdHYAeC/preview', '3', '212AM202', 20),
(33, 4, 'https://drive.google.com/file/d/1wggpQ27JHmK7tYkvDSkx9SoFOVidDyOH/preview', 'ASDFA ', '<input type=\"hidden\" name=\"c_c\" value=\"{{c_c}}\">', 'approved', 'Your Entry Approved ', '2023-02-08 18:18:08', 1, 'https://www.w3schools.com/cssref/pr_background-repeat.php', 'https://drive.google.com/file/d/1ar3Mv81SdD5223NvGrPaotNOJbdHYAeC/preview', '4', '212AM202', 0),
(34, 5, 'https://drive.google.com/file/d/1gmv6jj8HO0YoEVJAsKO-f_nxZc9xlU7b/preview', 'qgr', 'https://www.w3schools.com/cssref/pr_background-repeat.php', 'rejected', ' Rejected entries : Unit-5 --> LectureVideo-5 | DiscourseLink-5 | DiscussionQuestion-5 |  ', '2023-02-09 03:25:58', 1, 'https://www.w3schools.com/cssref/pr_background-repeat.php', 'https://drive.google.com/file/d/1ar3Mv81SdD5223NvGrPaotNOJbdHYAeC/preview', '5', '212AM101', 30),
(35, 5, 'https://drive.google.com/file/d/1gmv6jj8HO0YoEVJAsKO-f_nxZc9xlU7b/preview', 'sdaf', 'https://www.w3schools.com/cssref/pr_background-repeat.php', 'rejected', ' Rejected entries : Unit-5 --> LectureMaterial-5 | LessonPlan-5 | LectureVideo-5 | DiscourseLink-5 | DiscussionQuestion-5 |  ', '2023-02-09 03:28:08', 1, 'https://www.w3schools.com/cssref/pr_background-repeat.php', 'https://drive.google.com/file/d/1ar3Mv81SdD5223NvGrPaotNOJbdHYAeC/preview', '5', '212AM101', 50),
(36, 5, 'https://drive.google.com/file/d/1gmv6jj8HO0YoEVJAsKO-f_nxZc9xlU7b/preview', 'wdtgh ', 'https://www.w3schools.com/cssref/pr_background-repeat.php', 'rejected', ' Rejected entries : Unit-5 --> LectureMaterial-5 | LessonPlan-5 | LectureVideo-5 | DiscourseLink-5 | DiscussionQuestion-5 |  ', '2023-02-09 04:02:31', 1, 'https://www.w3schools.com/cssref/pr_background-repeat.php', 'https://drive.google.com/file/d/1ar3Mv81SdD5223NvGrPaotNOJbdHYAeC/preview', '5', '212AM101', 50),
(37, 5, 'https://drive.google.com/file/d/1gmv6jj8HO0YoEVJAsKO-f_nxZc9xlU7b/preview', 'asdfasdf', 'https://www.w3schools.com/cssref/pr_background-repeat.php', 'rejected', ' Rejected entries : Unit-5 --> DiscussionQuestion-5 |  ', '2023-02-09 04:22:08', 1, 'https://www.w3schools.com/cssref/pr_background-repeat.php', 'https://drive.google.com/file/d/1ar3Mv81SdD5223NvGrPaotNOJbdHYAeC/preview', '5', '212AM101', 10),
(38, 3, 'https://drive.google.com/file/d/1gmv6jj8HO0YoEVJAsKO-f_nxZc9xlU7b/preview', '124', 'https://www.w3schools.com/cssref/pr_background-repeat.php', 'rejected', ' Rejected entries : Unit-3 --> DiscourseLink-3 | DiscussionQuestion-3 | Discourse Link not in format and discussion question not updataed ', '2023-02-15 05:57:47', 2, 'https://drive.google.com/file/d/1QkyDVIdwT51PvOhLKwl_7aC62BS3DhR7/view?usp=sharing', 'https://drive.google.com/file/d/1ar3Mv81SdD5223NvGrPaotNOJbdHYAeC/preview', '3', '212AD205', 20),
(39, 4, 'asd/preview', 'asdf', 'asdf', 'pending', '-', '2023-02-16 04:04:23', 1, 'asdf', 'asd/preview', '3', '212AM101', NULL),
(40, 1, 'asd/preview', 'k', 'asdf', 'pending', '-', '2023-02-16 04:09:13', 1, 'asdf', 'asd/preview', '1', '212AM101', NULL),
(41, 5, 'sd/preview', 'sch', 'sdf', 'pending', '-', '2023-02-16 04:16:11', 1, 'asdf', 'asd/preview', '4', '212AM101', NULL),
(42, 2, 'asd/preview', 'asdf', 'asdf', 'pending', '-', '2023-02-16 04:39:02', 1, 'asdf', 'static/uploads/lectureMaterial/U2-L3-.lp.pdf', '3', '212AM101', NULL),
(43, 4, 'asd/preview', 'asdf', 'asasdf', 'pending', '-', '2023-02-16 04:42:31', 1, 'asdf', 'static/uploads/lectureMaterial/U2-L2-.212-al114-Assignment Series - 75.docx.pdf', '3', '212AM101', NULL),
(44, 2, 'asd/preview', 'asdf', 'asdf', 'pending', '-', '2023-02-16 04:44:32', 1, 'asdf', 'static/uploads/lectureMaterial/U2-L2-.212-al114-Assignment Series - 75.docx.pdf', '2', '212IT101', NULL),
(45, 2, 'asd/preview', 'asdf', 'asdf', 'pending', '-', '2023-02-16 04:46:38', 1, 'asdf', 'static/uploads/lectureMaterial/U2-L2-.212-al114-Assignment Series - 75.docx.pdf', '2', '212IT101', NULL),
(46, 3, 'https://drive.google.com/file/d/1gmv6jj8HO0YoEVJAsKO-f_nxZc9xlU7b/preview', 'asdf', 'https://www.w3schools.com/cssref/pr_background-repeat.php', 'pending', '-', '2023-02-16 05:15:26', 2, 'static/uploads/lessonPlan/U3-L3-lp.pdf', 'static/uploads/lectureMaterial/U3-L3-Blue Modern Company Profile Presentation.pdf', '3', '212AD205', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `course_enroll_details`
--

CREATE TABLE `course_enroll_details` (
  `course_enroll_id` int(50) NOT NULL,
  `course_id` int(50) DEFAULT NULL,
  `student_id` int(50) DEFAULT NULL,
  `course_enroll_timestamp` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `course_faculty`
--

CREATE TABLE `course_faculty` (
  `faculty_id` int(50) DEFAULT NULL,
  `course_code` varchar(100) DEFAULT NULL,
  `admin_id` int(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course_faculty`
--

INSERT INTO `course_faculty` (`faculty_id`, `course_code`, `admin_id`) VALUES
(4, '212AM101', 1),
(4, '212AM202', 1),
(4, '212AM306', 1),
(4, '212IT101', 1),
(2, '212AD205', 2);

-- --------------------------------------------------------

--
-- Table structure for table `course_session_details`
--

CREATE TABLE `course_session_details` (
  `session_id` int(50) NOT NULL,
  `course_id` int(50) DEFAULT NULL,
  `session_duration` varchar(50) DEFAULT NULL,
  `faculty_id` int(50) DEFAULT NULL,
  `session_name` varchar(100) DEFAULT NULL,
  `session_discription` varchar(1000) DEFAULT NULL,
  `session_date` varchar(50) DEFAULT NULL,
  `session_starttime` varchar(50) DEFAULT NULL,
  `session_endtime` varchar(50) DEFAULT NULL,
  `session_timestamp` timestamp NULL DEFAULT current_timestamp(),
  `session_status` varchar(100) DEFAULT 'open'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course_session_details`
--

INSERT INTO `course_session_details` (`session_id`, `course_id`, `session_duration`, `faculty_id`, `session_name`, `session_discription`, `session_date`, `session_starttime`, `session_endtime`, `session_timestamp`, `session_status`) VALUES
(1, 1, '120', 1, 'trignomenty session 1', 'introduction about trignomentry', '2021-05-27', '2.00 AM', '3.00 PM', '2021-05-27 05:35:12', 'open'),
(6, 1, '160', 4, 'session 3', 'con', '2021-06-11', '15:09', '15:10', '2021-06-11 09:38:38', 'close'),
(15, 2, '5', 1, 'session 2', 'asd', '2021-06-11', '20:07', '20:09', '2021-06-11 14:37:00', 'open'),
(16, 1, '2', 1, 'asd', 'asd', '2021-06-12', '21:07', '01:07', '2021-06-11 14:37:59', 'open'),
(17, 4, '120', 4, 'Introduction -1 ', 'about intro', '2021-06-19', '11:49', '13:49', '2021-06-19 06:19:35', 'open');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `dept_id` varchar(20) NOT NULL,
  `dept_name` varchar(1000) DEFAULT NULL,
  `dept_no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`dept_id`, `dept_name`, `dept_no`) VALUES
('AM', 'AIML', 1),
('AD', 'AIDS', 2),
('IT', 'IT', 3);

-- --------------------------------------------------------

--
-- Table structure for table `entry_details`
--

CREATE TABLE `entry_details` (
  `entry_id` int(11) NOT NULL,
  `faculty_id` int(100) NOT NULL,
  `sub_lecture` varchar(1000) NOT NULL,
  `negative_rp` int(11) NOT NULL,
  `positive_rp` int(11) NOT NULL,
  `remarks` varchar(1000) NOT NULL,
  `failed_values` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `faculty_details`
--

CREATE TABLE `faculty_details` (
  `faculty_id` int(11) NOT NULL,
  `faculty_name` varchar(50) DEFAULT 'open',
  `faculty_email` varchar(50) DEFAULT NULL,
  `faculty_contact` varchar(50) DEFAULT NULL,
  `faculty_timestamp` timestamp NULL DEFAULT current_timestamp(),
  `nfrs` int(11) NOT NULL DEFAULT 0,
  `admin_id` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `faculty_details`
--

INSERT INTO `faculty_details` (`faculty_id`, `faculty_name`, `faculty_email`, `faculty_contact`, `faculty_timestamp`, `nfrs`, `admin_id`) VALUES
(1, 'anooshkavin', 'anooshkavin@gmail.com', '9562513517', '2021-05-27 05:54:05', 0, 5),
(2, 'gokul', 'gokul.al21@bitsathy.ac.in', '1234567890', '2023-02-14 05:03:39', 0, 2),
(4, 'kishore', 'dhananjayanv.al21@bitsathy.ac.in', '9787688154', '2021-06-02 04:29:48', 610, 1),
(5, 'sad', 'asdasd@kflg.com', '97876881544', '2021-06-03 10:52:25', 0, 7);

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `notification_id` int(50) NOT NULL,
  `notification_msg` varchar(50) DEFAULT NULL,
  `notification_status` varchar(50) DEFAULT NULL,
  `notification_from` varchar(50) DEFAULT NULL,
  `admin_id` int(50) DEFAULT NULL,
  `notification_timestamp` date DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`notification_id`, `notification_msg`, `notification_status`, `notification_from`, `admin_id`, `notification_timestamp`) VALUES
(1, 'testing msg', 'unread', '1', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `school_details`
--

CREATE TABLE `school_details` (
  `school_id` int(50) NOT NULL,
  `school_name` varchar(100) DEFAULT NULL,
  `school_state` varchar(100) DEFAULT NULL,
  `school_district` varchar(100) DEFAULT NULL,
  `school_pincode` varchar(50) DEFAULT NULL,
  `school_board` varchar(100) DEFAULT NULL,
  `school_contact` varchar(50) DEFAULT NULL,
  `school_status` varchar(50) DEFAULT NULL,
  `school_timestamp` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `student_attendance`
--

CREATE TABLE `student_attendance` (
  `satt_id` int(100) NOT NULL,
  `student_id` int(100) DEFAULT NULL,
  `session_id` int(100) DEFAULT NULL,
  `satt_present` varchar(50) DEFAULT 'NO',
  `satt_timestamp` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_attendance`
--

INSERT INTO `student_attendance` (`satt_id`, `student_id`, `session_id`, `satt_present`, `satt_timestamp`) VALUES
(1, 1, 1, 'YES', '2021-05-27 05:36:18'),
(2, 1, 6, 'YES', '2021-06-03 17:39:19'),
(3, 1, 6, 'YES', '2021-06-11 09:40:06'),
(6, 1, 16, 'NO', '2021-06-11 14:37:59'),
(7, 2, 16, 'NO', '2021-06-19 06:04:55'),
(8, 1, 17, 'NO', '2021-06-19 06:19:36'),
(9, 2, 17, 'NO', '2021-06-19 06:19:36'),
(11, 3, 1, 'NO', '2021-06-19 06:37:27');

-- --------------------------------------------------------

--
-- Table structure for table `student_details`
--

CREATE TABLE `student_details` (
  `student_id` int(50) NOT NULL,
  `school_id` int(11) DEFAULT NULL,
  `student_name` varchar(50) DEFAULT NULL,
  `student_contact` varchar(50) DEFAULT NULL,
  `student_email` varchar(50) NOT NULL,
  `student_password` varchar(50) DEFAULT NULL,
  `student_grade` varchar(50) DEFAULT NULL,
  `student_whatsapp` varchar(50) DEFAULT NULL,
  `timestamp` timestamp NULL DEFAULT current_timestamp(),
  `account_status` varchar(50) DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_details`
--

INSERT INTO `student_details` (`student_id`, `school_id`, `student_name`, `student_contact`, `student_email`, `student_password`, `student_grade`, `student_whatsapp`, `timestamp`, `account_status`) VALUES
(1, NULL, 'kishore D', '9787688154', 'kishore.ct19@bitsathy.ac.in', NULL, '10', '9787688154', '2021-05-26 18:30:00', 'yes'),
(2, NULL, 'Rameshraja r', '9562513517', 'rameshraja@gmail.com', NULL, '10', '9562513517', '2021-06-19 06:04:55', 'yes'),
(3, NULL, 'anooshkavin g', '9425786415', 'anooshkavin@gmail.com', NULL, '10', '9425786415', '2021-06-19 06:37:27', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `subject_id` int(50) NOT NULL,
  `subject_name` varchar(50) DEFAULT NULL,
  `subject_description` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`subject_id`, `subject_name`, `subject_description`) VALUES
(1, 'U1', ''),
(2, 'U2', ''),
(3, 'U3', NULL),
(4, 'U4', NULL),
(5, 'U5', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `time_table`
--

CREATE TABLE `time_table` (
  `time_id` int(255) NOT NULL,
  `admin_id` int(50) NOT NULL,
  `course_code` varchar(100) NOT NULL,
  `unit` int(10) NOT NULL,
  `lp_no` int(10) NOT NULL,
  `wiki_upload_time` timestamp NULL DEFAULT NULL,
  `uploaded_time` timestamp NULL DEFAULT NULL,
  `deadline` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `time_table`
--

INSERT INTO `time_table` (`time_id`, `admin_id`, `course_code`, `unit`, `lp_no`, `wiki_upload_time`, `uploaded_time`, `deadline`) VALUES
(1, 1, '212AM101', 2, 1, '2023-02-19 18:30:00', '2023-02-08 09:51:46', 0),
(2, 1, '212AM202', 4, 4, '2023-02-09 18:30:00', '2023-02-08 18:18:08', 0),
(3, 1, '212AM101', 5, 5, '2023-02-14 18:30:00', '2023-02-09 04:22:08', 1),
(4, 1, '212IT101', 2, 2, '2023-02-23 05:52:04', '2023-02-16 04:46:38', 1),
(5, 2, '212AD205', 3, 3, '2023-02-23 05:52:04', NULL, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `course_dept`
--
ALTER TABLE `course_dept`
  ADD PRIMARY KEY (`subject_no`),
  ADD UNIQUE KEY `course_code` (`course_code`);

--
-- Indexes for table `course_details`
--
ALTER TABLE `course_details`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `course_enroll_details`
--
ALTER TABLE `course_enroll_details`
  ADD PRIMARY KEY (`course_enroll_id`),
  ADD UNIQUE KEY `student_id` (`student_id`);

--
-- Indexes for table `course_session_details`
--
ALTER TABLE `course_session_details`
  ADD PRIMARY KEY (`session_id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`dept_no`);

--
-- Indexes for table `entry_details`
--
ALTER TABLE `entry_details`
  ADD PRIMARY KEY (`entry_id`);

--
-- Indexes for table `faculty_details`
--
ALTER TABLE `faculty_details`
  ADD PRIMARY KEY (`faculty_id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`notification_id`),
  ADD KEY `admin_id_forignkey` (`admin_id`);

--
-- Indexes for table `school_details`
--
ALTER TABLE `school_details`
  ADD PRIMARY KEY (`school_id`);

--
-- Indexes for table `student_attendance`
--
ALTER TABLE `student_attendance`
  ADD PRIMARY KEY (`satt_id`),
  ADD KEY `student_forignkey` (`student_id`),
  ADD KEY `session_forignkey` (`session_id`);

--
-- Indexes for table `student_details`
--
ALTER TABLE `student_details`
  ADD PRIMARY KEY (`student_id`),
  ADD UNIQUE KEY `student_email` (`student_email`),
  ADD KEY `school_forign_key` (`school_id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`subject_id`),
  ADD UNIQUE KEY `Department` (`subject_id`);

--
-- Indexes for table `time_table`
--
ALTER TABLE `time_table`
  ADD PRIMARY KEY (`time_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `course_dept`
--
ALTER TABLE `course_dept`
  MODIFY `subject_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `course_details`
--
ALTER TABLE `course_details`
  MODIFY `course_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `course_enroll_details`
--
ALTER TABLE `course_enroll_details`
  MODIFY `course_enroll_id` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `course_session_details`
--
ALTER TABLE `course_session_details`
  MODIFY `session_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `dept_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `entry_details`
--
ALTER TABLE `entry_details`
  MODIFY `entry_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faculty_details`
--
ALTER TABLE `faculty_details`
  MODIFY `faculty_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `notification_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `school_details`
--
ALTER TABLE `school_details`
  MODIFY `school_id` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_attendance`
--
ALTER TABLE `student_attendance`
  MODIFY `satt_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `student_details`
--
ALTER TABLE `student_details`
  MODIFY `student_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `subject_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `time_table`
--
ALTER TABLE `time_table`
  MODIFY `time_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `course_details`
--
ALTER TABLE `course_details`
  ADD CONSTRAINT `subject_forignkey` FOREIGN KEY (`subject_id`) REFERENCES `subject` (`subject_id`);

--
-- Constraints for table `course_enroll_details`
--
ALTER TABLE `course_enroll_details`
  ADD CONSTRAINT `course_foreignkey` FOREIGN KEY (`course_id`) REFERENCES `course_details` (`course_id`),
  ADD CONSTRAINT `student_foreignkey` FOREIGN KEY (`student_id`) REFERENCES `student_details` (`student_id`);

--
-- Constraints for table `course_session_details`
--
ALTER TABLE `course_session_details`
  ADD CONSTRAINT `course_table_foreignkey` FOREIGN KEY (`course_id`) REFERENCES `course_details` (`course_id`),
  ADD CONSTRAINT `faculty_forignkey` FOREIGN KEY (`faculty_id`) REFERENCES `faculty_details` (`faculty_id`);

--
-- Constraints for table `notification`
--
ALTER TABLE `notification`
  ADD CONSTRAINT `admin_id_forignkey` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`admin_id`);

--
-- Constraints for table `student_attendance`
--
ALTER TABLE `student_attendance`
  ADD CONSTRAINT `session_forignkey` FOREIGN KEY (`session_id`) REFERENCES `course_session_details` (`session_id`),
  ADD CONSTRAINT `student_forignkey` FOREIGN KEY (`student_id`) REFERENCES `student_details` (`student_id`);

--
-- Constraints for table `student_details`
--
ALTER TABLE `student_details`
  ADD CONSTRAINT `school_forign_key` FOREIGN KEY (`school_id`) REFERENCES `school_details` (`school_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
