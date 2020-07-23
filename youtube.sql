-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jul 23, 2020 at 11:59 AM
-- Server version: 5.7.26
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `youtube`
--

-- --------------------------------------------------------

--
-- Table structure for table `channels`
--

CREATE TABLE `channels` (
  `id` int(10) UNSIGNED NOT NULL,
  `channel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_channel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `channels`
--

INSERT INTO `channels` (`id`, `channel`, `id_channel`, `created_at`, `updated_at`) VALUES
(1, 'https://www.youtube.com/channel/UCHl_hSy0S7yB9qRbGvMyM8w', 'UCHl_hSy0S7yB9qRbGvMyM8w', NULL, NULL),
(2, 'https://www.youtube.com/channel/UCc_gMV4N9vJtpy7GcMUHaVw', 'UCc_gMV4N9vJtpy7GcMUHaVw', '2020-07-21 01:07:40', '2020-07-21 01:07:40'),
(3, 'https://www.youtube.com/channel/UCkUCuYrbtwAsDgk6y-YmJHw', 'UCkUCuYrbtwAsDgk6y-YmJHw', '2020-07-21 01:08:49', '2020-07-21 01:08:49'),
(4, 'https://www.youtube.com/channel/UCRsd_L7wBGdHLhfacuy3QVw', 'UCRsd_L7wBGdHLhfacuy3QVw', '2020-07-21 01:17:08', '2020-07-21 01:17:08'),
(5, 'https://www.youtube.com/channel/UCzpv5GkSbYqkFdC_lOOi4aQ', 'UCzpv5GkSbYqkFdC_lOOi4aQ', '2020-07-21 02:41:33', '2020-07-21 02:41:33'),
(6, 'https://www.youtube.com/channel/UCPsopTKQfSgW9XdYkKA6Gdw', 'UCPsopTKQfSgW9XdYkKA6Gdw', '2020-07-21 02:44:58', '2020-07-21 02:44:58'),
(7, 'https://www.youtube.com/channel/UCHl_hSy0S7yB9qRbGvMyM8w', 'UCHl_hSy0S7yB9qRbGvMyM8w', '2020-07-21 10:12:18', '2020-07-21 10:12:18'),
(8, 'https://www.youtube.com/channel/UCsT0YIqwnpJCM-mx7-gSA4Q', 'UCsT0YIqwnpJCM-mx7-gSA4Q', '2020-07-21 18:43:30', '2020-07-21 18:43:30'),
(9, 'https://www.youtube.com/channel/UCA_23dkEYToAc37hjSsCnXA', 'UCA_23dkEYToAc37hjSsCnXA', '2020-07-21 19:36:01', '2020-07-21 19:36:01'),
(10, 'https://www.youtube.com/channel/UCqJPm_4RfFdk_LIsExZUYZA', 'UCqJPm_4RfFdk_LIsExZUYZA', '2020-07-22 00:38:34', '2020-07-22 00:38:34'),
(11, 'https://www.youtube.com/channel/UCwT3zlG_5TUiPNt4IJXwqqg', 'UCwT3zlG_5TUiPNt4IJXwqqg', '2020-07-22 00:40:39', '2020-07-22 00:40:39'),
(12, 'https://www.youtube.com/channel/UC8xILDO1cQGzHxxdcdr6ibw', 'UC8xILDO1cQGzHxxdcdr6ibw', '2020-07-22 18:42:36', '2020-07-22 18:42:36'),
(13, 'https://www.youtube.com/channel/UC0C-w0YjGpqDXGB8IHb662A', 'UC0C-w0YjGpqDXGB8IHb662A', '2020-07-23 02:14:34', '2020-07-23 02:14:34');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2020_07_21_043156_channel', 1),
(4, '2020_07_21_044555_video', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id_video` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `view` int(11) NOT NULL,
  `thumbrial` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `videolenght` int(11) NOT NULL,
  `like` int(11) NOT NULL,
  `dislike` int(11) NOT NULL,
  `channel_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `channels`
--
ALTER TABLE `channels`
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
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id_video`),
  ADD KEY `videos_channel_id_foreign` (`channel_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `channels`
--
ALTER TABLE `channels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id_video` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `videos`
--
ALTER TABLE `videos`
  ADD CONSTRAINT `videos_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
