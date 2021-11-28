-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 28, 2021 at 10:08 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tms_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `project_list`
--

CREATE TABLE `project_list` (
  `id` int(30) NOT NULL,
  `name` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(2) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `manager_id` int(30) NOT NULL,
  `user_ids` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `project_list`
--

INSERT INTO `project_list` (`id`, `name`, `description`, `status`, `start_date`, `end_date`, `manager_id`, `user_ids`, `date_created`) VALUES
(1, 'Web Design', '&lt;ul class=&quot;i8Z77e&quot; style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; color: rgb(32, 33, 36); font-family: arial, sans-serif;&quot;&gt;&lt;li class=&quot;TrT0Xe&quot; style=&quot;margin: 0px 0px 4px; padding: 0px; list-style-type: disc;&quot;&gt;Creating an &ldquo;About Me&rdquo; Page. ...&lt;/li&gt;&lt;li class=&quot;TrT0Xe&quot; style=&quot;margin: 0px 0px 4px; padding: 0px; list-style-type: disc;&quot;&gt;Designing for the School Community. ...&lt;/li&gt;&lt;li class=&quot;TrT0Xe&quot; style=&quot;margin: 0px 0px 4px; padding: 0px; list-style-type: disc;&quot;&gt;The Power of Persuasive Publishing. ...&lt;/li&gt;&lt;li class=&quot;TrT0Xe&quot; style=&quot;margin: 0px 0px 4px; padding: 0px; list-style-type: disc;&quot;&gt;Creating a Fan Page. ...&lt;/li&gt;&lt;li class=&quot;TrT0Xe&quot; style=&quot;margin: 0px 0px 4px; padding: 0px; list-style-type: disc;&quot;&gt;Consider Implementing Competitions. ...&lt;/li&gt;&lt;li class=&quot;TrT0Xe&quot; style=&quot;margin: 0px 0px 4px; padding: 0px; list-style-type: disc;&quot;&gt;Build a Tribute Page. ...&lt;/li&gt;&lt;li class=&quot;TrT0Xe&quot; style=&quot;margin: 0px 0px 4px; padding: 0px; list-style-type: disc;&quot;&gt;Create a Survey Form. ...&lt;/li&gt;&lt;li class=&quot;TrT0Xe&quot; style=&quot;margin: 0px 0px 4px; padding: 0px; list-style-type: disc;&quot;&gt;Create Your Own Website.&lt;/li&gt;&lt;/ul&gt;', 0, '2021-11-28', '2021-12-28', 2, '3,4,5', '2021-11-28 00:03:35'),
(2, 'Digital Electronics', '						&lt;p&gt;&lt;span style=&quot;color: rgb(32, 33, 36); font-family: arial, sans-serif;&quot;&gt;Digital electronics is&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;color: rgb(32, 33, 36); font-family: arial, sans-serif;&quot;&gt;a field of electronics involving the study of digital signals and the engineering of devices that use or produce them&lt;/span&gt;&lt;span style=&quot;color: rgb(32, 33, 36); font-family: arial, sans-serif;&quot;&gt;.&lt;/span&gt;&lt;span style=&quot;color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 1rem;&quot;&gt;This is in contrast to analog electronics and analog signals. Complex devices may have simple electronic representations of Boolean logic functions.&lt;/span&gt;&lt;/p&gt;					', 0, '2021-11-27', '2022-01-27', 6, '3,4', '2020-12-03 09:56:56'),
(3, 'Data Science', '						&lt;span style=&quot;color: rgb(32, 33, 36); font-family: arial, sans-serif;&quot;&gt;Cleaning and validating&lt;/span&gt;&lt;span style=&quot;color: rgb(32, 33, 36); font-family: arial, sans-serif;&quot;&gt;&amp;nbsp;the data to ensure accuracy, completeness, and uniformity. Devising and applying models and algorithms to mine the stores of big data. Analyzing the data to identify patterns and trends. Interpreting the data to discover solutions and opportunities.&lt;/span&gt;					', 0, '2021-11-28', '2021-12-02', 2, '3,3,4,4', '2020-12-03 13:51:54'),
(4, 'React Js Implementation', 'This will involve React JS Libraries implementation as well as components as a new revolution in web development.', 0, '2021-11-03', '2021-12-31', 2, '3,4,5', '2021-11-28 01:11:52'),
(5, 'Task Management System', 'This project will involve all task assignments!', 0, '2021-11-24', '2021-11-30', 2, '0,4,5', '2021-11-28 01:39:37'),
(6, 'Research Report Writing', '&lt;p&gt;This includes:&lt;/p&gt;&lt;ul&gt;&lt;li&gt;Background info&lt;/li&gt;&lt;li&gt;Literature Review&lt;/li&gt;&lt;li&gt;Methodology&amp;nbsp;&lt;/li&gt;&lt;li&gt;Design&lt;/li&gt;&lt;li&gt;Implementation&amp;nbsp;&lt;/li&gt;&lt;li&gt;Testing&lt;/li&gt;&lt;li&gt;Maintenance&amp;nbsp;&lt;/li&gt;&lt;li&gt;Conclusions&lt;/li&gt;&lt;li&gt;Recommendations&lt;/li&gt;&lt;/ul&gt;', 0, '2021-11-28', '2021-12-10', 6, '2,3', '2021-11-28 11:59:56');

-- --------------------------------------------------------

--
-- Table structure for table `system_settings`
--

CREATE TABLE `system_settings` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `address` text NOT NULL,
  `cover_img` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `system_settings`
--

INSERT INTO `system_settings` (`id`, `name`, `email`, `contact`, `address`, `cover_img`) VALUES
(1, 'Task Management System', 'info@sample.comm', '+6948 8542 623', '2102  Caldwell Road, Rochester, New York, 14608', '');

-- --------------------------------------------------------

--
-- Table structure for table `task_list`
--

CREATE TABLE `task_list` (
  `id` int(30) NOT NULL,
  `project_id` int(30) NOT NULL,
  `task` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(4) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `task_list`
--

INSERT INTO `task_list` (`id`, `project_id`, `task`, `description`, `status`, `date_created`) VALUES
(1, 0, 'Task 2', '												&lt;table class=&quot;table table-bordered&quot;&gt;&lt;tbody&gt;&lt;tr&gt;&lt;td&gt;&lt;div&gt;&lt;font color=&quot;#202124&quot; face=&quot;arial, sans-serif&quot;&gt;Requirements Analysis&lt;/font&gt;&lt;/div&gt;&lt;/td&gt;&lt;td&gt;&lt;br&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;&lt;br&gt;&lt;/td&gt;&lt;td&gt;&lt;br&gt;&lt;/td&gt;&lt;/tr&gt;&lt;/tbody&gt;&lt;/table&gt;																', 3, '2021-11-27 13:27:30'),
(2, 1, 'Task 1', '								&lt;div style=&quot;text-align: justify;&quot;&gt;&lt;font color=&quot;#000000&quot; face=&quot;Open Sans, Arial, sans-serif&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Logic System Analysis&lt;/span&gt;&lt;/font&gt;&lt;/div&gt;						', 3, '2020-12-03 11:08:58'),
(3, 1, 'Task 2', '																Logic Design.			', 3, '2020-12-03 13:50:15'),
(4, 2, 'Task 1', '&lt;ul class=&quot;i8Z77e&quot; style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; color: rgb(32, 33, 36); font-family: arial, sans-serif;&quot;&gt;&lt;li class=&quot;TrT0Xe&quot; style=&quot;margin: 0px 0px 4px; padding: 0px; list-style-type: disc;&quot;&gt;Ask the right questions to begin the discovery process.&lt;/li&gt;&lt;/ul&gt;', 3, '2020-12-03 13:52:25'),
(5, 2, 'Task 2', '				&lt;ul class=&quot;i8Z77e&quot; style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; color: rgb(32, 33, 36); font-family: arial, sans-serif;&quot;&gt;&lt;li class=&quot;TrT0Xe&quot; style=&quot;margin: 0px 0px 4px; padding: 0px; list-style-type: disc;&quot;&gt;Acquire data.&lt;/li&gt;&lt;/ul&gt;			', 2, '2020-12-03 13:52:40'),
(6, 0, 'Task 1', 'Problem Definition', 3, '2021-11-28 00:50:25'),
(7, 2, 'Task 3', '&lt;span style=&quot;color: rgb(32, 33, 36); font-family: arial, sans-serif;&quot;&gt;Devising and applying models and algorithms to mine the stores of big data&lt;/span&gt;							', 1, '2021-11-28 00:51:47'),
(8, 2, 'Task 4', '&lt;span style=&quot;color: rgb(32, 33, 36); font-family: arial, sans-serif;&quot;&gt;Analyzing the data to identify patterns and trends.&lt;/span&gt;							', 1, '2021-11-28 00:52:12'),
(9, 2, 'Task 5', '&lt;span style=&quot;color: rgb(32, 33, 36); font-family: arial, sans-serif;&quot;&gt;Interpreting the data to discover solutions and opportunities&lt;/span&gt;							', 1, '2021-11-28 00:52:39'),
(10, 1, 'Task 3', 'Logic Design Implementation', 2, '2021-11-28 00:56:27'),
(11, 0, 'Task 3', '								Design						', 3, '2021-11-28 01:01:03'),
(12, 0, 'Task 4', '				Coding			', 3, '2021-11-28 01:01:36'),
(13, 0, 'Task 5', '				Testing			', 3, '2021-11-28 01:01:58'),
(14, 0, 'Task 6', 'Maintenance', 1, '2021-11-28 01:02:25'),
(15, 3, 'Task 1', 'Research on Data Sources&amp;nbsp;', 3, '2021-11-28 01:12:52'),
(16, 3, 'Task 2', '&lt;span style=&quot;color: rgb(32, 33, 36); font-family: arial, sans-serif;&quot;&gt;Cleaning and validating&lt;/span&gt;&lt;span style=&quot;color: rgb(32, 33, 36); font-family: arial, sans-serif;&quot;&gt;&amp;nbsp;the data to ensure accuracy&lt;/span&gt;							', 3, '2021-11-28 01:13:16'),
(17, 3, 'Task 3', '				&lt;span style=&quot;color: rgb(32, 33, 36); font-family: arial, sans-serif;&quot;&gt;Devising and applying models and algorithms to mine the stores of big data&lt;/span&gt;										', 3, '2021-11-28 01:13:47'),
(18, 3, 'Task 4', '				&lt;span style=&quot;color: rgb(32, 33, 36); font-family: arial, sans-serif;&quot;&gt;Analyzing the data to identify patterns and trends&lt;/span&gt;										', 2, '2021-11-28 01:14:13'),
(19, 3, 'Task 5', '&lt;span style=&quot;color: rgb(32, 33, 36); font-family: arial, sans-serif;&quot;&gt;Interpreting the data to discover solutions and opportunities.&lt;/span&gt;							', 1, '2021-11-28 01:14:33'),
(20, 5, 'Task 1', 'Problem Definition.', 3, '2021-11-28 01:40:47'),
(21, 5, 'Task 2', 'Requirements Analysis', 3, '2021-11-28 01:41:15'),
(22, 5, 'Task 3', 'Design', 3, '2021-11-28 01:41:41'),
(23, 5, 'Task 4', 'Coding', 3, '2021-11-28 01:42:01'),
(24, 5, 'Task 5', '								Testing						', 3, '2021-11-28 01:42:22'),
(25, 5, 'Task 6', '				Maintenance			', 2, '2021-11-28 01:42:48'),
(26, 6, 'Task 1', 'Background Information Writing', 3, '2021-11-28 12:00:40'),
(27, 6, 'Task 2', 'Literature Review', 3, '2021-11-28 12:01:03'),
(28, 6, 'Task 3', '				Methodology description			', 3, '2021-11-28 12:01:29'),
(29, 6, 'Task 4', 'Design', 3, '2021-11-28 12:02:05'),
(30, 6, 'Task 5', 'Implementation&amp;nbsp;', 3, '2021-11-28 12:02:26'),
(31, 6, 'Task 6', 'Testing', 2, '2021-11-28 12:03:30'),
(32, 6, 'Task 7', 'Maintenance&amp;nbsp;', 2, '2021-11-28 12:03:57'),
(33, 6, 'Task 8', 'Conclusions&amp;nbsp;', 1, '2021-11-28 12:04:25'),
(34, 6, 'Task 9', 'Recommendations&amp;nbsp;', 1, '2021-11-28 12:05:13');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `firstname` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` text NOT NULL,
  `type` tinyint(4) NOT NULL COMMENT '''1 = admin, 2 = staff''',
  `avatar` text NOT NULL COMMENT 'no-image-available.png',
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password`, `type`, `avatar`, `date_created`) VALUES
(1, 'Administrator', '', 'admin@admin.com', '0192023a7bbd73250516f069df18b500', 1, '1637973420_IMG-20210215-WA0005 (2).jpg', '2021-11-28 00:53:31'),
(2, 'Claire', 'Blake', 'cblake@sample.com', '8ea97be909d87ce423e4c1b558508985', 3, '1638089460_1605855720_avatar.jpg', '2021-11-28 11:51:24'),
(3, 'George', 'Wilson', 'gwilson@sample.com', '854e212802b7ad473ee6e0f46070f522', 3, '1638089460_1606978560_avatar.jpg', '2021-11-28 11:51:45'),
(4, 'Mike', 'Williams', 'mwilliams@sample.com', '3b81498370904b34b780ad4b7c6b6219', 3, '1638089520_1605855780_avatar.jpg', '2021-11-28 11:52:33'),
(5, 'John', 'Smith', 'jsmith@sample.com', 'cd4388c0c62e65ac8b99e3ec49fd9409', 2, '1638089520_1638089460_1605855720_avatar.jpg', '2021-11-28 11:52:12'),
(6, 'Code', 'Developer', 'developer@gmail.com', 'beb28b267de10af13ffea3adb2ef33d9', 2, '1638089640_1605855780_avatar.jpg', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `user_productivity`
--

CREATE TABLE `user_productivity` (
  `id` int(30) NOT NULL,
  `project_id` int(30) NOT NULL,
  `task_id` int(30) NOT NULL,
  `comment` text NOT NULL,
  `subject` varchar(200) NOT NULL,
  `date` date NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `user_id` int(30) NOT NULL,
  `time_rendered` float NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_productivity`
--

INSERT INTO `user_productivity` (`id`, `project_id`, `task_id`, `comment`, `subject`, `date`, `start_time`, `end_time`, `user_id`, `time_rendered`, `date_created`) VALUES
(1, 1, 1, '							&lt;p&gt;Sample Progress&lt;/p&gt;&lt;ul&gt;&lt;li&gt;Test 1&lt;/li&gt;&lt;li&gt;Test 2&lt;/li&gt;&lt;li&gt;Test 3&lt;/li&gt;&lt;/ul&gt;																			', 'Sample Progress', '2020-12-03', '08:00:00', '10:00:00', 1, 2, '2020-12-03 12:13:28'),
(2, 1, 1, '							Sample Progress						', 'Sample Progress 2', '2020-12-03', '13:00:00', '14:00:00', 1, 1, '2020-12-03 13:48:28'),
(3, 1, 2, '							Sample						', 'Test', '2020-12-03', '08:00:00', '09:00:00', 5, 1, '2020-12-03 13:57:22'),
(4, 1, 2, 'asdasdasd', 'Sample Progress', '2020-12-02', '08:00:00', '10:00:00', 2, 2, '2020-12-03 14:36:30'),
(0, 2, 3, 'Sampling purposes', 'UI/UX', '2021-11-27', '03:32:00', '06:35:00', 1, 3.05, '2021-11-27 03:33:18'),
(0, 0, 0, 'Met&amp;nbsp; the Minimum threshold', 'Daily Report', '2021-11-27', '13:35:00', '07:41:00', 1, -5.9, '2021-11-27 13:36:26'),
(0, 0, 0, '							Sampling purposes						', 'UI/UX', '2021-11-27', '03:32:00', '06:35:00', 1, 3.05, '2021-11-27 13:36:55'),
(0, 0, 0, 'sampling', 'Daily Report', '2021-11-27', '01:38:00', '07:44:00', 1, 6.1, '2021-11-27 13:38:23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `project_list`
--
ALTER TABLE `project_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_settings`
--
ALTER TABLE `system_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `task_list`
--
ALTER TABLE `task_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `project_list`
--
ALTER TABLE `project_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `task_list`
--
ALTER TABLE `task_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
