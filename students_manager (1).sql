-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 15, 2024 at 03:59 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `students_manager`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `username` varchar(60) NOT NULL,
  `password` varchar(60) NOT NULL,
  `ip_client` varchar(60) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `last_logout` datetime DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `role_id`, `user_id`, `username`, `password`, `ip_client`, `last_login`, `last_logout`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, 1, 'linhnt', '341712', NULL, NULL, NULL, 1, '2024-03-11 17:59:54', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(10) UNSIGNED NOT NULL,
  `department_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `slug` varchar(150) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `department_id`, `name`, `slug`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, 'javascript', '', 0, '2024-04-13 21:32:06', NULL, '2024-04-13 21:40:44'),
(2, 2, 'javascript', '', 0, '2024-04-13 21:42:01', NULL, NULL),
(3, 7, 'php ', '', 0, '2024-04-13 21:42:21', NULL, NULL),
(4, 3, 'html', '', 0, '2024-04-13 21:42:34', NULL, NULL),
(5, 2, 'programming', '', 1, '2024-04-13 21:55:17', NULL, NULL),
(6, 3, 'toan kinh te', '', 0, '2024-04-13 21:56:57', NULL, NULL),
(7, 3, 'quan tri doanh nghiep', '', 1, '2024-04-13 21:57:23', NULL, NULL),
(8, 8, 'ky thuat dien tu', '', 0, '2024-04-13 22:04:15', NULL, NULL),
(9, 6, 'dich thuat', '', 1, '2024-04-13 22:05:08', NULL, NULL),
(10, 2, 'SDLC', '', 1, '2024-04-15 07:39:11', '2024-04-15 07:42:09', NULL),
(11, 2, 'Bui Hong Linh', '', 1, '2024-04-15 08:08:04', NULL, NULL),
(12, 2, 'KT dien', '', 0, '2024-04-15 08:47:35', NULL, NULL),
(13, 6, 'Bui Hong Linh', '', 0, '2024-04-15 08:56:05', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `slug` varchar(150) NOT NULL,
  `leader` varchar(60) NOT NULL,
  `beginning_date` date DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `logo` varchar(200) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `slug`, `leader`, `beginning_date`, `status`, `logo`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'sas', 'sas', 'sasas', '2024-03-18', 1, NULL, '2024-03-18 13:24:00', NULL, '2024-03-21 14:23:08'),
(2, 'Marketting', 'marketting', 'Do Quoc Binh', '1970-01-01', 1, '1-Overview.jpg', '2024-03-18 14:10:28', '2024-04-15 03:54:54', '2024-04-15 03:54:59'),
(3, 'Quan Tri Kinh Doanh', 'quan-tri-kinh-doanh', 'Pham Duc Viet', '2017-11-12', 1, 'ex-1.png', '2024-03-21 06:22:43', '2024-03-25 17:12:42', '2024-04-15 03:56:48'),
(4, 'Tieng Anh', 'Tieng Anh', 'Ms Thoa', '1970-01-01', 1, NULL, '2024-03-21 06:27:24', NULL, '2024-03-21 14:23:11'),
(5, 'Tieng Anh', 'tieng-anh', 'Co Quyen', '2024-03-08', 1, 'ex-3.png', '2024-03-25 18:09:13', '2024-03-25 18:12:52', NULL),
(6, 'Ngon Ngu Anh', 'ngon-ngu-anh', 'Bui Hong Linh', '2024-04-01', 1, NULL, '2024-04-07 16:44:20', NULL, NULL),
(7, 'kinh te', 'kinh-te', 'Bui Hong Linh', '2024-04-01', 0, NULL, '2024-04-08 04:37:15', NULL, NULL),
(8, 'co khi', 'co-khi', 'Bui Hong Linh', '2024-04-02', 0, NULL, '2024-04-08 05:32:40', NULL, NULL),
(9, 'kinh doanh quoc te', 'kinh-doanh-quoc-te', 'Bui Hong Linh', '1970-01-01', 1, NULL, '2024-04-15 02:57:31', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `department_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `slug` varchar(150) NOT NULL,
  `student_number` int(11) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL COMMENT '''Lop truong''',
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `group_student`
--

CREATE TABLE `group_student` (
  `id` int(10) UNSIGNED NOT NULL,
  `group_id` int(10) UNSIGNED NOT NULL,
  `student_id` int(10) UNSIGNED NOT NULL,
  `group_term_id` int(10) UNSIGNED NOT NULL,
  `course_id` int(10) UNSIGNED NOT NULL,
  `teacher_id` int(10) UNSIGNED NOT NULL,
  `absent` tinyint(4) NOT NULL DEFAULT 1,
  `present` tinyint(4) NOT NULL DEFAULT 0,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `group_term`
--

CREATE TABLE `group_term` (
  `id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `group_id` int(10) UNSIGNED NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(60) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `description` varchar(200) NOT NULL,
  `status` tinyint(4) DEFAULT 1,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `deleted_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `slug`, `description`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'admin', 'admin', 'admin', 1, 2024, NULL, NULL),
(2, 'student', 'student', 'student', 1, 2024, NULL, NULL),
(3, 'teacher', 'teacher', 'teacher', 1, 2024, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `terms`
--

CREATE TABLE `terms` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(60) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `year` int(11) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `extra_code` varchar(100) NOT NULL,
  `first_name` varchar(60) NOT NULL,
  `last_name` varchar(60) NOT NULL,
  `full_name` varchar(60) NOT NULL,
  `email` varchar(60) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` varchar(200) NOT NULL,
  `birthday` date NOT NULL,
  `gender` tinyint(4) NOT NULL DEFAULT 1 COMMENT '''1-nam;2-nu;3-khong xac dinh',
  `avatar` varchar(150) DEFAULT NULL,
  `biography` text DEFAULT NULL,
  `information` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `extra_code`, `first_name`, `last_name`, `full_name`, `email`, `phone`, `address`, `birthday`, `gender`, `avatar`, `biography`, `information`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'BH00999', 'Duc Thang', 'Do', 'Do Duc Thang', 'thangdd@fe.edu.vn', '093232390', 'Ha Noi', '2024-03-11', 1, NULL, NULL, NULL, 1, '2024-03-11 17:55:57', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id` (`role_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `department_id` (`department_id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `department_id` (`department_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `group_student`
--
ALTER TABLE `group_student`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_id` (`course_id`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `group_term_id` (`group_term_id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `group_student_ibfk_5` (`teacher_id`);

--
-- Indexes for table `group_term`
--
ALTER TABLE `group_term`
  ADD KEY `term_id` (`term_id`),
  ADD KEY `group_id` (`group_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `terms`
--
ALTER TABLE `terms`
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
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `group_student`
--
ALTER TABLE `group_student`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `terms`
--
ALTER TABLE `terms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
