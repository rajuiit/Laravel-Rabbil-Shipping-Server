-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 05, 2020 at 10:06 PM
-- Server version: 10.2.31-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rabbilsh_ship`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `category_photo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `category_photo`, `created_at`, `updated_at`) VALUES
(13, 'CARGO VESSEL', '1587301214CARGO VESSEL update.jpg', '2020-03-15 04:51:33', '2020-04-19 07:00:14'),
(14, 'LAUNCH', '1587300870LAUNCH.jpg', '2020-03-15 04:52:17', '2020-04-19 06:54:30'),
(15, 'STEAMER', '1587300753STEAMER.jpg', '2020-03-15 04:52:41', '2020-04-19 06:52:33'),
(16, 'YACHT', '1587346270Yatch.jpg', '2020-03-15 04:52:56', '2020-04-21 10:06:59'),
(17, 'MOTHER VESSEL', '1587300718MOTHER VESSEL.jpg', '2020-03-15 04:53:11', '2020-04-19 06:51:58'),
(18, 'DREDGING BARGE', '1587347510dredge-barge-500x500.jpg', '2020-03-30 09:36:58', '2020-04-19 19:51:50'),
(22, 'CONTAINER VESSEL', '1587346617Container vessel.jpg', '2020-04-18 21:56:02', '2020-04-19 19:36:57'),
(23, 'OIL TANKER', '1587300631oil-tanker1.jpg', '2020-04-19 06:50:31', '2020-04-19 06:50:31');

-- --------------------------------------------------------

--
-- Table structure for table `category_type`
--

CREATE TABLE `category_type` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `d_addresses`
--

CREATE TABLE `d_addresses` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fullAddress` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `order_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `d_addresses`
--

INSERT INTO `d_addresses` (`id`, `name`, `user_id`, `email`, `phone`, `city`, `fullAddress`, `created_at`, `updated_at`, `order_id`) VALUES
(1, 'Golam Rabbi', 1, 'golamrabbi@gmail.com', '1762337526', 'Savar', 'Savar,Dhaka', '2019-03-08 14:22:12', '2019-03-08 14:22:12', 0),
(2, 'kumol', 4, 'kumol@gmail.com', '1762337526', 'Savar', 'Savar,Dhaka', '2019-03-08 15:16:47', '2019-03-08 15:16:47', 0),
(3, 'MH Abid', 5, 'dmabid2050@gmail.com', '01521448076', 'savar, Dhaka', 'khagan bazar,daffodil Road, Binary pathshala 1341\r\nsecond floor.', '2019-03-11 02:42:23', '2019-03-11 02:42:23', 0),
(5, 'asif ahmed', 6, 'asif@gmail.com', '1762337526', 'natore', 'natore, rajshahi', '2019-03-11 11:54:16', '2019-03-11 11:54:16', 0),
(6, 'gs bondhon', 7, 'gs@gmail.com', '176238345873', 'Savar', 'Savar,Dhaka', '2019-03-12 13:01:18', '2019-03-12 13:01:18', 0),
(7, 'jnjj uhuhhhh', 8, 'jjjjjj@gmail.com', '01762337526', 'Savar', 'Savar,Dhaka', '2019-03-19 03:30:23', '2019-03-19 03:30:23', 0),
(8, 'Golam Rabbi', 1, 'golamrabbi@gmail.com', '1762337526', 'Savar', 'Savar,Dhaka', '2019-03-27 13:40:20', '2019-03-27 13:40:20', 0),
(10, 'Golam', 1, 'golamrabbi@gmail.com', '1762337526', 'Savar,update', 'Savar,Dhaka,bangladesh', '2019-04-02 12:45:19', '2019-04-02 14:49:57', 27),
(12, 'golam rabbi', 1, 'golamrabbi@gmail.com', '01762337526', 'Savar', 'saver Dhaka', '2019-04-02 16:26:38', '2019-04-02 16:26:38', 2),
(13, 'test user', 1, 'tes@gmail.com', '01762337526', 'testt', 'test', '2019-04-02 16:40:56', '2019-04-02 16:40:56', 30),
(14, 'opu khan', 11, 'opu@gmail.com', '12345678901', 'natore', 'natore,bangladesh', '2019-04-11 13:47:02', '2019-04-11 13:47:02', 31),
(15, 'parvez', 12, 'parvez@gmail.com', '01762555555', 'savar', 'savar, dhaka', '2019-09-04 08:48:09', '2019-09-04 08:48:09', 32),
(16, 'parvez', 12, 'parvez@gmail.com', '01762555555', 'savar', 'savar, dhaka', '2019-09-04 09:11:57', '2019-09-04 09:11:57', 33),
(17, 'newuser', 13, 'newuser@gmail.com', '01982345678', 'dhaka', 'dhaka,bangladesh', '2019-09-08 05:51:01', '2019-09-08 05:51:01', 34),
(18, 'ntest', 14, 'ntest@gmail.com', '09876543211', 'savar', 'savar, dhaka , bangladesh', '2019-09-17 11:34:22', '2019-09-17 11:34:22', 35),
(19, 'ritaroy', 11, 'ritaroy158@diu.edu.bd', '01688912137', 'savar', 'savar', '2019-09-18 00:13:42', '2019-09-18 00:13:42', 36),
(20, 'Md. Mahfujur Rahman', 15, 'mrrajuiit@gmail.com', '01827593387', 'Dhaka', 'Savar', '2019-09-18 08:31:24', '2019-09-18 08:31:24', 37),
(21, 'Md. Mahfujur Rahman', 15, 'mrrajuiit@gmail.com', '01827593387', 'Dhaka', 'Savar', '2019-09-18 08:31:34', '2019-09-18 08:31:34', 38),
(22, 'Md. Mahfujur Rahman', 15, 'mrrajuiit@gmail.com', '01827593387', 'Dhaka', 'Savar', '2019-09-18 08:31:40', '2019-09-18 08:31:40', 39),
(23, 'Md. Mahfujur Rahman', 15, 'mrrajuiit@gmail.com', '01827593387', 'Dhaka', 'Savar', '2019-09-18 08:31:44', '2019-09-18 08:31:44', 40),
(24, 'Md. Mahfujur Rahman', 15, 'mrrajuiit@gmail.com', '01827593387', 'Dhaka', 'Savar', '2019-09-18 08:34:04', '2019-09-18 08:34:04', 41),
(25, 'Md. Mahfujur Rahman', 15, 'mrrajuiit@gmail.com', '01827593387', 'Dhaka', 'Savar', '2019-09-18 08:34:10', '2019-09-18 08:34:10', 42),
(26, 'rita roy', 11, 'ritaroy158@diu.edu.bd', '01308042989', 'savar', 'baipail', '2019-10-17 00:07:59', '2019-10-17 00:07:59', 43),
(27, 'Md. Mahfujur Rahman', 16, 'mrrajuiit@gmail.com', '01827593387', 'hgnnddd', 'bbgb', '2019-12-10 10:01:05', '2019-12-10 10:01:05', 44),
(28, 'Md. Mahfujur Rahman', 16, 'mrrajuiit@gmail.com', '01827593387', 'hgnnddd', 'bbgb', '2019-12-10 10:01:05', '2019-12-10 10:01:05', 44),
(29, 'reazul', 17, 'reaz.diu.cse@gmail.com', '01749911888', 'savar', 'savar', '2020-02-25 01:46:59', '2020-02-25 01:46:59', 46),
(30, 'MD. ASHIQUR RAHMAN', 18, 'redit@gmail.com', '01778207719', 'dsasfdfds', 'dadsd', '2020-02-26 12:44:42', '2020-02-26 12:44:42', 47),
(31, 'Msdfafafafa', 19, 'm@gmail.com', '0976', 'dsccd', 'dsfsfsf', '2020-04-02 23:30:40', '2020-04-02 23:30:40', 2),
(32, 'Msdfafafafa', 19, 'm@gmail.com', '0976', 'dsccd', 'dsfsfsf', '2020-04-02 23:31:15', '2020-04-02 23:31:15', 3),
(33, 'Golam Rabbi', 1, 'golamrabbi@gmail.com', '1762337526', 'Savar', 'Savar,Dhaka', '2020-04-07 00:29:04', '2020-04-07 00:29:04', 3),
(34, 'rajau', 20, 'reazul@gmail.com', '01749911888', 'savar', 'savar, dhaka', '2020-04-07 00:34:39', '2020-04-07 00:34:39', 5),
(35, 'rajau', 20, 'reazul@gmail.com', '01749911888', 'savar', 'savar, dhaka', '2020-04-07 00:43:02', '2020-04-07 00:43:02', 6),
(36, 'rajau', 20, 'reazul@gmail.com', '01749911888', 'savar', 'savar, dhaka', '2020-04-07 00:44:07', '2020-04-07 00:44:07', 7),
(37, 'Md. Mahfujur Rahman', 15, 'mrrajuiit@gmail.com', '01827593387', 'Dhaka', 'Savar', '2020-04-07 06:21:30', '2020-04-07 06:21:30', 8),
(38, 'Md. Mahfujur Rahman', 15, 'mrrajuiit@gmail.com', '01827593387', 'Dhaka', 'Savar', '2020-04-07 07:38:01', '2020-04-07 07:38:01', 9),
(39, 'Golam Rabbi', 1, 'golamrabbi@gmail.com', '1762337526', 'Savar', 'Savar,Dhaka', '2020-04-07 08:55:18', '2020-04-07 08:55:18', 10),
(40, 'Md. Mahfujur Rahman', 15, 'mrrajuiit@gmail.com', '01827593387', 'Dhaka', 'Savar', '2020-04-07 09:21:07', '2020-04-07 09:21:07', 11),
(41, 'Md. Mahfujur Rahman', 15, 'mrrajuiit@gmail.com', '01827593387', 'Dhaka', 'Savar', '2020-04-07 10:13:14', '2020-04-07 10:13:14', 12),
(42, 'Md. Mahfujur Rahman', 15, 'mrrajuiit@gmail.com', '01827593387', 'Dhaka', 'Savar', '2020-04-07 10:17:59', '2020-04-07 10:17:59', 13),
(43, 'Md. Mahfujur Rahman', 15, 'mrrajuiit@gmail.com', '01827593387', 'Dhaka', 'Savar', '2020-04-07 10:23:25', '2020-04-07 10:23:25', 14),
(44, 'rabbil', 23, 'tandradast95@gmail.com', '01796639535', 'dhaka', 'dhaka', '2020-04-16 21:09:28', '2020-04-16 21:09:28', 15),
(45, 'Golam Rabbi', 1, 'golamrabbi@gmail.com', '1762337526', 'Savar', 'Savar,Dhaka', '2020-04-18 02:23:48', '2020-04-18 02:23:48', 16),
(46, 'Golam Rabbi', 1, 'golamrabbi@gmail.com', '1762337526', 'Savar', 'Savar,Dhaka', '2020-04-18 04:13:52', '2020-04-18 04:13:52', 17),
(47, 'Golam Rabbi', 1, 'golamrabbi@gmail.com', '1762337526', 'Savar', 'Savar,Dhaka', '2020-04-18 04:22:32', '2020-04-18 04:22:32', 18),
(48, 'MOAMMAD RABBIL', 25, 'mohammadrabbil@gmail.com', '01675454912', 'DHAKA', 'ganderia', '2020-04-19 04:22:46', '2020-04-19 04:22:46', 19),
(49, 'MOAMMAD RABBIL', 28, 'mohammadrabbil@gmail.com', '01774558990', 'DHAKA', 'Motijhell', '2020-04-20 06:15:27', '2020-04-20 06:15:27', 20),
(50, 'MOAMMAD RABBIL', 28, 'mohammadrabbil@gmail.com', '01774558990', 'DHAKA', 'Motijheel', '2020-04-20 06:34:21', '2020-04-20 06:34:21', 21),
(51, 'MOAMMAD RABBIL', 28, 'mohammadrabbil@gmail.com', '01774558990', 'DHAKA', 'motijheel', '2020-04-20 06:52:01', '2020-04-20 06:52:01', 22),
(52, 'Joyanta', 29, 'joyanta.krodh@gmail.com', '01710330059', 'Dhaka', 'Doyagonj', '2020-04-20 08:54:40', '2020-04-20 08:54:40', 23),
(53, 'Joyanta', 29, 'joyanta.krodh@gmail.com', '01710330059', 'Dhaka', 'Doyagonj', '2020-04-20 08:56:05', '2020-04-20 08:56:05', 24),
(54, 'Joyanta', 29, 'joyanta.krodh@gmail.com', '01710330059', 'Dhaka', 'Doyagonj', '2020-04-20 09:24:06', '2020-04-20 09:24:06', 25);

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
(42, '2014_10_12_000000_create_users_table', 1),
(43, '2014_10_12_100000_create_password_resets_table', 1),
(44, '2019_02_12_113928_create_products_table', 1),
(45, '2019_02_12_154349_create_types_table', 1),
(46, '2019_02_14_095611_create_categories_table', 1),
(47, '2019_02_14_121312_create_category_type_table', 1),
(48, '2019_02_16_131909_create_sizes_table', 1),
(49, '2019_02_17_172415_create_payments_table', 1),
(50, '2019_02_17_172512_create_orders_table', 2),
(51, '2019_02_19_203433_add_category_id_to_types', 2),
(52, '2019_03_08_172441_create_d_addresses_table', 3),
(53, '2019_03_10_223543_create_order_products_table', 4),
(54, '2019_03_31_202719_add_phone_to_users_table', 5),
(55, '2019_04_02_183716_add_order_id_to_d_addresses_table', 6),
(56, '2019_09_08_063242_add_discount_price_to_products', 7);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `total` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `total`, `status`, `created_at`, `updated_at`) VALUES
(2, 19, '40,000.00', 'delivered', '2020-04-02 23:30:40', '2020-04-02 23:42:30'),
(5, 20, '65.00', 'delivered', '2020-04-07 00:34:39', '2020-04-07 08:12:45'),
(6, 20, '65.00', 'pending', '2020-04-07 00:43:02', '2020-04-07 00:43:02'),
(7, 20, '0.00', 'canceled', '2020-04-07 00:44:07', '2020-04-18 04:26:05'),
(8, 15, '195.00', 'delivered', '2020-04-07 06:21:30', '2020-04-07 08:12:53'),
(9, 15, '65.00', 'delivered', '2020-04-07 07:38:01', '2020-04-07 07:40:10'),
(11, 15, '4,360.00', 'delivered', '2020-04-07 09:21:07', '2020-04-07 14:15:30'),
(12, 15, '5,000.00', 'delivered', '2020-04-07 10:13:14', '2020-04-07 14:09:03'),
(13, 15, '5,000.00', 'canceled', '2020-04-07 10:17:59', '2020-04-07 13:09:59'),
(14, 15, '9,000.00', 'delivered', '2020-04-07 10:23:26', '2020-04-07 14:02:12'),
(15, 23, '9,725.00', 'pending', '2020-04-16 21:09:28', '2020-04-16 21:09:28'),
(16, 1, '123.00', 'pending', '2020-04-18 02:23:48', '2020-04-18 02:23:48'),
(17, 1, '1,752.00', 'pending', '2020-04-18 04:13:52', '2020-04-18 04:13:52'),
(18, 1, '10,000.00', 'delivered', '2020-04-18 04:22:32', '2020-04-18 22:03:01'),
(19, 25, '14,011.00', 'delivered', '2020-04-19 04:22:46', '2020-04-19 04:25:11'),
(20, 28, '8,190,000.00', 'pending', '2020-04-20 06:15:27', '2020-04-20 06:15:27'),
(21, 28, '5,000,000.00', 'pending', '2020-04-20 06:34:21', '2020-04-20 06:34:21'),
(22, 28, '8,190,000.00', 'pending', '2020-04-20 06:52:01', '2020-04-20 06:52:01'),
(23, 29, '20,000,000.00', 'pending', '2020-04-20 08:54:40', '2020-04-20 08:54:40'),
(24, 29, '5,000,000.00', 'pending', '2020-04-20 08:56:05', '2020-04-20 08:56:05'),
(25, 29, '5,000,000.00', 'pending', '2020-04-20 09:24:06', '2020-04-20 09:24:06');

-- --------------------------------------------------------

--
-- Table structure for table `order_product`
--

CREATE TABLE `order_product` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `order_product`
--

INSERT INTO `order_product` (`id`, `order_id`, `product_id`, `qty`, `total`) VALUES
(1, 2, 38, 8, 40000),
(2, 4, 41, 40, 2600),
(3, 5, 41, 1, 65),
(4, 6, 41, 1, 65),
(5, 8, 41, 3, 195),
(6, 9, 41, 1, 65),
(7, 10, 42, 1, 220),
(8, 11, 39, 3, 360),
(9, 11, 37, 1, 4000),
(10, 12, 38, 1, 5000),
(11, 13, 38, 1, 5000),
(12, 14, 38, 1, 5000),
(13, 14, 37, 1, 4000),
(14, 15, 46, 2, 246),
(15, 15, 50, 3, 2667),
(16, 15, 48, 4, 1812),
(17, 15, 47, 1, 5000),
(18, 16, 46, 1, 123),
(19, 17, 53, 2, 1752),
(20, 18, 47, 2, 10000),
(21, 19, 47, 1, 5000),
(22, 19, 55, 1, 4555),
(23, 19, 52, 1, 4456),
(24, 20, 59, 1, 150000),
(25, 20, 73, 1, 250000),
(26, 20, 109, 1, 5500000),
(27, 20, 88, 1, 900000),
(28, 20, 137, 1, 710000),
(29, 20, 146, 1, 680000),
(30, 21, 176, 1, 5000000),
(31, 22, 59, 1, 150000),
(32, 22, 73, 1, 250000),
(33, 22, 88, 1, 900000),
(34, 22, 109, 1, 5500000),
(35, 22, 137, 1, 710000),
(36, 22, 146, 1, 680000),
(37, 23, 68, 1, 20000000),
(38, 24, 176, 1, 5000000),
(39, 25, 176, 1, 5000000);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('ritaroy158@diu.edu.bd', '$2y$10$YJxiUM65EV/3At9OWlTZE.g9gzuLH2mIrhVzASuYmm9Kaq3rMBnzC', '2019-10-16 23:59:23'),
('mohammadrabbil@gmail.com', '$2y$10$4ib/yEaUOq/BpuJ3q6Qpg.564Ou3fT2pYzUS14udcn3b2NzS.Tz7i', '2020-04-19 04:07:58');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `payment_category` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `type_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` double(12,4) NOT NULL,
  `quantity` int(11) NOT NULL,
  `product_status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_quality` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `product_photo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `discount_price` varchar(5) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `type_id`, `title`, `price`, `quantity`, `product_status`, `product_quality`, `description`, `product_photo`, `created_at`, `updated_at`, `discount_price`) VALUES
(56, 21, 'Anchor 1500 KG', 200000.0000, 1, 'active', 'regular', 'Brand new Anchor.Each price 2,000,00 Taka.Weight 1500 Kilogram', '1587292513Anchgor 1500 KG.jpg', '2020-04-18 22:01:23', '2020-04-19 04:35:13', '0'),
(57, 22, 'Anchor 1500 KG', 200000.0000, 1, 'active', 'regular', 'Brand new Anchor. Each price 2,000,00 Taka. Weight 1500 KG', '1587308915Anchgor 1500 KG.jpg', '2020-04-19 09:08:35', '2020-04-19 09:08:35', '0'),
(58, 24, 'Anchor 1500 KG', 200000.0000, 1, 'active', 'regular', 'Brand new Anchor. Each price 2,000,00 Taka. Weight 1500 KG', '1587308933Anchgor 1500 KG.jpg', '2020-04-19 09:08:53', '2020-04-19 09:08:53', '0'),
(59, 20, 'Anchor 1000 KG', 150000.0000, 1, 'active', 'regular', 'Brand new Anchor. Each price 1,50,000 Taka. Weight 1000 KG', '1587309119Anchgor 1500 KG.jpg', '2020-04-19 09:09:57', '2020-04-19 09:14:49', '0'),
(60, 31, 'Anchor 1500 KG', 200000.0000, 1, 'active', 'regular', 'Brand new Anchor. Each price 2,000,00 Taka. Weight 1500 KG', '1587309046Anchgor 1500 KG.jpg', '2020-04-19 09:10:46', '2020-04-19 09:21:58', '0'),
(62, 21, 'Anchor 1000 KG', 150000.0000, 1, 'active', 'regular', 'Brand new Anchor.Each price 1,50,000 Taka. Weight 1000 KG', '1587309795Anchor 800kg.jpeg', '2020-04-19 09:23:15', '2020-04-19 09:23:15', '0'),
(63, 22, 'Anchor 1000 KG', 150000.0000, 1, 'active', 'regular', 'Brand new Anchor.Each price 1,50,000 Taka. Weight 1000 KG', '1587309828Anchor 800kg.jpeg', '2020-04-19 09:23:48', '2020-04-19 09:23:48', '0'),
(64, 24, 'Anchor 1000 KG', 150000.0000, 1, 'active', 'regular', 'Brand new Anchor.Each price 1,50,000 Taka. Weight 1000 KG', '1587309842Anchor 800kg.jpeg', '2020-04-19 09:24:02', '2020-04-19 09:24:02', '0'),
(65, 31, 'Anchor 1000 KG', 150000.0000, 1, 'active', 'regular', 'Brand new Anchor.Each price 1,50,000 Taka. Weight 1000 KG', '1587309858Anchor 800kg.jpeg', '2020-04-19 09:24:18', '2020-04-19 09:24:18', '0'),
(67, 30, 'PRIVATE YACHT', 6000000.0000, 1, 'active', 'regular', 'Full Package price 60,000,00 Taka With 1 Year  parts Warranty. All yachts were made of wood or steel.The most common construction material is fibreglass, followed by aluminium, steel, carbon fibre. Motor yachts typically have one or two internal combustion engines that burn diesel fuel or gasoline. Depending on engine size, fuel costs may make motor yachts more expensive to operate than sailing yachts', '1587310650yatch small.jpg', '2020-04-19 09:37:30', '2020-04-21 10:08:59', '0'),
(68, 30, 'LUXURY  YACHT', 20000000.0000, 1, 'active', 'hot deals', 'Full Package price 2,00,00,000 Taka (Two crore BDT Taka) With 1 Year parts Warranty. All yachts were made of wood or steel.The most common construction material is fibreglass, followed by aluminium, steel, carbon fibre. Motor yachts typically have one or two internal combustion engines that burn diesel fuel or gasoline. Depending on engine size, fuel costs may make motor yachts more expensive to operate than sailing yachts', '1587346188Yatch-Management-2.jpg', '2020-04-19 19:29:48', '2020-04-21 10:09:29', '0'),
(69, 32, 'Anchor 1000 KG', 150000.0000, 1, 'active', 'regular', 'Brand new Anchor. Each price 1,50,000 Taka. Weight 1000 KG', '1587348366Anchor 800kg.jpeg', '2020-04-19 20:06:06', '2020-04-19 20:06:06', '0'),
(70, 32, 'Anchor 800 KG', 120000.0000, 1, 'active', 'regular', 'Brand new Anchor. Each price 1,20,000 Taka. Weight 800 KG', '1587348393Anchor 800kg.jpeg', '2020-04-19 20:06:33', '2020-04-19 20:06:33', '0'),
(71, 33, 'Anchor 2000 KG', 320000.0000, 1, 'active', 'regular', 'Brand new Anchor. Each price 3,20,000 Taka. Weight 2000 KG', '1587348454Anchor 800kg.jpeg', '2020-04-19 20:07:34', '2020-04-19 20:07:34', '0'),
(72, 33, 'Anchor 2500 KG', 450000.0000, 1, 'active', 'regular', 'Brand new Anchor. Each price 4,50,000 Taka. Weight 2500 KG', '1587348574Anchgor 1500 KG.jpg', '2020-04-19 20:09:34', '2020-04-19 20:09:34', '0'),
(73, 20, 'Global Positioning System (GPS)', 250000.0000, 1, 'active', 'regular', 'A Global Positioning System (GPS) receiver is a display system used to show the ship\'s location with the help of Global positioning satellite in the earth\'s orbit.\r\n1 Set Price 2,50,000 BDT Taka', '1587348873GPS.jpg', '2020-04-19 20:14:33', '2020-04-19 20:14:33', '0'),
(74, 21, 'Global Positioning System (GPS)', 250000.0000, 1, 'active', 'regular', 'A Global Positioning System (GPS) receiver is a display system used to show the ship\'s location with the help of Global positioning satellite in the earth\'s orbit.\r\n1 Set Price 2,50,000 BDT Taka', '1587348884GPS.jpg', '2020-04-19 20:14:44', '2020-04-19 20:14:44', '0'),
(75, 22, 'Global Positioning System (GPS)', 250000.0000, 1, 'active', 'regular', 'A Global Positioning System (GPS) receiver is a display system used to show the ship\'s location with the help of Global positioning satellite in the earth\'s orbit.\r\n1 Set Price 2,50,000 BDT Taka', '1587348891GPS.jpg', '2020-04-19 20:14:51', '2020-04-19 20:14:51', '0'),
(76, 24, 'Global Positioning System (GPS)', 250000.0000, 1, 'active', 'regular', 'A Global Positioning System (GPS) receiver is a display system used to show the ship\'s location with the help of Global positioning satellite in the earth\'s orbit.\r\n1 Set Price 2,50,000 BDT Taka', '1587348897GPS.jpg', '2020-04-19 20:14:57', '2020-04-19 20:14:57', '0'),
(78, 31, 'Global Positioning System (GPS)', 250000.0000, 1, 'active', 'regular', 'A Global Positioning System (GPS) receiver is a display system used to show the ship\'s location with the help of Global positioning satellite in the earth\'s orbit.\r\n1 Set Price 2,50,000 BDT Taka', '1587348913GPS.jpg', '2020-04-19 20:15:13', '2020-04-19 20:15:13', '0'),
(79, 32, 'Global Positioning System (GPS)', 250000.0000, 1, 'active', 'regular', 'A Global Positioning System (GPS) receiver is a display system used to show the ship\'s location with the help of Global positioning satellite in the earth\'s orbit.\r\n1 Set Price 2,50,000 BDT Taka', '1587348921GPS.jpg', '2020-04-19 20:15:21', '2020-04-19 20:15:21', '0'),
(80, 33, 'Global Positioning System (GPS)', 250000.0000, 1, 'active', 'regular', 'A Global Positioning System (GPS) receiver is a display system used to show the ship\'s location with the help of Global positioning satellite in the earth\'s orbit.\r\n1 Set Price 2,50,000 BDT Taka', '1587348928GPS.jpg', '2020-04-19 20:15:28', '2020-04-19 20:15:28', '0'),
(81, 33, 'Marine VHF Radio', 80000.0000, 1, 'active', 'regular', '1 Set Price 80,000 BDT Taka. \r\nMarine VHF radio equipment is installed on all large ships and most seagoing small craft. It is also used, with slightly different regulation, on rivers and lakes. It is used for a wide variety of purposes, including marine navigation and traffic control, summoning rescue services and communicating with harbours, locks, bridges and marinas', '1587349425VHF.jpg', '2020-04-19 20:21:00', '2020-04-19 20:23:45', '0'),
(82, 20, 'Marine VHF Radio', 80000.0000, 1, 'deactivate', 'regular', '1 Set Price 80,000 BDT Taka. \r\nMarine VHF radio equipment is installed on all large ships and most seagoing small craft. It is also used, with slightly different regulation, on rivers and lakes. It is used for a wide variety of purposes, including marine navigation and traffic control, summoning rescue services and communicating with harbours, locks, bridges and marinas', '1587349525VHF.jpg', '2020-04-19 20:25:25', '2020-04-19 20:25:25', '0'),
(83, 21, 'Marine VHF Radio', 80000.0000, 1, 'deactivate', 'regular', '1 Set Price 80,000 BDT Taka. \r\nMarine VHF radio equipment is installed on all large ships and most seagoing small craft. It is also used, with slightly different regulation, on rivers and lakes. It is used for a wide variety of purposes, including marine navigation and traffic control, summoning rescue services and communicating with harbours, locks, bridges and marinas', '1587349540VHF.jpg', '2020-04-19 20:25:40', '2020-04-19 20:25:40', '0'),
(84, 22, 'Marine VHF Radio', 80000.0000, 1, 'deactivate', 'regular', '1 Set Price 80,000 BDT Taka. \r\nMarine VHF radio equipment is installed on all large ships and most seagoing small craft. It is also used, with slightly different regulation, on rivers and lakes. It is used for a wide variety of purposes, including marine navigation and traffic control, summoning rescue services and communicating with harbours, locks, bridges and marinas', '1587349546VHF.jpg', '2020-04-19 20:25:46', '2020-04-19 20:25:46', '0'),
(85, 24, 'Marine VHF Radio', 80000.0000, 1, 'deactivate', 'regular', '1 Set Price 80,000 BDT Taka. \r\nMarine VHF radio equipment is installed on all large ships and most seagoing small craft. It is also used, with slightly different regulation, on rivers and lakes. It is used for a wide variety of purposes, including marine navigation and traffic control, summoning rescue services and communicating with harbours, locks, bridges and marinas', '1587349553VHF.jpg', '2020-04-19 20:25:53', '2020-04-19 20:25:53', '0'),
(86, 31, 'Marine VHF Radio', 80000.0000, 1, 'deactivate', 'regular', '1 Set Price 80,000 BDT Taka. \r\nMarine VHF radio equipment is installed on all large ships and most seagoing small craft. It is also used, with slightly different regulation, on rivers and lakes. It is used for a wide variety of purposes, including marine navigation and traffic control, summoning rescue services and communicating with harbours, locks, bridges and marinas', '1587349575VHF.jpg', '2020-04-19 20:26:15', '2020-04-19 20:26:15', '0'),
(87, 32, 'Marine VHF Radio', 80000.0000, 1, 'deactivate', 'regular', '1 Set Price 80,000 BDT Taka. \r\nMarine VHF radio equipment is installed on all large ships and most seagoing small craft. It is also used, with slightly different regulation, on rivers and lakes. It is used for a wide variety of purposes, including marine navigation and traffic control, summoning rescue services and communicating with harbours, locks, bridges and marinas', '1587349588VHF.jpg', '2020-04-19 20:26:28', '2020-04-19 20:26:28', '0'),
(88, 20, 'PROPELLOR', 900000.0000, 1, 'active', 'regular', 'Price Each 9,000,00 BDT Taka. Price are Based on Propellor Dimeter', '1587350097propellor small.jpg', '2020-04-19 20:34:57', '2020-04-19 20:34:57', '0'),
(89, 21, 'PROPELLOR', 900000.0000, 1, 'active', 'regular', 'Price Each 9,000,00 BDT Taka. Price are Based on Propellor Dimeter', '1587350125propellor small.jpg', '2020-04-19 20:35:25', '2020-04-19 20:35:25', '0'),
(90, 22, 'PROPELLOR', 900000.0000, 1, 'active', 'regular', 'Price Each 9,000,00 BDT Taka. Price are Based on Propellor Dimeter', '1587350135propellor small.jpg', '2020-04-19 20:35:35', '2020-04-19 20:35:35', '0'),
(91, 24, 'PROPELLOR', 900000.0000, 1, 'active', 'regular', 'Price Each 9,000,00 BDT Taka. Price are Based on Propellor Dimeter', '1587350143propellor small.jpg', '2020-04-19 20:35:43', '2020-04-19 20:35:43', '0'),
(92, 31, 'PROPELLOR', 900000.0000, 1, 'active', 'regular', 'Price Each 9,000,00 BDT Taka. Price are Based on Propellor Dimeter', '1587350150propellor small.jpg', '2020-04-19 20:35:50', '2020-04-19 20:35:50', '0'),
(93, 32, 'PROPELLOR', 900000.0000, 1, 'active', 'regular', 'Price Each 9,000,00 BDT Taka. Price are Based on Propellor Dimeter', '1587350161propellor small.jpg', '2020-04-19 20:36:01', '2020-04-19 20:36:01', '0'),
(94, 33, 'PROPELLOR', 900000.0000, 1, 'active', 'regular', 'Price Each 9,000,00 BDT Taka. Price are Based on Propellor Dimeter', '1587350169propellor small.jpg', '2020-04-19 20:36:09', '2020-04-19 20:36:09', '0'),
(95, 20, 'PROPELLOR', 700000.0000, 1, 'active', 'regular', 'Price Each 7,000,00 BDT Taka. Price are Based on Propellor Dimeter', '1587350354PROPELLOR finakl.jpg', '2020-04-19 20:39:14', '2020-04-19 20:39:14', '0'),
(96, 21, 'PROPELLOR', 700000.0000, 1, 'active', 'regular', 'Price Each 7,000,00 BDT Taka. Price are Based on Propellor Dimeter', '1587350361PROPELLOR finakl.jpg', '2020-04-19 20:39:21', '2020-04-19 20:39:21', '0'),
(97, 22, 'PROPELLOR', 700000.0000, 1, 'active', 'regular', 'Price Each 7,000,00 BDT Taka. Price are Based on Propellor Dimeter', '1587350367PROPELLOR finakl.jpg', '2020-04-19 20:39:27', '2020-04-19 20:39:27', '0'),
(98, 24, 'PROPELLOR', 700000.0000, 1, 'active', 'regular', 'Price Each 7,000,00 BDT Taka. Price are Based on Propellor Dimeter', '1587350374PROPELLOR finakl.jpg', '2020-04-19 20:39:34', '2020-04-19 20:39:34', '0'),
(99, 31, 'PROPELLOR', 700000.0000, 1, 'active', 'regular', 'Price Each 7,000,00 BDT Taka. Price are Based on Propellor Dimeter', '1587350381PROPELLOR finakl.jpg', '2020-04-19 20:39:41', '2020-04-19 20:39:41', '0'),
(100, 32, 'PROPELLOR', 700000.0000, 1, 'active', 'regular', 'Price Each 7,000,00 BDT Taka. Price are Based on Propellor Dimeter', '1587350387PROPELLOR finakl.jpg', '2020-04-19 20:39:47', '2020-04-19 20:39:47', '0'),
(101, 33, 'PROPELLOR', 700000.0000, 1, 'active', 'regular', 'Price Each 7,000,00 BDT Taka. Price are Based on Propellor Dimeter', '1587350394PROPELLOR finakl.jpg', '2020-04-19 20:39:54', '2020-04-19 20:39:54', '0'),
(102, 20, 'MARINE ENGINE', 7000000.0000, 1, 'active', 'regular', 'Price 1 Set Complete 70,000,00 BDT Taka || MARINE ENGINE WITH GEARBOX \"WEICHAI BRAND\" ||\r\nENGINE MODEL-X6170ZC-1 (6-CYLINDER ENGINE) ||\r\n750HP / 368KW / 1200RPM ||\r\nSET MODEL-W366CS4 & W366CN4\r\nGEAR MODEL- HCD400, RATIO- 4:1:\r\nWEICHAI HEAVY MACHINERY CO., LTD ||\r\nHANGZHOU ADVANCE BRAND GEARBOX ||\r\nMADE IN CHINA', '1587350997750 HP Engine.jpg', '2020-04-19 20:44:35', '2020-04-19 20:54:07', '0'),
(103, 21, 'MARINE ENGINE', 7000000.0000, 1, 'deactivate', 'regular', 'Price 1 Set Complete 70,000,00 BDT Taka || MARINE ENGINE WITH GEARBOX \"WEICHAI BRAND\" ||\r\nENGINE MODEL-X6170ZC-1 (6-CYLINDER ENGINE) ||\r\n750HP / 368KW / 1200RPM ||\r\nSET MODEL-W366CS4 & W366CN4\r\nGEAR MODEL- HCD400, RATIO- 4:1:\r\nWEICHAI HEAVY MACHINERY CO., LTD ||\r\nHANGZHOU ADVANCE BRAND GEARBOX ||\r\nMADE IN CHINA', '1587350915750 HP Engine.jpg', '2020-04-19 20:48:35', '2020-04-19 20:53:33', '0'),
(104, 22, 'MARINE ENGINE', 7000000.0000, 1, 'active', 'regular', 'Price 1 Set Complete 70,000,00 BDT Taka || MARINE ENGINE WITH GEARBOX \"WEICHAI BRAND\" ||\r\nENGINE MODEL-X6170ZC-1 (6-CYLINDER ENGINE) ||\r\n750HP / 368KW / 1200RPM ||\r\nSET MODEL-W366CS4 & W366CN4\r\nGEAR MODEL- HCD400, RATIO- 4:1:\r\nWEICHAI HEAVY MACHINERY CO., LTD ||\r\nHANGZHOU ADVANCE BRAND GEARBOX ||\r\nMADE IN CHINA', '1587351286750 HP Engine.jpg', '2020-04-19 20:54:46', '2020-04-19 20:54:46', '0'),
(105, 24, 'MARINE ENGINE', 7000000.0000, 1, 'active', 'regular', 'Price 1 Set Complete 70,000,00 BDT Taka || MARINE ENGINE WITH GEARBOX \"WEICHAI BRAND\" ||\r\nENGINE MODEL-X6170ZC-1 (6-CYLINDER ENGINE) ||\r\n750HP / 368KW / 1200RPM ||\r\nSET MODEL-W366CS4 & W366CN4\r\nGEAR MODEL- HCD400, RATIO- 4:1:\r\nWEICHAI HEAVY MACHINERY CO., LTD ||\r\nHANGZHOU ADVANCE BRAND GEARBOX ||\r\nMADE IN CHINA', '1587353380750 HP Engine.jpg', '2020-04-19 21:29:40', '2020-04-19 21:29:40', '0'),
(106, 31, 'MARINE ENGINE', 7000000.0000, 1, 'active', 'regular', 'Price 1 Set Complete 70,000,00 BDT Taka || MARINE ENGINE WITH GEARBOX \"WEICHAI BRAND\" ||\r\nENGINE MODEL-X6170ZC-1 (6-CYLINDER ENGINE) ||\r\n750HP / 368KW / 1200RPM ||\r\nSET MODEL-W366CS4 & W366CN4\r\nGEAR MODEL- HCD400, RATIO- 4:1:\r\nWEICHAI HEAVY MACHINERY CO., LTD ||\r\nHANGZHOU ADVANCE BRAND GEARBOX ||\r\nMADE IN CHINA', '1587353397750 HP Engine.jpg', '2020-04-19 21:29:57', '2020-04-19 21:29:57', '0'),
(107, 32, 'MARINE ENGINE', 7000000.0000, 1, 'active', 'regular', 'Price 1 Set Complete 70,000,00 BDT Taka || MARINE ENGINE WITH GEARBOX \"WEICHAI BRAND\" ||\r\nENGINE MODEL-X6170ZC-1 (6-CYLINDER ENGINE) ||\r\n750HP / 368KW / 1200RPM ||\r\nSET MODEL-W366CS4 & W366CN4\r\nGEAR MODEL- HCD400, RATIO- 4:1:\r\nWEICHAI HEAVY MACHINERY CO., LTD ||\r\nHANGZHOU ADVANCE BRAND GEARBOX ||\r\nMADE IN CHINA', '1587353405750 HP Engine.jpg', '2020-04-19 21:30:05', '2020-04-19 21:30:05', '0'),
(108, 33, 'MARINE ENGINE', 7000000.0000, 1, 'active', 'regular', 'Price 1 Set Complete 70,000,00 BDT Taka || MARINE ENGINE WITH GEARBOX \"WEICHAI BRAND\" ||\r\nENGINE MODEL-X6170ZC-1 (6-CYLINDER ENGINE) ||\r\n750HP / 368KW / 1200RPM ||\r\nSET MODEL-W366CS4 & W366CN4\r\nGEAR MODEL- HCD400, RATIO- 4:1:\r\nWEICHAI HEAVY MACHINERY CO., LTD ||\r\nHANGZHOU ADVANCE BRAND GEARBOX ||\r\nMADE IN CHINA', '1587353414750 HP Engine.jpg', '2020-04-19 21:30:14', '2020-04-19 21:30:14', '0'),
(109, 20, 'MARINE ENGINE', 5500000.0000, 1, 'active', 'regular', 'Price 1 Set Complete 55,000,00 BDT Taka || MARINE ENGINE WITH GEARBOX \"WEICHAI BRAND\"  ||\r\nENGINE MODEL-X6170ZC-1 (6-CYLINDER ENGINE) ||\r\n550HP / 368KW / 1200RPM ||\r\nSET MODEL-W366CS4 & W366CN4 ||\r\nGEAR MODEL- HCD400, RATIO- 4:1: ||\r\nWEICHAI HEAVY MACHINERY CO., LTD\r\nHANGZHOU ADVANCE BRAND GEARBOX ||\r\nMADE IN CHINA', '1587353655550 HP Engine.jpg', '2020-04-19 21:34:15', '2020-04-19 21:34:15', '0'),
(110, 21, 'MARINE ENGINE', 5500000.0000, 1, 'active', 'regular', 'Price 1 Set Complete 55,000,00 BDT Taka || MARINE ENGINE WITH GEARBOX \"WEICHAI BRAND\"  ||\r\nENGINE MODEL-X6170ZC-1 (6-CYLINDER ENGINE) ||\r\n550HP / 368KW / 1200RPM ||\r\nSET MODEL-W366CS4 & W366CN4 ||\r\nGEAR MODEL- HCD400, RATIO- 4:1: ||\r\nWEICHAI HEAVY MACHINERY CO., LTD\r\nHANGZHOU ADVANCE BRAND GEARBOX ||\r\nMADE IN CHINA', '1587353669550 HP Engine.jpg', '2020-04-19 21:34:29', '2020-04-19 21:34:29', '0'),
(111, 22, 'MARINE ENGINE', 5500000.0000, 1, 'active', 'regular', 'Price 1 Set Complete 55,000,00 BDT Taka || MARINE ENGINE WITH GEARBOX \"WEICHAI BRAND\"  ||\r\nENGINE MODEL-X6170ZC-1 (6-CYLINDER ENGINE) ||\r\n550HP / 368KW / 1200RPM ||\r\nSET MODEL-W366CS4 & W366CN4 ||\r\nGEAR MODEL- HCD400, RATIO- 4:1: ||\r\nWEICHAI HEAVY MACHINERY CO., LTD\r\nHANGZHOU ADVANCE BRAND GEARBOX ||\r\nMADE IN CHINA', '1587353680550 HP Engine.jpg', '2020-04-19 21:34:40', '2020-04-19 21:34:40', '0'),
(112, 24, 'MARINE ENGINE', 5500000.0000, 1, 'active', 'regular', 'Price 1 Set Complete 55,000,00 BDT Taka || MARINE ENGINE WITH GEARBOX \"WEICHAI BRAND\"  ||\r\nENGINE MODEL-X6170ZC-1 (6-CYLINDER ENGINE) ||\r\n550HP / 368KW / 1200RPM ||\r\nSET MODEL-W366CS4 & W366CN4 ||\r\nGEAR MODEL- HCD400, RATIO- 4:1: ||\r\nWEICHAI HEAVY MACHINERY CO., LTD\r\nHANGZHOU ADVANCE BRAND GEARBOX ||\r\nMADE IN CHINA', '1587353690550 HP Engine.jpg', '2020-04-19 21:34:50', '2020-04-19 21:34:50', '0'),
(113, 31, 'MARINE ENGINE', 5500000.0000, 1, 'active', 'regular', 'Price 1 Set Complete 55,000,00 BDT Taka || MARINE ENGINE WITH GEARBOX \"WEICHAI BRAND\"  ||\r\nENGINE MODEL-X6170ZC-1 (6-CYLINDER ENGINE) ||\r\n550HP / 368KW / 1200RPM ||\r\nSET MODEL-W366CS4 & W366CN4 ||\r\nGEAR MODEL- HCD400, RATIO- 4:1: ||\r\nWEICHAI HEAVY MACHINERY CO., LTD\r\nHANGZHOU ADVANCE BRAND GEARBOX ||\r\nMADE IN CHINA', '1587353697550 HP Engine.jpg', '2020-04-19 21:34:57', '2020-04-19 21:34:57', '0'),
(114, 32, 'MARINE ENGINE', 5500000.0000, 1, 'active', 'regular', 'Price 1 Set Complete 55,000,00 BDT Taka || MARINE ENGINE WITH GEARBOX \"WEICHAI BRAND\"  ||\r\nENGINE MODEL-X6170ZC-1 (6-CYLINDER ENGINE) ||\r\n550HP / 368KW / 1200RPM ||\r\nSET MODEL-W366CS4 & W366CN4 ||\r\nGEAR MODEL- HCD400, RATIO- 4:1: ||\r\nWEICHAI HEAVY MACHINERY CO., LTD\r\nHANGZHOU ADVANCE BRAND GEARBOX ||\r\nMADE IN CHINA', '1587353706550 HP Engine.jpg', '2020-04-19 21:35:06', '2020-04-19 21:35:06', '0'),
(115, 33, 'MARINE ENGINE', 5500000.0000, 1, 'active', 'regular', 'Price 1 Set Complete 55,000,00 BDT Taka || MARINE ENGINE WITH GEARBOX \"WEICHAI BRAND\"  ||\r\nENGINE MODEL-X6170ZC-1 (6-CYLINDER ENGINE) ||\r\n550HP / 368KW / 1200RPM ||\r\nSET MODEL-W366CS4 & W366CN4 ||\r\nGEAR MODEL- HCD400, RATIO- 4:1: ||\r\nWEICHAI HEAVY MACHINERY CO., LTD\r\nHANGZHOU ADVANCE BRAND GEARBOX ||\r\nMADE IN CHINA', '1587353717550 HP Engine.jpg', '2020-04-19 21:35:17', '2020-04-19 21:35:17', '0'),
(116, 20, 'MARINE ENGINE', 4500000.0000, 1, 'active', 'regular', 'Price 1 Set Complete 45,000,00 BDT Taka || MARINE ENGINE WITH GEARBOX \"WEICHAI BRAND\" ||\r\nENGINE MODEL-WHM6160C350-1 (6-CYLINDER ENGINE) ||\r\n350HP/255KW/1000RPM (AIR START) ||\r\nSET MODEL: W245C83.5 & W245CN3.5 ||\r\nGEAR MODEL: HC300, RATIO:- 3.5:1\r\nWEICHAI HEAVY MACHINERY CO., LTD ||\r\nHANGZHOU ADVANCE BRAND GEARBOX ||\r\nMADE IN CHINA', '1587353824350 HP main Engine.jpg', '2020-04-19 21:37:04', '2020-04-19 21:37:04', '0'),
(117, 21, 'MARINE ENGINE', 4500000.0000, 1, 'active', 'regular', 'Price 1 Set Complete 45,000,00 BDT Taka || MARINE ENGINE WITH GEARBOX \"WEICHAI BRAND\" ||\r\nENGINE MODEL-WHM6160C350-1 (6-CYLINDER ENGINE) ||\r\n350HP/255KW/1000RPM (AIR START) ||\r\nSET MODEL: W245C83.5 & W245CN3.5 ||\r\nGEAR MODEL: HC300, RATIO:- 3.5:1\r\nWEICHAI HEAVY MACHINERY CO., LTD ||\r\nHANGZHOU ADVANCE BRAND GEARBOX ||\r\nMADE IN CHINA', '1587353834350 HP main Engine.jpg', '2020-04-19 21:37:14', '2020-04-19 21:37:14', '0'),
(118, 22, 'MARINE ENGINE', 4500000.0000, 1, 'active', 'regular', 'Price 1 Set Complete 45,000,00 BDT Taka || MARINE ENGINE WITH GEARBOX \"WEICHAI BRAND\" ||\r\nENGINE MODEL-WHM6160C350-1 (6-CYLINDER ENGINE) ||\r\n350HP/255KW/1000RPM (AIR START) ||\r\nSET MODEL: W245C83.5 & W245CN3.5 ||\r\nGEAR MODEL: HC300, RATIO:- 3.5:1\r\nWEICHAI HEAVY MACHINERY CO., LTD ||\r\nHANGZHOU ADVANCE BRAND GEARBOX ||\r\nMADE IN CHINA', '1587353841350 HP main Engine.jpg', '2020-04-19 21:37:21', '2020-04-19 21:37:21', '0'),
(119, 24, 'MARINE ENGINE', 4500000.0000, 1, 'active', 'regular', 'Price 1 Set Complete 45,000,00 BDT Taka || MARINE ENGINE WITH GEARBOX \"WEICHAI BRAND\" ||\r\nENGINE MODEL-WHM6160C350-1 (6-CYLINDER ENGINE) ||\r\n350HP/255KW/1000RPM (AIR START) ||\r\nSET MODEL: W245C83.5 & W245CN3.5 ||\r\nGEAR MODEL: HC300, RATIO:- 3.5:1\r\nWEICHAI HEAVY MACHINERY CO., LTD ||\r\nHANGZHOU ADVANCE BRAND GEARBOX ||\r\nMADE IN CHINA', '1587353847350 HP main Engine.jpg', '2020-04-19 21:37:27', '2020-04-19 21:37:27', '0'),
(120, 31, 'MARINE ENGINE', 4500000.0000, 1, 'active', 'regular', 'Price 1 Set Complete 45,000,00 BDT Taka || MARINE ENGINE WITH GEARBOX \"WEICHAI BRAND\" ||\r\nENGINE MODEL-WHM6160C350-1 (6-CYLINDER ENGINE) ||\r\n350HP/255KW/1000RPM (AIR START) ||\r\nSET MODEL: W245C83.5 & W245CN3.5 ||\r\nGEAR MODEL: HC300, RATIO:- 3.5:1\r\nWEICHAI HEAVY MACHINERY CO., LTD ||\r\nHANGZHOU ADVANCE BRAND GEARBOX ||\r\nMADE IN CHINA', '1587353855350 HP main Engine.jpg', '2020-04-19 21:37:35', '2020-04-19 21:37:35', '0'),
(121, 32, 'MARINE ENGINE', 4500000.0000, 1, 'active', 'regular', 'Price 1 Set Complete 45,000,00 BDT Taka || MARINE ENGINE WITH GEARBOX \"WEICHAI BRAND\" ||\r\nENGINE MODEL-WHM6160C350-1 (6-CYLINDER ENGINE) ||\r\n350HP/255KW/1000RPM (AIR START) ||\r\nSET MODEL: W245C83.5 & W245CN3.5 ||\r\nGEAR MODEL: HC300, RATIO:- 3.5:1\r\nWEICHAI HEAVY MACHINERY CO., LTD ||\r\nHANGZHOU ADVANCE BRAND GEARBOX ||\r\nMADE IN CHINA', '1587353861350 HP main Engine.jpg', '2020-04-19 21:37:41', '2020-04-19 21:37:41', '0'),
(122, 33, 'MARINE ENGINE', 4500000.0000, 1, 'active', 'regular', 'Price 1 Set Complete 45,000,00 BDT Taka || MARINE ENGINE WITH GEARBOX \"WEICHAI BRAND\" ||\r\nENGINE MODEL-WHM6160C350-1 (6-CYLINDER ENGINE) ||\r\n350HP/255KW/1000RPM (AIR START) ||\r\nSET MODEL: W245C83.5 & W245CN3.5 ||\r\nGEAR MODEL: HC300, RATIO:- 3.5:1\r\nWEICHAI HEAVY MACHINERY CO., LTD ||\r\nHANGZHOU ADVANCE BRAND GEARBOX ||\r\nMADE IN CHINA', '1587353867350 HP main Engine.jpg', '2020-04-19 21:37:47', '2020-04-19 21:37:47', '0'),
(123, 20, 'MARINE WINCH ENGINE', 350000.0000, 1, 'active', 'regular', 'Price 1 Set Complete 3,50,000 BDT Taka || MARINE 50 HP (Horse Power) WINCH ENGINE \"WEICHAI BRAND\" ||\r\nWEICHAI HEAVY MACHINERY CO., LTD ||\r\nMADE IN CHINA', '1587354143WINCHENGINE 50 HP.jpg', '2020-04-19 21:42:23', '2020-04-19 21:42:23', '0'),
(124, 21, 'MARINE WINCH ENGINE', 350000.0000, 1, 'active', 'regular', 'Price 1 Set Complete 3,50,000 BDT Taka || MARINE 50 HP (Horse Power) WINCH ENGINE \"WEICHAI BRAND\" ||\r\nWEICHAI HEAVY MACHINERY CO., LTD ||\r\nMADE IN CHINA', '1587354150WINCHENGINE 50 HP.jpg', '2020-04-19 21:42:30', '2020-04-19 21:42:30', '0'),
(125, 22, 'MARINE WINCH ENGINE', 350000.0000, 1, 'active', 'regular', 'Price 1 Set Complete 3,50,000 BDT Taka || MARINE 50 HP (Horse Power) WINCH ENGINE \"WEICHAI BRAND\" ||\r\nWEICHAI HEAVY MACHINERY CO., LTD ||\r\nMADE IN CHINA', '1587354155WINCHENGINE 50 HP.jpg', '2020-04-19 21:42:35', '2020-04-19 21:42:35', '0'),
(126, 24, 'MARINE WINCH ENGINE', 350000.0000, 1, 'active', 'regular', 'Price 1 Set Complete 3,50,000 BDT Taka || MARINE 50 HP (Horse Power) WINCH ENGINE \"WEICHAI BRAND\" ||\r\nWEICHAI HEAVY MACHINERY CO., LTD ||\r\nMADE IN CHINA', '1587354160WINCHENGINE 50 HP.jpg', '2020-04-19 21:42:40', '2020-04-19 21:42:40', '0'),
(127, 31, 'MARINE WINCH ENGINE', 350000.0000, 1, 'active', 'regular', 'Price 1 Set Complete 3,50,000 BDT Taka || MARINE 50 HP (Horse Power) WINCH ENGINE \"WEICHAI BRAND\" ||\r\nWEICHAI HEAVY MACHINERY CO., LTD ||\r\nMADE IN CHINA', '1587354168WINCHENGINE 50 HP.jpg', '2020-04-19 21:42:48', '2020-04-19 21:42:48', '0'),
(128, 32, 'MARINE WINCH ENGINE', 350000.0000, 1, 'active', 'regular', 'Price 1 Set Complete 3,50,000 BDT Taka || MARINE 50 HP (Horse Power) WINCH ENGINE \"WEICHAI BRAND\" ||\r\nWEICHAI HEAVY MACHINERY CO., LTD ||\r\nMADE IN CHINA', '1587354175WINCHENGINE 50 HP.jpg', '2020-04-19 21:42:55', '2020-04-19 21:42:55', '0'),
(129, 33, 'MARINE WINCH ENGINE', 350000.0000, 1, 'active', 'regular', 'Price 1 Set Complete 3,50,000 BDT Taka || MARINE 50 HP (Horse Power) WINCH ENGINE \"WEICHAI BRAND\" ||\r\nWEICHAI HEAVY MACHINERY CO., LTD ||\r\nMADE IN CHINA', '1587354181WINCHENGINE 50 HP.jpg', '2020-04-19 21:43:01', '2020-04-19 21:43:01', '0'),
(130, 21, 'Steel Plate 10 mm', 750000.0000, 10, 'active', 'regular', '10 mm Mild steel Sheet || Steel Plate price per TON basis || (***1 TON=1000 KG) || Minimum order 10 TON. Total Price ( 10 TON * 75,000 /- )=  BDT 7,50,000 BDT Taka.', '1587355006Stell Plate 10 mm.jpg', '2020-04-19 21:56:46', '2020-04-19 22:19:20', '0'),
(131, 20, 'Steel Plate 10 mm', 750000.0000, 10, 'active', 'regular', '10 mm Mild steel Sheet || Steel Plate price per TON basis || (***1 TON=1000 KG) || Minimum order 10 TON. Total Price ( 10 TON * 75,000 /- )=  BDT 7,50,000 BDT Taka.', '1587355036Stell Plate 10 mm.jpg', '2020-04-19 21:57:16', '2020-04-19 22:18:56', '0'),
(132, 22, 'Steel Plate 10 mm', 750000.0000, 10, 'active', 'regular', '10 mm Mild steel Sheet || Steel Plate price per TON basis || (***1 TON=1000 KG) || Minimum order 10 TON. Total Price ( 10 TON * 75,000 /- )=  BDT 7,50,000 BDT Taka.', '1587355078Stell Plate 10 mm.jpg', '2020-04-19 21:57:58', '2020-04-19 22:22:14', '0'),
(133, 24, 'Steel Plate 10 mm', 750000.0000, 10, 'active', 'regular', '10 mm Mild steel Sheet || Steel Plate price per TON basis || (***1 TON=1000 KG) || Minimum order 10 TON. Total Price ( 10 TON * 75,000 /- )=  BDT 7,50,000 BDT Taka.', '1587355084Stell Plate 10 mm.jpg', '2020-04-19 21:58:04', '2020-04-19 22:24:15', '0'),
(134, 31, 'Steel Plate 10 mm', 750000.0000, 10, 'active', 'regular', '10 mm Mild steel Sheet || Steel Plate price per TON basis || (***1 TON=1000 KG) || Minimum order 10 TON. Total Price ( 10 TON * 75,000 /- )=  BDT 7,50,000 BDT Taka.', '1587355090Stell Plate 10 mm.jpg', '2020-04-19 21:58:10', '2020-04-19 22:27:04', '0'),
(135, 32, 'Steel Plate 10 mm', 750000.0000, 10, 'active', 'regular', '10 mm Mild steel Sheet || Stell Plate price per TON basis || (***1 TON=1000 KG) || Minimum order 10 TON. Total Price ( 10 TON * 75,000 /- )=  BDT 7,50,000 BDT Taka.', '1587355096Stell Plate 10 mm.jpg', '2020-04-19 21:58:16', '2020-04-19 22:29:35', '0'),
(136, 33, 'Stell Plate 10 mm', 750000.0000, 1, 'active', 'regular', '10 mm Mild steel Sheet.Stell Plate price per TON basis || (***1 TON=1000 KG) || Minimum order 10 TON. Total Price ( 10 TON * 75,000 /- )=  BDT 7,50,000 BDT Taka.', '1587355104Stell Plate 10 mm.jpg', '2020-04-19 21:58:24', '2020-04-19 21:58:24', '0'),
(137, 20, 'Steel Plate 12 mm', 710000.0000, 10, 'active', 'regular', '12 mm Mild steel Sheet || Steel Plate price per TON basis || (***1 TON=1000 KG) || Minimum order 10 TON. Total Price ( 10 TON * 71,000 /- )= BDT 7,10,000 BDT Taka.', '1587355444Stell plate 12 mm.jpg', '2020-04-19 22:04:04', '2020-04-19 22:15:54', '0'),
(138, 21, 'Steel Plate 12 mm', 710000.0000, 10, 'active', 'regular', '12 mm Mild steel Sheet.Steel || Steel Plate price per TON basis || (***1 TON=1000 KG) || Minimum order 10 TON. Total Price ( 10 TON * 71,000 /- )= BDT 7,10,000 BDT Taka.', '1587355452Stell plate 12 mm.jpg', '2020-04-19 22:04:12', '2020-04-19 22:18:35', '0'),
(139, 22, 'Stell Plate 12 mm', 710000.0000, 10, 'active', 'regular', '12 mm Mild steel Sheet.Stell Plate price per TON basis || (***1 TON=1000 KG) || Minimum order 10 TON. Total Price ( 10 TON * 71,000 /- )= BDT 7,10,000 BDT Taka.', '1587355460Stell plate 12 mm.jpg', '2020-04-19 22:04:20', '2020-04-19 22:04:20', '0'),
(140, 24, 'Steel Plate 12 mm', 710000.0000, 10, 'active', 'regular', '12 mm Mild steel Sheet || Steel Plate price per TON basis || (***1 TON=1000 KG) || Minimum order 10 TON. Total Price ( 10 TON * 71,000 /- )= BDT 7,10,000 BDT Taka.', '1587355465Stell plate 12 mm.jpg', '2020-04-19 22:04:25', '2020-04-19 22:25:04', '0'),
(141, 31, 'Steel Plate 12 mm', 710000.0000, 10, 'active', 'regular', '12 mm Mild Steel Sheet || Steel Plate price per TON basis || (***1 TON=1000 KG) || Minimum order 10 TON. Total Price ( 10 TON * 71,000 /- )= BDT 7,10,000 BDT Taka.', '1587355471Stell plate 12 mm.jpg', '2020-04-19 22:04:31', '2020-04-19 22:26:44', '0'),
(142, 32, 'Steel Plate 12 mm', 710000.0000, 10, 'active', 'regular', '12 mm Mild steel Sheet || Steel Plate price per TON basis || (***1 TON=1000 KG) || Minimum order 10 TON. Total Price ( 10 TON * 71,000 /- )= BDT 7,10,000 BDT Taka.', '1587355479Stell plate 12 mm.jpg', '2020-04-19 22:04:39', '2020-04-19 22:29:17', '0'),
(143, 33, 'Stell Plate 12 mm', 710000.0000, 10, 'active', 'regular', '12 mm Mild steel Sheet.Stell Plate price per TON basis || (***1 TON=1000 KG) || Minimum order 10 TON. Total Price ( 10 TON * 71,000 /- )= BDT 7,10,000 BDT Taka.', '1587355484Stell plate 12 mm.jpg', '2020-04-19 22:04:44', '2020-04-19 22:04:44', '0'),
(146, 20, 'Frame Steel Angle   L-Type 11.5 Inch', 680000.0000, 10, 'active', 'regular', 'L-Type Frame Steel Angle 11.5 Inch || Frame Steel price per TON basis || (***1 TON=1000 KG) || Minimum order 10 TON. Total Price ( 10 TON * 68,000 /- )= BDT 6,80,000 BDT Taka.', '1587363858Frame tell 11.5 inch.jpg', '2020-04-20 00:24:18', '2020-04-20 00:24:18', '0'),
(147, 21, 'Frame Steel Angle   L-Type 11.5 Inch', 680000.0000, 10, 'active', 'regular', 'L-Type Frame Steel Angle 11.5 Inch || Frame Steel price per TON basis || (***1 TON=1000 KG) || Minimum order 10 TON. Total Price ( 10 TON * 68,000 /- )= BDT 6,80,000 BDT Taka.', '1587363865Frame tell 11.5 inch.jpg', '2020-04-20 00:24:25', '2020-04-20 00:24:25', '0'),
(148, 22, 'Frame Steel Angle   L-Type 11.5 Inch', 680000.0000, 10, 'active', 'regular', 'L-Type Frame Steel Angle 11.5 Inch || Frame Steel price per TON basis || (***1 TON=1000 KG) || Minimum order 10 TON. Total Price ( 10 TON * 68,000 /- )= BDT 6,80,000 BDT Taka.', '1587363870Frame tell 11.5 inch.jpg', '2020-04-20 00:24:30', '2020-04-20 00:24:30', '0'),
(149, 24, 'Frame Steel Angle   L-Type 11.5 Inch', 680000.0000, 10, 'active', 'regular', 'L-Type Frame Steel Angle 11.5 Inch || Frame Steel price per TON basis || (***1 TON=1000 KG) || Minimum order 10 TON. Total Price ( 10 TON * 68,000 /- )= BDT 6,80,000 BDT Taka.', '1587363876Frame tell 11.5 inch.jpg', '2020-04-20 00:24:36', '2020-04-20 00:24:36', '0'),
(150, 31, 'Frame Steel Angle   L-Type 11.5 Inch', 680000.0000, 10, 'active', 'regular', 'L-Type Frame Steel Angle 11.5 Inch || Frame Steel price per TON basis || (***1 TON=1000 KG) || Minimum order 10 TON. Total Price ( 10 TON * 68,000 /- )= BDT 6,80,000 BDT Taka.', '1587363882Frame tell 11.5 inch.jpg', '2020-04-20 00:24:42', '2020-04-20 00:24:42', '0'),
(151, 32, 'Frame Steel Angle   L-Type 11.5 Inch', 680000.0000, 10, 'active', 'regular', 'L-Type Frame Steel Angle 11.5 Inch || Frame Steel price per TON basis || (***1 TON=1000 KG) || Minimum order 10 TON. Total Price ( 10 TON * 68,000 /- )= BDT 6,80,000 BDT Taka.', '1587363888Frame tell 11.5 inch.jpg', '2020-04-20 00:24:48', '2020-04-20 00:24:48', '0'),
(152, 33, 'Frame Steel Angle   L-Type 11.5 Inch', 680000.0000, 10, 'active', 'regular', 'L-Type Frame Steel Angle 11.5 Inch || Frame Steel price per TON basis || (***1 TON=1000 KG) || Minimum order 10 TON. Total Price ( 10 TON * 68,000 /- )= BDT 6,80,000 BDT Taka.', '1587363893Frame tell 11.5 inch.jpg', '2020-04-20 00:24:53', '2020-04-20 00:24:53', '0'),
(153, 20, 'Frame Steel Angle   L-Type 9.5 Inch', 730000.0000, 10, 'active', 'regular', 'L-Type Frame Steel Angle 9.5 Inch || Frame Steel price per TON basis || (***1 TON=1000 KG) || Minimum order 10 TON. Total Price ( 10 TON *73,000 /- )= BDT 7,30,000 BDT Taka.', '1587363962Frame tell 11.5 inch.jpg', '2020-04-20 00:26:02', '2020-04-20 00:26:02', '0'),
(154, 21, 'Frame Steel Angle   L-Type 9.5 Inch', 730000.0000, 10, 'active', 'regular', 'L-Type Frame Steel Angle 9.5 Inch || Frame Steel price per TON basis || (***1 TON=1000 KG) || Minimum order 10 TON. Total Price ( 10 TON *73,000 /- )= BDT 7,30,000 BDT Taka.', '1587363988Frame stell 4.5 inch.jpg', '2020-04-20 00:26:28', '2020-04-20 00:26:28', '0'),
(155, 22, 'Frame Steel Angle   L-Type 9.5 Inch', 730000.0000, 10, 'active', 'regular', 'L-Type Frame Steel Angle 9.5 Inch || Frame Steel price per TON basis || (***1 TON=1000 KG) || Minimum order 10 TON. Total Price ( 10 TON *73,000 /- )= BDT 7,30,000 BDT Taka.', '1587363994Frame stell 4.5 inch.jpg', '2020-04-20 00:26:34', '2020-04-20 00:26:34', '0'),
(156, 24, 'Frame Steel Angle   L-Type 9.5 Inch', 730000.0000, 10, 'active', 'regular', 'L-Type Frame Steel Angle 9.5 Inch || Frame Steel price per TON basis || (***1 TON=1000 KG) || Minimum order 10 TON. Total Price ( 10 TON *73,000 /- )= BDT 7,30,000 BDT Taka.', '1587364007Frame stell 4.5 inch.jpg', '2020-04-20 00:26:47', '2020-04-20 00:26:47', '0'),
(157, 31, 'Frame Steel Angle   L-Type 9.5 Inch', 730000.0000, 10, 'active', 'regular', 'L-Type Frame Steel Angle 9.5 Inch || Frame Steel price per TON basis || (***1 TON=1000 KG) || Minimum order 10 TON. Total Price ( 10 TON *73,000 /- )= BDT 7,30,000 BDT Taka.', '1587364013Frame stell 4.5 inch.jpg', '2020-04-20 00:26:53', '2020-04-20 00:26:53', '0'),
(158, 32, 'Frame Steel Angle   L-Type 9.5 Inch', 730000.0000, 10, 'active', 'regular', 'L-Type Frame Steel Angle 9.5 Inch || Frame Steel price per TON basis || (***1 TON=1000 KG) || Minimum order 10 TON. Total Price ( 10 TON *73,000 /- )= BDT 7,30,000 BDT Taka.', '1587364018Frame stell 4.5 inch.jpg', '2020-04-20 00:26:58', '2020-04-20 00:26:58', '0'),
(159, 33, 'Frame Steel Angle   L-Type 9.5 Inch', 730000.0000, 10, 'active', 'regular', 'L-Type Frame Steel Angle 9.5 Inch || Frame Steel price per TON basis || (***1 TON=1000 KG) || Minimum order 10 TON. Total Price ( 10 TON *73,000 /- )= BDT 7,30,000 BDT Taka.', '1587364024Frame stell 4.5 inch.jpg', '2020-04-20 00:27:04', '2020-04-20 00:27:04', '0'),
(160, 20, 'Frame Steel Angle   L-Type 4.5 Inch', 760000.0000, 10, 'active', 'regular', 'L-Type Frame Steel Angle 4.5 Inch || Frame Steel price per TON basis || (***1 TON=1000 KG) || Minimum order 10 TON. Total Price ( 10 TON * 76,000 /- )= BDT 7,60,000 BDT Taka.', '1587364196Frame Stell 9.5 inch.jpg', '2020-04-20 00:29:56', '2020-04-20 00:29:56', '0'),
(161, 21, 'Frame Steel Angle   L-Type 4.5 Inch', 760000.0000, 10, 'active', 'regular', 'L-Type Frame Steel Angle 4.5 Inch || Frame Steel price per TON basis || (***1 TON=1000 KG) || Minimum order 10 TON. Total Price ( 10 TON * 76,000 /- )= BDT 7,60,000 BDT Taka.', '1587364202Frame Stell 9.5 inch.jpg', '2020-04-20 00:30:02', '2020-04-20 00:30:02', '0'),
(162, 22, 'Frame Steel Angle   L-Type 4.5 Inch', 760000.0000, 10, 'active', 'regular', 'L-Type Frame Steel Angle 4.5 Inch || Frame Steel price per TON basis || (***1 TON=1000 KG) || Minimum order 10 TON. Total Price ( 10 TON * 76,000 /- )= BDT 7,60,000 BDT Taka.', '1587364208Frame Stell 9.5 inch.jpg', '2020-04-20 00:30:08', '2020-04-20 00:30:08', '0'),
(163, 24, 'Frame Steel Angle   L-Type 4.5 Inch', 760000.0000, 10, 'active', 'regular', 'L-Type Frame Steel Angle 4.5 Inch || Frame Steel price per TON basis || (***1 TON=1000 KG) || Minimum order 10 TON. Total Price ( 10 TON * 76,000 /- )= BDT 7,60,000 BDT Taka.', '1587364214Frame Stell 9.5 inch.jpg', '2020-04-20 00:30:14', '2020-04-20 00:30:14', '0'),
(164, 31, 'Frame Steel Angle   L-Type 4.5 Inch', 760000.0000, 10, 'active', 'regular', 'L-Type Frame Steel Angle 4.5 Inch || Frame Steel price per TON basis || (***1 TON=1000 KG) || Minimum order 10 TON. Total Price ( 10 TON * 76,000 /- )= BDT 7,60,000 BDT Taka.', '1587364220Frame Stell 9.5 inch.jpg', '2020-04-20 00:30:20', '2020-04-20 00:30:20', '0'),
(165, 32, 'Frame Steel Angle   L-Type 4.5 Inch', 760000.0000, 10, 'active', 'regular', 'L-Type Frame Steel Angle 4.5 Inch || Frame Steel price per TON basis || (***1 TON=1000 KG) || Minimum order 10 TON. Total Price ( 10 TON * 76,000 /- )= BDT 7,60,000 BDT Taka.', '1587364226Frame Stell 9.5 inch.jpg', '2020-04-20 00:30:26', '2020-04-20 00:30:26', '0'),
(166, 33, 'Frame Steel Angle   L-Type 4.5 Inch', 760000.0000, 10, 'active', 'regular', 'L-Type Frame Steel Angle 4.5 Inch || Frame Steel price per TON basis || (***1 TON=1000 KG) || Minimum order 10 TON. Total Price ( 10 TON * 76,000 /- )= BDT 7,60,000 BDT Taka.', '1587364233Frame Stell 9.5 inch.jpg', '2020-04-20 00:30:33', '2020-04-20 00:30:33', '0'),
(167, 21, 'Interrior', 17500000.0000, 1, 'active', 'regular', 'Luxurious Interrior Including Cabin, VIP Chair, Lighting Total Cost 1,75,000,00 BDT Taka.(One Crore Seventy Five Lac BDT Taka Only)', '1587364591interior.jpg', '2020-04-20 00:36:31', '2020-04-20 00:36:31', '0'),
(168, 24, 'Interrior', 8000000.0000, 1, 'active', 'regular', 'Luxurious Interrior Including Cabin,Cabin CREW Room,Lighting Total Cost 80,000,00 BDT Taka.(Eighty Lac BDT Taka Only)', '1587364995mother vessel interrior.jpg', '2020-04-20 00:43:15', '2020-04-20 00:43:15', '0'),
(169, 20, 'Interrior', 1500000.0000, 1, 'active', 'regular', 'Luxurious Interrior Including Cabin,Cabin CREW Room,Lighting, Navigation setup Total Cost 15,000,00 BDT Taka.(Fifteen Lac BDT Taka Only)', '1587365114cargo inetrrior.jpg', '2020-04-20 00:45:14', '2020-04-20 00:45:14', '0'),
(170, 31, 'Interrior', 1500000.0000, 1, 'active', 'regular', 'Luxurious Interrior Including Cabin,Cabin CREW Room,Lighting, Navigation setup Total Cost 15,000,00 BDT Taka.(Fifteen Lac BDT Taka Only)', '1587365136cargo inetrrior.jpg', '2020-04-20 00:45:36', '2020-04-20 00:45:36', '0'),
(171, 32, 'Interrior', 1500000.0000, 1, 'active', 'regular', 'Luxurious Interrior Including Cabin,Cabin CREW Room,Lighting, Navigation setup Total Cost 15,000,00 BDT Taka.(Fifteen Lac BDT Taka Only)', '1587365145cargo inetrrior.jpg', '2020-04-20 00:45:45', '2020-04-20 00:45:45', '0'),
(172, 33, 'Interrior', 5500000.0000, 1, 'active', 'regular', 'Luxurious Interrior Including Cabin,Cabin CREW Room,Lighting, Navigation setup Total Cost 55,000,00 BDT Taka.(Fify Five Lac BDT Taka Only)', '1587365192cargo inetrrior.jpg', '2020-04-20 00:46:32', '2020-04-20 00:46:32', '0'),
(173, 22, 'Interrior', 700000.0000, 1, 'active', 'regular', 'Luxurious Interrior Including Cabin,Lighting, Navigation setup Total Cost 7,000,00 BDT Taka.(Seven Lac BDT Taka Only)', '1587365252cargo inetrrior.jpg', '2020-04-20 00:47:32', '2020-04-20 00:47:32', '0'),
(174, 20, 'Cargo Vessel 2700 MT', 12000000.0000, 1, 'active', 'regular', 'Total Package Cost =12,00,00,000 BDT Taka .(Twelve Crore BDT Taka Only) || ***Dimension= (LENGTH:-248 Feet, BREADTH:-38 Feet , DEPTH:-17 Feet , CAPACITY:- 2700 MT appx ) || MARINE ENGINE WITH GEARBOX \"WEICHAI BRAND\" MADE IN CHINA, 750HP / 368KW / 1200RPM WITH AIR START || ***Steel Stucture:--(Body Plate=12 mm, Frame Steel L-Type=11.5 inch, L-Guirder=22 Inch) || Anchor 2 PCS 2500 KG Each With 52 mm Brand new Anchor Chain || Fire and Safety Equipment ||', '1587384004250feet ship for web.jpg', '2020-04-20 00:56:24', '2020-04-20 06:00:04', '0'),
(175, 20, 'Cargo Vessel 2000 MT', 90000000.0000, 1, 'active', 'regular', 'Total Package Cost =9,00,00,000 BDT Taka .(Nine Crore BDT Taka Only) || ***Dimension= (LENGTH:-240 Feet, BREADTH:-36 Feet , DEPTH:-16.5 Feet , CAPACITY:- 2000 MT appx ) || MARINE ENGINE WITH GEARBOX \"WEICHAI BRAND\" MADE IN CHINA, 550HP / 368KW / 1200RPM WITH AIR START || ***Steel Stucture:--(Body Plate=12 mm, Frame Steel L-Type=9.5 inch, L-Guirder=18 Inch) || Anchor 2 PCS 2000 KG Each With 46 mm Brand new Anchor Chain || Fire and Safety Equipment ||', '1587383119240feeta.jpg', '2020-04-20 01:01:42', '2020-04-20 05:45:19', '0'),
(176, 20, 'Cargo Vessel 1500 MT', 50000000.0000, 1, 'active', 'regular', 'Total Package Cost = 5,00,00,000 BDT Taka .(Five Crore BDT Taka Only) ||\r\n***Dimension= (LENGTH:-53.35M,  BREADTH:-10.36M,  DEPTH:-4.57M , CAPACITY:-  1500 MT appx )\r\n || MARINE ENGINE WITH GEARBOX \"WEICHAI BRAND\"  MADE IN CHINA, 350HP/255KW/1000 RPM WITH AIR START || \r\n ***Steel Stucture:--(Body Plate=10mm,  Frame Steel L-Type=9.5 inch, L-Guirder=16 Inch)  || \r\nAnchor 2 PCS 1500 KG Each With 36 mm Brand new Anchor Chain || Fire and Safety Equipment ||', '1587379572CARGO VESSEL update For product.jpg', '2020-04-20 04:44:29', '2020-04-20 09:42:25', '0');

-- --------------------------------------------------------

--
-- Table structure for table `sizes`
--

CREATE TABLE `sizes` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `size` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `types`
--

CREATE TABLE `types` (
  `id` int(10) UNSIGNED NOT NULL,
  `type_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `types`
--

INSERT INTO `types` (`id`, `type_name`, `created_at`, `updated_at`, `category_id`) VALUES
(20, 'CARGO VESSEL', '2020-04-15 22:41:26', '2020-04-19 08:33:53', 13),
(21, 'LAUNCH', '2020-04-15 22:41:42', '2020-04-19 08:34:02', 14),
(22, 'STEAMER', '2020-04-15 22:41:55', '2020-04-19 08:34:14', 15),
(24, 'MOTHER VESSEL', '2020-04-15 22:42:20', '2020-04-19 08:34:26', 17),
(30, 'YACHT', '2020-04-19 08:17:41', '2020-04-21 10:07:24', 16),
(31, 'OIL TANKER', '2020-04-19 08:18:28', '2020-04-19 08:18:28', 23),
(32, 'DREDGING BARDGE', '2020-04-19 19:52:54', '2020-04-19 19:52:54', 18),
(33, 'CONTAINER VESSEL', '2020-04-19 19:53:10', '2020-04-19 19:53:10', 22);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`, `address`, `photo`, `is_active`, `remember_token`, `created_at`, `updated_at`, `phone`) VALUES
(1, 'Rabby', 'rabbi@gmail.com', '$2y$10$kct1JxP70FZf92jCob/WL.0oTJy1YPQC.jj/LRagTiRal02gLA6U2', 'administrator', 'dhaka', '15858930341552077196baby-reading.jpg', 'active', '40KZF8vYLAcm4YGnZGtlmwpXjONG6w69OGL9oMB6HHdYh0RpPy8fyvqwRHLH', '2019-03-20 18:00:00', '2020-04-02 23:51:36', '01832675434'),
(13, 'newuser', 'newuser@gmail.com', '$2y$10$FgC2UgeDhYJg12K0Vbfh1uhZHCJgqRlTEQwZuCO4qzl9FWHBZBaFa', NULL, NULL, NULL, NULL, 'R70Qlb2fEQ8ekBjlPOSlyrEsS9k2m24YaiVMZJvVk2TM9HEgoV8RoVVu9BbI', '2019-09-08 05:50:29', '2019-09-08 05:50:29', '01982345678'),
(14, 'ntest', 'ntest@gmail.com', '$2y$10$ubX93JwElZGr09AXov.1kOVaOhIvuxrDT0PEQTLJSSopIUQylXjjW', NULL, NULL, NULL, NULL, NULL, '2019-09-17 11:33:38', '2019-09-17 11:33:38', '09876543211'),
(15, 'Md. Mahfujur Rahman', 'mrrajuiit@gmail.com', '$2y$10$e5GFC23TCZaDzsNCXhcFC.eskQRVdzTyZTaahOhZWraY8Vo1Q11Xy', NULL, NULL, NULL, NULL, 's9Yrr3wCiv3MSYKIO8rs2fBc41i7n8qB3LIX5MOKcy7jbs5qwC4N6jywZVXx', '2019-09-18 08:30:43', '2019-09-18 08:30:43', '01827593388'),
(18, 'MD. ASHIQUR RAHMAN', 'redit@gmail.com', '$2y$10$yUibpnuNjVnZmuczkoUW7OhAF2bxxqMEAAjECZaL5on6W5LRMrpma', NULL, NULL, NULL, NULL, NULL, '2020-02-26 12:43:36', '2020-02-26 12:43:36', '01778207719'),
(19, 'Md. Mahfujur Rahman', 'mrrajuiit2@gmail.com', '$2y$10$eMOrjezMktyM8ZGnR0WMZeUNyOaIhgIk5Q8CEFTssVyObkIguEFqm', NULL, NULL, NULL, NULL, 'qjGi4yffLWiCI7GLL4vVEuVVGwaHtRZTlpVqahoGhb54WyVhpGnGg5Em6drv', '2020-04-02 22:52:44', '2020-04-02 22:52:44', '01827593387'),
(20, 'reaz', 'reazul@gmail.com', '$2y$10$jGm39XxV9Xs..JMts4fAx.qOEVF4kO.GNVU48DsVGetIeZZqxsoxK', NULL, NULL, NULL, NULL, 'tru09dgslwVIN7zMLTkwn4O1vqq2yzYgyR2WmZB57pF2h1yxi3jX08MDcMe1', '2020-04-07 00:32:26', '2020-04-07 00:32:26', '01829895945'),
(23, 'rabbil', 'tandradast95@gmail.com', '$2y$10$L57Qh8QCAk9Td1qb.VLiWOj3YyBuSJo1rlel4KhzpVIr0Q3tcytMm', NULL, NULL, NULL, NULL, NULL, '2020-04-16 21:03:56', '2020-04-16 21:03:56', '01796639535'),
(24, 'Hafejul Islam', 'manabzaminadvt@gmail.com', '$2y$10$5Hlbv4ezarWmfbjNisTN4.NKjrK4VHrIcmv1ukf5O9jAr49nKQOHy', NULL, NULL, NULL, NULL, NULL, '2020-04-18 04:32:39', '2020-04-18 04:32:39', '01779119988'),
(25, 'MOAMMAD RABBIL', NULL, '$2y$10$4CW0pVs9I1/9dZ05l6Zj9OgV1otkjKAGcIlOCQA/3WlmMYLvdYhPm', NULL, NULL, NULL, NULL, 'OmBMnq6DZAe4mLfaHa6fUsIW5I0jVSKvSaUpANLemJJp13R9kqCtmFTx9xYI', '2020-04-19 04:10:15', '2020-04-19 04:10:15', '01675454912'),
(28, 'MOAMMAD RABBIL', 'mohammadrabbil@gmail.com', '$2y$10$6904NA/T0An2USEiCkvsK.b2pOs5liwN28QxtozYb7we9KfliHcUu', 'administrator', '62-63, Motijheel C/A, Amin Court Bhaban 7th Floor, (Room No-701/B), Dhaka-1000', '1587306677rabbil raw original pp.jpg', 'active', 'XN5VHetv2EtZDdLzB8Dny7HCyxHCJZXm7FPzLvn7uP0G8ioVq3RXxl1a79mL', '2020-04-19 08:31:17', '2020-04-19 08:31:53', '01774558990'),
(29, 'Joyanta', NULL, '$2y$10$ZP7ts1FUCnFEj8oij498AO3VrzKF/WWQX6Vy8aYOZWMc7dqRRBzTG', NULL, NULL, NULL, NULL, NULL, '2020-04-20 08:53:25', '2020-04-20 08:53:25', '01710330059');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_type`
--
ALTER TABLE `category_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `d_addresses`
--
ALTER TABLE `d_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_product`
--
ALTER TABLE `order_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `phone` (`phone`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `category_type`
--
ALTER TABLE `category_type`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `d_addresses`
--
ALTER TABLE `d_addresses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `order_product`
--
ALTER TABLE `order_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=177;

--
-- AUTO_INCREMENT for table `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `types`
--
ALTER TABLE `types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
