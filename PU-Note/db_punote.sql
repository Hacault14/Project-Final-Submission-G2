-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 06, 2022 at 02:21 AM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_punote`
--

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
CREATE TABLE IF NOT EXISTS `course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_name` varchar(255) NOT NULL,
  `path` varchar(500) NOT NULL,
  `faculty` int(11) NOT NULL,
  `program` int(11) NOT NULL,
  `semester` int(11) NOT NULL,
  `added_by` int(11) NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `faculty` (`faculty`),
  KEY `program` (`program`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `course_name`, `path`, `faculty`, `program`, `semester`, `added_by`, `added_date`) VALUES
(1, 'Introduction', 'C:/wamp64/www/CourseManagementSystem/PU-Note/View/static/Faculty/Science and Technology/Bachelor of Software Engineering/Notes/Semester/1/Introduction.pdf', 3, 32, 1, 8, '2022-12-06 02:08:22'),
(2, 'Dependency Inversion Example', 'C:/wamp64/www/CourseManagementSystem/PU-Note/View/static/Faculty/Science and Technology/Bachelor of Software Engineering/Notes/Semester/1/Dependency Inversion Example.pdf', 3, 32, 1, 8, '2022-12-06 02:08:42');

-- --------------------------------------------------------

--
-- Table structure for table `enroll`
--

DROP TABLE IF EXISTS `enroll`;
CREATE TABLE IF NOT EXISTS `enroll` (
  `user` int(11) NOT NULL,
  `faculty` int(11) NOT NULL,
  `program` int(11) NOT NULL,
  KEY `user` (`user`),
  KEY `faculty` (`faculty`),
  KEY `program` (`program`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `enroll`
--

INSERT INTO `enroll` (`user`, `faculty`, `program`) VALUES
(7, 3, 32),
(8, 3, 32);

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

DROP TABLE IF EXISTS `faculty`;
CREATE TABLE IF NOT EXISTS `faculty` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `faculty_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`id`, `faculty_name`) VALUES
(1, 'Management Studies'),
(2, 'Health Science'),
(3, 'Science and Technology'),
(4, 'Humanities and Social Sciences');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
CREATE TABLE IF NOT EXISTS `feedback` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `feedback_text` longtext NOT NULL,
  `feedback_by` int(11) NOT NULL,
  `posted_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `feedback_by` (`feedback_by`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `feedback_text`, `feedback_by`, `posted_date`) VALUES
(4, 'This is some feedback', 7, '2022-12-06 02:11:26'),
(5, 'This is some more feedback', 7, '2022-12-06 02:11:33');

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

DROP TABLE IF EXISTS `notice`;
CREATE TABLE IF NOT EXISTS `notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `notice_info` longtext NOT NULL,
  `faculty` int(11) NOT NULL,
  `program` int(11) NOT NULL,
  `semester` int(11) NOT NULL,
  `added_by` int(11) NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `faculty` (`faculty`),
  KEY `program` (`program`),
  KEY `added_by` (`added_by`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notice`
--

INSERT INTO `notice` (`id`, `notice_info`, `faculty`, `program`, `semester`, `added_by`, `added_date`) VALUES
(5, 'This is an annoucement', 3, 32, 1, 8, '2022-12-06 01:53:41'),
(6, 'This is another announcement', 3, 32, 1, 8, '2022-12-06 01:54:01');

-- --------------------------------------------------------

--
-- Table structure for table `old_question`
--

DROP TABLE IF EXISTS `old_question`;
CREATE TABLE IF NOT EXISTS `old_question` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(250) NOT NULL,
  `path` varchar(400) NOT NULL,
  `faculty` int(11) NOT NULL,
  `program` int(11) NOT NULL,
  `semester` int(11) NOT NULL,
  `year` varchar(255) NOT NULL,
  `added_by` int(11) NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `faculty` (`faculty`),
  KEY `program` (`program`),
  KEY `added_by` (`added_by`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `old_question`
--

INSERT INTO `old_question` (`id`, `question`, `path`, `faculty`, `program`, `semester`, `year`, `added_by`, `added_date`) VALUES
(4, 'Ex0-Small Activity', 'C:/wamp64/www/CourseManagementSystem/PU-Note/View/static/Faculty/Science and Technology/Bachelor of Software Engineering/OldQuestions/Semester/1/2022 Fall/Ex0-Small Activity.pdf', 3, 32, 1, '2022 Fall', 8, '2022-12-06 01:55:08');

-- --------------------------------------------------------

--
-- Table structure for table `program`
--

DROP TABLE IF EXISTS `program`;
CREATE TABLE IF NOT EXISTS `program` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `program_name` varchar(255) NOT NULL,
  `fact_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fact_id` (`fact_id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `program`
--

INSERT INTO `program` (`id`, `program_name`, `fact_id`) VALUES
(1, 'Bachelor of Business Administration', 1),
(2, 'Bachelor of Business Administration–Banking and Insurance', 1),
(4, 'Bachelor of Business Administration-Travel and Tourism', 1),
(5, 'Bachelor of Computer Information System', 1),
(6, 'Bachelor of Hotel Management', 1),
(7, 'Bachelor in Health Care Management', 1),
(8, 'Post Graduate Diploma in Health Care Management', 1),
(19, 'Bachelor of Pharmaceutical Science', 2),
(20, 'Bachelor of Science in Medical Laboratory Technology', 2),
(21, 'Bachelor of Public Health', 2),
(22, 'Bachelor of Science in Nursing', 2),
(23, 'Bachelor of Science in Biochemistry', 2),
(24, 'Bachelor of Science in Medical Microbiology', 2),
(25, 'Bachelor of Science in Medical Biochemistry', 2),
(26, 'Bachelor of Physiotherapy', 2),
(27, 'Bachelor of Optometry', 2),
(28, 'Bachelor of Nursing in Science (Oncology)', 2),
(29, 'Bachelor of Engineering in Information Technology', 3),
(30, 'Bachelor of Architecture', 3),
(31, 'Bachelor of civil Engineering', 3),
(32, 'Bachelor of Software Engineering', 3),
(33, 'Bachelor of Computer Engineering', 3),
(34, 'Bachelor of Electronics and Communication Engineering', 3),
(35, 'Bachelor of Civil & Rural Engineering', 3),
(36, 'Bachelor of Civil Engineering for Diploma Holders', 3),
(37, 'Bachelor of Electrical and Electronics Engineering', 3),
(38, 'Bachelor of Science in Environmental Management', 3),
(39, 'Bachelor of Computer Application', 3),
(40, 'Bachelor of Development Studies (BDEVS)', 4),
(41, 'Bachelor of English and Communication Studies (BECS)', 4),
(42, 'Bachelor of Entrepreneurship Development (BED)', 4);

-- --------------------------------------------------------

--
-- Table structure for table `syllabus`
--

DROP TABLE IF EXISTS `syllabus`;
CREATE TABLE IF NOT EXISTS `syllabus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `syllabus_name` varchar(255) NOT NULL,
  `path` varchar(500) NOT NULL,
  `faculty` int(11) NOT NULL,
  `program` int(11) NOT NULL,
  `semester` int(11) NOT NULL,
  `added_by` int(11) NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `faculty` (`faculty`),
  KEY `program` (`program`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `syllabus`
--

INSERT INTO `syllabus` (`id`, `syllabus_name`, `path`, `faculty`, `program`, `semester`, `added_by`, `added_date`) VALUES
(2, 'Course Outline - SOFE 3650U - ECIS', 'C:/wamp64/www/CourseManagementSystem/PU-Note/View/static/Faculty/Science and Technology/Bachelor of Software Engineering/Syllabus/Semester/1/Course Outline - SOFE 3650U - ECIS.pdf', 3, 32, 1, 8, '2022-12-06 02:00:49');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT '0',
  `college` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `first_name`, `last_name`, `is_admin`, `college`) VALUES
(7, 'student@gmail.com', '1234', 'John', 'Smith', 0, 'OTU'),
(8, 'admin@gmail.com', 'admin', 'Mike', 'Johnson', 1, 'OTU');

-- --------------------------------------------------------

--
-- Table structure for table `users_login`
--

DROP TABLE IF EXISTS `users_login`;
CREATE TABLE IF NOT EXISTS `users_login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_login` tinyint(1) NOT NULL,
  `last_login` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `users_login_ibfk_1` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `course`
--
ALTER TABLE `course`
  ADD CONSTRAINT `course_ibfk_1` FOREIGN KEY (`faculty`) REFERENCES `faculty` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `course_ibfk_2` FOREIGN KEY (`program`) REFERENCES `program` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `enroll`
--
ALTER TABLE `enroll`
  ADD CONSTRAINT `enroll_ibfk_1` FOREIGN KEY (`user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `enroll_ibfk_2` FOREIGN KEY (`faculty`) REFERENCES `faculty` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `enroll_ibfk_3` FOREIGN KEY (`program`) REFERENCES `program` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `feedback`
--
ALTER TABLE `feedback`
  ADD CONSTRAINT `feedback_ibfk_1` FOREIGN KEY (`feedback_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `notice`
--
ALTER TABLE `notice`
  ADD CONSTRAINT `notice_ibfk_1` FOREIGN KEY (`faculty`) REFERENCES `faculty` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `notice_ibfk_2` FOREIGN KEY (`program`) REFERENCES `program` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `notice_ibfk_3` FOREIGN KEY (`added_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `old_question`
--
ALTER TABLE `old_question`
  ADD CONSTRAINT `old_question_ibfk_1` FOREIGN KEY (`faculty`) REFERENCES `faculty` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `old_question_ibfk_2` FOREIGN KEY (`program`) REFERENCES `program` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `old_question_ibfk_3` FOREIGN KEY (`added_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `program`
--
ALTER TABLE `program`
  ADD CONSTRAINT `program_ibfk_1` FOREIGN KEY (`fact_id`) REFERENCES `faculty` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `syllabus`
--
ALTER TABLE `syllabus`
  ADD CONSTRAINT `syllabus_ibfk_1` FOREIGN KEY (`faculty`) REFERENCES `faculty` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `syllabus_ibfk_2` FOREIGN KEY (`program`) REFERENCES `program` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
