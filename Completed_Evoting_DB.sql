-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 21, 2025 at 10:16 AM
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
-- Database: `evoting`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `image` varchar(255) DEFAULT NULL,
  `role` varchar(20) DEFAULT 'admin',
  `last_login` timestamp NULL DEFAULT NULL,
  `reset_token` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `created_at`, `image`, `role`, `last_login`, `reset_token`) VALUES
(2, 'vasanth s', 'restoreking26@gmail.com', '$2a$10$WOFP9kdR0MFK941ZDTfrTu.KCG9duJzyjVhRvtresmOebb7j23Y0y', '2025-10-03 15:57:32', NULL, 'admin', NULL, NULL),
(3, 'ak', 'ak@gmail.com', '$2a$10$N0DGYVpaMf7QT6Hv5CwLne2FCsFTxkAOm5WYw.F3yMQXvT.Sg72Xe', '2025-10-05 04:38:13', NULL, 'admin', NULL, NULL),
(4, 'harish', 'harish@gmail.com', '$2a$10$3EjWn4Hy1o4zDADduOYKbuGfRz83ey9Wz0s5XNXEaYOvZLw5en6jW', '2025-10-06 08:11:20', NULL, 'admin', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `audit_logs`
--

CREATE TABLE `audit_logs` (
  `id` int(11) NOT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `user_identifier` varchar(100) DEFAULT NULL,
  `action` varchar(255) NOT NULL,
  `details` text DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `actor_id` int(11) DEFAULT NULL,
  `admin_email` varchar(255) DEFAULT NULL,
  `election_id` char(36) DEFAULT NULL,
  `actor_role` varchar(20) DEFAULT NULL,
  `ip` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `audit_logs`
--

INSERT INTO `audit_logs` (`id`, `admin_id`, `user_identifier`, `action`, `details`, `ip_address`, `user_agent`, `created_at`, `actor_id`, `admin_email`, `election_id`, `actor_role`, `ip`) VALUES
(1, NULL, 'Unknown Admin', 'POST /api/admin/login', '{\"email\":\"admin@gmail.com\",\"password\":\"123\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 Edg/140.0.0.0', '2025-10-03 15:08:29', NULL, NULL, NULL, NULL, NULL),
(2, NULL, 'Unknown Admin', 'POST /api/admin/login', '{\"email\":\"adminn@gmail.com\",\"password\":\"123\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 Edg/140.0.0.0', '2025-10-03 15:31:59', NULL, NULL, NULL, NULL, NULL),
(3, NULL, 'Unknown Admin', 'POST /api/admin/login', '{\"email\":\"adminn@gmail.com\",\"password\":\"123\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 Edg/140.0.0.0', '2025-10-03 15:32:01', NULL, NULL, NULL, NULL, NULL),
(4, NULL, 'Unknown Admin', 'POST /api/admin/login', '{\"email\":\"adminn@gmail.com\",\"password\":\"12345\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 Edg/140.0.0.0', '2025-10-03 15:44:27', NULL, NULL, NULL, NULL, NULL),
(5, NULL, 'Unknown Admin', 'POST /api/admin/login', '{\"email\":\"adminn@gmail.com\",\"password\":\"12345\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 Edg/140.0.0.0', '2025-10-03 15:51:16', NULL, NULL, NULL, NULL, NULL),
(6, NULL, 'Unknown Admin', 'POST /api/admin/register', '{\"name\":\"vasanth s\",\"email\":\"restoreking26@gmail.com\",\"password\":\"123456\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 Edg/140.0.0.0', '2025-10-03 15:57:32', NULL, NULL, NULL, NULL, NULL),
(7, NULL, 'restoreking26@gmail.com', 'register', 'New admin registered: vasanth s', 'Manual', 'System', '2025-10-03 15:57:32', NULL, NULL, NULL, NULL, NULL),
(8, NULL, 'Unknown Admin', 'POST /api/admin/login', '{\"email\":\"restoreking26@gmail.com\",\"password\":\"123456\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 Edg/140.0.0.0', '2025-10-03 15:57:40', NULL, NULL, NULL, NULL, NULL),
(9, NULL, 'restoreking26@gmail.com', 'login', 'Admin vasanth s logged in', 'Manual', 'System', '2025-10-03 15:57:40', NULL, NULL, NULL, NULL, NULL),
(10, NULL, 'Unknown Admin', 'POST /api/admin/verify-student', '{\"regno\":\"123\",\"department\":\"MCA\",\"year\":\"2\",\"dob\":\"2004-03-26\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 Edg/140.0.0.0', '2025-10-03 16:07:21', NULL, NULL, NULL, NULL, NULL),
(11, NULL, 'Unknown Admin', 'POST /api/admin/verify-student', '{\"regno\":\"123\",\"department\":\"MCA\",\"year\":\"2\",\"dob\":\"2004-03-26\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 Edg/140.0.0.0', '2025-10-03 16:24:09', NULL, NULL, NULL, NULL, NULL),
(12, NULL, 'Unknown Admin', 'POST /api/admin/login', '{\"email\":\"restoreking26@gmail.com\",\"password\":\"12345\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-05 04:37:49', NULL, NULL, NULL, NULL, NULL),
(13, NULL, 'Unknown Admin', 'POST /api/admin/register', '{\"name\":\"ak\",\"email\":\"ak@gmail.com\",\"password\":\"123456\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-05 04:38:13', NULL, NULL, NULL, NULL, NULL),
(14, NULL, 'ak@gmail.com', 'register', 'New admin registered: ak', 'Manual', 'System', '2025-10-05 04:38:13', NULL, NULL, NULL, NULL, NULL),
(15, NULL, 'Unknown Admin', 'POST /api/admin/login', '{\"email\":\"ak@gmail.com\",\"password\":\"123456\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-05 04:38:25', NULL, NULL, NULL, NULL, NULL),
(16, NULL, 'ak@gmail.com', 'login', 'Admin ak logged in', 'Manual', 'System', '2025-10-05 04:38:25', NULL, NULL, NULL, NULL, NULL),
(17, NULL, 'Unknown Admin', 'POST /api/admin/login', '{\"email\":\"ak@gmail.com\",\"password\":\"123456\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-05 06:07:58', NULL, NULL, NULL, NULL, NULL),
(18, NULL, 'ak@gmail.com', 'login', 'Admin ak logged in', 'Manual', 'System', '2025-10-05 06:07:58', NULL, NULL, NULL, NULL, NULL),
(19, NULL, 'Unknown Admin', 'POST /api/admin/login', '{\"email\":\"ak@gmail.com\",\"password\":\"123456\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-05 07:15:54', NULL, NULL, NULL, NULL, NULL),
(20, NULL, 'ak@gmail.com', 'login', 'Admin ak logged in', 'Manual', 'System', '2025-10-05 07:15:54', NULL, NULL, NULL, NULL, NULL),
(21, NULL, 'Unknown Admin', 'POST /api/admin/login', '{\"email\":\"ak@gmail.com\",\"password\":\"123456\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-05 07:44:13', NULL, NULL, NULL, NULL, NULL),
(22, NULL, 'ak@gmail.com', 'login', 'Admin ak logged in', 'Manual', 'System', '2025-10-05 07:44:13', NULL, NULL, NULL, NULL, NULL),
(23, NULL, 'Unknown Admin', 'POST /api/admin/login', '{\"email\":\"restoreking26@gmail.com\",\"password\":\"123456\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-05 08:02:19', NULL, NULL, NULL, NULL, NULL),
(24, NULL, 'restoreking26@gmail.com', 'login', 'Admin vasanth s logged in', 'Manual', 'System', '2025-10-05 08:02:19', NULL, NULL, NULL, NULL, NULL),
(25, NULL, 'Unknown Admin', 'POST /api/elections/add', '{\"title\":\"sedrftvtgbhjn\",\"description\":\"hcfgvbhjnmk\",\"start_date\":\"2025-02-23T12:12\",\"end_date\":\"2025-02-24T12:12\",\"status\":\"running\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-05 08:08:57', NULL, NULL, NULL, NULL, NULL),
(26, NULL, 'Unknown Admin', 'POST /api/admin/login', '{\"email\":\"admin@gmail.com\",\"password\":\"123456\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '2025-10-06 08:10:22', NULL, NULL, NULL, NULL, NULL),
(27, NULL, 'Unknown Admin', 'POST /api/admin/register', '{\"name\":\"harish\",\"email\":\"harish@gmail.com\",\"password\":\"123456+\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '2025-10-06 08:11:20', NULL, NULL, NULL, NULL, NULL),
(28, NULL, 'harish@gmail.com', 'register', 'New admin registered: harish', 'Manual', 'System', '2025-10-06 08:11:20', NULL, NULL, NULL, NULL, NULL),
(29, NULL, 'Unknown Admin', 'POST /api/admin/login', '{\"email\":\"harish@gmail.com\",\"password\":\"123456\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '2025-10-06 08:11:34', NULL, NULL, NULL, NULL, NULL),
(30, NULL, 'Unknown Admin', 'POST /api/admin/login', '{\"email\":\"harish@gmail.com\",\"password\":\"123456\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '2025-10-06 08:12:16', NULL, NULL, NULL, NULL, NULL),
(31, NULL, 'Unknown Admin', 'POST /api/admin/login', '{\"email\":\"restoreking26@gmail.com\",\"password\":\"123456\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '2025-10-06 08:12:48', NULL, NULL, NULL, NULL, NULL),
(32, NULL, 'restoreking26@gmail.com', 'login', 'Admin vasanth s logged in', 'Manual', 'System', '2025-10-06 08:12:48', NULL, NULL, NULL, NULL, NULL),
(33, NULL, 'Unknown Admin', 'POST /api/admin/login', '{\"email\":\"harish@gmail.com\",\"password\":\"123456\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '2025-10-06 08:16:45', NULL, NULL, NULL, NULL, NULL),
(34, NULL, 'Unknown Admin', 'POST /api/admin/login', '{\"email\":\"restoreking26@gmail.com\",\"password\":\"123456\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '2025-10-06 08:17:07', NULL, NULL, NULL, NULL, NULL),
(35, NULL, 'restoreking26@gmail.com', 'login', 'Admin vasanth s logged in', 'Manual', 'System', '2025-10-06 08:17:07', NULL, NULL, NULL, NULL, NULL),
(36, NULL, 'Unknown Admin', 'POST /api/admin/login', '{\"email\":\"restoreking26@gmail.com\",\"password\":\"123456\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '2025-10-06 08:42:22', NULL, NULL, NULL, NULL, NULL),
(37, NULL, 'restoreking26@gmail.com', 'login', 'Admin vasanth s logged in', 'Manual', 'System', '2025-10-06 08:42:23', NULL, NULL, NULL, NULL, NULL),
(38, NULL, 'Unknown Admin', 'POST /api/admin/login', '{\"email\":\"restoreking26@gmail.com\",\"password\":\"123456\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '2025-10-06 08:54:53', NULL, NULL, NULL, NULL, NULL),
(39, NULL, 'restoreking26@gmail.com', 'login', 'Admin vasanth s logged in', 'Manual', 'System', '2025-10-06 08:54:53', NULL, NULL, NULL, NULL, NULL),
(40, NULL, 'restoreking26@gmail.com', 'view-dashboard-stats', 'Admin viewed dashboard statistics.', 'Manual', 'System', '2025-10-06 09:10:53', NULL, NULL, NULL, NULL, NULL),
(41, NULL, 'restoreking26@gmail.com', 'view-dashboard-stats', 'Admin viewed dashboard statistics.', 'Manual', 'System', '2025-10-06 09:10:53', NULL, NULL, NULL, NULL, NULL),
(42, NULL, 'restoreking26@gmail.com', 'view-dashboard-stats', 'Admin viewed dashboard statistics.', 'Manual', 'System', '2025-10-06 09:10:58', NULL, NULL, NULL, NULL, NULL),
(43, NULL, 'restoreking26@gmail.com', 'view-dashboard-stats', 'Admin viewed dashboard statistics.', 'Manual', 'System', '2025-10-06 09:10:58', NULL, NULL, NULL, NULL, NULL),
(44, NULL, 'restoreking26@gmail.com', 'view-dashboard-stats', 'Admin viewed dashboard statistics.', 'Manual', 'System', '2025-10-06 09:11:12', NULL, NULL, NULL, NULL, NULL),
(45, NULL, 'restoreking26@gmail.com', 'view-dashboard-stats', 'Admin viewed dashboard statistics.', 'Manual', 'System', '2025-10-06 09:11:12', NULL, NULL, NULL, NULL, NULL),
(46, NULL, 'restoreking26@gmail.com', 'view-dashboard-stats', 'Admin viewed dashboard statistics.', 'Manual', 'System', '2025-10-06 09:12:42', NULL, NULL, NULL, NULL, NULL),
(47, NULL, 'restoreking26@gmail.com', 'view-dashboard-stats', 'Admin viewed dashboard statistics.', 'Manual', 'System', '2025-10-06 09:12:42', NULL, NULL, NULL, NULL, NULL),
(48, NULL, 'restoreking26@gmail.com', 'view-dashboard-stats', 'Admin viewed dashboard statistics.', 'Manual', 'System', '2025-10-06 09:12:48', NULL, NULL, NULL, NULL, NULL),
(49, NULL, 'restoreking26@gmail.com', 'view-dashboard-stats', 'Admin viewed dashboard statistics.', 'Manual', 'System', '2025-10-06 09:12:48', NULL, NULL, NULL, NULL, NULL),
(50, NULL, 'restoreking26@gmail.com', 'view-dashboard-stats', 'Admin viewed dashboard statistics.', 'Manual', 'System', '2025-10-06 09:13:50', NULL, NULL, NULL, NULL, NULL),
(51, NULL, 'restoreking26@gmail.com', 'view-dashboard-stats', 'Admin viewed dashboard statistics.', 'Manual', 'System', '2025-10-06 09:13:50', NULL, NULL, NULL, NULL, NULL),
(52, NULL, 'restoreking26@gmail.com', 'view-dashboard-stats', 'Admin viewed dashboard statistics.', 'Manual', 'System', '2025-10-06 09:17:20', NULL, NULL, NULL, NULL, NULL),
(53, NULL, 'restoreking26@gmail.com', 'view-dashboard-stats', 'Admin viewed dashboard statistics.', 'Manual', 'System', '2025-10-06 09:17:20', NULL, NULL, NULL, NULL, NULL),
(54, NULL, 'restoreking26@gmail.com', 'view-dashboard-stats', 'Admin viewed dashboard statistics.', 'Manual', 'System', '2025-10-06 09:19:28', NULL, NULL, NULL, NULL, NULL),
(55, NULL, 'restoreking26@gmail.com', 'view-dashboard-stats', 'Admin viewed dashboard statistics.', 'Manual', 'System', '2025-10-06 09:19:31', NULL, NULL, NULL, NULL, NULL),
(56, NULL, 'restoreking26@gmail.com', 'view-dashboard-stats', 'Admin viewed dashboard statistics.', 'Manual', 'System', '2025-10-06 09:19:31', NULL, NULL, NULL, NULL, NULL),
(57, NULL, 'restoreking26@gmail.com', 'view-dashboard-stats', 'Admin viewed dashboard statistics.', 'Manual', 'System', '2025-10-06 09:22:50', NULL, NULL, NULL, NULL, NULL),
(58, NULL, 'restoreking26@gmail.com', 'view-dashboard-stats', 'Admin viewed dashboard statistics.', 'Manual', 'System', '2025-10-06 09:22:55', NULL, NULL, NULL, NULL, NULL),
(59, NULL, 'restoreking26@gmail.com', 'view-dashboard-stats', 'Admin viewed dashboard statistics.', 'Manual', 'System', '2025-10-06 09:24:45', NULL, NULL, NULL, NULL, NULL),
(60, NULL, 'restoreking26@gmail.com', 'view-dashboard-stats', 'Admin viewed dashboard statistics.', 'Manual', 'System', '2025-10-06 09:28:38', NULL, NULL, NULL, NULL, NULL),
(61, NULL, 'restoreking26@gmail.com', 'view-dashboard-stats', 'Admin viewed dashboard statistics.', 'Manual', 'System', '2025-10-06 09:28:38', NULL, NULL, NULL, NULL, NULL),
(62, NULL, 'restoreking26@gmail.com', 'view-dashboard-stats', 'Admin viewed dashboard statistics.', 'Manual', 'System', '2025-10-06 09:28:42', NULL, NULL, NULL, NULL, NULL),
(63, NULL, 'restoreking26@gmail.com', 'view-dashboard-stats', 'Admin viewed dashboard statistics.', 'Manual', 'System', '2025-10-06 09:31:04', NULL, NULL, NULL, NULL, NULL),
(64, NULL, 'restoreking26@gmail.com', 'view-dashboard-stats', 'Admin viewed dashboard statistics.', 'Manual', 'System', '2025-10-06 09:31:04', NULL, NULL, NULL, NULL, NULL),
(65, NULL, 'restoreking26@gmail.com', 'view-dashboard-stats', 'Admin viewed dashboard statistics.', 'Manual', 'System', '2025-10-06 09:31:53', NULL, NULL, NULL, NULL, NULL),
(66, NULL, 'restoreking26@gmail.com', 'view-dashboard-stats', 'Admin viewed dashboard statistics.', 'Manual', 'System', '2025-10-06 09:45:08', NULL, NULL, NULL, NULL, NULL),
(67, NULL, 'restoreking26@gmail.com', 'admin-add-voter', 'Admin added voter: vasanth (C21UG186)', 'Manual', 'System', '2025-10-06 09:45:13', NULL, NULL, NULL, NULL, NULL),
(68, NULL, 'restoreking26@gmail.com', 'view-dashboard-stats', 'Admin viewed dashboard statistics.', 'Manual', 'System', '2025-10-06 09:45:13', NULL, NULL, NULL, NULL, NULL),
(69, NULL, 'restoreking26@gmail.com', 'view-dashboard-stats', 'Admin viewed dashboard statistics.', 'Manual', 'System', '2025-10-06 09:46:46', NULL, NULL, NULL, NULL, NULL),
(70, NULL, 'restoreking26@gmail.com', 'view-dashboard-stats', 'Admin viewed dashboard statistics.', 'Manual', 'System', '2025-10-06 09:46:46', NULL, NULL, NULL, NULL, NULL),
(71, NULL, 'restoreking26@gmail.com', 'view-dashboard-stats', 'Admin viewed dashboard statistics.', 'Manual', 'System', '2025-10-06 09:52:06', NULL, NULL, NULL, NULL, NULL),
(72, NULL, 'restoreking26@gmail.com', 'view-dashboard-stats', 'Admin viewed dashboard statistics.', 'Manual', 'System', '2025-10-06 09:52:11', NULL, NULL, NULL, NULL, NULL),
(73, NULL, 'restoreking26@gmail.com', 'admin-add-voter', 'Admin added voter: ajith (C21UG187)', 'Manual', 'System', '2025-10-06 09:54:21', NULL, NULL, NULL, NULL, NULL),
(74, NULL, 'restoreking26@gmail.com', 'view-dashboard-stats', 'Admin viewed dashboard statistics.', 'Manual', 'System', '2025-10-06 09:54:21', NULL, NULL, NULL, NULL, NULL),
(75, NULL, 'Unknown Admin', 'POST /api/admin/login', '{\"email\":\"restoeking26@gmail.com\",\"password\":\"123456\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '2025-10-06 09:56:52', NULL, NULL, NULL, NULL, NULL),
(76, NULL, 'Unknown Admin', 'POST /api/admin/login', '{\"email\":\"restoeking26@gmail.com\",\"password\":\"123456\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '2025-10-06 09:57:01', NULL, NULL, NULL, NULL, NULL),
(77, NULL, 'Unknown Admin', 'POST /api/admin/login', '{\"email\":\"restoreking26@gmail.com\",\"password\":\"123456\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '2025-10-06 09:57:15', NULL, NULL, NULL, NULL, NULL),
(78, NULL, 'restoreking26@gmail.com', 'login', 'Admin vasanth s logged in', 'Manual', 'System', '2025-10-06 09:57:15', NULL, NULL, NULL, NULL, NULL),
(79, NULL, 'restoreking26@gmail.com', 'view-dashboard-stats', 'Admin viewed dashboard statistics.', 'Manual', 'System', '2025-10-06 09:57:16', NULL, NULL, NULL, NULL, NULL),
(80, NULL, 'restoreking26@gmail.com', 'view-dashboard-stats', 'Admin viewed dashboard statistics.', 'Manual', 'System', '2025-10-06 09:57:16', NULL, NULL, NULL, NULL, NULL),
(81, NULL, 'restoreking26@gmail.com', 'view-dashboard-stats', 'Admin viewed dashboard statistics.', 'Manual', 'System', '2025-10-06 09:57:25', NULL, NULL, NULL, NULL, NULL),
(82, NULL, 'restoreking26@gmail.com', 'view-dashboard-stats', 'Admin viewed dashboard statistics.', 'Manual', 'System', '2025-10-06 09:59:30', NULL, NULL, NULL, NULL, NULL),
(83, NULL, 'restoreking26@gmail.com', 'view-dashboard-stats', 'Admin viewed dashboard statistics.', 'Manual', 'System', '2025-10-06 09:59:35', NULL, NULL, NULL, NULL, NULL),
(84, NULL, 'restoreking26@gmail.com', 'view-dashboard-stats', 'Admin viewed dashboard statistics.', 'Manual', 'System', '2025-10-06 09:59:35', NULL, NULL, NULL, NULL, NULL),
(85, NULL, 'restoreking26@gmail.com', 'view-dashboard-stats', 'Admin viewed dashboard statistics.', 'Manual', 'System', '2025-10-06 09:59:40', NULL, NULL, NULL, NULL, NULL),
(86, NULL, 'restoreking26@gmail.com', 'view-dashboard-stats', 'Admin viewed dashboard statistics.', 'Manual', 'System', '2025-10-06 10:00:20', NULL, NULL, NULL, NULL, NULL),
(87, NULL, 'restoreking26@gmail.com', 'view-dashboard-stats', 'Admin viewed dashboard statistics.', 'Manual', 'System', '2025-10-06 10:01:31', NULL, NULL, NULL, NULL, NULL),
(88, NULL, 'restoreking26@gmail.com', 'view-dashboard-stats', 'Admin viewed dashboard statistics.', 'Manual', 'System', '2025-10-06 10:01:35', NULL, NULL, NULL, NULL, NULL),
(89, NULL, 'restoreking26@gmail.com', 'view-dashboard-stats', 'Admin viewed dashboard statistics.', 'Manual', 'System', '2025-10-06 10:01:35', NULL, NULL, NULL, NULL, NULL),
(90, NULL, 'restoreking26@gmail.com', 'view-dashboard-stats', 'Admin viewed dashboard statistics.', 'Manual', 'System', '2025-10-06 10:02:52', NULL, NULL, NULL, NULL, NULL),
(91, NULL, 'restoreking26@gmail.com', 'view-dashboard-stats', 'Admin viewed dashboard statistics.', 'Manual', 'System', '2025-10-06 10:05:11', NULL, NULL, NULL, NULL, NULL),
(92, NULL, 'restoreking26@gmail.com', 'view-dashboard-stats', 'Admin viewed dashboard statistics.', 'Manual', 'System', '2025-10-06 10:05:11', NULL, NULL, NULL, NULL, NULL),
(93, NULL, 'restoreking26@gmail.com', 'view-dashboard-stats', 'Admin viewed dashboard statistics.', 'Manual', 'System', '2025-10-06 10:05:15', NULL, NULL, NULL, NULL, NULL),
(94, NULL, 'restoreking26@gmail.com', 'view-dashboard-stats', 'Admin viewed dashboard statistics.', 'Manual', 'System', '2025-10-06 10:05:15', NULL, NULL, NULL, NULL, NULL),
(95, NULL, 'restoreking26@gmail.com', 'csv-upload', 'CSV Upload: 3 successful, 0 failed.', 'Manual', 'System', '2025-10-06 10:05:39', NULL, NULL, NULL, NULL, NULL),
(96, NULL, 'restoreking26@gmail.com', 'view-dashboard-stats', 'Admin viewed dashboard statistics.', 'Manual', 'System', '2025-10-06 10:05:39', NULL, NULL, NULL, NULL, NULL),
(97, NULL, 'restoreking26@gmail.com', 'csv-upload', 'CSV Upload: 0 successful, 3 failed.', 'Manual', 'System', '2025-10-06 10:05:52', NULL, NULL, NULL, NULL, NULL),
(98, NULL, 'restoreking26@gmail.com', 'view-dashboard-stats', 'Admin viewed dashboard statistics.', 'Manual', 'System', '2025-10-06 10:05:52', NULL, NULL, NULL, NULL, NULL),
(99, NULL, 'restoreking26@gmail.com', 'view-dashboard-stats', 'Admin viewed dashboard statistics.', 'Manual', 'System', '2025-10-06 10:07:32', NULL, NULL, NULL, NULL, NULL),
(100, NULL, 'restoreking26@gmail.com', 'view-dashboard-stats', 'Admin viewed dashboard statistics.', 'Manual', 'System', '2025-10-06 10:07:32', NULL, NULL, NULL, NULL, NULL),
(101, NULL, 'restoreking26@gmail.com', 'view-dashboard-stats', 'Admin viewed dashboard statistics.', 'Manual', 'System', '2025-10-06 10:07:58', NULL, NULL, NULL, NULL, NULL),
(102, NULL, 'restoreking26@gmail.com', 'view-dashboard-stats', 'Admin viewed dashboard statistics.', 'Manual', 'System', '2025-10-06 10:07:58', NULL, NULL, NULL, NULL, NULL),
(103, NULL, 'restoreking26@gmail.com', 'view-dashboard-stats', 'Admin viewed dashboard statistics.', 'Manual', 'System', '2025-10-06 10:08:59', NULL, NULL, NULL, NULL, NULL),
(104, NULL, 'restoreking26@gmail.com', 'view-dashboard-stats', 'Admin viewed dashboard statistics.', 'Manual', 'System', '2025-10-06 10:08:59', NULL, NULL, NULL, NULL, NULL),
(105, NULL, 'restoreking26@gmail.com', 'admin-add-voter', 'Admin added voter: ak (123cs)', 'Manual', 'System', '2025-10-06 10:09:50', NULL, NULL, NULL, NULL, NULL),
(106, NULL, 'restoreking26@gmail.com', 'view-dashboard-stats', 'Admin viewed dashboard statistics.', 'Manual', 'System', '2025-10-06 10:09:50', NULL, NULL, NULL, NULL, NULL),
(107, NULL, 'Unknown Admin', 'POST /api/admin/login', '{\"email\":\"restoreking26@gmail.com\",\"password\":\"1233456\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '2025-10-06 10:17:05', NULL, NULL, NULL, NULL, NULL),
(108, NULL, 'Unknown Admin', 'POST /api/admin/login', '{\"email\":\"restoreking26@gmail.com\",\"password\":\"123456\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '2025-10-06 10:17:27', NULL, NULL, NULL, NULL, NULL),
(109, NULL, 'restoreking26@gmail.com', 'login', 'Admin vasanth s logged in', 'Manual', 'System', '2025-10-06 10:17:27', NULL, NULL, NULL, NULL, NULL),
(110, NULL, 'restoreking26@gmail.com', 'view-dashboard-stats', 'Admin viewed dashboard statistics.', 'Manual', 'System', '2025-10-06 10:17:28', NULL, NULL, NULL, NULL, NULL),
(111, NULL, 'restoreking26@gmail.com', 'view-dashboard-stats', 'Admin viewed dashboard statistics.', 'Manual', 'System', '2025-10-06 10:17:28', NULL, NULL, NULL, NULL, NULL),
(112, NULL, 'restoreking26@gmail.com', 'view-dashboard-stats', 'Admin viewed dashboard statistics.', 'Manual', 'System', '2025-10-06 10:29:40', NULL, NULL, NULL, NULL, NULL),
(113, NULL, 'restoreking26@gmail.com', 'view-dashboard-stats', 'Admin viewed dashboard statistics.', 'Manual', 'System', '2025-10-06 10:29:40', NULL, NULL, NULL, NULL, NULL),
(114, NULL, 'Unknown Admin', 'POST /api/admin/login', '{\"email\":\"restoreking26@gmail.com\",\"password\":\"123456\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-06 18:07:25', NULL, NULL, NULL, NULL, NULL),
(115, NULL, 'restoreking26@gmail.com', 'login', 'Admin vasanth s logged in', 'Manual', 'System', '2025-10-06 18:07:25', NULL, NULL, NULL, NULL, NULL),
(116, NULL, 'restoreking26@gmail.com', 'view-dashboard-stats', 'Admin viewed dashboard statistics.', 'Manual', 'System', '2025-10-06 18:07:26', NULL, NULL, NULL, NULL, NULL),
(117, NULL, 'restoreking26@gmail.com', 'view-dashboard-stats', 'Admin viewed dashboard statistics.', 'Manual', 'System', '2025-10-06 18:07:26', NULL, NULL, NULL, NULL, NULL),
(118, NULL, 'restoreking26@gmail.com', 'view-dashboard-stats', 'Admin viewed dashboard statistics.', 'Manual', 'System', '2025-10-06 18:07:36', NULL, NULL, NULL, NULL, NULL),
(119, NULL, 'restoreking26@gmail.com', 'view-dashboard-stats', 'Admin viewed dashboard statistics.', 'Manual', 'System', '2025-10-06 18:07:36', NULL, NULL, NULL, NULL, NULL),
(120, NULL, 'restoreking26@gmail.com', 'view-dashboard-stats', 'Admin viewed dashboard statistics.', 'Manual', 'System', '2025-10-06 18:13:35', NULL, NULL, NULL, NULL, NULL),
(121, NULL, 'restoreking26@gmail.com', 'view-dashboard-stats', 'Admin viewed dashboard statistics.', 'Manual', 'System', '2025-10-06 18:13:35', NULL, NULL, NULL, NULL, NULL),
(122, NULL, 'restoreking26@gmail.com', 'bulk-voter-upload', '0 inserted | 2 errors', 'Manual', 'System', '2025-10-06 18:26:05', NULL, NULL, NULL, NULL, NULL),
(123, NULL, 'restoreking26@gmail.com', 'view-dashboard-stats', 'Admin viewed dashboard statistics.', 'Manual', 'System', '2025-10-06 18:26:05', NULL, NULL, NULL, NULL, NULL),
(124, NULL, 'restoreking26@gmail.com', 'view-dashboard-stats', 'Admin viewed dashboard statistics.', 'Manual', 'System', '2025-10-06 18:32:14', NULL, NULL, NULL, NULL, NULL),
(125, NULL, 'restoreking26@gmail.com', 'view-dashboard-stats', 'Admin viewed dashboard statistics.', 'Manual', 'System', '2025-10-06 18:32:14', NULL, NULL, NULL, NULL, NULL),
(126, NULL, 'restoreking26@gmail.com', 'view-dashboard-stats', 'Admin viewed dashboard statistics.', 'Manual', 'System', '2025-10-06 18:37:45', NULL, NULL, NULL, NULL, NULL),
(127, NULL, 'restoreking26@gmail.com', 'view-dashboard-stats', 'Admin viewed dashboard statistics.', 'Manual', 'System', '2025-10-06 18:37:45', NULL, NULL, NULL, NULL, NULL),
(128, NULL, 'restoreking26@gmail.com', 'view-dashboard-stats', 'Admin viewed dashboard statistics.', 'Manual', 'System', '2025-10-06 18:47:28', NULL, NULL, NULL, NULL, NULL),
(129, NULL, 'restoreking26@gmail.com', 'view-dashboard-stats', 'Admin viewed dashboard statistics.', 'Manual', 'System', '2025-10-06 18:47:28', NULL, NULL, NULL, NULL, NULL),
(130, NULL, 'restoreking26@gmail.com', 'view-dashboard-stats', 'Admin viewed dashboard statistics.', 'Manual', 'System', '2025-10-06 18:47:33', NULL, NULL, NULL, NULL, NULL),
(131, NULL, 'restoreking26@gmail.com', 'view-dashboard-stats', 'Admin viewed dashboard statistics.', 'Manual', 'System', '2025-10-06 18:47:33', NULL, NULL, NULL, NULL, NULL),
(132, NULL, 'restoreking26@gmail.com', 'view-dashboard-stats', 'Admin viewed dashboard statistics.', 'Manual', 'System', '2025-10-06 18:47:34', NULL, NULL, NULL, NULL, NULL),
(133, NULL, 'restoreking26@gmail.com', 'view-dashboard-stats', 'Admin viewed dashboard statistics.', 'Manual', 'System', '2025-10-06 18:47:34', NULL, NULL, NULL, NULL, NULL),
(134, NULL, 'restoreking26@gmail.com', 'view-dashboard-stats', 'Admin viewed dashboard statistics.', 'Manual', 'System', '2025-10-06 18:47:34', NULL, NULL, NULL, NULL, NULL),
(135, NULL, 'restoreking26@gmail.com', 'view-dashboard-stats', 'Admin viewed dashboard statistics.', 'Manual', 'System', '2025-10-06 18:47:34', NULL, NULL, NULL, NULL, NULL),
(136, NULL, 'restoreking26@gmail.com', 'view-dashboard-stats', 'Admin viewed dashboard statistics.', 'Manual', 'System', '2025-10-06 18:47:34', NULL, NULL, NULL, NULL, NULL),
(137, NULL, 'restoreking26@gmail.com', 'view-dashboard-stats', 'Admin viewed dashboard statistics.', 'Manual', 'System', '2025-10-06 18:47:34', NULL, NULL, NULL, NULL, NULL),
(138, NULL, 'restoreking26@gmail.com', 'view-dashboard-stats', 'Admin viewed dashboard statistics.', 'Manual', 'System', '2025-10-06 18:47:34', NULL, NULL, NULL, NULL, NULL),
(139, NULL, 'restoreking26@gmail.com', 'view-dashboard-stats', 'Admin viewed dashboard statistics.', 'Manual', 'System', '2025-10-06 18:47:34', NULL, NULL, NULL, NULL, NULL),
(140, NULL, 'restoreking26@gmail.com', 'view-dashboard-stats', 'Admin viewed dashboard statistics.', 'Manual', 'System', '2025-10-06 18:47:34', NULL, NULL, NULL, NULL, NULL),
(141, NULL, 'restoreking26@gmail.com', 'view-dashboard-stats', 'Admin viewed dashboard statistics.', 'Manual', 'System', '2025-10-06 18:47:34', NULL, NULL, NULL, NULL, NULL),
(142, NULL, 'restoreking26@gmail.com', 'admin-add-voter', 'Pre-registered voter: new (123)', 'Manual', 'System', '2025-10-06 18:47:42', NULL, NULL, NULL, NULL, NULL),
(143, NULL, 'restoreking26@gmail.com', 'view-dashboard-stats', 'Admin viewed dashboard statistics.', 'Manual', 'System', '2025-10-06 18:47:42', NULL, NULL, NULL, NULL, NULL),
(144, NULL, 'restoreking26@gmail.com', 'admin-add-voter', 'Pre-registered voter: ak (123456)', 'Manual', 'System', '2025-10-06 18:48:50', NULL, NULL, NULL, NULL, NULL),
(145, NULL, 'restoreking26@gmail.com', 'view-dashboard-stats', 'Admin viewed dashboard statistics.', 'Manual', 'System', '2025-10-06 18:48:50', NULL, NULL, NULL, NULL, NULL),
(146, NULL, '123456', 'voter-register-complete', 'Voter (123456) completed registration.', 'Manual', 'System', '2025-10-06 18:49:34', NULL, NULL, NULL, NULL, NULL),
(147, 2, 'restoreking26@gmail.com', 'POST /api/candidates/add', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-06 18:50:20', NULL, NULL, NULL, NULL, NULL),
(148, 2, 'restoreking26@gmail.com', 'POST /api/candidates/add', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-06 18:55:36', NULL, NULL, NULL, NULL, NULL),
(149, NULL, 'restoreking26@gmail.com', 'view-dashboard-stats', 'Admin viewed dashboard statistics.', 'Manual', 'System', '2025-10-06 18:55:48', NULL, NULL, NULL, NULL, NULL),
(150, NULL, 'restoreking26@gmail.com', 'view-dashboard-stats', 'Admin viewed dashboard statistics.', 'Manual', 'System', '2025-10-06 18:55:48', NULL, NULL, NULL, NULL, NULL),
(151, 2, 'restoreking26@gmail.com', 'POST /api/candidates/add', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-06 18:56:40', NULL, NULL, NULL, NULL, NULL),
(152, NULL, 'restoreking26@gmail.com', 'view-dashboard-stats', 'Admin viewed dashboard statistics.', 'Manual', 'System', '2025-10-06 19:02:33', NULL, NULL, NULL, NULL, NULL),
(153, NULL, 'restoreking26@gmail.com', 'view-dashboard-stats', 'Admin viewed dashboard statistics.', 'Manual', 'System', '2025-10-06 19:02:33', NULL, NULL, NULL, NULL, NULL),
(154, NULL, 'restoreking26@gmail.com', 'csv-voter-upload', '0 voters added, 2 errors', 'Manual', 'System', '2025-10-06 19:02:55', NULL, NULL, NULL, NULL, NULL),
(155, NULL, 'restoreking26@gmail.com', 'view-dashboard-stats', 'Admin viewed dashboard statistics.', 'Manual', 'System', '2025-10-06 19:02:55', NULL, NULL, NULL, NULL, NULL),
(156, NULL, 'Unknown Admin', 'POST /api/admin/login', '{\"email\":\"restoreking26@gmail.com\",\"password\":\"123456\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-08 09:51:38', NULL, NULL, NULL, NULL, NULL),
(157, NULL, 'restoreking26@gmail.com', 'login', 'Admin vasanth s logged in', 'Manual', 'System', '2025-10-08 09:51:38', NULL, NULL, NULL, NULL, NULL),
(158, NULL, 'restoreking26@gmail.com', 'view-dashboard-stats', 'Admin viewed dashboard statistics.', 'Manual', 'System', '2025-10-08 09:51:39', NULL, NULL, NULL, NULL, NULL),
(159, NULL, 'restoreking26@gmail.com', 'view-dashboard-stats', 'Admin viewed dashboard statistics.', 'Manual', 'System', '2025-10-08 09:51:39', NULL, NULL, NULL, NULL, NULL),
(160, NULL, 'restoreking26@gmail.com', 'view-dashboard-stats', 'Admin viewed dashboard statistics.', 'Manual', 'System', '2025-10-08 09:51:43', NULL, NULL, NULL, NULL, NULL),
(161, NULL, 'restoreking26@gmail.com', 'view-dashboard-stats', 'Admin viewed dashboard statistics.', 'Manual', 'System', '2025-10-08 09:51:43', NULL, NULL, NULL, NULL, NULL),
(162, NULL, 'restoreking26@gmail.com', 'view-dashboard-stats', 'Admin viewed dashboard statistics.', 'Manual', 'System', '2025-10-08 10:07:16', NULL, NULL, NULL, NULL, NULL),
(163, NULL, 'restoreking26@gmail.com', 'view-dashboard-stats', 'Admin viewed dashboard statistics.', 'Manual', 'System', '2025-10-08 10:07:24', NULL, NULL, NULL, NULL, NULL),
(164, NULL, 'restoreking26@gmail.com', 'view-dashboard-stats', 'Admin viewed dashboard statistics.', 'Manual', 'System', '2025-10-08 10:07:24', NULL, NULL, NULL, NULL, NULL),
(165, NULL, 'restoreking26@gmail.com', 'view-dashboard-stats', 'Admin viewed dashboard statistics.', 'Manual', 'System', '2025-10-08 10:28:29', NULL, NULL, NULL, NULL, NULL),
(166, NULL, 'restoreking26@gmail.com', 'view-dashboard-stats', 'Admin viewed dashboard statistics.', 'Manual', 'System', '2025-10-08 10:28:29', NULL, NULL, NULL, NULL, NULL),
(167, NULL, 'restoreking26@gmail.com', 'view-dashboard-stats', 'Admin viewed dashboard statistics.', 'Manual', 'System', '2025-10-08 10:30:11', NULL, NULL, NULL, NULL, NULL),
(168, NULL, 'restoreking26@gmail.com', 'view-dashboard-stats', 'Admin viewed dashboard statistics.', 'Manual', 'System', '2025-10-08 10:30:11', NULL, NULL, NULL, NULL, NULL),
(169, NULL, 'Unknown Admin', 'POST /api/admin/login', '{\"email\":\"restoreking26@gmail.com\",\"password\":\"123456\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-08 10:45:25', NULL, NULL, NULL, NULL, NULL),
(170, NULL, 'restoreking26@gmail.com', 'login', 'Admin vasanth s logged in', 'Manual', 'System', '2025-10-08 10:45:25', NULL, NULL, NULL, NULL, NULL),
(171, NULL, 'restoreking26@gmail.com', 'view-dashboard-stats', 'Admin viewed dashboard statistics.', 'Manual', 'System', '2025-10-08 10:45:26', NULL, NULL, NULL, NULL, NULL),
(172, NULL, 'restoreking26@gmail.com', 'view-dashboard-stats', 'Admin viewed dashboard statistics.', 'Manual', 'System', '2025-10-08 10:45:26', NULL, NULL, NULL, NULL, NULL),
(173, NULL, 'restoreking26@gmail.com', 'view-dashboard-stats', 'Admin viewed dashboard statistics.', 'Manual', 'System', '2025-10-08 10:48:41', NULL, NULL, NULL, NULL, NULL),
(174, NULL, 'restoreking26@gmail.com', 'view-dashboard-stats', 'Admin viewed dashboard statistics.', 'Manual', 'System', '2025-10-08 10:48:41', NULL, NULL, NULL, NULL, NULL),
(175, NULL, 'restoreking26@gmail.com', 'view-dashboard-stats', 'Admin viewed dashboard statistics.', 'Manual', 'System', '2025-10-08 11:01:26', NULL, NULL, NULL, NULL, NULL),
(176, NULL, 'restoreking26@gmail.com', 'view-dashboard-stats', 'Admin viewed dashboard statistics.', 'Manual', 'System', '2025-10-08 11:01:26', NULL, NULL, NULL, NULL, NULL),
(177, NULL, 'restoreking26@gmail.com', 'view-dashboard-stats', 'Admin viewed dashboard statistics.', 'Manual', 'System', '2025-10-08 11:01:29', NULL, NULL, NULL, NULL, NULL),
(178, NULL, 'restoreking26@gmail.com', 'view-dashboard-stats', 'Admin viewed dashboard statistics.', 'Manual', 'System', '2025-10-08 11:01:29', NULL, NULL, NULL, NULL, NULL),
(179, NULL, 'restoreking26@gmail.com', 'view-dashboard-stats', 'Admin viewed dashboard statistics.', 'Manual', 'System', '2025-10-08 11:01:53', NULL, NULL, NULL, NULL, NULL),
(180, NULL, 'restoreking26@gmail.com', 'view-dashboard-stats', 'Admin viewed dashboard statistics.', 'Manual', 'System', '2025-10-08 11:01:53', NULL, NULL, NULL, NULL, NULL),
(181, NULL, 'restoreking26@gmail.com', 'view-dashboard-stats', 'Admin viewed dashboard statistics.', 'Manual', 'System', '2025-10-08 11:02:05', NULL, NULL, NULL, NULL, NULL),
(182, NULL, 'restoreking26@gmail.com', 'view-dashboard-stats', 'Admin viewed dashboard statistics.', 'Manual', 'System', '2025-10-08 11:06:11', NULL, NULL, NULL, NULL, NULL),
(183, NULL, 'restoreking26@gmail.com', 'view-dashboard-stats', 'Admin viewed dashboard statistics.', 'Manual', 'System', '2025-10-08 11:06:11', NULL, NULL, NULL, NULL, NULL),
(184, NULL, 'restoreking26@gmail.com', 'view-dashboard-stats', 'Admin viewed dashboard statistics.', 'Manual', 'System', '2025-10-08 11:12:27', NULL, NULL, NULL, NULL, NULL),
(185, NULL, 'restoreking26@gmail.com', 'admin-upload-csv', 'Bulk imported 0; skipped 9.', NULL, NULL, '2025-10-08 11:16:23', NULL, NULL, NULL, NULL, NULL),
(186, NULL, 'restoreking26@gmail.com', 'admin-add-voter', 'Admin added voter: kavi (cs123)', NULL, NULL, '2025-10-08 11:33:59', NULL, NULL, NULL, NULL, NULL),
(187, NULL, 'cs123', 'voter-register', 'Voter completed registration.', NULL, NULL, '2025-10-08 11:34:53', NULL, NULL, NULL, NULL, NULL),
(188, NULL, 'restoreking26@gmail.com', 'admin-edit-voter', 'Edited voter 123', NULL, NULL, '2025-10-08 12:05:57', NULL, NULL, NULL, NULL, NULL),
(189, NULL, 'restoreking26@gmail.com', 'admin-add-voter', 'Admin added voter: vasu (as123)', NULL, NULL, '2025-10-08 12:21:23', NULL, NULL, NULL, NULL, NULL),
(190, NULL, 'as123', 'voter-register', 'Completed registration.', NULL, NULL, '2025-10-08 12:22:12', NULL, NULL, NULL, NULL, NULL),
(191, NULL, 'as123', 'voter-login', 'Logged in', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-08 12:50:05', NULL, NULL, NULL, NULL, NULL),
(192, NULL, 'as123', 'voter-login', 'Logged in', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-08 12:53:24', NULL, NULL, NULL, NULL, NULL),
(193, NULL, 'as123', 'voter-login', 'Logged in', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-08 13:18:39', NULL, NULL, NULL, NULL, NULL),
(194, NULL, 'as123', 'voter-login', 'Logged in', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-08 13:29:42', NULL, NULL, NULL, NULL, NULL),
(195, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-08 15:59:14', 2, NULL, NULL, 'admin', NULL),
(196, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-08 15:59:14', 2, NULL, NULL, 'admin', NULL),
(197, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-08 15:59:18', 2, NULL, NULL, 'admin', NULL),
(198, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-08 15:59:18', 2, NULL, NULL, 'admin', NULL),
(199, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-08 15:59:29', 2, NULL, NULL, 'admin', NULL),
(200, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-08 15:59:29', 2, NULL, NULL, 'admin', NULL),
(201, NULL, 'restoreking26@gmail.com', 'admin-edit-voter', 'Edited voter  CSE005', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-08 16:00:00', 2, NULL, NULL, 'admin', NULL),
(202, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-08 16:22:43', 2, NULL, NULL, 'admin', NULL),
(203, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-08 16:22:43', 2, NULL, NULL, 'admin', NULL),
(204, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-08 16:25:02', 2, NULL, NULL, 'admin', NULL),
(205, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-08 16:25:02', 2, NULL, NULL, 'admin', NULL),
(206, NULL, 'restoreking26@gmail.com', 'admin-upload-csv', 'Inserted 0; duplicates 4', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-08 16:26:49', 2, NULL, NULL, 'admin', NULL),
(207, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-08 16:26:49', 2, NULL, NULL, 'admin', NULL),
(208, NULL, 'restoreking26@gmail.com', 'create-candidate', 'Added candidate: ajithkkkkkkk (ID: 1)', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-08 16:34:33', 2, NULL, NULL, 'admin', NULL),
(209, NULL, 'as123', 'voter-login', 'Logged in', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-08 16:37:59', NULL, NULL, NULL, NULL, NULL),
(210, NULL, 'as123', 'voter-login', 'Logged in', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-08 16:45:52', NULL, NULL, NULL, NULL, NULL),
(211, NULL, 'as123', 'voter-login', 'Logged in', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-08 16:53:48', NULL, NULL, NULL, NULL, NULL),
(212, NULL, 'restoreking26@gmail.com', 'admin-login', 'Admin vasanth s logged in', NULL, NULL, '2025-10-08 17:27:55', NULL, NULL, NULL, NULL, NULL),
(213, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-08 17:27:56', 2, NULL, NULL, 'admin', NULL),
(214, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-08 17:27:56', 2, NULL, NULL, 'admin', NULL),
(215, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-08 17:28:04', 2, NULL, NULL, 'admin', NULL),
(216, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-08 17:28:04', 2, NULL, NULL, 'admin', NULL),
(217, NULL, 'restoreking26@gmail.com', 'admin-login', 'Admin vasanth s logged in', NULL, NULL, '2025-10-09 15:16:20', NULL, NULL, NULL, NULL, NULL),
(218, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-10-09 15:16:21', 2, NULL, NULL, 'admin', NULL),
(219, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-10-09 15:16:21', 2, NULL, NULL, 'admin', NULL),
(220, NULL, 'restoreking26@gmail.com', 'admin-login', 'Admin vasanth s logged in', NULL, NULL, '2025-10-09 15:17:01', NULL, NULL, NULL, NULL, NULL),
(221, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-09 15:17:02', 2, NULL, NULL, 'admin', NULL),
(222, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-09 15:17:02', 2, NULL, NULL, 'admin', NULL),
(223, NULL, 'restoreking26@gmail.com', 'create-candidate', 'Added candidate: ajithkkkkkkkvvv (ID: 3)', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-09 15:17:51', 2, NULL, NULL, 'admin', NULL),
(224, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-09 16:26:57', 2, NULL, NULL, 'admin', NULL),
(225, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-09 16:26:57', 2, NULL, NULL, 'admin', NULL),
(226, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-09 16:27:06', 2, NULL, NULL, 'admin', NULL),
(227, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-09 16:27:06', 2, NULL, NULL, 'admin', NULL),
(228, 2, NULL, 'POST /api/candidates/add', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-09 16:27:37', NULL, 'restoreking26@gmail.com', NULL, NULL, NULL),
(229, NULL, 'restoreking26@gmail.com', 'create-candidate', 'Added candidate: ajithkkkkkkk an dbbbbasdadfs (ID: 4)', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-09 16:27:37', 2, NULL, NULL, 'admin', NULL),
(230, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-09 16:51:37', 2, NULL, NULL, 'admin', NULL),
(231, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-09 16:51:37', 2, NULL, NULL, 'admin', NULL),
(232, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-09 16:52:03', 2, NULL, NULL, 'admin', NULL),
(233, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-09 16:52:03', 2, NULL, NULL, 'admin', NULL),
(234, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-09 16:52:04', 2, NULL, NULL, 'admin', NULL),
(235, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-09 16:52:04', 2, NULL, NULL, 'admin', NULL),
(236, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-09 16:52:05', 2, NULL, NULL, 'admin', NULL),
(237, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-09 16:52:05', 2, NULL, NULL, 'admin', NULL),
(238, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-09 16:52:05', 2, NULL, NULL, 'admin', NULL),
(239, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-09 16:52:05', 2, NULL, NULL, 'admin', NULL);
INSERT INTO `audit_logs` (`id`, `admin_id`, `user_identifier`, `action`, `details`, `ip_address`, `user_agent`, `created_at`, `actor_id`, `admin_email`, `election_id`, `actor_role`, `ip`) VALUES
(240, NULL, NULL, 'POST /api/admin/login', '{\"email\":\"restoreking26@gmail.com\",\"password\":\"12345\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-10-09 17:45:15', NULL, 'Unknown Admin', NULL, NULL, NULL),
(241, NULL, NULL, 'POST /api/admin/login', '{\"email\":\"restoreking26@gmail.com\",\"password\":\"123456\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-09 17:45:59', NULL, 'Unknown Admin', NULL, NULL, NULL),
(242, NULL, 'restoreking26@gmail.com', 'admin-login', 'Admin vasanth s logged in', NULL, NULL, '2025-10-09 17:45:59', NULL, NULL, NULL, NULL, NULL),
(243, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-09 17:46:00', 2, NULL, NULL, 'admin', NULL),
(244, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-09 17:46:00', 2, NULL, NULL, 'admin', NULL),
(245, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-09 17:51:30', 2, NULL, NULL, 'admin', NULL),
(246, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-09 17:51:30', 2, NULL, NULL, 'admin', NULL),
(247, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-09 17:53:05', 2, NULL, NULL, 'admin', NULL),
(248, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-09 17:53:05', 2, NULL, NULL, 'admin', NULL),
(249, 2, NULL, 'DELETE /api/elections/delete/1', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-09 17:56:12', NULL, 'restoreking26@gmail.com', NULL, NULL, NULL),
(250, NULL, 'restoreking26@gmail.com', 'delete-election', 'Deleted election ID: 1', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-09 17:56:12', 2, NULL, NULL, 'admin', NULL),
(251, 2, NULL, 'POST /api/elections/add', '{\"title\":\"mba\",\"description\":\"vasanth\",\"start_date\":\"2025-11-20 07:29:00\",\"end_date\":\"2025-11-21 07:32:00\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-09 17:57:15', NULL, 'restoreking26@gmail.com', NULL, NULL, NULL),
(252, NULL, 'restoreking26@gmail.com', 'create-election', 'Created election: mba (ID: 2)', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-09 17:57:15', 2, NULL, NULL, 'admin', NULL),
(253, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-09 18:08:01', 2, NULL, NULL, 'admin', NULL),
(254, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-09 18:08:01', 2, NULL, NULL, 'admin', NULL),
(255, 2, NULL, 'PATCH /api/elections/2/start', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-09 18:15:44', NULL, 'restoreking26@gmail.com', NULL, NULL, NULL),
(256, NULL, 'restoreking26@gmail.com', 'election-start', 'Set election ID 2 to running', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-09 18:15:44', 2, NULL, NULL, 'admin', NULL),
(257, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-09 18:15:50', 2, NULL, NULL, 'admin', NULL),
(258, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-09 18:15:50', 2, NULL, NULL, 'admin', NULL),
(259, 2, NULL, 'PATCH /api/elections/2/pause', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-09 18:15:55', NULL, 'restoreking26@gmail.com', NULL, NULL, NULL),
(260, NULL, 'restoreking26@gmail.com', 'election-pause', 'Set election ID 2 to paused', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-09 18:15:55', 2, NULL, NULL, 'admin', NULL),
(261, 2, NULL, 'PATCH /api/elections/2/start', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-09 18:16:03', NULL, 'restoreking26@gmail.com', NULL, NULL, NULL),
(262, NULL, 'restoreking26@gmail.com', 'election-start', 'Set election ID 2 to running', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-09 18:16:03', 2, NULL, NULL, 'admin', NULL),
(263, 2, NULL, 'POST /api/elections/add', '{\"title\":\"vdfdfvd\",\"description\":\"dcsdcsx\",\"start_date\":\"2025-12-20 06:42:00\",\"end_date\":\"2025-12-21 07:42:00\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-09 18:24:27', NULL, 'restoreking26@gmail.com', NULL, NULL, NULL),
(264, 2, NULL, 'POST /api/elections/add', '{\"title\":\"vdfdfvd\",\"description\":\"dcsdcsx\",\"start_date\":\"2025-12-20 06:42:00\",\"end_date\":\"2025-12-21 07:42:00\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-09 18:24:27', NULL, 'restoreking26@gmail.com', NULL, NULL, NULL),
(265, 2, NULL, 'POST /api/elections/add', '{\"title\":\"vdfdfvd\",\"description\":\"dcsdcsx\",\"start_date\":\"2025-12-20 06:42:00\",\"end_date\":\"2025-12-21 07:42:00\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-09 18:24:30', NULL, 'restoreking26@gmail.com', NULL, NULL, NULL),
(266, 2, NULL, 'POST /api/elections/add', '{\"title\":\"vdfdfvd\",\"description\":\"dcsdcsx\",\"start_date\":\"2025-12-20 06:42:00\",\"end_date\":\"2025-12-21 07:42:00\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-09 18:24:33', NULL, 'restoreking26@gmail.com', NULL, NULL, NULL),
(267, 2, NULL, 'POST /api/elections/add', '{\"title\":\"vdfdfvd\",\"description\":\"dcsdcsx\",\"start_date\":\"2025-12-20 06:42:00\",\"end_date\":\"2025-12-21 07:42:00\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-09 18:24:33', NULL, 'restoreking26@gmail.com', NULL, NULL, NULL),
(268, 2, NULL, 'POST /api/elections/add', '{\"title\":\"vdfdfvd\",\"description\":\"dcsdcsx\",\"start_date\":\"2025-12-20 06:42:00\",\"end_date\":\"2025-12-21 07:42:00\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-09 18:24:33', NULL, 'restoreking26@gmail.com', NULL, NULL, NULL),
(269, 2, NULL, 'POST /api/elections/add', '{\"title\":\"vdfdfvd\",\"description\":\"dcsdcsx\",\"start_date\":\"2025-12-20 06:42:00\",\"end_date\":\"2025-12-21 07:42:00\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-09 18:24:33', NULL, 'restoreking26@gmail.com', NULL, NULL, NULL),
(270, 2, NULL, 'POST /api/elections/add', '{\"title\":\"vdfdfvd\",\"description\":\"dcsdcsx\",\"start_date\":\"2025-12-20 06:42:00\",\"end_date\":\"2025-12-21 07:42:00\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-09 18:24:34', NULL, 'restoreking26@gmail.com', NULL, NULL, NULL),
(271, 2, NULL, 'POST /api/elections/add', '{\"title\":\"vdfdfvd\",\"description\":\"dcsdcsx\",\"start_date\":\"2025-12-20 06:42:00\",\"end_date\":\"2025-12-21 07:42:00\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-09 18:24:34', NULL, 'restoreking26@gmail.com', NULL, NULL, NULL),
(272, 2, NULL, 'POST /api/elections/add', '{\"title\":\"vdfdfvd\",\"description\":\"dcsdcsx\",\"start_date\":\"2025-12-20 06:42:00\",\"end_date\":\"2025-12-21 07:42:00\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-09 18:24:34', NULL, 'restoreking26@gmail.com', NULL, NULL, NULL),
(273, 2, NULL, 'POST /api/elections/add', '{\"title\":\"vdfdfvd\",\"description\":\"dcsdcsx\",\"start_date\":\"2025-12-20 06:42:00\",\"end_date\":\"2025-12-21 07:42:00\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-09 18:32:17', NULL, 'restoreking26@gmail.com', NULL, NULL, NULL),
(274, 2, NULL, 'POST /api/elections/add', '{\"title\":\"vdfdfvd\",\"description\":\"dcsdcsx\",\"start_date\":\"2025-12-20 06:42:00\",\"end_date\":\"2025-12-21 07:42:00\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-09 18:33:25', NULL, 'restoreking26@gmail.com', NULL, NULL, NULL),
(275, 2, NULL, 'POST /api/elections/add', '{\"title\":\"ssasas\",\"description\":\"asdad\",\"start_date\":\"2025-10-09 18:33:00\",\"end_date\":\"2025-10-10 18:33:00\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-09 18:34:07', NULL, 'restoreking26@gmail.com', NULL, NULL, NULL),
(276, 2, NULL, 'POST /api/elections/add', '{\"title\":\"ssasas\",\"description\":\"asdad\",\"start_date\":\"2025-10-09 18:33:00\",\"end_date\":\"2025-10-10 18:33:00\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-09 18:42:55', NULL, 'restoreking26@gmail.com', NULL, NULL, NULL),
(277, 2, NULL, 'POST /api/elections/add', '{\"title\":\"xzczxczc\",\"description\":\"dsfsdfhhjthjjmhjm\",\"start_date\":\"2025-10-09 18:43:00\",\"end_date\":\"2025-10-10 18:43:00\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-09 18:43:33', NULL, 'restoreking26@gmail.com', NULL, NULL, NULL),
(278, 2, NULL, 'POST /api/elections/add', '{\"title\":\"xzczxczc\",\"description\":\"dsfsdfhhjthjjmhjm\",\"start_date\":\"2025-10-09 18:43:00\",\"end_date\":\"2025-10-10 18:43:00\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-09 18:53:46', NULL, 'restoreking26@gmail.com', NULL, NULL, NULL),
(279, 2, NULL, 'POST /api/elections/add', '{\"title\":\"xzczxczc\",\"description\":\"dsfsdfhhjthjjmhjm\",\"start_date\":\"2025-10-09 18:43:00\",\"end_date\":\"2025-10-10 18:43:00\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-09 18:54:02', NULL, 'restoreking26@gmail.com', NULL, NULL, NULL),
(280, 2, NULL, 'POST /api/elections/add', '{\"title\":\"cccscsdc\",\"description\":\"fdbgfb\",\"start_date\":\"2025-10-09 18:54:00\",\"end_date\":\"2025-10-24 18:54:00\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-09 18:54:21', NULL, 'restoreking26@gmail.com', NULL, NULL, NULL),
(281, 2, NULL, 'POST /api/elections/add', '{\"title\":\"cccscsdc\",\"description\":\"fdbgfb\",\"start_date\":\"2025-10-09 18:54:00\",\"end_date\":\"2025-10-24 18:54:00\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-09 18:54:22', NULL, 'restoreking26@gmail.com', NULL, NULL, NULL),
(282, 2, NULL, 'POST /api/elections/add', '{\"title\":\"cccscsdc\",\"description\":\"fdbgfb\",\"start_date\":\"2025-10-09 18:54:00\",\"end_date\":\"2025-10-24 18:54:00\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-09 19:09:21', NULL, 'restoreking26@gmail.com', NULL, NULL, NULL),
(283, NULL, 'restoreking26@gmail.com', 'create-election', 'Created election cccscsdc (#3)', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-09 19:09:21', 2, NULL, NULL, 'admin', NULL),
(284, 2, NULL, 'PATCH /api/elections/2/pause', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-09 19:09:37', NULL, 'restoreking26@gmail.com', NULL, NULL, NULL),
(285, NULL, 'restoreking26@gmail.com', 'election-pause', 'Election #2 -> paused', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-09 19:09:37', 2, NULL, NULL, 'admin', NULL),
(286, 2, NULL, 'PATCH /api/elections/2/stop', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-09 19:09:38', NULL, 'restoreking26@gmail.com', NULL, NULL, NULL),
(287, NULL, 'restoreking26@gmail.com', 'election-stop', 'Election #2 -> ended', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-09 19:09:38', 2, NULL, NULL, 'admin', NULL),
(288, 2, NULL, 'DELETE /api/elections/delete/2', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-09 19:09:41', NULL, 'restoreking26@gmail.com', NULL, NULL, NULL),
(289, NULL, 'restoreking26@gmail.com', 'delete-election', 'Deleted election #2', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-09 19:09:41', 2, NULL, NULL, 'admin', NULL),
(290, 2, NULL, 'POST /api/candidates/add', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-09 19:09:57', NULL, 'restoreking26@gmail.com', NULL, NULL, NULL),
(291, NULL, 'restoreking26@gmail.com', 'create-candidate', 'Added candidate: ajithkkkkkkk an dbbbbasdadfs (ID: 5)', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-09 19:09:57', 2, NULL, NULL, 'admin', NULL),
(292, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-09 19:10:18', 2, NULL, NULL, 'admin', NULL),
(293, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-09 19:10:18', 2, NULL, NULL, 'admin', NULL),
(294, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-09 19:10:23', 2, NULL, NULL, 'admin', NULL),
(295, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-09 19:10:23', 2, NULL, NULL, 'admin', NULL),
(296, 2, NULL, 'POST /api/candidates/add', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-09 19:10:53', NULL, 'restoreking26@gmail.com', NULL, NULL, NULL),
(297, NULL, 'restoreking26@gmail.com', 'create-candidate', 'Added candidate: new (ID: 6)', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-09 19:10:53', 2, NULL, NULL, 'admin', NULL),
(298, NULL, 'restoreking26@gmail.com', 'publish-results', 'Set election ID 3 to published', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-09 19:11:20', 2, NULL, NULL, 'admin', NULL),
(299, NULL, 'restoreking26@gmail.com', 'publish-results', 'Set election ID 3 to unpublished', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-09 19:11:22', 2, NULL, NULL, 'admin', NULL),
(300, 2, NULL, 'PATCH /api/elections/3/start', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-09 19:11:45', NULL, 'restoreking26@gmail.com', NULL, NULL, NULL),
(301, NULL, 'restoreking26@gmail.com', 'election-start', 'Election #3 -> running', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-09 19:11:45', 2, NULL, NULL, 'admin', NULL),
(302, NULL, NULL, 'POST /api/admin/login', '{\"email\":\"restoreking26@gmail.com\",\"password\":\"12345\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '2025-10-10 03:50:34', NULL, 'Unknown Admin', NULL, NULL, NULL),
(303, NULL, NULL, 'POST /api/admin/login', '{\"email\":\"restoreking26@gmail.com\",\"password\":\"123456\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '2025-10-10 03:50:58', NULL, 'Unknown Admin', NULL, NULL, NULL),
(304, NULL, 'restoreking26@gmail.com', 'admin-login', 'Admin vasanth s logged in', NULL, NULL, '2025-10-10 03:50:58', NULL, NULL, NULL, NULL, NULL),
(305, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '2025-10-10 03:50:59', 2, NULL, NULL, 'admin', NULL),
(306, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '2025-10-10 03:50:59', 2, NULL, NULL, 'admin', NULL),
(307, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '2025-10-10 03:51:06', 2, NULL, NULL, 'admin', NULL),
(308, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '2025-10-10 03:51:06', 2, NULL, NULL, 'admin', NULL),
(309, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '2025-10-10 03:51:38', 2, NULL, NULL, 'admin', NULL),
(310, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '2025-10-10 03:51:38', 2, NULL, NULL, 'admin', NULL),
(311, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '2025-10-10 03:51:44', 2, NULL, NULL, 'admin', NULL),
(312, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '2025-10-10 03:51:44', 2, NULL, NULL, 'admin', NULL),
(313, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '2025-10-10 03:51:58', 2, NULL, NULL, 'admin', NULL),
(314, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '2025-10-10 03:51:58', 2, NULL, NULL, 'admin', NULL),
(315, NULL, 'restoreking26@gmail.com', 'publish-results', 'Set election ID 3 to published', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '2025-10-10 03:53:33', 2, NULL, NULL, 'admin', NULL),
(316, NULL, 'restoreking26@gmail.com', 'publish-results', 'Set election ID 3 to unpublished', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '2025-10-10 03:53:47', 2, NULL, NULL, 'admin', NULL),
(317, NULL, 'restoreking26@gmail.com', 'publish-results', 'Set election ID 3 to published', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '2025-10-10 03:53:47', 2, NULL, NULL, 'admin', NULL),
(318, NULL, 'restoreking26@gmail.com', 'publish-results', 'Set election ID 3 to unpublished', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '2025-10-10 03:53:48', 2, NULL, NULL, 'admin', NULL),
(319, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '2025-10-10 03:54:01', 2, NULL, NULL, 'admin', NULL),
(320, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '2025-10-10 03:54:02', 2, NULL, NULL, 'admin', NULL),
(321, NULL, NULL, 'POST /api/admin/login', '{\"email\":\"admin1000@gmail.com\",\"password\":\"12345\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '2025-10-10 03:57:28', NULL, 'Unknown Admin', NULL, NULL, NULL),
(322, NULL, NULL, 'POST /api/admin/login', '{\"email\":\"admin1000@gmail.com\",\"password\":\"12345\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '2025-10-10 03:57:30', NULL, 'Unknown Admin', NULL, NULL, NULL),
(323, NULL, NULL, 'POST /api/admin/login', '{\"email\":\"admin1000@gmail.com\",\"password\":\"12345\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '2025-10-10 03:57:31', NULL, 'Unknown Admin', NULL, NULL, NULL),
(324, NULL, NULL, 'POST /api/admin/login', '{\"email\":\"admin100@gmail.com\",\"password\":\"12345\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '2025-10-10 03:57:34', NULL, 'Unknown Admin', NULL, NULL, NULL),
(325, NULL, NULL, 'POST /api/admin/login', '{\"email\":\"restoreking26@gmail.com\",\"password\":\"123456\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '2025-10-10 03:58:02', NULL, 'Unknown Admin', NULL, NULL, NULL),
(326, NULL, 'restoreking26@gmail.com', 'admin-login', 'Admin vasanth s logged in', NULL, NULL, '2025-10-10 03:58:02', NULL, NULL, NULL, NULL, NULL),
(327, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '2025-10-10 03:58:03', 2, NULL, NULL, 'admin', NULL),
(328, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '2025-10-10 03:58:03', 2, NULL, NULL, 'admin', NULL),
(329, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '2025-10-10 03:58:06', 2, NULL, NULL, 'admin', NULL),
(330, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '2025-10-10 03:58:06', 2, NULL, NULL, 'admin', NULL),
(331, NULL, 'restoreking26@gmail.com', 'publish-results', 'Set election ID 3 to published', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '2025-10-10 03:58:16', 2, NULL, NULL, 'admin', NULL),
(332, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '2025-10-10 03:58:18', 2, NULL, NULL, 'admin', NULL),
(333, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '2025-10-10 03:58:18', 2, NULL, NULL, 'admin', NULL),
(334, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '2025-10-10 03:58:19', 2, NULL, NULL, 'admin', NULL),
(335, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '2025-10-10 03:58:19', 2, NULL, NULL, 'admin', NULL),
(336, 2, NULL, 'PATCH /api/elections/3/pause', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '2025-10-10 03:58:50', NULL, 'restoreking26@gmail.com', NULL, NULL, NULL),
(337, NULL, 'restoreking26@gmail.com', 'election-pause', 'Election #3 -> paused', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '2025-10-10 03:58:50', 2, NULL, NULL, 'admin', NULL),
(338, 2, NULL, 'PATCH /api/elections/3/start', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '2025-10-10 03:58:51', NULL, 'restoreking26@gmail.com', NULL, NULL, NULL),
(339, NULL, 'restoreking26@gmail.com', 'election-start', 'Election #3 -> running', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '2025-10-10 03:58:51', 2, NULL, NULL, 'admin', NULL),
(340, 2, NULL, 'POST /api/candidates/add', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '2025-10-10 04:00:37', NULL, 'restoreking26@gmail.com', NULL, NULL, NULL),
(341, NULL, 'restoreking26@gmail.com', 'create-candidate', 'Added candidate: ha (ID: 7)', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '2025-10-10 04:00:37', 2, NULL, NULL, 'admin', NULL),
(342, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '2025-10-10 04:39:18', 2, NULL, NULL, 'admin', NULL),
(343, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '2025-10-10 04:39:18', 2, NULL, NULL, 'admin', NULL),
(344, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '2025-10-10 05:33:18', 2, NULL, NULL, 'admin', NULL),
(345, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '2025-10-10 05:33:18', 2, NULL, NULL, 'admin', NULL),
(346, NULL, 'restoreking26@gmail.com', 'admin-add-voter', 'Admin added voter CSC123456', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '2025-10-10 05:34:06', 2, NULL, NULL, 'admin', NULL),
(347, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '2025-10-10 05:34:06', 2, NULL, NULL, 'admin', NULL),
(348, NULL, 'CSC123456', 'voter-register', 'Completed registration.', NULL, NULL, '2025-10-10 05:35:02', NULL, NULL, NULL, NULL, NULL),
(349, NULL, 'CSC123456', 'voter-login', 'Logged in', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '2025-10-10 05:35:20', NULL, NULL, NULL, NULL, NULL),
(350, NULL, 'CSC123456', 'voter-login', 'Logged in', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '2025-10-10 05:41:53', NULL, NULL, NULL, NULL, NULL),
(351, NULL, 'CSC123456', 'voter-login', 'Logged in', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '2025-10-10 05:42:23', NULL, NULL, NULL, NULL, NULL),
(352, NULL, NULL, 'POST /api/admin/login', '{\"email\":\"restoreking26@gmail.com\",\"password\":\"123456\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '2025-10-10 05:44:04', NULL, 'Unknown Admin', NULL, NULL, NULL),
(353, NULL, 'restoreking26@gmail.com', 'admin-login', 'Admin vasanth s logged in', NULL, NULL, '2025-10-10 05:44:04', NULL, NULL, NULL, NULL, NULL),
(354, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '2025-10-10 05:44:05', 2, NULL, NULL, 'admin', NULL),
(355, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '2025-10-10 05:44:05', 2, NULL, NULL, 'admin', NULL),
(356, NULL, NULL, 'POST /api/admin/login', '{\"email\":\"restoreking26@gmail.com\",\"password\":\"123456\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '2025-10-10 05:48:49', NULL, 'Unknown Admin', NULL, NULL, NULL),
(357, NULL, 'restoreking26@gmail.com', 'admin-login', 'Admin vasanth s logged in', NULL, NULL, '2025-10-10 05:48:49', NULL, NULL, NULL, NULL, NULL),
(358, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '2025-10-10 05:48:51', 2, NULL, NULL, 'admin', NULL),
(359, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '2025-10-10 05:48:51', 2, NULL, NULL, 'admin', NULL),
(360, 2, NULL, 'PATCH /api/elections/3/pause', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '2025-10-10 05:48:56', NULL, 'restoreking26@gmail.com', NULL, NULL, NULL),
(361, NULL, 'restoreking26@gmail.com', 'election-pause', 'Election #3 -> paused', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '2025-10-10 05:48:56', 2, NULL, NULL, 'admin', NULL),
(362, 2, NULL, 'PATCH /api/elections/3/start', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '2025-10-10 05:49:02', NULL, 'restoreking26@gmail.com', NULL, NULL, NULL),
(363, NULL, 'restoreking26@gmail.com', 'election-start', 'Election #3 -> running', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '2025-10-10 05:49:02', 2, NULL, NULL, 'admin', NULL),
(364, NULL, 'CSC123456', 'voter-login', 'Logged in', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '2025-10-10 05:49:35', NULL, NULL, NULL, NULL, NULL),
(365, NULL, 'CSC123456', 'voter-login', 'Logged in', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '2025-10-10 05:50:04', NULL, NULL, NULL, NULL, NULL),
(366, NULL, 'CSC123456', 'voter-login', 'Logged in', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '2025-10-10 05:56:05', NULL, NULL, NULL, NULL, NULL),
(367, NULL, 'CSC123456', 'voter-login', 'Logged in', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '2025-10-10 06:02:04', NULL, NULL, NULL, NULL, NULL),
(368, NULL, NULL, 'POST /api/admin/login', '{\"email\":\"restoreking26@gmail.com\",\"password\":\"123456\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '2025-10-10 06:05:49', NULL, 'Unknown Admin', NULL, NULL, NULL),
(369, NULL, 'restoreking26@gmail.com', 'admin-login', 'Admin vasanth s logged in', NULL, NULL, '2025-10-10 06:05:49', NULL, NULL, NULL, NULL, NULL),
(370, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '2025-10-10 06:05:50', 2, NULL, NULL, 'admin', NULL),
(371, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '2025-10-10 06:05:50', 2, NULL, NULL, 'admin', NULL),
(372, NULL, NULL, 'POST /api/admin/login', '{\"email\":\"restoreking26@gmail.com\",\"password\":\"123456\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '2025-10-10 06:13:44', NULL, 'Unknown Admin', NULL, NULL, NULL),
(373, NULL, 'restoreking26@gmail.com', 'admin-login', 'Admin vasanth s logged in', NULL, NULL, '2025-10-10 06:13:44', NULL, NULL, NULL, NULL, NULL),
(374, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '2025-10-10 06:13:45', 2, NULL, NULL, 'admin', NULL),
(375, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '2025-10-10 06:13:45', 2, NULL, NULL, 'admin', NULL),
(376, NULL, 'CSC123456', 'voter-login', 'Logged in', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '2025-10-10 06:14:11', NULL, NULL, NULL, NULL, NULL),
(377, NULL, 'CSC123456', 'voter-login', 'Logged in', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-10 06:18:10', NULL, NULL, NULL, NULL, NULL),
(378, NULL, NULL, 'POST /api/admin/login', '{\"email\":\"restoreking26@gmail.com\",\"password\":\"123456\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '2025-10-10 06:18:38', NULL, 'Unknown Admin', NULL, NULL, NULL),
(379, NULL, 'restoreking26@gmail.com', 'admin-login', 'Admin vasanth s logged in', NULL, NULL, '2025-10-10 06:18:39', NULL, NULL, NULL, NULL, NULL),
(380, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '2025-10-10 06:18:39', 2, NULL, NULL, 'admin', NULL),
(381, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '2025-10-10 06:18:39', 2, NULL, NULL, 'admin', NULL),
(382, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '2025-10-10 06:18:41', 2, NULL, NULL, 'admin', NULL),
(383, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '2025-10-10 06:18:42', 2, NULL, NULL, 'admin', NULL),
(384, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '2025-10-10 06:31:05', 2, NULL, NULL, 'admin', NULL),
(385, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '2025-10-10 06:31:05', 2, NULL, NULL, 'admin', NULL),
(386, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '2025-10-10 06:45:57', 2, NULL, NULL, 'admin', NULL),
(387, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '2025-10-10 06:45:57', 2, NULL, NULL, 'admin', NULL),
(388, 2, NULL, 'PATCH /api/elections/3/stop', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '2025-10-10 06:51:34', NULL, 'restoreking26@gmail.com', NULL, NULL, NULL),
(389, NULL, 'restoreking26@gmail.com', 'election-stop', 'Election #3 -> ended', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '2025-10-10 06:51:34', 2, NULL, NULL, 'admin', NULL),
(390, 2, NULL, 'PUT /api/elections/update/3', '{\"id\":3,\"title\":\"cccscsdc new\",\"description\":\"fdbgfb\",\"start_date\":\"2025-10-09 02:24:00\",\"end_date\":\"2025-10-24 02:24:00\",\"status\":\"ended\",\"is_published\":1,\"created_by\":\"2\",\"created_at\":\"2025-10-09T19:09:21.000Z\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '2025-10-10 06:52:01', NULL, 'restoreking26@gmail.com', NULL, NULL, NULL),
(391, NULL, 'restoreking26@gmail.com', 'update-election', 'Updated election #3', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '2025-10-10 06:52:01', 2, NULL, NULL, 'admin', NULL),
(392, 2, NULL, 'POST /api/elections/add', '{\"id\":3,\"title\":\"cccscsdc new (copy)\",\"description\":\"fdbgfb\",\"start_date\":\"2025-10-11 06:52:00\",\"end_date\":\"2025-10-12 06:52:00\",\"status\":\"ended\",\"is_published\":1,\"created_by\":\"2\",\"created_at\":\"2025-10-09T19:09:21.000Z\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '2025-10-10 06:52:24', NULL, 'restoreking26@gmail.com', NULL, NULL, NULL),
(393, NULL, 'restoreking26@gmail.com', 'create-election', 'Created election cccscsdc new (copy) (#4)', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '2025-10-10 06:52:24', 2, NULL, NULL, 'admin', NULL),
(394, 2, NULL, 'PATCH /api/elections/4/start', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '2025-10-10 06:52:27', NULL, 'restoreking26@gmail.com', NULL, NULL, NULL),
(395, NULL, 'restoreking26@gmail.com', 'election-start', 'Election #4 -> running', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '2025-10-10 06:52:27', 2, NULL, NULL, 'admin', NULL),
(396, 2, NULL, 'PATCH /api/elections/4/pause', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '2025-10-10 06:52:54', NULL, 'restoreking26@gmail.com', NULL, NULL, NULL),
(397, NULL, 'restoreking26@gmail.com', 'election-pause', 'Election #4 -> paused', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '2025-10-10 06:52:54', 2, NULL, NULL, 'admin', NULL),
(398, 2, NULL, 'PATCH /api/elections/4/start', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '2025-10-10 06:52:55', NULL, 'restoreking26@gmail.com', NULL, NULL, NULL),
(399, NULL, 'restoreking26@gmail.com', 'election-start', 'Election #4 -> running', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '2025-10-10 06:52:55', 2, NULL, NULL, 'admin', NULL),
(400, NULL, 'CSC123456', 'voter-login', 'Logged in', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-10 08:06:33', NULL, NULL, NULL, NULL, NULL),
(401, NULL, NULL, 'POST /api/admin/login', '{\"email\":\"restoreking26@gmail.com\",\"password\":\"123456\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-10 08:07:16', NULL, 'Unknown Admin', NULL, NULL, NULL),
(402, NULL, 'restoreking26@gmail.com', 'admin-login', 'Admin vasanth s logged in', NULL, NULL, '2025-10-10 08:07:17', NULL, NULL, NULL, NULL, NULL),
(403, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-10 08:07:17', 2, NULL, NULL, 'admin', NULL),
(404, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-10 08:07:17', 2, NULL, NULL, 'admin', NULL),
(405, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-10 08:07:40', 2, NULL, NULL, 'admin', NULL),
(406, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-10 08:07:40', 2, NULL, NULL, 'admin', NULL),
(407, NULL, NULL, 'POST /api/admin/login', '{\"email\":\"restoreking26@gmail.com\",\"password\":\"123456\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-10 08:08:18', NULL, 'Unknown Admin', NULL, NULL, NULL),
(408, NULL, 'restoreking26@gmail.com', 'admin-login', 'Admin vasanth s logged in', NULL, NULL, '2025-10-10 08:08:18', NULL, NULL, NULL, NULL, NULL),
(409, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-10 08:08:18', 2, NULL, NULL, 'admin', NULL),
(410, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-10 08:08:18', 2, NULL, NULL, 'admin', NULL),
(411, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-10 08:08:21', 2, NULL, NULL, 'admin', NULL),
(412, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-10 08:08:21', 2, NULL, NULL, 'admin', NULL),
(413, NULL, 'CSC123456', 'voter-login', 'Logged in', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '2025-10-10 08:08:46', NULL, NULL, NULL, NULL, NULL),
(414, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-10 08:09:09', 2, NULL, NULL, 'admin', NULL),
(415, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-10 08:09:09', 2, NULL, NULL, 'admin', NULL),
(416, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-10 08:09:11', 2, NULL, NULL, 'admin', NULL),
(417, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-10 08:09:11', 2, NULL, NULL, 'admin', NULL),
(418, 2, NULL, 'DELETE /api/elections/delete/3', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-10 08:09:19', NULL, 'restoreking26@gmail.com', NULL, NULL, NULL),
(419, NULL, 'restoreking26@gmail.com', 'delete-election', 'Deleted election #3', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-10 08:09:19', 2, NULL, NULL, 'admin', NULL);
INSERT INTO `audit_logs` (`id`, `admin_id`, `user_identifier`, `action`, `details`, `ip_address`, `user_agent`, `created_at`, `actor_id`, `admin_email`, `election_id`, `actor_role`, `ip`) VALUES
(420, 2, NULL, 'POST /api/candidates/add', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-10 08:10:06', NULL, 'restoreking26@gmail.com', NULL, NULL, NULL),
(421, NULL, 'restoreking26@gmail.com', 'create-candidate', 'Added candidate: vijay (ID: 8)', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-10 08:10:06', 2, NULL, NULL, 'admin', NULL),
(422, 2, NULL, 'POST /api/candidates/add', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-10 08:10:24', NULL, 'restoreking26@gmail.com', NULL, NULL, NULL),
(423, NULL, 'restoreking26@gmail.com', 'create-candidate', 'Added candidate: vijay_anil (ID: 9)', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-10 08:10:25', 2, NULL, NULL, 'admin', NULL),
(424, 2, NULL, 'PATCH /api/elections/4/pause', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-10 08:10:50', NULL, 'restoreking26@gmail.com', NULL, NULL, NULL),
(425, NULL, 'restoreking26@gmail.com', 'election-pause', 'Election #4 -> paused', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-10 08:10:50', 2, NULL, NULL, 'admin', NULL),
(426, 2, NULL, 'PATCH /api/elections/4/start', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-10 08:10:51', NULL, 'restoreking26@gmail.com', NULL, NULL, NULL),
(427, NULL, 'restoreking26@gmail.com', 'election-start', 'Election #4 -> running', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-10 08:10:51', 2, NULL, NULL, 'admin', NULL),
(428, 2, NULL, 'PUT /api/candidates/update/8', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-10 08:11:38', NULL, 'restoreking26@gmail.com', NULL, NULL, NULL),
(429, NULL, 'restoreking26@gmail.com', 'update-candidate', 'Updated candidate ID: 8', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-10 08:11:38', 2, NULL, NULL, 'admin', NULL),
(430, 2, NULL, 'PUT /api/candidates/update/9', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-10 09:23:43', NULL, 'restoreking26@gmail.com', NULL, NULL, NULL),
(431, NULL, 'restoreking26@gmail.com', 'update-candidate', 'Updated candidate ID: 9', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-10 09:23:43', 2, NULL, NULL, 'admin', NULL),
(432, 2, NULL, 'PATCH /api/elections/4/pause', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-10 09:23:50', NULL, 'restoreking26@gmail.com', NULL, NULL, NULL),
(433, NULL, 'restoreking26@gmail.com', 'election-pause', 'Election #4 -> paused', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-10 09:23:50', 2, NULL, NULL, 'admin', NULL),
(434, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-10 09:23:51', 2, NULL, NULL, 'admin', NULL),
(435, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-10 09:23:51', 2, NULL, NULL, 'admin', NULL),
(436, 2, NULL, 'PATCH /api/elections/4/start', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-10 09:23:57', NULL, 'restoreking26@gmail.com', NULL, NULL, NULL),
(437, NULL, 'restoreking26@gmail.com', 'election-start', 'Election #4 -> running', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-10 09:23:57', 2, NULL, NULL, 'admin', NULL),
(438, NULL, 'restoreking26@gmail.com', 'publish-results', 'Set election ID 4 to published', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-10 09:38:25', 2, NULL, NULL, 'admin', NULL),
(439, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-10 10:11:34', 2, NULL, NULL, 'admin', NULL),
(440, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-10 10:11:34', 2, NULL, NULL, 'admin', NULL),
(441, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-10 10:27:59', 2, NULL, NULL, 'admin', NULL),
(442, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-10 10:27:59', 2, NULL, NULL, 'admin', NULL),
(443, NULL, NULL, 'POST /api/admin/login', '{\"email\":\"restoreking26@gmail.com\",\"password\":\"123456\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 06:01:05', NULL, 'Unknown Admin', NULL, NULL, NULL),
(444, NULL, 'restoreking26@gmail.com', 'admin-login', 'Admin vasanth s logged in', NULL, NULL, '2025-10-11 06:01:06', NULL, NULL, NULL, NULL, NULL),
(445, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 06:01:06', 2, NULL, NULL, 'admin', NULL),
(446, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 06:01:06', 2, NULL, NULL, 'admin', NULL),
(447, NULL, 'CSC123456', 'voter-login', 'Logged in', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '2025-10-11 06:01:42', NULL, NULL, NULL, NULL, NULL),
(448, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 06:51:49', 2, NULL, NULL, 'admin', NULL),
(449, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 06:51:49', 2, NULL, NULL, 'admin', NULL),
(450, NULL, NULL, 'POST /api/admin/login', '{\"email\":\"restoreking26@gmail.com\",\"password\":\"123456\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 07:55:15', NULL, 'Unknown Admin', NULL, NULL, NULL),
(451, NULL, 'restoreking26@gmail.com', 'admin-login', 'Admin vasanth s logged in', NULL, NULL, '2025-10-11 07:55:15', NULL, NULL, NULL, NULL, NULL),
(452, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 07:55:16', 2, NULL, NULL, 'admin', NULL),
(453, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 07:55:16', 2, NULL, NULL, 'admin', NULL),
(454, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 08:20:22', 2, NULL, NULL, 'admin', NULL),
(455, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 08:20:22', 2, NULL, NULL, 'admin', NULL),
(456, 2, NULL, 'POST /api/candidates/add', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 08:22:20', NULL, 'restoreking26@gmail.com', NULL, NULL, NULL),
(457, 2, NULL, 'POST /api/candidates/add', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 08:22:35', NULL, 'restoreking26@gmail.com', NULL, NULL, NULL),
(458, 2, NULL, 'PATCH /api/elections/4/pause', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 08:22:45', NULL, 'restoreking26@gmail.com', NULL, NULL, NULL),
(459, NULL, 'restoreking26@gmail.com', 'election-pause', 'Election #4 -> paused', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 08:22:45', 2, NULL, NULL, 'admin', NULL),
(460, 2, NULL, 'PATCH /api/elections/4/start', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 08:22:49', NULL, 'restoreking26@gmail.com', NULL, NULL, NULL),
(461, NULL, 'restoreking26@gmail.com', 'election-start', 'Election #4 -> running', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 08:22:49', 2, NULL, NULL, 'admin', NULL),
(462, 2, NULL, 'POST /api/candidates/add', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 08:23:13', NULL, 'restoreking26@gmail.com', NULL, NULL, NULL),
(463, 2, NULL, 'POST /api/candidates/add', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 08:23:17', NULL, 'restoreking26@gmail.com', NULL, NULL, NULL),
(464, 2, NULL, 'POST /api/candidates/add', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 08:23:37', NULL, 'restoreking26@gmail.com', NULL, NULL, NULL),
(465, 2, NULL, 'POST /api/candidates/add', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 08:24:26', NULL, 'restoreking26@gmail.com', NULL, NULL, NULL),
(466, 2, NULL, 'POST /api/candidates/add', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 08:24:37', NULL, 'restoreking26@gmail.com', NULL, NULL, NULL),
(467, NULL, NULL, 'POST /api/admin/login', '{\"email\":\"admin1000@gmail.com\",\"password\":\"12345\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '2025-10-11 08:53:48', NULL, 'Unknown Admin', NULL, NULL, NULL),
(468, NULL, NULL, 'POST /api/admin/login', '{\"email\":\"restoreking26@gmail.com\",\"password\":\"123456\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 08:54:08', NULL, 'Unknown Admin', NULL, NULL, NULL),
(469, NULL, 'restoreking26@gmail.com', 'admin-login', 'Admin vasanth s logged in', NULL, NULL, '2025-10-11 08:54:08', NULL, NULL, NULL, NULL, NULL),
(470, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 08:54:09', 2, NULL, NULL, 'admin', NULL),
(471, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 08:54:09', 2, NULL, NULL, 'admin', NULL),
(472, 2, NULL, 'POST /api/candidates/add', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 08:55:25', NULL, 'restoreking26@gmail.com', NULL, NULL, NULL),
(473, NULL, 'restoreking26@gmail.com', 'create-candidate', 'Added candidate: vijay_anil0 (ID: 10)', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 08:55:26', 2, NULL, NULL, 'admin', NULL),
(474, 2, NULL, 'PATCH /api/candidates/approve/10', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 09:11:20', NULL, 'restoreking26@gmail.com', NULL, NULL, NULL),
(475, NULL, 'restoreking26@gmail.com', 'approve-candidate', 'Approved candidate ID: 10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 09:11:20', 2, NULL, NULL, 'admin', NULL),
(476, 2, NULL, 'PATCH /api/candidates/approve/10', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 09:11:48', NULL, 'restoreking26@gmail.com', NULL, NULL, NULL),
(477, NULL, 'restoreking26@gmail.com', 'approve-candidate', 'Approved candidate ID: 10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 09:11:48', 2, NULL, NULL, 'admin', NULL),
(478, 2, NULL, 'PATCH /api/candidates/reject/10', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 09:11:50', NULL, 'restoreking26@gmail.com', NULL, NULL, NULL),
(479, NULL, 'restoreking26@gmail.com', 'reject-candidate', 'Rejected candidate ID: 10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 09:11:50', 2, NULL, NULL, 'admin', NULL),
(480, 2, NULL, 'PATCH /api/candidates/approve/10', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 09:11:54', NULL, 'restoreking26@gmail.com', NULL, NULL, NULL),
(481, NULL, 'restoreking26@gmail.com', 'approve-candidate', 'Approved candidate ID: 10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 09:11:54', 2, NULL, NULL, 'admin', NULL),
(482, 2, NULL, 'PATCH /api/candidates/approve/10', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 09:18:30', NULL, 'restoreking26@gmail.com', NULL, NULL, NULL),
(483, NULL, 'restoreking26@gmail.com', 'approve-candidate', 'Approved candidate ID: 10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 09:18:30', 2, NULL, NULL, 'admin', NULL),
(484, NULL, '18', 'voter-cast-vote', 'Voted for candidate 10', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '2025-10-11 09:19:38', 18, NULL, NULL, 'voter', NULL),
(485, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 09:23:21', 2, NULL, NULL, 'admin', NULL),
(486, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 09:23:21', 2, NULL, NULL, 'admin', NULL),
(487, 2, NULL, 'PATCH /api/candidates/approve/9', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 09:24:19', NULL, 'restoreking26@gmail.com', NULL, NULL, NULL),
(488, NULL, 'restoreking26@gmail.com', 'approve-candidate', 'Approved candidate ID: 9', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 09:24:19', 2, NULL, NULL, 'admin', NULL),
(489, 2, NULL, 'DELETE /api/candidates/delete/10', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 09:24:45', NULL, 'restoreking26@gmail.com', NULL, NULL, NULL),
(490, NULL, 'restoreking26@gmail.com', 'delete-candidate', 'Deleted candidate ID: 10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 09:24:45', 2, NULL, NULL, 'admin', NULL),
(491, 2, NULL, 'DELETE /api/candidates/delete/9', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 09:24:48', NULL, 'restoreking26@gmail.com', NULL, NULL, NULL),
(492, NULL, 'restoreking26@gmail.com', 'delete-candidate', 'Deleted candidate ID: 9', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 09:24:48', 2, NULL, NULL, 'admin', NULL),
(493, 2, NULL, 'PATCH /api/elections/4/stop', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 09:25:00', NULL, 'restoreking26@gmail.com', NULL, NULL, NULL),
(494, NULL, 'restoreking26@gmail.com', 'election-stop', 'Election #4 -> ended', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 09:25:00', 2, NULL, NULL, 'admin', NULL),
(495, 2, NULL, 'POST /api/candidates/add', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 09:25:44', NULL, 'restoreking26@gmail.com', NULL, NULL, NULL),
(496, NULL, 'restoreking26@gmail.com', 'create-candidate', 'Added candidate: vijay_anil0 (ID: 11)', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 09:25:44', 2, NULL, NULL, 'admin', NULL),
(497, 2, NULL, 'PATCH /api/candidates/approve/11', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 09:25:47', NULL, 'restoreking26@gmail.com', NULL, NULL, NULL),
(498, NULL, 'restoreking26@gmail.com', 'approve-candidate', 'Approved candidate ID: 11', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 09:25:47', 2, NULL, NULL, 'admin', NULL),
(499, 2, NULL, 'PATCH /api/candidates/approve/11', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 09:26:19', NULL, 'restoreking26@gmail.com', NULL, NULL, NULL),
(500, NULL, 'restoreking26@gmail.com', 'approve-candidate', 'Approved candidate ID: 11', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 09:26:19', 2, NULL, NULL, 'admin', NULL),
(501, 2, NULL, 'DELETE /api/elections/delete/4', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 09:26:41', NULL, 'restoreking26@gmail.com', NULL, NULL, NULL),
(502, NULL, 'restoreking26@gmail.com', 'delete-election', 'Deleted election #4', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 09:26:41', 2, NULL, NULL, 'admin', NULL),
(503, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 09:26:44', 2, NULL, NULL, 'admin', NULL),
(504, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 09:26:44', 2, NULL, NULL, 'admin', NULL),
(505, 2, NULL, 'POST /api/elections/add', '{\"title\":\"ak\",\"description\":\"election\",\"start_date\":\"2025-10-11 11:27:00\",\"end_date\":\"2025-10-12 09:27:00\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 09:27:32', NULL, 'restoreking26@gmail.com', NULL, NULL, NULL),
(506, NULL, 'restoreking26@gmail.com', 'create-election', 'Created election ak (#5)', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 09:27:32', 2, NULL, NULL, 'admin', NULL),
(507, 2, NULL, 'PATCH /api/elections/5/start', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 09:27:36', NULL, 'restoreking26@gmail.com', NULL, NULL, NULL),
(508, NULL, 'restoreking26@gmail.com', 'election-start', 'Election #5 -> running', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 09:27:36', 2, NULL, NULL, 'admin', NULL),
(509, 2, NULL, 'POST /api/candidates/add', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 09:27:47', NULL, 'restoreking26@gmail.com', NULL, NULL, NULL),
(510, NULL, 'restoreking26@gmail.com', 'create-candidate', 'Added candidate: vijay_anil0 (ID: 12)', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 09:27:47', 2, NULL, NULL, 'admin', NULL),
(511, 2, NULL, 'PATCH /api/candidates/approve/12', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 09:27:48', NULL, 'restoreking26@gmail.com', NULL, NULL, NULL),
(512, NULL, 'restoreking26@gmail.com', 'approve-candidate', 'Approved candidate ID: 12', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 09:27:48', 2, NULL, NULL, 'admin', NULL),
(513, NULL, '18', 'voter-cast-vote', 'Voted for candidate 12', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '2025-10-11 09:28:46', 18, NULL, NULL, 'voter', NULL),
(514, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 09:29:23', 2, NULL, NULL, 'admin', NULL),
(515, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 09:29:23', 2, NULL, NULL, 'admin', NULL),
(516, 2, NULL, 'POST /api/candidates/add', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 09:31:01', NULL, 'restoreking26@gmail.com', NULL, NULL, NULL),
(517, NULL, 'restoreking26@gmail.com', 'create-candidate', 'Added candidate: vijay_anil (ID: 13)', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 09:31:01', 2, NULL, NULL, 'admin', NULL),
(518, 2, NULL, 'PATCH /api/candidates/approve/13', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 09:31:18', NULL, 'restoreking26@gmail.com', NULL, NULL, NULL),
(519, NULL, 'restoreking26@gmail.com', 'approve-candidate', 'Approved candidate ID: 13', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 09:31:18', 2, NULL, NULL, 'admin', NULL),
(520, 2, NULL, 'PATCH /api/candidates/approve/12', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 09:31:21', NULL, 'restoreking26@gmail.com', NULL, NULL, NULL),
(521, NULL, 'restoreking26@gmail.com', 'approve-candidate', 'Approved candidate ID: 12', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 09:31:21', 2, NULL, NULL, 'admin', NULL),
(522, 2, NULL, 'POST /api/elections/add', '{\"title\":\"vj\",\"description\":\"elevction\",\"start_date\":\"2025-10-11 10:33:00\",\"end_date\":\"2025-10-11 12:31:00\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 09:32:37', NULL, 'restoreking26@gmail.com', NULL, NULL, NULL),
(523, NULL, 'restoreking26@gmail.com', 'create-election', 'Created election vj (#6)', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 09:32:37', 2, NULL, NULL, 'admin', NULL),
(524, 2, NULL, 'POST /api/candidates/add', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 09:33:05', NULL, 'restoreking26@gmail.com', NULL, NULL, NULL),
(525, NULL, 'restoreking26@gmail.com', 'create-candidate', 'Added candidate: vijay (ID: 14)', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 09:33:05', 2, NULL, NULL, 'admin', NULL),
(526, 2, NULL, 'PATCH /api/candidates/approve/12', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 09:33:13', NULL, 'restoreking26@gmail.com', NULL, NULL, NULL),
(527, NULL, 'restoreking26@gmail.com', 'approve-candidate', 'Approved candidate ID: 12', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 09:33:13', 2, NULL, NULL, 'admin', NULL),
(528, 2, NULL, 'PATCH /api/candidates/approve/13', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 09:33:16', NULL, 'restoreking26@gmail.com', NULL, NULL, NULL),
(529, NULL, 'restoreking26@gmail.com', 'approve-candidate', 'Approved candidate ID: 13', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 09:33:16', 2, NULL, NULL, 'admin', NULL),
(530, 2, NULL, 'PATCH /api/candidates/approve/14', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 09:33:16', NULL, 'restoreking26@gmail.com', NULL, NULL, NULL),
(531, NULL, 'restoreking26@gmail.com', 'approve-candidate', 'Approved candidate ID: 14', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 09:33:16', 2, NULL, NULL, 'admin', NULL),
(532, 2, NULL, 'PATCH /api/elections/6/start', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 09:33:39', NULL, 'restoreking26@gmail.com', NULL, NULL, NULL),
(533, NULL, 'restoreking26@gmail.com', 'election-start', 'Election #6 -> running', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 09:33:39', 2, NULL, NULL, 'admin', NULL),
(534, 2, NULL, 'PATCH /api/elections/5/pause', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 09:34:15', NULL, 'restoreking26@gmail.com', NULL, NULL, NULL),
(535, NULL, 'restoreking26@gmail.com', 'election-pause', 'Election #5 -> paused', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 09:34:15', 2, NULL, NULL, 'admin', NULL),
(536, 2, NULL, 'DELETE /api/elections/delete/5', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 09:34:33', NULL, 'restoreking26@gmail.com', NULL, NULL, NULL),
(537, NULL, 'restoreking26@gmail.com', 'delete-election', 'Deleted election #5', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 09:34:33', 2, NULL, NULL, 'admin', NULL),
(538, NULL, '18', 'voter-cast-vote', 'Voted for candidate 14', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '2025-10-11 09:35:12', 18, NULL, NULL, 'voter', NULL),
(539, 2, NULL, 'DELETE /api/elections/delete/6', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 09:42:47', NULL, 'restoreking26@gmail.com', NULL, NULL, NULL),
(540, NULL, 'restoreking26@gmail.com', 'delete-election', 'Deleted election #6', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 09:42:47', 2, NULL, NULL, 'admin', NULL),
(541, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 09:45:22', 2, NULL, NULL, 'admin', NULL),
(542, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 09:45:22', 2, NULL, NULL, 'admin', NULL),
(543, 2, NULL, 'POST /api/elections/add', '{\"title\":\"vj\",\"description\":\"elec\",\"start_date\":\"2025-10-11 10:49:00\",\"end_date\":\"2025-10-12 09:50:00\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 09:50:05', NULL, 'restoreking26@gmail.com', NULL, NULL, NULL),
(544, NULL, 'restoreking26@gmail.com', 'create-election', 'Created election vj (#7)', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 09:50:05', 2, NULL, NULL, 'admin', NULL),
(545, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 09:50:07', 2, NULL, NULL, 'admin', NULL),
(546, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 09:50:07', 2, NULL, NULL, 'admin', NULL),
(547, 2, NULL, 'POST /api/candidates/add', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 09:50:17', NULL, 'restoreking26@gmail.com', NULL, NULL, NULL),
(548, NULL, 'restoreking26@gmail.com', 'create-candidate', 'Added candidate: vijay (ID: 15)', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 09:50:17', 2, NULL, NULL, 'admin', NULL),
(549, 2, NULL, 'PATCH /api/candidates/approve/15', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 09:50:20', NULL, 'restoreking26@gmail.com', NULL, NULL, NULL),
(550, NULL, 'restoreking26@gmail.com', 'approve-candidate', 'Approved candidate ID: 15', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 09:50:20', 2, NULL, NULL, 'admin', NULL),
(551, 2, NULL, 'PATCH /api/elections/7/start', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 09:50:50', NULL, 'restoreking26@gmail.com', NULL, NULL, NULL),
(552, NULL, 'restoreking26@gmail.com', 'election-start', 'Election #7 -> running', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 09:50:50', 2, NULL, NULL, 'admin', NULL),
(553, NULL, '18', 'voter-cast-vote', 'Voted for candidate 15', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', '2025-10-11 09:51:50', 18, NULL, NULL, 'voter', NULL),
(554, 2, NULL, 'PATCH /api/candidates/approve/15', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 09:52:13', NULL, 'restoreking26@gmail.com', NULL, NULL, NULL),
(555, NULL, 'restoreking26@gmail.com', 'approve-candidate', 'Approved candidate ID: 15', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 09:52:13', 2, NULL, NULL, 'admin', NULL),
(556, 2, NULL, 'POST /api/elections/add', '{\"title\":\"ak\",\"description\":\"elec\",\"start_date\":\"2025-10-11 10:52:00\",\"end_date\":\"2025-10-12 09:52:00\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 09:52:49', NULL, 'restoreking26@gmail.com', NULL, NULL, NULL),
(557, NULL, 'restoreking26@gmail.com', 'create-election', 'Created election ak (#8)', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 09:52:49', 2, NULL, NULL, 'admin', NULL),
(558, 2, NULL, 'POST /api/candidates/add', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 09:53:59', NULL, 'restoreking26@gmail.com', NULL, NULL, NULL),
(559, NULL, 'restoreking26@gmail.com', 'create-candidate', 'Added candidate: ak (ID: 16)', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 09:53:59', 2, NULL, NULL, 'admin', NULL),
(560, 2, NULL, 'PATCH /api/candidates/approve/15', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 09:54:25', NULL, 'restoreking26@gmail.com', NULL, NULL, NULL),
(561, NULL, 'restoreking26@gmail.com', 'approve-candidate', 'Approved candidate ID: 15', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 09:54:25', 2, NULL, NULL, 'admin', NULL),
(562, 2, NULL, 'PATCH /api/candidates/approve/15', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 09:55:07', NULL, 'restoreking26@gmail.com', NULL, NULL, NULL),
(563, NULL, 'restoreking26@gmail.com', 'approve-candidate', 'Approved candidate ID: 15', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 09:55:07', 2, NULL, NULL, 'admin', NULL),
(564, 2, NULL, 'PATCH /api/candidates/approve/16', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 09:58:08', NULL, 'restoreking26@gmail.com', NULL, NULL, NULL),
(565, NULL, 'restoreking26@gmail.com', 'approve-candidate', 'Approved candidate ID: 16', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 09:58:08', 2, NULL, NULL, 'admin', NULL),
(566, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 09:59:15', 2, NULL, NULL, 'admin', NULL),
(567, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 09:59:15', 2, NULL, NULL, 'admin', NULL),
(568, NULL, 'restoreking26@gmail.com', 'publish-results', 'Set election ID 7 to published', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 09:59:43', 2, NULL, NULL, 'admin', NULL),
(569, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 10:03:34', 2, NULL, NULL, 'admin', NULL),
(570, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 10:03:34', 2, NULL, NULL, 'admin', NULL),
(571, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 10:03:38', 2, NULL, NULL, 'admin', NULL),
(572, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 10:03:38', 2, NULL, NULL, 'admin', NULL),
(573, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 10:03:42', 2, NULL, NULL, 'admin', NULL),
(574, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 10:03:42', 2, NULL, NULL, 'admin', NULL),
(575, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 10:03:44', 2, NULL, NULL, 'admin', NULL),
(576, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 10:03:44', 2, NULL, NULL, 'admin', NULL),
(577, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 10:04:25', 2, NULL, NULL, 'admin', NULL),
(578, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 10:04:25', 2, NULL, NULL, 'admin', NULL),
(579, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 10:04:32', 2, NULL, NULL, 'admin', NULL),
(580, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 10:04:32', 2, NULL, NULL, 'admin', NULL),
(581, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 10:04:44', 2, NULL, NULL, 'admin', NULL),
(582, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 10:04:44', 2, NULL, NULL, 'admin', NULL),
(583, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 10:05:05', 2, NULL, NULL, 'admin', NULL),
(584, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 10:05:05', 2, NULL, NULL, 'admin', NULL),
(585, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 10:10:26', 2, NULL, NULL, 'admin', NULL),
(586, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 10:11:28', 2, NULL, NULL, 'admin', NULL),
(587, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 10:11:28', 2, NULL, NULL, 'admin', NULL),
(588, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 10:15:37', 2, NULL, NULL, 'admin', NULL),
(589, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 10:15:37', 2, NULL, NULL, 'admin', NULL),
(590, NULL, 'restoreking26@gmail.com', 'publish-results', 'Set election ID 8 to unpublished', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 10:21:52', 2, NULL, NULL, 'admin', NULL),
(591, NULL, 'restoreking26@gmail.com', 'publish-results', 'Set election ID 8 to unpublished', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 10:21:56', 2, NULL, NULL, 'admin', NULL),
(592, NULL, 'restoreking26@gmail.com', 'publish-results', 'Set election ID 8 to unpublished', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 10:22:01', 2, NULL, NULL, 'admin', NULL),
(593, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 10:30:16', 2, NULL, NULL, 'admin', NULL),
(594, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 10:30:16', 2, NULL, NULL, 'admin', NULL),
(595, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 10:30:27', 2, NULL, NULL, 'admin', NULL),
(596, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 10:30:27', 2, NULL, NULL, 'admin', NULL),
(597, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 10:30:42', 2, NULL, NULL, 'admin', NULL),
(598, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 10:30:42', 2, NULL, NULL, 'admin', NULL),
(599, NULL, 'restoreking26@gmail.com', 'publish-results', 'Set election ID 8 to unpublished', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 10:30:50', 2, NULL, NULL, 'admin', NULL),
(600, NULL, 'restoreking26@gmail.com', 'publish-results', 'Set election ID 8 to unpublished', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-11 10:30:51', 2, NULL, NULL, 'admin', NULL),
(601, NULL, NULL, 'POST /api/admin/login', '{\"email\":\"restoreking26@gmail.com\",\"password\":\"123456\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-10-13 08:01:56', NULL, 'Unknown Admin', NULL, NULL, NULL),
(602, NULL, 'restoreking26@gmail.com', 'admin-login', 'Admin vasanth s logged in', NULL, NULL, '2025-10-13 08:01:56', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `audit_logs` (`id`, `admin_id`, `user_identifier`, `action`, `details`, `ip_address`, `user_agent`, `created_at`, `actor_id`, `admin_email`, `election_id`, `actor_role`, `ip`) VALUES
(603, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-10-13 08:01:57', 2, NULL, NULL, 'admin', NULL),
(604, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-10-13 08:01:57', 2, NULL, NULL, 'admin', NULL),
(605, NULL, 'CSC123456', 'voter-login', 'Logged in', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-13 08:02:15', NULL, NULL, NULL, NULL, NULL),
(606, NULL, 'restoreking26@gmail.com', 'admin-upload-csv', 'Inserted 2; duplicates 0', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-10-13 08:03:18', 2, NULL, NULL, 'admin', NULL),
(607, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-10-13 08:03:18', 2, NULL, NULL, 'admin', NULL),
(608, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-10-13 08:03:31', 2, NULL, NULL, 'admin', NULL),
(609, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-10-13 08:03:31', 2, NULL, NULL, 'admin', NULL),
(610, 2, NULL, 'PATCH /api/elections/7/pause', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-10-13 08:03:49', NULL, 'restoreking26@gmail.com', NULL, NULL, NULL),
(611, NULL, 'restoreking26@gmail.com', 'election-pause', 'Election #7 -> paused', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-10-13 08:03:49', 2, NULL, NULL, 'admin', NULL),
(612, NULL, 'restoreking26@gmail.com', 'publish-results', 'Set election ID 8 to unpublished', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-10-13 08:05:44', 2, NULL, NULL, 'admin', NULL),
(613, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-10-13 08:05:52', 2, NULL, NULL, 'admin', NULL),
(614, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-10-13 08:05:52', 2, NULL, NULL, 'admin', NULL),
(615, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-10-13 08:05:55', 2, NULL, NULL, 'admin', NULL),
(616, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-10-13 08:05:56', 2, NULL, NULL, 'admin', NULL),
(617, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-10-13 08:32:28', 2, NULL, NULL, 'admin', NULL),
(618, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-10-13 08:32:28', 2, NULL, NULL, 'admin', NULL),
(619, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-10-13 08:32:31', 2, NULL, NULL, 'admin', NULL),
(620, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-10-13 08:32:31', 2, NULL, NULL, 'admin', NULL),
(621, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-10-13 08:33:29', 2, NULL, NULL, 'admin', NULL),
(622, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-10-13 08:33:29', 2, NULL, NULL, 'admin', NULL),
(623, NULL, 'CSC123456', 'voter-login', 'Logged in', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-13 08:38:02', NULL, NULL, NULL, NULL, NULL),
(624, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-10-13 09:36:26', 2, NULL, NULL, 'admin', NULL),
(625, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-10-13 09:36:26', 2, NULL, NULL, 'admin', NULL),
(626, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-10-13 09:36:27', 2, NULL, NULL, 'admin', NULL),
(627, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-10-13 09:36:27', 2, NULL, NULL, 'admin', NULL),
(628, 2, NULL, 'PATCH /api/elections/8/start', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-10-13 09:45:57', NULL, 'restoreking26@gmail.com', NULL, NULL, NULL),
(629, NULL, 'restoreking26@gmail.com', 'election-start', 'Election #8 -> running', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-10-13 09:45:57', 2, NULL, NULL, 'admin', NULL),
(630, NULL, 'CSC123456', 'voter-cast-vote', 'Voted for candidate 16', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', '2025-10-13 09:48:26', 18, NULL, NULL, 'voter', NULL),
(631, NULL, 'restoreking26@gmail.com', 'publish-results', 'Set election ID 8 to unpublished', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-10-13 10:03:05', 2, NULL, NULL, 'admin', NULL),
(632, NULL, 'restoreking26@gmail.com', 'publish-results', 'Set election ID 8 to unpublished', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-10-13 10:25:03', 2, NULL, NULL, 'admin', NULL),
(633, NULL, NULL, 'POST /api/admin/login', '{\"email\":\"restoreking26@gmail.copm\",\"password\":\"123456\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-10-22 09:28:01', NULL, 'Unknown Admin', NULL, NULL, NULL),
(634, NULL, NULL, 'POST /api/admin/login', '{\"email\":\"restoreking26@gmail.com\",\"password\":\"123456\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-10-22 09:28:09', NULL, 'Unknown Admin', NULL, NULL, NULL),
(635, NULL, 'restoreking26@gmail.com', 'admin-login', 'Admin vasanth s logged in', NULL, NULL, '2025-10-22 09:28:09', NULL, NULL, NULL, NULL, NULL),
(636, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-10-22 09:28:11', 2, NULL, NULL, 'admin', NULL),
(637, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-10-22 09:28:11', 2, NULL, NULL, 'admin', NULL),
(638, NULL, NULL, 'POST /api/admin/login', '{\"email\":\"restoreking26@gmail.com\",\"password\":\"123456\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-10-22 10:28:54', NULL, 'Unknown Admin', NULL, NULL, NULL),
(639, NULL, 'restoreking26@gmail.com', 'admin-login', 'Admin vasanth s logged in', NULL, NULL, '2025-10-22 10:28:55', NULL, NULL, NULL, NULL, NULL),
(640, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-10-22 10:28:56', 2, NULL, NULL, 'admin', NULL),
(641, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-10-22 10:28:56', 2, NULL, NULL, 'admin', NULL),
(642, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-10-22 10:29:11', 2, NULL, NULL, 'admin', NULL),
(643, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-10-22 10:29:26', 2, NULL, NULL, 'admin', NULL),
(644, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-10-22 10:29:41', 2, NULL, NULL, 'admin', NULL),
(645, NULL, NULL, 'POST /api/admin/login', '{\"email\":\"restoreking26@gmail.com\",\"password\":\"123456\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-10-23 06:44:47', NULL, 'Unknown Admin', NULL, NULL, NULL),
(646, NULL, 'restoreking26@gmail.com', 'admin-login', 'Admin vasanth s logged in', NULL, NULL, '2025-10-23 06:44:47', NULL, NULL, NULL, NULL, NULL),
(647, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-10-23 06:44:48', 2, NULL, NULL, 'admin', NULL),
(648, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-10-23 06:44:48', 2, NULL, NULL, 'admin', NULL),
(649, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-10-23 06:45:00', 2, NULL, NULL, 'admin', NULL),
(650, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-10-23 06:45:00', 2, NULL, NULL, 'admin', NULL),
(651, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-10-23 06:48:47', 2, NULL, NULL, 'admin', NULL),
(652, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-10-23 06:48:47', 2, NULL, NULL, 'admin', NULL),
(653, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-10-23 06:49:02', 2, NULL, NULL, 'admin', NULL),
(654, NULL, NULL, 'POST /api/admin/login', '{\"email\":\"restoreking26@gmail.com\",\"password\":\"123456\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-10-23 08:04:52', NULL, 'Unknown Admin', NULL, NULL, NULL),
(655, NULL, 'restoreking26@gmail.com', 'admin-login', 'Admin vasanth s logged in', NULL, NULL, '2025-10-23 08:04:52', NULL, NULL, NULL, NULL, NULL),
(656, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-10-23 08:04:53', 2, NULL, NULL, 'admin', NULL),
(657, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-10-23 08:04:53', 2, NULL, NULL, 'admin', NULL),
(658, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-10-23 09:23:01', 2, NULL, NULL, 'admin', NULL),
(659, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-10-23 09:23:01', 2, NULL, NULL, 'admin', NULL),
(660, NULL, 'CSC123456', 'voter-login', 'Logged in', NULL, NULL, '2025-10-23 09:31:02', NULL, NULL, NULL, NULL, NULL),
(661, NULL, NULL, 'POST /api/admin/login', '{\"email\":\"hari@gmail.com\",\"password\":\"123456\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-10-25 10:30:35', NULL, 'Unknown Admin', NULL, NULL, NULL),
(662, NULL, NULL, 'POST /api/admin/login', '{\"email\":\"restoreking26@gmail.com\",\"password\":\"123456\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-10-25 10:30:47', NULL, 'Unknown Admin', NULL, NULL, NULL),
(663, NULL, 'restoreking26@gmail.com', 'admin-login', 'Admin vasanth s logged in', NULL, NULL, '2025-10-25 10:30:47', NULL, NULL, NULL, NULL, NULL),
(664, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-10-25 10:30:48', 2, NULL, NULL, 'admin', NULL),
(665, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-10-25 10:30:48', 2, NULL, NULL, 'admin', NULL),
(666, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-10-25 10:30:51', 2, NULL, NULL, 'admin', NULL),
(667, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-10-25 10:30:51', 2, NULL, NULL, 'admin', NULL),
(668, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-10-25 10:31:42', 2, NULL, NULL, 'admin', NULL),
(669, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-10-25 10:31:42', 2, NULL, NULL, 'admin', NULL),
(670, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-10-25 10:31:57', 2, NULL, NULL, 'admin', NULL),
(671, 2, NULL, 'PATCH /api/elections/8/pause', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-10-25 10:32:42', NULL, 'restoreking26@gmail.com', NULL, NULL, NULL),
(672, NULL, 'restoreking26@gmail.com', 'election-pause', 'Election #8 -> paused', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-10-25 10:32:42', 2, NULL, NULL, 'admin', NULL),
(673, 2, NULL, 'PATCH /api/elections/8/start', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-10-25 10:32:43', NULL, 'restoreking26@gmail.com', NULL, NULL, NULL),
(674, NULL, 'restoreking26@gmail.com', 'election-start', 'Election #8 -> running', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-10-25 10:32:43', 2, NULL, NULL, 'admin', NULL),
(675, NULL, NULL, 'POST /api/admin/login', '{\"email\":\"restoreking26@gmail.com\",\"password\":\"123456\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 04:27:14', NULL, 'Unknown Admin', NULL, NULL, NULL),
(676, NULL, 'restoreking26@gmail.com', 'admin-login', 'Admin vasanth s logged in', NULL, NULL, '2025-11-21 04:27:14', NULL, NULL, NULL, NULL, NULL),
(677, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 04:27:15', 2, NULL, NULL, 'admin', NULL),
(678, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 04:27:15', 2, NULL, NULL, 'admin', NULL),
(679, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 04:27:20', 2, NULL, NULL, 'admin', NULL),
(680, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 04:27:20', 2, NULL, NULL, 'admin', NULL),
(681, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 04:27:58', 2, NULL, NULL, 'admin', NULL),
(682, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 04:27:58', 2, NULL, NULL, 'admin', NULL),
(683, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 04:28:13', 2, NULL, NULL, 'admin', NULL),
(684, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 04:28:28', 2, NULL, NULL, 'admin', NULL),
(685, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 04:28:43', 2, NULL, NULL, 'admin', NULL),
(686, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 04:28:58', 2, NULL, NULL, 'admin', NULL),
(687, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 04:29:13', 2, NULL, NULL, 'admin', NULL),
(688, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 04:29:28', 2, NULL, NULL, 'admin', NULL),
(689, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 04:29:43', 2, NULL, NULL, 'admin', NULL),
(690, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 04:29:58', 2, NULL, NULL, 'admin', NULL),
(691, NULL, 'restoreking26@gmail.com', 'admin-add-voter', 'Added voter CS02004', NULL, NULL, '2025-11-21 04:29:59', NULL, NULL, NULL, NULL, NULL),
(692, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 04:29:59', 2, NULL, NULL, 'admin', NULL),
(693, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 04:30:03', 2, NULL, NULL, 'admin', NULL),
(694, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 04:30:03', 2, NULL, NULL, 'admin', NULL),
(695, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 04:30:19', 2, NULL, NULL, 'admin', NULL),
(696, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 04:30:33', 2, NULL, NULL, 'admin', NULL),
(697, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 04:30:48', 2, NULL, NULL, 'admin', NULL),
(698, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 04:31:03', 2, NULL, NULL, 'admin', NULL),
(699, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 04:31:18', 2, NULL, NULL, 'admin', NULL),
(700, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 04:31:33', 2, NULL, NULL, 'admin', NULL),
(701, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 04:31:38', 2, NULL, NULL, 'admin', NULL),
(702, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 04:31:38', 2, NULL, NULL, 'admin', NULL),
(703, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 04:31:54', 2, NULL, NULL, 'admin', NULL),
(704, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 04:32:09', 2, NULL, NULL, 'admin', NULL),
(705, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 04:32:24', 2, NULL, NULL, 'admin', NULL),
(706, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 04:32:39', 2, NULL, NULL, 'admin', NULL),
(707, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 04:32:54', 2, NULL, NULL, 'admin', NULL),
(708, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 04:33:09', 2, NULL, NULL, 'admin', NULL),
(709, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 04:33:44', 2, NULL, NULL, 'admin', NULL),
(710, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 04:34:44', 2, NULL, NULL, 'admin', NULL),
(711, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 04:35:44', 2, NULL, NULL, 'admin', NULL),
(712, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 04:36:44', 2, NULL, NULL, 'admin', NULL),
(713, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 04:37:44', 2, NULL, NULL, 'admin', NULL),
(714, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 04:38:44', 2, NULL, NULL, 'admin', NULL),
(715, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 04:39:44', 2, NULL, NULL, 'admin', NULL),
(716, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 04:40:44', 2, NULL, NULL, 'admin', NULL),
(717, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 04:41:44', 2, NULL, NULL, 'admin', NULL),
(718, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 04:42:44', 2, NULL, NULL, 'admin', NULL),
(719, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 04:43:44', 2, NULL, NULL, 'admin', NULL),
(720, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 04:44:44', 2, NULL, NULL, 'admin', NULL),
(721, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 04:45:44', 2, NULL, NULL, 'admin', NULL),
(722, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 04:46:44', 2, NULL, NULL, 'admin', NULL),
(723, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 04:47:44', 2, NULL, NULL, 'admin', NULL),
(724, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 04:48:44', 2, NULL, NULL, 'admin', NULL),
(725, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 04:49:44', 2, NULL, NULL, 'admin', NULL),
(726, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 05:07:11', 2, NULL, NULL, 'admin', NULL),
(727, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 05:07:44', 2, NULL, NULL, 'admin', NULL),
(728, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 05:08:44', 2, NULL, NULL, 'admin', NULL),
(729, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 05:11:51', 2, NULL, NULL, 'admin', NULL),
(730, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 05:12:44', 2, NULL, NULL, 'admin', NULL),
(731, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 05:13:44', 2, NULL, NULL, 'admin', NULL),
(732, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 05:15:11', 2, NULL, NULL, 'admin', NULL),
(733, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 05:15:44', 2, NULL, NULL, 'admin', NULL),
(734, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 05:16:44', 2, NULL, NULL, 'admin', NULL),
(735, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 05:18:18', 2, NULL, NULL, 'admin', NULL),
(736, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 05:18:44', 2, NULL, NULL, 'admin', NULL),
(737, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 05:19:44', 2, NULL, NULL, 'admin', NULL),
(738, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 05:20:44', 2, NULL, NULL, 'admin', NULL),
(739, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 05:22:37', 2, NULL, NULL, 'admin', NULL),
(740, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 05:22:44', 2, NULL, NULL, 'admin', NULL),
(741, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 05:23:44', 2, NULL, NULL, 'admin', NULL),
(742, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 05:24:44', 2, NULL, NULL, 'admin', NULL),
(743, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 05:49:23', 2, NULL, NULL, 'admin', NULL),
(744, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 05:49:27', 2, NULL, NULL, 'admin', NULL),
(745, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 05:49:27', 2, NULL, NULL, 'admin', NULL),
(746, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 05:49:43', 2, NULL, NULL, 'admin', NULL),
(747, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 05:49:58', 2, NULL, NULL, 'admin', NULL),
(748, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 05:50:13', 2, NULL, NULL, 'admin', NULL),
(749, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 05:50:28', 2, NULL, NULL, 'admin', NULL),
(750, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 05:50:43', 2, NULL, NULL, 'admin', NULL),
(751, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 05:50:58', 2, NULL, NULL, 'admin', NULL),
(752, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 05:51:44', 2, NULL, NULL, 'admin', NULL),
(753, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 05:52:44', 2, NULL, NULL, 'admin', NULL),
(754, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 05:53:44', 2, NULL, NULL, 'admin', NULL),
(755, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 05:54:32', 2, NULL, NULL, 'admin', NULL),
(756, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 05:54:48', 2, NULL, NULL, 'admin', NULL),
(757, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 05:55:03', 2, NULL, NULL, 'admin', NULL),
(758, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 05:55:08', 2, NULL, NULL, 'admin', NULL),
(759, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 05:55:08', 2, NULL, NULL, 'admin', NULL),
(760, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 05:55:11', 2, NULL, NULL, 'admin', NULL),
(761, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 05:55:11', 2, NULL, NULL, 'admin', NULL),
(762, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 05:55:27', 2, NULL, NULL, 'admin', NULL),
(763, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 05:55:42', 2, NULL, NULL, 'admin', NULL),
(764, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 05:55:57', 2, NULL, NULL, 'admin', NULL),
(765, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 05:56:12', 2, NULL, NULL, 'admin', NULL),
(766, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 05:56:27', 2, NULL, NULL, 'admin', NULL),
(767, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 05:56:42', 2, NULL, NULL, 'admin', NULL),
(768, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 05:57:44', 2, NULL, NULL, 'admin', NULL),
(769, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 05:58:44', 2, NULL, NULL, 'admin', NULL),
(770, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 05:59:44', 2, NULL, NULL, 'admin', NULL),
(771, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 06:00:44', 2, NULL, NULL, 'admin', NULL),
(772, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 06:01:00', 2, NULL, NULL, 'admin', NULL),
(773, NULL, 'CSC123456', 'voter-login', 'Logged in', NULL, NULL, '2025-11-21 06:01:21', NULL, NULL, NULL, NULL, NULL),
(774, NULL, 'CS02004', 'voter-auto-verify', '❌ Mismatch during self-register (MCA/2/2004-03-26) expected (MCA/2/2004-03-25)', NULL, NULL, '2025-11-21 06:10:17', NULL, NULL, NULL, NULL, NULL),
(775, NULL, NULL, 'POST /api/admin/login', '{\"email\":\"restoreking26@gmail.com\",\"password\":\"123456\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 06:17:27', NULL, 'Unknown Admin', NULL, NULL, NULL),
(776, NULL, 'restoreking26@gmail.com', 'admin-login', 'Admin vasanth s logged in', NULL, NULL, '2025-11-21 06:17:27', NULL, NULL, NULL, NULL, NULL),
(777, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 06:17:28', 2, NULL, NULL, 'admin', NULL),
(778, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 06:17:28', 2, NULL, NULL, 'admin', NULL),
(779, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 06:17:32', 2, NULL, NULL, 'admin', NULL),
(780, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 06:17:32', 2, NULL, NULL, 'admin', NULL),
(781, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 06:17:47', 2, NULL, NULL, 'admin', NULL),
(782, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 06:18:02', 2, NULL, NULL, 'admin', NULL),
(783, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 06:18:17', 2, NULL, NULL, 'admin', NULL),
(784, NULL, 'restoreking26@gmail.com', 'admin-add-voter', 'Added voter CSC2004', NULL, NULL, '2025-11-21 06:18:25', NULL, NULL, NULL, NULL, NULL),
(785, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 06:18:25', 2, NULL, NULL, 'admin', NULL),
(786, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 06:18:27', 2, NULL, NULL, 'admin', NULL),
(787, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 06:18:27', 2, NULL, NULL, 'admin', NULL),
(788, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 06:18:43', 2, NULL, NULL, 'admin', NULL),
(789, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 06:18:58', 2, NULL, NULL, 'admin', NULL);
INSERT INTO `audit_logs` (`id`, `admin_id`, `user_identifier`, `action`, `details`, `ip_address`, `user_agent`, `created_at`, `actor_id`, `admin_email`, `election_id`, `actor_role`, `ip`) VALUES
(790, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 06:19:13', 2, NULL, NULL, 'admin', NULL),
(791, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 06:19:28', 2, NULL, NULL, 'admin', NULL),
(792, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 06:19:43', 2, NULL, NULL, 'admin', NULL),
(793, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 06:19:58', 2, NULL, NULL, 'admin', NULL),
(794, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 06:20:13', 2, NULL, NULL, 'admin', NULL),
(795, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 06:20:44', 2, NULL, NULL, 'admin', NULL),
(796, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 06:21:28', 2, NULL, NULL, 'admin', NULL),
(797, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 06:21:29', 2, NULL, NULL, 'admin', NULL),
(798, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 06:21:29', 2, NULL, NULL, 'admin', NULL),
(799, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 06:21:29', 2, NULL, NULL, 'admin', NULL),
(800, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 06:21:29', 2, NULL, NULL, 'admin', NULL),
(801, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 06:21:30', 2, NULL, NULL, 'admin', NULL),
(802, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 06:21:30', 2, NULL, NULL, 'admin', NULL),
(803, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 06:21:30', 2, NULL, NULL, 'admin', NULL),
(804, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 06:21:30', 2, NULL, NULL, 'admin', NULL),
(805, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 06:21:30', 2, NULL, NULL, 'admin', NULL),
(806, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 06:21:30', 2, NULL, NULL, 'admin', NULL),
(807, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 06:21:46', 2, NULL, NULL, 'admin', NULL),
(808, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 06:22:01', 2, NULL, NULL, 'admin', NULL),
(809, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 06:22:16', 2, NULL, NULL, 'admin', NULL),
(810, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 06:22:31', 2, NULL, NULL, 'admin', NULL),
(811, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 06:22:46', 2, NULL, NULL, 'admin', NULL),
(812, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 06:23:01', 2, NULL, NULL, 'admin', NULL),
(813, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 06:23:44', 2, NULL, NULL, 'admin', NULL),
(814, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 06:24:44', 2, NULL, NULL, 'admin', NULL),
(815, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 06:25:44', 2, NULL, NULL, 'admin', NULL),
(816, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 06:26:44', 2, NULL, NULL, 'admin', NULL),
(817, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 06:27:44', 2, NULL, NULL, 'admin', NULL),
(818, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 06:28:44', 2, NULL, NULL, 'admin', NULL),
(819, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 06:29:44', 2, NULL, NULL, 'admin', NULL),
(820, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 06:30:44', 2, NULL, NULL, 'admin', NULL),
(821, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 06:31:44', 2, NULL, NULL, 'admin', NULL),
(822, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 06:32:44', 2, NULL, NULL, 'admin', NULL),
(823, NULL, NULL, 'POST /api/admin/login', '{\"email\":\"restoreking26@gmail.com\",\"password\":\"123456\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 06:34:25', NULL, 'Unknown Admin', NULL, NULL, NULL),
(824, NULL, 'restoreking26@gmail.com', 'admin-login', 'Admin vasanth s logged in', NULL, NULL, '2025-11-21 06:34:25', NULL, NULL, NULL, NULL, NULL),
(825, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 06:34:26', 2, NULL, NULL, 'admin', NULL),
(826, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 06:34:26', 2, NULL, NULL, 'admin', NULL),
(827, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 06:34:30', 2, NULL, NULL, 'admin', NULL),
(828, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 06:34:30', 2, NULL, NULL, 'admin', NULL),
(829, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 06:34:45', 2, NULL, NULL, 'admin', NULL),
(830, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 06:35:00', 2, NULL, NULL, 'admin', NULL),
(831, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 06:35:15', 2, NULL, NULL, 'admin', NULL),
(832, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 06:35:30', 2, NULL, NULL, 'admin', NULL),
(833, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 06:35:45', 2, NULL, NULL, 'admin', NULL),
(834, NULL, 'CSC2004', 'voter-auto-verify', '❌ Mismatch MCA/2/2004-03-26 ≠ MCA/2/2004-03-25', NULL, NULL, '2025-11-21 06:35:48', NULL, NULL, NULL, NULL, NULL),
(835, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 06:36:00', 2, NULL, NULL, 'admin', NULL),
(836, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 06:36:15', 2, NULL, NULL, 'admin', NULL),
(837, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 06:36:30', 2, NULL, NULL, 'admin', NULL),
(838, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 06:36:45', 2, NULL, NULL, 'admin', NULL),
(839, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 06:37:44', 2, NULL, NULL, 'admin', NULL),
(840, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 06:38:44', 2, NULL, NULL, 'admin', NULL),
(841, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 06:39:44', 2, NULL, NULL, 'admin', NULL),
(842, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 06:40:39', 2, NULL, NULL, 'admin', NULL),
(843, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 06:40:41', 2, NULL, NULL, 'admin', NULL),
(844, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 06:40:41', 2, NULL, NULL, 'admin', NULL),
(845, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 06:40:57', 2, NULL, NULL, 'admin', NULL),
(846, NULL, 'CS02004', 'voter-auto-verify', '❌ Mismatch MCA/2/2004-03-26 ≠ MCA/2/2004-03-25', NULL, NULL, '2025-11-21 06:41:05', NULL, NULL, NULL, NULL, NULL),
(847, NULL, 'CS02004', 'voter-auto-verify', '❌ Mismatch MCA/2/2004-03-26 ≠ MCA/2/2004-03-25', NULL, NULL, '2025-11-21 06:41:11', NULL, NULL, NULL, NULL, NULL),
(848, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 06:41:12', 2, NULL, NULL, 'admin', NULL),
(849, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 06:41:25', 2, NULL, NULL, 'admin', NULL),
(850, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 06:41:25', 2, NULL, NULL, 'admin', NULL),
(851, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 06:41:40', 2, NULL, NULL, 'admin', NULL),
(852, NULL, 'CS02004', 'voter-auto-verify', '❌ Mismatch MCA/2/2004-03-26 ≠ MCA/2/2004-03-25', NULL, NULL, '2025-11-21 06:41:49', NULL, NULL, NULL, NULL, NULL),
(853, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 06:41:56', 2, NULL, NULL, 'admin', NULL),
(854, NULL, 'CS02004', 'voter-auto-verify', '❌ Mismatch MCA/2/2004-03-26 ≠ MCA/2/2004-03-25', NULL, NULL, '2025-11-21 06:42:06', NULL, NULL, NULL, NULL, NULL),
(855, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 06:42:11', 2, NULL, NULL, 'admin', NULL),
(856, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 06:42:26', 2, NULL, NULL, 'admin', NULL),
(857, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 06:42:41', 2, NULL, NULL, 'admin', NULL),
(858, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 06:42:56', 2, NULL, NULL, 'admin', NULL),
(859, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 06:43:10', 2, NULL, NULL, 'admin', NULL),
(860, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 06:43:25', 2, NULL, NULL, 'admin', NULL),
(861, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 06:43:40', 2, NULL, NULL, 'admin', NULL),
(862, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 06:43:55', 2, NULL, NULL, 'admin', NULL),
(863, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 06:44:10', 2, NULL, NULL, 'admin', NULL),
(864, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 06:44:25', 2, NULL, NULL, 'admin', NULL),
(865, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 06:44:40', 2, NULL, NULL, 'admin', NULL),
(866, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 06:44:56', 2, NULL, NULL, 'admin', NULL),
(867, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 06:45:11', 2, NULL, NULL, 'admin', NULL),
(868, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 06:45:26', 2, NULL, NULL, 'admin', NULL),
(869, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 06:45:41', 2, NULL, NULL, 'admin', NULL),
(870, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 06:46:44', 2, NULL, NULL, 'admin', NULL),
(871, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 06:47:44', 2, NULL, NULL, 'admin', NULL),
(872, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 06:48:36', 2, NULL, NULL, 'admin', NULL),
(873, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 06:48:38', 2, NULL, NULL, 'admin', NULL),
(874, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 06:48:38', 2, NULL, NULL, 'admin', NULL),
(875, NULL, 'CS02004', 'voter-auto-verify', '❌ Mismatch MCA/2/2004-03-26 ≠ MCA/2/2004-03-25', NULL, NULL, '2025-11-21 06:48:42', NULL, NULL, NULL, NULL, NULL),
(876, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 06:48:53', 2, NULL, NULL, 'admin', NULL),
(877, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 06:49:08', 2, NULL, NULL, 'admin', NULL),
(878, NULL, 'CS02004', 'voter-auto-verify', '❌ Mismatch MCA/2/2004-03-26 ≠ MCA/2/2004-03-25', NULL, NULL, '2025-11-21 06:49:22', NULL, NULL, NULL, NULL, NULL),
(879, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 06:49:23', 2, NULL, NULL, 'admin', NULL),
(880, NULL, 'CS02004', 'voter-auto-verify', '❌ Mismatch MCA/2/2004-03-26 ≠ MCA/2/2004-03-25', NULL, NULL, '2025-11-21 06:49:24', NULL, NULL, NULL, NULL, NULL),
(881, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 06:49:38', 2, NULL, NULL, 'admin', NULL),
(882, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 06:49:53', 2, NULL, NULL, 'admin', NULL),
(883, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 06:50:08', 2, NULL, NULL, 'admin', NULL),
(884, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 06:50:44', 2, NULL, NULL, 'admin', NULL),
(885, NULL, 'CS02004', 'voter-auto-verify', '❌ Mismatch MCA/2/2004-03-26 ≠ MCA/2/2004-03-25', NULL, NULL, '2025-11-21 08:28:06', NULL, NULL, NULL, NULL, NULL),
(886, NULL, 'CS02004', 'voter-auto-verify', 'Voter self-registered and verified.', NULL, NULL, '2025-11-21 08:36:53', NULL, NULL, NULL, NULL, NULL),
(887, NULL, NULL, 'POST /api/admin/login', '{\"email\":\"restoreking26@gmail.com\",\"password\":\"123456\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 08:37:09', NULL, 'Unknown Admin', NULL, NULL, NULL),
(888, NULL, 'restoreking26@gmail.com', 'admin-login', 'Admin vasanth s logged in', NULL, NULL, '2025-11-21 08:37:09', NULL, NULL, NULL, NULL, NULL),
(889, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 08:37:10', 2, NULL, NULL, 'admin', NULL),
(890, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 08:37:10', 2, NULL, NULL, 'admin', NULL),
(891, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 08:37:25', 2, NULL, NULL, 'admin', NULL),
(892, NULL, 'CS02004', 'voter-login', 'Logged in', NULL, NULL, '2025-11-21 08:37:25', NULL, NULL, NULL, NULL, NULL),
(893, NULL, 'CS02004', 'voter-login', 'Logged in', NULL, NULL, '2025-11-21 08:37:59', NULL, NULL, NULL, NULL, NULL),
(894, NULL, NULL, 'POST /api/admin/login', '{\"email\":\"restoreking26@gmail.com\",\"password\":\"1234565\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 08:54:45', NULL, 'Unknown Admin', NULL, NULL, NULL),
(895, NULL, NULL, 'POST /api/admin/login', '{\"email\":\"restoreking26@gmail.com\",\"password\":\"123456\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 08:54:51', NULL, 'Unknown Admin', NULL, NULL, NULL),
(896, NULL, 'restoreking26@gmail.com', 'admin-login', 'Admin vasanth s logged in', NULL, NULL, '2025-11-21 08:54:51', NULL, NULL, NULL, NULL, NULL),
(897, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 08:54:52', 2, NULL, NULL, 'admin', NULL),
(898, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 08:54:52', 2, NULL, NULL, 'admin', NULL),
(899, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 08:54:54', 2, NULL, NULL, 'admin', NULL),
(900, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 08:54:54', 2, NULL, NULL, 'admin', NULL),
(901, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 08:55:09', 2, NULL, NULL, 'admin', NULL),
(902, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 08:55:14', 2, NULL, NULL, 'admin', NULL),
(903, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 08:55:14', 2, NULL, NULL, 'admin', NULL),
(904, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 08:55:58', 2, NULL, NULL, 'admin', NULL),
(905, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 08:55:58', 2, NULL, NULL, 'admin', NULL),
(906, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 08:56:13', 2, NULL, NULL, 'admin', NULL),
(907, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 08:56:28', 2, NULL, NULL, 'admin', NULL),
(908, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 08:56:43', 2, NULL, NULL, 'admin', NULL),
(909, NULL, 'restoreking26@gmail.com', 'admin-add-voter', 'Added voter MCA040', NULL, NULL, '2025-11-21 08:56:43', NULL, NULL, NULL, NULL, NULL),
(910, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 08:56:43', 2, NULL, NULL, 'admin', NULL),
(911, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 08:56:58', 2, NULL, NULL, 'admin', NULL),
(912, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 08:57:13', 2, NULL, NULL, 'admin', NULL),
(913, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 08:57:28', 2, NULL, NULL, 'admin', NULL),
(914, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 08:57:43', 2, NULL, NULL, 'admin', NULL),
(915, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 08:57:58', 2, NULL, NULL, 'admin', NULL),
(916, NULL, 'MCA040', 'voter-auto-verify', 'Voter self-registered and verified.', NULL, NULL, '2025-11-21 08:58:01', NULL, NULL, NULL, NULL, NULL),
(917, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 08:58:07', 2, NULL, NULL, 'admin', NULL),
(918, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 08:58:07', 2, NULL, NULL, 'admin', NULL),
(919, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 08:58:22', 2, NULL, NULL, 'admin', NULL),
(920, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 08:58:37', 2, NULL, NULL, 'admin', NULL),
(921, NULL, 'MCA040', 'voter-login', 'Logged in', NULL, NULL, '2025-11-21 08:58:47', NULL, NULL, NULL, NULL, NULL),
(922, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 08:58:52', 2, NULL, NULL, 'admin', NULL),
(923, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 08:59:07', 2, NULL, NULL, 'admin', NULL),
(924, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 08:59:22', 2, NULL, NULL, 'admin', NULL),
(925, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 08:59:24', 2, NULL, NULL, 'admin', NULL),
(926, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 08:59:24', 2, NULL, NULL, 'admin', NULL),
(927, NULL, 'MCA040', 'voter-cast-vote', 'Voted for candidate 16', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-21 08:59:47', 23, NULL, NULL, 'voter', NULL),
(928, NULL, 'restoreking26@gmail.com', 'publish-results', 'Set election ID 8 to unpublished', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 09:00:34', 2, NULL, NULL, 'admin', NULL),
(929, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 09:01:02', 2, NULL, NULL, 'admin', NULL),
(930, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 09:01:02', 2, NULL, NULL, 'admin', NULL),
(931, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 09:01:17', 2, NULL, NULL, 'admin', NULL),
(932, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 09:02:14', 2, NULL, NULL, 'admin', NULL),
(933, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 09:02:14', 2, NULL, NULL, 'admin', NULL),
(934, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 09:02:29', 2, NULL, NULL, 'admin', NULL),
(935, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 09:02:44', 2, NULL, NULL, 'admin', NULL),
(936, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 09:02:59', 2, NULL, NULL, 'admin', NULL),
(937, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 09:03:14', 2, NULL, NULL, 'admin', NULL),
(938, NULL, 'restoreking26@gmail.com', 'admin-add-voter', 'Added voter MCA25', NULL, NULL, '2025-11-21 09:03:28', NULL, NULL, NULL, NULL, NULL),
(939, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 09:03:28', 2, NULL, NULL, 'admin', NULL),
(940, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 09:03:29', 2, NULL, NULL, 'admin', NULL),
(941, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 09:03:44', 2, NULL, NULL, 'admin', NULL),
(942, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 09:03:59', 2, NULL, NULL, 'admin', NULL),
(943, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 09:04:14', 2, NULL, NULL, 'admin', NULL),
(944, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 09:04:29', 2, NULL, NULL, 'admin', NULL),
(945, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 09:04:44', 2, NULL, NULL, 'admin', NULL),
(946, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 09:04:50', 2, NULL, NULL, 'admin', NULL),
(947, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 09:04:50', 2, NULL, NULL, 'admin', NULL),
(948, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 09:05:05', 2, NULL, NULL, 'admin', NULL),
(949, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 09:05:20', 2, NULL, NULL, 'admin', NULL),
(950, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 09:05:35', 2, NULL, NULL, 'admin', NULL),
(951, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 09:05:50', 2, NULL, NULL, 'admin', NULL),
(952, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 09:06:05', 2, NULL, NULL, 'admin', NULL),
(953, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 09:06:20', 2, NULL, NULL, 'admin', NULL),
(954, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 09:07:14', 2, NULL, NULL, 'admin', NULL),
(955, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 09:07:14', 2, NULL, NULL, 'admin', NULL),
(956, NULL, 'restoreking26@gmail.com', 'publish-results', 'Set election ID 7 to unpublished', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 09:08:34', 2, NULL, NULL, 'admin', NULL),
(957, NULL, 'restoreking26@gmail.com', 'publish-results', 'Set election ID 8 to published', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 09:08:38', 2, NULL, NULL, 'admin', NULL),
(958, NULL, 'MCA040', 'voter-login', 'Logged in', NULL, NULL, '2025-11-21 09:08:49', NULL, NULL, NULL, NULL, NULL),
(959, NULL, NULL, 'PUT /api/admin/profile', '{\"name\":\"vasanth s\",\"oldPassword\":\"123456\",\"newPassword\":\"12345678\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 09:10:50', NULL, 'Unknown Admin', NULL, NULL, NULL),
(960, 2, NULL, 'PUT /api/admin/profile', '{\"name\":\"vasanth s\",\"oldPassword\":\"123456\",\"newPassword\":\"12345678\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 09:10:50', NULL, 'restoreking26@gmail.com', NULL, NULL, NULL),
(961, NULL, NULL, 'PUT /api/admin/profile', '{\"name\":\"vasanth s\",\"oldPassword\":\"123456\",\"newPassword\":\"12345678\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 09:11:02', NULL, 'Unknown Admin', NULL, NULL, NULL),
(962, 2, NULL, 'PUT /api/admin/profile', '{\"name\":\"vasanth s\",\"oldPassword\":\"123456\",\"newPassword\":\"12345678\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 09:11:02', NULL, 'restoreking26@gmail.com', NULL, NULL, NULL),
(963, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 09:12:37', 2, NULL, NULL, 'admin', NULL),
(964, NULL, 'restoreking26@gmail.com', 'admin-dashboard-stats', 'Viewed dashboard stats', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-21 09:12:37', 2, NULL, NULL, 'admin', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `candidates`
--

CREATE TABLE `candidates` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `age` int(11) DEFAULT NULL,
  `gender` enum('Male','Female','Other') DEFAULT NULL,
  `party` varchar(100) NOT NULL,
  `department` varchar(50) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `quote` varchar(255) DEFAULT NULL,
  `motto` varchar(255) DEFAULT NULL,
  `totalVotes` int(11) DEFAULT 0,
  `election_id` int(11) NOT NULL,
  `manifesto` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` enum('active','hold') NOT NULL DEFAULT 'active',
  `isVerified` enum('pending','approved','rejected') DEFAULT 'pending',
  `approved_by` int(11) DEFAULT NULL,
  `year` varchar(10) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `candidates`
--

INSERT INTO `candidates` (`id`, `name`, `age`, `gender`, `party`, `department`, `photo`, `quote`, `motto`, `totalVotes`, `election_id`, `manifesto`, `created_at`, `status`, `isVerified`, `approved_by`, `year`, `image`) VALUES
(15, 'vijay', NULL, '', 'anil', 'mba', NULL, NULL, 'vvsdsdf', 1, 7, '', '2025-10-11 09:50:17', '', 'approved', 2, '2', '/uploads/candidates/1760176217883-686272100.png'),
(16, 'ak', NULL, 'Male', 'ak', 'mca', NULL, NULL, 'vvsdsdf', 2, 8, '', '2025-10-11 09:53:59', '', 'approved', 2, '2', '/uploads/candidates/1760176439585-215844254.png');

-- --------------------------------------------------------

--
-- Table structure for table `elections`
--

CREATE TABLE `elections` (
  `id` int(11) NOT NULL,
  `title` varchar(150) NOT NULL,
  `description` text DEFAULT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` enum('not_started','running','paused','ended') DEFAULT 'not_started',
  `paused_remaining` int(11) DEFAULT NULL,
  `is_published` tinyint(4) DEFAULT 0,
  `is_active` tinyint(4) DEFAULT 1,
  `results_published` tinyint(4) DEFAULT 0,
  `created_by` char(36) DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `results_published_at` datetime DEFAULT NULL,
  `settings` longtext DEFAULT NULL,
  `results_snapshot` longtext DEFAULT NULL,
  `archived` tinyint(1) NOT NULL DEFAULT 0,
  `lock_version` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `elections`
--

INSERT INTO `elections` (`id`, `title`, `description`, `start_date`, `end_date`, `created_at`, `status`, `paused_remaining`, `is_published`, `is_active`, `results_published`, `created_by`, `published_at`, `results_published_at`, `settings`, `results_snapshot`, `archived`, `lock_version`) VALUES
(7, 'vj', 'elec', '2025-10-11 05:19:00', '2025-10-12 04:20:00', '2025-10-11 09:50:05', 'paused', NULL, 0, 1, 0, '2', NULL, NULL, NULL, NULL, 0, 1),
(8, 'ak', 'elec', '2025-10-11 05:22:00', '2025-10-12 04:22:00', '2025-10-11 09:52:49', 'running', NULL, 1, 1, 0, '2', NULL, NULL, NULL, NULL, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `election_logs`
--

CREATE TABLE `election_logs` (
  `id` char(36) NOT NULL,
  `election_id` char(36) NOT NULL,
  `action` varchar(80) NOT NULL,
  `metadata` longtext DEFAULT NULL,
  `performed_by` char(36) DEFAULT NULL,
  `performed_role` varchar(32) DEFAULT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `election_logs`
--

INSERT INTO `election_logs` (`id`, `election_id`, `action`, `metadata`, `performed_by`, `performed_role`, `reason`, `ip_address`, `created_at`) VALUES
('11017e9d-a473-11f0-ae12-644ed717d877', '11014346-a473-11f0-ae12-644ed717d877', 'test_created', '{\"note\":\"initial test\"}', NULL, 'system', 'table creation test', NULL, '2025-10-08 18:17:36');

--
-- Triggers `election_logs`
--
DELIMITER $$
CREATE TRIGGER `trg_election_logs_before_insert` BEFORE INSERT ON `election_logs` FOR EACH ROW BEGIN
  IF NEW.id IS NULL OR NEW.id = '' THEN
    SET NEW.id = UUID();
  END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `registrations`
--

CREATE TABLE `registrations` (
  `id` int(11) NOT NULL,
  `regno` varchar(20) NOT NULL,
  `department` varchar(50) NOT NULL,
  `year` int(11) NOT NULL,
  `dob` date NOT NULL,
  `status` enum('APPROVED','REJECTED') NOT NULL,
  `confirmation_code` varchar(50) DEFAULT NULL,
  `feedback` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `registration_logs`
--

CREATE TABLE `registration_logs` (
  `id` int(11) NOT NULL,
  `regno` varchar(20) DEFAULT NULL,
  `department` varchar(50) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `attempt_time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student_master`
--

CREATE TABLE `student_master` (
  `id` int(11) NOT NULL,
  `regno` varchar(50) NOT NULL,
  `department` varchar(50) NOT NULL,
  `year` varchar(10) NOT NULL,
  `dob` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `voters`
--

CREATE TABLE `voters` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `regno` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `department` varchar(100) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `is_verified` tinyint(1) DEFAULT 0,
  `verified_at` datetime DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `hasVoted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `voters`
--

INSERT INTO `voters` (`id`, `name`, `email`, `regno`, `password`, `department`, `year`, `dob`, `is_verified`, `verified_at`, `created_at`, `hasVoted`) VALUES
(7, 'vasanth', 'vasanth@gmail.com', 'C21UG186', '$2a$10$Hyh0TeYSc/J/kgyvcqyGxe6380Gud6MNpiqT2Duhvsshsu43PQ9Hi', 'MCA', 2, '2004-03-26', 1, NULL, '2025-10-06 09:45:13', 0),
(8, 'ajith', 'ajith@gmail.com', 'C21UG187', '$2a$10$l5aPmXulre4kTYhgI1luLOgLYhR0nNPdx8V.MTwRue1nt4S9LYpei', 'MCA', 2, '2003-03-26', 1, NULL, '2025-10-06 09:54:21', 0),
(9, 'Suresh Kumar', 'suresh@college.com', '727721EUCS101', '$2a$10$o3.5lJdWNw7s.4hdwfw/segQnXpSAn9u1HulATlVdxh5zF18TPb.2', 'CSE', 3, '2002-01-15', 1, NULL, '2025-10-06 10:05:38', 0),
(10, 'Priya Varshini', 'priya@college.com', '727721EUIT102', '$2a$10$TdtTJR/RQANAZBzKg9NOuuXrKn7KIEKk2hZHiIF5itU7f0NxDM2VS', 'IT', 3, '2002-03-20', 1, NULL, '2025-10-06 10:05:39', 0),
(11, 'Mohan Raj', 'mohan@college.com', '727721EUEC103', '$2a$10$R0hR0KI5lMm5jEHiPP1d5uoL6Dnh/fS91.tRufLjzl9nDxC6sB4cC', 'ECE', 3, '2002-07-30', 1, NULL, '2025-10-06 10:05:39', 0),
(12, 'ak', 'ak1@gmail.com', '123cs', '$2a$10$cmyvt/CeglHDZBFvRW96y.k.xw5EPUdDIoGPGXw0N9z8b38wfxG7K', 'MCA', 3, '2004-03-26', 1, NULL, '2025-10-06 10:09:50', 0),
(13, 'new', 'test@college.com', '123', '', 'MECH', 2, '2004-03-25', 0, NULL, '2025-10-06 18:47:42', 0),
(14, 'ak', 'ak@gmail.com', '123456', '$2a$10$ZmJroRXGjzSECy9QQZB2u.RDax.4tUxz1WOpEKMiK2b/ieSslbNAy', 'MCA', 2, '2004-03-26', 1, NULL, '2025-10-06 18:48:50', 0),
(15, 'Sneha Ravi', ' sneha.ravi@example.com', ' CSE005', '', 'CSE', 1, '2000-03-25', 0, NULL, '2025-10-08 11:12:27', 0),
(16, 'kavi', 'kavi@gmail.com', 'cs123', '$2a$10$iELsEEn8rDLdJx43eKQvEefFdWlPm/fE1D4V7UK2VnM4VDIJJmxX2', 'MCA', 2, '2000-02-20', 1, NULL, '2025-10-08 11:33:59', 0),
(17, 'vasu', 'vasu@gmail.com', 'as123', '$2a$10$MFFpYm4FLryXEFzjuH7kPeqm0dWP5QONpney/.dd5JB8cjyBfGkPS', 'MCA', 2, '2000-01-10', 1, NULL, '2025-10-08 12:21:23', 0),
(18, 'hari', 'hari@gmail.com', 'CSC123456', '$2a$10$5.Dfyi8juQjrxlb2/f/ES.CLHHnU0.gh8TlUQxMi8nrV3LDwUzbEu', 'CSE', 3, '2000-02-10', 1, NULL, '2025-10-10 05:34:06', 1),
(19, 'Aarav Kumar', 'aarav.kumar@example.com', 'MCA001', '', 'MCA', 1, '2001-02-13', 0, NULL, '2025-10-13 08:03:18', 0),
(20, 'Diya Sharma', 'diya.sharma@example.com', 'CSE002', '', 'CSE', 2, '2000-04-21', 0, NULL, '2025-10-13 08:03:18', 0),
(21, 'ajith', 'king26@gmail.com', 'CS02004', '$2a$10$PuaCnIjLdkJk5kcJvphC3.cM9pGOiYKw80.BJPlRnyl6uVhxfHvPC', 'MCA', 2, '2004-03-26', 1, '2025-11-21 14:06:53', '2025-11-21 04:29:59', 0),
(22, 'vijay', 'vijay@gmail.com', 'CSC2004', '', 'MCA', 2, '2004-03-26', 0, NULL, '2025-11-21 06:18:25', 0),
(23, 'sanjay', 'sanjay@gmail.com', 'MCA040', '$2a$10$eec/i/Rrgib/dD8PLXZsFO4wZn4yHbYLmXXJG8sGutmjW3J/GoIRi', 'MCA', 2, '2004-06-24', 1, '2025-11-21 14:28:01', '2025-11-21 08:56:43', 1),
(24, 'meganathan', 'meganathan@gmail.com', 'MCA25', '', 'IT', 4, '1111-01-01', 0, NULL, '2025-11-21 09:03:28', 0);

-- --------------------------------------------------------

--
-- Table structure for table `votes`
--

CREATE TABLE `votes` (
  `id` int(11) NOT NULL,
  `voter_id` int(11) NOT NULL,
  `candidate_id` int(11) NOT NULL,
  `election_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `votes`
--

INSERT INTO `votes` (`id`, `voter_id`, `candidate_id`, `election_id`, `created_at`) VALUES
(7, 18, 15, 7, '2025-10-11 09:50:59'),
(8, 18, 16, 8, '2025-10-13 09:47:35'),
(9, 23, 16, 8, '2025-11-21 08:58:56');

-- --------------------------------------------------------

--
-- Table structure for table `vote_logs`
--

CREATE TABLE `vote_logs` (
  `id` int(11) NOT NULL,
  `voterId` int(11) DEFAULT NULL,
  `candidateId` int(11) DEFAULT NULL,
  `time` datetime DEFAULT current_timestamp(),
  `status` enum('valid','duplicate') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vote_logs`
--

INSERT INTO `vote_logs` (`id`, `voterId`, `candidateId`, `time`, `status`) VALUES
(7, 23, 16, '2025-11-21 14:29:47', 'duplicate'),
(8, 23, 16, '2025-11-21 14:29:54', 'duplicate');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `audit_logs`
--
ALTER TABLE `audit_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_audit_logs_election_id` (`election_id`);

--
-- Indexes for table `candidates`
--
ALTER TABLE `candidates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_candidate_election` (`election_id`),
  ADD KEY `fk_candidate_admin` (`approved_by`);

--
-- Indexes for table `elections`
--
ALTER TABLE `elections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_elections_status` (`status`),
  ADD KEY `idx_elections_start` (`start_date`),
  ADD KEY `idx_elections_end` (`end_date`),
  ADD KEY `idx_elections_archived` (`archived`),
  ADD KEY `idx_elections_created_by` (`created_by`);

--
-- Indexes for table `election_logs`
--
ALTER TABLE `election_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_election_logs_election_id` (`election_id`);

--
-- Indexes for table `registrations`
--
ALTER TABLE `registrations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `regno` (`regno`);

--
-- Indexes for table `registration_logs`
--
ALTER TABLE `registration_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_master`
--
ALTER TABLE `student_master`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `regno` (`regno`);

--
-- Indexes for table `voters`
--
ALTER TABLE `voters`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `regno` (`regno`),
  ADD UNIQUE KEY `uq_regno` (`regno`),
  ADD UNIQUE KEY `uq_email` (`email`);

--
-- Indexes for table `votes`
--
ALTER TABLE `votes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_vote_per_election` (`voter_id`,`election_id`),
  ADD KEY `fk_vote_candidate` (`candidate_id`),
  ADD KEY `fk_vote_election` (`election_id`);

--
-- Indexes for table `vote_logs`
--
ALTER TABLE `vote_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_vote_logs_voter` (`voterId`),
  ADD KEY `fk_vote_logs_candidate` (`candidateId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `audit_logs`
--
ALTER TABLE `audit_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=965;

--
-- AUTO_INCREMENT for table `candidates`
--
ALTER TABLE `candidates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `elections`
--
ALTER TABLE `elections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `registrations`
--
ALTER TABLE `registrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `registration_logs`
--
ALTER TABLE `registration_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_master`
--
ALTER TABLE `student_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `voters`
--
ALTER TABLE `voters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `votes`
--
ALTER TABLE `votes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `vote_logs`
--
ALTER TABLE `vote_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `candidates`
--
ALTER TABLE `candidates`
  ADD CONSTRAINT `fk_candidate_admin` FOREIGN KEY (`approved_by`) REFERENCES `admins` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_candidate_election` FOREIGN KEY (`election_id`) REFERENCES `elections` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `votes`
--
ALTER TABLE `votes`
  ADD CONSTRAINT `fk_vote_candidate` FOREIGN KEY (`candidate_id`) REFERENCES `candidates` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_vote_election` FOREIGN KEY (`election_id`) REFERENCES `elections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_vote_voter` FOREIGN KEY (`voter_id`) REFERENCES `voters` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vote_logs`
--
ALTER TABLE `vote_logs`
  ADD CONSTRAINT `fk_vote_logs_candidate` FOREIGN KEY (`candidateId`) REFERENCES `candidates` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_vote_logs_voter` FOREIGN KEY (`voterId`) REFERENCES `voters` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
