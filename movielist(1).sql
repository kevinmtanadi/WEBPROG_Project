-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 06, 2023 at 03:02 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `movielist`
--

-- --------------------------------------------------------

--
-- Table structure for table `actor`
--

CREATE TABLE `actor` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `biography` varchar(10000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dob` date NOT NULL,
  `pob` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `popularity` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `actor`
--

INSERT INTO `actor` (`id`, `name`, `gender`, `biography`, `dob`, `pob`, `image_url`, `popularity`) VALUES
(1, 'Tom Holland', 'male', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Aut molestiae dignissimos sed totam ipsum asperiores molestias saepe commodi maiores corporis, officiis eius atque, numquam dolor nobis. Sint quasi minus rem sapiente non nihil illum nemo, neque eveniet eligendi nobis aliquam repellendus hic ipsum enim at facilis tempore asperiores laudantium soluta numquam. Eius quos eum excepturi tempore? Saepe iste fuga molestias qui voluptatum quibusdam at explicabo voluptas consequatur rerum! Quia iusto sed distinctio, vero voluptas, eos excepturi, sit maxime aspernatur rerum voluptatem? Quod accusamus minus ad voluptatem repellendus nulla animi autem esse cupiditate ipsam consectetur nostrum iusto impedit accusantium quae facere, quo possimus. Ea corporis, atque, blanditiis amet sunt molestias dolores ex a, expedita est quaerat nulla. Id praesentium quia aut vel earum consectetur voluptate dolores a corporis, ipsa optio beatae sint nostrum magnam cumque natus doloribus ducimus! Qui, distinctio tempore! Repellendus corporis explicabo itaque magnam. Velit qui est voluptates accusantium.', '2023-01-03', 'London, England', '1673011713.jpg', 70),
(2, 'Zendaya', 'female', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Aut molestiae dignissimos sed totam ipsum asperiores molestias saepe commodi maiores corporis, officiis eius atque, numquam dolor nobis. Sint quasi minus rem sapiente non nihil illum nemo, neque eveniet eligendi nobis aliquam repellendus hic ipsum enim at facilis tempore asperiores laudantium soluta numquam. Eius quos eum excepturi tempore? Saepe iste fuga molestias qui voluptatum quibusdam at explicabo voluptas consequatur rerum! Quia iusto sed distinctio, vero voluptas, eos excepturi, sit maxime aspernatur rerum voluptatem? Quod accusamus minus ad voluptatem repellendus nulla animi autem esse cupiditate ipsam consectetur nostrum iusto impedit accusantium quae facere, quo possimus. Ea corporis, atque, blanditiis amet sunt molestias dolores ex a, expedita est quaerat nulla. Id praesentium quia aut vel earum consectetur voluptate dolores a corporis, ipsa optio beatae sint nostrum magnam cumque natus doloribus ducimus! Qui, distinctio tempore! Repellendus corporis explicabo itaque magnam. Velit qui est voluptates accusantium.', '2022-11-17', 'California, US', '1673011735.jpg', 60),
(3, 'Benedict Cumberbatch', 'male', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Aut molestiae dignissimos sed totam ipsum asperiores molestias saepe commodi maiores corporis, officiis eius atque, numquam dolor nobis. Sint quasi minus rem sapiente non nihil illum nemo, neque eveniet eligendi nobis aliquam repellendus hic ipsum enim at facilis tempore asperiores laudantium soluta numquam. Eius quos eum excepturi tempore? Saepe iste fuga molestias qui voluptatum quibusdam at explicabo voluptas consequatur rerum! Quia iusto sed distinctio, vero voluptas, eos excepturi, sit maxime aspernatur rerum voluptatem? Quod accusamus minus ad voluptatem repellendus nulla animi autem esse cupiditate ipsam consectetur nostrum iusto impedit accusantium quae facere, quo possimus. Ea corporis, atque, blanditiis amet sunt molestias dolores ex a, expedita est quaerat nulla. Id praesentium quia aut vel earum consectetur voluptate dolores a corporis, ipsa optio beatae sint nostrum magnam cumque natus doloribus ducimus! Qui, distinctio tempore! Repellendus corporis explicabo itaque magnam. Velit qui est voluptates accusantium.', '2022-11-08', 'London, England', '1673011753.jpg', 57),
(4, 'Tom Hardy', 'male', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Aut molestiae dignissimos sed totam ipsum asperiores molestias saepe commodi maiores corporis, officiis eius atque, numquam dolor nobis. Sint quasi minus rem sapiente non nihil illum nemo, neque eveniet eligendi nobis aliquam repellendus hic ipsum enim at facilis tempore asperiores laudantium soluta numquam. Eius quos eum excepturi tempore? Saepe iste fuga molestias qui voluptatum quibusdam at explicabo voluptas consequatur rerum! Quia iusto sed distinctio, vero voluptas, eos excepturi, sit maxime aspernatur rerum voluptatem? Quod accusamus minus ad voluptatem repellendus nulla animi autem esse cupiditate ipsam consectetur nostrum iusto impedit accusantium quae facere, quo possimus. Ea corporis, atque, blanditiis amet sunt molestias dolores ex a, expedita est quaerat nulla. Id praesentium quia aut vel earum consectetur voluptate dolores a corporis, ipsa optio beatae sint nostrum magnam cumque natus doloribus ducimus! Qui, distinctio tempore! Repellendus corporis explicabo itaque magnam. Velit qui est voluptates accusantium.', '2022-10-04', 'London, England', '1673011770.jpg', 105),
(5, 'Woody Harrelson', 'male', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Aut molestiae dignissimos sed totam ipsum asperiores molestias saepe commodi maiores corporis, officiis eius atque, numquam dolor nobis. Sint quasi minus rem sapiente non nihil illum nemo, neque eveniet eligendi nobis aliquam repellendus hic ipsum enim at facilis tempore asperiores laudantium soluta numquam. Eius quos eum excepturi tempore? Saepe iste fuga molestias qui voluptatum quibusdam at explicabo voluptas consequatur rerum! Quia iusto sed distinctio, vero voluptas, eos excepturi, sit maxime aspernatur rerum voluptatem? Quod accusamus minus ad voluptatem repellendus nulla animi autem esse cupiditate ipsam consectetur nostrum iusto impedit accusantium quae facere, quo possimus. Ea corporis, atque, blanditiis amet sunt molestias dolores ex a, expedita est quaerat nulla. Id praesentium quia aut vel earum consectetur voluptate dolores a corporis, ipsa optio beatae sint nostrum magnam cumque natus doloribus ducimus! Qui, distinctio tempore! Repellendus corporis explicabo itaque magnam. Velit qui est voluptates accusantium.', '2022-11-24', 'London, England', '1673011783.jpg', 125),
(6, 'Keanu Reeves', 'male', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Aut molestiae dignissimos sed totam ipsum asperiores molestias saepe commodi maiores corporis, officiis eius atque, numquam dolor nobis. Sint quasi minus rem sapiente non nihil illum nemo, neque eveniet eligendi nobis aliquam repellendus hic ipsum enim at facilis tempore asperiores laudantium soluta numquam. Eius quos eum excepturi tempore? Saepe iste fuga molestias qui voluptatum quibusdam at explicabo voluptas consequatur rerum! Quia iusto sed distinctio, vero voluptas, eos excepturi, sit maxime aspernatur rerum voluptatem? Quod accusamus minus ad voluptatem repellendus nulla animi autem esse cupiditate ipsam consectetur nostrum iusto impedit accusantium quae facere, quo possimus. Ea corporis, atque, blanditiis amet sunt molestias dolores ex a, expedita est quaerat nulla. Id praesentium quia aut vel earum consectetur voluptate dolores a corporis, ipsa optio beatae sint nostrum magnam cumque natus doloribus ducimus! Qui, distinctio tempore! Repellendus corporis explicabo itaque magnam. Velit qui est voluptates accusantium.', '2022-10-14', 'London, England', '1673011804.jpg', 135);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `genre`
--

CREATE TABLE `genre` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `genre`
--

INSERT INTO `genre` (`id`, `name`) VALUES
(1, 'Comedy'),
(2, 'Sci-Fi'),
(3, 'Horror'),
(4, 'Romance'),
(5, 'Action'),
(6, 'Thriller'),
(7, 'Drama'),
(8, 'Mystery'),
(9, 'Crime'),
(10, 'Animation'),
(11, 'Adventure'),
(12, 'Fantasy');

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2020_12_31_092330_create_genre_table', 1),
(6, '2021_12_30_112505_create_actor_table', 1),
(7, '2022_12_30_110812_create_movie_table', 1),
(8, '2023_01_04_050516_create_movie_genre_table', 1),
(9, '2023_01_04_054232_create_movie_actor_table', 1),
(10, '2023_01_05_143332_create_watchlist_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `movie`
--

CREATE TABLE `movie` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `director` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `release_date` date NOT NULL,
  `image_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bg_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `movie`
--

INSERT INTO `movie` (`id`, `title`, `description`, `director`, `release_date`, `image_url`, `bg_url`) VALUES
(1, 'Spider-Man: No Way Home', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nisi officia quibusdam reiciendis omnis hic, facere est a blanditiis ad vero deserunt magnam voluptate nulla consectetur tenetur adipisci nesciunt pariatur maxime.', 'Jon Watts', '2022-08-24', 'movie_.1673011845.jpg', 'bg_.1673011845.jpeg'),
(2, 'Venom Let There Be Carnage', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nisi officia quibusdam reiciendis omnis hic, facere est a blanditiis ad vero deserunt magnam voluptate nulla consectetur tenetur adipisci nesciunt pariatur maxime.', 'Andy Serkis', '2022-09-06', 'movie_.1673011873.jpg', 'bg_.1673011873.jpg'),
(5, 'The Matrix Ressurections', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nisi officia quibusdam reiciendis omnis hic, facere est a blanditiis ad vero deserunt magnam voluptate nulla consectetur tenetur adipisci nesciunt pariatur maxime.', 'Lana Wachowski', '2022-11-23', 'movie_.1673012011.jpg', 'bg_.1673012011.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `movie_actor`
--

CREATE TABLE `movie_actor` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `movie_id` bigint(20) UNSIGNED NOT NULL,
  `actor_id` bigint(20) UNSIGNED NOT NULL,
  `character_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `movie_actor`
--

INSERT INTO `movie_actor` (`id`, `movie_id`, `actor_id`, `character_name`) VALUES
(1, 1, 1, 'Peter Parker'),
(2, 1, 2, 'MJ'),
(3, 1, 3, 'Dr. Strange'),
(4, 2, 4, 'Venom'),
(5, 2, 5, 'Carnage'),
(8, 5, 6, 'Neo');

-- --------------------------------------------------------

--
-- Table structure for table `movie_genre`
--

CREATE TABLE `movie_genre` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `movie_id` bigint(20) UNSIGNED NOT NULL,
  `genre_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `movie_genre`
--

INSERT INTO `movie_genre` (`id`, `movie_id`, `genre_id`) VALUES
(1, 1, 5),
(2, 1, 11),
(3, 1, 12),
(4, 2, 1),
(5, 2, 5),
(6, 2, 11),
(12, 5, 2),
(13, 5, 5);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dob` date NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'member',
  `image_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `dob`, `role`, `image_url`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@example.com', '$2y$10$4KYCZZnHztvj5hMZoRYRtuiHrkCrvBj0TV.Y/g2sTB50tR/dFlRju', '2023-01-06', 'admin', 'profile.webp', 'v4AdhzTRUCBFrOAuma06H95hGwFNrFC8SQs3vCqV1IEdcPuk5QiGTb8j57bn', '2023-01-06 06:26:14', NULL),
(2, 'gegek', 'kevinmt2342@gmail.com', '$2y$10$H2NXVK622JAxZ9qYTwj2beBRkGaJE/xFCuwAkSNxClr.rP5ox5xEO', '2023-01-06', 'member', 'gegek.1673013628.jpg', NULL, '2023-01-06 07:00:15', '2023-01-06 07:00:28');

-- --------------------------------------------------------

--
-- Table structure for table `watchlist`
--

CREATE TABLE `watchlist` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `movie_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `actor`
--
ALTER TABLE `actor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movie`
--
ALTER TABLE `movie`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movie_actor`
--
ALTER TABLE `movie_actor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `movie_actor_movie_id_foreign` (`movie_id`),
  ADD KEY `movie_actor_actor_id_foreign` (`actor_id`);

--
-- Indexes for table `movie_genre`
--
ALTER TABLE `movie_genre`
  ADD PRIMARY KEY (`id`),
  ADD KEY `movie_genre_movie_id_foreign` (`movie_id`),
  ADD KEY `movie_genre_genre_id_foreign` (`genre_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `watchlist`
--
ALTER TABLE `watchlist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `watchlist_user_id_foreign` (`user_id`),
  ADD KEY `watchlist_movie_id_foreign` (`movie_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `actor`
--
ALTER TABLE `actor`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `genre`
--
ALTER TABLE `genre`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `movie`
--
ALTER TABLE `movie`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `movie_actor`
--
ALTER TABLE `movie_actor`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `movie_genre`
--
ALTER TABLE `movie_genre`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `watchlist`
--
ALTER TABLE `watchlist`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `movie_actor`
--
ALTER TABLE `movie_actor`
  ADD CONSTRAINT `movie_actor_actor_id_foreign` FOREIGN KEY (`actor_id`) REFERENCES `actor` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `movie_actor_movie_id_foreign` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `movie_genre`
--
ALTER TABLE `movie_genre`
  ADD CONSTRAINT `movie_genre_genre_id_foreign` FOREIGN KEY (`genre_id`) REFERENCES `genre` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `movie_genre_movie_id_foreign` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `watchlist`
--
ALTER TABLE `watchlist`
  ADD CONSTRAINT `watchlist_movie_id_foreign` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`id`),
  ADD CONSTRAINT `watchlist_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
