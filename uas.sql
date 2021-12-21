-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 09, 2021 at 02:08 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uas`
--
CREATE DATABASE IF NOT EXISTS `uas` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `uas`;

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
(36, '2021_12_06_154352_create_admins_table', 1),
(47, '2014_10_12_000000_create_users_table', 2),
(48, '2014_10_12_100000_create_password_resets_table', 2),
(49, '2016_06_01_000001_create_oauth_auth_codes_table', 2),
(50, '2016_06_01_000002_create_oauth_access_tokens_table', 2),
(51, '2016_06_01_000003_create_oauth_refresh_tokens_table', 2),
(52, '2016_06_01_000004_create_oauth_clients_table', 2),
(53, '2016_06_01_000005_create_oauth_personal_access_clients_table', 2),
(54, '2019_08_19_000000_create_failed_jobs_table', 2),
(55, '2019_12_14_000001_create_personal_access_tokens_table', 2),
(56, '2021_12_06_153546_create_products_table', 2),
(59, '2021_12_08_182932_create_shoppingcart_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('0136a432832bfd984395fbf72014b65d7f553e10e09d873732c2b2f38f5bdd3f807805bbe360ce11', 3, 1, 'Authentication Token', '[]', 0, '2021-12-08 10:38:29', '2021-12-08 10:38:29', '2022-12-08 17:38:29'),
('29cf4b36cee409af022151ce2e74f3e02740d15ef7e84fe70dd87bb8f12da246023df4c2387a5f79', 4, 1, 'Authentication Token', '[]', 0, '2021-12-08 13:34:57', '2021-12-08 13:34:57', '2022-12-08 20:34:57'),
('3523b2fad3ceb9d2db5671121130af3e7b782f24dacbdaf1495950413a4f8c2b303b7b4aa700e758', 3, 1, 'Authentication Token', '[]', 0, '2021-12-08 10:53:06', '2021-12-08 10:53:06', '2022-12-08 17:53:06'),
('40ccff69b1733346797f96da7ec917c713efd7b889039c0bb81f65c7ecadc24a6bea96a155cf4d46', 4, 1, 'Authentication Token', '[]', 0, '2021-12-08 10:23:20', '2021-12-08 10:23:20', '2022-12-08 17:23:20'),
('428ca2b9ae2bca73db6c985deb888accc67b77dc0ad1c65a0fca3c27d2594b96db6b53e342931020', 3, 1, 'Authentication Token', '[]', 0, '2021-12-08 17:45:46', '2021-12-08 17:45:46', '2022-12-09 00:45:46'),
('447cb74b78c8a02f002423bdf44d4f7aeb647c2cd07f9300edebd3c97a79a960b766a4a9bc253f82', 3, 1, 'Authentication Token', '[]', 0, '2021-12-08 08:48:14', '2021-12-08 08:48:14', '2022-12-08 15:48:14'),
('5b2e9b697dc2bda3408466cd47a5da8fb26644819cae0e7ca1eed0cc516678f1003474d03869fef1', 4, 1, 'Authentication Token', '[]', 0, '2021-12-08 15:34:11', '2021-12-08 15:34:11', '2022-12-08 22:34:11'),
('5f7fafa7ecb1f82964b7e141fc2526e9217a4f5ad56879050b1ad4c2b77f729b3cea5386198d1bf2', 4, 1, 'Authentication Token', '[]', 0, '2021-12-08 12:47:20', '2021-12-08 12:47:20', '2022-12-08 19:47:20'),
('659ead0f45b8c29651f20a3ab3fed254ab5de8d4d8fff216f49b61c6c7205bb145c4f18f15baa9b3', 3, 1, 'Authentication Token', '[]', 0, '2021-12-08 10:26:49', '2021-12-08 10:26:49', '2022-12-08 17:26:49'),
('6671fc9214c8ab4340d0a8296d09892806deb775744109eac5806f42c8d486c2e2c0e98d97941267', 3, 1, 'Authentication Token', '[]', 0, '2021-12-08 08:50:26', '2021-12-08 08:50:26', '2022-12-08 15:50:26'),
('72187884a00ad9566aeca8024c51f932fff352be8b035f7cd9c8daf475799f37e6accb7889796371', 3, 1, 'Authentication Token', '[]', 0, '2021-12-08 11:00:42', '2021-12-08 11:00:42', '2022-12-08 18:00:42'),
('7a40a118fc995734781f47bcc91ecd5663204e63846218cb2e320b17ba98b4a91339e3091d3f29e2', 4, 1, 'Authentication Token', '[]', 0, '2021-12-08 13:50:05', '2021-12-08 13:50:05', '2022-12-08 20:50:05'),
('87a3853d4bd37d6eb768dfce9e2c2b7a6a8717045763bad2d3f4eb3df5f9c49066a1fef7f3a0d5d5', 4, 1, 'Authentication Token', '[]', 0, '2021-12-08 10:52:27', '2021-12-08 10:52:27', '2022-12-08 17:52:27'),
('966147052b0b596e6e793eed9ead9c8835fc165cf0eb06dbde174fc9961dd79b08ce4c481ad787b1', 3, 1, 'Authentication Token', '[]', 0, '2021-12-08 10:41:01', '2021-12-08 10:41:01', '2022-12-08 17:41:01'),
('994b512cd16c0c0de7654661f4896a627eeb939fe2e2815bc420f781202c0801714a12688b418583', 4, 1, 'Authentication Token', '[]', 0, '2021-12-08 10:24:07', '2021-12-08 10:24:07', '2022-12-08 17:24:07'),
('a2c5db74c8f859b29cb9e3ff9c1696d767417ac321230a6df81e7ad65002ec023923752dea3b4fd0', 4, 1, 'Authentication Token', '[]', 0, '2021-12-08 10:25:58', '2021-12-08 10:25:58', '2022-12-08 17:25:58'),
('bfc06a8cc7f4110e41ec7735c5dba17d9171b4715a13771cc833b13e4af07f35bae2348e4b7cd0dc', 3, 1, 'Authentication Token', '[]', 0, '2021-12-08 16:54:46', '2021-12-08 16:54:46', '2022-12-08 23:54:46'),
('c10f82b713e6ad5aaf937a0068c9e56526a8cf253970983575a6a12ffbc7b0ca32f0c3b5e4ec55b6', 3, 1, 'Authentication Token', '[]', 0, '2021-12-08 10:44:30', '2021-12-08 10:44:30', '2022-12-08 17:44:30'),
('c5b553ea2bc7e60cc7604bb899cdb921160d0859057e2b99c816590fb8e149142c0be1686b82cf60', 4, 1, 'Authentication Token', '[]', 0, '2021-12-08 16:55:54', '2021-12-08 16:55:54', '2022-12-08 23:55:54'),
('caff0ba4d674f67eea2f31b3642d183bb8eaa196a766b81286100595fb89cc49796f1837f7b5381e', 3, 1, 'Authentication Token', '[]', 0, '2021-12-08 08:51:21', '2021-12-08 08:51:21', '2022-12-08 15:51:21'),
('cb198fee33ba595b64db27072269a19aad8d162bb9f41e71b4d29be2e8c6de4b3ef0651f6734775e', 4, 1, 'Authentication Token', '[]', 0, '2021-12-08 17:36:02', '2021-12-08 17:36:02', '2022-12-09 00:36:02'),
('d026f415ac83ca01923e2571d1f42ab684dbccf04e6d55bc4bc9a361cdef311168d4c75303b22be4', 3, 1, 'Authentication Token', '[]', 0, '2021-12-08 15:18:58', '2021-12-08 15:18:58', '2022-12-08 22:18:58'),
('df8126034de88332b3e7c7e3a5d533badcb53edb7721fd4ba97ed08b7a7f903dae6604d13b32b31c', 3, 1, 'Authentication Token', '[]', 0, '2021-12-08 08:54:35', '2021-12-08 08:54:35', '2022-12-08 15:54:35');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', '4h3nYVoNwmXHvrgQDeDhR0LXTemhWQX5Nl1Wrhor', NULL, 'http://localhost', 1, 0, 0, '2021-12-08 08:11:33', '2021-12-08 08:11:33'),
(2, NULL, 'Laravel Password Grant Client', 'n8mSf14JBFJ9UpBNJguJcwON8etsXf0jFz09L7HL', 'users', 'http://localhost', 0, 1, 0, '2021-12-08 08:11:33', '2021-12-08 08:11:33');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2021-12-08 08:11:33', '2021-12-08 08:11:33');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` double NOT NULL,
  `product_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `created_at`, `updated_at`, `product_name`, `product_price`, `product_description`, `product_image`, `product_category`) VALUES
(1, '2021-12-08 09:03:25', '2021-12-08 11:06:10', 'Zenfone 3', 3800000, '3rd Generation Zenfone', 'https://1.bp.blogspot.com/-51HWVWKHvK8/Xd9htUx5AiI/AAAAAAAApxk/OmYYuFGhDc8jK7jRt7KLgUm41fiiSlOaACLcBGAsYHQ/s640/ZE552KL.png', 'Smartphone'),
(2, '2021-12-08 15:20:21', '2021-12-08 15:20:21', 'Razer Hammerhead Pro v2', 1100000, '2nd Release of Hammerhead Pro', 'https://cf.shopee.co.id/file/3240374ac536068b622b0273fe0b24de', 'Earphones'),
(3, '2021-12-08 15:29:46', '2021-12-08 15:29:46', 'Razer Ouroboros', 1300000, 'Ambidextrous Gaming Mouse', 'https://images.tokopedia.net/img/cache/500-square/product-1/2014/10/5/5867653/5867653_7563e4e6-4c33-11e4-8d56-cb622523fab8.jpg', 'Mouse');

-- --------------------------------------------------------

--
-- Table structure for table `shopping_carts`
--

CREATE TABLE `shopping_carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `subtotal` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_admin` tinyint(4) DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `address`, `email_verified_at`, `password`, `is_admin`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, 'Nico', '190710127@students.uajy.ac.id', '085397896830', '2021-12-08 08:25:31', '$2a$12$SKi/a5Q7i1W9XMFSrAOv0.QP9YNBmnYs1wAcA/B.JgVnDipJrqsSG', 1, NULL, '2021-12-08 08:25:31', '2021-12-08 08:25:31'),
(4, 'Nico Ky', 'nicoky72@gmail.com', 'JL. Babarsari No. 41', '2021-12-08 10:22:49', '$2y$10$7wpurZ6bYXJw7jCDoqY5wuaMgjMuRL5XNqigienP7ranb9k5y9Vo.', NULL, NULL, '2021-12-08 10:21:50', '2021-12-08 16:58:16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shopping_carts`
--
ALTER TABLE `shopping_carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `shopping_carts`
--
ALTER TABLE `shopping_carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
