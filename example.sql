-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 12, 2020 at 10:33 PM
-- Server version: 10.3.22-MariaDB-1ubuntu1
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lvlspk`
--

-- --------------------------------------------------------

--
-- Table structure for table `alternatives`
--

CREATE TABLE `alternatives` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `alternatives`
--

INSERT INTO `alternatives` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'ABC Company', '2020-10-12 08:04:24', '2020-10-12 08:04:24'),
(2, 'DEF Company', '2020-10-12 08:05:23', '2020-10-12 08:05:23'),
(3, 'GHI Company', '2020-10-12 08:05:57', '2020-10-12 08:05:57');

-- --------------------------------------------------------

--
-- Table structure for table `alternativescores`
--

CREATE TABLE `alternativescores` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `alternative_id` bigint(20) UNSIGNED NOT NULL,
  `criteria_id` bigint(20) UNSIGNED NOT NULL,
  `rating_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `alternativescores`
--

INSERT INTO `alternativescores` (`id`, `alternative_id`, `criteria_id`, `rating_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 2, '2020-10-12 08:04:24', '2020-10-12 08:04:24'),
(2, 1, 2, 6, '2020-10-12 08:04:24', '2020-10-12 08:04:24'),
(3, 1, 3, 12, '2020-10-12 08:04:24', '2020-10-12 08:04:24'),
(4, 1, 4, 16, '2020-10-12 08:04:24', '2020-10-12 08:04:24'),
(5, 1, 5, 19, '2020-10-12 08:04:24', '2020-10-12 08:04:24'),
(6, 1, 6, 21, '2020-10-12 08:04:24', '2020-10-12 08:04:24'),
(7, 2, 1, 2, '2020-10-12 08:05:23', '2020-10-12 08:05:23'),
(8, 2, 2, 7, '2020-10-12 08:05:23', '2020-10-12 08:05:23'),
(9, 2, 3, 12, '2020-10-12 08:05:23', '2020-10-12 08:05:23'),
(10, 2, 4, 15, '2020-10-12 08:05:23', '2020-10-12 08:05:23'),
(11, 2, 5, 19, '2020-10-12 08:05:23', '2020-10-12 08:05:23'),
(12, 2, 6, 22, '2020-10-12 08:05:23', '2020-10-12 08:05:23'),
(13, 3, 1, 4, '2020-10-12 08:05:57', '2020-10-12 08:05:57'),
(14, 3, 2, 8, '2020-10-12 08:05:58', '2020-10-12 08:05:58'),
(15, 3, 3, 11, '2020-10-12 08:05:58', '2020-10-12 08:05:58'),
(16, 3, 4, 17, '2020-10-12 08:05:58', '2020-10-12 08:05:58'),
(17, 3, 5, 18, '2020-10-12 08:05:58', '2020-10-12 08:05:58'),
(18, 3, 6, 22, '2020-10-12 08:05:58', '2020-10-12 08:05:58');

-- --------------------------------------------------------

--
-- Table structure for table `criteriaratings`
--

CREATE TABLE `criteriaratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `criteria_id` bigint(20) UNSIGNED NOT NULL,
  `rating` double(8,2) NOT NULL,
  `description` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `criteriaratings`
--

INSERT INTO `criteriaratings` (`id`, `criteria_id`, `rating`, `description`, `created_at`, `updated_at`) VALUES
(1, 1, 0.25, '1 Day', '2020-10-12 07:49:20', '2020-10-12 07:49:20'),
(2, 1, 0.50, '2 - 7 Day', '2020-10-12 07:52:19', '2020-10-12 07:52:19'),
(3, 1, 0.75, '7 Day - 1 Month', '2020-10-12 07:52:41', '2020-10-12 07:52:41'),
(4, 1, 1.00, '> 1 Month', '2020-10-12 07:53:19', '2020-10-12 07:53:19'),
(5, 2, 0.25, '0 %', '2020-10-12 07:53:59', '2020-10-12 07:53:59'),
(6, 2, 0.50, '1 - 10 %', '2020-10-12 07:54:14', '2020-10-12 07:54:14'),
(7, 2, 0.75, '11 - 20 %', '2020-10-12 07:54:34', '2020-10-12 07:54:34'),
(8, 2, 1.00, '> 20 %', '2020-10-12 07:54:48', '2020-10-12 07:54:48'),
(9, 3, 0.00, 'Very Bad', '2020-10-12 07:55:46', '2020-10-12 07:55:46'),
(10, 3, 0.25, 'Bad', '2020-10-12 07:55:59', '2020-10-12 07:55:59'),
(11, 3, 0.50, 'Neutral', '2020-10-12 07:56:48', '2020-10-12 07:56:48'),
(12, 3, 0.75, 'Good', '2020-10-12 07:57:05', '2020-10-12 07:57:05'),
(13, 3, 1.00, 'Very Good', '2020-10-12 07:57:14', '2020-10-12 07:57:14'),
(14, 4, 0.25, 'No Warranty', '2020-10-12 07:58:01', '2020-10-12 07:58:01'),
(15, 4, 0.50, '< 1 Year', '2020-10-12 07:58:21', '2020-10-12 07:58:21'),
(16, 4, 0.75, '1 - 2 Year', '2020-10-12 07:58:43', '2020-10-12 07:58:43'),
(17, 4, 1.00, '> 2 Year', '2020-10-12 07:59:04', '2020-10-12 07:59:04'),
(18, 5, 0.50, 'Fake', '2020-10-12 07:59:29', '2020-10-12 07:59:29'),
(19, 5, 1.00, 'Genuine', '2020-10-12 07:59:50', '2020-10-12 07:59:50'),
(20, 6, 0.25, '< 1 Week', '2020-10-12 08:00:27', '2020-10-12 08:00:27'),
(21, 6, 0.50, '1 - 2 Week', '2020-10-12 08:00:54', '2020-10-12 08:00:54'),
(22, 6, 0.75, '3 - 4 Week', '2020-10-12 08:01:16', '2020-10-12 08:01:16'),
(23, 6, 1.00, '> 1 Month', '2020-10-12 08:01:37', '2020-10-12 08:01:37');

-- --------------------------------------------------------

--
-- Table structure for table `criteriaweights`
--

CREATE TABLE `criteriaweights` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('benefit','cost') COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` double(8,2) NOT NULL,
  `description` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `criteriaweights`
--

INSERT INTO `criteriaweights` (`id`, `name`, `type`, `weight`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Delivery Speed', 'cost', 0.50, 'Good', '2020-10-12 07:40:57', '2020-10-12 07:40:57'),
(2, 'Discount', 'benefit', 1.00, 'Very Good', '2020-10-12 07:41:18', '2020-10-12 07:41:18'),
(3, 'Service', 'benefit', 0.75, 'Very Good', '2020-10-12 07:41:36', '2020-10-12 07:41:36'),
(4, 'Warranty', 'benefit', 1.00, 'Very Good', '2020-10-12 07:41:54', '2020-10-12 07:41:54'),
(5, 'Genuineness', 'benefit', 1.00, 'Very Good', '2020-10-12 07:45:37', '2020-10-12 07:45:37'),
(6, 'Payment Due Date', 'benefit', 0.50, 'Good', '2020-10-12 07:48:37', '2020-10-12 07:48:37');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2020_10_11_082211_create_users_table', 1),
(2, '2020_10_11_082307_create_alternatives_table', 1),
(3, '2020_10_11_082343_create_criteriaweights_table', 1),
(4, '2020_10_11_082354_create_criteriaratings_table', 1),
(5, '2020_10_11_082442_create_alternativescores_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alternatives`
--
ALTER TABLE `alternatives`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `alternativescores`
--
ALTER TABLE `alternativescores`
  ADD PRIMARY KEY (`id`),
  ADD KEY `alternativescores_alternative_id_foreign` (`alternative_id`),
  ADD KEY `alternativescores_criteria_id_foreign` (`criteria_id`),
  ADD KEY `alternativescores_rating_id_foreign` (`rating_id`);

--
-- Indexes for table `criteriaratings`
--
ALTER TABLE `criteriaratings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `criteriaratings_criteria_id_foreign` (`criteria_id`);

--
-- Indexes for table `criteriaweights`
--
ALTER TABLE `criteriaweights`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
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
-- AUTO_INCREMENT for table `alternatives`
--
ALTER TABLE `alternatives`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `alternativescores`
--
ALTER TABLE `alternativescores`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `criteriaratings`
--
ALTER TABLE `criteriaratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `criteriaweights`
--
ALTER TABLE `criteriaweights`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `alternativescores`
--
ALTER TABLE `alternativescores`
  ADD CONSTRAINT `alternativescores_alternative_id_foreign` FOREIGN KEY (`alternative_id`) REFERENCES `alternatives` (`id`),
  ADD CONSTRAINT `alternativescores_criteria_id_foreign` FOREIGN KEY (`criteria_id`) REFERENCES `criteriaweights` (`id`),
  ADD CONSTRAINT `alternativescores_rating_id_foreign` FOREIGN KEY (`rating_id`) REFERENCES `criteriaratings` (`id`);

--
-- Constraints for table `criteriaratings`
--
ALTER TABLE `criteriaratings`
  ADD CONSTRAINT `criteriaratings_criteria_id_foreign` FOREIGN KEY (`criteria_id`) REFERENCES `criteriaweights` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
