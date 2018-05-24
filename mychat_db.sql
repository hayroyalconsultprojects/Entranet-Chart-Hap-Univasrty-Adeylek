-- phpMyAdmin SQL Dump
-- version 4.7.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 21, 2018 at 12:16 PM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mychat_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(10) UNSIGNED NOT NULL,
  `mid` bigint(20) NOT NULL,
  `from` int(11) NOT NULL,
  `to` int(11) NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1' COMMENT '1-SENT,2-DELIVERED, 3=READ',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `mid`, `from`, `to`, `message`, `status`, `created_at`, `updated_at`) VALUES
(1, 54882167, 1, 2, 'New Message Coming up', 3, '2018-05-12 22:38:26', '2018-05-12 22:38:55'),
(2, 50188914, 2, 1, 'Hellko', 3, '2018-05-12 22:52:27', '2018-05-12 22:53:13'),
(3, 99813564, 1, 2, 'Omo iya', 3, '2018-05-12 22:53:28', '2018-05-12 22:54:10'),
(4, 93537451, 2, 1, 'Helll', 3, '2018-05-12 22:56:20', '2018-05-12 23:07:30'),
(5, 53977091, 1, 2, 'Hyyy', 3, '2018-05-12 22:58:10', '2018-05-12 22:58:51'),
(6, 43658548, 1, 2, 'Hhhh', 3, '2018-05-12 23:03:54', '2018-05-12 23:06:27'),
(7, 58735821, 1, 2, 'Hyy', 3, '2018-05-12 23:04:35', '2018-05-12 23:06:27'),
(8, 3094189, 1, 2, 'Fffffffffff', 3, '2018-05-12 23:05:19', '2018-05-12 23:06:27'),
(9, 44552615, 1, 2, 'Hello bozz', 3, '2018-05-12 23:07:48', '2018-05-12 23:10:12'),
(10, 9008296, 1, 2, 'Ggggggggggggggggggggg', 3, '2018-05-12 23:10:17', '2018-05-12 23:13:49'),
(11, 17805077, 1, 2, 'Dd', 3, '2018-05-12 23:11:03', '2018-05-12 23:13:49'),
(12, 70566074, 1, 2, 'Jjjj', 3, '2018-05-12 23:13:52', '2018-05-12 23:15:30'),
(13, 61163745, 1, 2, 'Ggg', 3, '2018-05-12 23:15:42', '2018-05-12 23:17:13'),
(14, 39568795, 1, 2, 'Hy', 3, '2018-05-12 23:17:07', '2018-05-12 23:17:13'),
(15, 19169236, 2, 1, 'How are you', 3, '2018-05-12 23:17:19', '2018-05-13 12:52:36'),
(16, 68442888, 1, 2, 'Am good you', 3, '2018-05-12 23:17:35', '2018-05-13 12:53:07'),
(17, 35400694, 1, 2, 'Yhy', 3, '2018-05-13 12:52:55', '2018-05-13 12:53:08'),
(18, 76386362, 2, 1, 'Hy', 3, '2018-05-13 12:54:02', '2018-05-13 17:27:55'),
(19, 58239646, 1, 4, 'He', 1, '2018-05-13 18:14:08', '2018-05-13 18:14:08');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_05_06_172824_create_messages_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'user_1', 'asdf', NULL, '2018-05-09 09:51:02', '2018-05-09 09:51:02'),
(2, 'mave', '123', NULL, '2018-05-10 11:39:36', '2018-05-10 11:39:36'),
(3, 'mav', '123', NULL, '2018-05-10 14:29:06', '2018-05-10 14:29:06'),
(4, 'Test User', 'asdf', NULL, '2018-05-11 13:39:50', '2018-05-11 13:39:50');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
