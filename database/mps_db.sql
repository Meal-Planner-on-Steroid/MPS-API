-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 25, 2023 at 01:15 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mps_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add user', 7, 'add_user'),
(26, 'Can change user', 7, 'change_user'),
(27, 'Can delete user', 7, 'delete_user'),
(28, 'Can view user', 7, 'view_user'),
(29, 'Can add tingkat aktivitas', 8, 'add_tingkataktivitas'),
(30, 'Can change tingkat aktivitas', 8, 'change_tingkataktivitas'),
(31, 'Can delete tingkat aktivitas', 8, 'delete_tingkataktivitas'),
(32, 'Can view tingkat aktivitas', 8, 'view_tingkataktivitas'),
(33, 'Can add rencana diet', 9, 'add_rencanadiet'),
(34, 'Can change rencana diet', 9, 'change_rencanadiet'),
(35, 'Can delete rencana diet', 9, 'delete_rencanadiet'),
(36, 'Can view rencana diet', 9, 'view_rencanadiet'),
(37, 'Can add olahraga', 10, 'add_olahraga'),
(38, 'Can change olahraga', 10, 'change_olahraga'),
(39, 'Can delete olahraga', 10, 'delete_olahraga'),
(40, 'Can view olahraga', 10, 'view_olahraga'),
(41, 'Can add minum', 11, 'add_minum'),
(42, 'Can change minum', 11, 'change_minum'),
(43, 'Can delete minum', 11, 'delete_minum'),
(44, 'Can view minum', 11, 'view_minum'),
(45, 'Can add makanan', 12, 'add_makanan'),
(46, 'Can change makanan', 12, 'change_makanan'),
(47, 'Can delete makanan', 12, 'delete_makanan'),
(48, 'Can view makanan', 12, 'view_makanan'),
(49, 'Can add makanan foto', 13, 'add_makananfoto'),
(50, 'Can change makanan foto', 13, 'change_makananfoto'),
(51, 'Can delete makanan foto', 13, 'delete_makananfoto'),
(52, 'Can view makanan foto', 13, 'view_makananfoto'),
(53, 'Can add bahan makanan', 14, 'add_bahanmakanan'),
(54, 'Can change bahan makanan', 14, 'change_bahanmakanan'),
(55, 'Can delete bahan makanan', 14, 'delete_bahanmakanan'),
(56, 'Can view bahan makanan', 14, 'view_bahanmakanan'),
(57, 'Can add preferensi makanan', 15, 'add_preferensimakanan'),
(58, 'Can change preferensi makanan', 15, 'change_preferensimakanan'),
(59, 'Can delete preferensi makanan', 15, 'delete_preferensimakanan'),
(60, 'Can view preferensi makanan', 15, 'view_preferensimakanan'),
(61, 'Can add makanan diet', 16, 'add_makanandiet'),
(62, 'Can change makanan diet', 16, 'change_makanandiet'),
(63, 'Can delete makanan diet', 16, 'delete_makanandiet'),
(64, 'Can view makanan diet', 16, 'view_makanandiet'),
(65, 'Can add rekomendasi rencana diet', 17, 'add_rekomendasirencanadiet'),
(66, 'Can change rekomendasi rencana diet', 17, 'change_rekomendasirencanadiet'),
(67, 'Can delete rekomendasi rencana diet', 17, 'delete_rekomendasirencanadiet'),
(68, 'Can view rekomendasi rencana diet', 17, 'view_rekomendasirencanadiet'),
(69, 'Can add rekomendasi makanan diet', 18, 'add_rekomendasimakanandiet'),
(70, 'Can change rekomendasi makanan diet', 18, 'change_rekomendasimakanandiet'),
(71, 'Can delete rekomendasi makanan diet', 18, 'delete_rekomendasimakanandiet'),
(72, 'Can view rekomendasi makanan diet', 18, 'view_rekomendasimakanandiet'),
(73, 'Can add riwayat rekomendasi rencana diet', 19, 'add_riwayatrekomendasirencanadiet'),
(74, 'Can change riwayat rekomendasi rencana diet', 19, 'change_riwayatrekomendasirencanadiet'),
(75, 'Can delete riwayat rekomendasi rencana diet', 19, 'delete_riwayatrekomendasirencanadiet'),
(76, 'Can view riwayat rekomendasi rencana diet', 19, 'view_riwayatrekomendasirencanadiet'),
(77, 'Can add satuan', 20, 'add_satuan'),
(78, 'Can change satuan', 20, 'change_satuan'),
(79, 'Can delete satuan', 20, 'delete_satuan'),
(80, 'Can view satuan', 20, 'view_satuan'),
(81, 'Can add user profile', 21, 'add_userprofile'),
(82, 'Can change user profile', 21, 'change_userprofile'),
(83, 'Can delete user profile', 21, 'delete_userprofile'),
(84, 'Can view user profile', 21, 'view_userprofile'),
(85, 'Can add blacklisted token', 22, 'add_blacklistedtoken'),
(86, 'Can change blacklisted token', 22, 'change_blacklistedtoken'),
(87, 'Can delete blacklisted token', 22, 'delete_blacklistedtoken'),
(88, 'Can view blacklisted token', 22, 'view_blacklistedtoken'),
(89, 'Can add outstanding token', 23, 'add_outstandingtoken'),
(90, 'Can change outstanding token', 23, 'change_outstandingtoken'),
(91, 'Can delete outstanding token', 23, 'delete_outstandingtoken'),
(92, 'Can view outstanding token', 23, 'view_outstandingtoken');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$390000$0maJb9HPcOeUAd4k4IwTSA$Kgv9oHwu+xATY49gFuTlqN5oyNPBHufFgacBuigxMpE=', '2022-09-05 11:48:28.000000', 1, 'alif', '', '', 'irhasalif@gmail.com', 1, 1, '2022-08-14 13:20:28.000000'),
(11, 'pbkdf2_sha256$390000$KsSfuzMhaXGSRL7PCcgcDs$oMbUVhUikM5yAay0PjRjPjx6Sc3X07eUvvubNVOIY80=', '2023-01-25 11:12:53.275670', 1, 'admin', '', '', 'admin@gmail.com', 1, 1, '2022-09-06 11:19:20.000000'),
(12, 'pbkdf2_sha256$390000$cosRyHHKH90lbil7YMuB0w$uszsKyn4O1oncvdqQDatAUgIUnYC/oV8S/3/BJf2N9s=', NULL, 0, 'levi', 'levi', 'ackerman', 'levi@gmail.com', 0, 1, '2022-09-06 12:18:45.396931'),
(42, 'password', NULL, 0, 'segolox', 'Shana', 'James', 'vynati@mailinator.com', 1, 1, '2022-09-07 11:41:01.840257'),
(44, 'password', NULL, 0, 'mezel', 'Latifah', 'Jones', 'aaaaaa@mailinator.com', 0, 1, '2022-09-07 11:41:59.642629'),
(45, 'password', NULL, 0, 'qisywa', 'Fredericka', 'Delaney', 'javyvube@mailinator.com', 0, 1, '2022-09-10 01:30:33.907249'),
(48, 'pbkdf2_sha256$390000$49fcZUvoRutU8IhmOBeLFF$agZuVGVVZraExlp5xH9tGaCnXMCEgZir9wtgNe+NSB4=', NULL, 0, 'gugu', 'gugu', 'gaga', 'gugu@gmail.com', 0, 1, '2022-10-14 13:02:18.099355'),
(49, 'pbkdf2_sha256$390000$YVcZcCcXbs9VVSBl1RXPkD$m28N3xfI9BbQ8vtxO4S8qB1LkTRuLjZtj0HD/AJfRsc=', NULL, 0, 'buba', 'Bur', 'Bask', 'buba@gmail.com', 0, 1, '2022-10-14 13:03:57.564262'),
(50, 'password', NULL, 0, 'vikona', 'Karina', 'Herring', 'bocosape@mailinator.com', 0, 1, '2022-11-01 12:02:57.439009'),
(51, 'password', NULL, 0, 'qipisefim', 'Tiger', 'Craig', 'norug@mailinator.com', 1, 1, '2022-11-01 12:03:17.936693'),
(52, 'pbkdf2_sha256$390000$wFZDYmR1HSUSB8Zuk7M9Km$FyG56S94FtbK5OWrYJFOh4LZqYhTjvtuDudJ65xNZvY=', NULL, 0, 'bubi', 'gigi', 'gogo', 'bubi@gmail.com', 0, 1, '2022-11-01 12:03:57.153514'),
(56, 'pbkdf2_sha256$390000$UUf5Qo5P8gUY6vv9qc6fQP$GUQn2WV/aOpjbbTzqQVTiDbuofnsw5qPWw3tR7rXemg=', NULL, 0, 'linda', 'linda', 'lindsay', 'lin@gmail.com', 0, 1, '2022-12-06 00:36:23.622001');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `base_bahanmakanan`
--

CREATE TABLE `base_bahanmakanan` (
  `id` bigint(20) NOT NULL,
  `berat` double DEFAULT NULL,
  `satuan_id` bigint(20) DEFAULT NULL,
  `bahan_makanan_id` bigint(20) NOT NULL,
  `menu_makanan_id` bigint(20) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `base_bahanmakanan`
--

INSERT INTO `base_bahanmakanan` (`id`, `berat`, `satuan_id`, `bahan_makanan_id`, `menu_makanan_id`, `created_at`, `updated_at`) VALUES
(10, 10, 15, 1640, 12, '2022-09-12 13:28:33.732226', '2022-09-12 13:28:33.732283'),
(16, NULL, NULL, 255, 1638, '2022-09-12 14:06:46.202470', '2022-09-12 14:06:46.202535'),
(17, NULL, NULL, 115, 1641, '2022-09-12 14:07:11.455447', '2022-09-12 14:07:11.455494'),
(18, 10, 15, 136, 12, '2022-09-12 13:28:33.732226', '2022-09-12 13:28:33.732283');

-- --------------------------------------------------------

--
-- Table structure for table `base_makanan`
--

CREATE TABLE `base_makanan` (
  `id` bigint(20) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `porsi` int(11) NOT NULL,
  `protein` double NOT NULL,
  `lemak` double NOT NULL,
  `karbo` double NOT NULL,
  `energi` double NOT NULL,
  `jenis` varchar(2) NOT NULL,
  `created_at` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updated_at` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `berat_porsi` double DEFAULT NULL,
  `sumber` longtext DEFAULT NULL,
  `besar_porsi_id` bigint(20) DEFAULT NULL,
  `kelompok` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `base_makanan`
--

INSERT INTO `base_makanan` (`id`, `nama`, `porsi`, `protein`, `lemak`, `karbo`, `energi`, `jenis`, `created_at`, `updated_at`, `berat_porsi`, `sumber`, `besar_porsi_id`, `kelompok`) VALUES
(1, 'Apple Coffee Cake - 1 piece', 1, 3.81, 10.4, 51.49, 309.01, 'CA', '2022-08-25 08:06:56.712093', '2022-08-25 08:06:56.712093', 136.75, 'nutritionix', 61, '3'),
(2, 'Swedish Fish - 1 serving', 1, 0, 0, 35.01, 140.18, 'BA', '2022-08-25 08:06:56.724324', '2022-08-25 08:06:56.724324', 35.4, 'nutritionix', 71, '3'),
(3, 'Baked Apples - 1 cup', 1, 0.71, 3.65, 37.78, 173.45, 'CA', '2022-08-25 08:06:56.730282', '2022-08-25 08:06:56.730282', 190, 'nutritionix', 24, '3'),
(4, 'Baked Apples - 1 piece', 1, 0.64, 3.28, 34, 156.11, 'CA', '2022-08-25 08:06:56.737960', '2022-08-25 08:06:56.737960', 171, 'nutritionix', 61, '3'),
(5, 'Baked Apples - 1 serving', 1, 1.21, 6.17, 63.9, 293.38, 'CA', '2022-08-25 08:06:56.745108', '2022-08-25 08:06:56.745108', 321.37, 'nutritionix', 71, '3'),
(6, 'Baked Camembert - 2 tbsp', 2, 5.36, 7.9, 4.25, 107, 'CA', '2022-08-25 08:06:56.753131', '2022-08-25 08:06:56.753131', 32, 'nutritionix', 87, '3'),
(7, 'Cubano Sandwich - 1 serving', 1, 52.62, 56.98, 46.73, 915.6, 'ME', '2022-08-25 08:06:56.760361', '2022-08-25 08:06:56.760361', 384.01, 'nutritionix', 71, '3'),
(8, 'Hollandaise Sauce - 2 tbsp', 2, 1.61, 17.59, 1.1, 165.33, 'BA', '2022-08-25 08:06:56.769486', '2022-08-25 08:06:56.769486', 35.4, 'nutritionix', 87, '3'),
(9, 'Gyoza Wrappers - 4 wrappers', 4, 2.22, 0.21, 16.44, 78.4, 'BA', '2022-08-25 08:06:56.775228', '2022-08-25 08:06:56.775228', 32, 'nutritionix', 91, '3'),
(10, 'Apple Fritter - 1 fritter', 1, 2.73, 9.79, 19.3, 169.53, 'CA', '2022-08-25 08:06:56.781171', '2022-08-25 08:06:56.781171', 76.92, 'nutritionix', 37, '3'),
(11, 'Pumpkin Bread - 1 serving', 1, 3.17, 10.16, 40.84, 263.38, 'BA', '2022-08-25 08:06:56.788775', '2022-08-25 08:06:56.788775', 88.87, 'nutritionix', 71, '3'),
(12, 'Apple Crumb Cake - 1 piece', 1, 2.58, 10.37, 32.21, 228.7, 'CA', '2022-08-25 08:06:56.795492', '2022-08-25 08:06:56.795492', 87.16, 'nutritionix', 61, '3'),
(13, 'Apricot Glaze - 1 0.5 cup', 1, 1.12, 0.32, 103.04, 387.2, 'BA', '2022-08-25 08:06:56.804403', '2022-08-25 08:06:56.804403', 174.8, 'nutritionix', 1, '3'),
(14, 'Baba Ganoush - 1 cup', 1, 7.05, 24.97, 25.1, 327.06, 'ME', '2022-08-25 08:06:56.817375', '2022-08-25 08:06:56.817375', 253.03, 'nutritionix', 24, '3'),
(15, 'Banh Mi - 1 sandwich', 1, 49.67, 22.92, 46.7, 600.04, 'ME', '2022-08-25 08:06:56.824166', '2022-08-25 08:06:56.824166', 334.01, 'nutritionix', 70, '3'),
(16, 'Banana Nut Muffin - 1 large muffin', 1, 7.23, 28.81, 79.47, 588.96, 'ME', '2022-08-25 08:06:56.830457', '2022-08-25 08:06:56.830457', 180, 'nutritionix', 43, '3'),
(17, 'Banana Nut Muffin - 1 medium muffin', 1, 5.33, 21.23, 58.57, 434.1, 'ME', '2022-08-25 08:06:56.837854', '2022-08-25 08:06:56.837854', 132.67, 'nutritionix', 48, '3'),
(18, 'Banana Muffin - 1 small', 1, 2.54, 5.83, 31.7, 185.21, 'ME', '2022-08-25 08:06:56.844242', '2022-08-25 08:06:56.844242', 70, 'nutritionix', 80, '3'),
(19, 'Banana Milkshake - 1 fl oz', 1, 0.72, 0.98, 5.19, 31.92, 'CA', '2022-08-25 08:06:56.853231', '2022-08-25 08:06:56.853231', 26.52, 'nutritionix', 36, '3'),
(20, 'Beef Slider - 1 slider', 1, 18.9, 14.76, 20.1, 293.3, 'ME', '2022-08-25 08:06:56.860353', '2022-08-25 08:06:56.860353', 115.87, 'nutritionix', 79, '3'),
(21, 'Beef Stroganoff - 1 cup', 1, 24.64, 23.28, 20.53, 390.86, 'ME', '2022-08-25 08:06:56.867743', '2022-08-25 08:06:56.867743', 253.89, 'nutritionix', 24, '3'),
(22, 'Black Bean Dip - 1 cup', 1, 17.7, 1.22, 50.8, 275.59, 'BA', '2022-08-25 08:06:56.875379', '2022-08-25 08:06:56.875379', 247.25, 'nutritionix', 24, '3'),
(23, 'Bread Pudding - 1 serving', 1, 7.53, 7.21, 70.61, 370.31, 'ME', '2022-08-25 08:06:56.882652', '2022-08-25 08:06:56.882652', 196.62, 'nutritionix', 71, '3'),
(24, 'Cabbage Rolls - 1 roll', 1, 10.59, 7.79, 29.68, 228.59, 'ME', '2022-08-25 08:06:56.890651', '2022-08-25 08:06:56.890651', 259.06, 'nutritionix', 67, '3'),
(25, 'Caprese Salad - 1 cup', 1, 13.2, 16.74, 4.69, 219.69, 'ME', '2022-08-25 08:06:56.899544', '2022-08-25 08:06:56.899544', 161.45, 'nutritionix', 24, '3'),
(26, 'Caramel Apple - 1 apple', 1, 1.81, 0.41, 79.93, 303.88, 'ME', '2022-08-25 08:06:56.907986', '2022-08-25 08:06:56.907986', 282.77, 'nutritionix', 6, '3'),
(27, 'Chicken, broilers or fryers, breast, meat only, cooked, roasted - 1 fillet', 1, 30.4, 3.5, 0, 161.7, 'ME', '2022-08-25 08:06:56.916225', '2022-08-25 08:06:56.916225', 98, 'nutritionix', 35, '3'),
(28, 'Low Sodium Diced Tomatoes - 1 cup', 1, 1.94, 0.61, 8.52, 39.28, 'BA', '2022-08-25 08:06:56.922579', '2022-08-25 08:06:56.922579', 246, 'nutritionix', 24, '3'),
(29, 'Diced Tomatoes with Green Chilies, No Salt Added - 1 can', 1, 3.25, 1.03, 14.26, 65.76, 'BA', '2022-08-25 08:06:56.928495', '2022-08-25 08:06:56.928495', 411, 'nutritionix', 13, '3'),
(30, 'Honey Cinnamon Almonds - 1 oz', 1, 4.82, 13.43, 8.83, 164.95, 'CA', '2022-08-25 08:06:56.935121', '2022-08-25 08:06:56.935121', 28.35, 'nutritionix', 55, '3'),
(31, 'Spaghetti, Uncooked - 2 oz', 2, 7.39, 0.86, 42.34, 210.36, 'BA', '2022-08-25 08:06:56.941567', '2022-08-25 08:06:56.941567', 56.7, 'nutritionix', 55, '3'),
(32, 'Grilled Buffalo Chicken Salad - 1 cup', 1, 9.76, 18.43, 3, 215.69, 'ME', '2022-08-25 08:06:56.948596', '2022-08-25 08:06:56.948596', 106.13, 'nutritionix', 24, '3'),
(33, 'Minced Pork Rice - 1 cup', 1, 15.1, 15.8, 27.7, 335.96, 'BA', '2022-08-25 08:06:56.955455', '2022-08-25 08:06:56.955455', 199, 'nutritionix', 24, '3'),
(34, 'Grilled Fish Sandwich - 1 sandwich', 1, 46.42, 23.14, 26.83, 514.47, 'ME', '2022-08-25 08:06:56.961861', '2022-08-25 08:06:56.961861', 249.08, 'nutritionix', 70, '3'),
(35, 'Brisket Quesadilla - 1 whole quesadilla', 1, 54.9, 72.99, 92.46, 1249.78, 'ME', '2022-08-25 08:06:56.970104', '2022-08-25 08:06:56.970104', 493.81, 'nutritionix', 89, '3'),
(36, 'Sea Salt Popcorn - 1 cup', 1, 0.83, 2.2, 5.39, 43.27, 'CA', '2022-08-25 08:06:56.976031', '2022-08-25 08:06:56.976031', 9, 'nutritionix', 24, '3'),
(37, 'Coconut Coffee - 1 fl oz', 1, 0.16, 1.19, 3.6, 24.65, 'CA', '2022-08-25 08:06:56.982332', '2022-08-25 08:06:56.982332', 34.67, 'nutritionix', 36, '3'),
(38, 'Blueberry Banana Muffin - 1 large muffin', 1, 5.86, 12.86, 75.41, 428.65, 'ME', '2022-08-25 08:06:56.989140', '2022-08-25 08:06:56.989140', 190, 'nutritionix', 43, '3'),
(39, 'Raisin Cake - 1 piece', 1, 2.94, 6.06, 53.61, 271.16, 'CA', '2022-08-25 08:06:56.995707', '2022-08-25 08:06:56.995707', 95.61, 'nutritionix', 61, '3'),
(40, 'Caramel Chocolate Bars - 1 oz', 1, 1.2, 5.94, 17.23, 121.58, 'CA', '2022-08-25 08:06:57.003919', '2022-08-25 08:06:57.003919', 28.35, 'nutritionix', 55, '3'),
(41, 'Sour Cream Chicken Enchiladas - 1 enchilada', 1, 12.79, 12.9, 23.52, 260.22, 'BA', '2022-08-25 08:06:57.010639', '2022-08-25 08:06:57.010639', 150.71, 'nutritionix', 34, '3'),
(42, 'Lobster Pizza - 1 slice', 1, 5.06, 4.43, 7.15, 88.96, 'BA', '2022-08-25 08:06:57.018341', '2022-08-25 08:06:57.018341', 43.77, 'nutritionix', 75, '3'),
(43, 'White Bread - 1 slice (1.5 oz)', 1, 4.03, 1.52, 22.49, 121.08, 'BA', '2022-08-25 08:06:57.024799', '2022-08-25 08:06:57.024799', 45.52, 'nutritionix', 76, '3'),
(44, 'Grape Nuts Bar - 1 bar', 1, 3.6, 2.75, 30.41, 151.24, 'BA', '2022-08-25 08:06:57.031059', '2022-08-25 08:06:57.031059', 40.7, 'nutritionix', 7, '3'),
(45, 'Carne Asada - 1 serving', 1, 31.38, 14.74, 0.26, 266.3, 'ME', '2022-08-25 08:06:57.037672', '2022-08-25 08:06:57.037672', 121.32, 'nutritionix', 71, '3'),
(46, 'Green Chutney - 1 serving', 1, 1.11, 1.84, 2.17, 26.89, 'BA', '2022-08-25 08:06:57.043857', '2022-08-25 08:06:57.043857', 22.11, 'nutritionix', 71, '3'),
(47, 'Chicken Kiev - 1 serving', 1, 49.3, 39.15, 26.38, 651.9, 'ME', '2022-08-25 08:06:57.051754', '2022-08-25 08:06:57.051754', 246.54, 'nutritionix', 71, '3'),
(48, 'Chicken Kiev - 1 chicken breast', 1, 51.59, 40.97, 27.61, 682.19, 'ME', '2022-08-25 08:06:57.057551', '2022-08-25 08:06:57.057551', 258, 'nutritionix', 15, '3'),
(49, 'Fried Wonton - 1 cup', 1, 6.97, 8.27, 13.19, 156.11, 'BA', '2022-08-25 08:06:57.064085', '2022-08-25 08:06:57.064085', 67, 'nutritionix', 24, '3'),
(50, 'Fried Wonton - 1 wonton', 1, 1.98, 2.35, 3.74, 44.27, 'BA', '2022-08-25 08:06:57.070227', '2022-08-25 08:06:57.070227', 19, 'nutritionix', 90, '3'),
(51, 'M&M Mcflurry - 12 fl oz', 12, 16.29, 18.47, 105.76, 653.04, 'ME', '2022-08-25 08:06:57.078561', '2022-08-25 08:06:57.078561', 342, 'nutritionix', 36, '3'),
(52, 'Rum Ball - 1 serving', 1, 1.25, 5.09, 14.99, 113.36, 'ME', '2022-08-25 08:06:57.086963', '2022-08-25 08:06:57.086963', 25.07, 'nutritionix', 71, '3'),
(53, 'Potato Roll - 1 roll', 1, 4.38, 1.1, 16.47, 93.1, 'BA', '2022-08-25 08:06:57.093722', '2022-08-25 08:06:57.093722', 35, 'nutritionix', 67, '3'),
(54, 'Coffee with Milk and Sugar - 1 cup', 1, 2.35, 1.21, 11.38, 65.28, 'CA', '2022-08-25 08:06:57.101163', '2022-08-25 08:06:57.101163', 247.63, 'nutritionix', 24, '3'),
(55, 'Pasta, fresh - 1 cup', 1, 6.82, 1.28, 33.8, 175.5, 'CA', '2022-08-25 08:06:57.107445', '2022-08-25 08:06:57.107445', 135, 'nutritionix', 24, '3'),
(56, 'Graham Cracker Crumbs - 1 cup', 1, 5.62, 8.9, 65.23, 361.2, 'BA', '2022-08-25 08:06:57.115076', '2022-08-25 08:06:57.115076', 84, 'nutritionix', 24, '3'),
(57, 'Green Curry Paste - 1 tbsp', 1, 0.52, 0.14, 3.65, 16.38, 'BA', '2022-08-25 08:06:57.123127', '2022-08-25 08:06:57.123127', 15.3, 'nutritionix', 87, '3'),
(58, 'Green Curry Chicken - 1 cup', 1, 24.33, 19.65, 16.78, 328.39, 'BA', '2022-08-25 08:06:57.130638', '2022-08-25 08:06:57.130638', 236, 'nutritionix', 24, '3'),
(59, 'Buffalo Chicken Salad - 1 serving', 1, 31.19, 30.75, 11.14, 443.43, 'ME', '2022-08-25 08:06:57.138046', '2022-08-25 08:06:57.138046', 312.25, 'nutritionix', 71, '3'),
(60, 'Scrambled Eggs with Cheese - 1 small egg with cheese', 1, 5.97, 7.06, 0.93, 92.85, 'BA', '2022-08-25 08:06:57.145622', '2022-08-25 08:06:57.145622', 52, 'nutritionix', 81, '3'),
(61, 'Banana Nut Bread - 1 piece', 1, 3.32, 11.28, 22.63, 199.57, 'ME', '2022-08-25 08:06:57.153453', '2022-08-25 08:06:57.153453', 56.32, 'nutritionix', 61, '3'),
(62, 'Mattar Paneer - 1 oz', 1, 1.5, 2.97, 1.6, 38.52, 'BA', '2022-08-25 08:06:57.159847', '2022-08-25 08:06:57.159847', 28.35, 'nutritionix', 55, '3'),
(63, 'Cheddar Garlic Biscuits - 1 biscuit', 1, 4.42, 12.29, 13.58, 182.15, 'CA', '2022-08-25 08:06:57.169112', '2022-08-25 08:06:57.169112', 50.15, 'nutritionix', 8, '3'),
(64, 'Farro, Uncooked - 1 cup, uncooked', 1, 34.9, 5.11, 169.39, 808.8, 'BA', '2022-08-25 08:06:57.176488', '2022-08-25 08:06:57.176488', 240, 'nutritionix', 29, '3'),
(65, 'Bread, italian - 1 12\" sandwich roll', 1, 13.44, 5.34, 76.63, 414.64, 'ME', '2022-08-25 08:06:57.182791', '2022-08-25 08:06:57.182791', 153, 'nutritionix', 3, '3'),
(66, 'Chicken Salad Sandwich - 1 sandwich', 1, 34.01, 28.77, 33.01, 534.87, 'ME', '2022-08-25 08:06:57.189245', '2022-08-25 08:06:57.189245', 226.2, 'nutritionix', 70, '3'),
(67, 'Vanilla Latte - 1 venti', 1, 15.66, 9.51, 50.86, 347.45, 'CA', '2022-08-25 08:06:57.195992', '2022-08-25 08:06:57.195992', 602, 'nutritionix', 88, '3'),
(68, 'Grilled Zucchini - 1 oz', 1, 0.32, 0.65, 0.75, 9.06, 'CA', '2022-08-25 08:06:57.204420', '2022-08-25 08:06:57.204420', 28.35, 'nutritionix', 55, '3'),
(69, 'Guacamole - 1 oz', 1, 0.52, 3.87, 2.41, 42.77, 'CA', '2022-08-25 08:06:57.210910', '2022-08-25 08:06:57.210910', 28.35, 'nutritionix', 55, '3'),
(70, 'Cookie Butter - 2 tbsp', 2, 0.82, 12.78, 15.06, 176.19, 'BA', '2022-08-25 08:06:57.220240', '2022-08-25 08:06:57.220240', 30, 'nutritionix', 87, '3'),
(71, 'Bubble Tea - 16 fl oz', 16, 1.16, 0.6, 67.56, 278.22, 'CA', '2022-08-25 08:06:57.227887', '2022-08-25 08:06:57.227887', 575.8, 'nutritionix', 36, '3'),
(72, 'Cake, shortcake, biscuit - 1 small scone', 1, 2.56, 5.97, 20.37, 145.32, 'CA', '2022-08-25 08:06:57.235952', '2022-08-25 08:06:57.235952', 42, 'nutritionix', 82, '3'),
(73, 'Salisbury Steak - 1 serving', 1, 24.45, 15.5, 13.39, 296.46, 'ME', '2022-08-25 08:06:57.243008', '2022-08-25 08:06:57.243008', 172.32, 'nutritionix', 71, '3'),
(74, 'Lobster Bisque - 1 cup', 1, 16.03, 16.37, 9.14, 263.88, 'ME', '2022-08-25 08:06:57.252242', '2022-08-25 08:06:57.252242', 248, 'nutritionix', 24, '3'),
(75, 'Strawberry Cream Cheese - 1 oz', 1, 1.35, 7.58, 2.07, 80.26, 'CA', '2022-08-25 08:06:57.260117', '2022-08-25 08:06:57.260117', 28.26, 'nutritionix', 55, '3'),
(76, 'Strawberry Cream Cheese - 2 tbsp', 2, 1.35, 7.59, 2.08, 80.38, 'BA', '2022-08-25 08:06:57.269583', '2022-08-25 08:06:57.269583', 28.3, 'nutritionix', 87, '3'),
(77, 'Coffee with Milk - 8 fl oz', 8, 2.35, 1.21, 3.04, 33.02, 'CA', '2022-08-25 08:06:57.277944', '2022-08-25 08:06:57.277944', 239.3, 'nutritionix', 36, '3'),
(78, 'Sausage Stuffing - 1 cup', 1, 12.06, 18.71, 51.56, 419.38, 'ME', '2022-08-25 08:06:57.286282', '2022-08-25 08:06:57.286282', 214, 'nutritionix', 24, '3'),
(79, 'Roasted Red Pepper Hummus - 2 tbsp', 2, 3.13, 3.71, 8.64, 76.28, 'BA', '2022-08-25 08:06:57.293565', '2022-08-25 08:06:57.293565', 46, 'nutritionix', 87, '3'),
(80, 'Pumpkin Ice Cream - 1 serving 1/2 cup', 1, 2.34, 7.27, 15.82, 137.64, 'CA', '2022-08-25 08:06:57.301889', '2022-08-25 08:06:57.301889', 69, 'nutritionix', 73, '3'),
(81, 'Matzah Ball Soup - 1 serving', 1, 27.32, 27.43, 50.37, 566.3, 'CA', '2022-08-25 08:06:57.308130', '2022-08-25 08:06:57.308130', 830.1, 'nutritionix', 71, '3'),
(82, 'Macaroni Salad - 1 cup', 1, 7.47, 18.94, 52.97, 413.62, 'ME', '2022-08-25 08:06:57.314699', '2022-08-25 08:06:57.314699', 204, 'nutritionix', 24, '3'),
(83, 'Quiche Lorraine - 1 cup', 1, 20.17, 50, 15.89, 593.96, 'ME', '2022-08-25 08:06:57.322045', '2022-08-25 08:06:57.322045', 160, 'nutritionix', 24, '3'),
(84, 'Chicken Chimichanga - 1 serving', 1, 31.97, 30.84, 74.05, 706.56, 'ME', '2022-08-25 08:06:57.328448', '2022-08-25 08:06:57.328448', 322.86, 'nutritionix', 71, '3'),
(85, 'Taco Salad - 1 salad in tortilla bowl', 1, 38.77, 46.9, 78.1, 870.48, 'ME', '2022-08-25 08:06:57.335791', '2022-08-25 08:06:57.335791', 553.29, 'nutritionix', 69, '3'),
(86, 'Chocolate Chip Pancakes - 1 6\" pancake', 1, 3.38, 6.98, 16.35, 138.31, 'ME', '2022-08-25 08:06:57.342909', '2022-08-25 08:06:57.342909', 55, 'nutritionix', 5, '3'),
(87, 'Chai Tea Latte - 1 grande', 1, 7.41, 4.28, 43.88, 237.19, 'CA', '2022-08-25 08:06:57.350109', '2022-08-25 08:06:57.350109', 361.6, 'nutritionix', 40, '3'),
(88, 'Chai Tea Latte - 1 tall', 1, 5.94, 3.43, 35.19, 190.23, 'CA', '2022-08-25 08:06:57.357709', '2022-08-25 08:06:57.357709', 290, 'nutritionix', 86, '3'),
(89, 'Cinnamon Toast - 1 slice', 1, 2.3, 4.68, 25.89, 151.89, 'CA', '2022-08-25 08:06:57.365810', '2022-08-25 08:06:57.365810', 43.5, 'nutritionix', 75, '3'),
(90, 'Ceviche - 1 cup', 1, 30.99, 2.69, 5.28, 164.55, 'ME', '2022-08-25 08:06:57.373209', '2022-08-25 08:06:57.373209', 241.01, 'nutritionix', 24, '3'),
(91, 'Chai Tea Latte - 1 cup', 1, 3.73, 2.15, 22.08, 119.38, 'CA', '2022-08-25 08:06:57.379800', '2022-08-25 08:06:57.379800', 182, 'nutritionix', 24, '3'),
(92, 'Crab Mac and Cheese - 1 cup', 1, 21.29, 20.5, 36.85, 419.74, 'ME', '2022-08-25 08:06:57.386018', '2022-08-25 08:06:57.386018', 230, 'nutritionix', 24, '3'),
(93, 'Crab Rangoon - 1 piece', 1, 2.17, 3.41, 6.22, 64.57, 'ME', '2022-08-25 08:06:57.393002', '2022-08-25 08:06:57.393002', 23, 'nutritionix', 61, '3'),
(94, 'Crab Salad - 1 cup', 1, 33.37, 26.49, 1.81, 386.37, 'ME', '2022-08-25 08:06:57.402286', '2022-08-25 08:06:57.402286', 247.4, 'nutritionix', 24, '3'),
(95, 'Creamed Spinach - 1 cup', 1, 6.11, 9.76, 8.37, 133.66, 'ME', '2022-08-25 08:06:57.409231', '2022-08-25 08:06:57.409231', 200, 'nutritionix', 24, '3'),
(96, 'Creme Brulee - 1 ramekin', 1, 8.26, 60.32, 30.48, 686.67, 'ME', '2022-08-25 08:06:57.416237', '2022-08-25 08:06:57.416237', 200, 'nutritionix', 66, '3'),
(97, 'Zucchini Bread - 1 slice', 1, 2.07, 7.86, 19.32, 153.68, 'ME', '2022-08-25 08:06:57.423785', '2022-08-25 08:06:57.423785', 40, 'nutritionix', 75, '3'),
(98, 'Margarita - 1 fl oz', 1, 0.02, 0, 2.85, 28.72, 'CA', '2022-08-25 08:06:57.430411', '2022-08-25 08:06:57.430411', 28.65, 'nutritionix', 36, '3'),
(99, 'Sesame Chicken - 1 cup', 1, 23.87, 29.87, 56.63, 581.47, 'ME', '2022-08-25 08:06:57.436369', '2022-08-25 08:06:57.436369', 252, 'nutritionix', 24, '3'),
(100, 'Green Bean Casserole - 1 cup', 1, 4.07, 10.11, 22.19, 190.89, 'BA', '2022-08-25 08:06:57.443068', '2022-08-25 08:06:57.443068', 220.07, 'nutritionix', 24, '3'),
(101, 'Turkey Meatballs - 1 cup', 1, 12.44, 9, 15.14, 184.42, 'BA', '2022-08-25 08:06:57.450627', '2022-08-25 08:06:57.450627', 178, 'nutritionix', 24, '3'),
(102, 'Chicken Alfredo - 1 cup', 1, 22.91, 40.29, 35.53, 595.65, 'ME', '2022-08-25 08:06:57.457717', '2022-08-25 08:06:57.457717', 225.69, 'nutritionix', 24, '3'),
(103, 'Asian Chicken Salad - 1 salad (about 3 cups)', 1, 44.71, 37.37, 13.56, 554.48, 'ME', '2022-08-25 08:06:57.465571', '2022-08-25 08:06:57.465571', 355.2, 'nutritionix', 68, '3'),
(104, 'Crepes - 1 10-inch crepe', 1, 6.02, 8.47, 16.66, 168.54, 'ME', '2022-08-25 08:06:57.472951', '2022-08-25 08:06:57.472951', 102, 'nutritionix', 2, '3'),
(105, 'Fettuccine Alfredo - 1 serving (about 2 cups)', 1, 28.33, 72.61, 105.54, 1186.05, 'ME', '2022-08-25 08:06:57.481436', '2022-08-25 08:06:57.481436', 466.4, 'nutritionix', 72, '3'),
(106, 'Yakitori - 1 cup', 1, 32.13, 10.76, 20.61, 342.34, 'ME', '2022-08-25 08:06:57.489783', '2022-08-25 08:06:57.489783', 244, 'nutritionix', 24, '3'),
(107, 'Crab Dip - 1 serving', 1, 19.03, 44.16, 6.97, 498, 'ME', '2022-08-25 08:06:57.497642', '2022-08-25 08:06:57.497642', 197.38, 'nutritionix', 71, '3'),
(108, 'Ham and Cheese Quiche - 1 piece', 1, 23.83, 41.34, 20.66, 549.77, 'ME', '2022-08-25 08:06:57.504845', '2022-08-25 08:06:57.504845', 202.26, 'nutritionix', 61, '3'),
(109, 'Bagel Bites - 1 piece', 1, 1.33, 1.52, 7.75, 50.1, 'CA', '2022-08-25 08:06:57.509875', '2022-08-25 08:06:57.509875', 15.28, 'nutritionix', 61, '3'),
(110, 'Jerk Chicken - 1 serving', 1, 50.28, 38.19, 11.15, 592.95, 'ME', '2022-08-25 08:06:57.519608', '2022-08-25 08:06:57.519608', 262.42, 'nutritionix', 71, '3'),
(111, 'Hawaiian Pizza - 1 slice', 1, 14.57, 11.57, 37.94, 313.82, 'ME', '2022-08-25 08:06:57.527000', '2022-08-25 08:06:57.527000', 134.97, 'nutritionix', 75, '3'),
(112, 'Hawaiian Pizza - 1 small slice', 1, 11.45, 9.08, 29.8, 246.45, 'ME', '2022-08-25 08:06:57.533688', '2022-08-25 08:06:57.533688', 106, 'nutritionix', 83, '3'),
(113, 'Knish - 1 piece', 1, 1.66, 2.63, 11.08, 74.41, 'CA', '2022-08-25 08:06:57.541226', '2022-08-25 08:06:57.541226', 45.42, 'nutritionix', 61, '3'),
(114, 'Lemon Pound Cake - 1 cup', 1, 4.34, 19.09, 32.66, 317.39, 'ME', '2022-08-25 08:06:57.549734', '2022-08-25 08:06:57.549734', 83, 'nutritionix', 24, '3'),
(115, 'Lemon Rice - 1 serving', 1, 4.91, 2.95, 42.71, 221.24, 'BA', '2022-08-25 08:06:57.557134', '2022-08-25 08:06:57.557134', 180.13, 'nutritionix', 71, '3'),
(116, 'Lobster Roll - 1 sandwich', 1, 42.14, 21.57, 33.05, 506.6, 'ME', '2022-08-25 08:06:57.563433', '2022-08-25 08:06:57.563433', 254, 'nutritionix', 70, '3'),
(117, 'Mojito - 1 cocktail', 1, 0.34, 0.09, 28.83, 204.6, 'CA', '2022-08-25 08:06:57.569842', '2022-08-25 08:06:57.569842', 222.1, 'nutritionix', 17, '3'),
(118, 'Monkey Bread - 1 piece', 1, 6.09, 16.9, 69.37, 440.86, 'ME', '2022-08-25 08:06:57.575729', '2022-08-25 08:06:57.575729', 130.85, 'nutritionix', 61, '3'),
(119, 'Nacho Cheese - 1 serving', 1, 9.07, 15.23, 9.23, 209.51, 'ME', '2022-08-25 08:06:57.581884', '2022-08-25 08:06:57.581884', 109.76, 'nutritionix', 71, '3'),
(120, 'Pretzel Bread - 1 hamburger bun', 1, 5.67, 3.67, 32.84, 189.12, 'ME', '2022-08-25 08:06:57.589746', '2022-08-25 08:06:57.589746', 91, 'nutritionix', 41, '3'),
(121, 'Zaru Soba - 1 serving', 1, 14.19, 0.4, 43.85, 283.05, 'ME', '2022-08-25 08:06:57.596304', '2022-08-25 08:06:57.596304', 356.88, 'nutritionix', 71, '3'),
(122, 'Wonton Egg Drop Soup - 1 serving', 1, 11.04, 6.12, 21.41, 187.16, 'ME', '2022-08-25 08:06:57.604011', '2022-08-25 08:06:57.604011', 406.73, 'nutritionix', 71, '3'),
(123, 'French Toast - 1 slice without syrup', 1, 7.28, 10.71, 23.15, 219.42, 'ME', '2022-08-25 08:06:57.610662', '2022-08-25 08:06:57.610662', 83.55, 'nutritionix', 77, '3'),
(124, 'Flaxseed Oatmeal Pancakes - 1 serving', 1, 6.13, 3.41, 32.68, 186.56, 'ME', '2022-08-25 08:06:57.616867', '2022-08-25 08:06:57.616867', 104.25, 'nutritionix', 71, '3'),
(125, 'Stuffed Cabbage - 1 servings', 1, 40.86, 15.92, 24.76, 408.47, 'ME', '2022-08-25 08:06:57.621791', '2022-08-25 08:06:57.621791', 401.71, 'nutritionix', 74, '3'),
(126, 'Stuffed Cabbage - 1 cup', 1, 16.48, 6.42, 9.99, 164.72, 'ME', '2022-08-25 08:06:57.630097', '2022-08-25 08:06:57.630097', 162, 'nutritionix', 24, '3'),
(127, 'Egg White Omelet - 1 omelet', 1, 10.82, 9.51, 0.91, 134.71, 'ME', '2022-08-25 08:06:57.638351', '2022-08-25 08:06:57.638351', 109.38, 'nutritionix', 52, '3'),
(128, 'Sweet and Sour Mix - 1 serving', 1, 1, 0.44, 168.06, 636.37, 'ME', '2022-08-25 08:06:57.644427', '2022-08-25 08:06:57.644427', 570.6, 'nutritionix', 71, '3'),
(129, 'Turkey Meatloaf - 1 serving', 1, 11.34, 6.14, 11.67, 146.73, 'ME', '2022-08-25 08:06:57.650527', '2022-08-25 08:06:57.650527', 104.15, 'nutritionix', 71, '3'),
(130, 'Fat Free Nonfat Yogurt, Plain', 1, 13, 0, 18, 130, 'ME', '2022-08-25 08:06:57.656646', '2022-08-25 08:06:57.656646', 227, 'nutritionix', 24, '2'),
(131, 'Chewy Coconut Delights, Dark Chocolate', 6, 1, 12, 25, 200, 'ME', '2022-08-25 08:06:57.662961', '2022-08-25 08:06:57.662961', 42, 'nutritionix', 61, '2'),
(132, 'Cookie Cub, White Macadamia', 1, 2, 7, 16, 130, 'ME', '2022-08-25 08:06:57.670241', '2022-08-25 08:06:57.670241', 28, 'nutritionix', 19, '2'),
(133, 'Glam Pop, Wild White Cheddar', 4, 2, 8, 15, 140, 'ME', '2022-08-25 08:06:57.676015', '2022-08-25 08:06:57.676015', 28, 'nutritionix', 31, '2'),
(134, 'Samurai Functional Teas, Mandarin Ginger Oolong', 8, 0, 0, 11, 45, 'ME', '2022-08-25 08:06:57.683343', '2022-08-25 08:06:57.683343', 0, 'nutritionix', 36, '2'),
(135, 'Fruit & Protein Pack, Tropical Fruit', 1, 15, 5, 16, 180, 'ME', '2022-08-25 08:06:57.689500', '2022-08-25 08:06:57.689500', 142, 'nutritionix', 58, '2'),
(136, 'Agua Purificada', 8, 0, 0, 0, 0, 'ME', '2022-08-25 08:06:57.695315', '2022-08-25 08:06:57.695315', 0, 'nutritionix', 57, '2'),
(137, 'Wood Fired, Spicy Sausage & Peppers', 1, 14, 15, 29, 310, 'ME', '2022-08-25 08:06:57.702389', '2022-08-25 08:06:57.702389', 127, 'nutritionix', 75, '2'),
(138, 'Gluten Free Pizza, Pepperoni', 1, 12, 16, 31, 320, 'ME', '2022-08-25 08:06:57.710525', '2022-08-25 08:06:57.710525', 122, 'nutritionix', 75, '2'),
(139, 'Ice Cream Bar, Premium Mango', 1, 2, 9, 18, 160, 'ME', '2022-08-25 08:06:57.718958', '2022-08-25 08:06:57.718958', 85, 'nutritionix', 7, '2'),
(140, 'Black Forest Ham with Brown Sugar', 3, 10, 1.5, 2, 60, 'ME', '2022-08-25 08:06:57.725559', '2022-08-25 08:06:57.725559', 55, 'nutritionix', 78, '2'),
(141, 'Blue Corn Tortilla Chips', 13, 2, 9, 15, 140, 'ME', '2022-08-25 08:06:57.731820', '2022-08-25 08:06:57.731820', 28, 'nutritionix', 16, '2'),
(142, 'Kosher Salami', 2, 9, 11, 2, 140, 'ME', '2022-08-25 08:06:57.737075', '2022-08-25 08:06:57.737075', 56, 'nutritionix', 55, '2'),
(143, 'potato salad', 1, 3, 8, 30, 200, 'ME', '2022-08-25 08:06:57.742704', '2022-08-25 08:06:57.742704', 140, 'nutritionix', 24, '2'),
(144, 'petite diced tomatoes', 1, 1, 0, 5, 25, 'ME', '2022-08-25 08:06:57.749027', '2022-08-25 08:06:57.749027', 121, 'nutritionix', 24, '2'),
(145, 'potato chips, salt & vinegar', 17, 2, 10, 14, 150, 'ME', '2022-08-25 08:06:57.755108', '2022-08-25 08:06:57.755108', 28, 'nutritionix', 16, '2'),
(146, 'skinless breakfast sausage, cheddar', 2, 9, 11, 2, 140, 'ME', '2022-08-25 08:06:57.763894', '2022-08-25 08:06:57.763894', 56, 'nutritionix', 46, '2'),
(147, 'grape jelly', 1, 0, 0, 13, 50, 'BA', '2022-08-25 08:06:57.769467', '2022-08-25 08:06:57.769467', 20, 'nutritionix', 87, '2'),
(148, 'sliced almonds', 0, 6, 14, 6, 170, 'ME', '2022-08-25 08:06:57.774553', '2022-08-25 08:06:57.774553', 28, 'nutritionix', 24, '2'),
(149, 'fettuccine', 2, 6, 1, 42, 200, 'ME', '2022-08-25 08:06:57.781053', '2022-08-25 08:06:57.781053', 56, 'nutritionix', 56, '2'),
(150, 'Baked Snack Crackers, White Cheddar', 1, 2, 7, 18, 150, 'CA', '2022-08-25 08:06:57.787451', '2022-08-25 08:06:57.787451', 30, 'nutritionix', 24, '2'),
(151, '100% Cranberry Grape Juice', 8, 0, 0, 39, 150, 'CA', '2022-08-25 08:06:57.794105', '2022-08-25 08:06:57.794105', 0, 'nutritionix', 36, '2'),
(152, 'Cookies \'n Cream Frozen Dairy Dessert', 1, 3, 4.5, 22, 140, 'CA', '2022-08-25 08:06:57.800755', '2022-08-25 08:06:57.800755', 77, 'nutritionix', 24, '2'),
(153, 'New England Style Lobster Bisque', 1, 6, 6, 8, 110, 'ME', '2022-08-25 08:06:57.808122', '2022-08-25 08:06:57.808122', 165, 'nutritionix', 24, '2'),
(154, 'Caramel Apple Pie', 0, 3, 19, 51, 390, 'ME', '2022-08-25 08:06:57.814545', '2022-08-25 08:06:57.814545', 122, 'nutritionix', 60, '2'),
(155, 'Sugar Cookies', 1, 1, 5, 18, 120, 'CA', '2022-08-25 08:06:57.820819', '2022-08-25 08:06:57.820819', 26, 'nutritionix', 19, '2'),
(156, 'Natural Cheese Flavor Baked Cheese Crackers', 28, 2, 9, 14, 150, 'CA', '2022-08-25 08:06:57.826818', '2022-08-25 08:06:57.826818', 30, 'nutritionix', 21, '2'),
(157, 'Chunk Light Tuna, in Water', 0, 13, 0.5, 0, 60, 'CA', '2022-08-25 08:06:57.833472', '2022-08-25 08:06:57.833472', 56, 'nutritionix', 25, '2'),
(158, 'Meatball Marinara', 1, 18, 6, 36, 280, 'ME', '2022-08-25 08:06:57.839424', '2022-08-25 08:06:57.839424', 283, 'nutritionix', 47, '2'),
(159, 'Croissants', 1, 8, 16, 30, 300, 'CA', '2022-08-25 08:06:57.846989', '2022-08-25 08:06:57.846989', 0, 'nutritionix', 71, '2'),
(160, 'Irish Stew', 1, 17, 4, 14, 160, 'ME', '2022-08-25 08:06:57.854031', '2022-08-25 08:06:57.854031', 170, 'nutritionix', 24, '2'),
(161, 'Half Italian Sub', 2, 34, 37, 40, 630, 'ME', '2022-08-25 08:06:57.860327', '2022-08-25 08:06:57.860327', 0, 'nutritionix', 85, '2'),
(162, 'Diced Carrots', 1, 1, 0, 15, 47, 'BA', '2022-08-25 08:06:57.868205', '2022-08-25 08:06:57.868205', 140, 'nutritionix', 14, '2'),
(163, 'Premium Bulgarian Style White Cheese for Breakfast', 4, 12, 26, 1, 280, 'ME', '2022-08-25 08:06:57.874341', '2022-08-25 08:06:57.874341', 100, 'nutritionix', 55, '2'),
(164, 'Three Cheese Pasta Sauce', 1, 2, 1.5, 11, 60, 'BA', '2022-08-25 08:06:57.883747', '2022-08-25 08:06:57.883747', 126, 'nutritionix', 24, '2'),
(165, 'Unsweetened Pineapple Rings', 1, 0.2, 1, 14, 63, 'CA', '2022-08-25 08:06:57.890227', '2022-08-25 08:06:57.890227', 105, 'nutritionix', 24, '2'),
(166, 'Organic Whole Peeled Tomatoes', 1, 1, 0, 6, 30, 'BA', '2022-08-25 08:06:57.896109', '2022-08-25 08:06:57.896109', 122, 'nutritionix', 24, '2'),
(167, 'Nut Free Banana Cream Cheese Cupcake', 3, 2, 17, 36, 300, 'CA', '2022-08-25 08:06:57.901004', '2022-08-25 08:06:57.901004', 71, 'nutritionix', 30, '2'),
(168, 'Pakoras Mixed Vegetables', 1, 3, 4.5, 17, 120, 'CA', '2022-08-25 08:06:57.906652', '2022-08-25 08:06:57.906652', 65, 'nutritionix', 71, '2'),
(169, 'Cookie Shots Brownie Biscuits', 7, 0.5, 7, 17, 126, 'CA', '2022-08-25 08:06:57.913040', '2022-08-25 08:06:57.913040', 28, 'nutritionix', 20, '2'),
(170, 'Organic Original Chestnut Flour Pancake & Waffle Mix', 0, 2, 1.5, 30, 140, 'CA', '2022-08-25 08:06:57.920652', '2022-08-25 08:06:57.920652', 40, 'nutritionix', 27, '2'),
(171, 'Organic Dried Mango Cheeks', 5, 0.5, 0, 33, 140, 'CA', '2022-08-25 08:06:57.927648', '2022-08-25 08:06:57.927648', 40, 'nutritionix', 61, '2'),
(172, 'Sheep\'s Milk Cheese Truffle', 1, 7, 11, 0, 127, 'CA', '2022-08-25 08:06:57.935351', '2022-08-25 08:06:57.935351', 28, 'nutritionix', 55, '2'),
(173, 'Butter Chicken Cooking Sauce', 0, 1, 8, 10, 110, 'CA', '2022-08-25 08:06:57.941469', '2022-08-25 08:06:57.941469', 0, 'nutritionix', 42, '2'),
(174, 'Sea Salt Black Bean Chips', 1, 3, 6, 17, 120, 'BA', '2022-08-25 08:06:57.948704', '2022-08-25 08:06:57.948704', 28, 'nutritionix', 54, '2'),
(175, 'Crispy Buffalo Style Chicken Chips', 24, 10, 10, 8, 160, 'CA', '2022-08-25 08:06:57.954991', '2022-08-25 08:06:57.954991', 30, 'nutritionix', 16, '2'),
(176, 'Mixed Berry Organic Probiotic Coconut Yogurt', 5, 8, 14, 5, 180, 'BA', '2022-08-25 08:06:57.961108', '2022-08-25 08:06:57.961108', 0, 'nutritionix', 55, '2'),
(177, 'Granola', 1, 5, 15, 19, 220, 'ME', '2022-08-25 08:06:57.967368', '2022-08-25 08:06:57.967368', 52, 'nutritionix', 71, '2'),
(178, 'Mango Chunks', 1, 2, 0, 25, 110, 'CA', '2022-08-25 08:06:57.973529', '2022-08-25 08:06:57.973529', 140, 'nutritionix', 24, '2'),
(179, 'Classic Caramel Digestives', 1, 0.9, 3.6, 10.9, 80.25, 'CA', '2022-08-25 08:06:57.979785', '2022-08-25 08:06:57.979785', 16.7, 'nutritionix', 8, '2'),
(180, 'Freefrom Gluten Free Fusilli', 1, 5.6, 0.5, 63.5, 287.09, 'ME', '2022-08-25 08:06:57.985985', '2022-08-25 08:06:57.985985', 180, 'nutritionix', 71, '2'),
(181, 'Tiramisu', 1, 4.2, 10.3, 31.2, 249.59, 'CA', '2022-08-25 08:06:57.992183', '2022-08-25 08:06:57.992183', 100, 'nutritionix', 71, '2'),
(182, 'Premium Ice Cream, Karuba Cold Cappuccino', 1, 3, 11, 27, 210, 'CA', '2022-08-25 08:06:58.000298', '2022-08-25 08:06:58.000298', 97, 'nutritionix', 24, '2'),
(183, 'Strong & Punchy Extra Mature British Cheddar', 1, 6.4, 8.7, 0.25, 103.18, 'CA', '2022-08-25 08:06:58.007554', '2022-08-25 08:06:58.007554', 25, 'nutritionix', 71, '2'),
(184, 'Peanut Caramel Cahoots Chocolate Bar', 1, 2.8, 11, 17.8, 183.67, 'CA', '2022-08-25 08:06:58.012919', '2022-08-25 08:06:58.012919', 45, 'nutritionix', 7, '2'),
(185, 'Original Oatmilk', 1, 2, 1.5, 19, 90, 'BA', '2022-08-25 08:06:58.018905', '2022-08-25 08:06:58.018905', 0, 'nutritionix', 24, '2'),
(186, 'Golden Jewel Blend', 0, 6, 1, 32, 160, 'BA', '2022-08-25 08:06:58.025970', '2022-08-25 08:06:58.025970', 45, 'nutritionix', 26, '2'),
(187, 'Sockeye Salmon Fillet', 1, 25, 5, 0, 150, 'BA', '2022-08-25 08:06:58.033998', '2022-08-25 08:06:58.033998', 112, 'nutritionix', 35, '2'),
(188, 'Cinnamon Vanilla Snacking Mix', 1, 2, 3.5, 25, 130, 'CA', '2022-08-25 08:06:58.040293', '2022-08-25 08:06:58.040293', 28, 'nutritionix', 64, '2'),
(189, 'Robin\'s Egg Marshmallows Milk Chocolate', 7, 1, 6, 20, 140, 'CA', '2022-08-25 08:06:58.046475', '2022-08-25 08:06:58.046475', 30, 'nutritionix', 61, '2'),
(190, 'Gluten Free Kale & Uncured Chourico Soup', 1, 9, 4.5, 21, 160, 'ME', '2022-08-25 08:06:58.052462', '2022-08-25 08:06:58.052462', 245, 'nutritionix', 24, '2'),
(191, 'Original Fudge Stripes Minis', 14, 1, 7, 21, 150, 'CA', '2022-08-25 08:06:58.057310', '2022-08-25 08:06:58.057310', 30, 'nutritionix', 20, '2'),
(192, 'Ice Cream, Vanilla Bean', 1, 3, 8, 16, 150, 'CA', '2022-08-25 08:06:58.062387', '2022-08-25 08:06:58.062387', 65, 'nutritionix', 24, '2'),
(193, 'Chewy Chocolate Chip Granola Bars', 1, 1, 3.5, 18, 110, 'CA', '2022-08-25 08:06:58.068523', '2022-08-25 08:06:58.068523', 25, 'nutritionix', 7, '2'),
(194, 'Chocolate Caramel Mix', 0, 5, 14, 26, 240, 'CA', '2022-08-25 08:06:58.075347', '2022-08-25 08:06:58.075347', 46, 'nutritionix', 24, '2'),
(195, 'Wieners', 1, 8, 7, 3, 110, 'BA', '2022-08-25 08:06:58.082046', '2022-08-25 08:06:58.082046', 57, 'nutritionix', 45, '2'),
(196, 'Whole Grain Oatmeal Bar, Peanut Butter Chocolate', 1, 11, 6, 16, 160, 'CA', '2022-08-25 08:06:58.089039', '2022-08-25 08:06:58.089039', 0, 'nutritionix', 7, '2'),
(197, 'Red Bean Ice Bar', 1, 3, 1, 30, 140, 'CA', '2022-08-25 08:06:58.095708', '2022-08-25 08:06:58.095708', 0, 'nutritionix', 7, '2'),
(198, 'Turkey Jerky, Sweet n Spicy', 1, 11, 0, 6, 60, 'BA', '2022-08-25 08:06:58.102346', '2022-08-25 08:06:58.102346', 28, 'nutritionix', 55, '2'),
(199, 'Boom Chicka Puff, White Cheddar', 21, 2, 8, 16, 150, 'BA', '2022-08-25 08:06:58.109832', '2022-08-25 08:06:58.109832', 28, 'nutritionix', 61, '2'),
(200, 'Cheese Cubes, Giant Eagle', 7, 7, 9, 1, 110, 'BA', '2022-08-25 08:06:58.116368', '2022-08-25 08:06:58.116368', 28, 'nutritionix', 23, '2'),
(201, 'Juice Cocktail, Cranberry Apple', 8, 0, 0, 31, 130, 'CA', '2022-08-25 08:06:58.123911', '2022-08-25 08:06:58.123911', 0, 'nutritionix', 36, '2'),
(202, 'Calrose Rice', 0, 3, 0, 33, 150, 'BA', '2022-08-25 08:06:58.131421', '2022-08-25 08:06:58.131421', 42, 'nutritionix', 28, '2'),
(203, 'Crackers, Olive Oil', 4, 0.5, 2, 10, 60, 'CA', '2022-08-25 08:06:58.138250', '2022-08-25 08:06:58.138250', 15, 'nutritionix', 21, '2'),
(204, 'Hyderabadi Vegetable Biryani', 1, 6, 8, 38, 248, 'ME', '2022-08-25 08:06:58.144880', '2022-08-25 08:06:58.144880', 125, 'nutritionix', 58, '2'),
(205, 'Almonds, Oak Barrel Smoked', 0, 7, 20, 7, 220, 'BA', '2022-08-25 08:06:58.152725', '2022-08-25 08:06:58.152725', 36, 'nutritionix', 24, '2'),
(206, 'Cherries, Dried Montmorency', 0, 1, 0, 32, 130, 'BA', '2022-08-25 08:06:58.159721', '2022-08-25 08:06:58.159721', 40, 'nutritionix', 24, '2'),
(207, 'Sausage, Egg & Queso Breakfast Burrito', 1, 17, 27, 37, 460, 'ME', '2022-08-25 08:06:58.165936', '2022-08-25 08:06:58.165936', 184, 'nutritionix', 10, '2'),
(208, 'Cocktail Peanuts', 35, 8, 14, 5, 180, 'BA', '2022-08-25 08:06:58.171938', '2022-08-25 08:06:58.171938', 28, 'nutritionix', 61, '2'),
(209, 'Gluten-Free Smoked Polish Sausage', 0, 8, 9, 2, 120, 'BA', '2022-08-25 08:06:58.179012', '2022-08-25 08:06:58.179012', 50, 'nutritionix', 45, '2'),
(210, 'Rich Chocolate Complete Protein Shake', 1, 30, 2, 6, 140, 'CA', '2022-08-25 08:06:58.186035', '2022-08-25 08:06:58.186035', 0, 'nutritionix', 9, '2'),
(211, 'Gluten Free Great Seed Bread', 1, 3, 3, 17, 110, 'CA', '2022-08-25 08:06:58.192043', '2022-08-25 08:06:58.192043', 40, 'nutritionix', 75, '2'),
(212, 'Viva Italian Dressing', 2, 0, 4.5, 2, 50, 'BA', '2022-08-25 08:06:58.197267', '2022-08-25 08:06:58.197267', 31, 'nutritionix', 87, '2'),
(213, 'Homestyle Point Cut Corned Beef Brisket', 4, 14, 17, 0, 220, 'ME', '2022-08-25 08:06:58.204334', '2022-08-25 08:06:58.204334', 112, 'nutritionix', 55, '2'),
(214, 'Mushroom Medley', 1, 5, 8, 12, 140, 'BA', '2022-08-25 08:06:58.211941', '2022-08-25 08:06:58.211941', 0, 'nutritionix', 24, '2'),
(215, 'Canadian Bean & Pepper Salad', 8, 15, 11, 48, 340, 'ME', '2022-08-25 08:06:58.219370', '2022-08-25 08:06:58.219370', 225, 'nutritionix', 55, '2'),
(216, 'Breakfast Burrito', 1, 10, 11, 32, 270, 'ME', '2022-08-25 08:06:58.224290', '2022-08-25 08:06:58.224290', 113, 'nutritionix', 10, '2'),
(217, 'Pasteurized Grade A Sour Cream', 2, 1, 5, 2, 60, 'BA', '2022-08-25 08:06:58.231735', '2022-08-25 08:06:58.231735', 30, 'nutritionix', 87, '2'),
(218, 'Iced Cinnamon Roll', 1, 3, 6, 39, 220, 'CA', '2022-08-25 08:06:58.238326', '2022-08-25 08:06:58.238326', 69, 'nutritionix', 67, '2'),
(219, 'Chef\'s Cut Carrots with a Maple Dijon Glaze', 1, 2, 12, 31, 230, 'ME', '2022-08-25 08:06:58.243163', '2022-08-25 08:06:58.243163', 156, 'nutritionix', 71, '2'),
(220, 'Mixed Berry Protein Bar', 1, 12, 7, 24, 210, 'CA', '2022-08-25 08:06:58.248290', '2022-08-25 08:06:58.248290', 52, 'nutritionix', 7, '2'),
(221, 'Matcha Bar', 1, 10, 9, 18, 180, 'ME', '2022-08-25 08:06:58.255303', '2022-08-25 08:06:58.255303', 54, 'nutritionix', 71, '2'),
(222, 'Organic Fresh Juice', 1, 3, 0.5, 15, 80, 'CA', '2022-08-25 08:06:58.261419', '2022-08-25 08:06:58.261419', 0, 'nutritionix', 71, '2'),
(223, 'Whole Wheat Seasoned Bread Crumbs', 0, 5, 1.5, 20, 110, 'CA', '2022-08-25 08:06:58.267279', '2022-08-25 08:06:58.267279', 30, 'nutritionix', 24, '2'),
(224, 'Hyderabad Mixture Snack Mix', 1, 3, 12, 11, 180, 'BA', '2022-08-25 08:06:58.273178', '2022-08-25 08:06:58.273178', 28, 'nutritionix', 55, '2'),
(225, 'Iced Coffee', 600, 19.2, 10.2, 59.4, 409.86, 'CA', '2022-08-25 08:06:58.279566', '2022-08-25 08:06:58.279566', 0, 'nutritionix', 49, '2'),
(226, 'Peanut Butter', 100, 24, 50, 14, 611.45, 'BA', '2022-08-25 08:06:58.286260', '2022-08-25 08:06:58.286260', 100, 'nutritionix', 39, '2'),
(227, 'Walnut Oat Crackers', 3, 1.3, 4.7, 5.7, 70.46, 'CA', '2022-08-25 08:06:58.292325', '2022-08-25 08:06:58.292325', 14, 'nutritionix', 21, '2'),
(228, 'Iced Coffee, Mocha', 500, 16.5, 18.5, 53.5, 453.81, 'CA', '2022-08-25 08:06:58.298448', '2022-08-25 08:06:58.298448', 0, 'nutritionix', 49, '2'),
(229, 'Avocado Oil', 1, 0, 14, 0, 130, 'BA', '2022-08-25 08:06:58.304265', '2022-08-25 08:06:58.304265', 0, 'nutritionix', 87, '2'),
(230, 'Chewy Bar, Cocoa Loco', 1, 2, 4, 19, 120, 'CA', '2022-08-25 08:06:58.310980', '2022-08-25 08:06:58.310980', 28, 'nutritionix', 7, '2'),
(231, 'Olive Oil Vinaigrette, Italian', 2, 0, 4.5, 3, 50, 'BA', '2022-08-25 08:06:58.317384', '2022-08-25 08:06:58.317384', 31, 'nutritionix', 87, '2'),
(232, 'Orange Lentils', 192, 48, 4, 114, 662, 'ME', '2022-08-25 08:06:58.323551', '2022-08-25 08:06:58.323551', 192, 'nutritionix', 39, '2'),
(233, 'Stroopwafel, Caramel Coffee', 1, 1, 6, 22, 150, 'CA', '2022-08-25 08:06:58.329800', '2022-08-25 08:06:58.329800', 32, 'nutritionix', 84, '2'),
(234, 'Cranberry Goat Cheese Crumbles', 1, 4, 4.5, 5, 80, 'BA', '2022-08-25 08:06:58.337389', '2022-08-25 08:06:58.337389', 28, 'nutritionix', 55, '2'),
(235, 'Saltines', 5, 1, 1.5, 11, 60, 'CA', '2022-08-25 08:06:58.343096', '2022-08-25 08:06:58.343096', 15, 'nutritionix', 21, '2'),
(236, 'Rice Crackers', 2, 1, 4, 20, 132, 'CA', '2022-08-25 08:06:58.349186', '2022-08-25 08:06:58.349186', 27, 'nutritionix', 58, '2'),
(237, 'Low Fat Yogurt, Strawberry', 1, 4, 1.5, 16, 100, 'CA', '2022-08-25 08:06:58.355538', '2022-08-25 08:06:58.355538', 113, 'nutritionix', 18, '2'),
(238, 'Milk Chocolate', 38, 2.1, 16.7, 17.5, 228.81, 'CA', '2022-08-25 08:06:58.361379', '2022-08-25 08:06:58.361379', 38, 'nutritionix', 39, '2'),
(239, 'Ristorante Hawaii Pizza', 1, 16, 15, 50, 413.2, 'ME', '2022-08-25 08:06:58.368256', '2022-08-25 08:06:58.368256', 0, 'nutritionix', 62, '2'),
(240, 'Creamy Caramel Mix', 3, 1, 9, 23, 180, 'CA', '2022-08-25 08:06:58.374265', '2022-08-25 08:06:58.374265', 36, 'nutritionix', 61, '2'),
(241, 'Low Fat Honey Grahams', 2, 2, 2, 28, 140, 'CA', '2022-08-25 08:06:58.380627', '2022-08-25 08:06:58.380627', 35, 'nutritionix', 38, '2'),
(242, 'Caramel Cake', 1, 2, 13, 50, 330, 'ME', '2022-08-25 08:06:58.387778', '2022-08-25 08:06:58.387778', 77, 'nutritionix', 11, '2'),
(243, 'Plant-based nuggets', 6, 17, 12, 17, 240, 'CA', '2022-08-25 08:06:58.394729', '2022-08-25 08:06:58.394729', 102, 'nutritionix', 61, '2'),
(244, 'Extra Old Extra-Fort Cheddar', 1, 7, 10, 0, 120, 'BA', '2022-08-25 08:06:58.402220', '2022-08-25 08:06:58.402220', 30, 'nutritionix', 4, '2'),
(245, 'Maple Flavour Thick Sliced Bacon', 1, 5, 22, 1, 220, 'BA', '2022-08-25 08:06:58.409175', '2022-08-25 08:06:58.409175', 50, 'nutritionix', 75, '2'),
(246, 'Honey Toasted Cashews', 1, 2, 7, 19, 150, 'CA', '2022-08-25 08:06:58.416133', '2022-08-25 08:06:58.416133', 30, 'nutritionix', 71, '2'),
(247, 'Organic Yellow Cling Sliced Peaches in 100% Juice', 1, 1, 0, 14, 60, 'CA', '2022-08-25 08:06:58.421364', '2022-08-25 08:06:58.421364', 124, 'nutritionix', 24, '2'),
(248, 'Fat Free Lactose Free Milk', 1, 9, 0, 13, 90, 'CA', '2022-08-25 08:06:58.427182', '2022-08-25 08:06:58.427182', 0, 'nutritionix', 24, '2'),
(249, 'Italian Sausage & Pasta', 1, 15, 13, 35, 320, 'ME', '2022-08-25 08:06:58.434080', '2022-08-25 08:06:58.434080', 225, 'nutritionix', 24, '2'),
(250, 'Chicken Flavor Ramen Noodle Soup', 1, 6, 12, 39, 290, 'ME', '2022-08-25 08:06:58.440107', '2022-08-25 08:06:58.440107', 64, 'nutritionix', 18, '2'),
(251, 'Garden Salad', 1, 3, 14, 22, 230, 'ME', '2022-08-25 08:06:58.445932', '2022-08-25 08:06:58.445932', 100, 'nutritionix', 71, '2'),
(252, 'Almond Chocolate Chip Smart Bar', 1, 12, 16, 20, 250, 'CA', '2022-08-25 08:06:58.452697', '2022-08-25 08:06:58.452697', 55, 'nutritionix', 7, '2'),
(253, 'Beef & Cheese Traveller', 1, 15, 23, 34, 410, 'ME', '2022-08-25 08:06:58.460557', '2022-08-25 08:06:58.460557', 0, 'nutritionix', 58, '2'),
(254, 'Butter Croissants', 1, 5, 15, 35, 300, 'ME', '2022-08-25 08:06:58.467972', '2022-08-25 08:06:58.467972', 80, 'nutritionix', 22, '2'),
(255, 'Light Golden Agave Syrup', 1, 0, 0, 16, 70, 'BA', '2022-08-25 08:06:58.474488', '2022-08-25 08:06:58.474488', 21, 'nutritionix', 87, '2'),
(256, 'Korean Style bbq beef bowl', 1, 21, 7, 42, 320, 'ME', '2022-08-25 08:06:58.481956', '2022-08-25 08:06:58.481956', 283, 'nutritionix', 58, '2'),
(257, 'Chicken & Mushroom Pot Noodle', 1, 12, 22, 73, 547.2, 'ME', '2022-08-25 08:06:58.488590', '2022-08-25 08:06:58.488590', 385, 'nutritionix', 63, '2'),
(258, 'Baked Lemon Snack Pie', 1, 3, 16, 41, 320, 'ME', '2022-08-25 08:06:58.494957', '2022-08-25 08:06:58.494957', 114, 'nutritionix', 60, '2'),
(259, 'Honey Roasted Peanuts', 3, 7, 13, 5, 150, 'BA', '2022-08-25 08:06:58.501957', '2022-08-25 08:06:58.501957', 26, 'nutritionix', 87, '2'),
(260, 'Lowfat Oatmilk', 1, 3, 1, 16, 90, 'BA', '2022-08-25 08:06:58.507619', '2022-08-25 08:06:58.507619', 0, 'nutritionix', 24, '2'),
(261, 'Build Your Own Omelet, Omelette', 344, 38, 41, 25, 620, 'ME', '2022-08-25 08:06:58.514802', '2022-08-25 08:06:58.514802', 344, 'nutritionix', 39, '1'),
(262, 'Caesar Salad with Chicken, Half', 222, 25, 22, 15, 350, 'ME', '2022-08-25 08:06:58.521930', '2022-08-25 08:06:58.521930', 222, 'nutritionix', 39, '1'),
(263, 'Chai Latte, Small', 1, 11, 2, 52, 270, 'ME', '2022-08-25 08:06:58.529220', '2022-08-25 08:06:58.529220', 0, 'nutritionix', 44, '1'),
(264, 'Minute Maid Blue Raspberry Slushie, Large', 1, 0, 0, 92, 340, 'ME', '2022-08-25 08:06:58.536567', '2022-08-25 08:06:58.536567', 0, 'nutritionix', 71, '1'),
(265, 'Chocolate Satin Pie, Slice', 161, 8, 44, 65, 690, 'ME', '2022-08-25 08:06:58.542901', '2022-08-25 08:06:58.542901', 161, 'nutritionix', 39, '1'),
(266, 'Fruit Cup', 1, 0, 0, 16, 60, 'BA', '2022-08-25 08:06:58.549868', '2022-08-25 08:06:58.549868', 0, 'nutritionix', 71, '1'),
(267, 'Salad Additions from the Grill, Grilled Shrimp (8 pieces)', 1, 17, 0, 0, 210, 'ME', '2022-08-25 08:06:58.556374', '2022-08-25 08:06:58.556374', 0, 'nutritionix', 71, '1'),
(268, 'Caesar Dressing', 1, 1, 12, 1, 120, 'BA', '2022-08-25 08:06:58.562619', '2022-08-25 08:06:58.562619', 0, 'nutritionix', 71, '1'),
(269, 'Honey Ginger Glazed Salmon', 513, 43, 30, 29, 570, 'ME', '2022-08-25 08:06:58.568492', '2022-08-25 08:06:58.568492', 513, 'nutritionix', 39, '1'),
(270, 'Fanta Orange, Large', 1, 0, 0, 117, 430, 'CA', '2022-08-25 08:06:58.574642', '2022-08-25 08:06:58.574642', 30, 'nutritionix', 32, '1'),
(271, 'Banana Milkshake, 12 oz', 1, 5, 8, 44, 260, 'CA', '2022-08-25 08:06:58.580948', '2022-08-25 08:06:58.580948', 0, 'nutritionix', 71, '1'),
(272, 'Fresh Entree Salads, Caesar Salad', 1, 14, 0, 28, 540, 'ME', '2022-08-25 08:06:58.586925', '2022-08-25 08:06:58.586925', 0, 'nutritionix', 71, '1'),
(273, 'Pepsi, Small', 1, 0, 0, 50, 180, 'CA', '2022-08-25 08:06:58.595123', '2022-08-25 08:06:58.595123', 0, 'nutritionix', 32, '1'),
(274, 'Meat Lovers Pizza, Medium Slice', 1, 15, 14, 30, 300, 'ME', '2022-08-25 08:06:58.602508', '2022-08-25 08:06:58.602508', 0, 'nutritionix', 75, '1'),
(275, 'Fuze Sweet Tea, Regular', 1, 0, 0, 46, 170, 'CA', '2022-08-25 08:06:58.608445', '2022-08-25 08:06:58.608445', 22, 'nutritionix', 32, '1'),
(276, 'Add Bacon to Breakfast Sandwich', 1, 6, 7, 0, 90, 'BA', '2022-08-25 08:06:58.617364', '2022-08-25 08:06:58.617364', 0, 'nutritionix', 71, '1'),
(277, 'Iced Latte, Medium', 1, 6, 6, 10, 120, 'CA', '2022-08-25 08:06:58.624326', '2022-08-25 08:06:58.624326', 0, 'nutritionix', 71, '1'),
(278, 'Three Buttermilk Pancakes', 249, 11, 28, 92, 670, 'ME', '2022-08-25 08:06:58.630115', '2022-08-25 08:06:58.630115', 249, 'nutritionix', 39, '1'),
(279, 'Meatloaf on Grilled Parmesan Sourdough, Half', 244, 24, 31, 27, 480, 'ME', '2022-08-25 08:06:58.636454', '2022-08-25 08:06:58.636454', 244, 'nutritionix', 39, '1'),
(280, 'Samuel Adams Boston Lager, 20 oz Schooner', 560, 3, 0, 30, 300, 'ME', '2022-08-25 08:06:58.643086', '2022-08-25 08:06:58.643086', 560, 'nutritionix', 39, '1'),
(281, 'Fanta Cherry, Large', 1, 0, 0, 115, 430, 'CA', '2022-08-25 08:06:58.652633', '2022-08-25 08:06:58.652633', 30, 'nutritionix', 32, '1'),
(282, 'Dr Pepper, Regular', 1, 0, 0, 73, 280, 'CA', '2022-08-25 08:06:58.659316', '2022-08-25 08:06:58.659316', 22, 'nutritionix', 32, '1'),
(283, 'Cherry Coca-Cola, 16 oz', 1, 0, 0, 37, 140, 'CA', '2022-08-25 08:06:58.665619', '2022-08-25 08:06:58.665619', 0, 'nutritionix', 71, '1'),
(284, 'Soup, Chicken Tortilla', 226, 5, 3.5, 10, 90, 'BA', '2022-08-25 08:06:58.671624', '2022-08-25 08:06:58.671624', 226, 'nutritionix', 39, '1'),
(285, 'Blueberry Muffin', 1, 8, 27, 66, 520, 'ME', '2022-08-25 08:06:58.677265', '2022-08-25 08:06:58.677265', 0, 'nutritionix', 50, '1'),
(286, 'Boneless Buffalo Wings, Single, No Sauce', 1, 40, 38, 48, 700, 'ME', '2022-08-25 08:06:58.684238', '2022-08-25 08:06:58.684238', 0, 'nutritionix', 71, '1'),
(287, 'Grilled Vegetable & Black Bean Quesadillas with House-Made Salsa', 1, 45, 63, 78, 1090, 'ME', '2022-08-25 08:06:58.690416', '2022-08-25 08:06:58.690416', 0, 'nutritionix', 71, '1'),
(288, 'Mr Gatti\'s Ginormous Meatball Sandwich', 1, 0, 0, 0, 1410, 'ME', '2022-08-25 08:06:58.696718', '2022-08-25 08:06:58.696718', 0, 'nutritionix', 71, '1'),
(289, 'Original Crust, Mini, Steak & Roasted Red Pepper (1 Slice)', 1, 9, 7, 20, 180, 'BA', '2022-08-25 08:06:58.702578', '2022-08-25 08:06:58.702578', 92, 'nutritionix', 75, '1'),
(290, 'Frosted Bar', 1, 2, 17, 41, 350, 'CA', '2022-08-25 08:06:58.708531', '2022-08-25 08:06:58.708531', 0, 'nutritionix', 33, '1'),
(291, 'Best Buddies No Name Cake', 1, 3, 20, 42, 330, 'ME', '2022-08-25 08:06:58.714380', '2022-08-25 08:06:58.714380', 0, 'nutritionix', 71, '1'),
(292, 'Crispy Chicken Breast Sandwich', 1, 22, 34, 57, 620, 'ME', '2022-08-25 08:06:58.721025', '2022-08-25 08:06:58.721025', 0, 'nutritionix', 71, '1'),
(293, 'Sandwiches & Salads, Cold Cut Combo', 1, 10, 16, 6, 190, 'ME', '2022-08-25 08:06:58.727561', '2022-08-25 08:06:58.727561', 0, 'nutritionix', 85, '1'),
(294, 'Seafood, Large', 136, 14, 7, 22, 200, 'ME', '2022-08-25 08:06:58.734718', '2022-08-25 08:06:58.734718', 0, 'nutritionix', 39, '1'),
(295, '16 oz Iced White Chocolate Americano', 1, 1, 8, 31, 200, 'CA', '2022-08-25 08:06:58.741499', '2022-08-25 08:06:58.741499', 0, 'nutritionix', 71, '1'),
(296, 'Meatballs (5)', 1, 52, 0, 56, 810, 'ME', '2022-08-25 08:06:58.747755', '2022-08-25 08:06:58.747755', 0, 'nutritionix', 71, '1'),
(297, 'Jalapeno Hawaiian Pizza, Large Slice', 1, 13, 7, 33, 240, 'ME', '2022-08-25 08:06:58.753673', '2022-08-25 08:06:58.753673', 0, 'nutritionix', 75, '1'),
(298, 'Small Pizza Topping, Ricotta', 1, 3, 0, 5, 50, 'BA', '2022-08-25 08:06:58.759799', '2022-08-25 08:06:58.759799', 0, 'nutritionix', 71, '1'),
(299, 'Chicken Biscuit', 1, 17, 19, 39, 380, 'ME', '2022-08-25 08:06:58.765865', '2022-08-25 08:06:58.765865', 137, 'nutritionix', 53, '1'),
(300, 'Sierra Mist, Small', 1, 0, 0, 50, 190, 'CA', '2022-08-25 08:06:58.772198', '2022-08-25 08:06:58.772198', 0, 'nutritionix', 32, '1'),
(301, 'Soup, Split Pea', 226, 5, 8, 11, 140, 'ME', '2022-08-25 08:06:58.780802', '2022-08-25 08:06:58.780802', 226, 'nutritionix', 39, '1'),
(302, 'Dressing, Italian', 28, 1, 6, 3, 70, 'BA', '2022-08-25 08:06:58.786561', '2022-08-25 08:06:58.786561', 28, 'nutritionix', 39, '1'),
(303, 'Egg Patty', 1, 4, 4, 1, 60, 'BA', '2022-08-25 08:06:58.792149', '2022-08-25 08:06:58.792149', 0, 'nutritionix', 59, '1'),
(304, 'Mountain Dew, Small', 1, 0, 0, 62, 230, 'CA', '2022-08-25 08:06:58.799970', '2022-08-25 08:06:58.799970', 0, 'nutritionix', 32, '1'),
(305, 'Church\'s Southern Sweet Tea, Regular', 1, 0, 0, 48, 190, 'CA', '2022-08-25 08:06:58.805958', '2022-08-25 08:06:58.805958', 22, 'nutritionix', 32, '1'),
(306, 'Espresso, Single', 1, 0, 0, 1, 60, 'CA', '2022-08-25 08:06:58.811540', '2022-08-25 08:06:58.811540', 0, 'nutritionix', 71, '1'),
(307, 'Soup, Navy Bean', 226, 5, 2.5, 14, 90, 'CA', '2022-08-25 08:06:58.816747', '2022-08-25 08:06:58.816747', 226, 'nutritionix', 39, '1'),
(308, 'Veggie Omelet', 508, 37, 37, 23, 570, 'ME', '2022-08-25 08:06:58.822844', '2022-08-25 08:06:58.822844', 508, 'nutritionix', 39, '1'),
(309, 'Honey Sauce', 1, 0, 0, 20, 80, 'BA', '2022-08-25 08:06:58.829571', '2022-08-25 08:06:58.829571', 25, 'nutritionix', 53, '1'),
(310, 'White Gravy, Large', 1, 2, 11, 36, 250, 'ME', '2022-08-25 08:06:58.836268', '2022-08-25 08:06:58.836268', 425, 'nutritionix', 53, '1'),
(311, 'Fuze Peach Tea, Large', 1, 0, 0, 70, 240, 'CA', '2022-08-25 08:06:58.842129', '2022-08-25 08:06:58.842129', 30, 'nutritionix', 32, '1'),
(312, 'Basil Pesto Pizza, Medium Slice', 1, 12, 11, 30, 270, 'ME', '2022-08-25 08:06:58.847969', '2022-08-25 08:06:58.847969', 0, 'nutritionix', 75, '1'),
(313, 'Southwest Avocado & Shrimp Salad', 579, 40, 44, 49, 750, 'ME', '2022-08-25 08:06:58.853897', '2022-08-25 08:06:58.853897', 610, 'nutritionix', 39, '1'),
(314, 'Mini Cookie Cake Slice', 1, 2, 27, 64, 540, 'ME', '2022-08-25 08:06:58.860008', '2022-08-25 08:06:58.860008', 0, 'nutritionix', 33, '1'),
(315, 'Pecan Bar', 62, 4, 23, 30, 330, 'CA', '2022-08-25 08:06:58.866128', '2022-08-25 08:06:58.866128', 0, 'nutritionix', 39, '1'),
(316, 'Spicy Nuggets, 20 Piece', 1, 40, 74, 57, 1050, 'ME', '2022-08-25 08:06:58.872146', '2022-08-25 08:06:58.872146', 0, 'nutritionix', 71, '1'),
(317, 'Misto, Cheesecake Ice Flavor, Large Portion', 0, 1, 6, 113, 500, 'ME', '2022-08-25 08:06:58.878362', '2022-08-25 08:06:58.878362', 0, 'nutritionix', 51, '1'),
(318, 'Raspberry Ice, Large Portion', 0, 1, 0, 107, 420, 'ME', '2022-08-25 08:06:58.884787', '2022-08-25 08:06:58.884787', 0, 'nutritionix', 51, '1'),
(319, 'Panella Bread with Butter (Individual)', 1, 5, 15, 30, 180, 'ME', '2022-08-25 08:06:58.890415', '2022-08-25 08:06:58.890415', 0, 'nutritionix', 71, '1'),
(320, 'CYO Pan Crust Pizza, Pizza Crust, Large', 1, 12, 8, 34, 260, 'ME', '2022-08-25 08:06:58.897961', '2022-08-25 08:06:58.897961', 0, 'nutritionix', 71, '1'),
(321, 'Hi-C Fruit Punch', 1, 0, 0, 34, 130, 'ME', '2022-08-25 08:06:58.904579', '2022-08-25 08:06:58.904579', 0, 'nutritionix', 71, '1'),
(322, 'The Everything Flatbread Pizza', 1, 55, 63, 92, 1160, 'ME', '2022-08-25 08:06:58.913034', '2022-08-25 08:06:58.913034', 0, 'nutritionix', 53, '1'),
(323, 'Sausage, Ham & Bacon Stuffed Slice', 0, 42, 42, 75, 850, 'ME', '2022-08-25 08:06:58.919324', '2022-08-25 08:06:58.919324', 0, 'nutritionix', 51, '1'),
(324, 'Chicken Feta Wrap on White', 255, 30, 24, 33, 460, 'ME', '2022-08-25 08:06:58.926038', '2022-08-25 08:06:58.926038', 0, 'nutritionix', 39, '1'),
(325, 'Grilled Chicken on Baguette', 475, 60, 40, 97, 1000, 'ME', '2022-08-25 08:06:58.933267', '2022-08-25 08:06:58.933267', 0, 'nutritionix', 39, '1');
INSERT INTO `base_makanan` (`id`, `nama`, `porsi`, `protein`, `lemak`, `karbo`, `energi`, `jenis`, `created_at`, `updated_at`, `berat_porsi`, `sumber`, `besar_porsi_id`, `kelompok`) VALUES
(326, 'Quarter Pound Double Cheeseburger', 1, 31, 34, 34, 570, 'ME', '2022-08-25 08:06:58.939142', '2022-08-25 08:06:58.939142', 0, 'nutritionix', 71, '1'),
(327, 'Roman Supremo Pizza, Slice', 0, 28, 34, 64, 670, 'ME', '2022-08-25 08:06:58.945583', '2022-08-25 08:06:58.945583', 0, 'nutritionix', 51, '1'),
(328, 'Chicken Parm with Baked Ziti', 0, 58, 64, 121, 1280, 'ME', '2022-08-25 08:06:58.952576', '2022-08-25 08:06:58.952576', 0, 'nutritionix', 51, '1'),
(329, 'Herb & Garlic Cream Cheese', 28, 2, 4.5, 3, 60, 'BA', '2022-08-25 08:06:58.959683', '2022-08-25 08:06:58.959683', 0, 'nutritionix', 39, '1'),
(330, 'Chicken Caesar Salad', 300, 36, 31, 12, 460, 'ME', '2022-08-25 08:06:58.966186', '2022-08-25 08:06:58.966186', 0, 'nutritionix', 39, '1'),
(331, 'Walnut Cruller Doughnut', 79, 7, 21, 32, 340, 'CA', '2022-08-25 08:06:58.972535', '2022-08-25 08:06:58.972535', 0, 'nutritionix', 39, '1'),
(332, 'Peacan Tart', 80, 4, 19, 45, 370, 'ME', '2022-08-25 08:06:58.979083', '2022-08-25 08:06:58.979083', 0, 'nutritionix', 39, '1'),
(333, 'Spicy Buffalo Chicken on Whole Wheat Ciabatta', 335, 33, 27, 90, 750, 'ME', '2022-08-25 08:06:58.985087', '2022-08-25 08:06:58.985087', 0, 'nutritionix', 39, '1'),
(334, 'Soft Pretzel Twist', 1, 7, 7, 39, 250, 'ME', '2022-08-25 08:06:58.991168', '2022-08-25 08:06:58.991168', 0, 'nutritionix', 71, '1'),
(335, '18% Cream, Large', 1, 1, 4.5, 1, 50, 'ME', '2022-08-25 08:06:58.998103', '2022-08-25 08:06:58.998103', 0, 'nutritionix', 71, '1'),
(336, 'French Toast', 0, 9, 4.5, 36, 230, 'ME', '2022-08-25 08:06:59.004856', '2022-08-25 08:06:59.004856', 0, 'nutritionix', 51, '1'),
(337, 'Roman Cheese Pizza, Slice', 0, 24, 24, 61, 550, 'ME', '2022-08-25 08:06:59.010768', '2022-08-25 08:06:59.010768', 0, 'nutritionix', 51, '1'),
(338, 'Cinnamon Twist Doughnut', 106, 8, 17, 52, 370, 'ME', '2022-08-25 08:06:59.016700', '2022-08-25 08:06:59.016700', 0, 'nutritionix', 39, '1'),
(339, 'Hashbrown', 64, 0, 8, 14, 130, 'ME', '2022-08-25 08:06:59.022816', '2022-08-25 08:06:59.022816', 0, 'nutritionix', 39, '1'),
(340, 'Cream Delight Doughnut', 85, 5, 18, 28, 290, 'CA', '2022-08-25 08:06:59.029043', '2022-08-25 08:06:59.029043', 0, 'nutritionix', 39, '1'),
(341, 'Honey Glazed Doughnut', 57, 4, 10, 26, 210, 'CA', '2022-08-25 08:06:59.035929', '2022-08-25 08:06:59.035929', 0, 'nutritionix', 39, '1'),
(342, 'Spicy Buffalo Chicken on Baguette', 505, 47, 45, 125, 1110, 'ME', '2022-08-25 08:06:59.041891', '2022-08-25 08:06:59.041891', 0, 'nutritionix', 39, '1'),
(343, 'Chicken Fried Steak, Add Gravy', 1, 1, 9, 18, 160, 'ME', '2022-08-25 08:06:59.047532', '2022-08-25 08:06:59.047532', 0, 'nutritionix', 71, '1'),
(344, 'Chicken Fried Steak, Add Mashed Potatoes', 1, 5, 19, 37, 340, 'ME', '2022-08-25 08:06:59.053324', '2022-08-25 08:06:59.053324', 0, 'nutritionix', 71, '1'),
(345, 'Cider Bottle', 1, 0, 0, 21, 200, 'CA', '2022-08-25 08:06:59.058134', '2022-08-25 08:06:59.058134', 0, 'nutritionix', 71, '1'),
(346, 'Fried Pickles', 1, 11, 44, 65, 690, 'ME', '2022-08-25 08:06:59.063090', '2022-08-25 08:06:59.063090', 0, 'nutritionix', 71, '1'),
(347, 'Crispy Buttermilk Chicken Cobb Salad', 1, 58, 60, 37, 910, 'ME', '2022-08-25 08:06:59.068818', '2022-08-25 08:06:59.068818', 0, 'nutritionix', 71, '1'),
(348, 'Honey Wheat Bread (Full Loaf), Add Add Butter', 1, 0, 13, 0, 120, 'CA', '2022-08-25 08:06:59.074580', '2022-08-25 08:06:59.074580', 0, 'nutritionix', 71, '1'),
(349, 'Cider Draft (20 oz)', 1, 0, 0, 0, 330, 'ME', '2022-08-25 08:06:59.081622', '2022-08-25 08:06:59.081622', 0, 'nutritionix', 71, '1'),
(350, 'Plain Idaho Baked Potato', 1, 8, 2, 64, 290, 'ME', '2022-08-25 08:06:59.086761', '2022-08-25 08:06:59.086761', 0, 'nutritionix', 71, '1'),
(351, 'IPA Draft (20 oz)', 1, 5, 0, 2, 340, 'ME', '2022-08-25 08:06:59.092647', '2022-08-25 08:06:59.092647', 0, 'nutritionix', 71, '1'),
(352, 'Strawberries & Cream Shortcake', 1, 7, 37, 74, 640, 'ME', '2022-08-25 08:06:59.098341', '2022-08-25 08:06:59.098341', 0, 'nutritionix', 71, '1'),
(353, 'Lunch, Crispy Buttermilk Chicken Sandwich', 1, 43, 55, 66, 920, 'ME', '2022-08-25 08:06:59.104264', '2022-08-25 08:06:59.104264', 0, 'nutritionix', 71, '1'),
(354, 'Southwest Chicken Salad, Lunch, No Dressing', 1, 25, 17, 13, 330, 'ME', '2022-08-25 08:06:59.110278', '2022-08-25 08:06:59.110278', 0, 'nutritionix', 71, '1'),
(355, 'Grilled Chicken Tenders, Cool Wasabi, Medium Heat', 5, 100, 60, 10, 1020, 'ME', '2022-08-25 08:06:59.116258', '2022-08-25 08:06:59.116258', 0, 'nutritionix', 65, '1'),
(356, 'Side of Natural Cut French Fries with Cajun Seasoning', 1, 11, 38, 109, 820, 'ME', '2022-08-25 08:06:59.122618', '2022-08-25 08:06:59.122618', 0, 'nutritionix', 71, '1'),
(357, 'Grilled Boneless Wings, Sweet BBQ, Medium Heat', 10, 80, 20, 20, 600, 'ME', '2022-08-25 08:06:59.129480', '2022-08-25 08:06:59.129480', 0, 'nutritionix', 65, '1'),
(358, 'Traditional Chicken Wings, Cool Wasabi, Medium Heat', 10, 40, 110, 10, 1190, 'ME', '2022-08-25 08:06:59.137432', '2022-08-25 08:06:59.137432', 0, 'nutritionix', 65, '1'),
(359, 'Side of Natural Cut French Fries with Cheese & Bacon', 1, 46, 87, 111, 1400, 'ME', '2022-08-25 08:06:59.143170', '2022-08-25 08:06:59.143170', 0, 'nutritionix', 71, '1'),
(360, 'Cheeseburger', 1, 45, 46, 47, 830, 'ME', '2022-08-25 08:06:59.151001', '2022-08-25 08:06:59.151001', 0, 'nutritionix', 71, '1'),
(361, 'Boneless Wings, Garlic Parmesan, Medium Heat', 10, 90, 50, 20, 890, 'ME', '2022-08-25 08:06:59.158556', '2022-08-25 08:06:59.158556', 0, 'nutritionix', 65, '1'),
(362, 'Craft Your Own Calzone, 2 or More Fillings with Pepperoni', 1, 47, 36, 124, 1000, 'ME', '2022-08-25 08:06:59.165444', '2022-08-25 08:06:59.165444', 0, 'nutritionix', 12, '1'),
(363, 'Turkey Breast & Swiss, Originals', 1, 44, 14, 67, 530, 'ME', '2022-08-25 08:06:59.171542', '2022-08-25 08:06:59.171542', 0, 'nutritionix', 70, '1'),
(364, 'Lunch California Chicken Sandwich with Substitute a Gluten Free Bun', 1, 58, 33, 91, 900, 'ME', '2022-08-25 08:06:59.179187', '2022-08-25 08:06:59.179187', 0, 'nutritionix', 71, '1'),
(365, 'Craft Your Own Calzone, 1 Filling with Salami', 1, 47, 38, 123, 1000, 'ME', '2022-08-25 08:06:59.185674', '2022-08-25 08:06:59.185674', 0, 'nutritionix', 12, '1'),
(366, 'Whiskey Bleu Burger with Jerk Seasoned Fries', 1, 56, 66, 102, 1230, 'ME', '2022-08-25 08:06:59.192693', '2022-08-25 08:06:59.192693', 0, 'nutritionix', 71, '1'),
(367, 'Lunch Build Your Own Calzone, 2 or More Fillings with Spinach', 1, 26, 18, 64, 510, 'ME', '2022-08-25 08:06:59.198951', '2022-08-25 08:06:59.198951', 0, 'nutritionix', 12, '1'),
(368, 'Six Cheese & Roasted Garlic Flatbread (Limited Locations Only)', 1, 61, 78, 74, 1250, 'ME', '2022-08-25 08:06:59.206663', '2022-08-25 08:06:59.206663', 0, 'nutritionix', 71, '1'),
(369, 'Lunch Build Your Own Calzone, 1 Filling with Mushrooms', 1, 28, 18, 65, 520, 'ME', '2022-08-25 08:06:59.215612', '2022-08-25 08:06:59.215612', 0, 'nutritionix', 12, '1'),
(370, 'Fanta Orange, 16 oz', 1, 0, 0, 39, 140, 'CA', '2022-08-25 08:06:59.222907', '2022-08-25 08:06:59.222907', 0, 'nutritionix', 71, '1'),
(371, 'Baked Lasagna with Meat Sauce', 1, 20, 12, 36, 330, 'ME', '2022-08-25 08:06:59.229885', '2022-08-25 08:06:59.229885', 0, 'nutritionix', 71, '1'),
(372, 'Mushrooms Battered', 1, 5, 21, 33, 330, 'ME', '2022-08-25 08:06:59.236408', '2022-08-25 08:06:59.236408', 0, 'nutritionix', 71, '1'),
(373, 'Banzai Burrito - Fish Charbroiled - Brown Rice - Black Beans', 1, 34, 14, 77, 550, 'ME', '2022-08-25 08:06:59.242109', '2022-08-25 08:06:59.242109', 0, 'nutritionix', 71, '1'),
(374, 'Strawberry Watermelon Julius Original, Large', 1, 1, 0, 118, 480, 'ME', '2022-08-25 08:06:59.249069', '2022-08-25 08:06:59.249069', 0, 'nutritionix', 71, '1'),
(375, 'Mini Sandwich Bar 2Oz Pork, Ketchup, Mayonnaise, BBQ Sauce, Mixed Cheese, Lettuce, Tomatoes, Buns', 1, 18, 25, 28, 420, 'ME', '2022-08-25 08:06:59.256045', '2022-08-25 08:06:59.256045', 0, 'nutritionix', 71, '1'),
(376, 'Marinated Chicken Salad', 1, 28, 3, 21, 240, 'ME', '2022-08-25 08:06:59.263807', '2022-08-25 08:06:59.263807', 0, 'nutritionix', 71, '1'),
(377, 'V.I.B., Quaker Oatmeal with Blueberries (Instant)', 1, 12, 11, 77, 440, 'ME', '2022-08-25 08:06:59.270869', '2022-08-25 08:06:59.270869', 0, 'nutritionix', 71, '1'),
(378, 'Orange Julius (OJ Only), Medium', 1, 1, 0, 68, 280, 'CA', '2022-08-25 08:06:59.279222', '2022-08-25 08:06:59.279222', 0, 'nutritionix', 71, '1'),
(379, 'Baked Breaded or Battered Fish', 0, 228.22, 108.02, 100.64, 2343, 'ME', '2022-08-25 08:06:59.285592', '2022-08-25 08:06:59.285592', 1172, 'https://www.fatsecret.com/calories-nutrition/generic/fish-breaded-or-battered-baked', 71, 'Generic'),
(380, 'Fried Floured or Breaded Fish', 0, 207.3, 120.81, 89.63, 2314, 'ME', '2022-08-25 08:06:59.291322', '2022-08-25 08:06:59.291322', 1086, 'https://www.fatsecret.com/calories-nutrition/generic/fish-floured-or-breaded-fried', 71, 'Generic'),
(381, 'Barracuda', 0, 227.81, 117.21, 3.99, 2051, 'ME', '2022-08-25 08:06:59.296318', '2022-08-25 08:06:59.296318', 972, 'https://www.fatsecret.com/calories-nutrition/generic/barracuda-cooked', 71, 'Generic'),
(382, 'Baked or Broiled Carp', 0, 156.37, 80.12, 4.42, 1402, 'ME', '2022-08-25 08:06:59.301209', '2022-08-25 08:06:59.301209', 691, 'https://www.fatsecret.com/calories-nutrition/generic/carp-baked-or-broiled', 71, 'Generic'),
(383, 'Fried Floured or Breaded Catfish', 0, 190.89, 157.86, 92.78, 2607, 'ME', '2022-08-25 08:06:59.307811', '2022-08-25 08:06:59.307811', 1086, 'https://www.fatsecret.com/calories-nutrition/generic/catfish-floured-or-breaded-fried', 71, 'Generic'),
(384, 'Fried Battered Catfish', 0, 19.72, 22.7, 8.92, 323, 'BA', '2022-08-25 08:06:59.313952', '2022-08-25 08:06:59.313952', 133, 'https://www.fatsecret.com/calories-nutrition/generic/catfish-battered-fried', 71, 'Generic'),
(385, 'Baked or Broiled Cod', 0, 203.22, 34.89, 3.99, 1186, 'ME', '2022-08-25 08:06:59.319432', '2022-08-25 08:06:59.319432', 972, 'https://www.fatsecret.com/calories-nutrition/generic/cod-baked-or-broiled', 71, 'Generic'),
(386, 'Baked or Broiled Haddock', 0, 214.83, 36.1, 4.67, 1245, 'ME', '2022-08-25 08:06:59.326634', '2022-08-25 08:06:59.326634', 973, 'https://www.fatsecret.com/calories-nutrition/generic/haddock-baked-or-broiled', 71, 'Generic'),
(387, 'Cooked Mackerel', 0, 219.4, 134.11, 3.99, 2159, 'ME', '2022-08-25 08:06:59.333102', '2022-08-25 08:06:59.333102', 973, 'https://www.fatsecret.com/calories-nutrition/generic/mackerel-cooked', 71, 'Generic'),
(388, 'Cooked Mullet', 0, 175.28, 111.53, 99.56, 2149, 'ME', '2022-08-25 08:06:59.338577', '2022-08-25 08:06:59.338577', 787, 'https://www.fatsecret.com/calories-nutrition/generic/mullet-cooked', 71, 'Generic'),
(389, 'Fried Floured or Breaded Mullet', 0, 175.28, 111.53, 99.56, 2149, 'ME', '2022-08-25 08:06:59.344307', '2022-08-25 08:06:59.344307', 787, 'https://www.fatsecret.com/calories-nutrition/generic/mullet-floured-or-breaded-fried', 71, 'Generic'),
(390, 'Baked or Broiled Ocean Perch', 0, 211.39, 46.26, 3.99, 1322, 'ME', '2022-08-25 08:06:59.349202', '2022-08-25 08:06:59.349202', 972, 'https://www.fatsecret.com/calories-nutrition/generic/ocean-perch-baked-or-broiled', 71, 'Generic'),
(391, 'Baked Breaded or Battered Perch', 0, 246.52, 65.81, 99.56, 2043, 'ME', '2022-08-25 08:06:59.353899', '2022-08-25 08:06:59.353899', 1129, 'https://www.fatsecret.com/calories-nutrition/generic/perch-breaded-or-battered-baked', 71, 'Generic'),
(392, 'Fried Battered Perch', 0, 24.94, 10.96, 9.23, 241, 'BA', '2022-08-25 08:06:59.359914', '2022-08-25 08:06:59.359914', 133, 'https://www.fatsecret.com/calories-nutrition/generic/perch-battered-fried', 71, 'Generic'),
(393, 'Cooked Pompano', 0, 159.11, 112.85, 4.51, 1701, 'ME', '2022-08-25 08:06:59.364847', '2022-08-25 08:06:59.364847', 673, 'https://www.fatsecret.com/calories-nutrition/generic/pompano-cooked', 71, 'Generic'),
(394, 'Fried Floured or Breaded Pompano', 0, 168.59, 155.13, 99.56, 2503, 'ME', '2022-08-25 08:06:59.369619', '2022-08-25 08:06:59.369619', 787, 'https://www.fatsecret.com/calories-nutrition/generic/pompano-floured-or-breaded-fried', 71, 'Generic'),
(395, 'Fried Floured or Breaded Salmon', 0, 213, 111.58, 94.99, 2283, 'ME', '2022-08-25 08:06:59.375514', '2022-08-25 08:06:59.375514', 959, 'https://www.fatsecret.com/calories-nutrition/generic/salmon-floured-or-breaded-fried', 71, 'Generic'),
(396, 'Fried Battered Salmon', 0, 24.71, 18, 8.92, 302, 'BA', '2022-08-25 08:06:59.381289', '2022-08-25 08:06:59.381289', 133, 'https://www.fatsecret.com/calories-nutrition/generic/salmon-battered-fried', 71, 'Generic'),
(397, 'Baked or Broiled Sea Bass', 0, 187.23, 49.17, 4.14, 1250, 'ME', '2022-08-25 08:06:59.387053', '2022-08-25 08:06:59.387053', 845, 'https://www.fatsecret.com/calories-nutrition/generic/sea-bass-baked-or-broiled', 71, 'Generic'),
(398, 'Fried Floured or Breaded Smelt', 0, 162.05, 101.06, 99.56, 1991, 'ME', '2022-08-25 08:06:59.393132', '2022-08-25 08:06:59.393132', 787, 'https://www.fatsecret.com/calories-nutrition/generic/smelt-floured-or-breaded-fried', 71, 'Generic'),
(399, 'Cooked Swordfish', 0, 201.09, 69.54, 4.14, 1495, 'ME', '2022-08-25 08:06:59.399658', '2022-08-25 08:06:59.399658', 845, 'https://www.fatsecret.com/calories-nutrition/generic/swordfish-cooked', 71, 'Generic'),
(400, 'Fried Battered Trout', 0, 26.56, 17.66, 9.23, 309, 'BA', '2022-08-25 08:06:59.405610', '2022-08-25 08:06:59.405610', 133, 'https://www.fatsecret.com/calories-nutrition/generic/trout-battered-fried', 71, 'Generic'),
(401, 'Cooked Tuna', 0, 265.33, 38.49, 3.99, 1487, 'ME', '2022-08-25 08:06:59.412088', '2022-08-25 08:06:59.412088', 972, 'https://www.fatsecret.com/calories-nutrition/generic/tuna-fresh-cooked', 71, 'Generic'),
(402, 'Whiting', 0, 207.79, 42.57, 3.99, 1283, 'ME', '2022-08-25 08:06:59.418940', '2022-08-25 08:06:59.418940', 972, 'https://www.fatsecret.com/calories-nutrition/generic/whiting-cooked', 71, 'Generic'),
(403, 'Steamed Octopus', 0, 29.82, 2.08, 4.4, 164, 'BA', '2022-08-25 08:06:59.425773', '2022-08-25 08:06:59.425773', 101, 'https://www.fatsecret.com/calories-nutrition/generic/octopus-steamed', 71, 'Generic'),
(404, 'Broiled Baked Squid', 0, 132.53, 32.55, 26.69, 967, 'ME', '2022-08-25 08:06:59.434096', '2022-08-25 08:06:59.434096', 706, 'https://www.fatsecret.com/calories-nutrition/generic/squid-baked-broiled', 71, 'Generic'),
(405, 'Pickled Squid', 0, 176.65, 15.62, 35.02, 1100, 'ME', '2022-08-25 08:06:59.438871', '2022-08-25 08:06:59.438871', 1183, 'https://www.fatsecret.com/calories-nutrition/generic/squid-pickled', 71, 'Generic'),
(406, 'Fried Floured or Breaded Clams', 0, 161.34, 87.19, 120.19, 1954, 'ME', '2022-08-25 08:06:59.444961', '2022-08-25 08:06:59.444961', 1086, 'https://www.fatsecret.com/calories-nutrition/generic/clams-floured-or-breaded-fried', 71, 'Generic'),
(407, 'Fried Floured or Breaded Crayfish', 0, 153.33, 104.56, 99.24, 1992, 'ME', '2022-08-25 08:06:59.452628', '2022-08-25 08:06:59.452628', 901, 'https://www.fatsecret.com/calories-nutrition/generic/crayfish-floured-or-breaded-fried', 71, 'Generic'),
(408, 'Lobster', 0, 20.5, 0.59, 1.28, 98, 'BA', '2022-08-25 08:06:59.458593', '2022-08-25 08:06:59.458593', 101, 'https://www.fatsecret.com/calories-nutrition/generic/lobster-cooked', 71, 'Generic'),
(409, 'Canned Lobster', 0, 20.5, 0.59, 1.28, 98, 'BA', '2022-08-25 08:06:59.464106', '2022-08-25 08:06:59.464106', 101, 'https://www.fatsecret.com/calories-nutrition/generic/lobster-canned', 71, 'Generic'),
(410, 'Cooked Mussels', 0, 66.81, 40, 21.38, 727, 'ME', '2022-08-25 08:06:59.470532', '2022-08-25 08:06:59.470532', 485, 'https://www.fatsecret.com/calories-nutrition/generic/mussels-cooked', 71, 'Generic'),
(411, 'Fried Floured or Breaded Oysters', 0, 96.8, 136.68, 129.94, 2151, 'ME', '2022-08-25 08:06:59.479120', '2022-08-25 08:06:59.479120', 1086, 'https://www.fatsecret.com/calories-nutrition/generic/oysters-floured-or-breaded-fried', 71, 'Generic'),
(412, 'Smoked Oysters', 0, 11.45, 3.99, 6.35, 110, 'BA', '2022-08-25 08:06:59.485766', '2022-08-25 08:06:59.485766', 101, 'https://www.fatsecret.com/calories-nutrition/generic/oysters-smoked', 71, 'Generic'),
(413, 'Steamed or Boiled Scallops', 0, 152.32, 29.09, 21.94, 998, 'ME', '2022-08-25 08:06:59.491910', '2022-08-25 08:06:59.491910', 941, 'https://www.fatsecret.com/calories-nutrition/generic/scallops-steamed-or-boiled', 71, 'Generic'),
(414, 'Baked or Broiled Shrimp', 0, 230.36, 47.35, 11.01, 1450, 'ME', '2022-08-25 08:06:59.498176', '2022-08-25 08:06:59.498176', 941, 'https://www.fatsecret.com/calories-nutrition/generic/shrimp-baked-or-broiled', 71, 'Generic'),
(415, 'Fried or Battered Breaded Floured Shrimp', 0, 186.9, 110.7, 106.27, 2212, 'ME', '2022-08-25 08:06:59.504057', '2022-08-25 08:06:59.504057', 903, 'https://www.fatsecret.com/calories-nutrition/generic/shrimp-floured-breaded-or-battered-fried', 71, 'Generic'),
(416, 'Chili Con Carne without Beans', 0, 106.72, 67.78, 67.3, 1286, 'ME', '2022-08-25 08:06:59.510403', '2022-08-25 08:06:59.510403', 1202, 'https://www.fatsecret.com/calories-nutrition/generic/chili-con-carne-without-beans', 71, 'Generic'),
(417, 'Creamed Chipped or Dried Beef', 0, 59.83, 61.25, 59.28, 1025, 'ME', '2022-08-25 08:06:59.517428', '2022-08-25 08:06:59.517428', 788, 'https://www.fatsecret.com/calories-nutrition/generic/creamed-chipped-or-dried-beef', 71, 'Generic'),
(418, 'Beef Curry', 0, 115.69, 128.26, 57.4, 1821, 'ME', '2022-08-25 08:06:59.525721', '2022-08-25 08:06:59.525721', 990, 'https://www.fatsecret.com/calories-nutrition/generic/beef-curry', 71, 'Generic'),
(419, 'Puerto Rican Style Beef Stew, Meat with Gravy', 0, 159.4, 126.36, 12.35, 1858, 'ME', '2022-08-25 08:06:59.533767', '2022-08-25 08:06:59.533767', 1112, 'https://www.fatsecret.com/calories-nutrition/generic/puerto-rican-style-beef-stew-meat-with-gravy-(potatoes-reported-separately)', 71, 'Generic'),
(420, 'Sausage Gravy', 0, 45.55, 72.3, 46.08, 1022, 'ME', '2022-08-25 08:06:59.539609', '2022-08-25 08:06:59.539609', 655, 'https://www.fatsecret.com/calories-nutrition/generic/sausage-gravy', 71, 'Generic'),
(421, 'Lamb or Mutton Goulash', 0, 203.56, 99.13, 52.37, 1948, 'ME', '2022-08-25 08:06:59.545654', '2022-08-25 08:06:59.545654', 1559, 'https://www.fatsecret.com/calories-nutrition/generic/lamb-or-mutton-goulash', 71, 'Generic'),
(422, 'Lamb Curry', 0, 95.05, 46.57, 12.48, 866, 'ME', '2022-08-25 08:06:59.551601', '2022-08-25 08:06:59.551601', 795, 'https://www.fatsecret.com/calories-nutrition/generic/lamb-curry', 71, 'Generic'),
(423, 'Chicken or Turkey with (Mushroom) Soup (Mixture)', 0, 128.43, 50.3, 23.34, 1085, 'ME', '2022-08-25 08:06:59.557708', '2022-08-25 08:06:59.557708', 786, 'https://www.fatsecret.com/calories-nutrition/generic/chicken-or-turkey-with-(mushroom)-soup-(mixture)', 71, 'Generic'),
(424, 'Chicken Wing with Hot Pepper Sauce', 0, 244.1, 204.12, 2.07, 2878, 'ME', '2022-08-25 08:06:59.563588', '2022-08-25 08:06:59.563588', 941, 'https://www.fatsecret.com/calories-nutrition/generic/chicken-wing-with-hot-pepper-sauce', 71, 'Generic'),
(425, 'Chicken Curry', 0, 111.58, 64.89, 46.11, 1206, 'ME', '2022-08-25 08:06:59.569475', '2022-08-25 08:06:59.569475', 973, 'https://www.fatsecret.com/calories-nutrition/generic/chicken-curry', 71, 'Generic'),
(426, 'Chicken or Turkey Cordon Bleu', 0, 76.53, 50.07, 19.35, 869, 'ME', '2022-08-25 08:06:59.575727', '2022-08-25 08:06:59.575727', 395, 'https://www.fatsecret.com/calories-nutrition/generic/chicken-or-turkey-cordon-bleu', 71, 'Generic'),
(427, 'Fish Timbale or Mousse', 0, 110.23, 127.84, 16.81, 1663, 'ME', '2022-08-25 08:06:59.581995', '2022-08-25 08:06:59.581995', 885, 'https://www.fatsecret.com/calories-nutrition/generic/fish-timbale-or-mousse', 71, 'Generic'),
(428, 'Lobster with Butter Sauce (Mixture)', 0, 30.09, 35.37, 1.88, 446, 'BA', '2022-08-25 08:06:59.588286', '2022-08-25 08:06:59.588286', 188, 'https://www.fatsecret.com/calories-nutrition/generic/lobster-with-butter-sauce-(mixture)', 71, 'Generic'),
(429, 'Seafood Newburg', 0, 112.85, 189.73, 40.25, 2315, 'ME', '2022-08-25 08:06:59.594910', '2022-08-25 08:06:59.594910', 930, 'https://www.fatsecret.com/calories-nutrition/generic/seafood-newburg', 71, 'Generic'),
(430, 'Sweet and Sour Shrimp', 0, 11.43, 29.34, 43.77, 469, 'BA', '2022-08-25 08:06:59.601187', '2022-08-25 08:06:59.601187', 174, 'https://www.fatsecret.com/calories-nutrition/generic/sweet-and-sour-shrimp', 71, 'Generic'),
(431, 'Lobster Sauce (Broth-Based)', 0, 50.28, 52.71, 35.67, 862, 'ME', '2022-08-25 08:06:59.609743', '2022-08-25 08:06:59.609743', 507, 'https://www.fatsecret.com/calories-nutrition/generic/lobster-sauce-(broth-based)', 71, 'Generic'),
(432, 'Oyster Sauce (White Sauce-Based)', 0, 27.6, 40.75, 38.94, 637, 'ME', '2022-08-25 08:06:59.617251', '2022-08-25 08:06:59.617251', 502, 'https://www.fatsecret.com/calories-nutrition/generic/oyster-sauce-(white-sauce-based)', 71, 'Generic'),
(433, 'Korean Style Fish Moochim Dried Fish with Soy Sauce', 0, 27.81, 11.59, 8.3, 252, 'BA', '2022-08-25 08:06:59.624848', '2022-08-25 08:06:59.624848', 74, 'https://www.fatsecret.com/calories-nutrition/generic/fish-moochim-(korean-style)-dried-fish-with-soy-sauce', 71, 'Generic'),
(434, 'Mussels with Tomato-Based Sauce (Mixture)', 0, 15.65, 2.9, 10.8, 140, 'BA', '2022-08-25 08:06:59.632409', '2022-08-25 08:06:59.632409', 125, 'https://www.fatsecret.com/calories-nutrition/generic/mussels-with-tomato-based-sauce-(mixture)', 71, 'Generic'),
(435, 'Meat with Tomato-Based Sauce (Mixture)', 0, 39.43, 21.3, 18.79, 435, 'BA', '2022-08-25 08:06:59.638201', '2022-08-25 08:06:59.638201', 298, 'https://www.fatsecret.com/calories-nutrition/generic/meat-with-tomato-based-sauce-(mixture)', 71, 'Generic'),
(436, 'Meat with Gravy', 0, 14.99, 3.85, 2.59, 109, 'BA', '2022-08-25 08:06:59.643572', '2022-08-25 08:06:59.643572', 90, 'https://www.fatsecret.com/calories-nutrition/generic/meat-with-gravy', 71, 'Generic'),
(437, 'Beef Stew with Potatoes in Tomato-Based Sauce', 0, 244.48, 91.19, 271.06, 2909, 'ME', '2022-08-25 08:06:59.649760', '2022-08-25 08:06:59.649760', 2797, 'https://www.fatsecret.com/calories-nutrition/generic/beef-stew-with-potatoes-tomato-based-sauce-(mixture)', 71, 'Generic'),
(438, 'Beef Goulash with Potatoes', 0, 251.06, 115.19, 178.58, 2772, 'ME', '2022-08-25 08:06:59.663741', '2022-08-25 08:06:59.663741', 2272, 'https://www.fatsecret.com/calories-nutrition/generic/beef-goulash-with-potatoes', 71, 'Generic'),
(439, 'Beef Stew with Potatoes and Gravy', 0, 240.58, 90.78, 201.49, 2624, 'ME', '2022-08-25 08:06:59.671468', '2022-08-25 08:06:59.671468', 2624, 'https://www.fatsecret.com/calories-nutrition/generic/beef-stew-with-potatoes-gravy', 71, 'Generic'),
(440, 'Porcupine Balls with (Mushroom) Soup (Mixture)', 0, 110.1, 85.71, 113.92, 1697, 'ME', '2022-08-25 08:06:59.680973', '2022-08-25 08:06:59.680973', 1061, 'https://www.fatsecret.com/calories-nutrition/generic/porcupine-balls-with-(mushroom)-soup-(mixture)', 71, 'Generic'),
(441, 'Beef and Rice with Soy-Based Sauce (Mixture)', 0, 113.55, 86.04, 123.98, 1748, 'ME', '2022-08-25 08:06:59.686602', '2022-08-25 08:06:59.686602', 1355, 'https://www.fatsecret.com/calories-nutrition/generic/beef-and-rice-with-soy-based-sauce-(mixture)', 71, 'Generic'),
(442, 'Beef Wellington', 0, 445.07, 397.63, 208.51, 6290, 'ME', '2022-08-25 08:06:59.694537', '2022-08-25 08:06:59.694537', 2062, 'https://www.fatsecret.com/calories-nutrition/generic/beef-wellington', 71, 'Generic'),
(443, 'Creamed Dried Beef On Toast', 0, 12.55, 11.45, 24.32, 250, 'BA', '2022-08-25 08:06:59.701117', '2022-08-25 08:06:59.701117', 160, 'https://www.fatsecret.com/calories-nutrition/generic/creamed-dried-beef-on-toast', 71, 'Generic'),
(444, 'Puerto Rican Style Stuffed Pot Roast (Larded Meat) (Carne Mechada Con Papas Boliche)', 0, 643.55, 648.07, 207.96, 9387, 'ME', '2022-08-25 08:06:59.706145', '2022-08-25 08:06:59.706145', 2659, 'https://www.fatsecret.com/calories-nutrition/generic/puerto-rican-style-stuffed-pot-roast-(larded-meat)-(carne-mechada-con-papas-boliche)', 71, 'Generic'),
(445, 'Ham Croquette', 0, 99.78, 93.67, 85.5, 1601, 'ME', '2022-08-25 08:06:59.712441', '2022-08-25 08:06:59.712441', 664, 'https://www.fatsecret.com/calories-nutrition/generic/ham-croquette', 71, 'Generic'),
(446, 'Meat Loaf Made with Venison/Deer', 0, 192.2, 68.13, 62.85, 1678, 'ME', '2022-08-25 08:06:59.719834', '2022-08-25 08:06:59.719834', 1017, 'https://www.fatsecret.com/calories-nutrition/generic/meat-loaf-made-with-venison-deer', 71, 'Generic'),
(447, 'Chicken or Turkey and Rice with Cream Sauce (Mixture)', 0, 121.69, 83.06, 179.64, 1973, 'ME', '2022-08-25 08:06:59.726655', '2022-08-25 08:06:59.726655', 1380, 'https://www.fatsecret.com/calories-nutrition/generic/chicken-or-turkey-and-rice-with-cream-sauce-(mixture)', 71, 'Generic'),
(448, 'Crab Cake', 0, 122.67, 44.03, 3.7, 927, 'ME', '2022-08-25 08:06:59.732924', '2022-08-25 08:06:59.732924', 552, 'https://www.fatsecret.com/calories-nutrition/generic/crab-cake', 71, 'Generic'),
(449, 'Fish Cake or Patty', 0, 122.6, 94.22, 111.19, 1805, 'ME', '2022-08-25 08:06:59.740424', '2022-08-25 08:06:59.740424', 898, 'https://www.fatsecret.com/calories-nutrition/generic/fish-cake-or-patty', 71, 'Generic'),
(450, 'Gefilte Fish', 0, 1079.53, 234.15, 63.47, 6963, 'ME', '2022-08-25 08:06:59.746810', '2022-08-25 08:06:59.746810', 6162, 'https://www.fatsecret.com/calories-nutrition/generic/gefilte-fish', 71, 'Generic'),
(451, 'Salmon Cake or Patty', 0, 130.46, 124.14, 111.21, 2107, 'ME', '2022-08-25 08:06:59.752455', '2022-08-25 08:06:59.752455', 958, 'https://www.fatsecret.com/calories-nutrition/generic/salmon-cake-or-patty', 71, 'Generic'),
(452, 'Salmon Loaf', 0, 154.06, 103.62, 84.29, 1923, 'ME', '2022-08-25 08:06:59.758021', '2022-08-25 08:06:59.758021', 981, 'https://www.fatsecret.com/calories-nutrition/generic/salmon-loaf', 71, 'Generic'),
(453, 'Shrimp and Noodles with Cheese Sauce (Mixture)', 0, 154.6, 80.1, 131.14, 1896, 'ME', '2022-08-25 08:06:59.764216', '2022-08-25 08:06:59.764216', 1215, 'https://www.fatsecret.com/calories-nutrition/generic/shrimp-and-noodles-with-cheese-sauce-(mixture)', 71, 'Generic'),
(454, 'Clams Casino', 0, 35.93, 22, 43.19, 514, 'ME', '2022-08-25 08:06:59.770416', '2022-08-25 08:06:59.770416', 451, 'https://www.fatsecret.com/calories-nutrition/generic/clams-casino', 71, 'Generic'),
(455, 'Mackerel Cake or Patty', 0, 153.25, 140.65, 122.22, 2397, 'ME', '2022-08-25 08:06:59.776872', '2022-08-25 08:06:59.776872', 955, 'https://www.fatsecret.com/calories-nutrition/generic/mackerel-cake-or-patty', 71, 'Generic'),
(456, 'Shrimp with Crab Stuffing', 0, 365.04, 174.56, 110.52, 3564, 'ME', '2022-08-25 08:06:59.783223', '2022-08-25 08:06:59.783223', 1809, 'https://www.fatsecret.com/calories-nutrition/generic/shrimp-with-crab-stuffing', 71, 'Generic'),
(457, 'Fish and Rice with Tomato-Based Sauce', 0, 66.31, 13.84, 136.98, 940, 'ME', '2022-08-25 08:06:59.789504', '2022-08-25 08:06:59.789504', 855, 'https://www.fatsecret.com/calories-nutrition/generic/fish-and-rice-with-tomato-based-sauce', 71, 'Generic'),
(458, 'Shellfish Mixture and Noodles in Tomato-Based Sauce (Mixture)', 0, 47.79, 21.45, 112.06, 839, 'ME', '2022-08-25 08:06:59.796566', '2022-08-25 08:06:59.796566', 742, 'https://www.fatsecret.com/calories-nutrition/generic/shellfish-mixture-and-noodles-tomato-based-sauce-(mixture)', 71, 'Generic'),
(459, 'Mexican Style with Potatoes Ground Beef and Pork Seasoned Stewed (Picadillo De Carne De Rez Y Puerco Con Papas)', 0, 201.49, 131.55, 66.32, 2300, 'ME', '2022-08-25 08:06:59.803900', '2022-08-25 08:06:59.803900', 1575, 'https://www.fatsecret.com/calories-nutrition/generic/stewed-seasoned-ground-beef-and-pork-with-potatoes-mexican-style-(picadillo-de-carne-de-rez-y-puerco-con-papas)', 71, 'Generic'),
(460, 'Beef, Potatoes and Vegetables (Mixture)', 0, 101.21, 22.29, 80.68, 942, 'ME', '2022-08-25 08:06:59.812842', '2022-08-25 08:06:59.812842', 841, 'https://www.fatsecret.com/calories-nutrition/generic/beef-potatoes-and-vegetables-(excluding-carrots-broccoli-and-dark-green-leafy)-no-sauce-(mixture)', 71, 'Generic'),
(461, 'Corned Beef, Potatoes and Vegetables (Including Carrots, Broccoli, and/or Dark-Green Leafy, Mixture)', 0, 19.72, 16.73, 43.01, 401, 'BA', '2022-08-25 08:06:59.819201', '2022-08-25 08:06:59.819201', 393, 'https://www.fatsecret.com/calories-nutrition/generic/corned-beef-potatoes-and-vegetables-(including-carrots-broccoli-and-or-dark-green-leafy)-no-sauce-(mixture)', 71, 'Generic'),
(462, 'Beef Stew with Potatoes and Vegetables in Gravy (Including Carrots, Broccoli, and/or Dark-Green Leafy)', 0, 107.02, 37, 151.1, 1366, 'ME', '2022-08-25 08:06:59.826134', '2022-08-25 08:06:59.826134', 1729, 'https://www.fatsecret.com/calories-nutrition/generic/beef-stew-with-potatoes-and-vegetables-(including-carrots-broccoli-and-or-dark-green-leafy)-gravy', 71, 'Generic'),
(463, 'Beef, Noodles and Vegetables (Including Carrots, Broccoli, and/or Dark-Green Leafy, Mixture)', 0, 110.15, 28.65, 112.18, 1164, 'ME', '2022-08-25 08:06:59.832759', '2022-08-25 08:06:59.832759', 924, 'https://www.fatsecret.com/calories-nutrition/generic/beef-noodles-and-vegetables-(including-carrots-broccoli-and-or-dark-green-leafy)-no-sauce-(mixture)', 71, 'Generic'),
(464, 'Beef, Noodles and Vegetables in Soy-Based Sauce (Mixture)', 0, 39.91, 24.47, 90.41, 740, 'ME', '2022-08-25 08:06:59.837940', '2022-08-25 08:06:59.837940', 705, 'https://www.fatsecret.com/calories-nutrition/generic/beef-noodles-and-vegetables-(excluding-carrots-broccoli-and-dark-green-leafy)-soy-based-sauce-(mixture)', 71, 'Generic'),
(465, 'Beef, Rice and Vegetables Soup (Mixture)', 0, 117.81, 86.75, 174.38, 1978, 'ME', '2022-08-25 08:06:59.844593', '2022-08-25 08:06:59.844593', 1465, 'https://www.fatsecret.com/calories-nutrition/generic/beef-rice-and-vegetables-(excluding-carrots-broccoli-and-dark-green-leafy)-(mushroom)-soup-(mixture)', 71, 'Generic'),
(466, 'Beef, Rice and Vegetables in Soy-Based Sauce (Including Carrots, Broccoli, and/or Dark-Green Leafy, Mixture)', 0, 100.35, 44.33, 157.83, 1429, 'ME', '2022-08-25 08:06:59.851259', '2022-08-25 08:06:59.851259', 1624, 'https://www.fatsecret.com/calories-nutrition/generic/beef-rice-and-vegetables-(including-carrots-broccoli-and-or-dark-green-leafy)-soy-based-sauce-(mixture)', 71, 'Generic'),
(467, 'Beef Pot Pie', 0, 63.68, 107.55, 136.91, 1775, 'ME', '2022-08-25 08:06:59.857827', '2022-08-25 08:06:59.857827', 789, 'https://www.fatsecret.com/calories-nutrition/generic/beef-pot-pie', 71, 'Generic'),
(468, 'Puerto Rican Style Stuffed Green Pepper (Pimiento Relleno)', 0, 81.37, 71.22, 154.39, 1574, 'ME', '2022-08-25 08:06:59.864211', '2022-08-25 08:06:59.864211', 948, 'https://www.fatsecret.com/calories-nutrition/generic/stuffed-green-pepper-puerto-rican-style-(pimiento-relleno)', 71, 'Generic'),
(469, 'Pork, Potatoes and Vegetables (Mixture)', 0, 28.28, 14.17, 41.24, 406, 'BA', '2022-08-25 08:06:59.870541', '2022-08-25 08:06:59.870541', 347, 'https://www.fatsecret.com/calories-nutrition/generic/pork-potatoes-and-vegetables-(excluding-carrots-broccoli-and-dark-green-leafy)-no-sauce-(mixture)', 71, 'Generic'),
(470, 'Pork Chow Mein or Chop Suey with Noodles', 0, 96.62, 118.77, 135.11, 1963, 'ME', '2022-08-25 08:06:59.877208', '2022-08-25 08:06:59.877208', 967, 'https://www.fatsecret.com/calories-nutrition/generic/pork-chow-mein-or-chop-suey-with-noodles', 71, 'Generic'),
(471, 'Pork, Rice and Vegetables in Soy-Based Sauce (Including Carrots, Broccoli, and/or Dark-Green Leafy, Mixture)', 0, 182.73, 73.29, 213.42, 2282, 'ME', '2022-08-25 08:06:59.883907', '2022-08-25 08:06:59.883907', 2019, 'https://www.fatsecret.com/calories-nutrition/generic/pork-rice-and-vegetables-(including-carrots-broccoli-and-or-dark-green-leafy)-soy-based-sauce-(mixture)', 71, 'Generic'),
(472, 'Shepherd\'s Pie with Lamb', 0, 114.77, 81.72, 205.71, 2006, 'ME', '2022-08-25 08:06:59.890417', '2022-08-25 08:06:59.890417', 1644, 'https://www.fatsecret.com/calories-nutrition/generic/shepherds-pie-with-lamb', 71, 'Generic'),
(473, 'Lamb or Mutton Stew with Potatoes and Vegetables in Gravy (Including Carrots, Broccoli, and/or Dark-Green Leafy)', 0, 36.84, 9.52, 48.83, 430, 'BA', '2022-08-25 08:06:59.896862', '2022-08-25 08:06:59.896862', 418, 'https://www.fatsecret.com/calories-nutrition/generic/lamb-or-mutton-stew-with-potatoes-and-vegetables-(including-carrots-broccoli-and-or-dark-green-leafy)-gravy', 71, 'Generic'),
(474, 'Stuffed Grape Leaves with Lamb and Rice', 0, 118.08, 305.13, 172.65, 3830, 'ME', '2022-08-25 08:06:59.903264', '2022-08-25 08:06:59.903264', 1440, 'https://www.fatsecret.com/calories-nutrition/generic/stuffed-grape-leaves-with-lamb-and-rice', 71, 'Generic'),
(475, 'Rabbit Stew with Potatoes and Vegetables', 0, 303.88, 79.14, 198.07, 2755, 'ME', '2022-08-25 08:06:59.909527', '2022-08-25 08:06:59.909527', 4372, 'https://www.fatsecret.com/calories-nutrition/generic/rabbit-stew-with-potatoes-and-vegetables', 71, 'Generic'),
(476, 'Chicken or Turkey Stew with Potatoes and Vegetables in Tomato- Based Sauce', 0, 115.74, 30.59, 160.95, 1360, 'ME', '2022-08-25 08:06:59.915522', '2022-08-25 08:06:59.915522', 1700, 'https://www.fatsecret.com/calories-nutrition/generic/chicken-or-turkey-stew-with-potatoes-and-vegetables-(excluding-carrots-broccoli-and-dark-green-leafy)-tomato--based-sauce', 71, 'Generic'),
(477, 'Chicken or Turkey, Rice and Vegetables in Tomato-Based Sauce (Mixture)', 0, 193.83, 125.22, 302.84, 3153, 'ME', '2022-08-25 08:06:59.923495', '2022-08-25 08:06:59.923495', 2220, 'https://www.fatsecret.com/calories-nutrition/generic/chicken-or-turkey-rice-and-vegetables-(excluding-carrots-broccoli-and-dark-green-leafy)-tomato-based-sauce-(mixture)', 71, 'Generic'),
(478, 'Chicken or Turkey Pot Pie', 0, 76.26, 105.38, 139.52, 1826, 'ME', '2022-08-25 08:06:59.931618', '2022-08-25 08:06:59.931618', 849, 'https://www.fatsecret.com/calories-nutrition/generic/chicken-or-turkey-pot-pie', 71, 'Generic'),
(479, 'Chicken or Turkey, Stuffing and Vegetables in Gravy (Including Carrots, Broccoli and/or Dark-Green Leafy, Mixture)', 0, 43.13, 25.08, 55.76, 625, 'ME', '2022-08-25 08:06:59.938086', '2022-08-25 08:06:59.938086', 431, 'https://www.fatsecret.com/calories-nutrition/generic/chicken-or-turkey-stuffing-and-vegetables-(including-carrots-broccoli-and-or-dark-green-leafy)-gravy-(mixture)', 71, 'Generic'),
(480, 'Puerto Rican Style Stewed Codfish (Bacalao Guisado)', 0, 91.19, 46.29, 104.59, 1182, 'ME', '2022-08-25 08:06:59.943419', '2022-08-25 08:06:59.943419', 993, 'https://www.fatsecret.com/calories-nutrition/generic/stewed-codfish-puerto-rican-style-(bacalao-guisado)', 71, 'Generic'),
(481, 'Puerto Rican Style Biscayne Codfish (Bacalao A La Vizcaina)', 0, 129.16, 166.34, 197.8, 2754, 'ME', '2022-08-25 08:06:59.948984', '2022-08-25 08:06:59.948984', 1398, 'https://www.fatsecret.com/calories-nutrition/generic/biscayne-codfish-puerto-rican-style-(bacalao-a-la-vizcaina)', 71, 'Generic'),
(482, 'Stew', 0, 104.3, 21.27, 132.89, 1140, 'ME', '2022-08-25 08:06:59.954959', '2022-08-25 08:06:59.954959', 1702, 'https://www.fatsecret.com/calories-nutrition/generic/stew', 71, 'Generic'),
(483, 'Beef Shish Kabob with Vegetables', 0, 33.11, 7.28, 11.79, 248, 'BA', '2022-08-25 08:06:59.960135', '2022-08-25 08:06:59.960135', 285, 'https://www.fatsecret.com/calories-nutrition/generic/beef-shish-kabob-with-vegetables-excluding-potatoes', 71, 'Generic'),
(484, 'Beef Chow Mein or Chop Suey', 0, 83.38, 56.42, 46.02, 1015, 'ME', '2022-08-25 08:06:59.964776', '2022-08-25 08:06:59.964776', 832, 'https://www.fatsecret.com/calories-nutrition/generic/beef-chow-mein-or-chop-suey-no-noodles', 71, 'Generic'),
(485, 'Sukiyaki (Stir Fried Beef and Vegetables in Soy Sauce)', 0, 261.33, 101.88, 89.32, 2330, 'ME', '2022-08-25 08:06:59.970556', '2022-08-25 08:06:59.970556', 2284, 'https://www.fatsecret.com/calories-nutrition/generic/sukiyaki-(stir-fried-beef-and-vegetables-in-soy-sauce)', 71, 'Generic'),
(486, 'Puerto Rican Style Corned Beef with Tomato Sauce and Onion', 0, 104.07, 66.77, 12.9, 1090, 'ME', '2022-08-25 08:06:59.976752', '2022-08-25 08:06:59.976752', 540, 'https://www.fatsecret.com/calories-nutrition/generic/corned-beef-with-tomato-sauce-and-onion-puerto-rican-style-(mixture)', 71, 'Generic'),
(487, 'Cabbage with Ham Hocks (Mixture)', 0, 23.61, 17.64, 8.91, 288, 'BA', '2022-08-25 08:06:59.982934', '2022-08-25 08:06:59.982934', 300, 'https://www.fatsecret.com/calories-nutrition/generic/cabbage-with-ham-hocks-(mixture)', 71, 'Generic'),
(488, 'Pork, Tofu and Vegetables in Soy-Base Sauce (Including Carrots, Broccoli, and/or Dark-Green Leafy, No Potatoes, Mixture)', 0, 98.81, 78.99, 77.31, 1395, 'ME', '2022-08-25 08:06:59.989044', '2022-08-25 08:06:59.989044', 1049, 'https://www.fatsecret.com/calories-nutrition/generic/pork-tofu-and-vegetables-(including-carrots-broccoli-and-or-dark-green-leafy-(no-potatoes))-soy-base-sauce-(mixture)', 71, 'Generic'),
(489, 'Pork and Watercress with Soy-Based Sauce (Mixture)', 0, 68.67, 51.4, 27.62, 847, 'ME', '2022-08-25 08:06:59.995457', '2022-08-25 08:06:59.995457', 557, 'https://www.fatsecret.com/calories-nutrition/generic/pork-and-watercress-with-soy-based-sauce-(mixture)', 71, 'Generic'),
(490, 'Kung Pao Pork', 0, 64.93, 84.13, 29.25, 1145, 'ME', '2022-08-25 08:07:00.001155', '2022-08-25 08:07:00.001155', 402, 'https://www.fatsecret.com/calories-nutrition/generic/kung-pao-pork', 71, 'Generic'),
(491, 'Moo Shu (Mu Shi) Pork', 0, 74.01, 181.31, 20.48, 2001, 'ME', '2022-08-25 08:07:00.007489', '2022-08-25 08:07:00.007489', 590, 'https://www.fatsecret.com/calories-nutrition/generic/moo-shu-(mu-shi)-pork-without-chinese-pancake', 71, 'Generic'),
(492, 'Pork and Vegetables in Soy-Based Sauce (Mixture)', 0, 63.47, 51.05, 84.57, 1033, 'ME', '2022-08-25 08:07:00.015330', '2022-08-25 08:07:00.015330', 868, 'https://www.fatsecret.com/calories-nutrition/generic/pork-and-vegetables-(excluding-carrots-broccoli-and-dark--green-leafy)-soy-based-sauce-(mixture)', 71, 'Generic'),
(493, 'Puerto Rican Style Stuffed Christophine (Chayote Relleno)', 0, 129.69, 151.94, 37.33, 2054, 'ME', '2022-08-25 08:07:00.021271', '2022-08-25 08:07:00.021271', 1012, 'https://www.fatsecret.com/calories-nutrition/generic/stuffed-christophine-puerto-rican-style-(chayote-relleno)', 71, 'Generic'),
(494, 'Chicken or Turkey Pate with Vegetables (Diet)', 0, 738.15, 78.22, 4.66, 3885, 'ME', '2022-08-25 08:07:00.028481', '2022-08-25 08:07:00.028481', 2590, 'https://www.fatsecret.com/calories-nutrition/generic/chicken-or-turkey-pate-with-vegetables-diet', 71, 'Generic'),
(495, 'Chicken or Turkey A La King with Vegetables in Cream, White or Soup-Based Sauce (Including Carrots, Broccoli, and/or Dark-Green Leafy, No Potatoes)', 0, 60.52, 82.74, 40.68, 1153, 'ME', '2022-08-25 08:07:00.034625', '2022-08-25 08:07:00.034625', 597, 'https://www.fatsecret.com/calories-nutrition/generic/chicken-or-turkey-a-la-king-with-vegetables-(including-carrots-broccoli-and-or-dark-green-leafy-(no-potatoes))-cream-white-or-soup-based-sauce', 71, 'Generic'),
(496, 'Chicken or Turkey A La King with Vegetables in Cream, White or Soup-Based Sauce', 0, 61.52, 82.86, 37.96, 1142, 'ME', '2022-08-25 08:07:00.039615', '2022-08-25 08:07:00.039615', 598, 'https://www.fatsecret.com/calories-nutrition/generic/chicken-or-turkey-a-la-king-with-vegetables-(excluding-carrots-broccoli-and-dark-green-leafy-(no-potatoes))-cream-white-or-soup-based-sauce', 71, 'Generic'),
(497, 'General Tso (General Gau) Chicken', 0, 110.82, 100.16, 96.12, 1745, 'ME', '2022-08-25 08:07:00.045879', '2022-08-25 08:07:00.045879', 860, 'https://www.fatsecret.com/calories-nutrition/generic/general-tso-(general-gau)-chicken', 71, 'Generic'),
(498, 'Moo Goo Gai Pan', 0, 26.02, 31.61, 20.06, 460, 'BA', '2022-08-25 08:07:00.051769', '2022-08-25 08:07:00.051769', 365, 'https://www.fatsecret.com/calories-nutrition/generic/moo-goo-gai-pan', 71, 'Generic'),
(499, 'Chicken or Turkey Chow Mein or Chop Suey', 0, 42.98, 17.78, 20.93, 414, 'BA', '2022-08-25 08:07:00.058103', '2022-08-25 08:07:00.058103', 470, 'https://www.fatsecret.com/calories-nutrition/generic/chicken-or-turkey-chow-mein-or-chop-suey-no-noodles', 71, 'Generic'),
(500, 'Lobster Salad', 0, 86.86, 105.38, 49.7, 1481, 'ME', '2022-08-25 08:07:00.064141', '2022-08-25 08:07:00.064141', 1424, 'https://www.fatsecret.com/calories-nutrition/generic/lobster-salad', 71, 'Generic'),
(501, 'Salmon Salad', 0, 122.07, 131.63, 28.66, 1809, 'ME', '2022-08-25 08:07:00.070429', '2022-08-25 08:07:00.070429', 928, 'https://www.fatsecret.com/calories-nutrition/generic/salmon-salad', 71, 'Generic'),
(502, 'Tuna Salad', 0, 58.54, 45.21, 28.55, 755, 'ME', '2022-08-25 08:07:00.078505', '2022-08-25 08:07:00.078505', 410, 'https://www.fatsecret.com/calories-nutrition/generic/tuna-salad', 71, 'Generic'),
(503, 'Tuna Salad with Egg', 0, 64.98, 61.28, 29.67, 929, 'ME', '2022-08-25 08:07:00.085352', '2022-08-25 08:07:00.085352', 474, 'https://www.fatsecret.com/calories-nutrition/generic/tuna-salad-with-egg', 71, 'Generic'),
(504, 'Crab Salad Made with Imitation Crab', 0, 30.91, 44.66, 35.08, 671, 'ME', '2022-08-25 08:07:00.092173', '2022-08-25 08:07:00.092173', 353, 'https://www.fatsecret.com/calories-nutrition/generic/crab-salad-made-with-imitation-crab', 71, 'Generic'),
(505, 'Shellfish Mixture and Vegetables in Soy-Based Sauce (Including Carrots, Broccoli, and/or Dark-Green Leafy, No Potatoes)', 0, 56.43, 51.15, 59.43, 919, 'ME', '2022-08-25 08:07:00.101079', '2022-08-25 08:07:00.101079', 910, 'https://www.fatsecret.com/calories-nutrition/generic/shellfish-mixture-and-vegetables-(including-carrots-broccoli-and-or-dark-green-leafy-(no-potatoes))-soy-based-sauce', 71, 'Generic'),
(506, 'Fish and Vegetables in Tomato-Based Sauce (Including Carrots, Broccoli, and/or Dark-Green Leafy, No Potatoes, Mixture)', 0, 198.01, 38.19, 57.29, 1380, 'ME', '2022-08-25 08:07:00.110186', '2022-08-25 08:07:00.110186', 1605, 'https://www.fatsecret.com/calories-nutrition/generic/fish-and-vegetables-(including-carrots-broccoli-and-or-dark-green-leafy-(no-potatoes))-tomato-based-sauce-(mixture)', 71, 'Generic'),
(507, 'Puerto Rican Style Codfish Salad (Serenata)', 0, 48.3, 112.94, 21.6, 1291, 'ME', '2022-08-25 08:07:00.116566', '2022-08-25 08:07:00.116566', 730, 'https://www.fatsecret.com/calories-nutrition/generic/codfish-salad-puerto-rican-style-(serenata)', 71, 'Generic'),
(508, 'Sandwich', 0, 8.29, 12.38, 27.96, 259, 'CA', '2022-08-25 08:07:00.122916', '2022-08-25 08:07:00.122916', 85, 'https://www.fatsecret.com/calories-nutrition/generic/sandwich', 71, 'Generic'),
(509, 'Beef Sandwich', 0, 27.15, 13.65, 26.31, 345, 'CA', '2022-08-25 08:07:00.129762', '2022-08-25 08:07:00.129762', 138, 'https://www.fatsecret.com/calories-nutrition/generic/beef-sandwich', 71, 'Generic'),
(510, 'Cheeseburger with 1/4 Lb Meat and Mushrooms in Sauce on Bun', 0, 30.74, 29.18, 32.28, 520, 'ME', '2022-08-25 08:07:00.136679', '2022-08-25 08:07:00.136679', 226, 'https://www.fatsecret.com/calories-nutrition/generic/cheeseburger-1-4-lb-meat-with-mushrooms-in-sauce-on-bun', 71, 'Generic'),
(511, 'Double Cheeseburger with Mayonnaise or Salad Dressing on Bun', 0, 29.63, 33.19, 36.8, 571, 'ME', '2022-08-25 08:07:00.143263', '2022-08-25 08:07:00.143263', 202, 'https://www.fatsecret.com/calories-nutrition/generic/double-cheeseburger-(2-patties)-with-mayonnaise-or-salad-dressing-on-bun', 71, 'Generic'),
(512, 'Cheeseburger with Mayonnaise or Salad Dressing, Tomato and Bacon on Bun', 0, 21.55, 22.85, 28.6, 410, 'BA', '2022-08-25 08:07:00.149797', '2022-08-25 08:07:00.149797', 158, 'https://www.fatsecret.com/calories-nutrition/generic/cheeseburger-with-mayonnaise-or-salad-dressing-tomato-and-bacon-on-bun', 71, 'Generic'),
(513, 'Hamburger with 1/4 Lb Meat on Bun', 0, 23.09, 18.8, 25.72, 372, 'ME', '2022-08-25 08:07:00.156206', '2022-09-12 20:10:26.251764', 127, 'https://www.fatsecret.com/calories-nutrition/generic/hamburger-1-4-lb-meat-plain-on-bun', 71, 'Generic'),
(514, 'Double Hamburger with Mayonnaise or Salad Dressing and Tomatoes on Double-Decker Bun', 0, 25.08, 26.73, 35.87, 490, 'BA', '2022-08-25 08:07:00.163627', '2022-08-25 08:07:00.163627', 197, 'https://www.fatsecret.com/calories-nutrition/generic/double-hamburger-(2-patties)-with-mayonnaise-or-salad-dressing-and-tomatoes-on-double-decker-bun', 71, 'Generic'),
(515, 'Double Hamburger on Bun', 0, 23.09, 18.8, 25.72, 372, 'BA', '2022-08-25 08:07:00.169823', '2022-08-25 08:07:00.169823', 127, 'https://www.fatsecret.com/calories-nutrition/generic/double-hamburger-(2-patties)-plain-on-bun', 71, 'Generic'),
(516, 'Double Hamburger with Mayonnaise or Salad Dressing on Bun', 0, 23.38, 26, 27.17, 442, 'BA', '2022-08-25 08:07:00.177904', '2022-08-25 08:07:00.177904', 161, 'https://www.fatsecret.com/calories-nutrition/generic/double-hamburger-(2-patties)-with-mayonnaise-or-salad-dressing-on-bun', 71, 'Generic'),
(517, 'Double Hamburger with Mayonnaise or Salad Dressing and Tomatoes on Bun', 0, 23.56, 26.03, 27.95, 446, 'BA', '2022-08-25 08:07:00.184458', '2022-08-25 08:07:00.184458', 181, 'https://www.fatsecret.com/calories-nutrition/generic/double-hamburger-(2-patties)-with-mayonnaise-or-salad-dressing-and-tomatoes-on-bun', 71, 'Generic'),
(518, 'Reuben Sandwich with Spread (Corned Beef Sandwich with Sauerkraut and Cheese)', 0, 22.97, 31.35, 32.76, 506, 'ME', '2022-08-25 08:07:00.191034', '2022-08-25 08:07:00.191034', 198, 'https://www.fatsecret.com/calories-nutrition/generic/reuben-sandwich-(corned-beef-sandwich-with-sauerkraut-and-cheese)-with-spread', 71, 'Generic'),
(519, 'Fried Roast Beef Sandwich Dipped in Egg (with Gravy and Spread)', 0, 33.6, 29.48, 31.06, 528, 'ME', '2022-08-25 08:07:00.197463', '2022-08-25 08:07:00.197463', 264, 'https://www.fatsecret.com/calories-nutrition/generic/roast-beef-sandwich-dipped-in-egg-fried-with-gravy-and-spread', 71, 'Generic'),
(520, 'Roast Beef Submarine Sandwich with Lettuce, Tomato and Spread', 0, 27.48, 24.19, 41.49, 499, 'BA', '2022-08-25 08:07:00.205443', '2022-08-25 08:07:00.205443', 230, 'https://www.fatsecret.com/calories-nutrition/generic/roast-beef-submarine-sandwich-with-lettuce-tomato-and-spread', 71, 'Generic'),
(521, 'Roast Beef Sandwich with Bacon and Cheese Sauce', 0, 35.98, 25.55, 33.53, 519, 'ME', '2022-08-25 08:07:00.211876', '2022-08-25 08:07:00.211876', 171, 'https://www.fatsecret.com/calories-nutrition/generic/roast-beef-sandwich-with-bacon-and-cheese-sauce', 71, 'Generic'),
(522, 'Steak Submarine Sandwich with Lettuce and Tomato', 0, 30.76, 13.78, 39.81, 415, 'BA', '2022-08-25 08:07:00.218008', '2022-08-25 08:07:00.218008', 199, 'https://www.fatsecret.com/calories-nutrition/generic/steak-submarine-sandwich-with-lettuce-and-tomato', 71, 'Generic'),
(523, 'Steak and Cheese Sandwich on Roll', 0, 33.8, 20.17, 30.01, 445, 'BA', '2022-08-25 08:07:00.227594', '2022-08-25 08:07:00.227594', 171, 'https://www.fatsecret.com/calories-nutrition/generic/steak-and-cheese-sandwich-plain-on-roll', 71, 'Generic'),
(524, 'Fajita-Style Beef Sandwich with Cheese, Lettuce and Tomato on Pita Bread', 0, 23.23, 13.69, 33.95, 352, 'BA', '2022-08-25 08:07:00.234622', '2022-08-25 08:07:00.234622', 250, 'https://www.fatsecret.com/calories-nutrition/generic/fajita-style-beef-sandwich-with-cheese-on-pita-bread-with-lettuce-and-tomato', 71, 'Generic'),
(525, 'Steak and Cheese Submarine Sandwich with Fried Peppers and Onions on Roll', 0, 40.05, 20.42, 34.86, 492, 'BA', '2022-08-25 08:07:00.243124', '2022-08-25 08:07:00.243124', 204, 'https://www.fatsecret.com/calories-nutrition/generic/steak-and-cheese-submarine-sandwich-with-fried-peppers-and-onions-on-roll', 71, 'Generic'),
(526, 'Steak Patty Sandwich with Mayonnaise or Salad Dressing, Lettuce and Tomato on Bun', 0, 16.59, 24.59, 39.74, 451, 'BA', '2022-08-25 08:07:00.250198', '2022-08-25 08:07:00.250198', 160, 'https://www.fatsecret.com/calories-nutrition/generic/steak-patty-(breaded-fried)-sandwich-with-mayonnaise-or-salad-dressing-lettuce-and-tomato-on-bun', 71, 'Generic'),
(527, 'Breaded Fried Chicken Fillet Sandwich', 0, 29.99, 12.15, 22.81, 329, 'BA', '2022-08-25 08:07:00.257957', '2022-08-25 08:07:00.257957', 129, 'https://www.fatsecret.com/calories-nutrition/generic/chicken-fillet-(breaded-fried)-sandwich', 71, 'Generic'),
(528, 'Turkey Sandwich with Spread', 0, 28.99, 11.31, 26.58, 332, 'BA', '2022-08-25 08:07:00.264537', '2022-08-25 08:07:00.264537', 144, 'https://www.fatsecret.com/calories-nutrition/generic/turkey-sandwich-with-spread', 71, 'Generic'),
(529, 'Fish Sandwich with Cheese and Spread on Bun', 0, 15, 16.77, 28.71, 328, 'BA', '2022-08-25 08:07:00.270966', '2022-08-25 08:07:00.270966', 114, 'https://www.fatsecret.com/calories-nutrition/generic/fish-sandwich-on-bun-with-cheese-and-spread', 71, 'Generic'),
(530, 'Pochito (Frankfurter or Hot Dog and Beef Chili Wrapped in Tortilla)', 0, 10.42, 18.8, 17.21, 276, 'BA', '2022-08-25 08:07:00.278947', '2022-08-25 08:07:00.278947', 125, 'https://www.fatsecret.com/calories-nutrition/generic/pochito-(frankfurter-or-hot-dog-and-beef-chili-wrapped-in-tortilla)', 71, 'Generic'),
(531, 'Sausage and Spaghetti Sauce Sandwich', 0, 23.22, 27.28, 39.52, 502, 'ME', '2022-08-25 08:07:00.285207', '2022-08-25 08:07:00.285207', 194, 'https://www.fatsecret.com/calories-nutrition/generic/sausage-and-spaghetti-sauce-sandwich', 71, 'Generic'),
(532, 'Chopped Sirloin Dinner (Frozen Meal)', 0, 24.44, 26.13, 42.93, 500, 'ME', '2022-08-25 08:07:00.291690', '2022-08-25 08:07:00.291690', 319, 'https://www.fatsecret.com/calories-nutrition/generic/sirloin-chopped-dinner-(frozen-meal)', 71, 'Generic'),
(533, 'Chopped Sirloin with Gravy, Mashed Potatoes and Vegetable (Frozen Meal)', 0, 24.45, 26.14, 42.89, 500, 'ME', '2022-08-25 08:07:00.297975', '2022-08-25 08:07:00.297975', 314, 'https://www.fatsecret.com/calories-nutrition/generic/sirloin-chopped-with-gravy-mashed-potatoes-vegetable-(frozen-meal)', 71, 'Generic');
INSERT INTO `base_makanan` (`id`, `nama`, `porsi`, `protein`, `lemak`, `karbo`, `energi`, `jenis`, `created_at`, `updated_at`, `berat_porsi`, `sumber`, `besar_porsi_id`, `kelompok`) VALUES
(534, 'Salisbury Steak with Gravy, Potatoes, Vegetable and Dessert (Frozen Meal, Large Meat)', 0, 52.94, 35.47, 68.04, 793, 'ME', '2022-08-25 08:07:00.303910', '2022-08-25 08:07:00.303910', 475, 'https://www.fatsecret.com/calories-nutrition/generic/salisbury-steak-with-gravy-potatoes-vegetable-dessert-(frozen-meal-large-meat-portion)', 71, 'Generic'),
(535, 'Sliced Beef with Gravy, Potatoes and Vegetable (Frozen Meal)', 0, 25.54, 23.57, 23.51, 426, 'BA', '2022-08-25 08:07:00.310519', '2022-08-25 08:07:00.310519', 318, 'https://www.fatsecret.com/calories-nutrition/generic/beef-sliced-with-gravy-potatoes-vegetable-(frozen-meal)', 71, 'Generic'),
(536, 'Pork with Rice and Vegetable in Soy-Based Sauce (Diet Frozen Meal)', 0, 15.29, 6.81, 33.73, 264, 'BA', '2022-08-25 08:07:00.316741', '2022-08-25 08:07:00.316741', 254, 'https://www.fatsecret.com/calories-nutrition/generic/pork-with-rice-vegetable-in-soy-based-sauce-(diet-frozen-meal)', 71, 'Generic'),
(537, 'Breaded Chicken Patty or Nuggets, Potatoes and Vegetable (Frozen Meal)', 0, 20.4, 19.73, 36.16, 380, 'BA', '2022-08-25 08:07:00.323159', '2022-08-25 08:07:00.323159', 191, 'https://www.fatsecret.com/calories-nutrition/generic/chicken-patty-or-nuggets-boneless-breaded-potatoes-vegetable-(frozen-meal)', 71, 'Generic'),
(538, 'Breaded Chicken Patty with Tomato Sauce and Cheese, Fettuccine Alfredo and Vegetable (Frozen Meal)', 0, 30.74, 18.52, 27.45, 398, 'BA', '2022-08-25 08:07:00.330218', '2022-08-25 08:07:00.330218', 326, 'https://www.fatsecret.com/calories-nutrition/generic/chicken-patty-breaded-with-tomato-sauce-and-cheese-fettuccine-alfredo-vegetable-(frozen-meal)', 71, 'Generic'),
(539, 'Breaded Chicken Patty or Nuggets with Pasta and Tomato Sauce, Fruit and Dessert (Frozen Meal)', 0, 25.85, 30.69, 123.81, 858, 'ME', '2022-08-25 08:07:00.336640', '2022-08-25 08:07:00.336640', 479, 'https://www.fatsecret.com/calories-nutrition/generic/chicken-patty-or-nuggets-boneless-breaded-with-pasta-and-tomato-sauce-fruit-dessert-(frozen-meal)', 71, 'Generic'),
(540, 'Breaded Chicken Parmigiana Patty with Vegetable (Diet Frozen Meal)', 0, 21.5, 17.06, 14.34, 296, 'BA', '2022-08-25 08:07:00.343283', '2022-08-25 08:07:00.343283', 218, 'https://www.fatsecret.com/calories-nutrition/generic/chicken-patty-parmigiana-breaded-with-vegetable-(diet-frozen-meal)', 71, 'Generic'),
(541, 'Teriyaki Chicken with Rice and Vegetable (Diet Frozen Meal)', 0, 20.8, 3.53, 46.14, 308, 'BA', '2022-08-25 08:07:00.349197', '2022-08-25 08:07:00.349197', 296, 'https://www.fatsecret.com/calories-nutrition/generic/teriyaki-chicken-with-rice-and-vegetable-(diet-frozen-meal)', 71, 'Generic'),
(542, 'Chicken A La King with Rice (Frozen Meal)', 0, 29.05, 33.84, 59.81, 666, 'ME', '2022-08-25 08:07:00.354368', '2022-08-25 08:07:00.354368', 399, 'https://www.fatsecret.com/calories-nutrition/generic/chicken-a-la-king-with-rice-(frozen-meal)', 71, 'Generic'),
(543, 'Chicken Kiev with Rice-Vegetable Mixture (Frozen Meal)', 0, 25.79, 30.39, 30.82, 504, 'ME', '2022-08-25 08:07:00.360737', '2022-08-25 08:07:00.360737', 227, 'https://www.fatsecret.com/calories-nutrition/generic/chicken-kiev-with-rice-vegetable-mixture-(frozen-meal)', 71, 'Generic'),
(544, 'Oriental Chicken and Vegetable Entree with Rice (Frozen Meal)', 0, 18.73, 8.01, 39.4, 304, 'BA', '2022-08-25 08:07:00.366873', '2022-08-25 08:07:00.366873', 272, 'https://www.fatsecret.com/calories-nutrition/generic/chicken-and-vegetable-entree-with-rice-oriental-(frozen-meal)', 71, 'Generic'),
(545, 'Oriental Chicken and Vegetable Entree with Rice (Diet Frozen Meal)', 0, 32.28, 14.33, 58.57, 482, 'BA', '2022-08-25 08:07:00.373064', '2022-08-25 08:07:00.373064', 255, 'https://www.fatsecret.com/calories-nutrition/generic/chicken-and-vegetable-entree-with-rice-oriental-(diet-frozen-meal)', 71, 'Generic'),
(546, 'Oriental Chicken and Vegetable Entree (Diet Frozen Meal)', 0, 17.42, 4.08, 25.48, 204, 'BA', '2022-08-25 08:07:00.379573', '2022-08-25 08:07:00.379573', 255, 'https://www.fatsecret.com/calories-nutrition/generic/chicken-and-vegetable-entree-oriental-(diet-frozen-meal)', 71, 'Generic'),
(547, 'Chicken Cacciatore with Noodles (Diet Frozen Meal)', 0, 22.94, 9.76, 33.4, 315, 'BA', '2022-08-25 08:07:00.385842', '2022-08-25 08:07:00.385842', 306, 'https://www.fatsecret.com/calories-nutrition/generic/chicken-cacciatore-with-noodles-(diet-frozen-meal)', 71, 'Generic'),
(548, 'Chicken and Vegetable Entree with Noodles (Diet Frozen Meal)', 0, 27.14, 7.16, 33.32, 305, 'BA', '2022-08-25 08:07:00.394031', '2022-08-25 08:07:00.394031', 363, 'https://www.fatsecret.com/calories-nutrition/generic/chicken-and-vegetable-entree-with-noodles-(diet-frozen-meal)', 71, 'Generic'),
(549, 'Chicken and Vegetable Entree with Noodles and Cream Sauce (Frozen Meal)', 0, 24.82, 14.88, 29.93, 352, 'BA', '2022-08-25 08:07:00.400288', '2022-08-25 08:07:00.400288', 284, 'https://www.fatsecret.com/calories-nutrition/generic/chicken-and-vegetable-entree-with-noodles-and-cream-sauce-(frozen-meal)', 71, 'Generic'),
(550, 'Turkey Tetrazzini (Frozen Meal)', 0, 12.66, 9.74, 20.61, 230, 'BA', '2022-08-25 08:07:00.408097', '2022-08-25 08:07:00.408097', 164, 'https://www.fatsecret.com/calories-nutrition/generic/turkey-tetrazzini-(frozen-meal)', 71, 'Generic'),
(551, 'Flounder with Chopped Broccoli (Diet Frozen Meal)', 0, 28.77, 4.53, 17.42, 225, 'BA', '2022-08-25 08:07:00.414913', '2022-08-25 08:07:00.414913', 326, 'https://www.fatsecret.com/calories-nutrition/generic/flounder-with-chopped-broccoli-(diet-frozen-meal)', 71, 'Generic'),
(552, 'Fish in Lemon-Butter Sauce with Starch Item and Vegetable (Frozen Meal)', 0, 20.4, 12.72, 37.62, 350, 'BA', '2022-08-25 08:07:00.421101', '2022-08-25 08:07:00.421101', 334, 'https://www.fatsecret.com/calories-nutrition/generic/fish-in-lemon-butter-sauce-with-starch-item-vegetable-(frozen-meal)', 71, 'Generic'),
(553, 'Scallops with Potatoes and Vegetable (Frozen Meal)', 0, 26.83, 16.49, 39.09, 393, 'BA', '2022-08-25 08:07:00.428435', '2022-08-25 08:07:00.428435', 243, 'https://www.fatsecret.com/calories-nutrition/generic/scallops-with-potatoes-vegetable-(frozen-meal)', 71, 'Generic'),
(554, 'Shrimp with Potatoes and Vegetable (Frozen Meal)', 0, 28.49, 18.34, 38.87, 414, 'BA', '2022-08-25 08:07:00.435456', '2022-08-25 08:07:00.435456', 242, 'https://www.fatsecret.com/calories-nutrition/generic/shrimp-with-potatoes-vegetable-(frozen-meal)', 71, 'Generic'),
(555, 'Stuffed Green Pepper (Diet Frozen Meal)', 0, 23.21, 8.59, 30.47, 290, 'BA', '2022-08-25 08:07:00.441642', '2022-08-25 08:07:00.441642', 333, 'https://www.fatsecret.com/calories-nutrition/generic/stuffed-green-pepper-(diet-frozen-meal)', 71, 'Generic'),
(556, 'Mexican Style Meatball Soup (Sopa De Albondigas)', 0, 105.94, 113.85, 96.24, 1838, 'ME', '2022-08-25 08:07:00.447679', '2022-08-25 08:07:00.447679', 2553, 'https://www.fatsecret.com/calories-nutrition/generic/meatball-soup-mexican-style-(sopa-de-albondigas)', 71, 'Generic'),
(557, 'Italian Wedding Soup', 0, 92.89, 51.19, 106.63, 1276, 'ME', '2022-08-25 08:07:00.453901', '2022-08-25 08:07:00.453901', 1635, 'https://www.fatsecret.com/calories-nutrition/generic/italian-wedding-soup', 71, 'Generic'),
(558, 'Pork, Vegetable Stew Type Soup with Potatoes', 0, 136.85, 25.64, 178.45, 1439, 'ME', '2022-08-25 08:07:00.460483', '2022-08-25 08:07:00.460483', 2617, 'https://www.fatsecret.com/calories-nutrition/generic/pork-vegetable-soup-with-potatoes-stew-type', 71, 'Generic'),
(559, 'Puerto Rican Style Lamb, Pasta and Vegetable Soup', 0, 260.72, 132.21, 328.94, 3543, 'ME', '2022-08-25 08:07:00.467003', '2022-08-25 08:07:00.467003', 5288, 'https://www.fatsecret.com/calories-nutrition/generic/lamb-pasta-and-vegetable-soup-puerto-rican-style', 71, 'Generic'),
(560, 'Chicken or Turkey Vegetable Soup (Home Recipe)', 0, 129.83, 36.5, 120.13, 1317, 'ME', '2022-08-25 08:07:00.474887', '2022-08-25 08:07:00.474887', 2310, 'https://www.fatsecret.com/calories-nutrition/generic/chicken-or-turkey-vegetable-soup-home-recipe', 71, 'Generic'),
(561, 'Bird\'s Nest Soup (Chicken, Ham, and Noodles)', 0, 38.69, 7.48, 21.47, 322, 'BA', '2022-08-25 08:07:00.483425', '2022-08-25 08:07:00.483425', 686, 'https://www.fatsecret.com/calories-nutrition/generic/birds-nest-soup-(chicken-ham-and-noodles)', 71, 'Generic'),
(562, 'Cream of Chicken or Turkey Soup', 0, 12.13, 20.55, 28.8, 347, 'BA', '2022-08-25 08:07:00.490067', '2022-08-25 08:07:00.490067', 598, 'https://www.fatsecret.com/calories-nutrition/generic/chicken-or-turkey-soup-cream-of', 71, 'Generic'),
(563, 'Cream of Chicken or Turkey Soup (with Water)', 0, 7.24, 17.61, 21.82, 273, 'BA', '2022-08-25 08:07:00.496696', '2022-08-25 08:07:00.496696', 593, 'https://www.fatsecret.com/calories-nutrition/generic/chicken-or-turkey-soup-cream-of-prepared-with-water', 71, 'Generic'),
(564, 'Crab Soup (Tomato-Base)', 0, 115.67, 59.27, 103.77, 1415, 'ME', '2022-08-25 08:07:00.504365', '2022-08-25 08:07:00.504365', 2051, 'https://www.fatsecret.com/calories-nutrition/generic/crab-soup-tomato-base', 71, 'Generic'),
(565, 'Redeye Gravy', 0, 0.7, 5.83, 0.01, 56, 'BA', '2022-08-25 08:07:00.510834', '2022-08-25 08:07:00.510834', 127, 'https://www.fatsecret.com/calories-nutrition/generic/gravy-redeye', 71, 'Generic'),
(566, 'Fat Free Beef or Meat Gravy', 0, 10.61, 12.42, 70.27, 435, 'BA', '2022-08-25 08:07:00.517284', '2022-08-25 08:07:00.517284', 1061, 'https://www.fatsecret.com/calories-nutrition/generic/gravy-beef-or-meat-fat-free', 71, 'Generic'),
(567, 'Fat Free Poultry Gravy', 0, 13.59, 17.09, 66.97, 478, 'BA', '2022-08-25 08:07:00.524468', '2022-08-25 08:07:00.524468', 1061, 'https://www.fatsecret.com/calories-nutrition/generic/gravy-poultry-fat-free', 71, 'Generic'),
(568, 'Puerto Rican Style Chicken Fricasse Gravy or Sauce', 0, 4.82, 113.86, 30.01, 1131, 'ME', '2022-08-25 08:07:00.531632', '2022-08-25 08:07:00.531632', 524, 'https://www.fatsecret.com/calories-nutrition/generic/gravy-or-sauce-poultry-based-from-puerto-rican-style-chicken-fricasse', 71, 'Generic'),
(569, 'Baked Egg (Fat Not Added in Cooking)', 0, 6.99, 5.52, 0.43, 82, 'BA', '2022-08-25 08:07:00.539609', '2022-08-25 08:07:00.539609', 50, 'https://www.fatsecret.com/calories-nutrition/generic/egg-whole-baked-fat-not-added-in-cooking', 71, 'Generic'),
(570, 'Baked Egg (Fat Added in Cooking)', 0, 7, 9.64, 0.53, 119, 'BA', '2022-08-25 08:07:00.547239', '2022-08-25 08:07:00.547239', 55, 'https://www.fatsecret.com/calories-nutrition/generic/egg-whole-baked-fat-added-in-cooking', 71, 'Generic'),
(571, 'Creamed Egg', 0, 8.69, 11.95, 6.29, 169, 'BA', '2022-08-25 08:07:00.553207', '2022-08-25 08:07:00.553207', 113, 'https://www.fatsecret.com/calories-nutrition/generic/egg-creamed', 71, 'Generic'),
(572, 'Benedict Egg', 0, 82.88, 149.68, 57.65, 1913, 'ME', '2022-08-25 08:07:00.559462', '2022-08-25 08:07:00.559462', 693, 'https://www.fatsecret.com/calories-nutrition/generic/egg-benedict', 71, 'Generic'),
(573, 'Egg Omelet or Scrambled Egg (Fat Added in Cooking)', 0, 7.65, 7.94, 1.53, 110, 'BA', '2022-08-25 08:07:00.565173', '2022-08-25 08:07:00.565173', 73, 'https://www.fatsecret.com/calories-nutrition/generic/egg-omelet-or-scrambled-egg-fat-added-in-cooking', 71, 'Generic'),
(574, 'Egg Omelet or Scrambled Egg with Sausage', 0, 41.41, 53.08, 4.79, 672, 'ME', '2022-08-25 08:07:00.569908', '2022-08-25 08:07:00.569908', 301, 'https://www.fatsecret.com/calories-nutrition/generic/egg-omelet-or-scrambled-egg-with-sausage', 71, 'Generic'),
(575, 'Egg Omelet or Scrambled Egg with Onions, Peppers, Tomatoes and Mushrooms', 0, 8.67, 14.25, 6.28, 185, 'BA', '2022-08-25 08:07:00.575596', '2022-08-25 08:07:00.575596', 156, 'https://www.fatsecret.com/calories-nutrition/generic/egg-omelet-or-scrambled-egg-with-onions-peppers-tomatoes-and-mushrooms', 71, 'Generic'),
(576, 'Huevos Rancheros', 0, 17.5, 16.92, 21.67, 302, 'BA', '2022-08-25 08:07:00.581915', '2022-08-25 08:07:00.581915', 254, 'https://www.fatsecret.com/calories-nutrition/generic/huevos-rancheros', 71, 'Generic'),
(577, 'Egg Foo Yung', 0, 50.73, 65.24, 24.25, 880, 'ME', '2022-08-25 08:07:00.587820', '2022-08-25 08:07:00.587820', 672, 'https://www.fatsecret.com/calories-nutrition/generic/egg-foo-yung-(young)', 71, 'Generic'),
(578, 'Beef Egg Foo Yung', 0, 55.17, 54.08, 22.21, 800, 'ME', '2022-08-25 08:07:00.593997', '2022-08-25 08:07:00.593997', 575, 'https://www.fatsecret.com/calories-nutrition/generic/beef-egg-foo-yung-(young)', 71, 'Generic'),
(579, 'Puerto Rican Style Eggs A La Malaguena (Huevos A La Malaguena)', 0, 65.57, 36.77, 45.81, 774, 'ME', '2022-08-25 08:07:00.599842', '2022-08-25 08:07:00.599842', 766, 'https://www.fatsecret.com/calories-nutrition/generic/eggs-a-la-malaguena-puerto-rican-style-(huevos-a-la-malaguena)', 71, 'Generic'),
(580, 'Egg and Ham on Biscuit', 0, 14.68, 19.43, 25.27, 331, 'ME', '2022-08-25 08:07:00.607229', '2022-08-25 08:07:00.607229', 138, 'https://www.fatsecret.com/calories-nutrition/generic/egg-and-ham-on-biscuit', 71, 'Generic'),
(581, 'Egg Substitute (Frozen or Liquid)', 0, 8.56, 4.48, 0.51, 79, 'BA', '2022-08-25 08:07:00.613184', '2022-08-25 08:07:00.613184', 65, 'https://www.fatsecret.com/calories-nutrition/generic/egg-substitute-frozen-or-liquid', 71, 'Generic'),
(582, 'Cooked Dry White Beans (Fat Not Added in Cooking)', 0, 9.73, 0.35, 25.09, 139, 'BA', '2022-08-25 08:07:00.618729', '2022-08-25 08:07:00.618729', 101, 'https://www.fatsecret.com/calories-nutrition/generic/white-beans-dry-cooked-fat-not-added-in-cooking', 71, 'Generic'),
(583, 'Cooked Dry Lima Beans', 0, 7.18, 8.35, 19.21, 177, 'BA', '2022-08-25 08:07:00.627539', '2022-08-25 08:07:00.627539', 101, 'https://www.fatsecret.com/calories-nutrition/generic/lima-beans-dry-cooked', 71, 'Generic'),
(584, 'Cooked Pinto, Calico or Red Beans', 0, 6.55, 8.38, 19.15, 177, 'BA', '2022-08-25 08:07:00.633205', '2022-08-25 08:07:00.633205', 101, 'https://www.fatsecret.com/calories-nutrition/generic/pinto-calico-or-red-mexican-beans-dry-cooked', 71, 'Generic'),
(585, 'Cooked Mung (Fat Added in Cooking)', 0, 23.86, 26.14, 62.62, 569, 'ME', '2022-08-25 08:07:00.639753', '2022-08-25 08:07:00.639753', 335, 'https://www.fatsecret.com/calories-nutrition/generic/mung-beans-fat-added-in-cooking', 71, 'Generic'),
(586, 'Kidney Bean Salad', 0, 32.41, 39.28, 114.68, 910, 'ME', '2022-08-25 08:07:00.645990', '2022-08-25 08:07:00.645990', 587, 'https://www.fatsecret.com/calories-nutrition/generic/kidney-bean-salad', 71, 'Generic'),
(587, 'Refried Beans with Meat', 0, 35.6, 50.6, 74.8, 888, 'ME', '2022-08-25 08:07:00.651681', '2022-08-25 08:07:00.651681', 460, 'https://www.fatsecret.com/calories-nutrition/generic/refried-beans-with-meat', 71, 'Generic'),
(588, 'Beans with Ground', 0, 182.05, 71.22, 337.7, 2675, 'ME', '2022-08-25 08:07:00.656776', '2022-08-25 08:07:00.656776', 1737, 'https://www.fatsecret.com/calories-nutrition/generic/beans-dry-cooked-with-ground-beef', 71, 'Generic'),
(589, 'Cooked Beans with Pork', 0, 127.49, 42.68, 442.06, 2594, 'ME', '2022-08-25 08:07:00.664347', '2022-08-25 08:07:00.664347', 1840, 'https://www.fatsecret.com/calories-nutrition/generic/beans-dry-cooked-with-pork', 71, 'Generic'),
(590, 'Puerto Rican Style Ham Stewed Pink Beans with Viandas', 0, 83.38, 63.38, 207.37, 1723, 'ME', '2022-08-25 08:07:00.675922', '2022-08-25 08:07:00.675922', 1981, 'https://www.fatsecret.com/calories-nutrition/generic/stewed-pink-beans-with-viandas-ham-puerto-rican-style', 71, 'Generic'),
(591, 'Puerto Rican Style Stewed Pink Beans with Pig\'s Feet', 0, 158.51, 133.69, 131.71, 2333, 'ME', '2022-08-25 08:07:00.683198', '2022-08-25 08:07:00.683198', 1655, 'https://www.fatsecret.com/calories-nutrition/generic/stewed-pink-beans-with-pigs-feet-puerto-rican-style', 71, 'Generic'),
(592, 'Puerto Rican Style Stewed Red Beans with Pig\'s Feet', 0, 160.17, 133.36, 129.89, 2316, 'ME', '2022-08-25 08:07:00.688845', '2022-08-25 08:07:00.688845', 1655, 'https://www.fatsecret.com/calories-nutrition/generic/stewed-red-beans-with-pigs-feet-puerto-rican-style', 71, 'Generic'),
(593, 'Cooked Dry Cowpeas (Fat Added in Cooking)', 0, 7.11, 8.49, 19.09, 177, 'BA', '2022-08-25 08:07:00.695111', '2022-08-25 08:07:00.695111', 101, 'https://www.fatsecret.com/calories-nutrition/generic/cowpeas-dry-cooked-fat-added-in-cooking', 71, 'Generic'),
(594, 'Cooked Dry Chickpeas', 0, 8.82, 10.76, 27.72, 237, 'BA', '2022-08-25 08:07:00.700984', '2022-08-25 08:07:00.700984', 101, 'https://www.fatsecret.com/calories-nutrition/generic/chickpeas-dry-cooked', 71, 'Generic'),
(595, 'Cooked Lentils (Fat Not Added in Cooking)', 0, 9.02, 0.38, 20.13, 116, 'BA', '2022-08-25 08:07:00.707104', '2022-08-25 08:07:00.707104', 101, 'https://www.fatsecret.com/calories-nutrition/generic/lentils-dry-cooked-fat-not-added-in-cooking', 71, 'Generic'),
(596, 'Puerto Rican Style Stewed Cowpeas', 0, 117.33, 14.07, 308.79, 1771, 'ME', '2022-08-25 08:07:00.714994', '2022-08-25 08:07:00.714994', 1655, 'https://www.fatsecret.com/calories-nutrition/generic/stewed-cowpeas-puerto-rican-style', 71, 'Generic'),
(597, 'Vermicelli from Soybeans', 0, 0.11, 0.11, 82.06, 330, 'BA', '2022-08-25 08:07:00.721614', '2022-08-25 08:07:00.721614', 262, 'https://www.fatsecret.com/calories-nutrition/generic/vermicelli-made-from-soybeans', 71, 'Generic'),
(598, 'Bean with Bacon or Pork Soup', 0, 19.16, 14.43, 55.32, 418, 'BA', '2022-08-25 08:07:00.729304', '2022-08-25 08:07:00.729304', 614, 'https://www.fatsecret.com/calories-nutrition/generic/bean-with-bacon-or-pork-soup', 71, 'Generic'),
(599, 'Mixed Beans Soup', 0, 137.6, 24.1, 353.32, 2099, 'ME', '2022-08-25 08:07:00.736511', '2022-08-25 08:07:00.736511', 3887, 'https://www.fatsecret.com/calories-nutrition/generic/bean-soup-mixed-beans', 71, 'Generic'),
(600, 'Bean and Ham Soup (Home Recipe)', 0, 128.72, 76.28, 136.16, 1735, 'ME', '2022-08-25 08:07:00.744857', '2022-08-25 08:07:00.744857', 1907, 'https://www.fatsecret.com/calories-nutrition/generic/bean-and-ham-soup-home-recipe', 71, 'Generic'),
(601, 'Puerto Rican Style White Bean Soup (Sopon De Habichuelas Blancas)', 0, 43.7, 33.24, 193.73, 1247, 'ME', '2022-08-25 08:07:00.751868', '2022-08-25 08:07:00.751868', 1433, 'https://www.fatsecret.com/calories-nutrition/generic/white-bean-soup-puerto-rican-style-(sopon-de-habichuelas-blancas)', 71, 'Generic'),
(602, 'Meatless Soyburger with Cheese on Bun', 0, 19.62, 9.92, 35.18, 308, 'BA', '2022-08-25 08:07:00.758077', '2022-08-25 08:07:00.758077', 143, 'https://www.fatsecret.com/calories-nutrition/generic/soyburger-meatless-with-cheese-on-bun', 71, 'Generic'),
(603, 'Peanut Sauce', 0, 8.09, 16.12, 7.58, 192, 'BA', '2022-08-25 08:07:00.765201', '2022-08-25 08:07:00.765201', 62, 'https://www.fatsecret.com/calories-nutrition/generic/peanut-sauce', 71, 'Generic'),
(604, 'Garlic Bread', 0, 8.99, 14.83, 52.92, 383, 'BA', '2022-08-25 08:07:00.771535', '2022-08-25 08:07:00.771535', 116, 'https://www.fatsecret.com/calories-nutrition/generic/bread-garlic', 71, 'Generic'),
(605, 'Fiber Added White Bread', 0, 6.74, 2.72, 50.16, 214, 'BA', '2022-08-25 08:07:00.777835', '2022-08-25 08:07:00.777835', 99, 'https://www.fatsecret.com/calories-nutrition/generic/bread-white-special-formula-added-fiber', 71, 'Generic'),
(606, 'Fried Dough Bread', 0, 90.46, 242.37, 593.61, 4940, 'ME', '2022-08-25 08:07:00.784185', '2022-08-25 08:07:00.784185', 1324, 'https://www.fatsecret.com/calories-nutrition/generic/bread-dough-fried', 71, 'Generic'),
(607, 'Frosted Sweet Fruit and Nuts Roll', 0, 7.19, 22.83, 79.34, 540, 'ME', '2022-08-25 08:07:00.792384', '2022-08-25 08:07:00.792384', 140, 'https://www.fatsecret.com/calories-nutrition/generic/roll-sweet-with-fruit-and-nuts-frosted', 71, 'Generic'),
(608, 'Brioche', 0, 102.77, 139.07, 490.33, 3651, 'ME', '2022-08-25 08:07:00.798533', '2022-08-25 08:07:00.798533', 1055, 'https://www.fatsecret.com/calories-nutrition/generic/brioche', 71, 'Generic'),
(609, 'Spanish Coffee Bread', 0, 13.53, 15.52, 103.74, 612, 'ME', '2022-08-25 08:07:00.805093', '2022-08-25 08:07:00.805093', 178, 'https://www.fatsecret.com/calories-nutrition/generic/bread-spanish-coffee', 71, 'Generic'),
(610, 'Soft Bread Stick', 0, 34.63, 30.4, 203.33, 1239, 'ME', '2022-08-25 08:07:00.813519', '2022-08-25 08:07:00.813519', 352, 'https://www.fatsecret.com/calories-nutrition/generic/bread-stick-soft', 71, 'Generic'),
(611, 'Pannetone (Italian-Style Sweetbread)', 0, 70.16, 74.01, 497.45, 2913, 'ME', '2022-08-25 08:07:00.819458', '2022-08-25 08:07:00.819458', 916, 'https://www.fatsecret.com/calories-nutrition/generic/pannetone-(italian-style-sweetbread)', 71, 'Generic'),
(612, 'Toasted 100% Whole Wheat English Muffin with Raisins', 0, 22.33, 6.17, 130.99, 621, 'ME', '2022-08-25 08:07:00.825573', '2022-08-25 08:07:00.825573', 226, 'https://www.fatsecret.com/calories-nutrition/generic/muffin-english-whole-wheat-100%25-with-raisins-toasted', 71, 'Generic'),
(613, 'Toasted Wheat Bagel with Raisins', 0, 99.28, 13.37, 616.91, 2933, 'ME', '2022-08-25 08:07:00.830495', '2022-08-25 08:07:00.830495', 998, 'https://www.fatsecret.com/calories-nutrition/generic/bagel-wheat-with-raisins-toasted', 71, 'Generic'),
(614, 'Wheat or Cracked Wheat English Muffin with Raisins', 0, 18.62, 5.34, 112.25, 554, 'ME', '2022-08-25 08:07:00.835622', '2022-08-25 08:07:00.835622', 222, 'https://www.fatsecret.com/calories-nutrition/generic/muffin-english-wheat-or-cracked-wheat-with-raisins', 71, 'Generic'),
(615, 'Multigrain Bagel', 0, 103.61, 11.76, 481.85, 2379, 'ME', '2022-08-25 08:07:00.843467', '2022-08-25 08:07:00.843467', 919, 'https://www.fatsecret.com/calories-nutrition/generic/bagel-multigrain', 71, 'Generic'),
(616, 'Toasted Soy Bread', 0, 199.87, 59.01, 698.85, 4135, 'ME', '2022-08-25 08:07:00.849535', '2022-08-25 08:07:00.849535', 1402, 'https://www.fatsecret.com/calories-nutrition/generic/bread-soy-toasted', 71, 'Generic'),
(617, 'Whole Wheat Biscuit', 0, 46.31, 55.46, 221.37, 1489, 'ME', '2022-08-25 08:07:00.855691', '2022-08-25 08:07:00.855691', 479, 'https://www.fatsecret.com/calories-nutrition/generic/biscuit-whole-wheat', 71, 'Generic'),
(618, 'Scone with Fruit', 0, 44.43, 69.64, 261.75, 1838, 'ME', '2022-08-25 08:07:00.861874', '2022-08-25 08:07:00.861874', 522, 'https://www.fatsecret.com/calories-nutrition/generic/scone-with-fruit', 71, 'Generic'),
(619, 'Baked Corn Pone', 0, 23.57, 30.76, 226.37, 1237, 'ME', '2022-08-25 08:07:00.867136', '2022-08-25 08:07:00.867136', 589, 'https://www.fatsecret.com/calories-nutrition/generic/corn-pone-baked', 71, 'Generic'),
(620, 'Johnnycake', 0, 80.33, 68.33, 405.61, 2580, 'ME', '2022-08-25 08:07:00.873453', '2022-08-25 08:07:00.873453', 945, 'https://www.fatsecret.com/calories-nutrition/generic/johnnycake', 71, 'Generic'),
(621, 'Angel Food Cake with Icing', 0, 49.64, 2.09, 662.02, 2801, 'ME', '2022-08-25 08:07:00.882452', '2022-08-25 08:07:00.882452', 1045, 'https://www.fatsecret.com/calories-nutrition/generic/cake-angel-food-with-icing', 71, 'Generic'),
(622, 'Applesauce Cake without Icing', 0, 31.72, 122.77, 550.6, 3330, 'ME', '2022-08-25 08:07:00.889169', '2022-08-25 08:07:00.889169', 930, 'https://www.fatsecret.com/calories-nutrition/generic/cake-applesauce-without-icing', 71, 'Generic'),
(623, 'Banana Cake with Icing', 0, 55.14, 115.85, 900.99, 4765, 'ME', '2022-08-25 08:07:00.895791', '2022-08-25 08:07:00.895791', 1594, 'https://www.fatsecret.com/calories-nutrition/generic/cake-banana-with-icing', 71, 'Generic'),
(624, 'Diet Cheesecake', 0, 7.73, 12.34, 40.6, 302, 'CA', '2022-08-25 08:07:00.902674', '2022-08-25 08:07:00.902674', 135, 'https://www.fatsecret.com/calories-nutrition/generic/cheesecake-diet', 71, 'Generic'),
(625, 'Diet Cheesecake with Fruit', 0, 7.47, 12.28, 43.37, 310, 'CA', '2022-08-25 08:07:00.909873', '2022-08-25 08:07:00.909873', 145, 'https://www.fatsecret.com/calories-nutrition/generic/cheesecake-diet-with-fruit', 71, 'Generic'),
(626, 'Chocolate Cake with Mayonnaise or Salad Dressing', 0, 44.08, 263.35, 965.27, 6205, 'ME', '2022-08-25 08:07:00.915877', '2022-08-25 08:07:00.915877', 1563, 'https://www.fatsecret.com/calories-nutrition/generic/cake-chocolate-made-with-mayonnaise-or-salad-dressing', 71, 'Generic'),
(627, 'Diet Chocolate Cake with Icing', 0, 4.6, 5.08, 33.96, 184, 'CA', '2022-08-25 08:07:00.923370', '2022-08-25 08:07:00.923370', 61, 'https://www.fatsecret.com/calories-nutrition/generic/cake-chocolate-with-icing-diet', 71, 'Generic'),
(628, 'Chocolate Devil\'s Food or Fudge Cake with Icing, Coating or Filling (Pudding-Type Mix, Lite)', 0, 58.38, 143.01, 1005.13, 5300, 'ME', '2022-08-25 08:07:00.929533', '2022-08-25 08:07:00.929533', 1631, 'https://www.fatsecret.com/calories-nutrition/generic/cake-chocolate-devils-food-or-fudge-pudding-type-mix-made-by-lite-recipe-(eggs-and-water-added-to-dry-mix-no-oil-added-to-dry-mix)-with-icing-coating-or-filling', 71, 'Generic'),
(629, 'Chocolate Devil\'s Food or Fudge Cake without Icing or Filling (Pudding Type Mix, Cholesterol Free)', 0, 53.34, 184.68, 480.75, 3664, 'ME', '2022-08-25 08:07:00.937513', '2022-08-25 08:07:00.937513', 1121, 'https://www.fatsecret.com/calories-nutrition/generic/cake-chocolate-devils-food-or-fudge-pudding-type-mix-made-by-cholesterol-free-recipe-(water-oil-and-egg-whites-added-to-dry-mix)-without-icing-or-filling', 71, 'Generic'),
(630, 'Chocolate Devil\'s Food or Fudge Cake with Light Icing, Coating or Filling (Pudding Type Mix)', 0, 52.27, 230.15, 864.57, 5557, 'ME', '2022-08-25 08:07:00.946221', '2022-08-25 08:07:00.946221', 1574, 'https://www.fatsecret.com/calories-nutrition/generic/cake-chocolate-devils-food-or-fudge-pudding-type-mix-made-by-cholesterol-free-recipe-(water-oil-and-egg-whites-added-to-dry-mix)-with-light-icing-coating-or-filling', 71, 'Generic'),
(631, 'Chocolate Devil\'s Food or Fudge Cake (Pudding Type Mix)', 0, 53.71, 252.51, 915.75, 5921, 'ME', '2022-08-25 08:07:00.951427', '2022-08-25 08:07:00.951427', 1618, 'https://www.fatsecret.com/calories-nutrition/generic/cake-chocolate-devils-food-or-fudge-pudding-type-mix-(oil-eggs-and-water-added-to-dry-mix)', 71, 'Generic'),
(632, 'Poor Man\'s (Spice-Type) Cake without Icing', 0, 57.87, 121.31, 877.62, 4807, 'ME', '2022-08-25 08:07:00.956665', '2022-08-25 08:07:00.956665', 1507, 'https://www.fatsecret.com/calories-nutrition/generic/cake-poor-mans-(spice-type)-without-icing', 71, 'Generic'),
(633, 'Gingerbread Cake without Icing', 0, 30.44, 77.1, 383.81, 2340, 'ME', '2022-08-25 08:07:00.962683', '2022-08-25 08:07:00.962683', 757, 'https://www.fatsecret.com/calories-nutrition/generic/cake-gingerbread-without-icing', 71, 'Generic'),
(634, 'Chocolate Frozen Yogurt and Cake Layer with Icing', 0, 4.97, 16.46, 58.36, 391, 'CA', '2022-08-25 08:07:00.968920', '2022-08-25 08:07:00.968920', 127, 'https://www.fatsecret.com/calories-nutrition/generic/cake-frozen-yogurt-and-cake-layer-chocolate-with-icing', 71, 'Generic'),
(635, 'Lowfat Lemon Cake', 0, 36.44, 113.07, 806.71, 4343, 'ME', '2022-08-25 08:07:00.975221', '2022-08-25 08:07:00.975221', 1248, 'https://www.fatsecret.com/calories-nutrition/generic/cake-lemon-lowfat', 71, 'Generic'),
(636, 'Lowfat Lemon Cake without Icing', 0, 41.49, 75.59, 516.28, 2911, 'ME', '2022-08-25 08:07:00.981206', '2022-08-25 08:07:00.981206', 924, 'https://www.fatsecret.com/calories-nutrition/generic/cake-lemon-lowfat-without-icing', 71, 'Generic'),
(637, 'Raisin Nut Cake', 0, 59.6, 140.41, 621.02, 3913, 'ME', '2022-08-25 08:07:00.987398', '2022-08-25 08:07:00.987398', 1066, 'https://www.fatsecret.com/calories-nutrition/generic/cake-raisin-nut-without-icing', 71, 'Generic'),
(638, 'Raisin-Nut Cake (with Icing)', 0, 62.79, 155.58, 753.38, 4563, 'ME', '2022-08-25 08:07:00.993756', '2022-08-25 08:07:00.993756', 1271, 'https://www.fatsecret.com/calories-nutrition/generic/cake-raisin-nut-with-icing', 71, 'Generic'),
(639, 'Spice Cake with Icing', 0, 47.76, 120.07, 635.84, 3775, 'ME', '2022-08-25 08:07:01.000067', '2022-08-25 08:07:01.000067', 1137, 'https://www.fatsecret.com/calories-nutrition/generic/cake-spice-with-icing', 71, 'Generic'),
(640, 'Rum Flavored Cake (Sopa Borracha)', 0, 77.38, 41.55, 1210.31, 5766, 'ME', '2022-08-25 08:07:01.006919', '2022-08-25 08:07:01.006919', 2120, 'https://www.fatsecret.com/calories-nutrition/generic/cake-rum-flavored-without-icing-(sopa-borracha)', 71, 'Generic'),
(641, 'Tres Leche Cake', 0, 110.36, 174.69, 754.26, 4945, 'ME', '2022-08-25 08:07:01.014491', '2022-08-25 08:07:01.014491', 2010, 'https://www.fatsecret.com/calories-nutrition/generic/cake-tres-leche', 71, 'Generic'),
(642, 'Chiffon Cake', 0, 69.46, 197.79, 825.73, 5295, 'ME', '2022-08-25 08:07:01.020848', '2022-08-25 08:07:01.020848', 1557, 'https://www.fatsecret.com/calories-nutrition/generic/cake-chiffon', 71, 'Generic'),
(643, 'Chiffon Cake without Icing', 0, 71.67, 154.22, 577, 3952, 'ME', '2022-08-25 08:07:01.027114', '2022-08-25 08:07:01.027114', 1209, 'https://www.fatsecret.com/calories-nutrition/generic/cake-chiffon-without-icing', 71, 'Generic'),
(644, 'White Cake Mix with Icing (Egg Whites and Water Added)', 0, 44.48, 141.87, 1026.73, 5428, 'ME', '2022-08-25 08:07:01.032797', '2022-08-25 08:07:01.032797', 1508, 'https://www.fatsecret.com/calories-nutrition/generic/cake-white-standard-type-mix-(egg-whites-and-water-added-to-mix)-with-icing', 71, 'Generic'),
(645, 'White Cake Pudding Mix (Oil, Egg Whites, and Water Added)', 0, 39.54, 187.2, 862.57, 5172, 'ME', '2022-08-25 08:07:01.039291', '2022-08-25 08:07:01.039291', 1417, 'https://www.fatsecret.com/calories-nutrition/generic/cake-white-pudding-type-mix-(oil-egg-whites-and-water-added-to-dry-mix)', 71, 'Generic'),
(646, 'Yellow Cake Mix without Icing (Egg Yellows and Water Added)', 0, 41.67, 84.16, 492.86, 2884, 'ME', '2022-08-25 08:07:01.047345', '2022-08-25 08:07:01.047345', 904, 'https://www.fatsecret.com/calories-nutrition/generic/cake-yellow-standard-type-mix-(eggs-and-water-added-to-dry-mix)-without-icing', 71, 'Generic'),
(647, 'Yellow Cake Pudding Mix (Oil, Egg Yellows, and Water Added)', 0, 49, 206.86, 871.83, 5435, 'ME', '2022-08-25 08:07:01.052447', '2022-08-25 08:07:01.052447', 1485, 'https://www.fatsecret.com/calories-nutrition/generic/cake-yellow-pudding-type-mix-(oil-eggs-and-water-added-to-dry-mix)', 71, 'Generic'),
(648, 'Almond Cookie', 0, 103.02, 331.97, 557.24, 5508, 'ME', '2022-08-25 08:07:01.058212', '2022-08-25 08:07:01.058212', 1080, 'https://www.fatsecret.com/calories-nutrition/generic/cookie-almond', 71, 'Generic'),
(649, 'Applesauce Cookie', 0, 51.05, 121.45, 638.94, 3734, 'ME', '2022-08-25 08:07:01.064296', '2022-08-25 08:07:01.064296', 1023, 'https://www.fatsecret.com/calories-nutrition/generic/cookie-applesauce', 71, 'Generic'),
(650, 'Coconut and Nut Cookie', 0, 58.92, 288.85, 869.83, 6178, 'ME', '2022-08-25 08:07:01.069464', '2022-08-25 08:07:01.069464', 1364, 'https://www.fatsecret.com/calories-nutrition/generic/cookie-coconut-and-nut', 71, 'Generic'),
(651, 'Lebkuchen Cookie', 0, 168.89, 147.12, 1967.11, 9608, 'ME', '2022-08-25 08:07:01.076077', '2022-08-25 08:07:01.076077', 2502, 'https://www.fatsecret.com/calories-nutrition/generic/cookie-lebkuchen', 71, 'Generic'),
(652, 'Pumpkin Cookie', 0, 66.83, 243.29, 696.05, 5064, 'ME', '2022-08-25 08:07:01.082778', '2022-08-25 08:07:01.082778', 1305, 'https://www.fatsecret.com/calories-nutrition/generic/cookie-pumpkin', 71, 'Generic'),
(653, 'Butter or Sugar Cookie with Chocolate Icing or Filling', 0, 44.28, 113.23, 698.08, 3930, 'ME', '2022-08-25 08:07:01.088443', '2022-08-25 08:07:01.088443', 1016, 'https://www.fatsecret.com/calories-nutrition/generic/cookie-butter-or-sugar-with-chocolate-icing-or-filling', 71, 'Generic'),
(654, 'Fried Apple Pie', 0, 36.19, 259.17, 482.49, 4364, 'ME', '2022-08-25 08:07:01.093595', '2022-08-25 08:07:01.093595', 1164, 'https://www.fatsecret.com/calories-nutrition/generic/pie-apple-fried-pie', 71, 'Generic'),
(655, 'Apple Pie (One Crust)', 0, 15.68, 80.12, 337.96, 2096, 'ME', '2022-08-25 08:07:01.099725', '2022-08-25 08:07:01.099725', 866, 'https://www.fatsecret.com/calories-nutrition/generic/pie-apple-one-crust', 71, 'Generic'),
(656, 'Blackberry Pie (Two Crust)', 0, 36.94, 163.16, 467.02, 3420, 'ME', '2022-08-25 08:07:01.105885', '2022-08-25 08:07:01.105885', 1305, 'https://www.fatsecret.com/calories-nutrition/generic/pie-blackberry-two-crust', 71, 'Generic'),
(657, 'Berry Pie (One Crust)', 0, 16.89, 100.17, 380.19, 2431, 'ME', '2022-08-25 08:07:01.112800', '2022-08-25 08:07:01.112800', 976, 'https://www.fatsecret.com/calories-nutrition/generic/pie-berry-not-blackberry-blueberry-boysenberry-huckleberry-raspberry-or-strawberry-one-crust', 71, 'Generic'),
(658, 'Blueberry Pie (Individual Size or Tart)', 0, 39.95, 197.65, 550.05, 4066, 'ME', '2022-08-25 08:07:01.117990', '2022-08-25 08:07:01.117990', 1407, 'https://www.fatsecret.com/calories-nutrition/generic/pie-blueberry-individual-size-or-tart', 71, 'Generic'),
(659, 'Peach Pie (One Crust)', 0, 21.11, 76.78, 362.47, 2170, 'ME', '2022-08-25 08:07:01.123943', '2022-08-25 08:07:01.123943', 982, 'https://www.fatsecret.com/calories-nutrition/generic/pie-peach-one-crust', 71, 'Generic'),
(660, 'Pear Pie (Individual Size or Tart)', 0, 37.36, 185.14, 522.84, 3845, 'ME', '2022-08-25 08:07:01.130319', '2022-08-25 08:07:01.130319', 1363, 'https://www.fatsecret.com/calories-nutrition/generic/pie-pear-individual-size-or-tart', 71, 'Generic'),
(661, 'Raisin Pie (Two Crust)', 0, 32.16, 134.13, 451.89, 3069, 'ME', '2022-08-25 08:07:01.138318', '2022-08-25 08:07:01.138318', 1223, 'https://www.fatsecret.com/calories-nutrition/generic/pie-raisin-two-crust', 71, 'Generic'),
(662, 'Raspberry Pie (One Crust)', 0, 21.29, 95.66, 379.43, 2399, 'ME', '2022-08-25 08:07:01.146244', '2022-08-25 08:07:01.146244', 1000, 'https://www.fatsecret.com/calories-nutrition/generic/pie-raspberry-one-crust', 71, 'Generic'),
(663, 'Rhubarb Pie (Individual Size or Tart)', 0, 37.24, 177.89, 393.12, 3308, 'ME', '2022-08-25 08:07:01.152897', '2022-08-25 08:07:01.152897', 1040, 'https://www.fatsecret.com/calories-nutrition/generic/pie-rhubarb-individual-size-or-tart', 71, 'Generic'),
(664, 'Apple-Sour Cream Pie', 0, 21.18, 103.9, 329.36, 2283, 'ME', '2022-08-25 08:07:01.160739', '2022-08-25 08:07:01.160739', 1103, 'https://www.fatsecret.com/calories-nutrition/generic/pie-apple-sour-cream', 71, 'Generic'),
(665, 'Cherry Pie made with Cream Cheese and Sour Cream', 0, 62.42, 240.77, 716.7, 5171, 'ME', '2022-08-25 08:07:01.167472', '2022-08-25 08:07:01.167472', 1814, 'https://www.fatsecret.com/calories-nutrition/generic/pie-cherry-made-with-cream-cheese-and-sour-cream', 71, 'Generic'),
(666, 'Coconut Cream Pie (Individual Size or Tart)', 0, 66.94, 153.88, 313.19, 2890, 'ME', '2022-08-25 08:07:01.174064', '2022-08-25 08:07:01.174064', 1235, 'https://www.fatsecret.com/calories-nutrition/generic/pie-coconut-cream-individual-size-or-tart', 71, 'Generic'),
(667, 'Custard Pie (Individual Size or Tart)', 0, 66.67, 69.25, 308.81, 2129, 'ME', '2022-08-25 08:07:01.180393', '2022-08-25 08:07:01.180393', 1170, 'https://www.fatsecret.com/calories-nutrition/generic/pie-custard-individual-size-or-tart', 71, 'Generic'),
(668, 'Lemon Cream Pie (Individual Size or Tart)', 0, 64.32, 183.29, 536.48, 4003, 'ME', '2022-08-25 08:07:01.186936', '2022-08-25 08:07:01.186936', 1380, 'https://www.fatsecret.com/calories-nutrition/generic/pie-lemon-cream-individual-size-or-tart', 71, 'Generic'),
(669, 'Peanut Butter Cream Pie', 0, 103.12, 186.82, 432.91, 3742, 'ME', '2022-08-25 08:07:01.194317', '2022-08-25 08:07:01.194317', 1286, 'https://www.fatsecret.com/calories-nutrition/generic/pie-peanut-butter-cream', 71, 'Generic'),
(670, 'Pumpkin Pie (Individual Size or Tart)', 0, 70.63, 183.95, 304, 3115, 'ME', '2022-08-25 08:07:01.200407', '2022-08-25 08:07:01.200407', 1343, 'https://www.fatsecret.com/calories-nutrition/generic/pie-pumpkin-individual-size-or-tart', 71, 'Generic'),
(671, 'Sweetpotato Pie', 0, 54.42, 125.23, 289.61, 2485, 'ME', '2022-08-25 08:07:01.207686', '2022-08-25 08:07:01.207686', 1388, 'https://www.fatsecret.com/calories-nutrition/generic/pie-sweetpotato', 71, 'Generic'),
(672, 'Pudding Pie (Flavors Other Than Chocolate)', 0, 29.68, 84.69, 205.55, 1701, 'ME', '2022-08-25 08:07:01.214431', '2022-08-25 08:07:01.214431', 763, 'https://www.fatsecret.com/calories-nutrition/generic/pie-pudding-flavors-other-than-chocolate', 71, 'Generic'),
(673, 'Peach Cobbler', 0, 24.57, 47.6, 376.79, 1984, 'ME', '2022-08-25 08:07:01.220614', '2022-08-25 08:07:01.220614', 1028, 'https://www.fatsecret.com/calories-nutrition/generic/cobbler-peach', 71, 'Generic'),
(674, 'Pear Cobbler', 0, 20.92, 46.69, 414.13, 2102, 'ME', '2022-08-25 08:07:01.225941', '2022-08-25 08:07:01.225941', 1011, 'https://www.fatsecret.com/calories-nutrition/generic/cobbler-pear', 71, 'Generic'),
(675, 'Berry Fritter', 0, 39.31, 153.09, 218.59, 2378, 'ME', '2022-08-25 08:07:01.231680', '2022-08-25 08:07:01.231680', 729, 'https://www.fatsecret.com/calories-nutrition/generic/fritter-berry', 71, 'Generic'),
(676, 'Blueberry Crisp', 0, 18.76, 102.24, 421.07, 2599, 'ME', '2022-08-25 08:07:01.238954', '2022-08-25 08:07:01.238954', 1019, 'https://www.fatsecret.com/calories-nutrition/generic/crisp-blueberry', 71, 'Generic'),
(677, 'Sopaipilla', 0, 25.34, 91.93, 188.93, 1689, 'ME', '2022-08-25 08:07:01.245601', '2022-08-25 08:07:01.245601', 469, 'https://www.fatsecret.com/calories-nutrition/generic/sopaipilla-without-syrup-or-honey', 71, 'Generic'),
(678, 'Fruit Filled Crepe', 0, 58.57, 88.94, 339.03, 2348, 'ME', '2022-08-25 08:07:01.251560', '2022-08-25 08:07:01.251560', 1276, 'https://www.fatsecret.com/calories-nutrition/generic/crepe-dessert-type-fruit-filled', 71, 'Generic'),
(679, 'Berry Strudel', 0, 48.55, 85.89, 647.04, 3472, 'ME', '2022-08-25 08:07:01.257659', '2022-08-25 08:07:01.257659', 1383, 'https://www.fatsecret.com/calories-nutrition/generic/strudel-berry', 71, 'Generic'),
(680, 'Baklava', 0, 82.12, 355.81, 461.09, 5246, 'ME', '2022-08-25 08:07:01.263603', '2022-08-25 08:07:01.263603', 1226, 'https://www.fatsecret.com/calories-nutrition/generic/baklava', 71, 'Generic'),
(681, 'Basbousa (Semolina Dessert Dish)', 0, 85.29, 174.16, 679.95, 4563, 'ME', '2022-08-25 08:07:01.269367', '2022-08-25 08:07:01.269367', 1702, 'https://www.fatsecret.com/calories-nutrition/generic/basbousa-(semolina-dessert-dish)', 71, 'Generic'),
(682, 'Chocolate Doughnut with Icing (Raised or Yeast)', 0, 5.35, 17.61, 45.75, 345, 'CA', '2022-08-25 08:07:01.276461', '2022-08-25 08:07:01.276461', 89, 'https://www.fatsecret.com/calories-nutrition/generic/doughnut-chocolate-raised-or-yeast-with-chocolate-icing', 71, 'Generic'),
(683, 'Crumb or Quick-Bread Type Coffee Cake with Fruit', 0, 41.58, 65.7, 413.56, 2376, 'ME', '2022-08-25 08:07:01.282942', '2022-08-25 08:07:01.282942', 707, 'https://www.fatsecret.com/calories-nutrition/generic/coffee-cake-crumb-or-quick-bread-type-with-fruit', 71, 'Generic'),
(684, 'Cheese Filled Crumb or Quick-Bread Type Coffee Cake', 0, 77.94, 110.88, 342.23, 2677, 'ME', '2022-08-25 08:07:01.290391', '2022-08-25 08:07:01.290391', 881, 'https://www.fatsecret.com/calories-nutrition/generic/coffee-cake-crumb-or-quick-bread-type-cheese-filled', 71, 'Generic'),
(685, 'No Added Fat Wheat Crispbread', 0, 84.65, 8.07, 632.33, 3011, 'ME', '2022-08-25 08:07:01.297930', '2022-08-25 08:07:01.297930', 747, 'https://www.fatsecret.com/calories-nutrition/generic/crispbread-wheat-no-added-fat', 71, 'Generic'),
(686, 'Puffed Wheat Cake', 0, 16.21, 2.14, 76.26, 366, 'CA', '2022-08-25 08:07:01.306134', '2022-08-25 08:07:01.306134', 101, 'https://www.fatsecret.com/calories-nutrition/generic/puffed-wheat-cake', 71, 'Generic'),
(687, 'Buttered Popcorn Popped in Oil', 0, 0.83, 4.59, 6.33, 68, 'CA', '2022-08-25 08:07:01.314966', '2022-08-25 08:07:01.314966', 12, 'https://www.fatsecret.com/calories-nutrition/generic/popcorn-popped-in-oil-buttered', 71, 'Generic'),
(688, 'Pancakes with Chocolate Chips', 0, 29.06, 49.78, 147.32, 1111, 'ME', '2022-08-25 08:07:01.321720', '2022-08-25 08:07:01.321720', 503, 'https://www.fatsecret.com/calories-nutrition/generic/pancakes-with-chocolate-chips', 71, 'Generic'),
(689, 'Buckwheat Pancakes', 0, 29.07, 27.36, 104.07, 763, 'ME', '2022-08-25 08:07:01.327891', '2022-08-25 08:07:01.327891', 429, 'https://www.fatsecret.com/calories-nutrition/generic/pancakes-buckwheat', 71, 'Generic'),
(690, 'Puerto Rican Style Bread Fritters (Torrejas, Galician Fritters)', 0, 52.76, 105.91, 562.93, 3483, 'ME', '2022-08-25 08:07:01.334090', '2022-08-25 08:07:01.334090', 1290, 'https://www.fatsecret.com/calories-nutrition/generic/bread-fritters-puerto-rican-style-(torrejas-galician-fritters)', 71, 'Generic'),
(691, 'Spinach Macaroni (Fat Not Added in Cooking)', 0, 13.35, 1.57, 74.8, 371, 'BA', '2022-08-25 08:07:01.342074', '2022-08-25 08:07:01.342074', 275, 'https://www.fatsecret.com/calories-nutrition/generic/macaroni-cooked-spinach-fat-not-added-in-cooking', 71, 'Generic'),
(692, 'Spinach Macaroni (Fat Added in Cooking)', 0, 13.34, 11.47, 74.82, 461, 'BA', '2022-08-25 08:07:01.348772', '2022-08-25 08:07:01.348772', 285, 'https://www.fatsecret.com/calories-nutrition/generic/macaroni-cooked-spinach-fat-added-in-cooking', 71, 'Generic'),
(693, 'Noodles (Fat Added in Cooking)', 0, 7.26, 7.85, 40.25, 261, 'BA', '2022-08-25 08:07:01.355009', '2022-08-25 08:07:01.355009', 165, 'https://www.fatsecret.com/calories-nutrition/generic/noodles-cooked-fat-added-in-cooking', 71, 'Generic'),
(694, 'Spinach Noodles (Fat Not Added in Cooking)', 0, 13.36, 1.58, 74.8, 372, 'BA', '2022-08-25 08:07:01.362518', '2022-08-25 08:07:01.362518', 310, 'https://www.fatsecret.com/calories-nutrition/generic/noodles-cooked-spinach-fat-not-added-in-cooking', 71, 'Generic'),
(695, 'Chow Fun Rice Noodles (Fat Added in Cooking)', 0, 5.86, 11.31, 78.92, 448, 'BA', '2022-08-25 08:07:01.368868', '2022-08-25 08:07:01.368868', 347, 'https://www.fatsecret.com/calories-nutrition/generic/chow-fun-rice-noodles-cooked-fat-added-in-cooking', 71, 'Generic'),
(696, 'Whole Wheat Spaghetti (Fat Added in Cooking)', 0, 7.47, 5.3, 37.15, 214, 'BA', '2022-08-25 08:07:01.374909', '2022-08-25 08:07:01.374909', 145, 'https://www.fatsecret.com/calories-nutrition/generic/spaghetti-cooked-whole-wheat-fat-added-in-cooking', 71, 'Generic'),
(697, 'Buckwheat Groats (Fat Not Added in Cooking)', 0, 6.7, 1.23, 39.47, 183, 'BA', '2022-08-25 08:07:01.380770', '2022-08-25 08:07:01.380770', 199, 'https://www.fatsecret.com/calories-nutrition/generic/buckwheat-groats-cooked-fat-not-added-in-cooking', 71, 'Generic'),
(698, 'Fat Added in Cooking Cooked Buckwheat Groats', 0, 6.7, 8.68, 39.66, 250, 'BA', '2022-08-25 08:07:01.386781', '2022-08-25 08:07:01.386781', 208, 'https://www.fatsecret.com/calories-nutrition/generic/buckwheat-groats-cooked-fat-added-in-cooking', 71, 'Generic'),
(699, 'Grits (Fat Not Added in Cooking)', 0, 2.87, 0.4, 25.99, 122, 'BA', '2022-08-25 08:07:01.393016', '2022-08-25 08:07:01.393016', 266, 'https://www.fatsecret.com/calories-nutrition/generic/grits-cooked-corn-or-hominy-regular-fat-not-added-in-cooking', 71, 'Generic'),
(700, 'Grits', 0, 2.81, 0.37, 25.28, 119, 'BA', '2022-08-25 08:07:01.398992', '2022-08-25 08:07:01.398992', 265, 'https://www.fatsecret.com/calories-nutrition/generic/grits-cooked-corn-or-hominy-regular', 71, 'Generic'),
(701, 'Quick or Instant Grits with Cheese', 0, 9.12, 9.06, 27.61, 229, 'BA', '2022-08-25 08:07:01.404855', '2022-08-25 08:07:01.404855', 293, 'https://www.fatsecret.com/calories-nutrition/generic/grits-cooked-corn-or-hominy-with-cheese-quick-or-instant-ns-as-to-fat-added-in-cooking', 71, 'Generic'),
(702, 'Quick or Instant Grits with Cheese (Fat Not Added in Cooking)', 0, 9.2, 9.08, 28.3, 232, 'BA', '2022-08-25 08:07:01.411132', '2022-08-25 08:07:01.411132', 294, 'https://www.fatsecret.com/calories-nutrition/generic/grits-cooked-corn-or-hominy-with-cheese-quick-or-instant-fat-not-added-in-cooking', 71, 'Generic'),
(703, 'Quick Grits with Cheese (Fat Not Added in Cooking)', 0, 40.26, 41.54, 78.95, 855, 'ME', '2022-08-25 08:07:01.417314', '2022-08-25 08:07:01.417314', 713, 'https://www.fatsecret.com/calories-nutrition/generic/grits-cooked-corn-or-hominy-with-cheese-quick-fat-not-added-in-cooking', 71, 'Generic'),
(704, 'Quick Grits with Cheese (Fat Added in Cooking)', 0, 40.26, 54.65, 79.28, 974, 'ME', '2022-08-25 08:07:01.424396', '2022-08-25 08:07:01.424396', 727, 'https://www.fatsecret.com/calories-nutrition/generic/grits-cooked-corn-or-hominy-with-cheese-quick-fat-added-in-cooking', 71, 'Generic'),
(705, 'Cornmeal Mush made with Water', 0, 23.41, 4.57, 214.42, 1013, 'ME', '2022-08-25 08:07:01.430173', '2022-08-25 08:07:01.430173', 1089, 'https://www.fatsecret.com/calories-nutrition/generic/cornmeal-mush-made-with-water', 71, 'Generic'),
(706, 'Cornmeal Mush made with Milk', 0, 67.47, 33.62, 235.58, 1530, 'ME', '2022-08-25 08:07:01.435244', '2022-08-25 08:07:01.435244', 1117, 'https://www.fatsecret.com/calories-nutrition/generic/cornmeal-mush-made-with-milk', 71, 'Generic'),
(707, 'Lime-Treated Cornmeal (Masa Harina)', 0, 26.63, 10.76, 217.37, 1044, 'ME', '2022-08-25 08:07:01.442853', '2022-08-25 08:07:01.442853', 1065, 'https://www.fatsecret.com/calories-nutrition/generic/cornmeal-lime-treated-cooked-(masa-harina)', 71, 'Generic'),
(708, 'Instant Oatmeal (Fat Added in Cooking)', 0, 3.88, 7.49, 28.83, 193, 'BA', '2022-08-25 08:07:01.449755', '2022-08-25 08:07:01.449755', 165, 'https://www.fatsecret.com/calories-nutrition/generic/oatmeal-cooked-instant-fat-added-in-cooking', 71, 'Generic'),
(709, 'Quick or Instant Oatmeal made with Milk (Fat Not Added in Cooking)', 0, 14.95, 7.67, 39.82, 285, 'BA', '2022-08-25 08:07:01.456977', '2022-08-25 08:07:01.456977', 285, 'https://www.fatsecret.com/calories-nutrition/generic/oatmeal-quick-or-instant-made-with-milk-fat-not-added-in-cooking', 71, 'Generic'),
(710, 'Quick or Instant Oatmeal made with Milk (Fat Added in Cooking)', 0, 14.97, 15.32, 40.01, 354, 'BA', '2022-08-25 08:07:01.464441', '2022-08-25 08:07:01.464441', 295, 'https://www.fatsecret.com/calories-nutrition/generic/oatmeal-quick-or-instant-made-with-milk-fat-added-in-cooking', 71, 'Generic'),
(711, 'White Rice', 0, 4.24, 0.45, 44.5, 206, 'BA', '2022-08-25 08:07:01.472701', '2022-08-25 08:07:01.472701', 160, 'https://www.fatsecret.com/calories-nutrition/generic/rice-white-cooked-regular', 71, 'Generic'),
(712, 'White and Wild Rice (Fat Added in Cooking)', 0, 15.74, 15.38, 149.72, 812, 'ME', '2022-08-25 08:07:01.479795', '2022-08-25 08:07:01.479795', 725, 'https://www.fatsecret.com/calories-nutrition/generic/rice-white-and-wild-cooked-fat-added-in-cooking', 71, 'Generic'),
(713, 'White and Wild Rice', 0, 15.74, 15.38, 149.72, 812, 'ME', '2022-08-25 08:07:01.485053', '2022-08-25 08:07:01.485053', 725, 'https://www.fatsecret.com/calories-nutrition/generic/rice-white-and-wild-cooked', 71, 'Generic'),
(714, 'Brown and Wild Rice (Fat Added in Cooking)', 0, 17.05, 18.93, 145.45, 820, 'ME', '2022-08-25 08:07:01.491198', '2022-08-25 08:07:01.491198', 725, 'https://www.fatsecret.com/calories-nutrition/generic/rice-brown-and-wild-cooked-fat-added-in-cooking', 71, 'Generic'),
(715, 'Puerto Rican Style White Rice (Arroz Blanco)', 0, 40.13, 71.28, 449.35, 2647, 'ME', '2022-08-25 08:07:01.499191', '2022-08-25 08:07:01.499191', 1231, 'https://www.fatsecret.com/calories-nutrition/generic/rice-white-cooked-with-(fat)-oil-puerto-rican-style-(arroz-blanco)', 71, 'Generic'),
(716, 'Chocolate Wheat Cereal made with Milk', 0, 43.47, 14.89, 131.68, 787, 'ME', '2022-08-25 08:07:01.505876', '2022-08-25 08:07:01.505876', 846, 'https://www.fatsecret.com/calories-nutrition/generic/wheat-cereal-chocolate-flavored-cooked-made-with-milk', 71, 'Generic'),
(717, 'Nasi', 0, 3, 39.8, 0.3, 180, 'BA', '2022-08-25 08:07:01.514129', '2022-08-25 08:07:01.514129', 100, 'KZGPI-1990', 39, 'Serealia'),
(718, 'Nasi tim', 0, 2.4, 26, 0.4, 120, 'BA', '2022-08-25 08:07:01.521127', '2022-08-25 08:07:01.521127', 100, 'OKN-1992', 39, 'Serealia'),
(719, 'Tapai beras', 0, 1.7, 22.4, 0.3, 99, 'CA', '2022-08-25 08:07:01.526404', '2022-08-25 08:07:01.526404', 100, 'KZGMI-2001', 39, 'Serealia'),
(720, 'Tepung beras, mentah', 0, 7, 80, 0.5, 353, 'BA', '2022-08-25 08:07:01.532576', '2022-08-25 08:07:01.532576', 100, 'DABM-1964', 39, 'Serealia'),
(721, 'Nasi beras merah', 0, 2.8, 32.5, 0.4, 149, 'BA', '2022-08-25 08:07:01.539096', '2022-08-25 08:07:01.539096', 100, 'KZGPI-1990', 39, 'Serealia'),
(722, 'Bihun, mentah', 0, 4.7, 82.1, 0.1, 348, 'BA', '2022-08-25 08:07:01.547848', '2022-08-25 08:07:01.547848', 100, 'DABM-1964', 39, 'Serealia'),
(723, 'Bihun goreng instan', 0, 6.1, 80.3, 3.9, 381, 'BA', '2022-08-25 08:07:01.554074', '2022-08-25 08:07:01.554074', 100, 'KZGMS-1993', 39, 'Serealia'),
(724, 'Bihun Jagung, mentah', 0, 0.5, 87.4, 0.3, 354, 'BA', '2022-08-25 08:07:01.562206', '2022-08-25 08:07:01.562206', 100, 'BKP', 39, 'Serealia'),
(725, 'Nasi jagung', 0, 8.8, 79.5, 0.5, 357, 'BA', '2022-08-25 08:07:01.568225', '2022-08-25 08:07:01.568225', 100, 'BKP', 39, 'Serealia'),
(726, 'Jagung muda, rebus', 0, 5, 30.3, 0.7, 142, 'BA', '2022-08-25 08:07:01.574270', '2022-08-25 08:07:01.574270', 100, 'KZGPI-1990', 39, 'Serealia'),
(727, 'Jagung kuning, tepung', 0, 9.2, 73.7, 3.9, 355, 'BA', '2022-08-25 08:07:01.579976', '2022-08-25 08:07:01.579976', 100, 'DABM-1964', 39, 'Serealia'),
(728, 'Jagung kuning pipil, rebus', 0, 3.8, 28.4, 3.5, 154, 'BA', '2022-08-25 08:07:01.585847', '2022-08-25 08:07:01.585847', 100, 'KZGPI-1990', 39, 'Serealia'),
(729, 'Tepung jagung putih', 0, 9.2, 73.7, 3.9, 355, 'BA', '2022-08-25 08:07:01.591925', '2022-08-25 08:07:01.591925', 100, 'DABM-1964', 39, 'Serealia'),
(730, 'Ketupat ketan', 0, 4, 38.6, 4.6, 212, 'BA', '2022-08-25 08:07:01.597744', '2022-08-25 08:07:01.597744', 100, 'KZGPI-1990', 39, 'Serealia'),
(731, 'Ketan hitam, matang', 0, 4, 37.3, 1.2, 181, 'BA', '2022-08-25 08:07:01.604658', '2022-08-25 08:07:01.604658', 100, 'KZGPI-1990', 39, 'Serealia'),
(732, 'Tapai ketan hitam', 0, 3.8, 34.4, 1, 166, 'BA', '2022-08-25 08:07:01.611991', '2022-08-25 08:07:01.611991', 100, 'KZGPI-1990', 39, 'Serealia'),
(733, 'Ketan putih, matang', 0, 3, 35.7, 0.4, 163, 'BA', '2022-08-25 08:07:01.618818', '2022-08-25 08:07:01.618818', 100, 'KZGPI-1990', 39, 'Serealia');
INSERT INTO `base_makanan` (`id`, `nama`, `porsi`, `protein`, `lemak`, `karbo`, `energi`, `jenis`, `created_at`, `updated_at`, `berat_porsi`, `sumber`, `besar_porsi_id`, `kelompok`) VALUES
(734, 'Tapai ketan putih', 0, 3, 37.5, 0.5, 172, 'BA', '2022-08-25 08:07:01.625017', '2022-08-25 08:07:01.625017', 100, 'KZGPI-1990', 39, 'Serealia'),
(735, 'Maizena, tepung', 0, 0.3, 85, 0, 341, 'BA', '2022-08-25 08:07:01.631330', '2022-08-25 08:07:01.631330', 100, 'DABM-1964', 39, 'Serealia'),
(736, 'Makaroni, mentah', 0, 8.7, 78.7, 0.4, 353, 'BA', '2022-08-25 08:07:01.637707', '2022-08-25 08:07:01.637707', 100, 'DABM-1964', 39, 'Serealia'),
(737, 'Mi basah', 0, 0.6, 14, 3.3, 88, 'BA', '2022-08-25 08:07:01.644840', '2022-08-25 08:07:01.644840', 100, 'DABM-1964', 39, 'Serealia'),
(738, 'Mi kering', 0, 10, 6.3, 1.7, 339, 'BA', '2022-08-25 08:07:01.650911', '2022-08-25 08:07:01.650911', 100, 'KZGPI-1990', 39, 'Serealia'),
(739, 'Misoa', 0, 8.5, 78, 2.2, 345, 'BA', '2022-08-25 08:07:01.659020', '2022-08-25 08:07:01.659020', 100, 'KZGPI-1990', 39, 'Serealia'),
(740, 'Roti putih', 0, 8, 50, 1.2, 248, 'BA', '2022-08-25 08:07:01.665913', '2022-08-25 08:07:01.665913', 100, 'DABM-1964', 39, 'Serealia'),
(741, 'Tepung terigu', 0, 9, 77.2, 1, 333, 'BA', '2022-08-25 08:07:01.672725', '2022-08-25 08:07:01.672725', 100, 'KZGPI-1990', 39, 'Serealia'),
(742, 'Amparan tatak', 0, 1.3, 34, 5.5, 191, 'CA', '2022-08-25 08:07:01.679440', '2022-08-25 08:07:01.679440', 100, 'KZGMI-2001', 39, 'Serealia'),
(743, 'Apang kukus, kue', 0, 3, 46.7, 0.3, 202, 'CA', '2022-08-25 08:07:01.688888', '2022-08-25 08:07:01.688888', 100, 'KZGMI-2001', 39, 'Serealia'),
(744, 'Apem, kue', 0, 2, 33.9, 0.5, 148, 'CA', '2022-08-25 08:07:01.694572', '2022-08-25 08:07:01.694572', 100, 'KZGMI-2001', 39, 'Serealia'),
(745, 'Biskuit', 0, 6.9, 75.1, 14.4, 458, 'CA', '2022-08-25 08:07:01.701226', '2022-08-25 08:07:01.701226', 100, 'DABM-1964', 39, 'Serealia'),
(746, 'Bakpia, kue', 0, 8.7, 44.1, 6.7, 272, 'CA', '2022-08-25 08:07:01.708556', '2022-08-25 08:07:01.708556', 100, 'KZGPI-1990', 39, 'Serealia'),
(747, 'Bakwan', 0, 8.2, 39, 10.2, 280, 'CA', '2022-08-25 08:07:01.713437', '2022-08-25 08:07:01.713437', 100, 'KZGPI-1990', 39, 'Serealia'),
(748, 'Bantal', 0, 3.3, 43.5, 0.3, 190, 'CA', '2022-08-25 08:07:01.718767', '2022-08-25 08:07:01.718767', 100, 'KZGMI-2001', 39, 'Serealia'),
(749, 'Baruasa', 0, 6.5, 79.3, 8.2, 417, 'CA', '2022-08-25 08:07:01.725795', '2022-08-25 08:07:01.725795', 100, 'KZGMI-2001', 39, 'Serealia'),
(750, 'Batar daan', 0, 2.2, 19.6, 2.2, 107, 'ME', '2022-08-25 08:07:01.732930', '2022-08-25 08:07:01.732930', 100, 'KZGMI-2001', 39, 'Serealia'),
(751, 'Bika ambon', 0, 2.1, 44.4, 1.5, 199, 'CA', '2022-08-25 08:07:01.740063', '2022-08-25 08:07:01.740063', 100, 'KZGPI-1990', 39, 'Serealia'),
(752, 'Bingka', 0, 5.3, 39.1, 10.6, 273, 'CA', '2022-08-25 08:07:01.747802', '2022-08-25 08:07:01.747802', 100, 'KZGMI-2001', 39, 'Serealia'),
(753, 'Bobengka', 0, 5.3, 45.2, 2.6, 225, 'CA', '2022-08-25 08:07:01.753962', '2022-08-25 08:07:01.753962', 100, 'KZGMI-2001', 39, 'Serealia'),
(754, 'Bolu peca', 0, 3.3, 35.6, 4.6, 197, 'CA', '2022-08-25 08:07:01.760041', '2022-08-25 08:07:01.760041', 100, 'KZGMI-2001', 39, 'Serealia'),
(755, 'Brem', 0, 3.4, 58, 0.4, 249, 'CA', '2022-08-25 08:07:01.765950', '2022-08-25 08:07:01.765950', 100, 'KZGPI-1990', 39, 'Serealia'),
(756, 'Bubur tinotuan (Manado)', 0, 2.3, 15.6, 0.2, 156, 'ME', '2022-08-25 08:07:01.772909', '2022-08-25 08:07:01.772909', 100, 'KZGMI-2001', 39, 'Serealia'),
(757, 'Cake tape', 0, 4.9, 50.1, 11.5, 323, 'CA', '2022-08-25 08:07:01.779621', '2022-08-25 08:07:01.779621', 100, 'KZGMI-2001', 39, 'Serealia'),
(758, 'Cangkuning', 0, 2.8, 31.4, 7.5, 204, 'CA', '2022-08-25 08:07:01.785477', '2022-08-25 08:07:01.785477', 100, 'KZGMI-2001', 39, 'Serealia'),
(759, 'Dodol bali', 0, 3.7, 65.9, 2.1, 298, 'CA', '2022-08-25 08:07:01.791423', '2022-08-25 08:07:01.791423', 100, 'KZGPI-1990', 39, 'Serealia'),
(760, 'Dodol galamai', 0, 0.4, 76.1, 3.8, 348, 'CA', '2022-08-25 08:07:01.796453', '2022-08-25 08:07:01.796453', 100, 'KZGMI-2001', 39, 'Serealia'),
(761, 'Dodol kedondong', 0, 1.9, 63.8, 7.6, 331, 'CA', '2022-08-25 08:07:01.804641', '2022-08-25 08:07:01.804641', 100, 'KZGPI-1990', 39, 'Serealia'),
(762, 'Dodol manado', 0, 4.3, 51.9, 16.5, 373, 'CA', '2022-08-25 08:07:01.811912', '2022-08-25 08:07:01.811912', 100, 'KZGMI-2001', 39, 'Serealia'),
(763, 'Emping beras', 0, 10.6, 85.3, 2.2, 403, 'BA', '2022-08-25 08:07:01.817368', '2022-08-25 08:07:01.817368', 100, 'KZGMI-2001', 39, 'Serealia'),
(764, 'Gemblong', 0, 1.7, 55.5, 5.4, 274, 'CA', '2022-08-25 08:07:01.825117', '2022-08-25 08:07:01.825117', 100, 'KZGPI-1990', 39, 'Serealia'),
(765, 'Gendar goreng', 0, 6.4, 32, 28.2, 407, 'CA', '2022-08-25 08:07:01.831792', '2022-08-25 08:07:01.831792', 100, 'KZGPI-1990', 39, 'Serealia'),
(766, 'Intip goreng', 0, 7.6, 62.3, 21.6, 474, 'CA', '2022-08-25 08:07:01.838001', '2022-08-25 08:07:01.838001', 100, 'KZGPI-1990', 39, 'Serealia'),
(767, 'Jagung gerontol', 0, 2.7, 33.3, 1.3, 156, 'ME', '2022-08-25 08:07:01.844768', '2022-08-25 08:07:01.844768', 100, 'KZGPI-1990', 39, 'Serealia'),
(768, 'Jagung titi', 0, 9.4, 79.1, 2.2, 374, 'CA', '2022-08-25 08:07:01.852207', '2022-08-25 08:07:01.852207', 100, 'KZGPI-1990', 39, 'Serealia'),
(769, 'Japilus', 0, 1.2, 67.3, 25.1, 500, 'CA', '2022-08-25 08:07:01.860191', '2022-08-25 08:07:01.860191', 100, 'KZGPI-1990', 39, 'Serealia'),
(770, 'Kakicak', 0, 3.4, 36.7, 15.1, 296, 'CA', '2022-08-25 08:07:01.866491', '2022-08-25 08:07:01.866491', 100, 'KZGMI-2001', 39, 'Serealia'),
(771, 'Kambose', 0, 3, 32.6, 2.4, 164, 'BA', '2022-08-25 08:07:01.872399', '2022-08-25 08:07:01.872399', 100, 'KZGMI-2001', 39, 'Serealia'),
(772, 'Keddo bodong', 0, 4.6, 55.2, 5.7, 290, 'CA', '2022-08-25 08:07:01.879365', '2022-08-25 08:07:01.879365', 100, 'KZGMI-2001', 39, 'Serealia'),
(773, 'Kelepon, kue', 0, 3.7, 41.8, 3.7, 215, 'CA', '2022-08-25 08:07:01.885309', '2022-08-25 08:07:01.885309', 100, 'KZGMI-2001', 39, 'Serealia'),
(774, 'Ketoprak', 0, 7.9, 13, 7.7, 153, 'ME', '2022-08-25 08:07:01.891327', '2022-08-25 08:07:01.891327', 100, 'KZGPI-1990', 39, 'Serealia'),
(775, 'Ketupat kandangan', 0, 2.2, 13.4, 5.2, 109, 'ME', '2022-08-25 08:07:01.897304', '2022-08-25 08:07:01.897304', 100, 'KZGMI-2001', 39, 'Serealia'),
(776, 'Koya', 0, 4.2, 77.5, 4.3, 366, 'BA', '2022-08-25 08:07:01.903612', '2022-08-25 08:07:01.903612', 100, 'KZGMI-2001', 39, 'Serealia'),
(777, 'Koyabu', 0, 3.4, 47.2, 4.3, 241, 'CA', '2022-08-25 08:07:01.909882', '2022-08-25 08:07:01.909882', 100, 'KZGMI-2001', 39, 'Serealia'),
(778, 'Kue ali', 0, 3.8, 64.5, 18.5, 440, 'CA', '2022-08-25 08:07:01.916116', '2022-08-25 08:07:01.916116', 100, 'KZGMI-2001', 39, 'Serealia'),
(779, 'Kue bangen', 0, 3.3, 74.2, 14.7, 442, 'CA', '2022-08-25 08:07:01.922595', '2022-08-25 08:07:01.922595', 100, 'KZGMI-2001', 39, 'Serealia'),
(780, 'Kue gelang', 0, 5.8, 70, 16.1, 448, 'CA', '2022-08-25 08:07:01.928694', '2022-08-25 08:07:01.928694', 100, 'KZGMI-2001', 39, 'Serealia'),
(781, 'Kue jahe', 0, 1.6, 84.6, 8.8, 425, 'CA', '2022-08-25 08:07:01.934110', '2022-08-25 08:07:01.934110', 100, 'KZGPI-1990', 39, 'Serealia'),
(782, 'Kue kelapa', 0, 5.6, 47.5, 42.1, 591, 'CA', '2022-08-25 08:07:01.940642', '2022-08-25 08:07:01.940642', 100, 'KZGMI-2001', 39, 'Serealia'),
(783, 'Kue koa', 0, 4.8, 79.3, 0.4, 340, 'CA', '2022-08-25 08:07:01.947356', '2022-08-25 08:07:01.947356', 100, 'KZGMI-2001', 39, 'Serealia'),
(784, 'Kue ku temu', 0, 3.5, 49.6, 0.2, 214, 'CA', '2022-08-25 08:07:01.953671', '2022-08-25 08:07:01.953671', 100, 'KZGMI-2001', 39, 'Serealia'),
(785, 'Kue lumpur', 0, 3.6, 44.1, 11.1, 291, 'CA', '2022-08-25 08:07:01.959816', '2022-08-25 08:07:01.959816', 100, 'KZGMS-1993', 39, 'Serealia'),
(786, 'Kue pelita', 0, 5.3, 17.6, 5.5, 141, 'CA', '2022-08-25 08:07:01.965470', '2022-08-25 08:07:01.965470', 100, 'KZGMI-2001', 39, 'Serealia'),
(787, 'Kue putu cangkir', 0, 5.3, 54.9, 7, 304, 'CA', '2022-08-25 08:07:01.971478', '2022-08-25 08:07:01.971478', 100, 'KZGPI-1990', 39, 'Serealia'),
(788, 'Kue sus', 0, 7.5, 24.8, 10.2, 221, 'CA', '2022-08-25 08:07:01.978384', '2022-08-25 08:07:01.978384', 100, 'KZGMS-1993', 39, 'Serealia'),
(789, 'Kue thipan', 0, 2.9, 49.5, 4.2, 247, 'CA', '2022-08-25 08:07:01.983940', '2022-08-25 08:07:01.983940', 100, 'KZGMI-2001', 39, 'Serealia'),
(790, 'Laksa/Putu mayang', 0, 1.7, 21.1, 3.4, 121, 'ME', '2022-08-25 08:07:01.989268', '2022-08-25 08:07:01.989268', 100, 'KZGMI-2001', 39, 'Serealia'),
(791, 'Lapis legit', 0, 6.6, 55.5, 15.7, 389, 'CA', '2022-08-25 08:07:01.994674', '2022-08-25 08:07:01.994674', 100, 'KZGPI-1990', 39, 'Serealia'),
(792, 'Lupis ketan', 0, 1.8, 34.5, 2.1, 164, 'CA', '2022-08-25 08:07:02.000648', '2022-08-25 08:07:02.000648', 100, 'KZGPI-1990', 39, 'Serealia'),
(793, 'Manan samin', 0, 3.4, 50.6, 18.1, 379, 'CA', '2022-08-25 08:07:02.008141', '2022-08-25 08:07:02.008141', 100, 'KZGMI-2001', 39, 'Serealia'),
(794, 'Martabak india', 0, 4.5, 24.3, 4.2, 153, 'BA', '2022-08-25 08:07:02.015262', '2022-08-25 08:07:02.015262', 100, 'KZGMI-2001', 39, 'Serealia'),
(795, 'Martabak mesir', 0, 5.1, 45, 8.6, 278, 'BA', '2022-08-25 08:07:02.022083', '2022-08-25 08:07:02.022083', 100, 'KZGMI-2001', 39, 'Serealia'),
(796, 'Mie aceh rebus', 0, 3, 18.1, 3.2, 113, 'ME', '2022-08-25 08:07:02.028270', '2022-08-25 08:07:02.028270', 100, 'KZGMI-2001', 39, 'Serealia'),
(797, 'Mie ayam', 0, 6.2, 10.5, 3.9, 102, 'ME', '2022-08-25 08:07:02.034392', '2022-08-25 08:07:02.034392', 100, 'KZGMS-1993', 39, 'Serealia'),
(798, 'Mie bakso', 0, 5.3, 16.4, 3, 114, 'ME', '2022-08-25 08:07:02.041429', '2022-08-25 08:07:02.041429', 100, 'KZGMS-1993', 39, 'Serealia'),
(799, 'Mie celon', 0, 3, 17.8, 2.1, 102, 'ME', '2022-08-25 08:07:02.047671', '2022-08-25 08:07:02.047671', 100, 'KZGMI-2001', 39, 'Serealia'),
(800, 'Mie pangsit basah', 0, 5.9, 9.4, 4.9, 105, 'ME', '2022-08-25 08:07:02.053789', '2022-08-25 08:07:02.053789', 100, 'KZGMS-1993', 39, 'Serealia'),
(801, 'Nasi gemuk', 0, 3.8, 24.4, 8.8, 192, 'ME', '2022-08-25 08:07:02.059809', '2022-08-25 08:07:02.059809', 100, 'KZGMI-2001', 39, 'Serealia'),
(802, 'Nasi gurih', 0, 4.7, 26, 7.5, 190, 'ME', '2022-08-25 08:07:02.065824', '2022-08-25 08:07:02.065824', 100, 'KZGMI-2001', 39, 'Serealia'),
(803, 'Nasi minyak', 0, 3.5, 37.1, 5, 207, 'ME', '2022-08-25 08:07:02.072919', '2022-08-25 08:07:02.072919', 100, 'KZGMI-2001', 39, 'Serealia'),
(804, 'Nasi rames', 0, 10.3, 19.1, 4.2, 155, 'ME', '2022-08-25 08:07:02.079350', '2022-08-25 08:07:02.079350', 100, 'KZGMS-1993', 39, 'Serealia'),
(805, 'Nopia spesial', 0, 5.3, 74.3, 7.6, 387, 'CA', '2022-08-25 08:07:02.085198', '2022-08-25 08:07:02.085198', 100, 'KZGPI-1990', 39, 'Serealia'),
(806, 'Onde-onde', 0, 4, 57.9, 9.8, 336, 'CA', '2022-08-25 08:07:02.091494', '2022-08-25 08:07:02.091494', 100, 'KZGMI-2001', 39, 'Serealia'),
(807, 'Padamaran', 0, 3.9, 18.8, 8.9, 171, 'CA', '2022-08-25 08:07:02.097663', '2022-08-25 08:07:02.097663', 100, 'KZGMI-2001', 39, 'Serealia'),
(808, 'Pastel', 0, 4.5, 42.4, 13.3, 307, 'CA', '2022-08-25 08:07:02.104102', '2022-08-25 08:07:02.104102', 100, 'KZGMS-1993', 39, 'Serealia'),
(809, 'Pulut', 0, 2.6, 44.4, 3.1, 216, 'CA', '2022-08-25 08:07:02.110236', '2022-08-25 08:07:02.110236', 100, 'KZGMI-2001', 39, 'Serealia'),
(810, 'Pundut nasi', 0, 1.9, 15.1, 4.1, 104, 'CA', '2022-08-25 08:07:02.118273', '2022-08-25 08:07:02.118273', 100, 'KZGMI-2001', 39, 'Serealia'),
(811, 'Spaghetti', 0, 7.4, 22.6, 2.1, 139, 'BA', '2022-08-25 08:07:02.123859', '2022-08-25 08:07:02.123859', 100, 'KZGMS-1993', 39, 'Serealia'),
(812, 'Srikaya ketan', 0, 2.7, 49.1, 6.4, 265, 'CA', '2022-08-25 08:07:02.130318', '2022-08-25 08:07:02.130318', 100, 'KZGMI-2001', 39, 'Serealia'),
(813, 'Sunduk lawang', 0, 1.9, 32.4, 1.3, 181, 'CA', '2022-08-25 08:07:02.137668', '2022-08-25 08:07:02.137668', 100, 'KZGMI-2001', 39, 'Serealia'),
(814, 'Tipa-tipa', 0, 6.2, 79.8, 1.2, 355, 'BA', '2022-08-25 08:07:02.145318', '2022-08-25 08:07:02.145318', 100, 'KZGPI-1990', 39, 'Serealia'),
(815, 'Wajit camilan', 0, 6.3, 63.3, 2.7, 303, 'CA', '2022-08-25 08:07:02.151847', '2022-08-25 08:07:02.151847', 100, 'KZGPI-1990', 39, 'Serealia'),
(816, 'Widaran', 0, 1.3, 80.7, 10.7, 424, 'CA', '2022-08-25 08:07:02.159719', '2022-08-25 08:07:02.159719', 100, 'KZGPI-1990', 39, 'Serealia'),
(817, 'Wingko babat', 0, 3.2, 51.4, 15.1, 355, 'CA', '2022-08-25 08:07:02.165734', '2022-08-25 08:07:02.165734', 100, 'KZGPI-1990', 39, 'Serealia'),
(818, 'Yangko', 0, 3, 58.1, 1.1, 254, 'CA', '2022-08-25 08:07:02.171756', '2022-08-25 08:07:02.171756', 100, 'KZGPI-1990', 39, 'Serealia'),
(819, 'Putri hijau', 0, 5.4, 37.2, 2.1, 189, 'CA', '2022-08-25 08:07:02.178001', '2022-08-25 08:07:02.178001', 100, 'KGZMI-2001', 39, 'Serealia'),
(820, 'Beras giling, mentah', 0, 8.4, 77.1, 1.7, 357, 'BA', '2022-08-25 08:07:02.185168', '2022-08-25 08:07:02.185168', 100, 'KZGMI-2001', 39, 'Serealia'),
(821, 'Beras giling var pelita, mentah', 0, 9.5, 77.1, 1.4, 369, 'BA', '2022-08-25 08:07:02.191435', '2022-08-25 08:07:02.191435', 100, 'KZGPI-1990', 39, 'Serealia'),
(822, 'Beras giling var rojolele, mentah', 0, 8.4, 77.1, 1.7, 357, 'BA', '2022-08-25 08:07:02.197736', '2022-08-25 08:07:02.197736', 100, 'KZGPI-1990', 39, 'Serealia'),
(823, 'Beras hitam, mentah', 0, 8, 76.9, 1.3, 351, 'BA', '2022-08-25 08:07:02.204315', '2022-08-25 08:07:02.204315', 100, 'KZGMI-2001', 39, 'Serealia'),
(824, 'Beras jagung kuning, kering, mentah', 0, 5.5, 82.7, 0.1, 358, 'BA', '2022-08-25 08:07:02.211613', '2022-08-25 08:07:02.211613', 100, 'KZGMI-2001', 39, 'Serealia'),
(825, 'Beras jagung putih, kering, mentah', 0, 4.8, 71.8, 0.1, 307, 'BA', '2022-08-25 08:07:02.217362', '2022-08-25 08:07:02.217362', 100, 'KZGMI-2001', 39, 'Serealia'),
(826, 'Beras ketan hitam tumbuk, mentah', 0, 8, 74.5, 2.3, 360, 'BA', '2022-08-25 08:07:02.224280', '2022-08-25 08:07:02.224280', 100, 'KZGPI-1990', 39, 'Serealia'),
(827, 'Beras ketan putih tumbuk, mentah', 0, 7.4, 78.4, 0.8, 361, 'BA', '2022-08-25 08:07:02.230862', '2022-08-25 08:07:02.230862', 100, 'KZGPI-1990', 39, 'Serealia'),
(828, 'Beras ladang, mentah', 0, 7.5, 78, 3.8, 376, 'BA', '2022-08-25 08:07:02.237406', '2022-08-25 08:07:02.237406', 100, 'KZGMI-2001', 39, 'Serealia'),
(829, 'Beras menir, mentah', 0, 7.7, 73, 4.4, 362, 'BA', '2022-08-25 08:07:02.244596', '2022-08-25 08:07:02.244596', 100, 'DABM-1964', 39, 'Serealia'),
(830, 'Beras parboiled', 0, 6.8, 80, 0.6, 353, 'BA', '2022-08-25 08:07:02.250872', '2022-08-25 08:07:02.250872', 100, 'DABM-1964', 39, 'Serealia'),
(831, 'Beras tumbuk, mentah', 0, 7.8, 79.9, 0.4, 354, 'BA', '2022-08-25 08:07:02.257101', '2022-08-25 08:07:02.257101', 100, 'KZGMI-2001', 39, 'Serealia'),
(832, 'Beras tumbuk merah, mentah', 0, 7.3, 76.2, 0.9, 352, 'BA', '2022-08-25 08:07:02.263310', '2022-08-25 08:07:02.263310', 100, 'KZGPI-1990', 39, 'Serealia'),
(833, 'Cantel, mentah', 0, 11, 73, 3.3, 366, 'BA', '2022-08-25 08:07:02.269676', '2022-08-25 08:07:02.269676', 100, 'DABM-1964', 39, 'Serealia'),
(834, 'Jagung muda, kuning, mentah', 0, 5.1, 31.5, 0.7, 147, 'BA', '2022-08-25 08:07:02.276453', '2022-08-25 08:07:02.276453', 100, 'KZGPI-1990', 39, 'Serealia'),
(835, 'Jagung kuning pipil, kering, mentah', 0, 9.8, 69.1, 7.3, 366, 'BA', '2022-08-25 08:07:02.281435', '2022-08-25 08:07:02.281435', 100, 'KZGPI-1990', 39, 'Serealia'),
(836, 'Jagung pipil var. harapan, kering', 0, 6.2, 76.2, 5.1, 367, 'BA', '2022-08-25 08:07:02.287712', '2022-08-25 08:07:02.287712', 100, 'KZGPI-1990', 39, 'Serealia'),
(837, 'Jagung pipil var. metro, kering', 0, 5.5, 78, 4.6, 368, 'BA', '2022-08-25 08:07:02.293656', '2022-08-25 08:07:02.293656', 100, 'KZGPI-1990', 39, 'Serealia'),
(838, 'Jali, mentah', 0, 11, 61, 4, 324, 'BA', '2022-08-25 08:07:02.299559', '2022-08-25 08:07:02.299559', 100, 'DABM-1964', 39, 'Serealia'),
(839, 'Jawawut, mentah', 0, 9.7, 73.4, 3.5, 364, 'BA', '2022-08-25 08:07:02.307506', '2022-08-25 08:07:02.307506', 100, 'DABM-1964', 39, 'Serealia'),
(840, 'Jampang huma, mentah', 0, 6.2, 78.2, 1.4, 350, 'BA', '2022-08-25 08:07:02.314115', '2022-08-25 08:07:02.314115', 100, 'DABM-1964', 39, 'Serealia'),
(841, 'Ketela pohon/singkong kukus', 0, 1.2, 36.4, 0.3, 153, 'BA', '2022-08-25 08:07:02.320385', '2022-08-25 08:07:02.320385', 100, 'KZGPI-1990', 39, 'Umbi'),
(842, 'Suweg, talas, kukus', 0, 1.5, 21.9, 0.1, 93, 'BA', '2022-08-25 08:07:02.326775', '2022-08-25 08:07:02.326775', 100, 'KZGPI-1990', 39, 'Umbi'),
(843, 'Talas bogor, kukus', 0, 1.5, 28.2, 0.3, 120, 'BA', '2022-08-25 08:07:02.334779', '2022-08-25 08:07:02.334779', 100, 'KZGPI-1990', 39, 'Umbi'),
(844, 'Ubi jalar, kuning, kukus', 0, 0.7, 23.8, 0.3, 100, 'BA', '2022-08-25 08:07:02.344202', '2022-08-25 08:07:02.344202', 100, 'KZGPI-1990', 39, 'Umbi'),
(845, 'Ubi jalar tinta/ kemayung kukus', 0, 0.9, 39.8, 0.2, 165, 'BA', '2022-08-25 08:07:02.350831', '2022-08-25 08:07:02.350831', 100, 'KZGPI-1990', 39, 'Umbi'),
(846, 'Bagea kelapa asin', 0, 3.2, 78.1, 13.9, 450, 'CA', '2022-08-25 08:07:02.357272', '2022-08-25 08:07:02.357272', 100, 'KZGMI-2001', 39, 'Umbi'),
(847, 'Bagea kelapa manis', 0, 1.3, 80.6, 13.8, 452, 'CA', '2022-08-25 08:07:02.364008', '2022-08-25 08:07:02.364008', 100, 'KZGMI-2001', 39, 'Umbi'),
(848, 'Bagea kenari asin', 0, 3.2, 63.6, 29.1, 529, 'CA', '2022-08-25 08:07:02.370269', '2022-08-25 08:07:02.370269', 100, 'KZGMI-2001', 39, 'Umbi'),
(849, 'Bagea kenari manis', 0, 3.2, 64.2, 28.2, 523, 'CA', '2022-08-25 08:07:02.376949', '2022-08-25 08:07:02.376949', 100, 'KZGMI-2001', 39, 'Umbi'),
(850, 'Biji nangka/Biji salak', 0, 2.3, 51.1, 5.4, 262, 'BA', '2022-08-25 08:07:02.384624', '2022-08-25 08:07:02.384624', 100, 'KZGMI-2001', 39, 'Umbi'),
(851, 'Ceriping getuk singkong', 0, 1.2, 67.7, 20.7, 462, 'CA', '2022-08-25 08:07:02.391180', '2022-08-25 08:07:02.391180', 100, 'KZGPI-1990', 39, 'Umbi'),
(852, 'Geblek', 0, 0.4, 44.4, 1.7, 195, 'CA', '2022-08-25 08:07:02.398429', '2022-08-25 08:07:02.398429', 100, 'BKP', 39, 'Umbi'),
(853, 'Getuk goreng', 0, 1.3, 74.3, 6.4, 360, 'CA', '2022-08-25 08:07:02.406800', '2022-08-25 08:07:02.406800', 100, 'KZGPI-1990', 39, 'Umbi'),
(854, 'Getuk singkong', 0, 0.5, 47.4, 1.4, 204, 'CA', '2022-08-25 08:07:02.414199', '2022-08-25 08:07:02.414199', 100, 'KZGPI-1990', 39, 'Umbi'),
(855, 'Gurandil', 0, 0.5, 48.5, 2.5, 218, 'CA', '2022-08-25 08:07:02.419730', '2022-08-25 08:07:02.419730', 100, 'KZGPI-1990', 39, 'Umbi'),
(856, 'Kapurung', 0, 2, 7.8, 0.3, 41, 'ME', '2022-08-25 08:07:02.426566', '2022-08-25 08:07:02.426566', 100, 'KZGMI-2001', 39, 'Umbi'),
(857, 'Kecimpring singkong goreng', 0, 1.2, 73, 18.6, 464, 'CA', '2022-08-25 08:07:02.432254', '2022-08-25 08:07:02.432254', 100, 'KZGPI-1990', 39, 'Umbi'),
(858, 'Keripik gadung', 0, 2.8, 76, 14.5, 446, 'CA', '2022-08-25 08:07:02.440498', '2022-08-25 08:07:02.440498', 100, 'KZGPI-1990', 39, 'Umbi'),
(859, 'Keripik kentang', 0, 2.7, 67.1, 18.8, 448, 'CA', '2022-08-25 08:07:02.446683', '2022-08-25 08:07:02.446683', 100, 'KZGMI-2001', 39, 'Umbi'),
(860, 'Keripik singkong', 0, 0.9, 72, 20.7, 478, 'CA', '2022-08-25 08:07:02.453563', '2022-08-25 08:07:02.453563', 100, 'KZGPI-1990', 39, 'Umbi'),
(861, 'Keripik singkong berbumbu', 0, 2.2, 73.6, 19.7, 481, 'CA', '2022-08-25 08:07:02.461077', '2022-08-25 08:07:02.461077', 100, 'KZGPI-1990', 39, 'Umbi'),
(862, 'Keripik ubi', 0, 0.2, 67.6, 23.9, 486, 'CA', '2022-08-25 08:07:02.467467', '2022-08-25 08:07:02.467467', 100, 'KZGMI-2001', 39, 'Umbi'),
(863, 'Kerupuk cumi goreng', 0, 6.9, 71.3, 14.6, 444, 'CA', '2022-08-25 08:07:02.475022', '2022-08-25 08:07:02.475022', 100, 'KZGMI-2001', 39, 'Umbi'),
(864, 'Kerupuk kemplang (ikan) mentah', 0, 1.8, 78.5, 0.4, 325, 'CA', '2022-08-25 08:07:02.481326', '2022-08-25 08:07:02.481326', 100, 'KZGMI-2001', 39, 'Umbi'),
(865, 'Kerupuk kemplang goreng', 0, 5.6, 57.1, 28.1, 504, 'CA', '2022-08-25 08:07:02.486529', '2022-08-25 08:07:02.486529', 100, 'KZGPI-1990', 39, 'Umbi'),
(866, 'Kerupuk kemplang panggang', 0, 9.7, 76.9, 1.1, 356, 'CA', '2022-08-25 08:07:02.491668', '2022-08-25 08:07:02.491668', 100, 'KZGPI-1990', 39, 'Umbi'),
(867, 'Kerupuk mie kuning goreng', 0, 0.1, 71.3, 21.1, 476, 'CA', '2022-08-25 08:07:02.497684', '2022-08-25 08:07:02.497684', 100, 'KZGPI-1990', 39, 'Umbi'),
(868, 'Kerupuk udang goreng', 0, 4.7, 68.5, 20.5, 477, 'CA', '2022-08-25 08:07:02.506865', '2022-08-25 08:07:02.506865', 100, 'KZGMI-2001', 39, 'Umbi'),
(869, 'Kue bangket', 0, 1.5, 80.3, 1.2, 338, 'CA', '2022-08-25 08:07:02.514269', '2022-08-25 08:07:02.514269', 100, 'KZGMI-2001', 39, 'Umbi'),
(870, 'Kue putu singkong', 0, 1.2, 53.2, 0.5, 217, 'CA', '2022-08-25 08:07:02.520449', '2022-08-25 08:07:02.520449', 100, 'KZGMI-2001', 39, 'Umbi'),
(871, 'Lanting getuk', 0, 0.9, 80.4, 10.8, 422, 'CA', '2022-08-25 08:07:02.528187', '2022-08-25 08:07:02.528187', 100, 'KZGPI-1990', 39, 'Umbi'),
(872, 'Mie golosor', 0, 0.2, 15.9, 0.8, 71, 'ME', '2022-08-25 08:07:02.533910', '2022-08-25 08:07:02.533910', 100, 'KZGPI-1990', 39, 'Umbi'),
(873, 'Mie Bendo', 0, 0.3, 88, 0, 353, 'ME', '2022-08-25 08:07:02.541916', '2022-08-25 08:07:02.541916', 100, 'BKP', 39, 'Umbi'),
(874, 'Mie Sagu', 0, 0.2, 46.5, 0.4, 190, 'ME', '2022-08-25 08:07:02.548695', '2022-08-25 08:07:02.548695', 100, 'BKP', 39, 'Umbi'),
(875, 'Ongol-ongol sagu', 0, 0.3, 21.2, 2.7, 111, 'CA', '2022-08-25 08:07:02.554898', '2022-08-25 08:07:02.554898', 100, 'KZGPI-1990', 39, 'Umbi'),
(876, 'Nasi tiwul', 0, 0.9, 84.9, 0.9, 351, 'ME', '2022-08-25 08:07:02.560902', '2022-08-25 08:07:02.560902', 100, 'BKP', 39, 'Umbi'),
(877, 'Serimping talas kebumen', 0, 2.5, 69.2, 21.2, 478, 'CA', '2022-08-25 08:07:02.567461', '2022-08-25 08:07:02.567461', 100, 'KZGPI-1990', 39, 'Umbi'),
(878, 'Tapai singkong', 0, 1.4, 40.2, 0.3, 169, 'BA', '2022-08-25 08:07:02.574334', '2022-08-25 08:07:02.574334', 100, 'KZGPI-1990', 39, 'Umbi'),
(879, 'Tepung Arrowroot', 0, 0.7, 85.2, 0.2, 355, 'BA', '2022-08-25 08:07:02.579344', '2022-08-25 08:07:02.579344', 100, 'DABM-1964', 39, 'Umbi'),
(880, 'Tepung Ganyong', 0, 0.8, 83.6, 1.7, 353, 'BA', '2022-08-25 08:07:02.585701', '2022-08-25 08:07:02.585701', 100, 'BKP', 39, 'Umbi'),
(881, 'Tepung Gaplek', 0, 2.4, 83.1, 0.4, 345, 'BA', '2022-08-25 08:07:02.592006', '2022-08-25 08:07:02.592006', 100, 'BKP', 39, 'Umbi'),
(882, 'Tepung kentang, kering', 0, 0.3, 85.6, 0.1, 347, 'BA', '2022-08-25 08:07:02.597829', '2022-08-25 08:07:02.597829', 100, 'DABM-1964', 39, 'Umbi'),
(883, 'Tepung Mocaf', 0, 1.2, 85, 0.6, 350, 'BA', '2022-08-25 08:07:02.604911', '2022-08-25 08:07:02.604911', 100, 'BKP', 39, 'Umbi'),
(884, 'Tepung Sente', 0, 4, 76.7, 0.4, 326, 'BA', '2022-08-25 08:07:02.611864', '2022-08-25 08:07:02.611864', 100, 'BKP', 39, 'Umbi'),
(885, 'Tepung singkong/ Tapioka', 0, 1.1, 88.2, 0.5, 363, 'BA', '2022-08-25 08:07:02.617242', '2022-08-25 08:07:02.617242', 100, 'DABM-1964', 39, 'Umbi'),
(886, 'Tepung Tales Beneng', 0, 5.7, 76.1, 0.6, 332, 'BA', '2022-08-25 08:07:02.623172', '2022-08-25 08:07:02.623172', 100, 'BKP', 39, 'Umbi'),
(887, 'Tepung Ubi Ungu', 0, 2.8, 84.4, 0.6, 354, 'BA', '2022-08-25 08:07:02.629318', '2022-08-25 08:07:02.629318', 100, 'BKP', 39, 'Umbi'),
(888, 'Tiwul', 0, 2.4, 83.4, 1.1, 353, 'BA', '2022-08-25 08:07:02.636981', '2022-08-25 08:07:02.636981', 100, 'BKP', 39, 'Umbi'),
(889, 'Tiwul Instan', 0, 3.2, 76.5, 8.5, 395, 'BA', '2022-08-25 08:07:02.643397', '2022-08-25 08:07:02.643397', 100, 'BKP', 39, 'Umbi'),
(890, 'Ubi Cilembu', 0, 1.9, 44.3, 0.2, 186, 'CA', '2022-08-25 08:07:02.649034', '2022-08-25 08:07:02.649034', 100, 'BKP', 39, 'Umbi'),
(891, 'Bengkuang, segar', 0, 1.4, 12.8, 0.2, 59, 'BA', '2022-08-25 08:07:02.655255', '2022-08-25 08:07:02.655255', 100, 'DABM-1964', 39, 'Umbi'),
(892, 'Kentang, segar', 0, 2.1, 13.5, 0.2, 62, 'BA', '2022-08-25 08:07:02.662925', '2022-08-25 08:07:02.662925', 100, 'KZGPI-1990', 39, 'Umbi'),
(893, 'Kentang hitam, segar', 0, 0.9, 33.7, 0.4, 142, 'BA', '2022-08-25 08:07:02.669191', '2022-08-25 08:07:02.669191', 100, 'DABM-1964', 39, 'Umbi'),
(894, 'Keribang, ubi, segar', 0, 1.3, 29.8, 1.1, 137, 'BA', '2022-08-25 08:07:02.676052', '2022-08-25 08:07:02.676052', 100, 'KZGPI-1990', 39, 'Umbi'),
(895, 'Ketela pohon/ singkong, segar', 0, 1, 36.8, 0.3, 154, 'BA', '2022-08-25 08:07:02.681863', '2022-08-25 08:07:02.681863', 100, 'KZGPI-1990', 39, 'Umbi'),
(896, 'Lepok/Ubi rumput', 0, 2.8, 39.8, 1.2, 181, 'BA', '2022-08-25 08:07:02.687878', '2022-08-25 08:07:02.687878', 100, 'KZGMI-2001', 39, 'Umbi'),
(897, 'Ubi jalar, kuning, segar', 0, 0.5, 25.1, 0.4, 119, 'BA', '2022-08-25 08:07:02.702959', '2022-08-25 08:07:02.702959', 100, 'KZGMI-2001', 39, 'Umbi'),
(898, 'Ubi jalar manis, segar', 0, 1.5, 18.8, 0.2, 83, 'BA', '2022-08-25 08:07:02.708969', '2022-08-25 08:07:02.708969', 100, 'KZGPI-1990', 39, 'Umbi'),
(899, 'Ubi jalar merah, segar', 0, 1.6, 35.4, 0.3, 151, 'BA', '2022-08-25 08:07:02.714780', '2022-08-25 08:07:02.714780', 100, 'KZGPI-1990', 39, 'Umbi'),
(900, 'Ubi jalar putih, segar', 0, 0.4, 20.6, 0.4, 88, 'BA', '2022-08-25 08:07:02.722788', '2022-08-25 08:07:02.722788', 100, 'KZGMI-2001', 39, 'Umbi'),
(901, 'Ubi jalar tinta/ kemayung', 0, 0.5, 25.6, 0.4, 108, 'BA', '2022-08-25 08:07:02.730161', '2022-08-25 08:07:02.730161', 100, 'KZGMI-2001', 39, 'Umbi'),
(902, 'Umbi Uwi, segar', 0, 2.8, 82.3, 0.5, 120, 'BA', '2022-08-25 08:07:02.738227', '2022-08-25 08:07:02.738227', 100, 'BKP', 39, 'Umbi'),
(903, 'Kacang belimbing (kecipir), rebus', 0, 16.9, 17.5, 8.8, 204, 'BA', '2022-08-25 08:07:02.746191', '2022-08-25 08:07:02.746191', 100, 'KZGPI-1990', 39, 'Kacang'),
(904, 'Kacang bogor, goreng', 0, 12.7, 58.9, 23.2, 479, 'BA', '2022-08-25 08:07:02.752765', '2022-08-25 08:07:02.752765', 100, 'KZGPI-1990', 39, 'Kacang'),
(905, 'Kacang bogor, rebus', 0, 7.7, 27.1, 2.8, 161, 'BA', '2022-08-25 08:07:02.757819', '2022-08-25 08:07:02.757819', 100, 'KZGPI-1990', 39, 'Kacang'),
(906, 'Kacang gude, rebus', 0, 9, 27.5, 0.5, 147, 'BA', '2022-08-25 08:07:02.763056', '2022-08-25 08:07:02.763056', 100, 'KZGPI-1990', 39, 'Kacang'),
(907, 'Kacang hijau, rebus', 0, 8.7, 18.3, 0.5, 109, 'BA', '2022-08-25 08:07:02.769130', '2022-08-25 08:07:02.769130', 100, 'KZGPI-1990', 39, 'Kacang'),
(908, 'Kacang kedelai, goreng', 0, 32.2, 22.9, 37.7, 521, 'BA', '2022-08-25 08:07:02.775098', '2022-08-25 08:07:02.775098', 100, 'KZGPI-1990', 39, 'Kacang'),
(909, 'Kacang kedelai, rebus', 0, 20.2, 12.7, 8.2, 189, 'BA', '2022-08-25 08:07:02.781016', '2022-08-25 08:07:02.781016', 100, 'KZGPI-1990', 39, 'Kacang'),
(910, 'Kacang merah kering, rebus', 0, 10.3, 28.2, 0.9, 158, 'BA', '2022-08-25 08:07:02.787398', '2022-08-25 08:07:02.787398', 100, 'KZGPI-l990', 39, 'Kacang'),
(911, 'Kacang merah segar, rebus', 0, 10, 24.7, 1, 144, 'BA', '2022-08-25 08:07:02.793644', '2022-08-25 08:07:02.793644', 100, 'KZGPI-l990', 39, 'Kacang'),
(912, 'Kacang mete/biji jambu monyet, goreng', 0, 20.4, 19.8, 56.3, 629, 'BA', '2022-08-25 08:07:02.800156', '2022-08-25 08:07:02.800156', 100, 'KZGPI-1990', 39, 'Kacang'),
(913, 'Kacang tanah rebus dg kulit', 0, 13.5, 12.8, 31.2, 360, 'BA', '2022-08-25 08:07:02.806934', '2022-08-25 08:07:02.806934', 100, 'DABM-1964', 39, 'Kacang'),
(914, 'Kacang tanah, goreng', 0, 25.5, 25.5, 44.4, 564, 'BA', '2022-08-25 08:07:02.813894', '2022-08-25 08:07:02.813894', 100, 'KZGPI-l990', 39, 'Kacang'),
(915, 'Kacang tanah, rebus', 0, 10.6, 8, 18, 220, 'BA', '2022-08-25 08:07:02.820900', '2022-08-25 08:07:02.820900', 100, 'KZGPI-l990', 39, 'Kacang'),
(916, 'Kacang tolo / tunggak, rebus', 0, 10.7, 22.6, 1.1, 138, 'BA', '2022-08-25 08:07:02.828637', '2022-08-25 08:07:02.828637', 100, 'KZGPI-l990', 39, 'Kacang'),
(917, 'Ampas kacang hijau', 0, 3.7, 19.1, 0.6, 96, 'BA', '2022-08-25 08:07:02.835265', '2022-08-25 08:07:02.835265', 100, 'KZGPI-1990', 39, 'Kacang'),
(918, 'Ampas tahu, mentah', 0, 5, 8.1, 2.1, 67, 'BA', '2022-08-25 08:07:02.841910', '2022-08-25 08:07:02.841910', 100, 'KZGPI-1990', 39, 'Kacang'),
(919, 'Ampas tahu kukus', 0, 4.1, 10.7, 2.1, 75, 'BA', '2022-08-25 08:07:02.847876', '2022-08-25 08:07:02.847876', 100, 'KZGPI-1990', 39, 'Kacang'),
(920, 'Ampas tahu, kering', 0, 26.6, 41.3, 18.3, 414, 'BA', '2022-08-25 08:07:02.854634', '2022-08-25 08:07:02.854634', 100, 'DABM-1964', 39, 'Kacang'),
(921, 'Pepes oncom ampas tahu', 0, 5.2, 10.6, 1.8, 76, 'BA', '2022-08-25 08:07:02.861232', '2022-08-25 08:07:02.861232', 100, 'KZGPI-1990', 39, 'Kacang'),
(922, 'Dodol banjarmasin', 0, 2.6, 70, 8.6, 368, 'CA', '2022-08-25 08:07:02.868328', '2022-08-25 08:07:02.868328', 100, 'KZGMI-2001', 39, 'Kacang'),
(923, 'Emping (kerupuk melinjo)', 0, 12, 71.5, 1.5, 345, 'CA', '2022-08-25 08:07:02.875631', '2022-08-25 08:07:02.875631', 100, 'DABM-1964', 39, 'Kacang'),
(924, 'Emping komak', 0, 17.8, 60.7, 4.6, 355, 'CA', '2022-08-25 08:07:02.880479', '2022-08-25 08:07:02.880479', 100, 'KZGMI-2001', 39, 'Kacang'),
(925, 'Enting-enting gepuk kacang tanah', 0, 13.3, 52, 29.2, 524, 'CA', '2022-08-25 08:07:02.887399', '2022-08-25 08:07:02.887399', 100, 'KZGPI-1990', 39, 'Kacang'),
(926, 'Enting-enting wijen', 0, 18.2, 36.8, 38.4, 565, 'CA', '2022-08-25 08:07:02.895451', '2022-08-25 08:07:02.895451', 100, 'KZGPI-1990', 39, 'Kacang'),
(927, 'Geplak', 0, 1.4, 53.6, 14.4, 350, 'CA', '2022-08-25 08:07:02.903118', '2022-08-25 08:07:02.903118', 100, 'KZGMI-2001', 39, 'Kacang'),
(928, 'Geplak jahe', 0, 3.1, 57.7, 24.4, 462, 'CA', '2022-08-25 08:07:02.908754', '2022-08-25 08:07:02.908754', 100, 'KZGMI-2001', 39, 'Kacang'),
(929, 'Kacang atom', 0, 27.8, 28.8, 38.1, 533, 'CA', '2022-08-25 08:07:02.914959', '2022-08-25 08:07:02.914959', 100, 'KZGPI-1990', 39, 'Kacang'),
(930, 'Kacang goyang', 0, 14.7, 44.4, 31.1, 516, 'CA', '2022-08-25 08:07:02.921039', '2022-08-25 08:07:02.921039', 100, 'KZGMI-2001', 39, 'Kacang'),
(931, 'Kacang negara', 0, 18.4, 58.5, 19.1, 480, 'CA', '2022-08-25 08:07:02.927082', '2022-08-25 08:07:02.927082', 100, 'KZGMI-2001', 39, 'Kacang'),
(932, 'Kacang sukro', 0, 8.8, 57.7, 26.1, 484, 'CA', '2022-08-25 08:07:02.933136', '2022-08-25 08:07:02.933136', 100, 'KZGPI-1990', 39, 'Kacang'),
(933, 'Kacang tanah sari', 0, 25.5, 26, 43.8, 561, 'CA', '2022-08-25 08:07:02.940434', '2022-08-25 08:07:02.940434', 100, 'KZGPI-1990', 39, 'Kacang'),
(934, 'Keju kacang tanah (peanut butter)', 0, 27, 20.9, 49, 590, 'CA', '2022-08-25 08:07:02.946815', '2022-08-25 08:07:02.946815', 100, 'DABM-1964', 39, 'Kacang'),
(935, 'Kembang tahu', 0, 48.9, 23.3, 13.8, 380, 'CA', '2022-08-25 08:07:02.952028', '2022-08-25 08:07:02.952028', 100, 'KZGPI-1990', 39, 'Kacang'),
(936, 'Kembang tahu rebus', 0, 10.7, 4.7, 4, 90, 'CA', '2022-08-25 08:07:02.956985', '2022-08-25 08:07:02.956985', 100, 'KZGPI-1990', 39, 'Kacang'),
(937, 'Keripik oncom', 0, 8.3, 42.6, 43.8, 598, 'CA', '2022-08-25 08:07:02.963272', '2022-08-25 08:07:02.963272', 100, 'KZGPI-1990', 39, 'Kacang'),
(938, 'Keripik tempe', 0, 12.1, 41.7, 40.6, 581, 'CA', '2022-08-25 08:07:02.969756', '2022-08-25 08:07:02.969756', 100, 'KZGPI-1990', 39, 'Kacang'),
(939, 'Keripik tempe abadi besar', 0, 15.8, 39.8, 37.1, 556, 'CA', '2022-08-25 08:07:02.975962', '2022-08-25 08:07:02.975962', 100, 'KZGPI-1990', 39, 'Kacang'),
(940, 'Keripik tempe abadi murni', 0, 40.3, 11.6, 42.4, 542, 'CA', '2022-08-25 08:07:02.981804', '2022-08-25 08:07:02.981804', 100, 'KZGPI-1990', 39, 'Kacang'),
(941, 'Keripik tempe abadi sedang', 0, 12.3, 52.4, 27.9, 510, 'CA', '2022-08-25 08:07:02.988157', '2022-08-25 08:07:02.988157', 100, 'KZGPI-1990', 39, 'Kacang'),
(942, 'Keripik tempe abadi telur', 0, 20.8, 40.2, 31.7, 529, 'CA', '2022-08-25 08:07:02.994012', '2022-08-25 08:07:02.994012', 100, 'KZGPI-1990', 39, 'Kacang'),
(943, 'Keripik tempe abadi prima', 0, 16.7, 42, 33.9, 540, 'CA', '2022-08-25 08:07:03.000306', '2022-08-25 08:07:03.000306', 100, 'KZGPI-1990', 39, 'Kacang'),
(944, 'Kwaci', 0, 30.6, 13.8, 42.1, 515, 'CA', '2022-08-25 08:07:03.007352', '2022-08-25 08:07:03.007352', 100, 'DABM-1964', 39, 'Kacang'),
(945, 'Melinjo emping tebal goreng manis', 0, 10, 65.7, 16.4, 439, 'CA', '2022-08-25 08:07:03.013362', '2022-08-25 08:07:03.013362', 100, 'KZGPI-1990', 39, 'Kacang'),
(946, 'Melinjo emping tebal, goreng asin', 0, 11.1, 63, 16.2, 431, 'CA', '2022-08-25 08:07:03.019474', '2022-08-25 08:07:03.019474', 100, 'KZGPI-1990', 39, 'Kacang'),
(947, 'Melinjo emping tipis goreng', 0, 11.5, 59.1, 24.5, 485, 'CA', '2022-08-25 08:07:03.024433', '2022-08-25 08:07:03.024433', 100, 'KZGPI-1990', 39, 'Kacang'),
(948, 'Oncom', 0, 13, 22.6, 6, 187, 'BA', '2022-08-25 08:07:03.029375', '2022-08-25 08:07:03.029375', 100, 'DABM-1964', 39, 'Kacang'),
(949, 'Oncom ampas kacang hijau', 0, 14.9, 65.7, 6, 376, 'BA', '2022-08-25 08:07:03.035857', '2022-08-25 08:07:03.035857', 100, 'KZGPI-1990', 39, 'Kacang'),
(950, 'Oncom kacang hijau + singkong', 0, 11, 65.9, 5.3, 351, 'BA', '2022-08-25 08:07:03.043457', '2022-08-25 08:07:03.043457', 100, 'KZGPI-1990', 39, 'Kacang'),
(951, 'Oncom kacang tanah pepes', 0, 12.7, 13.7, 3.8, 132, 'CA', '2022-08-25 08:07:03.049486', '2022-08-25 08:07:03.049486', 100, 'KZGPI-1990', 39, 'Kacang'),
(952, 'Rempeyek kacang tanah', 0, 17.5, 44.3, 32.5, 513, 'CA', '2022-08-25 08:07:03.055608', '2022-08-25 08:07:03.055608', 100, 'KZGPI-1990', 39, 'Kacang'),
(953, 'Rempeyek kacang tolo', 0, 11.2, 59.7, 20.2, 451, 'CA', '2022-08-25 08:07:03.061571', '2022-08-25 08:07:03.061571', 100, 'KZGPI-1990', 39, 'Kacang'),
(954, 'Rempeyek kacang uci', 0, 17, 50.8, 27.6, 497, 'CA', '2022-08-25 08:07:03.067583', '2022-08-25 08:07:03.067583', 100, 'KZGPI-1990', 39, 'Kacang'),
(955, 'Sayur lebui', 0, 2.1, 12.5, 0.6, 64, 'ME', '2022-08-25 08:07:03.073490', '2022-08-25 08:07:03.073490', 100, 'KZGMI-2001', 39, 'Kacang'),
(956, 'Susu kedelai', 0, 3.5, 5, 2.5, 41, 'CA', '2022-08-25 08:07:03.079292', '2022-08-25 08:07:03.079292', 100, 'DABM-1964', 39, 'Kacang'),
(957, 'Tahu, mentah', 0, 10.9, 0.8, 4.7, 80, 'BA', '2022-08-25 08:07:03.085463', '2022-08-25 08:07:03.085463', 100, 'KZGPI-1990', 39, 'Kacang'),
(958, 'Tahu goreng', 0, 9.7, 2.5, 8.5, 115, 'BA', '2022-08-25 08:07:03.091426', '2022-08-25 08:07:03.091426', 100, 'KZGPI-1990', 39, 'Kacang'),
(959, 'Tahu telur', 0, 12.6, 24.6, 19.9, 328, 'BA', '2022-08-25 08:07:03.098760', '2022-08-25 08:07:03.098760', 100, 'KZGMS-1993', 39, 'Kacang'),
(960, 'Tempe bongkrek', 0, 4.4, 18.3, 3.5, 119, 'BA', '2022-08-25 08:07:03.105044', '2022-08-25 08:07:03.105044', 100, 'DABM-1964', 39, 'Kacang'),
(961, 'Tempe gembus P3G', 0, 5.7, 10.3, 1.3, 73, 'BA', '2022-08-25 08:07:03.111163', '2022-08-25 08:07:03.111163', 100, 'KZGPI-1990', 39, 'Kacang'),
(962, 'Tempe gembus yogya', 0, 6.8, 10.6, 0.7, 76, 'BA', '2022-08-25 08:07:03.118640', '2022-08-25 08:07:03.118640', 100, 'KZGPI-1990', 39, 'Kacang'),
(963, 'Tempe kacang babi', 0, 12.5, 21.9, 0.8, 139, 'BA', '2022-08-25 08:07:03.125002', '2022-08-25 08:07:03.125002', 100, 'KZGPI-1990', 39, 'Kacang'),
(964, 'Tempe kecipir (kacang belimbing)', 0, 17.5, 12.9, 10, 212, 'BA', '2022-08-25 08:07:03.132829', '2022-08-25 08:07:03.132829', 100, 'KZGPI-1990', 39, 'Kacang'),
(965, 'Tempe kedelai + jagung', 0, 12, 11.4, 5.5, 143, 'BA', '2022-08-25 08:07:03.140087', '2022-08-25 08:07:03.140087', 100, 'KZGPI-1990', 39, 'Kacang'),
(966, 'Tempe kedelai murni, goreng', 0, 24.5, 10.4, 26.6, 350, 'BA', '2022-08-25 08:07:03.145769', '2022-08-25 08:07:03.145769', 100, 'KZGPI-1990', 39, 'Kacang'),
(967, 'Tempe kedelai murni, mentah', 0, 20.8, 13.5, 8.8, 201, 'BA', '2022-08-25 08:07:03.151704', '2022-08-25 08:07:03.151704', 100, 'KZGPI-1990', 39, 'Kacang'),
(968, 'Tempe koro benguk', 0, 10.2, 23.2, 1.3, 141, 'BA', '2022-08-25 08:07:03.158283', '2022-08-25 08:07:03.158283', 100, 'DABM-1964', 39, 'Kacang'),
(969, 'Tempe lamtoro', 0, 10.7, 21.3, 0.5, 128, 'BA', '2022-08-25 08:07:03.164677', '2022-08-25 08:07:03.164677', 100, 'KZGPI-1990', 39, 'Kacang'),
(970, 'Tempe lamtoro var. gung dengan kulit', 0, 11.7, 19.6, 2.3, 146, 'BA', '2022-08-25 08:07:03.170612', '2022-08-25 08:07:03.170612', 100, 'KZGPI-1990', 39, 'Kacang'),
(971, 'Tempe lamtoro var. gung tanpa kulit', 0, 18, 13, 0.8, 131, 'BA', '2022-08-25 08:07:03.176008', '2022-08-25 08:07:03.176008', 100, 'KZGPI-1990', 39, 'Kacang'),
(972, 'Tempe pasar', 0, 14, 9.1, 7.7, 150, 'BA', '2022-08-25 08:07:03.180824', '2022-08-25 08:07:03.180824', 100, 'KZGPI-1990', 39, 'Kacang'),
(973, 'Kacang arab, kering', 0, 23.8, 60.2, 1.4, 330, 'BA', '2022-08-25 08:07:03.187005', '2022-08-25 08:07:03.187005', 100, 'DABM-1964', 39, 'Kacang'),
(974, 'Kacang babi, kering', 0, 30.4, 51.3, 3.2, 341, 'BA', '2022-08-25 08:07:03.192872', '2022-08-25 08:07:03.192872', 100, 'KZGPI-1990', 39, 'Kacang'),
(975, 'Kacang belimbing (kecipir), kering', 0, 34.4, 34.1, 16.9, 400, 'BA', '2022-08-25 08:07:03.198915', '2022-08-25 08:07:03.198915', 100, 'KZGPI-1990', 39, 'Kacang'),
(976, 'Kacang hijau, kering', 0, 22.9, 56.8, 1.5, 323, 'BA', '2022-08-25 08:07:03.204804', '2022-08-25 08:07:03.204804', 100, 'KZGPI-1990', 39, 'Kacang'),
(977, 'Kacang hitam, kering', 0, 16.6, 66.1, 1.7, 346, 'BA', '2022-08-25 08:07:03.210997', '2022-08-25 08:07:03.210997', 100, 'KZGMI-2001', 39, 'Kacang'),
(978, 'Kacang kapri, segar', 0, 6.7, 17.7, 0.4, 98, 'BA', '2022-08-25 08:07:03.217372', '2022-08-25 08:07:03.217372', 100, 'DABM-1964', 39, 'Kacang'),
(979, 'Kacang kedelai, kering', 0, 40.4, 24.9, 16.7, 381, 'BA', '2022-08-25 08:07:03.222369', '2022-08-25 08:07:03.222369', 100, 'KZGPI-1990', 39, 'Kacang'),
(980, 'Kacang kedelai, segar', 0, 30.2, 30.1, 15.6, 286, 'BA', '2022-08-25 08:07:03.227435', '2022-08-25 08:07:03.227435', 100, 'DABM-1964', 39, 'Kacang'),
(981, 'Kacang kincai, kering', 0, 19.9, 55, 16, 444, 'BA', '2022-08-25 08:07:03.234366', '2022-08-25 08:07:03.234366', 100, 'KZGMI-2001', 39, 'Kacang'),
(982, 'Kacang komak, segar', 0, 16.4, 55.8, 4.3, 327, 'BA', '2022-08-25 08:07:03.240937', '2022-08-25 08:07:03.240937', 100, 'KZGMI-2001', 39, 'Kacang'),
(983, 'Kacang kuning, kering', 0, 17, 66, 2.5, 355, 'BA', '2022-08-25 08:07:03.246844', '2022-08-25 08:07:03.246844', 100, 'KZGMI-2001', 39, 'Kacang'),
(984, 'Kacang lebui /iris, kering', 0, 16.5, 66.6, 1.5, 346, 'BA', '2022-08-25 08:07:03.254801', '2022-08-25 08:07:03.254801', 100, 'KZGMI-2001', 39, 'Kacang'),
(985, 'Kacang mentega, kering', 0, 16.7, 64.6, 2.1, 344, 'BA', '2022-08-25 08:07:03.261540', '2022-08-25 08:07:03.261540', 100, 'KZGMI-2001', 39, 'Kacang'),
(986, 'Kacang merah/banda, kering', 0, 13.9, 66.9, 3, 350, 'BA', '2022-08-25 08:07:03.268231', '2022-08-25 08:07:03.268231', 100, 'KZGMI-2001', 39, 'Kacang'),
(987, 'Kacang merah tua, kering', 0, 16.7, 63.2, 1.6, 280, 'BA', '2022-08-25 08:07:03.276007', '2022-08-25 08:07:03.276007', 100, 'KZGPI-l990', 39, 'Kacang'),
(988, 'Kacang merah, kering', 0, 22.1, 56.2, 1.1, 314, 'BA', '2022-08-25 08:07:03.281940', '2022-08-25 08:07:03.281940', 100, 'KZGPI-l990', 39, 'Kacang'),
(989, 'Kacang merah, segar', 0, 11, 28, 2.2, 171, 'BA', '2022-08-25 08:07:03.289233', '2022-08-25 08:07:03.289233', 100, 'KZGPI-l990', 39, 'Kacang'),
(990, 'Kacang mete/biji jambu monyet, segar', 0, 16.3, 28.7, 48.4, 616, 'BA', '2022-08-25 08:07:03.296699', '2022-08-25 08:07:03.296699', 100, 'KZGMI-2001', 39, 'Kacang'),
(991, 'Kacang panjang, biji, kering', 0, 17.3, 68.6, 1.5, 357, 'BA', '2022-08-25 08:07:03.304975', '2022-08-25 08:07:03.304975', 100, 'DABM-1964', 39, 'Kacang'),
(992, 'Kacang tanah sangan', 0, 29.5, 24.1, 43, 560, 'BA', '2022-08-25 08:07:03.311751', '2022-08-25 08:07:03.311751', 100, 'KZGPI-l990', 39, 'Kacang'),
(993, 'Kacang tanah sangan tanpa selaput', 0, 26.9, 23.6, 44.2, 559, 'BA', '2022-08-25 08:07:03.317464', '2022-08-25 08:07:03.317464', 100, 'DABM-1964', 39, 'Kacang'),
(994, 'Kacang tanah, kering', 0, 27.9, 17.4, 42.7, 525, 'BA', '2022-08-25 08:07:03.322471', '2022-08-25 08:07:03.322471', 100, 'KZGPI-l990', 39, 'Kacang'),
(995, 'Kacang tolo / tunggak, kering', 0, 24.4, 56.6, 1.9, 331, 'BA', '2022-08-25 08:07:03.327936', '2022-08-25 08:07:03.327936', 100, 'KZGPI-l990', 39, 'Kacang'),
(996, 'Kacang tunis, kering', 0, 12.2, 72.9, 1.2, 351, 'BA', '2022-08-25 08:07:03.334243', '2022-08-25 08:07:03.334243', 100, 'KZGMI-2001', 39, 'Kacang'),
(997, 'Kacang uci, kering', 0, 23.4, 60.6, 2.4, 358, 'BA', '2022-08-25 08:07:03.341777', '2022-08-25 08:07:03.341777', 100, 'KZGPI-l990', 39, 'Kacang'),
(998, 'Kacang urei, kering', 0, 12.8, 69.3, 1.8, 354, 'BA', '2022-08-25 08:07:03.347855', '2022-08-25 08:07:03.347855', 100, 'KZGMI-2001', 39, 'Kacang'),
(999, 'Kenari banda, kering', 0, 13.9, 13.7, 56.2, 616, 'BA', '2022-08-25 08:07:03.353914', '2022-08-25 08:07:03.353914', 100, 'KZGMI-2001', 39, 'Kacang'),
(1000, 'Kenari, kering', 0, 15, 13, 66, 657, 'BA', '2022-08-25 08:07:03.359680', '2022-08-25 08:07:03.359680', 100, 'DABM-1964', 39, 'Kacang'),
(1001, 'Komak polong, segar', 0, 3.3, 21.2, 0.1, 99, 'BA', '2022-08-25 08:07:03.364724', '2022-08-25 08:07:03.364724', 100, 'KZGMI-2001', 39, 'Kacang'),
(1002, 'Koro andong, kering', 0, 20.5, 61.6, 4.1, 356, 'BA', '2022-08-25 08:07:03.370628', '2022-08-25 08:07:03.370628', 100, 'KZGPI-1990', 39, 'Kacang'),
(1003, 'Koro benguk, biji, kering', 0, 24, 55, 3, 332, 'BA', '2022-08-25 08:07:03.376610', '2022-08-25 08:07:03.376610', 100, 'DABM-1964', 39, 'Kacang'),
(1004, 'Koro kerupuk, biji, segar', 0, 8.3, 22.1, 0.7, 125, 'BA', '2022-08-25 08:07:03.382810', '2022-08-25 08:07:03.382810', 100, 'DABM-1964', 39, 'Kacang'),
(1005, 'Koro loke, biji, segar', 0, 2.7, 7.9, 0.2, 33, 'BA', '2022-08-25 08:07:03.389226', '2022-08-25 08:07:03.389226', 100, 'DABM-1964', 39, 'Kacang'),
(1006, 'Koro roay, kering', 0, 12.5, 69.4, 2.1, 344, 'BA', '2022-08-25 08:07:03.395588', '2022-08-25 08:07:03.395588', 100, 'KZGPI-1990', 39, 'Kacang'),
(1007, 'Koro wedus, biji, kering', 0, 22.2, 61, 1.5, 338, 'BA', '2022-08-25 08:07:03.403038', '2022-08-25 08:07:03.403038', 100, 'DABM-1964', 39, 'Kacang'),
(1008, 'Lamtoro biji, muda, segar', 0, 5.7, 15.4, 0.3, 85, 'BA', '2022-08-25 08:07:03.409907', '2022-08-25 08:07:03.409907', 100, 'DABM-1964', 39, 'Kacang'),
(1009, 'Lamtoro biji, tua, segar', 0, 10.6, 26.2, 0.5, 148, 'BA', '2022-08-25 08:07:03.418363', '2022-08-25 08:07:03.418363', 100, 'DABM-1964', 39, 'Kacang'),
(1010, 'Lamtoro var. gung tanpa kulit', 0, 46.4, 32.5, 5.4, 367, 'BA', '2022-08-25 08:07:03.425586', '2022-08-25 08:07:03.425586', 100, 'KZGPI-1990', 39, 'Kacang'),
(1011, 'Lamtoro var. lokal dengan kulit', 0, 23.8, 59.7, 1.2, 336, 'BA', '2022-08-25 08:07:03.431171', '2022-08-25 08:07:03.431171', 100, 'KZGPI-1990', 39, 'Kacang'),
(1012, 'Nangka, biji, segar', 0, 4.2, 36.7, 0.1, 165, 'BA', '2022-08-25 08:07:03.438649', '2022-08-25 08:07:03.438649', 100, 'DABM-1964', 39, 'Kacang'),
(1013, 'Wijen, mentah', 0, 19.3, 18.1, 51.1, 568, 'BA', '2022-08-25 08:07:03.444350', '2022-08-25 08:07:03.444350', 100, 'DABM-1964', 39, 'Kacang'),
(1014, 'Bayam, kukus', 0, 1.3, 5.8, 0.7, 30, 'BA', '2022-08-25 08:07:03.451780', '2022-08-25 08:07:03.451780', 100, 'KZGPI-1990', 39, 'Sayur'),
(1015, 'Bayam, rebus', 0, 1.2, 3.7, 0.6, 23, 'BA', '2022-08-25 08:07:03.458174', '2022-08-25 08:07:03.458174', 100, 'KZGPI-1990', 39, 'Sayur'),
(1016, 'Buncis, rebus', 0, 2.2, 6.4, 0.2, 30, 'BA', '2022-08-25 08:07:03.464749', '2022-08-25 08:07:03.464749', 100, 'KZGPI-1990', 39, 'Sayur'),
(1017, 'Daun kacang panjang, kukus', 0, 3.7, 8, 0.3, 40, 'BA', '2022-08-25 08:07:03.472364', '2022-08-25 08:07:03.472364', 100, 'KZGPI-1990', 39, 'Sayur'),
(1018, 'Daun katuk, rebus', 0, 5.3, 9.1, 0.9, 53, 'BA', '2022-08-25 08:07:03.479158', '2022-08-25 08:07:03.479158', 100, 'KZGPI-1990', 39, 'Sayur'),
(1019, 'Daun kelor, rebus', 0, 6.1, 10, 0.9, 61, 'BA', '2022-08-25 08:07:03.485361', '2022-08-25 08:07:03.485361', 100, 'KZGPI-1990', 39, 'Sayur'),
(1020, 'Daun mengkudu, kukus', 0, 3.8, 11.5, 1.5, 63, 'BA', '2022-08-25 08:07:03.492916', '2022-08-25 08:07:03.492916', 100, 'KZGPI-1990', 39, 'Sayur'),
(1021, 'Daun singkong, rebus', 0, 3.7, 4.8, 0.6, 31, 'BA', '2022-08-25 08:07:03.500680', '2022-08-25 08:07:03.500680', 100, 'KZGPI-1990', 39, 'Sayur'),
(1022, 'Daun talas, rebus', 0, 1.3, 5.9, 0.2, 27, 'BA', '2022-08-25 08:07:03.508404', '2022-08-25 08:07:03.508404', 100, 'KZGPI-1990', 39, 'Sayur'),
(1023, 'Daun ubi merah, kukus', 0, 3.1, 13, 0.3, 56, 'BA', '2022-08-25 08:07:03.515805', '2022-08-25 08:07:03.515805', 100, 'KZGPI-1990', 39, 'Sayur'),
(1024, 'Kacang panjang, kukus', 0, 3, 7.6, 0.6, 39, 'BA', '2022-08-25 08:07:03.523255', '2022-08-25 08:07:03.523255', 100, 'KZGPI-1990', 39, 'Sayur'),
(1025, 'Kacang panjang, rebus', 0, 2.3, 5.8, 0.4, 30, 'BA', '2022-08-25 08:07:03.531425', '2022-08-25 08:07:03.531425', 100, 'KZGPI-1990', 39, 'Sayur'),
(1026, 'Kangkung, kukus', 0, 3.2, 4.7, 0.7, 30, 'BA', '2022-08-25 08:07:03.540122', '2022-08-25 08:07:03.540122', 100, 'KZGPI-1990', 39, 'Sayur'),
(1027, 'Kangkung, rebus', 0, 2.5, 3.1, 0.6, 22, 'BA', '2022-08-25 08:07:03.546987', '2022-08-25 08:07:03.546987', 100, 'KZGPI-1990', 39, 'Sayur'),
(1028, 'Paria putih, kukus', 0, 0.8, 3.4, 0.2, 16, 'BA', '2022-08-25 08:07:03.553875', '2022-08-25 08:07:03.553875', 100, 'KZGPI-1990', 39, 'Sayur'),
(1029, 'Selada, rebus', 0, 2.7, 2.9, 0.2, 19, 'BA', '2022-08-25 08:07:03.559160', '2022-08-25 08:07:03.559160', 100, 'KZGPI-1990', 39, 'Sayur'),
(1030, 'Taoge, goreng', 0, 3.2, 14, 2.1, 88, 'BA', '2022-08-25 08:07:03.565725', '2022-08-25 08:07:03.565725', 100, 'KZGPI-1990', 39, 'Sayur'),
(1031, 'Taoge, seduh', 0, 3, 4, 0.8, 28, 'BA', '2022-08-25 08:07:03.573702', '2022-08-25 08:07:03.573702', 100, 'KZGPI-1990', 39, 'Sayur'),
(1032, 'Terung panjang, kukus', 0, 1.8, 4.9, 0.1, 23, 'BA', '2022-08-25 08:07:03.581384', '2022-08-25 08:07:03.581384', 100, 'KZGPI-1990', 39, 'Sayur'),
(1033, 'Wortel, rebus', 0, 0.7, 6.3, 0.5, 28, 'BA', '2022-08-25 08:07:03.589676', '2022-08-25 08:07:03.589676', 100, 'KZGPI-1990', 39, 'Sayur'),
(1034, 'Wortel, kukus', 0, 1, 8.3, 0.6, 37, 'BA', '2022-08-25 08:07:03.595312', '2022-08-25 08:07:03.595312', 100, 'KZGPI-1990', 39, 'Sayur'),
(1035, 'Asinan Bogor, sayuran', 0, 3.9, 14.8, 2.6, 98, 'BA', '2022-08-25 08:07:03.601895', '2022-08-25 08:07:03.601895', 100, 'KZGMS-1993', 39, 'Sayur'),
(1036, 'Anyang, sayur', 0, 3.4, 10.3, 7.9, 126, 'BA', '2022-08-25 08:07:03.608250', '2022-08-25 08:07:03.608250', 100, 'KZGMI-2001', 39, 'Sayur'),
(1037, 'Ares, sayur', 0, 0.9, 11.2, 7.2, 113, 'BA', '2022-08-25 08:07:03.614416', '2022-08-25 08:07:03.614416', 100, 'KZGMI-2001', 39, 'Sayur'),
(1038, 'Arwan sirsir', 0, 2.4, 10.7, 25, 277, 'BA', '2022-08-25 08:07:03.620862', '2022-08-25 08:07:03.620862', 100, 'KZGMI-2001', 39, 'Sayur'),
(1039, 'Beberuk', 0, 1.1, 3.5, 5.2, 65, 'BA', '2022-08-25 08:07:03.626442', '2022-08-25 08:07:03.626442', 100, 'KZGMI-2001', 39, 'Sayur'),
(1040, 'Botok lamtoro', 0, 11.7, 13, 9.7, 186, 'BA', '2022-08-25 08:07:03.632287', '2022-08-25 08:07:03.632287', 100, 'KZGPI-1990', 39, 'Sayur'),
(1041, 'Buntil daun talas', 0, 4.4, 8, 10.2, 141, 'BA', '2022-08-25 08:07:03.640605', '2022-08-25 08:07:03.640605', 100, 'KZGPI-1990', 39, 'Sayur'),
(1042, 'Cap cai, sayur', 0, 5.8, 4.2, 6.3, 97, 'ME', '2022-08-25 08:07:03.646764', '2022-08-25 08:07:03.646764', 100, 'KZGMS-1993', 39, 'Sayur'),
(1043, 'Gado-gado', 0, 6.1, 21, 3.2, 137, 'ME', '2022-08-25 08:07:03.653037', '2022-08-25 08:07:03.653037', 100, 'KZGPI-1990', 39, 'Sayur'),
(1044, 'Gudeg, sayur', 0, 3.3, 16, 9.2, 160, 'ME', '2022-08-25 08:07:03.659131', '2022-08-25 08:07:03.659131', 100, 'KZGPI-1990', 39, 'Sayur'),
(1045, 'Gulai pakis', 0, 4, 6, 11.4, 143, 'ME', '2022-08-25 08:07:03.665282', '2022-08-25 08:07:03.665282', 100, 'KZGPI-1990', 39, 'Sayur'),
(1046, 'Gulai pliek', 0, 7.3, 3.2, 14.9, 176, 'ME', '2022-08-25 08:07:03.672997', '2022-08-25 08:07:03.672997', 100, 'KZGMI-2001', 39, 'Sayur'),
(1047, 'Karedok, sayur', 0, 2.2, 14.1, 3.3, 92, 'ME', '2022-08-25 08:07:03.680323', '2022-08-25 08:07:03.680323', 100, 'KZGPI-1990', 39, 'Sayur'),
(1048, 'Keripik bayam', 0, 4.9, 50.2, 40.6, 586, 'CA', '2022-08-25 08:07:03.686438', '2022-08-25 08:07:03.686438', 100, 'KZGPI-1990', 39, 'Sayur'),
(1049, 'Rujak cingur', 0, 11.3, 8, 8.4, 153, 'BA', '2022-08-25 08:07:03.692122', '2022-08-25 08:07:03.692122', 100, 'KZGPI-1990', 39, 'Sayur'),
(1050, 'Sayur asem', 0, 0.7, 5, 0.6, 29, 'ME', '2022-08-25 08:07:03.697607', '2022-08-25 08:07:03.697607', 100, 'KZGPI-1990', 39, 'Sayur'),
(1051, 'Sayur bunga pepaya', 0, 1.7, 9.8, 0.3, 49, 'ME', '2022-08-25 08:07:03.703961', '2022-08-25 08:07:03.703961', 100, 'KZGMI-2001', 39, 'Sayur'),
(1052, 'Sayur garu', 0, 2.6, 10.6, 13.9, 178, 'ME', '2022-08-25 08:07:03.715177', '2022-08-25 08:07:03.715177', 100, 'KZGMI-2001', 39, 'Sayur'),
(1053, 'Sayur kohu-kohu', 0, 7.3, 11.2, 6.6, 133, 'ME', '2022-08-25 08:07:03.721875', '2022-08-25 08:07:03.721875', 100, 'KZGMI-2001', 39, 'Sayur'),
(1054, 'Sayur lilin-terubuk', 0, 2.7, 4.8, 0.7, 36, 'ME', '2022-08-25 08:07:03.727745', '2022-08-25 08:07:03.727745', 100, 'KZGMI-2001', 39, 'Sayur'),
(1055, 'Sayur ndusuk', 0, 3.1, 3.6, 2.5, 49, 'ME', '2022-08-25 08:07:03.734035', '2022-08-25 08:07:03.734035', 100, 'KZGMI-2001', 39, 'Sayur'),
(1056, 'Sayur sop', 0, 1.3, 1, 2, 27, 'ME', '2022-08-25 08:07:03.741036', '2022-08-25 08:07:03.741036', 100, 'KZGPI-1990', 39, 'Sayur'),
(1057, 'Sayur umbut kelapa', 0, 5.2, 5.1, 2.9, 67, 'ME', '2022-08-25 08:07:03.747541', '2022-08-25 08:07:03.747541', 100, 'KZGMI-2001', 39, 'Sayur'),
(1058, 'Sayur umbut rotan', 0, 5.4, 3.1, 2.6, 57, 'ME', '2022-08-25 08:07:03.753689', '2022-08-25 08:07:03.753689', 100, 'KZGMI-2001', 39, 'Sayur'),
(1059, 'Bawang bombay, segar', 0, 1.4, 10.3, 0.2, 43, 'BA', '2022-08-25 08:07:03.759272', '2022-08-25 08:07:03.759272', 100, 'DABM-1964', 39, 'Sayur'),
(1060, 'Bayam, segar', 0, 0.9, 2.9, 0.4, 16, 'BA', '2022-08-25 08:07:03.765151', '2022-08-25 08:07:03.765151', 100, 'KZGPI-1990', 39, 'Sayur'),
(1061, 'Bayam merah, segar', 0, 2.2, 6.3, 0.8, 41, 'BA', '2022-08-25 08:07:03.770858', '2022-08-25 08:07:03.770858', 100, 'KZGMI-2001', 39, 'Sayur'),
(1062, 'Bit, segar', 0, 1.6, 9.6, 0.1, 41, 'BA', '2022-08-25 08:07:03.776634', '2022-08-25 08:07:03.776634', 100, 'DABM-1964', 39, 'Sayur'),
(1063, 'Buah kelor', 0, 1.5, 7.5, 0.2, 38, 'BA', '2022-08-25 08:07:03.783850', '2022-08-25 08:07:03.783850', 100, 'KZGMI-2001', 39, 'Sayur'),
(1064, 'Buah merah', 0, 2.6, 13.1, 2.7, 87, 'BA', '2022-08-25 08:07:03.790282', '2022-08-25 08:07:03.790282', 100, 'KZGMI-2001', 39, 'Sayur'),
(1065, 'Buncis, segar', 0, 2.4, 7.2, 0.3, 34, 'BA', '2022-08-25 08:07:03.796996', '2022-08-25 08:07:03.796996', 100, 'KZGPI-1990', 39, 'Sayur'),
(1066, 'Bunga pepaya, segar', 0, 2.6, 8.1, 0.3, 45, 'BA', '2022-08-25 08:07:03.804758', '2022-08-25 08:07:03.804758', 100, 'KZGPI-1990', 39, 'Sayur'),
(1067, 'Bunga turi, segar', 0, 2, 6.1, 1.1, 42, 'BA', '2022-08-25 08:07:03.810793', '2022-08-25 08:07:03.810793', 100, 'BKP', 39, 'Sayur'),
(1068, 'Caisin, segar', 0, 1.7, 3.4, 0.4, 20, 'BA', '2022-08-25 08:07:03.817147', '2022-08-25 08:07:03.817147', 100, 'KZGPI-1990', 39, 'Sayur');
INSERT INTO `base_makanan` (`id`, `nama`, `porsi`, `protein`, `lemak`, `karbo`, `energi`, `jenis`, `created_at`, `updated_at`, `berat_porsi`, `sumber`, `besar_porsi_id`, `kelompok`) VALUES
(1069, 'Daun bangun-bangun, segar', 0, 1.3, 4, 0.6, 27, 'BA', '2022-08-25 08:07:03.822773', '2022-08-25 08:07:03.822773', 100, 'KZGPI-1990', 39, 'Sayur'),
(1070, 'Daun bawang merah, segar', 0, 2, 7.8, 0.3, 41, 'BA', '2022-08-25 08:07:03.828142', '2022-08-25 08:07:03.828142', 100, 'KZGMI-2001', 39, 'Sayur'),
(1071, 'Daun bebuas, segar', 0, 2.7, 7.3, 1, 41, 'BA', '2022-08-25 08:07:03.834556', '2022-08-25 08:07:03.834556', 100, 'KZGPI-1990', 39, 'Sayur'),
(1072, 'Daun belem, segar', 0, 4.4, 7.8, 1.4, 50, 'BA', '2022-08-25 08:07:03.841553', '2022-08-25 08:07:03.841553', 100, 'KZGPI-1990', 39, 'Sayur'),
(1073, 'Daun bluntas, segar', 0, 1.8, 9.4, 0.5, 44, 'BA', '2022-08-25 08:07:03.848144', '2022-08-25 08:07:03.848144', 100, 'DABM-1964', 39, 'Sayur'),
(1074, 'Daun gandaria, segar', 0, 3.1, 14, 0.3, 63, 'BA', '2022-08-25 08:07:03.854723', '2022-08-25 08:07:03.854723', 100, 'DABM-1964', 39, 'Sayur'),
(1075, 'Daun gedi besar, segar', 0, 2.9, 10, 0.7, 58, 'BA', '2022-08-25 08:07:03.860754', '2022-08-25 08:07:03.860754', 100, 'KZGMI-2001', 39, 'Sayur'),
(1076, 'Daun gedi kecil, segar', 0, 3.2, 10.4, 0.7, 61, 'BA', '2022-08-25 08:07:03.866949', '2022-08-25 08:07:03.866949', 100, 'KZGMI-2001', 39, 'Sayur'),
(1077, 'Daun gelang, segar', 0, 1.3, 5.8, 0.7, 30, 'BA', '2022-08-25 08:07:03.873404', '2022-08-25 08:07:03.873404', 100, 'KZGPI-1990', 39, 'Sayur'),
(1078, 'Daun gunda bali, segar', 0, 4.6, 7, 0.9, 50, 'BA', '2022-08-25 08:07:03.879058', '2022-08-25 08:07:03.879058', 100, 'KZGPI-1990', 39, 'Sayur'),
(1079, 'Daun gunda serang, segar', 0, 4.2, 9.2, 0.9, 62, 'BA', '2022-08-25 08:07:03.884910', '2022-08-25 08:07:03.884910', 100, 'KZGPI-1990', 39, 'Sayur'),
(1080, 'Daun jambu mete muda, segar', 0, 4.6, 16.2, 0.5, 78, 'BA', '2022-08-25 08:07:03.890851', '2022-08-25 08:07:03.890851', 100, 'DABM-1964', 39, 'Sayur'),
(1081, 'Daun jampang, segar', 0, 3.8, 5.3, 0.5, 34, 'BA', '2022-08-25 08:07:03.896705', '2022-08-25 08:07:03.896705', 100, 'KZGPI-1990', 39, 'Sayur'),
(1082, 'Daun jawaw seluang, segar', 0, 5, 15.3, 1.3, 93, 'BA', '2022-08-25 08:07:03.902799', '2022-08-25 08:07:03.902799', 100, 'KZGMI-2001', 39, 'Sayur'),
(1083, 'Daun jonghe, segar', 0, 2.1, 4.4, 0.7, 27, 'BA', '2022-08-25 08:07:03.908858', '2022-08-25 08:07:03.908858', 100, 'KZGPI-1990', 39, 'Sayur'),
(1084, 'Daun kacang ma, segar', 0, 2.9, 6.8, 0.6, 36, 'BA', '2022-08-25 08:07:03.916249', '2022-08-25 08:07:03.916249', 100, 'KZGPI-1990', 39, 'Sayur'),
(1085, 'Daun kacang panjang, segar', 0, 3.1, 5.8, 0.3, 30, 'BA', '2022-08-25 08:07:03.924621', '2022-08-25 08:07:03.924621', 100, 'KZGPI-1990', 39, 'Sayur'),
(1086, 'Daun kasbi/singkong karet, segar', 0, 4, 10.9, 3.6, 92, 'BA', '2022-08-25 08:07:03.933732', '2022-08-25 08:07:03.933732', 100, 'KZGMI-2001', 39, 'Sayur'),
(1087, 'Daun katuk, segar', 0, 6.4, 9.9, 1, 59, 'BA', '2022-08-25 08:07:03.940275', '2022-08-25 08:07:03.940275', 100, 'KZGPI-1990', 39, 'Sayur'),
(1088, 'Daun kecipir, segar', 0, 5, 8.5, 0.5, 52, 'BA', '2022-08-25 08:07:03.948362', '2022-08-25 08:07:03.948362', 100, 'DABM-1964', 39, 'Sayur'),
(1089, 'Daun kedondong, segar', 0, 3.5, 13.4, 0.3, 59, 'BA', '2022-08-25 08:07:03.955098', '2022-08-25 08:07:03.955098', 100, 'DABM-1964', 39, 'Sayur'),
(1090, 'Daun kelor, segar', 0, 5.1, 14.3, 1.6, 92, 'BA', '2022-08-25 08:07:03.961968', '2022-08-25 08:07:03.961968', 100, 'KZGMI-2001', 39, 'Sayur'),
(1091, 'Daun kemangi, segar', 0, 5.5, 7.5, 0.3, 43, 'BA', '2022-08-25 08:07:03.968685', '2022-08-25 08:07:03.968685', 100, 'DABM-1964', 39, 'Sayur'),
(1092, 'Daun kenikir, segar', 0, 3.7, 6.6, 0.5, 45, 'BA', '2022-08-25 08:07:03.974692', '2022-08-25 08:07:03.974692', 100, 'BKP', 39, 'Sayur'),
(1093, 'Daun kesum, segar', 0, 4.5, 9.1, 0.8, 48, 'BA', '2022-08-25 08:07:03.980738', '2022-08-25 08:07:03.980738', 100, 'KZGPI-1990', 39, 'Sayur'),
(1094, 'Daun kol sawi, segar', 0, 2.1, 3.6, 0.5, 22, 'BA', '2022-08-25 08:07:03.986897', '2022-08-25 08:07:03.986897', 100, 'KZGPI-1990', 39, 'Sayur'),
(1095, 'Daun koro, segar', 0, 3, 3.7, 0.3, 23, 'BA', '2022-08-25 08:07:03.992752', '2022-08-25 08:07:03.992752', 100, 'DABM-1964', 39, 'Sayur'),
(1096, 'Daun kubis, segar', 0, 2.5, 8, 1.1, 51, 'BA', '2022-08-25 08:07:03.998816', '2022-08-25 08:07:03.998816', 100, 'KZGMI-2001', 39, 'Sayur'),
(1097, 'Daun kumak, segar', 0, 1.3, 2.3, 0.3, 14, 'BA', '2022-08-25 08:07:04.005671', '2022-08-25 08:07:04.005671', 100, 'KZGPI-1990', 39, 'Sayur'),
(1098, 'Daun labu siam, segar', 0, 4, 4.7, 0.4, 34, 'BA', '2022-08-25 08:07:04.011768', '2022-08-25 08:07:04.011768', 100, 'DABM-1964', 39, 'Sayur'),
(1099, 'Daun labu waluh/kuning, segar', 0, 3.6, 4.5, 0.6, 34, 'BA', '2022-08-25 08:07:04.017820', '2022-08-25 08:07:04.017820', 100, 'DABM-1964', 39, 'Sayur'),
(1100, 'Daun lamtoro, segar', 0, 8.3, 14.4, 1.8, 87, 'BA', '2022-08-25 08:07:04.023805', '2022-08-25 08:07:04.023805', 100, 'KZGPI-1990', 39, 'Sayur'),
(1101, 'Daun leilem, segar', 0, 2.8, 15.8, 0.2, 76, 'BA', '2022-08-25 08:07:04.029737', '2022-08-25 08:07:04.029737', 100, 'KZGMI-2001', 39, 'Sayur'),
(1102, 'Daun leunca, segar', 0, 4.7, 8.1, 0.5, 49, 'BA', '2022-08-25 08:07:04.036918', '2022-08-25 08:07:04.036918', 100, 'DABM-1964', 39, 'Sayur'),
(1103, 'Daun lobak, segar', 0, 2.3, 5.8, 0.4, 30, 'BA', '2022-08-25 08:07:04.043519', '2022-08-25 08:07:04.043519', 100, 'DKBM-1964', 39, 'Sayur'),
(1104, 'Daun lompong talas, segar', 0, 3, 7.4, 0.8, 44, 'BA', '2022-08-25 08:07:04.049815', '2022-08-25 08:07:04.049815', 100, 'DABM-1964', 39, 'Sayur'),
(1105, 'Daun mangkokan, segar', 0, 3.7, 11.8, 0.3, 57, 'BA', '2022-08-25 08:07:04.055829', '2022-08-25 08:07:04.055829', 100, 'DABM-1964', 39, 'Sayur'),
(1106, 'Daun matel ambon, segar', 0, 6.8, 11.5, 1.6, 71, 'BA', '2022-08-25 08:07:04.061707', '2022-08-25 08:07:04.061707', 100, 'KZGPI-1990', 39, 'Sayur'),
(1107, 'Daun melinjo, segar', 0, 5, 21.3, 1.3, 104, 'BA', '2022-08-25 08:07:04.069133', '2022-08-25 08:07:04.069133', 100, 'DABM-1964', 39, 'Sayur'),
(1108, 'Daun mengkudu, segar', 0, 4, 11.4, 1.7, 65, 'BA', '2022-08-25 08:07:04.075615', '2022-08-25 08:07:04.075615', 100, 'KZGPI-1990', 39, 'Sayur'),
(1109, 'Daun ndusuk, segar', 0, 1.7, 38.8, 0.5, 166, 'BA', '2022-08-25 08:07:04.081412', '2022-08-25 08:07:04.081412', 100, 'KZGMI-2001', 39, 'Sayur'),
(1110, 'Daun oyong, segar', 0, 1, 5.3, 0.1, 22, 'BA', '2022-08-25 08:07:04.087198', '2022-08-25 08:07:04.087198', 100, 'DABM-1964', 39, 'Sayur'),
(1111, 'Daun pakis, segar', 0, 4.5, 6.9, 0.4, 39, 'BA', '2022-08-25 08:07:04.095074', '2022-08-25 08:07:04.095074', 100, 'KZGPI-1990', 39, 'Sayur'),
(1112, 'Daun pakis longgiho, segar', 0, 2.2, 3.1, 3.6, 54, 'BA', '2022-08-25 08:07:04.101545', '2022-08-25 08:07:04.101545', 100, 'KZGMI-2001', 39, 'Sayur'),
(1113, 'Daun pakis wambateu, segar', 0, 3.4, 7.2, 1.2, 53, 'BA', '2022-08-25 08:07:04.106869', '2022-08-25 08:07:04.106869', 100, 'KZGMI-2001', 39, 'Sayur'),
(1114, 'Daun paku, segar', 0, 3.4, 6.5, 0.1, 29, 'BA', '2022-08-25 08:07:04.113026', '2022-08-25 08:07:04.113026', 100, 'KZGMI-2001', 39, 'Sayur'),
(1115, 'Daun pangi,segar', 0, 3.9, 17.9, 0.6, 104, 'BA', '2022-08-25 08:07:04.119655', '2022-08-25 08:07:04.119655', 100, 'KZGMI-2001', 39, 'Sayur'),
(1116, 'Daun pare, segar', 0, 2.7, 8.4, 1, 49, 'BA', '2022-08-25 08:07:04.126299', '2022-08-25 08:07:04.126299', 100, 'KZGMI-2001', 39, 'Sayur'),
(1117, 'Daun pepaya, segar', 0, 8, 11.9, 2, 87, 'BA', '2022-08-25 08:07:04.133169', '2022-08-25 08:07:04.133169', 100, 'DABM-1964', 39, 'Sayur'),
(1118, 'Daun pohpohan, segar', 0, 2.5, 6.9, 0.8, 37, 'BA', '2022-08-25 08:07:04.140341', '2022-08-25 08:07:04.140341', 100, 'KZGPI-1990', 39, 'Sayur'),
(1119, 'Daun selasih, segar', 0, 4, 10.5, 0.5, 62, 'BA', '2022-08-25 08:07:04.146377', '2022-08-25 08:07:04.146377', 100, 'KZGMI-2001', 39, 'Sayur'),
(1120, 'Daun semanggi, segar', 0, 4.4, 8.5, 0.5, 45, 'BA', '2022-08-25 08:07:04.151829', '2022-08-25 08:07:04.151829', 100, 'KZGPI-1990', 39, 'Sayur'),
(1121, 'Daun simpur, segar', 0, 3.2, 7.6, 2.5, 53, 'BA', '2022-08-25 08:07:04.157528', '2022-08-25 08:07:04.157528', 100, 'KZGPI-1990', 39, 'Sayur'),
(1122, 'Daun singkil, segar', 0, 2, 15.2, 1, 68, 'BA', '2022-08-25 08:07:04.164173', '2022-08-25 08:07:04.164173', 100, 'KZGPI-1990', 39, 'Sayur'),
(1123, 'Daun singkong, segar', 0, 6.2, 7.1, 1.1, 50, 'BA', '2022-08-25 08:07:04.171991', '2022-08-25 08:07:04.171991', 100, 'KZGPI-1990', 39, 'Sayur'),
(1124, 'Daun singkong ambon, segar', 0, 12.7, 25.2, 1.2, 144, 'BA', '2022-08-25 08:07:04.178182', '2022-08-25 08:07:04.178182', 100, 'DABM-1964', 39, 'Sayur'),
(1125, 'Daun singkong ampenan, segar', 0, 6.2, 7.1, 1.1, 50, 'BA', '2022-08-25 08:07:04.185465', '2022-08-25 08:07:04.185465', 100, 'KZGMI-2001', 39, 'Sayur'),
(1126, 'Daun singkong kopang, segar', 0, 6.3, 10.7, 0.7, 74, 'BA', '2022-08-25 08:07:04.191561', '2022-08-25 08:07:04.191561', 100, 'KZGMI-2001', 39, 'Sayur'),
(1127, 'Daun sintrong, segar', 0, 2.6, 6.1, 0.9, 36, 'BA', '2022-08-25 08:07:04.197627', '2022-08-25 08:07:04.197627', 100, 'KZGPI-1990', 39, 'Sayur'),
(1128, 'Daun talas, segar', 0, 3, 13.5, 0.4, 59, 'BA', '2022-08-25 08:07:04.204904', '2022-08-25 08:07:04.204904', 100, 'KZGPI-1990', 39, 'Sayur'),
(1129, 'Daun tespong, segar', 0, 2.9, 13.9, 0.3, 70, 'BA', '2022-08-25 08:07:04.211108', '2022-08-25 08:07:04.211108', 100, 'DABM-1964', 39, 'Sayur'),
(1130, 'Daun ubi kuning, segar', 0, 3.7, 11.1, 0.3, 62, 'BA', '2022-08-25 08:07:04.217701', '2022-08-25 08:07:04.217701', 100, 'KZGMI-2001', 39, 'Sayur'),
(1131, 'Daun ubi merah, segar', 0, 3, 10.8, 0.3, 48, 'BA', '2022-08-25 08:07:04.223642', '2022-08-25 08:07:04.223642', 100, 'KZGPI-1990', 39, 'Sayur'),
(1132, 'Daun ubi putih, segar', 0, 2.8, 8.2, 0.2, 46, 'BA', '2022-08-25 08:07:04.229727', '2022-08-25 08:07:04.229727', 100, 'KZGMI-2001', 39, 'Sayur'),
(1133, 'Daun ubi tinta, segar', 0, 1.7, 11.9, 0.1, 55, 'BA', '2022-08-25 08:07:04.237564', '2022-08-25 08:07:04.237564', 100, 'KZGMI-2001', 39, 'Sayur'),
(1134, 'Eceng, segar', 0, 1, 3.8, 0.2, 19, 'BA', '2022-08-25 08:07:04.243120', '2022-08-25 08:07:04.243120', 100, 'DABM-1964', 39, 'Sayur'),
(1135, 'Gambas (oyong), segar', 0, 0.8, 4.1, 0.2, 19, 'BA', '2022-08-25 08:07:04.248854', '2022-08-25 08:07:04.248854', 100, 'DABM-1964', 39, 'Sayur'),
(1136, 'Genjer, segar', 0, 1.7, 7.7, 0.2, 35, 'BA', '2022-08-25 08:07:04.257085', '2022-08-25 08:07:04.257085', 100, 'DABM-1964', 39, 'Sayur'),
(1137, 'Jagung muda / semi, segar', 0, 2.2, 7.4, 0.1, 35, 'BA', '2022-08-25 08:07:04.262585', '2022-08-25 08:07:04.262585', 100, 'DABM-1964', 39, 'Sayur'),
(1138, 'Jamur encik', 0, 9.4, 62, 1.1, 296, 'BA', '2022-08-25 08:07:04.269827', '2022-08-25 08:07:04.269827', 100, 'KZGMI-2001', 39, 'Sayur'),
(1139, 'Jamur kuping, kering', 0, 16, 64.6, 0.9, 294, 'BA', '2022-08-25 08:07:04.276195', '2022-08-25 08:07:04.276195', 100, 'DABM-1964', 39, 'Sayur'),
(1140, 'Jamur kuping, segar', 0, 3.8, 0.9, 0.6, 21, 'BA', '2022-08-25 08:07:04.282110', '2022-08-25 08:07:04.282110', 100, 'DABM-1964', 39, 'Sayur'),
(1141, 'Jamur merang, segar', 0, 3.5, 4, 0.2, 30, 'BA', '2022-08-25 08:07:04.288066', '2022-08-25 08:07:04.288066', 100, 'BKP', 39, 'Sayur'),
(1142, 'Jamur tiram, segar', 0, 1.9, 5.5, 0.1, 30, 'BA', '2022-08-25 08:07:04.293941', '2022-08-25 08:07:04.293941', 100, 'BKP', 39, 'Sayur'),
(1143, 'Jamur sagu', 0, 1.9, 2.8, 3.2, 48, 'BA', '2022-08-25 08:07:04.299010', '2022-08-25 08:07:04.299010', 100, 'KZGMI-2001', 39, 'Sayur'),
(1144, 'Jantung pisang, segar', 0, 1.2, 7.1, 0.3, 32, 'BA', '2022-08-25 08:07:04.303945', '2022-08-25 08:07:04.303945', 100, 'DABM-1964', 39, 'Sayur'),
(1145, 'Jengkol, segar', 0, 5.4, 40.7, 0.3, 192, 'BA', '2022-08-25 08:07:04.310153', '2022-08-25 08:07:04.310153', 100, 'KZGMI-2001', 39, 'Sayur'),
(1146, 'Jotang, segar', 0, 1.9, 7.1, 0.3, 34, 'BA', '2022-08-25 08:07:04.316586', '2022-08-25 08:07:04.316586', 100, 'DABM-1964', 39, 'Sayur'),
(1147, 'Kabau, segar', 0, 6.7, 25.2, 0.3, 130, 'BA', '2022-08-25 08:07:04.322613', '2022-08-25 08:07:04.322613', 100, 'KZGMI-2001', 39, 'Sayur'),
(1148, 'Kacang mekah, polong, segar', 0, 1.1, 3.4, 1, 22, 'BA', '2022-08-25 08:07:04.328671', '2022-08-25 08:07:04.328671', 100, 'KZGPI-1990', 39, 'Sayur'),
(1149, 'Kacang panjang, segar', 0, 2.3, 5.3, 0.1, 31, 'BA', '2022-08-25 08:07:04.335596', '2022-08-25 08:07:04.335596', 100, 'KZGMI-2001', 39, 'Sayur'),
(1150, 'Kacang ranti polong', 0, 3.1, 7.9, 0.2, 37, 'BA', '2022-08-25 08:07:04.342293', '2022-08-25 08:07:04.342293', 100, 'KZGPI-1990', 39, 'Sayur'),
(1151, 'Kalakai, segar', 0, 2.4, 6.6, 0.2, 38, 'BA', '2022-08-25 08:07:04.348582', '2022-08-25 08:07:04.348582', 100, 'KZGMI-2001', 39, 'Sayur'),
(1152, 'Kangkung, segar', 0, 3.4, 3.9, 0.7, 28, 'BA', '2022-08-25 08:07:04.353959', '2022-08-25 08:07:04.353959', 100, 'KZGPI-1990', 39, 'Sayur'),
(1153, 'Kangkung tondano', 0, 1.8, 8.4, 0.2, 43, 'BA', '2022-08-25 08:07:04.359519', '2022-08-25 08:07:04.359519', 100, 'KZGMI-2001', 39, 'Sayur'),
(1154, 'Kapri muda, segar', 0, 3.3, 9, 0.2, 45, 'BA', '2022-08-25 08:07:04.365755', '2022-08-25 08:07:04.365755', 100, 'DABM-1964', 39, 'Sayur'),
(1155, 'Karawila', 0, 2.3, 3.5, 0.2, 25, 'BA', '2022-08-25 08:07:04.371954', '2022-08-25 08:07:04.371954', 100, 'KZGMI-2001', 39, 'Sayur'),
(1156, 'Kecipir muda, segar', 0, 2.9, 5.8, 0.2, 32, 'BA', '2022-08-25 08:07:04.377920', '2022-08-25 08:07:04.377920', 100, 'DABM-1964', 39, 'Sayur'),
(1157, 'Kecombrang, segar', 0, 0.9, 6.7, 1, 34, 'BA', '2022-08-25 08:07:04.385919', '2022-08-25 08:07:04.385919', 100, 'KZGPI-1990', 39, 'Sayur'),
(1158, 'Kelawi,kluwih, segar', 0, 1.5, 27.2, 0.3, 118, 'BA', '2022-08-25 08:07:04.392111', '2022-08-25 08:07:04.392111', 100, 'DABM-1964', 39, 'Sayur'),
(1159, 'Kembang turi, segar', 0, 1.8, 9.6, 0.6, 51, 'BA', '2022-08-25 08:07:04.398065', '2022-08-25 08:07:04.398065', 100, 'DABM-1964', 39, 'Sayur'),
(1160, 'Kerokot, segar', 0, 1.7, 3.8, 0.4, 26, 'BA', '2022-08-25 08:07:04.405209', '2022-08-25 08:07:04.405209', 100, 'DABM-1964', 39, 'Sayur'),
(1161, 'Ketimun, segar', 0, 0.2, 1.4, 0.2, 8, 'BA', '2022-08-25 08:07:04.411315', '2022-08-25 08:07:04.411315', 100, 'KZGPI-1990', 39, 'Sayur'),
(1162, 'Ketimun krai, segar', 0, 0.5, 2, 0.2, 10, 'BA', '2022-08-25 08:07:04.418555', '2022-08-25 08:07:04.418555', 100, 'KZGPI-1990', 39, 'Sayur'),
(1163, 'Ketimun madura, segar', 0, 0.5, 1.9, 0.1, 9, 'BA', '2022-08-25 08:07:04.426476', '2022-08-25 08:07:04.426476', 100, 'KZGPI-1990', 39, 'Sayur'),
(1164, 'Komak, segar', 0, 3.3, 21.2, 0.1, 99, 'BA', '2022-08-25 08:07:04.434998', '2022-08-25 08:07:04.434998', 100, 'KZGMI-2001', 39, 'Sayur'),
(1165, 'Kembang Kol', 0, 2.4, 4.9, 0.2, 25, 'BA', '2022-08-25 08:07:04.442251', '2022-08-25 08:07:04.442251', 100, 'DABM-1964', 39, 'Sayur'),
(1166, 'Kol merah, kol putih', 0, 1.4, 5.3, 0.2, 29, 'BA', '2022-08-25 08:07:04.450179', '2022-08-25 08:07:04.450179', 100, 'DABM-1964', 39, 'Sayur'),
(1167, 'Koro kerupuk, polong', 0, 8.3, 22.1, 0.7, 128, 'BA', '2022-08-25 08:07:04.457675', '2022-08-25 08:07:04.457675', 100, 'DABM-1964', 39, 'Sayur'),
(1168, 'Koro wedus, polong', 0, 3, 7.9, 0.3, 46, 'BA', '2022-08-25 08:07:04.464671', '2022-08-25 08:07:04.464671', 100, 'DABM-1964', 39, 'Sayur'),
(1169, 'Kucai, segar', 0, 2.2, 10.3, 0.3, 45, 'BA', '2022-08-25 08:07:04.471489', '2022-08-25 08:07:04.471489', 100, 'DABM-1964', 39, 'Sayur'),
(1170, 'Kucai muda (Lokio), segar', 0, 3.8, 7.8, 0.6, 42, 'BA', '2022-08-25 08:07:04.477437', '2022-08-25 08:07:04.477437', 100, 'DABM-1964', 39, 'Sayur'),
(1171, 'Kulit melinjo', 0, 4.5, 20.7, 1.1, 111, 'BA', '2022-08-25 08:07:04.483541', '2022-08-25 08:07:04.483541', 100, 'KZGPI-1990', 39, 'Sayur'),
(1172, 'Kundur, segar', 0, 0.4, 4.7, 0.2, 22, 'BA', '2022-08-25 08:07:04.489715', '2022-08-25 08:07:04.489715', 100, 'KZGMI-2001', 39, 'Sayur'),
(1173, 'Labu air, segar', 0, 0.6, 3.8, 0.2, 19, 'BA', '2022-08-25 08:07:04.497094', '2022-08-25 08:07:04.497094', 100, 'DABM-1964', 39, 'Sayur'),
(1174, 'Labu kuning, segar', 0, 1.7, 10, 0.5, 51, 'BA', '2022-08-25 08:07:04.503477', '2022-08-25 08:07:04.503477', 100, 'KZGMI-2001', 39, 'Sayur'),
(1175, 'Labu siam, segar', 0, 0.6, 6.7, 0.1, 30, 'BA', '2022-08-25 08:07:04.509295', '2022-08-25 08:07:04.509295', 100, 'DABM-1964', 39, 'Sayur'),
(1176, 'Labu waluh, segar', 0, 1.1, 6.6, 0.1, 32, 'BA', '2022-08-25 08:07:04.515852', '2022-08-25 08:07:04.515852', 100, 'DABM-1964', 39, 'Sayur'),
(1177, 'Lantar, segar', 0, 2.2, 5.5, 0.3, 34, 'BA', '2022-08-25 08:07:04.522672', '2022-08-25 08:07:04.522672', 100, 'KZGMI-2001', 39, 'Sayur'),
(1178, 'Lobak, segar', 0, 0.9, 4.2, 0.1, 21, 'BA', '2022-08-25 08:07:04.530181', '2022-08-25 08:07:04.530181', 100, 'DABM-1964', 39, 'Sayur'),
(1179, 'Lumai/Leunca, segar', 0, 1.1, 7.6, 0.3, 38, 'BA', '2022-08-25 08:07:04.536504', '2022-08-25 08:07:04.536504', 100, 'KZGMI-2001', 39, 'Sayur'),
(1180, 'Melinjo, segar', 0, 5, 13.3, 0.7, 66, 'BA', '2022-08-25 08:07:04.542999', '2022-08-25 08:07:04.542999', 100, 'DABM-1964', 39, 'Sayur'),
(1181, 'Mostarda metan - sawi hijau', 0, 2.3, 4.7, 0.5, 33, 'BA', '2022-08-25 08:07:04.549518', '2022-08-25 08:07:04.549518', 100, 'KZGMI-2001', 39, 'Sayur'),
(1182, 'Nangka muda, segar', 0, 2, 11.3, 0.4, 57, 'BA', '2022-08-25 08:07:04.554737', '2022-08-25 08:07:04.554737', 100, 'DABM-1964', 39, 'Sayur'),
(1183, 'Paria putih, segar', 0, 1, 3.6, 0.4, 19, 'BA', '2022-08-25 08:07:04.560260', '2022-08-25 08:07:04.560260', 100, 'KZGPI-1990', 39, 'Sayur'),
(1184, 'Pepare ular, segar', 0, 0.6, 3.9, 0.1, 19, 'BA', '2022-08-25 08:07:04.566513', '2022-08-25 08:07:04.566513', 100, 'KZGMI-2001', 39, 'Sayur'),
(1185, 'Pepaya muda, segar', 0, 2.1, 4.9, 0.1, 29, 'BA', '2022-08-25 08:07:04.573005', '2022-08-25 08:07:04.573005', 100, 'DABM-1964', 39, 'Sayur'),
(1186, 'Petai, segar', 0, 5.4, 15.2, 1.1, 92, 'BA', '2022-08-25 08:07:04.579057', '2022-08-25 08:07:04.579057', 100, 'KZGMI-2001', 39, 'Sayur'),
(1187, 'Peterseli, segar', 0, 3.7, 9, 1, 53, 'BA', '2022-08-25 08:07:04.585168', '2022-08-25 08:07:04.585168', 100, 'DABM-1964', 39, 'Sayur'),
(1188, 'Pucuk lumai/daun leunca, segar', 0, 4.5, 2.8, 0.4, 33, 'BA', '2022-08-25 08:07:04.591919', '2022-08-25 08:07:04.591919', 100, 'KZGMI-2001', 39, 'Sayur'),
(1189, 'Putri malu, segar', 0, 3.6, 14.6, 0.3, 76, 'BA', '2022-08-25 08:07:04.598090', '2022-08-25 08:07:04.598090', 100, 'KZGMI-2001', 39, 'Sayur'),
(1190, 'Rebung, segar', 0, 0.8, 5.3, 0.1, 25, 'BA', '2022-08-25 08:07:04.605492', '2022-08-25 08:07:04.605492', 100, 'KZGMI-2001', 39, 'Sayur'),
(1191, 'Rimbang, segar', 0, 1.6, 15.8, 0.6, 75, 'BA', '2022-08-25 08:07:04.611793', '2022-08-25 08:07:04.611793', 100, 'KZGMI-2001', 39, 'Sayur'),
(1192, 'Rumput laut', 0, 1.4, 8.1, 0.3, 41, 'BA', '2022-08-25 08:07:04.617841', '2022-08-25 08:07:04.617841', 100, 'KZGMI-2001', 39, 'Sayur'),
(1193, 'Sawi, segar', 0, 2.3, 4, 0.3, 28, 'BA', '2022-08-25 08:07:04.623114', '2022-08-25 08:07:04.623114', 100, 'DABM-1964', 39, 'Sayur'),
(1194, 'Sawi putih / pecai, segar', 0, 1, 1.7, 0.1, 9, 'BA', '2022-08-25 08:07:04.628863', '2022-08-25 08:07:04.628863', 100, 'KZGPI-1990', 39, 'Sayur'),
(1195, 'Sawi taiwan, segar', 0, 1.9, 4.4, 0.5, 30, 'BA', '2022-08-25 08:07:04.635683', '2022-08-25 08:07:04.635683', 100, 'KZGMI-2001', 39, 'Sayur'),
(1196, 'Sawi tanah, segar', 0, 1.3, 2.9, 0.2, 19, 'BA', '2022-08-25 08:07:04.641726', '2022-08-25 08:07:04.641726', 100, 'KZGMI-2001', 39, 'Sayur'),
(1197, 'Selada, segar', 0, 1.2, 2.9, 0.2, 18, 'BA', '2022-08-25 08:07:04.647705', '2022-08-25 08:07:04.647705', 100, 'DABM-1964', 39, 'Sayur'),
(1198, 'Selada air, segar', 0, 3.1, 2.2, 0.2, 17, 'BA', '2022-08-25 08:07:04.653622', '2022-08-25 08:07:04.653622', 100, 'KZGPI-1990', 39, 'Sayur'),
(1199, 'Seledri, segar', 0, 1, 4.6, 0.1, 23, 'BA', '2022-08-25 08:07:04.659465', '2022-08-25 08:07:04.659465', 100, 'DABM-1964', 39, 'Sayur'),
(1200, 'Taoge, segar', 0, 3.7, 4.3, 1.2, 34, 'BA', '2022-08-25 08:07:04.665915', '2022-08-25 08:07:04.665915', 100, 'KZGPI-1990', 39, 'Sayur'),
(1201, 'Taoge kacang kedelai, segar', 0, 9, 6.4, 2.6, 76, 'BA', '2022-08-25 08:07:04.672642', '2022-08-25 08:07:04.672642', 100, 'DABM-1964', 39, 'Sayur'),
(1202, 'Taoge kacang tunggak, segar', 0, 5, 5.8, 0.2, 40, 'BA', '2022-08-25 08:07:04.678210', '2022-08-25 08:07:04.678210', 100, 'DABM-1964', 39, 'Sayur'),
(1203, 'Tebu terubuk (lilin), segar', 0, 4.6, 3, 0.4, 30, 'BA', '2022-08-25 08:07:04.683750', '2022-08-25 08:07:04.683750', 100, 'DABM-1964', 39, 'Sayur'),
(1204, 'Tekokak, segar', 0, 2, 7.9, 0.1, 34, 'BA', '2022-08-25 08:07:04.690041', '2022-08-25 08:07:04.690041', 100, 'DABM-1964', 39, 'Sayur'),
(1205, 'Tekokak, kering', 0, 8.3, 72.6, 1.7, 302, 'BA', '2022-08-25 08:07:04.695952', '2022-08-25 08:07:04.695952', 100, 'DABM-1964', 39, 'Sayur'),
(1206, 'Terong, segar', 0, 1.1, 5.5, 0.2, 28, 'BA', '2022-08-25 08:07:04.701874', '2022-08-25 08:07:04.701874', 100, 'DABM-1964', 39, 'Sayur'),
(1207, 'Terong asam, segar', 0, 2, 6.3, 0.4, 37, 'BA', '2022-08-25 08:07:04.707822', '2022-08-25 08:07:04.707822', 100, 'KZGMI-2001', 39, 'Sayur'),
(1208, 'Terung belanda, segar', 0, 2.1, 8.6, 1.1, 52, 'BA', '2022-08-25 08:07:04.714138', '2022-08-25 08:07:04.714138', 100, 'KZGPI-1990', 39, 'Sayur'),
(1209, 'Terung bengkulu, segar', 0, 1.1, 11.2, 0.4, 52, 'BA', '2022-08-25 08:07:04.720995', '2022-08-25 08:07:04.720995', 100, 'KZGPI-1990', 39, 'Sayur'),
(1210, 'Terong hintalo, segar', 0, 1.9, 7.5, 0.8, 45, 'BA', '2022-08-25 08:07:04.732237', '2022-08-25 08:07:04.732237', 100, 'KZGMI-2001', 39, 'Sayur'),
(1211, 'Terung panjang', 0, 2.1, 5.3, 0.1, 25, 'BA', '2022-08-25 08:07:04.739215', '2022-08-25 08:07:04.739215', 100, 'KZGPI-1990', 39, 'Sayur'),
(1212, 'Tomat, air (sari), segar', 0, 1, 3.5, 0.2, 20, 'BA', '2022-08-25 08:07:04.745563', '2022-08-25 08:07:04.745563', 100, 'DABM-1964', 39, 'Sayur'),
(1213, 'Tomat merah, segar', 0, 1.3, 4.7, 0.5, 24, 'BA', '2022-08-25 08:07:04.752058', '2022-08-25 08:07:04.752058', 100, 'KZGPI-1990', 39, 'Sayur'),
(1214, 'Tomat muda, segar', 0, 2, 3.3, 0.7, 24, 'BA', '2022-08-25 08:07:04.758164', '2022-08-25 08:07:04.758164', 100, 'DABM-1964', 39, 'Sayur'),
(1215, 'Uceng/ bunga melinjo, segar', 0, 5.8, 11.7, 1.3, 82, 'BA', '2022-08-25 08:07:04.764290', '2022-08-25 08:07:04.764290', 100, 'KZGPI-1990', 39, 'Sayur'),
(1216, 'Umbut kelapa, segar', 0, 2, 7.2, 0.2, 39, 'BA', '2022-08-25 08:07:04.770576', '2022-08-25 08:07:04.770576', 100, 'KZGMI-2001', 39, 'Sayur'),
(1217, 'Umbut rotan', 0, 2.4, 5.5, 0.3, 34, 'BA', '2022-08-25 08:07:04.776950', '2022-08-25 08:07:04.776950', 100, 'KZGMI-2001', 39, 'Sayur'),
(1218, 'Wortel, segar', 0, 1, 7.9, 0.6, 36, 'BA', '2022-08-25 08:07:04.783379', '2022-08-25 08:07:04.783379', 100, 'KZGPI-1990', 39, 'Sayur'),
(1219, 'Alpukat, segar', 0, 0.9, 7.7, 6.5, 85, 'CA', '2022-08-25 08:07:04.789788', '2022-08-25 08:07:04.789788', 100, 'DABM-1964', 39, 'Buah'),
(1220, 'Anggur hutan, segar', 0, 0.5, 6.8, 0.2, 30, 'CA', '2022-08-25 08:07:04.797751', '2022-08-25 08:07:04.797751', 100, 'KZGPI-1990', 39, 'Buah'),
(1221, 'Apel malang, segar', 0, 0.5, 12.8, 0.4, 57, 'CA', '2022-08-25 08:07:04.805002', '2022-08-25 08:07:04.805002', 100, 'KZGPI-1990', 39, 'Buah'),
(1222, 'Apel, segar', 0, 0.3, 14.9, 0.4, 58, 'CA', '2022-08-25 08:07:04.809757', '2022-08-25 08:07:04.809757', 100, 'DABM-1964', 39, 'Buah'),
(1223, 'Arbai, segar', 0, 0.8, 8.3, 0.5, 37, 'CA', '2022-08-25 08:07:04.815928', '2022-08-25 08:07:04.815928', 100, 'DABM-1964', 39, 'Buah'),
(1224, 'Belimbing, segar', 0, 0.4, 8.8, 0.4, 36, 'CA', '2022-08-25 08:07:04.821996', '2022-08-25 08:07:04.821996', 100, 'DABM-1964', 39, 'Buah'),
(1225, 'Biwah, segar', 0, 0.3, 12.1, 0.1, 51, 'CA', '2022-08-25 08:07:04.827877', '2022-08-25 08:07:04.827877', 100, 'KZGPI-1990', 39, 'Buah'),
(1226, 'Buah Naga Merah, segar', 0, 1.7, 9.1, 3.1, 71, 'CA', '2022-08-25 08:07:04.835278', '2022-08-25 08:07:04.835278', 100, 'BKP', 39, 'Buah'),
(1227, 'Buah Naga Putih, segar', 0, 0.8, 10.9, 1, 56, 'CA', '2022-08-25 08:07:04.841580', '2022-08-25 08:07:04.841580', 100, 'BKP', 39, 'Buah'),
(1228, 'Carica papaya, segar', 0, 1.9, 3.7, 0.2, 24, 'CA', '2022-08-25 08:07:04.847766', '2022-08-25 08:07:04.847766', 100, 'KZGPI-1990', 39, 'Buah'),
(1229, 'Cempedak, segar', 0, 3, 28.6, 0.4, 116, 'CA', '2022-08-25 08:07:04.853847', '2022-08-25 08:07:04.853847', 100, 'DABM-1964', 39, 'Buah'),
(1230, 'Duku, segar', 0, 1, 16.1, 0.2, 63, 'CA', '2022-08-25 08:07:04.859947', '2022-08-25 08:07:04.859947', 100, 'DABM-1964', 39, 'Buah'),
(1231, 'Durian, segar', 0, 2.5, 28, 3, 134, 'CA', '2022-08-25 08:07:04.866396', '2022-08-25 08:07:04.866396', 100, 'DABM-1964', 39, 'Buah'),
(1232, 'Duwet, segar', 0, 0.5, 18.2, 0.6, 80, 'CA', '2022-08-25 08:07:04.873051', '2022-08-25 08:07:04.873051', 100, 'KZGPI-1990', 39, 'Buah'),
(1233, 'Embacang, segar', 0, 1.4, 25.4, 0.2, 98, 'CA', '2022-08-25 08:07:04.878865', '2022-08-25 08:07:04.878865', 100, 'DABM-1964', 39, 'Buah'),
(1234, 'Getuk pisang', 0, 1.1, 34.1, 0.4, 144, 'CA', '2022-08-25 08:07:04.884878', '2022-08-25 08:07:04.884878', 100, 'KZGPI-1990', 39, 'Buah'),
(1235, 'Jambu air, segar', 0, 0.6, 11.8, 0.2, 46, 'CA', '2022-08-25 08:07:04.890699', '2022-08-25 08:07:04.890699', 100, 'DABM-1964', 39, 'Buah'),
(1236, 'Jambu biji', 0, 0.9, 12.2, 0.3, 49, 'CA', '2022-08-25 08:07:04.896864', '2022-08-25 08:07:04.896864', 100, 'DABM-1964', 39, 'Buah'),
(1237, 'Jambu biji putih tidak berbiji', 0, 0.9, 15.4, 0.3, 61, 'CA', '2022-08-25 08:07:04.904171', '2022-08-25 08:07:04.904171', 100, 'KZGPI-1990', 39, 'Buah'),
(1238, 'Jambu bol, segar', 0, 2.3, 9.6, 0.2, 49, 'CA', '2022-08-25 08:07:04.910818', '2022-08-25 08:07:04.910818', 100, 'KZGMI-2001', 39, 'Buah'),
(1239, 'Jambu monyet, segar', 0, 0.7, 15.8, 0.6, 64, 'CA', '2022-08-25 08:07:04.918779', '2022-08-25 08:07:04.918779', 100, 'DABM-1964', 39, 'Buah'),
(1240, 'Jeruk bali, segar', 0, 0.6, 12.4, 0.2, 48, 'CA', '2022-08-25 08:07:04.925528', '2022-08-25 08:07:04.925528', 100, 'DABM-1964', 39, 'Buah'),
(1241, 'Jeruk banjar, segar', 0, 0.8, 14.1, 0.2, 61, 'CA', '2022-08-25 08:07:04.931760', '2022-08-25 08:07:04.931760', 100, 'KZGMI-2001', 39, 'Buah'),
(1242, 'Jeruk garut-keprok', 0, 0.8, 10.9, 0.3, 44, 'CA', '2022-08-25 08:07:04.938770', '2022-08-25 08:07:04.938770', 100, 'DABM-1964', 39, 'Buah'),
(1243, 'Jeruk Kalamansi, segar', 0, 0.3, 8.9, 0.3, 39, 'CA', '2022-08-25 08:07:04.944800', '2022-08-25 08:07:04.944800', 100, 'BKP', 39, 'Buah'),
(1244, 'Jeruk manis, segar', 0, 0.9, 11.2, 0.2, 45, 'CA', '2022-08-25 08:07:04.950929', '2022-08-25 08:07:04.950929', 100, 'DABM-1964', 39, 'Buah'),
(1245, 'Jeruk nipis, segar', 0, 0.5, 10, 0.2, 44, 'BA', '2022-08-25 08:07:04.957047', '2022-08-25 08:07:04.957047', 100, 'KZGPI-1990', 39, 'Buah'),
(1246, 'Jeruk ragi, segar', 0, 0.7, 11.1, 0.2, 49, 'BA', '2022-08-25 08:07:04.963268', '2022-08-25 08:07:04.963268', 100, 'KZGPI-1990', 39, 'Buah'),
(1247, 'Kawista, segar', 0, 3.5, 20.8, 2.5, 120, 'CA', '2022-08-25 08:07:04.977380', '2022-08-25 08:07:04.977380', 100, 'KZGPI-1990', 39, 'Buah'),
(1248, 'Kelapa muda, daging, segar', 0, 1, 14, 0.9, 68, 'CA', '2022-08-25 08:07:04.983895', '2022-08-25 08:07:04.983895', 100, 'DABM-1964', 39, 'Buah'),
(1249, 'Kemang, segar', 0, 1, 11.9, 0.2, 48, 'CA', '2022-08-25 08:07:04.989340', '2022-08-25 08:07:04.989340', 100, 'DABM-1964', 39, 'Buah'),
(1250, 'Keripik lampung', 0, 1.7, 69.7, 22.2, 485, 'CA', '2022-08-25 08:07:04.997261', '2022-08-25 08:07:04.997261', 100, 'KZGPI-1990', 39, 'Buah'),
(1251, 'Kesemek, segar', 0, 0.8, 20, 0.4, 78, 'CA', '2022-08-25 08:07:05.004100', '2022-08-25 08:07:05.004100', 100, 'DABM-1964', 39, 'Buah'),
(1252, 'Kokosan, segar', 0, 1.6, 13, 0.2, 86, 'CA', '2022-08-25 08:07:05.010185', '2022-08-25 08:07:05.010185', 100, 'DABM-1964', 39, 'Buah'),
(1253, 'Kranji, segar', 0, 2.1, 73.5, 1.4, 315, 'CA', '2022-08-25 08:07:05.016400', '2022-08-25 08:07:05.016400', 100, 'KZGPI-1990', 39, 'Buah'),
(1254, 'Langsat, segar', 0, 0.9, 14.3, 0.2, 56, 'CA', '2022-08-25 08:07:05.023282', '2022-08-25 08:07:05.023282', 100, 'DABM-1964', 39, 'Buah'),
(1255, 'Ledre pisang', 0, 4.8, 84.9, 5.1, 405, 'CA', '2022-08-25 08:07:05.030390', '2022-08-25 08:07:05.030390', 100, 'KZGPI-1990', 39, 'Buah'),
(1256, 'Lemon, segar', 0, 0.5, 6.2, 0.8, 34, 'CA', '2022-08-25 08:07:05.038196', '2022-08-25 08:07:05.038196', 100, 'KZGMI-2001', 39, 'Buah'),
(1257, 'Lontar, segar', 0, 0.4, 6, 0.2, 27, 'CA', '2022-08-25 08:07:05.044639', '2022-08-25 08:07:05.044639', 100, 'KZGPI-1990', 39, 'Buah'),
(1258, 'Mangga benggala, segar', 0, 2.4, 12.4, 0.4, 63, 'CA', '2022-08-25 08:07:05.052056', '2022-08-25 08:07:05.052056', 100, 'KZGMI-2001', 39, 'Buah'),
(1259, 'Mangga gedung, segar', 0, 0.7, 11.2, 0.2, 44, 'CA', '2022-08-25 08:07:05.059734', '2022-08-25 08:07:05.059734', 100, 'DABM-1964', 39, 'Buah'),
(1260, 'Mangga golek, segar', 0, 0.5, 16.7, 0.2, 63, 'CA', '2022-08-25 08:07:05.067206', '2022-08-25 08:07:05.067206', 100, 'DABM-1964', 39, 'Buah'),
(1261, 'Mangga harumanis, segar', 0, 0.4, 11.9, 0.2, 46, 'CA', '2022-08-25 08:07:05.073541', '2022-08-25 08:07:05.073541', 100, 'DABM-1964', 39, 'Buah'),
(1262, 'Mangga indramayu, segar', 0, 0.8, 18.7, 0.2, 72, 'CA', '2022-08-25 08:07:05.079724', '2022-08-25 08:07:05.079724', 100, 'DABM-1964', 39, 'Buah'),
(1263, 'Mangga kopek, segar', 0, 0.4, 14.6, 0.2, 56, 'CA', '2022-08-25 08:07:05.085935', '2022-08-25 08:07:05.085935', 100, 'DABM-1964', 39, 'Buah'),
(1264, 'Mangga kwini, segar', 0, 0.7, 19.8, 0.5, 86, 'CA', '2022-08-25 08:07:05.092044', '2022-08-25 08:07:05.092044', 100, 'KZGMI-2001', 39, 'Buah'),
(1265, 'Mangga manalagi, segar', 0, 1, 32.1, 0.1, 133, 'CA', '2022-08-25 08:07:05.098293', '2022-08-25 08:07:05.098293', 100, 'KZGMI-2001', 39, 'Buah'),
(1266, 'Mangga muda, segar', 0, 0.5, 15.1, 0.4, 59, 'CA', '2022-08-25 08:07:05.104129', '2022-08-25 08:07:05.104129', 100, 'DABM-1964', 39, 'Buah'),
(1267, 'Mangga, segar', 0, 0.7, 12.3, 0, 52, 'CA', '2022-08-25 08:07:05.109890', '2022-08-25 08:07:05.109890', 100, 'KZGMI-2001', 39, 'Buah'),
(1268, 'Manggis, segar', 0, 0.6, 15.6, 0.6, 63, 'CA', '2022-08-25 08:07:05.116050', '2022-08-25 08:07:05.116050', 100, 'DABM-1964', 39, 'Buah'),
(1269, 'Markisa, segar', 0, 3.5, 29.8, 1.2, 144, 'CA', '2022-08-25 08:07:05.121872', '2022-08-25 08:07:05.121872', 100, 'KZGPI-1990', 39, 'Buah'),
(1270, 'Matoa, segar', 0, 1.2, 21.1, 0.1, 90, 'CA', '2022-08-25 08:07:05.128014', '2022-08-25 08:07:05.128014', 100, 'KZGMI-2001', 39, 'Buah'),
(1271, 'Melon, segar', 0, 0.6, 7.8, 0.4, 37, 'CA', '2022-08-25 08:07:05.135607', '2022-08-25 08:07:05.135607', 100, 'BKP', 39, 'Buah'),
(1272, 'Menteng, segar', 0, 1.7, 16.1, 0.3, 65, 'CA', '2022-08-25 08:07:05.142975', '2022-08-25 08:07:05.142975', 100, 'DABM-1964', 39, 'Buah'),
(1273, 'Mentimun Suri, segar', 0, 1.3, 2.1, 0, 16, 'CA', '2022-08-25 08:07:05.151210', '2022-08-25 08:07:05.151210', 100, 'PHKA2-2008', 39, 'Buah'),
(1274, 'Nanas palembang, segar', 0, 0.7, 13.3, 0.2, 58, 'CA', '2022-08-25 08:07:05.156501', '2022-08-25 08:07:05.156501', 100, 'KZGMI-2001', 39, 'Buah'),
(1275, 'Nanas, segar', 0, 0.6, 9.9, 0.3, 40, 'CA', '2022-08-25 08:07:05.162594', '2022-08-25 08:07:05.162594', 100, 'KZGPI-1990', 39, 'Buah'),
(1276, 'Nangka masak pohon, segar', 0, 1.2, 27.6, 0.3, 106, 'CA', '2022-08-25 08:07:05.169481', '2022-08-25 08:07:05.169481', 100, 'DABM-1964', 39, 'Buah'),
(1277, 'Pala, daging, segar', 0, 0.3, 10.9, 0.2, 42, 'CA', '2022-08-25 08:07:05.175466', '2022-08-25 08:07:05.175466', 100, 'DABM-1964', 39, 'Buah'),
(1278, 'Pepaya, segar', 0, 0.5, 12.2, 12, 46, 'CA', '2022-08-25 08:07:05.181623', '2022-08-25 08:07:05.181623', 100, 'DABM-1964', 39, 'Buah'),
(1279, 'Pisang ambon, segar', 0, 1, 24.3, 0.8, 108, 'CA', '2022-08-25 08:07:05.187855', '2022-08-25 08:07:05.187855', 100, 'KZGMI-2001', 39, 'Buah'),
(1280, 'Purut, segar', 0, 4.1, 15.2, 1.1, 76, 'CA', '2022-08-25 08:07:05.193967', '2022-08-25 08:07:05.193967', 100, 'KZGPI-1990', 39, 'Buah'),
(1281, 'Rambutan binjai, segar', 0, 0.5, 18, 0.2, 76, 'CA', '2022-08-25 08:07:05.199357', '2022-08-25 08:07:05.199357', 100, 'KZGMI-2001', 39, 'Buah'),
(1282, 'Rambutan, segar', 0, 0.9, 18.1, 0.1, 69, 'CA', '2022-08-25 08:07:05.205045', '2022-08-25 08:07:05.205045', 100, 'DABM-1964', 39, 'Buah'),
(1283, 'Rica-rica taipa', 0, 1.6, 10, 0.3, 49, 'ME', '2022-08-25 08:07:05.211224', '2022-08-25 08:07:05.211224', 100, 'KZGMI-2001', 39, 'Buah'),
(1284, 'Rujak aceh', 0, 0.4, 19.7, 0.3, 82, 'ME', '2022-08-25 08:07:05.218385', '2022-08-25 08:07:05.218385', 100, 'KZGMI-2001', 39, 'Buah'),
(1285, 'Salak bali, segar', 0, 0.5, 13.6, 0.1, 57, 'CA', '2022-08-25 08:07:05.225544', '2022-08-25 08:07:05.225544', 100, 'KZGPI-1990', 39, 'Buah'),
(1286, 'Salak medan, segar', 0, 0.4, 12.8, 0.2, 55, 'CA', '2022-08-25 08:07:05.232702', '2022-08-25 08:07:05.232702', 100, 'KZGMI-2001', 39, 'Buah'),
(1287, 'Salak pondoh, segar', 0, 0.8, 20.1, 0.4, 87, 'CA', '2022-08-25 08:07:05.239335', '2022-08-25 08:07:05.239335', 100, 'KZGPI-1990', 39, 'Buah'),
(1288, 'Salak, segar', 0, 0.4, 20.9, 0, 77, 'CA', '2022-08-25 08:07:05.245610', '2022-08-25 08:07:05.245610', 100, 'DABM-1964', 39, 'Buah'),
(1289, 'Sale kesemek', 0, 1.1, 71.4, 0.6, 296, 'CA', '2022-08-25 08:07:05.253679', '2022-08-25 08:07:05.253679', 100, 'KZGMI-2001', 39, 'Buah'),
(1290, 'Sale pisang siam', 0, 2.4, 66.1, 0.7, 281, 'CA', '2022-08-25 08:07:05.260763', '2022-08-25 08:07:05.260763', 100, 'KZGPI-1990', 39, 'Buah'),
(1291, 'Sale pisang, cilacap', 0, 2.3, 66.9, 2.1, 295, 'CA', '2022-08-25 08:07:05.269094', '2022-08-25 08:07:05.269094', 100, 'KZGPI-1990', 39, 'Buah'),
(1292, 'Sawo duren, segar', 0, 1, 8, 3.1, 64, 'CA', '2022-08-25 08:07:05.276303', '2022-08-25 08:07:05.276303', 100, 'KZGPI-1990', 39, 'Buah'),
(1293, 'Sawo kecik, segar', 0, 0.9, 21.6, 2.3, 111, 'CA', '2022-08-25 08:07:05.284167', '2022-08-25 08:07:05.284167', 100, 'KZGPI-1990', 39, 'Buah'),
(1294, 'Sawo Manila, segar', 0, 0.5, 22.4, 1.1, 92, 'CA', '2022-08-25 08:07:05.289901', '2022-08-25 08:07:05.289901', 100, 'DABM-1964', 39, 'Buah'),
(1295, 'Semangka, segar', 0, 0.5, 6.9, 0.2, 28, 'CA', '2022-08-25 08:07:05.296552', '2022-08-25 08:07:05.296552', 100, 'DABM-1964', 39, 'Buah'),
(1296, 'Sirsak, segar', 0, 1, 16.3, 0.3, 65, 'CA', '2022-08-25 08:07:05.303015', '2022-08-25 08:07:05.303015', 100, 'DABM-1964', 39, 'Buah'),
(1297, 'Sowa, segar', 0, 1.6, 9.1, 0.6, 48, 'CA', '2022-08-25 08:07:05.309017', '2022-08-25 08:07:05.309017', 100, 'KZGMI-2001', 39, 'Buah'),
(1298, 'Srikaya, segar', 0, 1.1, 13.9, 0.5, 63, 'CA', '2022-08-25 08:07:05.315281', '2022-08-25 08:07:05.315281', 100, 'KZGPI-1990', 39, 'Buah'),
(1299, 'Sukun muda, segar', 0, 1.4, 28.1, 0.2, 119, 'CA', '2022-08-25 08:07:05.322342', '2022-08-25 08:07:05.322342', 100, 'KZGPI-1990', 39, 'Buah'),
(1300, 'Sukun tua, segar', 0, 1.6, 24.5, 0.2, 126, 'CA', '2022-08-25 08:07:05.330405', '2022-08-25 08:07:05.330405', 100, 'KZGPI-1990', 39, 'Buah'),
(1301, 'Vigus, segar', 0, 2.4, 8.3, 0.1, 44, 'CA', '2022-08-25 08:07:05.336286', '2022-08-25 08:07:05.336286', 100, 'KZGMI-2001', 39, 'Buah'),
(1302, 'Wani, segar', 0, 0.8, 17.1, 0.3, 74, 'CA', '2022-08-25 08:07:05.341350', '2022-08-25 08:07:05.341350', 100, 'KZGPI-1990', 39, 'Buah'),
(1303, 'Ayam, ampela, goreng', 0, 32.3, 9.9, 11.2, 270, 'ME', '2022-08-25 08:07:05.347509', '2022-08-25 08:07:05.347509', 100, 'KZGMS-1993', 39, 'Daging'),
(1304, 'Ayam, usus, goreng', 0, 45.2, 13.9, 26.3, 473, 'ME', '2022-08-25 08:07:05.354251', '2022-08-25 08:07:05.354251', 100, 'KZGPI-1990', 39, 'Daging'),
(1305, 'Bebek, daging, goreng', 0, 24, 4.5, 20.7, 300, 'ME', '2022-08-25 08:07:05.361306', '2022-08-25 08:07:05.361306', 100, 'KZGMI-2001', 39, 'Daging'),
(1306, 'Buaya, daging, dendeng, mentah', 0, 49.6, 30.8, 4.8, 365, 'ME', '2022-08-25 08:07:05.368038', '2022-08-25 08:07:05.368038', 100, 'KZGMI-2001', 39, 'Daging'),
(1307, 'Sapi, abon', 0, 18, 59.3, 10.6, 212, 'BA', '2022-08-25 08:07:05.374090', '2022-08-25 08:07:05.374090', 100, 'KZGPI-1990', 39, 'Daging'),
(1308, 'Sapi, abon, asli', 0, 14.6, 38.6, 16.1, 358, 'BA', '2022-08-25 08:07:05.380675', '2022-08-25 08:07:05.380675', 100, 'KZGPI-1990', 39, 'Daging'),
(1309, 'Sapi, daging, asap', 0, 32, 0, 6, 182, 'BA', '2022-08-25 08:07:05.387998', '2022-08-25 08:07:05.387998', 100, 'DABM-1964', 39, 'Daging'),
(1310, 'Sapi, daging, dendeng, mentah', 0, 55, 0, 9, 301, 'BA', '2022-08-25 08:07:05.395342', '2022-08-25 08:07:05.395342', 100, 'DABM-1964', 39, 'Daging'),
(1311, 'Sapi, daging, kornet', 0, 16, 0, 25, 289, 'BA', '2022-08-25 08:07:05.400661', '2022-08-25 08:07:05.400661', 100, 'DABM-1964', 39, 'Daging'),
(1312, 'Sapi, daging, sosis (Worst)', 0, 14.5, 2.3, 42.3, 448, 'BA', '2022-08-25 08:07:05.405743', '2022-08-25 08:07:05.405743', 100, 'DABM-1964', 39, 'Daging'),
(1313, 'Sapi, hati, sosis (liverworst)', 0, 16, 3, 22, 274, 'BA', '2022-08-25 08:07:05.410819', '2022-08-25 08:07:05.410819', 100, 'DABM-1964', 39, 'Daging'),
(1314, 'Sapi, paru, dendeng, mentah', 0, 57.3, 19.2, 6, 360, 'BA', '2022-08-25 08:07:05.417432', '2022-08-25 08:07:05.417432', 100, 'KZGMI-2001', 39, 'Daging'),
(1315, 'Sapi, paru, goreng', 0, 23.9, 14.5, 12.7, 268, 'BA', '2022-08-25 08:07:05.424737', '2022-08-25 08:07:05.424737', 100, 'KZGMS-1993', 39, 'Daging'),
(1316, 'Ayam goreng church texas, dada', 0, 35.2, 0.4, 20.6, 338, 'ME', '2022-08-25 08:07:05.431585', '2022-08-25 08:07:05.431585', 100, 'KZGPI-1990', 39, 'Daging'),
(1317, 'Ayam goreng church,texas paha', 0, 31, 1.7, 15.7, 287, 'ME', '2022-08-25 08:07:05.438222', '2022-08-25 08:07:05.438222', 100, 'KZGPI-1990', 39, 'Daging'),
(1318, 'Ayam goreng church texas, sayap', 0, 34, 1.5, 16, 295, 'ME', '2022-08-25 08:07:05.444923', '2022-08-25 08:07:05.444923', 100, 'KZGPI-1990', 39, 'Daging'),
(1319, 'Ayam goreng kalasan, paha', 0, 37.4, 1.3, 12.2, 275, 'ME', '2022-08-25 08:07:05.450871', '2022-08-25 08:07:05.450871', 100, 'KZGPI-1990', 39, 'Daging'),
(1320, 'Ayam goreng kentucky, dada', 0, 34.2, 0.1, 16.8, 298, 'ME', '2022-08-25 08:07:05.457487', '2022-08-25 08:07:05.457487', 100, 'KZGPI-1990', 39, 'Daging'),
(1321, 'Ayam goreng Kentucky, paha', 0, 32.1, 1.1, 16.1, 286, 'ME', '2022-08-25 08:07:05.464478', '2022-08-25 08:07:05.464478', 100, 'KZGPI-1990', 39, 'Daging'),
(1322, 'Ayam goreng Kentucky,sayap', 0, 35.9, 1.6, 15.2, 297, 'ME', '2022-08-25 08:07:05.471803', '2022-08-25 08:07:05.471803', 100, 'KZGPI-1990', 39, 'Daging'),
(1323, 'Ayam goreng mbok berek dada', 0, 39.2, 1, 13.6, 295, 'ME', '2022-08-25 08:07:05.478245', '2022-08-25 08:07:05.478245', 100, 'KZGPI-1990', 39, 'Daging'),
(1324, 'Ayam goreng pasundan, dada', 0, 37.9, 0.7, 9, 246, 'ME', '2022-08-25 08:07:05.485320', '2022-08-25 08:07:05.485320', 100, 'KZGPI-1990', 39, 'Daging'),
(1325, 'Ayam goreng pasundan, paha', 0, 33.1, 0.3, 11.4, 245, 'ME', '2022-08-25 08:07:05.491563', '2022-08-25 08:07:05.491563', 100, 'KZGPI-1990', 39, 'Daging'),
(1326, 'Ayam goreng pioneer, dada', 0, 37.4, 0.6, 14.7, 295, 'ME', '2022-08-25 08:07:05.497352', '2022-08-25 08:07:05.497352', 100, 'KZGPI-1990', 39, 'Daging'),
(1327, 'Ayam goreng sukabumi, dada', 0, 36.7, 1, 9.2, 244, 'ME', '2022-08-25 08:07:05.503180', '2022-08-25 08:07:05.503180', 100, 'KZGPI-1990', 39, 'Daging'),
(1328, 'Ayam goreng sukabumi, paha', 0, 35.7, 0.5, 14.3, 283, 'ME', '2022-08-25 08:07:05.507831', '2022-08-25 08:07:05.507831', 100, 'KZGPI-1990', 39, 'Daging'),
(1329, 'Ayam taliwang, masakan', 0, 18.2, 2.7, 20.1, 264, 'ME', '2022-08-25 08:07:05.514946', '2022-08-25 08:07:05.514946', 100, 'KZGMI-2001', 39, 'Daging'),
(1330, 'Brongkos', 0, 15.3, 12.6, 3.3, 141, 'ME', '2022-08-25 08:07:05.522576', '2022-08-25 08:07:05.522576', 100, 'KZGPI-1990', 39, 'Daging'),
(1331, 'Rawon, masakan', 0, 5.4, 4, 2.5, 60, 'ME', '2022-08-25 08:07:05.529194', '2022-08-25 08:07:05.529194', 100, 'KZGPI-1990', 39, 'Daging'),
(1332, 'Rendang sapi, masakan', 0, 22.6, 7.8, 7.9, 193, 'ME', '2022-08-25 08:07:05.535961', '2022-08-25 08:07:05.535961', 100, 'KZGPI-1990', 39, 'Daging'),
(1333, 'Sop daging sapi, masakan', 0, 5.8, 5.3, 0.5, 49, 'ME', '2022-08-25 08:07:05.541107', '2022-08-25 08:07:05.541107', 100, 'KZGMS-1993', 39, 'Daging'),
(1334, 'Sop kaki sapi, masakan', 0, 9, 3.7, 1.9, 68, 'ME', '2022-08-25 08:07:05.546849', '2022-08-25 08:07:05.546849', 100, 'KZGMS-1993', 39, 'Daging'),
(1335, 'Sop kambing, masakan', 0, 5.5, 1.1, 0.8, 34, 'ME', '2022-08-25 08:07:05.553058', '2022-08-25 08:07:05.553058', 100, 'KZGMS-1993', 39, 'Daging'),
(1336, 'Sop konro, masakan', 0, 7.4, 4.5, 2.6, 71, 'ME', '2022-08-25 08:07:05.560782', '2022-08-25 08:07:05.560782', 100, 'KZGMI-2001', 39, 'Daging'),
(1337, 'Sop saudara, masakan', 0, 7.2, 3.9, 5, 89, 'ME', '2022-08-25 08:07:05.569307', '2022-08-25 08:07:05.569307', 100, 'KZGMI-2001', 39, 'Daging'),
(1338, 'Soto bandung, masakan', 0, 3.9, 2.8, 1.7, 42, 'ME', '2022-08-25 08:07:05.575553', '2022-08-25 08:07:05.575553', 100, 'KZGPI-1990', 39, 'Daging'),
(1339, 'Soto banjar, masakan', 0, 2.9, 3.2, 9.5, 110, 'ME', '2022-08-25 08:07:05.581811', '2022-08-25 08:07:05.581811', 100, 'KZGMI-2001', 39, 'Daging'),
(1340, 'Soto betawi, masakan', 0, 2.5, 11.5, 8.8, 135, 'ME', '2022-08-25 08:07:05.587601', '2022-08-25 08:07:05.587601', 100, 'KZGPI-1990', 39, 'Daging'),
(1341, 'Soto jeroan, masakan', 0, 11.8, 1.4, 4.3, 92, 'ME', '2022-08-25 08:07:05.593578', '2022-08-25 08:07:05.593578', 100, 'KZGMS-1993', 39, 'Daging'),
(1342, 'Soto kudus, masakan', 0, 2.6, 1.8, 2.3, 38, 'ME', '2022-08-25 08:07:05.599613', '2022-08-25 08:07:05.599613', 100, 'KZGPI-1990', 39, 'Daging'),
(1343, 'Soto madura, masakan', 0, 3.5, 1.3, 4.5, 60, 'ME', '2022-08-25 08:07:05.605564', '2022-08-25 08:07:05.605564', 100, 'KZGPI-1990', 39, 'Daging'),
(1344, 'Soto padang, masakan', 0, 5.9, 11, 6.6, 127, 'ME', '2022-08-25 08:07:05.612321', '2022-08-25 08:07:05.612321', 100, 'KZGPI-1990', 39, 'Daging'),
(1345, 'Soto pekalongan, masakan', 0, 3, 5.1, 6.8, 94, 'ME', '2022-08-25 08:07:05.620432', '2022-08-25 08:07:05.620432', 100, 'KZGPI-1990', 39, 'Daging'),
(1346, 'Soto pemalang, masakan', 0, 3.6, 3.5, 5.2, 75, 'ME', '2022-08-25 08:07:05.627022', '2022-08-25 08:07:05.627022', 100, 'KZGPI-1990', 39, 'Daging'),
(1347, 'Soto sukaraja, masakan', 0, 3.2, 9, 3.5, 80, 'ME', '2022-08-25 08:07:05.633545', '2022-08-25 08:07:05.633545', 100, 'KZGPI-1990', 39, 'Daging'),
(1348, 'Soto sulung, masakan', 0, 2.3, 0, 8.5, 86, 'ME', '2022-08-25 08:07:05.638736', '2022-08-25 08:07:05.638736', 100, 'KZGPI-1990', 39, 'Daging'),
(1349, 'Tedong pallu basa, masakan', 0, 10.4, 2.8, 3.4, 83, 'ME', '2022-08-25 08:07:05.644489', '2022-08-25 08:07:05.644489', 100, 'KZGMI-2001', 39, 'Daging'),
(1350, 'Anak sapi, daging, gemuk, segar', 0, 18.8, 0, 14, 184, 'BA', '2022-08-25 08:07:05.650297', '2022-08-25 08:07:05.650297', 100, 'DABM-1964', 39, 'Daging'),
(1351, 'Anak sapi, daging, kurus, segar', 0, 19.6, 0, 10, 174, 'BA', '2022-08-25 08:07:05.657160', '2022-08-25 08:07:05.657160', 100, 'DABM-1964', 39, 'Daging'),
(1352, 'Anak sapi, daging, sedang, segar', 0, 19.1, 0, 12, 190, 'BA', '2022-08-25 08:07:05.663172', '2022-08-25 08:07:05.663172', 100, 'DABM-1964', 39, 'Daging'),
(1353, 'Angsa, daging, segar', 0, 16.4, 0, 31.5, 349, 'BA', '2022-08-25 08:07:05.670036', '2022-08-25 08:07:05.670036', 100, 'DABM-1964', 39, 'Daging'),
(1354, 'Ayam, daging, segar', 0, 18.2, 0, 25, 298, 'BA', '2022-08-25 08:07:05.675774', '2022-08-25 08:07:05.675774', 100, 'DABM-1964', 39, 'Daging'),
(1355, 'Ayam, dideh/darah, segar', 0, 13.8, 0.7, 1.9, 75, 'BA', '2022-08-25 08:07:05.683210', '2022-08-25 08:07:05.683210', 100, 'DABM-1964', 39, 'Daging'),
(1356, 'Ayam, hati, segar', 0, 27.4, 1.6, 16.1, 261, 'BA', '2022-08-25 08:07:05.689281', '2022-08-25 08:07:05.689281', 100, 'KZGMS-1993', 39, 'Daging'),
(1357, 'Babi, daging, gemuk,segar', 0, 11.9, 0, 45, 453, 'BA', '2022-08-25 08:07:05.696104', '2022-08-25 08:07:05.696104', 100, 'DABM-1964', 39, 'Daging'),
(1358, 'Babi, daging, kurus, segar', 0, 14.1, 0, 35, 371, 'BA', '2022-08-25 08:07:05.702068', '2022-08-25 08:07:05.702068', 100, 'DABM-1964', 39, 'Daging'),
(1359, 'Babi, ginjal, segar', 0, 16.3, 0.8, 4.6, 110, 'BA', '2022-08-25 08:07:05.707663', '2022-08-25 08:07:05.707663', 100, 'DABM-1964', 39, 'Daging'),
(1360, 'Babi, hati, segar', 0, 19.7, 1.7, 4.8, 129, 'BA', '2022-08-25 08:07:05.713759', '2022-08-25 08:07:05.713759', 100, 'DABM-1964', 39, 'Daging'),
(1361, 'Bebek (itik), daging, segar', 0, 16, 0, 28.6, 321, 'BA', '2022-08-25 08:07:05.719313', '2022-08-25 08:07:05.719313', 100, 'DABM-1964', 39, 'Daging'),
(1362, 'Bebek alabio, daging, segar', 0, 11.3, 3.7, 27, 303, 'BA', '2022-08-25 08:07:05.724254', '2022-08-25 08:07:05.724254', 100, 'KZGMI-2001', 39, 'Daging'),
(1363, 'Belibis, daging, segar', 0, 20.2, 2.8, 4.3, 131, 'BA', '2022-08-25 08:07:05.733322', '2022-08-25 08:07:05.733322', 100, 'KZGMI-2001', 39, 'Daging'),
(1364, 'Burung, sarang, segar', 0, 37.5, 32.1, 0.3, 281, 'BA', '2022-08-25 08:07:05.744092', '2022-08-25 08:07:05.744092', 100, 'DABM-1964', 39, 'Daging'),
(1365, 'Domba, daging, gemuk, segar', 0, 15.7, 0, 27.7, 317, 'BA', '2022-08-25 08:07:05.752331', '2022-08-25 08:07:05.752331', 100, 'DABM-1964', 39, 'Daging'),
(1366, 'Domba, daging, kurus, segar', 0, 17.1, 0, 14.8, 202, 'BA', '2022-08-25 08:07:05.758670', '2022-08-25 08:07:05.758670', 100, 'DABM-1964', 39, 'Daging'),
(1367, 'Domba, ginjal, segar', 0, 16.6, 1, 3.3, 100, 'BA', '2022-08-25 08:07:05.766757', '2022-08-25 08:07:05.766757', 100, 'DABM-1964', 39, 'Daging'),
(1368, 'Kambing, daging, segar', 0, 16.6, 0, 9.2, 149, 'BA', '2022-08-25 08:07:05.772367', '2022-08-25 08:07:05.772367', 100, 'DABM-1964', 39, 'Daging'),
(1369, 'Kelinci, daging, segar', 0, 16.9, 0, 7.8, 142, 'BA', '2022-08-25 08:07:05.777572', '2022-08-25 08:07:05.777572', 100, 'FCTEA-1972', 39, 'Daging'),
(1370, 'Kerbau, daging, segar', 0, 18.7, 0, 0.5, 79, 'BA', '2022-08-25 08:07:05.783621', '2022-08-25 08:07:05.783621', 100, 'DABM-1964', 39, 'Daging'),
(1371, 'Kuda, daging, segar', 0, 18.1, 0.9, 4.1, 113, 'BA', '2022-08-25 08:07:05.789336', '2022-08-25 08:07:05.789336', 100, 'DABM-1964', 39, 'Daging'),
(1372, 'Sapi, babat, segar', 0, 17.6, 0, 4.2, 108, 'BA', '2022-08-25 08:07:05.795469', '2022-08-25 08:07:05.795469', 100, 'DABM-1964', 39, 'Daging'),
(1373, 'Sapi, daging, gemuk, segar', 0, 17.5, 0, 22, 273, 'BA', '2022-08-25 08:07:05.801759', '2022-08-25 08:07:05.801759', 100, 'DABM-1964', 39, 'Daging'),
(1374, 'Sapi, daging, kurus, segar', 0, 19.6, 0, 10, 174, 'BA', '2022-08-25 08:07:05.807879', '2022-08-25 08:07:05.807879', 100, 'DABM-1964', 39, 'Daging'),
(1375, 'Sapi, daging, lemak sedang, segar', 0, 18.8, 0, 14, 201, 'BA', '2022-08-25 08:07:05.814849', '2022-08-25 08:07:05.814849', 100, 'DABM-1964', 39, 'Daging'),
(1376, 'Sapi, daleman, segar', 0, 12, 1.4, 14.4, 183, 'BA', '2022-08-25 08:07:05.821714', '2022-08-25 08:07:05.821714', 100, 'KZGMI-2001', 39, 'Daging'),
(1377, 'Sapi, dideh/darah', 0, 21.9, 0, 1.1, 98, 'BA', '2022-08-25 08:07:05.828011', '2022-08-25 08:07:05.828011', 100, 'DABM-1964', 39, 'Daging'),
(1378, 'Sapi, ginjal, segar', 0, 15, 0.9, 8.1, 137, 'BA', '2022-08-25 08:07:05.834912', '2022-08-25 08:07:05.834912', 100, 'DABM-1964', 39, 'Daging'),
(1379, 'Sapi, keleponan, segar', 0, 10.5, 0.2, 4.6, 84, 'BA', '2022-08-25 08:07:05.841118', '2022-08-25 08:07:05.841118', 100, 'KZGMI-2001', 39, 'Daging'),
(1380, 'Sapi, liver, segar', 0, 19.7, 6, 3.2, 132, 'BA', '2022-08-25 08:07:05.847054', '2022-08-25 08:07:05.847054', 100, 'DABM-1964', 39, 'Daging'),
(1381, 'Sapi, otak, segar', 0, 10.4, 0.8, 8.6, 123, 'BA', '2022-08-25 08:07:05.853750', '2022-08-25 08:07:05.853750', 100, 'DABM-1964', 39, 'Daging'),
(1382, 'Sapi, usus, segar', 0, 14, 1.5, 7.2, 126, 'BA', '2022-08-25 08:07:05.859670', '2022-08-25 08:07:05.859670', 100, 'DABM-1964', 39, 'Daging'),
(1383, 'Ulat sagu segar', 0, 5.8, 5.8, 21.6, 241, 'BA', '2022-08-25 08:07:05.865629', '2022-08-25 08:07:05.865629', 100, 'KZGMI-2001', 39, 'Daging'),
(1384, 'Cumi-cumi, goreng', 0, 40.6, 0, 10.1, 265, 'BA', '2022-08-25 08:07:05.871746', '2022-08-25 08:07:05.871746', 100, 'KZGPI-1990', 39, 'Ikan dsb'),
(1385, 'Ikan asin, kering', 0, 42, 0, 1.5, 193, 'BA', '2022-08-25 08:07:05.877451', '2022-08-25 08:07:05.877451', 100, 'DABM-1964', 39, 'Ikan dsb'),
(1386, 'Ikan bandeng presto, masakan', 0, 17.1, 11.3, 20.3, 296, 'BA', '2022-08-25 08:07:05.884269', '2022-08-25 08:07:05.884269', 100, 'KZGPI-1990', 39, 'Ikan dsb'),
(1387, 'Ikan baung bakar', 0, 17.8, 5.2, 5.8, 144, 'BA', '2022-08-25 08:07:05.891641', '2022-08-25 08:07:05.891641', 100, 'KZGMI-2001', 39, 'Ikan dsb'),
(1388, 'Ikan Belida bakar', 0, 18, 7.2, 3, 128, 'BA', '2022-08-25 08:07:05.898313', '2022-08-25 08:07:05.898313', 100, 'KZGMI-2001', 39, 'Ikan dsb'),
(1389, 'Ikan cakalang asap, mentah', 0, 34.2, 1.9, 5.6, 204, 'BA', '2022-08-25 08:07:05.903353', '2022-08-25 08:07:05.903353', 100, 'KZGMI-2001', 39, 'Ikan dsb'),
(1390, 'Ikan cakalang asin, mentah', 0, 36.5, 5.5, 2.2, 198, 'BA', '2022-08-25 08:07:05.909330', '2022-08-25 08:07:05.909330', 100, 'KZGPI-1990', 39, 'Ikan dsb'),
(1391, 'Ikan calo/ peda, mentah', 0, 11.4, 3.8, 1.9, 81, 'BA', '2022-08-25 08:07:05.915390', '2022-08-25 08:07:05.915390', 100, 'KZGPI-1990', 39, 'Ikan dsb'),
(1392, 'Ikan Gabus asap, mentah', 0, 38.1, 21.9, 2.3, 261, 'BA', '2022-08-25 08:07:05.921245', '2022-08-25 08:07:05.921245', 100, 'KZGMI-2001', 39, 'Ikan dsb'),
(1393, 'Ikan Gabus, kering', 0, 58, 0, 4, 268, 'BA', '2022-08-25 08:07:05.927097', '2022-08-25 08:07:05.927097', 100, 'DABM-1964', 39, 'Ikan dsb'),
(1394, 'Ikan gete, goreng', 0, 23.1, 0.2, 19.4, 267, 'BA', '2022-08-25 08:07:05.934084', '2022-08-25 08:07:05.934084', 100, 'KZGMI-2001', 39, 'Ikan dsb'),
(1395, 'Ikan hiu, kering', 0, 46.3, 20.2, 3.6, 298, 'BA', '2022-08-25 08:07:05.940060', '2022-08-25 08:07:05.940060', 100, 'KZGMI-2001', 39, 'Ikan dsb'),
(1396, 'Ikan katombo, asin', 0, 31.7, 0.3, 2.8, 162, 'BA', '2022-08-25 08:07:05.946498', '2022-08-25 08:07:05.946498', 100, 'KZGPI-1990', 39, 'Ikan dsb'),
(1397, 'Ikan kayu, kering', 0, 70.7, 0.4, 1.9, 302, 'BA', '2022-08-25 08:07:05.953102', '2022-08-25 08:07:05.953102', 100, 'KZGMI-2001', 39, 'Ikan dsb'),
(1398, 'Ikan Lais bakar', 0, 17.5, 5.4, 6.5, 147, 'BA', '2022-08-25 08:07:05.957807', '2022-08-25 08:07:05.957807', 100, 'KZGMI-2001', 39, 'Ikan dsb'),
(1399, 'Ikan lomak asin, mentah', 0, 40.3, 18.9, 2.3, 258, 'BA', '2022-08-25 08:07:05.963192', '2022-08-25 08:07:05.963192', 100, 'KZGMI-2001', 39, 'Ikan dsb'),
(1400, 'Ikan Mas pepes', 0, 15.2, 11.8, 11.3, 209, 'BA', '2022-08-25 08:07:05.968986', '2022-08-25 08:07:05.968986', 100, 'KZGPI-1990', 39, 'Ikan dsb'),
(1401, 'Ikan mujahir goreng', 0, 46.9, 0, 23.9, 416, 'BA', '2022-08-25 08:07:05.974963', '2022-08-25 08:07:05.974963', 100, 'KZGPI-1990', 39, 'Ikan dsb'),
(1402, 'Ikan Mujahir pepes', 0, 21.7, 0.8, 2.8, 121, 'BA', '2022-08-25 08:07:05.982002', '2022-08-25 08:07:05.982002', 100, 'KZGPI-1990', 39, 'Ikan dsb');
INSERT INTO `base_makanan` (`id`, `nama`, `porsi`, `protein`, `lemak`, `karbo`, `energi`, `jenis`, `created_at`, `updated_at`, `berat_porsi`, `sumber`, `besar_porsi_id`, `kelompok`) VALUES
(1403, 'Ikan mujahir, dendeng, mentah', 0, 68.3, 37.2, 15.2, 582, 'BA', '2022-08-25 08:07:05.987937', '2022-08-25 08:07:05.987937', 100, 'KZGPI-1990', 39, 'Ikan dsb'),
(1404, 'Ikan Papuyu, bakar', 0, 17.6, 6.7, 6.1, 152, 'BA', '2022-08-25 08:07:05.994211', '2022-08-25 08:07:05.994211', 100, 'KZGMI-2001', 39, 'Ikan dsb'),
(1405, 'Ikan Patin, bakar', 0, 17.5, 4.3, 6.3, 144, 'BA', '2022-08-25 08:07:06.000214', '2022-08-25 08:07:06.000214', 100, 'KZGMI-2001', 39, 'Ikan dsb'),
(1406, 'Ikan peda banjar, mentah', 0, 28, 2, 4, 156, 'BA', '2022-08-25 08:07:06.006330', '2022-08-25 08:07:06.006330', 100, 'DABM-1964', 39, 'Ikan dsb'),
(1407, 'Ikan pepetek, mentah', 0, 32, 2, 4.4, 176, 'BA', '2022-08-25 08:07:06.012861', '2022-08-25 08:07:06.012861', 100, 'DABM-60/64', 39, 'Ikan dsb'),
(1408, 'Ikan Pindang banjar, mentah', 0, 28, 1.8, 4.2, 157, 'BA', '2022-08-25 08:07:06.019716', '2022-08-25 08:07:06.019716', 100, 'DABM-60/64', 39, 'Ikan dsb'),
(1409, 'Ikan Pindang benggol, mentah', 0, 31, 0, 4.2, 170, 'BA', '2022-08-25 08:07:06.025689', '2022-08-25 08:07:06.025689', 100, 'DABM-60/64', 39, 'Ikan dsb'),
(1410, 'Ikan Pindang layang, mentah', 0, 30, 0, 2.8, 153, 'BA', '2022-08-25 08:07:06.033658', '2022-08-25 08:07:06.033658', 100, 'DABM-60/64', 39, 'Ikan dsb'),
(1411, 'Ikan Pindang selar, mentah', 0, 27, 0, 3, 142, 'BA', '2022-08-25 08:07:06.040126', '2022-08-25 08:07:06.040126', 100, 'DABM-60/64', 39, 'Ikan dsb'),
(1412, 'Ikan sale lais, mentah', 0, 61.3, 2.9, 17.6, 415, 'BA', '2022-08-25 08:07:06.046681', '2022-08-25 08:07:06.046681', 100, 'KZGPI-1990', 39, 'Ikan dsb'),
(1413, 'Ikan saluang, kering, mentah', 0, 34.1, 14.6, 9.9, 284, 'BA', '2022-08-25 08:07:06.053274', '2022-08-25 08:07:06.053274', 100, 'KZGMI-2001', 39, 'Ikan dsb'),
(1414, 'Ikan sanggang, masakan', 0, 21.7, 20.7, 7.7, 240, 'BA', '2022-08-25 08:07:06.060257', '2022-08-25 08:07:06.060257', 100, 'KZGMI-2001', 39, 'Ikan dsb'),
(1415, 'Ikan selar kuning, cue, mentah', 0, 27, 0, 3.3, 138, 'BA', '2022-08-25 08:07:06.067291', '2022-08-25 08:07:06.067291', 100, 'DABM-1964', 39, 'Ikan dsb'),
(1416, 'Ikan selar, kering, mentah', 0, 38, 0, 3.5, 194, 'BA', '2022-08-25 08:07:06.073535', '2022-08-25 08:07:06.073535', 100, 'DABM-60/64', 39, 'Ikan dsb'),
(1417, 'Ikan sepat, kering, mentah', 0, 38, 0, 14, 289, 'BA', '2022-08-25 08:07:06.079940', '2022-08-25 08:07:06.079940', 100, 'DABM-60/64', 39, 'Ikan dsb'),
(1418, 'Ikan sunu, asin, mentah', 0, 34.1, 7.1, 3.8, 199, 'BA', '2022-08-25 08:07:06.086742', '2022-08-25 08:07:06.086742', 100, 'KZGMI-2001', 39, 'Ikan dsb'),
(1419, 'Ikan, tepung, mentah', 0, 60.1, 22.4, 6.5, 316, 'BA', '2022-08-25 08:07:06.096973', '2022-08-25 08:07:06.096973', 100, 'KZGPI-1990', 39, 'Ikan dsb'),
(1420, 'Ikan Teri nasi, kering, mentah', 0, 32.5, 0, 0.6, 144, 'BA', '2022-08-25 08:07:06.103741', '2022-08-25 08:07:06.103741', 100, 'DABM-60/64', 39, 'Ikan dsb'),
(1421, 'Ikan Teri, bubuk, mentah', 0, 60, 1.8, 2.3, 277, 'BA', '2022-08-25 08:07:06.113000', '2022-08-25 08:07:06.113000', 100, 'DABM-60/64', 39, 'Ikan dsb'),
(1422, 'Ikan teri, kering, mentah', 0, 33.4, 0, 3, 170, 'BA', '2022-08-25 08:07:06.119197', '2022-08-25 08:07:06.119197', 100, 'DABM-60/64', 39, 'Ikan dsb'),
(1423, 'Ikan Teri, kering, tawar, mentah', 0, 68.7, 0, 4.2, 331, 'BA', '2022-08-25 08:07:06.124355', '2022-08-25 08:07:06.124355', 100, 'DABM-60/64', 39, 'Ikan dsb'),
(1424, 'Ikan Teri, tepung, mentah', 0, 48.8, 19.6, 6.4, 347, 'BA', '2022-08-25 08:07:06.131825', '2022-08-25 08:07:06.131825', 100, 'KZGPI-1990', 39, 'Ikan dsb'),
(1425, 'Kerang, asap, mentah', 0, 38.9, 29.4, 13.3, 393, 'BA', '2022-08-25 08:07:06.138533', '2022-08-25 08:07:06.138533', 100, 'KZGMI-2001', 39, 'Ikan dsb'),
(1426, 'Kerang, dendeng, mentah', 0, 41.1, 25.6, 10, 357, 'BA', '2022-08-25 08:07:06.146983', '2022-08-25 08:07:06.146983', 100, 'KZGPI-1990', 39, 'Ikan dsb'),
(1427, 'Rebon, kering, mentah', 0, 59.4, 3.2, 3.6, 299, 'BA', '2022-08-25 08:07:06.153699', '2022-08-25 08:07:06.153699', 100, 'DABM-60/64', 39, 'Ikan dsb'),
(1428, 'Rebung laut, mentah', 0, 7.2, 63.3, 4.2, 320, 'BA', '2022-08-25 08:07:06.160380', '2022-08-25 08:07:06.160380', 100, 'KZGMI-2001', 39, 'Ikan dsb'),
(1429, 'Rusip', 0, 11.5, 11.7, 2, 110, 'BA', '2022-08-25 08:07:06.167585', '2022-08-25 08:07:06.167585', 100, 'KZGPI-1990', 39, 'Ikan dsb'),
(1430, 'Sardines dalam kaleng', 0, 21.1, 1, 27, 338, 'BA', '2022-08-25 08:07:06.173534', '2022-08-25 08:07:06.173534', 100, 'DABM-60/64', 39, 'Ikan dsb'),
(1431, 'Teripang, dendeng, mentah', 0, 39.1, 3.5, 32.4, 462, 'BA', '2022-08-25 08:07:06.180864', '2022-08-25 08:07:06.180864', 100, 'KZGPI-1990', 39, 'Ikan dsb'),
(1432, 'Udang kering, mentah', 0, 62.6, 2.2, 4.1, 278, 'BA', '2022-08-25 08:07:06.186952', '2022-08-25 08:07:06.186952', 100, 'KZGMI-2001', 39, 'Ikan dsb'),
(1433, 'Abon ikan', 0, 27.2, 36.1, 20.2, 435, 'BA', '2022-08-25 08:07:06.192907', '2022-08-25 08:07:06.192907', 100, 'KZGMI-2001', 39, 'Ikan dsb'),
(1434, 'Betok wadi, masakan', 0, 16.3, 4.1, 7, 145, 'BA', '2022-08-25 08:07:06.197997', '2022-08-25 08:07:06.197997', 100, 'KZGMI-2001', 39, 'Ikan dsb'),
(1435, 'Bou ninahu ndamate, masakan', 0, 6.3, 1.1, 1, 79, 'BA', '2022-08-25 08:07:06.203827', '2022-08-25 08:07:06.203827', 100, 'KZGMI-2001', 39, 'Ikan dsb'),
(1436, 'Bouiki ninahu nggaluku, masakan', 0, 7.8, 10.8, 2.2, 94, 'BA', '2022-08-25 08:07:06.210004', '2022-08-25 08:07:06.210004', 100, 'KZGMI-2001', 39, 'Ikan dsb'),
(1437, 'Cakalang asar (asap papua)', 0, 20.1, 10.2, 3.8, 155, 'BA', '2022-08-25 08:07:06.216280', '2022-08-25 08:07:06.216280', 100, 'KZGMI-2001', 39, 'Ikan dsb'),
(1438, 'Dendeng belut, goreng', 0, 55.7, 8, 14.1, 382, 'BA', '2022-08-25 08:07:06.222032', '2022-08-25 08:07:06.222032', 100, 'KZGPI-1990', 39, 'Ikan dsb'),
(1439, 'Gulai asam keueung, masakan', 0, 10, 1.8, 0.5, 52, 'ME', '2022-08-25 08:07:06.228809', '2022-08-25 08:07:06.228809', 100, 'KZGMI-2001', 39, 'Ikan dsb'),
(1440, 'Gulai ikan paya, masakan', 0, 10, 5, 9.8, 148, 'ME', '2022-08-25 08:07:06.235492', '2022-08-25 08:07:06.235492', 100, 'KZGMI-2001', 39, 'Ikan dsb'),
(1441, 'Gulai ikan, masakan', 0, 16.5, 2.5, 3.3, 106, 'ME', '2022-08-25 08:07:06.241948', '2022-08-25 08:07:06.241948', 100, 'KZGMS-1993', 39, 'Ikan dsb'),
(1442, 'Gulai keumamah, masakan', 0, 5.9, 3.2, 8.2, 110, 'ME', '2022-08-25 08:07:06.247432', '2022-08-25 08:07:06.247432', 100, 'KGZMI-2001', 39, 'Ikan dsb'),
(1443, 'Gulai tiram, masakan', 0, 9, 7.8, 7.2, 132, 'ME', '2022-08-25 08:07:06.253055', '2022-08-25 08:07:06.253055', 100, 'KZGMI-2001', 39, 'Ikan dsb'),
(1444, 'Gurame asem manis, masakan', 0, 12.7, 12.7, 10.1, 192, 'ME', '2022-08-25 08:07:06.259080', '2022-08-25 08:07:06.259080', 100, 'KZGPI-1990', 39, 'Ikan dsb'),
(1445, 'Ikan asar merah, masakan', 0, 17.7, 5.6, 5.9, 146, 'ME', '2022-08-25 08:07:06.265196', '2022-08-25 08:07:06.265196', 100, 'KZGMI-2001', 39, 'Ikan dsb'),
(1446, 'Ikan bader, segar', 0, 19, 0, 13, 193, 'BA', '2022-08-25 08:07:06.271397', '2022-08-25 08:07:06.271397', 100, 'DABM-1964', 39, 'Ikan dsb'),
(1447, 'Ikan balong, segar', 0, 16.5, 1.5, 3.9, 107, 'BA', '2022-08-25 08:07:06.277668', '2022-08-25 08:07:06.277668', 100, 'KZGPI-1990', 39, 'Ikan dsb'),
(1448, 'Ikan bambangan, segar', 0, 20, 3.7, 1.3, 112, 'BA', '2022-08-25 08:07:06.284962', '2022-08-25 08:07:06.284962', 100, 'KZGPI-1990', 39, 'Ikan dsb'),
(1449, 'Ikan bandeng, segar', 0, 20, 0, 4.8, 123, 'BA', '2022-08-25 08:07:06.290958', '2022-08-25 08:07:06.290958', 100, 'DABM-1964', 39, 'Ikan dsb'),
(1450, 'Ikan banjar, segar', 0, 19.4, 4.8, 0.9, 111, 'BA', '2022-08-25 08:07:06.297198', '2022-08-25 08:07:06.297198', 100, 'KZGPI-1990', 39, 'Ikan dsb'),
(1451, 'Ikan baronang, segar', 0, 14.5, 3.7, 0.6, 78, 'BA', '2022-08-25 08:07:06.304698', '2022-08-25 08:07:06.304698', 100, 'KZGMI-2001', 39, 'Ikan dsb'),
(1452, 'Ikan batung, segar', 0, 14.5, 4.2, 4.6, 115, 'BA', '2022-08-25 08:07:06.310862', '2022-08-25 08:07:06.310862', 100, 'KZGMI-2001', 39, 'Ikan dsb'),
(1453, 'Ikan baung, segar', 0, 15.1, 3.3, 5.5, 123, 'BA', '2022-08-25 08:07:06.316810', '2022-08-25 08:07:06.316810', 100, 'KZGMI-2001', 39, 'Ikan dsb'),
(1454, 'Ikan bawal, segar', 0, 19, 0, 1.7, 91, 'BA', '2022-08-25 08:07:06.322836', '2022-08-25 08:07:06.322836', 100, 'DABM-1964', 39, 'Ikan dsb'),
(1455, 'Ikan Belida, segar', 0, 14.7, 2.2, 1.4, 80, 'BA', '2022-08-25 08:07:06.329436', '2022-08-25 08:07:06.329436', 100, 'KZGMI-2001', 39, 'Ikan dsb'),
(1456, 'Belut, segar', 0, 14.6, 1, 0.8, 70, 'BA', '2022-08-25 08:07:06.338533', '2022-08-25 08:07:06.338533', 100, 'KZGMI-2001', 39, 'Ikan dsb'),
(1457, 'Belut,laut, segar', 0, 12.8, 6.1, 1.5, 93, 'BA', '2022-08-25 08:07:06.346266', '2022-08-25 08:07:06.346266', 100, 'KZGPI-1990', 39, 'Ikan dsb'),
(1458, 'Ikan beunteur, segar', 0, 17, 0, 4, 109, 'BA', '2022-08-25 08:07:06.353902', '2022-08-25 08:07:06.353902', 100, 'DABM-1964', 39, 'Ikan dsb'),
(1459, 'Ikan biawan, segar', 0, 14.9, 2.1, 2.5, 90, 'BA', '2022-08-25 08:07:06.361074', '2022-08-25 08:07:06.361074', 100, 'KZGMI-2001', 39, 'Ikan dsb'),
(1460, 'Ikan bili, segar', 0, 14.2, 6.2, 0.7, 88, 'BA', '2022-08-25 08:07:06.366728', '2022-08-25 08:07:06.366728', 100, 'KZGMI-2001', 39, 'Ikan dsb'),
(1461, 'Ikan bubara, segar', 0, 14.7, 4.9, 2.4, 100, 'BA', '2022-08-25 08:07:06.373601', '2022-08-25 08:07:06.373601', 100, 'KZGMI-2001', 39, 'Ikan dsb'),
(1462, 'Ikan bulan-bulan, segar', 0, 25.5, 5, 1.3, 134, 'BA', '2022-08-25 08:07:06.380128', '2022-08-25 08:07:06.380128', 100, 'KZGMI-2001', 39, 'Ikan dsb'),
(1463, 'Ikan, cakalang, segar', 0, 19.6, 5.5, 0.7, 107, 'BA', '2022-08-25 08:07:06.387018', '2022-08-25 08:07:06.387018', 100, 'KZGMI-2001', 39, 'Ikan dsb'),
(1464, 'Ikan cakalang, hati, segar', 0, 11.3, 10, 3.9, 120, 'BA', '2022-08-25 08:07:06.393156', '2022-08-25 08:07:06.393156', 100, 'KZGMI-2001', 39, 'Ikan dsb'),
(1465, 'Ikan cakalang, jantung, segar', 0, 11.2, 10.2, 1.2, 116, 'BA', '2022-08-25 08:07:06.399259', '2022-08-25 08:07:06.399259', 100, 'KZGMI-2001', 39, 'Ikan dsb'),
(1466, 'Ikan cakalang, perut, segar', 0, 10.2, 8.7, 1.1, 86, 'BA', '2022-08-25 08:07:06.405410', '2022-08-25 08:07:06.405410', 100, 'KZGMI-2001', 39, 'Ikan dsb'),
(1467, 'Cumi-cumi, segar', 0, 16.1, 0.1, 0.7, 75, 'BA', '2022-08-25 08:07:06.411859', '2022-08-25 08:07:06.411859', 100, 'KZGPI-1990', 39, 'Ikan dsb'),
(1468, 'Ikan daun, segar', 0, 11.5, 4.6, 4.1, 101, 'BA', '2022-08-25 08:07:06.419429', '2022-08-25 08:07:06.419429', 100, 'KZGMI-2001', 39, 'Ikan dsb'),
(1469, 'Ikan ekor kuning, segar', 0, 22.3, 2.1, 1.2, 108, 'BA', '2022-08-25 08:07:06.425441', '2022-08-25 08:07:06.425441', 100, 'KZGMI-2001', 39, 'Ikan dsb'),
(1470, 'Ikan gabus, segar', 0, 16.2, 2.6, 0.5, 80, 'BA', '2022-08-25 08:07:06.432337', '2022-08-25 08:07:06.432337', 100, 'KZGMI-2001', 39, 'Ikan dsb'),
(1471, 'Ikan Heu, segar', 0, 10, 6.6, 1.6, 81, 'BA', '2022-08-25 08:07:06.438158', '2022-08-25 08:07:06.438158', 100, 'KZGMI-2001', 39, 'Ikan dsb'),
(1472, 'Ikan hitam, segar', 0, 10.3, 6.7, 3.7, 101, 'BA', '2022-08-25 08:07:06.443272', '2022-08-25 08:07:06.443272', 100, 'KZGMI-2001', 39, 'Ikan dsb'),
(1473, 'Ikan hiu, segar', 0, 10.7, 2.2, 0.3, 57, 'BA', '2022-08-25 08:07:06.449757', '2022-08-25 08:07:06.449757', 100, 'KZGPI-1990', 39, 'Ikan dsb'),
(1474, 'Ikan kacangan, segar', 0, 15.6, 1.6, 0.9, 77, 'BA', '2022-08-25 08:07:06.455352', '2022-08-25 08:07:06.455352', 100, 'KZGPI-1990', 39, 'Ikan dsb'),
(1475, 'Ikan kakap, segar', 0, 20, 0, 0.7, 92, 'BA', '2022-08-25 08:07:06.461456', '2022-08-25 08:07:06.461456', 100, 'DABM-1964', 39, 'Ikan dsb'),
(1476, 'Ikan kakatua, segar', 0, 11.4, 6.4, 1.2, 82, 'BA', '2022-08-25 08:07:06.467441', '2022-08-25 08:07:06.467441', 100, 'KZGMI-2001', 39, 'Ikan dsb'),
(1477, 'Ikan kalaban, segar', 0, 16.4, 1.3, 0.7, 77, 'BA', '2022-08-25 08:07:06.473566', '2022-08-25 08:07:06.473566', 100, 'KZGMI-2001', 39, 'Ikan dsb'),
(1478, 'Ikan Kamera, segar', 0, 19.7, 0, 0.8, 86, 'BA', '2022-08-25 08:07:06.481870', '2022-08-25 08:07:06.481870', 100, 'KZGMI-2001', 39, 'Ikan dsb'),
(1479, 'Ikan kapar, segar', 0, 17, 0.8, 6.7, 132, 'BA', '2022-08-25 08:07:06.487249', '2022-08-25 08:07:06.487249', 100, 'KZGMI-2001', 39, 'Ikan dsb'),
(1480, 'Ikan kawalinya, segar', 0, 12.6, 5.4, 4.2, 110, 'BA', '2022-08-25 08:07:06.494792', '2022-08-25 08:07:06.494792', 100, 'KZGMI-2001', 39, 'Ikan dsb'),
(1481, 'Ikan oci, kembung, segar', 0, 21.3, 2.2, 3.4, 125, 'BA', '2022-08-25 08:07:06.501723', '2022-08-25 08:07:06.501723', 100, 'KZGMI-2001', 39, 'Ikan dsb'),
(1482, 'Keong, segar', 0, 12, 2, 1, 64, 'BA', '2022-08-25 08:07:06.507729', '2022-08-25 08:07:06.507729', 100, 'DABM-1964', 39, 'Ikan dsb'),
(1483, 'Kepiting, segar', 0, 13.8, 14.1, 3.8, 151, 'BA', '2022-08-25 08:07:06.515569', '2022-08-25 08:07:06.515569', 100, 'DABM-1964', 39, 'Ikan dsb'),
(1484, 'Kerang, segar', 0, 14.4, 3.9, 2.6, 101, 'BA', '2022-08-25 08:07:06.520964', '2022-08-25 08:07:06.520964', 100, 'KZGPI-1990', 39, 'Ikan dsb'),
(1485, 'Ikan keru-keru, segar', 0, 16.5, 0.8, 2.1, 93, 'BA', '2022-08-25 08:07:06.526464', '2022-08-25 08:07:06.526464', 100, 'KZGPI-1990', 39, 'Ikan dsb'),
(1486, 'Ikan kima, segar', 0, 10.8, 5.2, 0.7, 70, 'BA', '2022-08-25 08:07:06.534467', '2022-08-25 08:07:06.534467', 100, 'KZGMI-2001', 39, 'Ikan dsb'),
(1487, 'Kodok, segar', 0, 16.4, 0, 0.3, 73, 'BA', '2022-08-25 08:07:06.541772', '2022-08-25 08:07:06.541772', 100, 'DABM-1964', 39, 'Ikan dsb'),
(1488, 'Kura-kura, segar', 0, 19.1, 0, 0.2, 83, 'BA', '2022-08-25 08:07:06.549148', '2022-08-25 08:07:06.549148', 100, 'DABM-1964', 39, 'Ikan dsb'),
(1489, 'Kuro, segar', 0, 16, 1, 2.2, 87, 'BA', '2022-08-25 08:07:06.555078', '2022-08-25 08:07:06.555078', 100, 'KZGPI-1990', 39, 'Ikan dsb'),
(1490, 'Ikan lais, segar', 0, 11.9, 2.4, 11.5, 161, 'BA', '2022-08-25 08:07:06.561327', '2022-08-25 08:07:06.561327', 100, 'KZGPI-1990', 39, 'Ikan dsb'),
(1491, 'Ikan layang, segar', 0, 22, 0, 1.7, 109, 'BA', '2022-08-25 08:07:06.566996', '2022-08-25 08:07:06.566996', 100, 'DABM-1964', 39, 'Ikan dsb'),
(1492, 'Ikan layur, segar', 0, 18, 0.4, 1, 82, 'BA', '2022-08-25 08:07:06.573034', '2022-08-25 08:07:06.573034', 100, 'KZGPI-1990', 39, 'Ikan dsb'),
(1493, 'Ikan lehoma, segar', 0, 20.4, 0, 0.9, 90, 'BA', '2022-08-25 08:07:06.580173', '2022-08-25 08:07:06.580173', 100, 'KZGMI-2001', 39, 'Ikan dsb'),
(1494, 'Ikan lemuru, segar', 0, 20, 0, 3, 112, 'BA', '2022-08-25 08:07:06.586568', '2022-08-25 08:07:06.586568', 100, 'DABM-1964', 39, 'Ikan dsb'),
(1495, 'Ikan lidah, segar', 0, 15.6, 2, 3.2, 104, 'BA', '2022-08-25 08:07:06.593012', '2022-08-25 08:07:06.593012', 100, 'KZGPI-1990', 39, 'Ikan dsb'),
(1496, 'Lokan, segar', 0, 11, 5.1, 1.7, 217, 'BA', '2022-08-25 08:07:06.600753', '2022-08-25 08:07:06.600753', 100, 'KZGMI-2001', 39, 'Ikan dsb'),
(1497, 'Ikan malalugis, segar', 0, 20.6, 0.9, 1.4, 99, 'BA', '2022-08-25 08:07:06.607416', '2022-08-25 08:07:06.607416', 100, 'KZGMI-2001', 39, 'Ikan dsb'),
(1498, 'Ikan mamar merah, segar', 0, 15.3, 4.4, 4, 115, 'BA', '2022-08-25 08:07:06.615497', '2022-08-25 08:07:06.615497', 100, 'KZGMI-2001', 39, 'Ikan dsb'),
(1499, 'Ikan mas, segar', 0, 16, 0, 2, 86, 'BA', '2022-08-25 08:07:06.621955', '2022-08-25 08:07:06.621955', 100, 'DABM-1964', 39, 'Ikan dsb'),
(1500, 'Ikan mayong, segar', 0, 17.9, 0.4, 2, 97, 'BA', '2022-08-25 08:07:06.628492', '2022-08-25 08:07:06.628492', 100, 'KZGPI-1990', 39, 'Ikan dsb'),
(1501, 'Ikan mujahir, segar', 0, 18.7, 0, 1, 89, 'BA', '2022-08-25 08:07:06.634942', '2022-08-25 08:07:06.634942', 100, 'KZGPI-1990', 39, 'Ikan dsb'),
(1502, 'Ikan nasu metti, segar', 0, 16.8, 10.5, 5, 154, 'BA', '2022-08-25 08:07:06.640721', '2022-08-25 08:07:06.640721', 100, 'KZGMI-2001', 39, 'Ikan dsb'),
(1503, 'Ikan paling, segar', 0, 14, 0, 27, 303, 'BA', '2022-08-25 08:07:06.647329', '2022-08-25 08:07:06.647329', 100, 'DABM-1964', 39, 'Ikan dsb'),
(1504, 'Ikan papuyu/ betok, segar', 0, 14.3, 4.6, 4.9, 120, 'BA', '2022-08-25 08:07:06.653300', '2022-08-25 08:07:06.653300', 100, 'KZGMI-2001', 39, 'Ikan dsb'),
(1505, 'Ikan Patin, segar', 0, 17, 1.1, 6.6, 132, 'BA', '2022-08-25 08:07:06.659505', '2022-08-25 08:07:06.659505', 100, 'KZGMI-2001', 39, 'Ikan dsb'),
(1506, 'Ikan pomo, segar', 0, 22.5, 2.6, 5.2, 147, 'BA', '2022-08-25 08:07:06.665626', '2022-08-25 08:07:06.665626', 100, 'KZGMI-2001', 39, 'Ikan dsb'),
(1507, 'Ikan Puntin, segar', 0, 14.4, 2.2, 1.1, 76, 'BA', '2022-08-25 08:07:06.671675', '2022-08-25 08:07:06.671675', 100, 'KZGMI-2001', 39, 'Ikan dsb'),
(1508, 'Rajungan, segar', 0, 12.1, 2.4, 2, 76, 'BA', '2022-08-25 08:07:06.677955', '2022-08-25 08:07:06.677955', 100, 'KZGMI-2001', 39, 'Ikan dsb'),
(1509, 'Rebon, udang kecil, segar', 0, 16.2, 0.7, 1.2, 81, 'BA', '2022-08-25 08:07:06.685069', '2022-08-25 08:07:06.685069', 100, 'DABM-1964', 39, 'Ikan dsb'),
(1510, 'Ikan saluang, segar', 0, 13.9, 3.4, 4.9, 113, 'BA', '2022-08-25 08:07:06.690820', '2022-08-25 08:07:06.690820', 100, 'KZGMI-2001', 39, 'Ikan dsb'),
(1511, 'Ikan sarden, segar', 0, 19.9, 3.4, 1.8, 109, 'BA', '2022-08-25 08:07:06.696961', '2022-08-25 08:07:06.696961', 100, 'KZGMI-2001', 39, 'Ikan dsb'),
(1512, 'Ikan selar, segar', 0, 18.8, 0, 2.2, 100, 'BA', '2022-08-25 08:07:06.702908', '2022-08-25 08:07:06.702908', 100, 'DABM-1964', 39, 'Ikan dsb'),
(1513, 'Ikan sepat, segar', 0, 15.2, 4.7, 0.6, 84, 'BA', '2022-08-25 08:07:06.709097', '2022-08-25 08:07:06.709097', 100, 'KZGMI-2001', 39, 'Ikan dsb'),
(1514, 'Ikan sidat, segar', 0, 11.4, 3.8, 1.9, 81, 'BA', '2022-08-25 08:07:06.714355', '2022-08-25 08:07:06.714355', 100, 'KZGPI-1990', 39, 'Ikan dsb'),
(1515, 'Ikan sunu, segar', 0, 13.3, 6.7, 3.4, 111, 'BA', '2022-08-25 08:07:06.719867', '2022-08-25 08:07:06.719867', 100, 'KZGMI-2001', 39, 'Ikan dsb'),
(1516, 'Ikan tahuman, segar', 0, 15.9, 4.1, 0.9, 88, 'BA', '2022-08-25 08:07:06.725890', '2022-08-25 08:07:06.725890', 100, 'KZGMI-2001', 39, 'Ikan dsb'),
(1517, 'Ikan Sale, segar', 0, 40.2, 4.9, 39.3, 534, 'BA', '2022-08-25 08:07:06.733069', '2022-08-25 08:07:06.733069', 100, 'BKP', 39, 'Ikan dsb'),
(1518, 'Ikan tarmon, segar', 0, 19.5, 2, 1.1, 96, 'BA', '2022-08-25 08:07:06.739107', '2022-08-25 08:07:06.739107', 100, 'KZGMI-2001', 39, 'Ikan dsb'),
(1519, 'Ikan telan, segar', 0, 15.8, 6.5, 0.7, 95, 'BA', '2022-08-25 08:07:06.754889', '2022-08-25 08:07:06.754889', 100, 'KZGMI-2001', 39, 'Ikan dsb'),
(1520, 'Ikan tembang, segar', 0, 16, 0, 15, 204, 'BA', '2022-08-25 08:07:06.761296', '2022-08-25 08:07:06.761296', 100, 'DABM-1964', 39, 'Ikan dsb'),
(1521, 'Ikan tempahas, segar', 0, 15.1, 1, 4.1, 101, 'BA', '2022-08-25 08:07:06.767256', '2022-08-25 08:07:06.767256', 100, 'KZGMI-2001', 39, 'Ikan dsb'),
(1522, 'Ikan terbang, segar', 0, 19.6, 1, 1.7, 98, 'BA', '2022-08-25 08:07:06.773203', '2022-08-25 08:07:06.773203', 100, 'KZGMI-2001', 39, 'Ikan dsb'),
(1523, 'Ikan teri, segar', 0, 10.3, 4.1, 1.4, 74, 'BA', '2022-08-25 08:07:06.779582', '2022-08-25 08:07:06.779582', 100, 'KZGPI-1990', 39, 'Ikan dsb'),
(1524, 'Ikan titang, segar', 0, 17.4, 2.3, 0.4, 82, 'BA', '2022-08-25 08:07:06.785820', '2022-08-25 08:07:06.785820', 100, 'KZGMI-2001', 39, 'Ikan dsb'),
(1525, 'Ikan tongkol, segar', 0, 13.7, 8, 1.5, 100, 'BA', '2022-08-25 08:07:06.791176', '2022-08-25 08:07:06.791176', 100, 'KZGMI-2001', 39, 'Ikan dsb'),
(1526, 'Ikan turi, segar', 0, 19.2, 0.2, 2, 96, 'BA', '2022-08-25 08:07:06.797753', '2022-08-25 08:07:06.797753', 100, 'KZGMI-2001', 39, 'Ikan dsb'),
(1527, 'Udang, besar, segar', 0, 11.4, 1.2, 0.6, 56, 'BA', '2022-08-25 08:07:06.804306', '2022-08-25 08:07:06.804306', 100, 'KZGMI-2001', 39, 'Ikan dsb'),
(1528, 'Udang galah, segar', 0, 16.5, 3, 0.3, 81, 'BA', '2022-08-25 08:07:06.811596', '2022-08-25 08:07:06.811596', 100, 'KZGMI-2001', 39, 'Ikan dsb'),
(1529, 'Udang, segar', 0, 21, 0.1, 0.2, 91, 'BA', '2022-08-25 08:07:06.818894', '2022-08-25 08:07:06.818894', 100, 'DABM-1964', 39, 'Ikan dsb'),
(1530, 'Telur ayam kampung, segar', 0, 10.8, 1.2, 14, 174, 'BA', '2022-08-25 08:07:06.825268', '2022-08-25 08:07:06.825268', 100, 'KZGMI-2001', 39, 'Telur'),
(1531, 'Telur ayam ras, segar', 0, 12.4, 0.7, 10.8, 154, 'BA', '2022-08-25 08:07:06.834066', '2022-08-25 08:07:06.834066', 100, 'KZGPI-1990', 39, 'Telur'),
(1532, 'Telur ayam ras, bagian kuning, segar', 0, 16.3, 0.7, 31.9, 355, 'BA', '2022-08-25 08:07:06.840749', '2022-08-25 08:07:06.840749', 100, 'DABM-1964', 39, 'Telur'),
(1533, 'Telur ayam ras, bagian putih, segar', 0, 10.8, 0.8, 0, 50, 'BA', '2022-08-25 08:07:06.847149', '2022-08-25 08:07:06.847149', 100, 'DABM-1964', 39, 'Telur'),
(1534, 'Telur bebek alabio, segar', 0, 11.8, 3, 14.2, 187, 'BA', '2022-08-25 08:07:06.855197', '2022-08-25 08:07:06.855197', 100, 'KZGMI-2001', 39, 'Telur'),
(1535, 'Telur bebek, bagian kuning, segar', 0, 17, 0.8, 35, 386, 'BA', '2022-08-25 08:07:06.861837', '2022-08-25 08:07:06.861837', 100, 'DABM-1964', 39, 'Telur'),
(1536, 'Telur bebek, bagian putih, segar', 0, 11, 0.8, 0, 54, 'BA', '2022-08-25 08:07:06.867760', '2022-08-25 08:07:06.867760', 100, 'DABM-1964', 39, 'Telur'),
(1537, 'Telur bebek tambak, segar', 0, 10.9, 7.9, 12.4, 187, 'BA', '2022-08-25 08:07:06.874214', '2022-08-25 08:07:06.874214', 100, 'KZGMI-2001', 39, 'Telur'),
(1538, 'Telur burung maleo, segar', 0, 26.5, 0.4, 36.3, 436, 'BA', '2022-08-25 08:07:06.881478', '2022-08-25 08:07:06.881478', 100, 'KZGMI-2001', 39, 'Telur'),
(1539, 'Telur penyu, segar', 0, 8.6, 2.7, 10.1, 136, 'BA', '2022-08-25 08:07:06.888167', '2022-08-25 08:07:06.888167', 100, 'KZGMI-2001', 39, 'Telur'),
(1540, 'Telur burung puyuh, segar', 0, 10.7, 1.6, 7, 116, 'BA', '2022-08-25 08:07:06.894309', '2022-08-25 08:07:06.894309', 100, 'FCTEA-1972', 39, 'Telur'),
(1541, 'Es krim', 0, 4, 20.6, 12.5, 210, 'CA', '2022-08-25 08:07:06.900356', '2022-08-25 08:07:06.900356', 100, 'DABM-1964', 39, 'Susu'),
(1542, 'Hangop', 0, 10, 3.5, 1, 65, 'CA', '2022-08-25 08:07:06.906363', '2022-08-25 08:07:06.906363', 100, 'DABM-1964', 39, 'Susu'),
(1543, 'Keju', 0, 22.8, 13.1, 20.3, 326, 'BA', '2022-08-25 08:07:06.912881', '2022-08-25 08:07:06.912881', 100, 'DABM-1964', 39, 'Susu'),
(1544, 'Susu bubuk', 0, 24.6, 36.2, 30, 513, 'BA', '2022-08-25 08:07:06.919003', '2022-08-25 08:07:06.919003', 100, 'DABM-1964', 39, 'Susu'),
(1545, 'Susu kental manis', 0, 8.2, 55, 10, 343, 'BA', '2022-08-25 08:07:06.926858', '2022-08-25 08:07:06.926858', 100, 'DABM-1964', 39, 'Susu'),
(1546, 'Susu kental tak manis', 0, 7, 9.9, 7.9, 138, 'BA', '2022-08-25 08:07:06.934216', '2022-08-25 08:07:06.934216', 100, 'DABM-1964', 39, 'Susu'),
(1547, 'Susu skim, bubuk', 0, 35.6, 52, 1, 359, 'BA', '2022-08-25 08:07:06.939259', '2022-08-25 08:07:06.939259', 100, 'DABM-1964', 39, 'Susu'),
(1548, 'Susu skim, segar', 0, 3.5, 5.1, 0.1, 36, 'BA', '2022-08-25 08:07:06.944465', '2022-08-25 08:07:06.944465', 100, 'DABM-1964', 39, 'Susu'),
(1549, 'Yoghurt, segar', 0, 3.3, 4, 2.5, 52, 'BA', '2022-08-25 08:07:06.951237', '2022-08-25 08:07:06.951237', 100, 'DABM-1964', 39, 'Susu'),
(1550, 'Kepala susu - krim, segar', 0, 2.6, 4, 20, 204, 'BA', '2022-08-25 08:07:06.956965', '2022-08-25 08:07:06.956965', 100, 'DABM-1964', 39, 'Susu'),
(1551, 'Susu ibu - ASI', 0, 1.5, 7, 3.2, 62, 'BA', '2022-08-25 08:07:06.963345', '2022-08-25 08:07:06.963345', 100, 'FCTEA-1972', 39, 'Susu'),
(1552, 'Susu kambing, segar', 0, 4.3, 6.6, 2.3, 64, 'BA', '2022-08-25 08:07:06.969572', '2022-08-25 08:07:06.969572', 100, 'DABM-1964', 39, 'Susu'),
(1553, 'Susu kerbau, segar', 0, 6.3, 7.1, 12, 160, 'BA', '2022-08-25 08:07:06.975568', '2022-08-25 08:07:06.975568', 100, 'DABM-1964', 39, 'Susu'),
(1554, 'Susu kuda, segar', 0, 2, 5.4, 1.1, 40, 'BA', '2022-08-25 08:07:06.981304', '2022-08-25 08:07:06.981304', 100, 'FCTEA-1972', 39, 'Susu'),
(1555, 'Susu sapi, segar', 0, 3.2, 4.3, 3.5, 61, 'BA', '2022-08-25 08:07:06.986821', '2022-08-25 08:07:06.986821', 100, 'DABM-1964', 39, 'Susu'),
(1556, 'Margarin', 0, 0.6, 0.4, 81, 720, 'BA', '2022-08-25 08:07:06.991850', '2022-08-25 08:07:06.991850', 100, 'DABM-1964', 39, 'Lemak'),
(1557, 'Mentega', 0, 0.5, 1.4, 81.6, 742, 'BA', '2022-08-25 08:07:06.996774', '2022-08-25 08:07:06.996774', 100, 'DABM-1964', 39, 'Lemak'),
(1558, 'Santan (dengan air)', 0, 2, 7.6, 10, 122, 'BA', '2022-08-25 08:07:07.002594', '2022-08-25 08:07:07.002594', 100, 'DABM-1964', 39, 'Lemak'),
(1559, 'Santan murni', 0, 4.2, 5.6, 34.3, 324, 'BA', '2022-08-25 08:07:07.008898', '2022-08-25 08:07:07.008898', 100, 'DABM-1964', 39, 'Lemak'),
(1560, 'Kelapa setengah tua, daging, segar', 0, 4, 10, 15, 180, 'BA', '2022-08-25 08:07:07.016971', '2022-08-25 08:07:07.016971', 100, 'DABM-1964', 39, 'Lemak'),
(1561, 'Kelapa tua, daging, segar', 0, 3.4, 14, 34.7, 359, 'BA', '2022-08-25 08:07:07.023820', '2022-08-25 08:07:07.023820', 100, 'DABM-1964', 39, 'Lemak'),
(1562, 'Lemak babi (lard)', 0, 0, 0, 100, 902, 'BA', '2022-08-25 08:07:07.030534', '2022-08-25 08:07:07.030534', 100, 'DABM-1964', 39, 'Lemak'),
(1563, 'Lemak babi (bacon)', 0, 9.1, 1.1, 65, 626, 'BA', '2022-08-25 08:07:07.035660', '2022-08-25 08:07:07.035660', 100, 'DABM-1964', 39, 'Lemak'),
(1564, 'Lemak ikan', 0, 12, 14.4, 29.4, 372, 'BA', '2022-08-25 08:07:07.040954', '2022-08-25 08:07:07.040954', 100, 'KZGMI-2001', 39, 'Lemak'),
(1565, 'Lemak kerbau (lemak sapi)', 0, 1.5, 0, 90, 818, 'BA', '2022-08-25 08:07:07.046978', '2022-08-25 08:07:07.046978', 100, 'DABM-1964', 39, 'Lemak'),
(1566, 'Minyak hiu, hati', 0, 0, 0, 100, 902, 'BA', '2022-08-25 08:07:07.052719', '2022-08-25 08:07:07.052719', 100, 'DABM-1964', 39, 'Lemak'),
(1567, 'Minyak ikan', 0, 0, 0, 100, 902, 'BA', '2022-08-25 08:07:07.059563', '2022-08-25 08:07:07.059563', 100, 'DABM-1964', 39, 'Lemak'),
(1568, 'Minyak kacang tanah', 0, 0, 0, 100, 902, 'BA', '2022-08-25 08:07:07.065661', '2022-08-25 08:07:07.065661', 100, 'DABM-1964', 39, 'Lemak'),
(1569, 'Minyak kedelai', 0, 0, 0, 99.9, 883, 'BA', '2022-08-25 08:07:07.071682', '2022-08-25 08:07:07.071682', 100, 'FCTEA-1972', 39, 'Lemak'),
(1570, 'Minyak kelapa', 0, 1, 0, 98, 870, 'BA', '2022-08-25 08:07:07.080328', '2022-08-25 08:07:07.080328', 100, 'DABM-1964', 39, 'Lemak'),
(1571, 'Minyak kelapa sawit', 0, 0, 0, 100, 884, 'BA', '2022-08-25 08:07:07.086583', '2022-08-25 08:07:07.086583', 100, 'DABM-1964', 39, 'Lemak'),
(1572, 'Minyak wijen', 0, 0.2, 0, 99.7, 881, 'BA', '2022-08-25 08:07:07.092488', '2022-08-25 08:07:07.092488', 100, 'FCTEA-1972', 39, 'Lemak'),
(1573, 'Minyak Zaitun', 0, 0, 0, 100, 884, 'BA', '2022-08-25 08:07:07.098409', '2022-08-25 08:07:07.098409', 100, 'DABM-1964', 39, 'Lemak'),
(1574, 'Coklat manis, batang', 0, 2, 62.7, 29.8, 527, 'BA', '2022-08-25 08:07:07.105311', '2022-08-25 08:07:07.105311', 100, 'DABM-1964', 39, 'Gula'),
(1575, 'Coklat pahit,batang', 0, 5.5, 29.2, 42.6, 615, 'BA', '2022-08-25 08:07:07.112312', '2022-08-25 08:07:07.112312', 100, 'DABM-1964', 39, 'Gula'),
(1576, 'Coklat susu, batang', 0, 9, 53.6, 35, 565, 'BA', '2022-08-25 08:07:07.118715', '2022-08-25 08:07:07.118715', 100, 'DABM-1964', 39, 'Gula'),
(1577, 'Coklat bubuk', 0, 8, 48.9, 4, 311, 'BA', '2022-08-25 08:07:07.124564', '2022-08-25 08:07:07.124564', 100, 'DABM-1964', 39, 'Gula'),
(1578, 'Gula aren', 0, 0, 92, 0, 368, 'BA', '2022-08-25 08:07:07.130771', '2022-08-25 08:07:07.130771', 100, 'DABM-1964', 39, 'Gula'),
(1579, 'Gula kelapa', 0, 3, 76, 10, 386, 'BA', '2022-08-25 08:07:07.137113', '2022-08-25 08:07:07.137113', 100, 'DABM-1964', 39, 'Gula'),
(1580, 'Gula putih', 0, 0, 94, 0, 394, 'BA', '2022-08-25 08:07:07.143108', '2022-08-25 08:07:07.143108', 100, 'DABM-1964', 39, 'Gula'),
(1581, 'Jam, selai', 0, 0.5, 64.5, 0.6, 239, 'BA', '2022-08-25 08:07:07.150636', '2022-08-25 08:07:07.150636', 100, 'DABM-1964', 39, 'Gula'),
(1582, 'Madu', 0, 0.3, 79.5, 0, 294, 'BA', '2022-08-25 08:07:07.156131', '2022-08-25 08:07:07.156131', 100, 'DABM-1964', 39, 'Gula'),
(1583, 'Markisa squash', 0, 2.5, 49.6, 1, 217, 'BA', '2022-08-25 08:07:07.163080', '2022-08-25 08:07:07.163080', 100, 'KZGMI-2001', 39, 'Gula'),
(1584, 'Cuka', 0, 0.1, 5, 0.1, 21, 'BA', '2022-08-25 08:07:07.168791', '2022-08-25 08:07:07.168791', 100, 'DABM-1964', 39, 'Bumbu'),
(1585, 'Kecap', 0, 5.7, 9, 1.3, 71, 'BA', '2022-08-25 08:07:07.174415', '2022-08-25 08:07:07.174415', 100, 'DABM-1964', 39, 'Bumbu'),
(1586, 'Petis ikan', 0, 20, 20.8, 0.2, 165, 'BA', '2022-08-25 08:07:07.180537', '2022-08-25 08:07:07.180537', 100, 'DABM-1964', 39, 'Bumbu'),
(1587, 'Petis udang kering', 0, 23.8, 59.3, 1.4, 345, 'BA', '2022-08-25 08:07:07.185309', '2022-08-25 08:07:07.185309', 100, 'KZGPI-1990', 39, 'Bumbu'),
(1588, 'Petis udang pasta', 0, 15, 38, 0.9, 220, 'BA', '2022-08-25 08:07:07.191437', '2022-08-25 08:07:07.191437', 100, 'DABM-1964', 39, 'Bumbu'),
(1589, 'Saos tomat', 0, 2, 24.5, 0.4, 110, 'BA', '2022-08-25 08:07:07.197578', '2022-08-25 08:07:07.197578', 100, 'DABM-1964', 39, 'Bumbu'),
(1590, 'Terasi', 0, 22.3, 9.9, 2.9, 155, 'BA', '2022-08-25 08:07:07.203666', '2022-08-25 08:07:07.203666', 100, 'KZGPI-1990', 39, 'Bumbu'),
(1591, 'Terasi dobo', 0, 33.1, 6.6, 3.6, 191, 'BA', '2022-08-25 08:07:07.209949', '2022-08-25 08:07:07.209949', 100, 'KZGMI-2001', 39, 'Bumbu'),
(1592, 'Terasi merah', 0, 30, 5.6, 3.5, 174, 'BA', '2022-08-25 08:07:07.218031', '2022-08-25 08:07:07.218031', 100, 'DABM-1964', 39, 'Bumbu'),
(1593, 'Asam arang coklat, segar', 0, 0.5, 30.9, 1.1, 130, 'BA', '2022-08-25 08:07:07.224321', '2022-08-25 08:07:07.224321', 100, 'KZGPI-1990', 39, 'Bumbu'),
(1594, 'Asam arang merah, segar', 0, 0.8, 20.3, 1.6, 99, 'BA', '2022-08-25 08:07:07.231090', '2022-08-25 08:07:07.231090', 100, 'KZGPI-1990', 39, 'Bumbu'),
(1595, 'Asam kandis, kering', 0, 0.9, 63.3, 1.6, 261, 'BA', '2022-08-25 08:07:07.236902', '2022-08-25 08:07:07.236902', 100, 'KZGPI-1990', 39, 'Bumbu'),
(1596, 'Asam kandis, segar', 0, 0.2, 16.1, 1.1, 75, 'BA', '2022-08-25 08:07:07.242899', '2022-08-25 08:07:07.242899', 100, 'KZGPI-1990', 39, 'Bumbu'),
(1597, 'Asam masak pohon, segar', 0, 2.8, 62.5, 0.6, 267, 'BA', '2022-08-25 08:07:07.248774', '2022-08-25 08:07:07.248774', 100, 'DABM-1964', 39, 'Bumbu'),
(1598, 'Asam payak, segar', 0, 0.8, 32.1, 0.4, 135, 'BA', '2022-08-25 08:07:07.254341', '2022-08-25 08:07:07.254341', 100, 'KZGPI-1990', 39, 'Bumbu'),
(1599, 'Bawang merah, segar', 0, 1.5, 9.2, 0.3, 46, 'BA', '2022-08-25 08:07:07.259348', '2022-08-25 08:07:07.259348', 100, 'DABM-1964', 39, 'Bumbu'),
(1600, 'Bawang putih, segar', 0, 4.5, 23.1, 0.2, 112, 'BA', '2022-08-25 08:07:07.264159', '2022-08-25 08:07:07.264159', 100, 'DABM-1964', 39, 'Bumbu'),
(1601, 'Boros kunci, segar', 0, 1, 7.2, 0.8, 40, 'BA', '2022-08-25 08:07:07.269559', '2022-08-25 08:07:07.269559', 100, 'DABM-1964', 39, 'Bumbu'),
(1602, 'Boros laja (lengkuas), segar', 0, 1, 4.7, 0.3, 26, 'BA', '2022-08-25 08:07:07.275334', '2022-08-25 08:07:07.275334', 100, 'DABM-1964', 39, 'Bumbu'),
(1603, 'Cabai gembor merah, segar', 0, 1.6, 6.3, 0.8, 38, 'BA', '2022-08-25 08:07:07.282215', '2022-08-25 08:07:07.282215', 100, 'KZGPI-1990', 39, 'Bumbu'),
(1604, 'Cabai hijau, segar', 0, 0.7, 5.2, 0.3, 26, 'BA', '2022-08-25 08:07:07.288417', '2022-08-25 08:07:07.288417', 100, 'DABM-1964', 39, 'Bumbu'),
(1605, 'Cabai merah, kering', 0, 15.9, 61.8, 6.2, 367, 'BA', '2022-08-25 08:07:07.294933', '2022-08-25 08:07:07.294933', 100, 'DABM-1964', 39, 'Bumbu'),
(1606, 'Cabai merah, segar', 0, 1, 7.3, 0.3, 36, 'BA', '2022-08-25 08:07:07.303634', '2022-08-25 08:07:07.303634', 100, 'DABM-1964', 39, 'Bumbu'),
(1607, 'Cabai rawit, segar', 0, 4.7, 19.9, 2.4, 120, 'BA', '2022-08-25 08:07:07.311394', '2022-08-25 08:07:07.311394', 100, 'DABM-1964', 39, 'Bumbu'),
(1608, 'Cengkeh, kering', 0, 5.2, 57.4, 8.9, 330, 'BA', '2022-08-25 08:07:07.318829', '2022-08-25 08:07:07.318829', 100, 'DABM-1964', 39, 'Bumbu'),
(1609, 'Daun salam, bubuk', 0, 14.2, 49, 10.9, 301, 'BA', '2022-08-25 08:07:07.325477', '2022-08-25 08:07:07.325477', 100, 'FCTEA-1972', 39, 'Bumbu'),
(1610, 'Jahe, segar', 0, 1.5, 10.1, 1, 51, 'BA', '2022-08-25 08:07:07.332630', '2022-08-25 08:07:07.332630', 100, 'DABM-1964', 39, 'Bumbu'),
(1611, 'Kemiri', 0, 19, 8, 63, 675, 'BA', '2022-08-25 08:07:07.338331', '2022-08-25 08:07:07.338331', 100, 'DABM-1964', 39, 'Bumbu'),
(1612, 'Ketumbar, kering', 0, 14.1, 54.2, 16.1, 418, 'BA', '2022-08-25 08:07:07.344706', '2022-08-25 08:07:07.344706', 100, 'DABM-1964', 39, 'Bumbu'),
(1613, 'Kluwek', 0, 10, 13.5, 24, 310, 'BA', '2022-08-25 08:07:07.351119', '2022-08-25 08:07:07.351119', 100, 'DABM-1964', 39, 'Bumbu'),
(1614, 'Kunyit, segar', 0, 2, 9.1, 2.7, 69, 'BA', '2022-08-25 08:07:07.356999', '2022-08-25 08:07:07.356999', 100, 'DABM-1964', 39, 'Bumbu'),
(1615, 'Merica, kering', 0, 11.5, 64.4, 6.8, 365, 'BA', '2022-08-25 08:07:07.362714', '2022-08-25 08:07:07.362714', 100, 'DABM-1964', 39, 'Bumbu'),
(1616, 'Pala, biji, kering', 0, 7.5, 40.1, 36.4, 518, 'BA', '2022-08-25 08:07:07.368262', '2022-08-25 08:07:07.368262', 100, 'DABM-1964', 39, 'Bumbu'),
(1638, 'Est explicabo Est e', 5, 11.81, 1.96, 87.02, 74.1, 'ME', '2022-09-12 12:41:04.811107', '2022-09-12 12:48:38.127060', 25, 'Optio consequuntur ', 84, 'Molestiae omnis mole'),
(1640, 'Magnam nesciunt ull', 53, 52, 82, 25, 51, 'BA', '2022-09-12 13:13:51.230800', '2022-09-12 13:13:51.230837', 38, 'Est quae eiusmod qui', 7, 'Aspernatur placeat '),
(1641, 'Molestiae dicta ', 5, 40.03, 9.03, 78.97, 10.98, 'CA', '2022-09-12 13:43:06.524710', '2022-09-12 13:44:10.198596', 33, 'Nisi perspiciatis ', 10, 'Praesentium sunt '),
(1644, 'Test API update', 1, 3.81, 10.4, 51.49, 309.01, 'CA', '2022-09-28 13:40:17.310617', '2022-09-28 14:00:10.361683', 136.75, 'nutritionix', 61, '3'),
(1645, 'Test API insert', 1, 3.81, 10.4, 51.49, 309.01, 'CA', '2022-10-14 12:47:19.142066', '2022-10-14 12:47:19.142169', 136.75, 'nutritionix', 61, '3');

-- --------------------------------------------------------

--
-- Table structure for table `base_makanandiet`
--

CREATE TABLE `base_makanandiet` (
  `id` bigint(20) NOT NULL,
  `waktu_makan` varchar(2) NOT NULL,
  `status` int(11) NOT NULL,
  `makanan_id` bigint(20) NOT NULL,
  `rencana_diet_id` bigint(20) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `base_makanandiet`
--

INSERT INTO `base_makanandiet` (`id`, `waktu_makan`, `status`, `makanan_id`, `rencana_diet_id`, `created_at`, `updated_at`) VALUES
(225, 'PH', 2, 1051, 64, '2022-12-01 14:30:31.797963', '2022-12-01 14:30:31.798032'),
(226, 'PH', 2, 612, 65, '2022-12-01 14:30:31.802647', '2022-12-01 14:30:31.802692'),
(227, 'PH', 1, 372, 68, '2022-12-01 14:30:31.810593', '2022-12-04 06:15:32.423015'),
(228, 'PH', 1, 321, 66, '2022-12-01 14:30:31.811727', '2022-12-05 13:16:05.297094'),
(229, 'PH', 2, 138, 67, '2022-12-01 14:30:31.817885', '2022-12-04 04:23:38.965095'),
(230, 'SI', 2, 1058, 65, '2022-12-01 14:30:31.818899', '2022-12-01 14:30:31.818950'),
(231, 'SI', 1, 484, 68, '2022-12-01 14:30:31.819915', '2022-12-04 04:29:28.572775'),
(232, 'PH', 2, 1303, 69, '2022-12-01 14:30:31.820510', '2022-12-01 14:30:31.820541'),
(233, 'SI', 2, 750, 64, '2022-12-01 14:30:31.822245', '2022-12-01 14:30:31.822276'),
(234, 'ML', 2, 123, 65, '2022-12-01 14:30:31.826366', '2022-12-01 14:30:31.826421'),
(235, 'SI', 2, 1058, 67, '2022-12-01 14:30:31.829882', '2022-12-01 14:30:31.829930'),
(236, 'SI', 1, 301, 66, '2022-12-01 14:30:31.831024', '2022-12-05 10:22:55.312063'),
(237, 'ML', 1, 82, 68, '2022-12-01 14:30:31.832133', '2022-12-04 07:54:39.639870'),
(238, 'ML', 2, 322, 64, '2022-12-01 14:30:31.834444', '2022-12-01 14:30:31.834496'),
(239, 'SI', 2, 1058, 69, '2022-12-01 14:30:31.836575', '2022-12-01 14:30:31.836624'),
(240, 'PH', 1, 351, 70, '2022-12-01 14:30:31.837590', '2022-12-07 10:52:52.837037'),
(241, 'CA', 1, 751, 65, '2022-12-01 14:30:31.840065', '2022-12-04 07:04:10.943272'),
(242, 'CA', 2, 1225, 68, '2022-12-01 14:30:31.841280', '2022-12-04 07:04:02.059202'),
(243, 'ML', 1, 123, 66, '2022-12-01 14:30:31.841991', '2022-12-04 07:18:11.791335'),
(244, 'SI', 1, 660, 70, '2022-12-01 14:30:31.848191', '2022-12-07 10:52:55.616695'),
(245, 'CA', 2, 682, 65, '2022-12-01 14:30:31.849714', '2022-12-04 07:42:52.769756'),
(246, 'ML', 2, 689, 69, '2022-12-01 14:30:31.850717', '2022-12-01 14:30:31.850764'),
(247, 'ML', 2, 123, 67, '2022-12-01 14:30:31.852758', '2022-12-01 14:30:31.852801'),
(248, 'CA', 2, 871, 64, '2022-12-01 14:30:31.855811', '2022-12-01 14:30:31.855871'),
(249, 'CA', 2, 1225, 69, '2022-12-01 14:30:31.864090', '2022-12-01 14:30:31.864143'),
(250, 'ML', 2, 689, 70, '2022-12-01 14:30:31.865200', '2022-12-01 14:30:31.865252'),
(251, 'CA', 2, 1266, 68, '2022-12-01 14:30:31.866373', '2022-12-04 05:58:06.862506'),
(252, 'CA', 2, 1225, 67, '2022-12-01 14:30:31.867435', '2022-12-01 14:30:31.867483'),
(253, 'CA', 1, 788, 66, '2022-12-01 14:30:31.869813', '2022-12-05 10:33:04.875674'),
(254, 'CA', 2, 340, 64, '2022-12-01 14:30:31.873272', '2022-12-01 14:30:31.873330'),
(255, 'CA', 2, 282, 70, '2022-12-01 14:30:31.874661', '2022-12-01 14:30:31.874733'),
(256, 'CA', 2, 682, 67, '2022-12-01 14:30:31.875904', '2022-12-01 14:30:31.875956'),
(257, 'CA', 2, 930, 69, '2022-12-01 14:30:31.882936', '2022-12-01 14:30:31.882985'),
(258, 'CA', 2, 930, 70, '2022-12-01 14:30:31.886461', '2022-12-01 14:30:31.886508'),
(259, 'CA', 2, 682, 66, '2022-12-01 14:30:31.889259', '2022-12-01 14:30:31.889307'),
(260, 'PH', 2, 703, 72, '2022-12-01 14:34:39.778466', '2022-12-01 14:34:39.778521'),
(261, 'PH', 1, 83, 71, '2022-12-01 14:34:39.780976', '2022-12-07 12:06:47.189543'),
(262, 'PH', 2, 677, 75, '2022-12-01 14:34:39.784179', '2022-12-01 14:34:39.784256'),
(263, 'PH', 2, 82, 73, '2022-12-01 14:34:39.795378', '2022-12-01 14:34:39.795439'),
(264, 'PH', 2, 94, 76, '2022-12-01 14:34:39.798070', '2022-12-01 14:34:39.798180'),
(265, 'PH', 2, 78, 77, '2022-12-01 14:34:39.799775', '2022-12-01 14:34:39.799867'),
(266, 'PH', 2, 750, 74, '2022-12-01 14:34:39.801927', '2022-12-01 14:34:39.802016'),
(267, 'SI', 2, 51, 75, '2022-12-01 14:34:39.803112', '2022-12-01 14:34:39.803156'),
(268, 'SI', 2, 1043, 77, '2022-12-01 14:34:39.812285', '2022-12-01 14:34:39.812346'),
(269, 'SI', 2, 1043, 73, '2022-12-01 14:34:39.813431', '2022-12-01 14:34:39.813486'),
(270, 'ML', 2, 663, 75, '2022-12-01 14:34:39.814561', '2022-12-01 14:34:39.814624'),
(271, 'SI', 1, 1043, 71, '2022-12-01 14:34:39.815733', '2022-12-07 12:06:48.090882'),
(272, 'SI', 2, 51, 72, '2022-12-01 14:34:39.818401', '2022-12-01 14:34:39.818456'),
(273, 'ML', 2, 1337, 73, '2022-12-01 14:34:39.827473', '2022-12-01 14:34:39.827539'),
(274, 'ML', 2, 663, 77, '2022-12-01 14:34:39.828848', '2022-12-01 14:34:39.828906'),
(275, 'ML', 1, 663, 71, '2022-12-01 14:34:39.829940', '2022-12-07 12:06:53.112321'),
(276, 'CA', 2, 761, 75, '2022-12-01 14:34:39.830952', '2022-12-01 14:34:39.831001'),
(277, 'SI', 2, 51, 76, '2022-12-01 14:34:39.834772', '2022-12-01 14:34:39.834824'),
(278, 'SI', 2, 51, 74, '2022-12-01 14:34:39.835781', '2022-12-01 14:34:39.835832'),
(279, 'ML', 2, 1337, 72, '2022-12-01 14:34:39.842185', '2022-12-01 14:34:39.842351'),
(280, 'CA', 2, 761, 77, '2022-12-01 14:34:39.843905', '2022-12-01 14:34:39.843969'),
(281, 'CA', 2, 236, 73, '2022-12-01 14:34:39.849008', '2022-12-01 14:34:39.849081'),
(282, 'CA', 2, 236, 71, '2022-12-01 14:34:39.850423', '2022-12-07 12:30:35.891516'),
(283, 'ML', 2, 1337, 74, '2022-12-01 14:34:39.852850', '2022-12-01 14:34:39.852897'),
(284, 'ML', 2, 663, 76, '2022-12-01 14:34:39.856114', '2022-12-01 14:34:39.856263'),
(285, 'CA', 2, 791, 75, '2022-12-01 14:34:39.861880', '2022-12-01 14:34:39.861932'),
(286, 'CA', 2, 791, 71, '2022-12-01 14:34:39.862825', '2022-12-07 12:16:17.406525'),
(287, 'CA', 2, 236, 74, '2022-12-01 14:34:39.863938', '2022-12-01 14:34:39.863985'),
(288, 'CA', 2, 791, 77, '2022-12-01 14:34:39.870954', '2022-12-01 14:34:39.871031'),
(289, 'CA', 2, 761, 76, '2022-12-01 14:34:39.874647', '2022-12-01 14:34:39.874735'),
(290, 'CA', 2, 167, 73, '2022-12-01 14:34:39.877654', '2022-12-01 14:34:39.877722'),
(291, 'CA', 2, 167, 74, '2022-12-01 14:34:39.878816', '2022-12-01 14:34:39.878867'),
(292, 'CA', 2, 791, 76, '2022-12-01 14:34:39.885260', '2022-12-01 14:34:39.885309'),
(293, 'CA', 2, 761, 72, '2022-12-01 14:34:39.891760', '2022-12-01 14:34:39.891954'),
(294, 'CA', 2, 167, 72, '2022-12-01 14:34:39.910541', '2022-12-01 14:34:39.910602'),
(295, 'PH', 1, 377, 78, '2022-12-06 00:45:44.185624', '2022-12-06 00:47:44.858364'),
(296, 'PH', 2, 377, 80, '2022-12-06 00:45:44.186778', '2022-12-06 00:45:44.186831'),
(297, 'PH', 2, 116, 79, '2022-12-06 00:45:44.194743', '2022-12-06 00:45:44.194800'),
(298, 'PH', 2, 1044, 81, '2022-12-06 00:45:44.195851', '2022-12-06 00:45:44.195913'),
(299, 'SI', 2, 427, 80, '2022-12-06 00:45:44.197208', '2022-12-06 00:45:44.197288'),
(300, 'PH', 2, 377, 82, '2022-12-06 00:45:44.199778', '2022-12-06 00:45:44.199844'),
(301, 'SI', 1, 1334, 78, '2022-12-06 00:45:44.202152', '2022-12-06 00:47:46.660054'),
(302, 'SI', 2, 356, 79, '2022-12-06 00:45:44.204505', '2022-12-06 00:45:44.204547'),
(303, 'SI', 2, 588, 82, '2022-12-06 00:45:44.206615', '2022-12-06 00:45:44.206668'),
(304, 'SI', 2, 955, 81, '2022-12-06 00:45:44.207764', '2022-12-06 00:45:44.207792'),
(305, 'ML', 1, 1327, 78, '2022-12-06 00:45:44.210253', '2022-12-06 00:47:47.515537'),
(306, 'ML', 2, 1327, 80, '2022-12-06 00:45:44.211229', '2022-12-06 00:45:44.211259'),
(307, 'ML', 2, 1284, 79, '2022-12-06 00:45:44.211678', '2022-12-06 00:45:44.211701'),
(308, 'ML', 2, 1327, 82, '2022-12-06 00:45:44.213191', '2022-12-06 00:45:44.213247'),
(309, 'CA', 2, 5, 78, '2022-12-06 00:45:44.216241', '2022-12-06 00:45:44.216293'),
(310, 'CA', 2, 854, 80, '2022-12-06 00:45:44.220091', '2022-12-06 00:45:44.220164'),
(311, 'CA', 2, 182, 79, '2022-12-06 00:45:44.222422', '2022-12-06 00:45:44.222474'),
(312, 'ML', 2, 371, 81, '2022-12-06 00:45:44.224425', '2022-12-06 00:45:44.224478'),
(313, 'CA', 2, 182, 82, '2022-12-06 00:45:44.225354', '2022-12-06 00:45:44.225399'),
(314, 'CA', 2, 1297, 78, '2022-12-06 00:45:44.229279', '2022-12-06 00:45:44.229329'),
(315, 'CA', 2, 1297, 80, '2022-12-06 00:45:44.230178', '2022-12-06 00:45:44.230222'),
(316, 'CA', 2, 5, 81, '2022-12-06 00:45:44.231074', '2022-12-06 00:45:44.231119'),
(317, 'CA', 2, 71, 79, '2022-12-06 00:45:44.231927', '2022-12-06 00:45:44.231969'),
(318, 'CA', 2, 1297, 82, '2022-12-06 00:45:44.234804', '2022-12-06 00:45:44.234865'),
(319, 'CA', 2, 746, 81, '2022-12-06 00:45:44.244183', '2022-12-06 00:45:44.244252'),
(320, 'PH', 2, 116, 83, '2022-12-06 00:45:44.306104', '2022-12-06 00:45:44.306172'),
(321, 'PH', 2, 377, 84, '2022-12-06 00:45:44.307329', '2022-12-06 00:45:44.307382'),
(322, 'SI', 2, 399, 83, '2022-12-06 00:45:44.310891', '2022-12-06 00:45:44.310940'),
(323, 'SI', 2, 135, 84, '2022-12-06 00:45:44.311813', '2022-12-06 00:45:44.311866'),
(324, 'ML', 2, 1284, 83, '2022-12-06 00:45:44.315658', '2022-12-06 00:45:44.315706'),
(325, 'ML', 2, 1327, 84, '2022-12-06 00:45:44.316962', '2022-12-06 00:45:44.317030'),
(326, 'CA', 2, 5, 83, '2022-12-06 00:45:44.321502', '2022-12-06 00:45:44.321560'),
(327, 'CA', 2, 182, 84, '2022-12-06 00:45:44.322590', '2022-12-06 00:45:44.322642'),
(328, 'CA', 2, 71, 83, '2022-12-06 00:45:44.326636', '2022-12-06 00:45:44.326691'),
(329, 'CA', 2, 1297, 84, '2022-12-06 00:45:44.327566', '2022-12-06 00:45:44.327615'),
(330, 'PH', 2, 470, 86, '2022-12-07 12:06:27.680670', '2022-12-07 12:06:27.680761'),
(331, 'PH', 2, 1331, 85, '2022-12-07 12:06:27.685186', '2022-12-07 12:06:27.685249'),
(332, 'PH', 2, 294, 88, '2022-12-07 12:06:27.693755', '2022-12-07 12:06:27.693818'),
(333, 'SI', 2, 232, 86, '2022-12-07 12:06:27.705521', '2022-12-07 12:06:27.705601'),
(334, 'SI', 2, 232, 88, '2022-12-07 12:06:27.707312', '2022-12-07 12:06:27.707411'),
(335, 'PH', 2, 135, 89, '2022-12-07 12:06:27.709435', '2022-12-07 12:06:27.709509'),
(336, 'PH', 2, 470, 91, '2022-12-07 12:06:27.714497', '2022-12-07 12:06:27.714553'),
(337, 'PH', 2, 489, 90, '2022-12-07 12:06:27.716911', '2022-12-07 12:06:27.716971'),
(338, 'ML', 2, 798, 86, '2022-12-07 12:06:27.728055', '2022-12-07 12:06:27.728137'),
(339, 'ML', 2, 798, 88, '2022-12-07 12:06:27.729688', '2022-12-07 12:06:27.729776'),
(340, 'PH', 2, 677, 87, '2022-12-07 12:06:27.731329', '2022-12-07 12:06:27.731397'),
(341, 'SI', 2, 490, 90, '2022-12-07 12:06:27.733078', '2022-12-07 12:06:27.733165'),
(342, 'SI', 2, 465, 85, '2022-12-07 12:06:27.734451', '2022-12-07 12:06:27.734513'),
(343, 'SI', 2, 591, 89, '2022-12-07 12:06:27.737692', '2022-12-07 12:06:27.737753'),
(344, 'CA', 2, 5, 86, '2022-12-07 12:06:27.743687', '2022-12-07 12:06:27.743802'),
(345, 'ML', 2, 798, 85, '2022-12-07 12:06:27.745292', '2022-12-07 12:06:27.745366'),
(346, 'ML', 2, 798, 90, '2022-12-07 12:06:27.746571', '2022-12-07 12:06:27.746627'),
(347, 'CA', 2, 5, 88, '2022-12-07 12:06:27.752116', '2022-12-07 12:06:27.752204'),
(348, 'SI', 2, 232, 91, '2022-12-07 12:06:27.755312', '2022-12-07 12:06:27.755386'),
(349, 'CA', 2, 5, 90, '2022-12-07 12:06:27.756952', '2022-12-07 12:06:27.757034'),
(350, 'CA', 2, 167, 86, '2022-12-07 12:06:27.758441', '2022-12-07 12:06:27.758536'),
(351, 'ML', 2, 798, 91, '2022-12-07 12:06:27.765347', '2022-12-07 12:06:27.765419'),
(352, 'CA', 2, 167, 88, '2022-12-07 12:06:27.766620', '2022-12-07 12:06:27.766676'),
(353, 'CA', 2, 167, 90, '2022-12-07 12:06:27.778748', '2022-12-07 12:06:27.778814'),
(354, 'SI', 2, 232, 87, '2022-12-07 12:06:27.780069', '2022-12-07 12:06:27.780125'),
(355, 'CA', 2, 5, 85, '2022-12-07 12:06:27.787316', '2022-12-07 12:06:27.787379'),
(356, 'ML', 2, 798, 87, '2022-12-07 12:06:27.789231', '2022-12-07 12:06:27.789313'),
(357, 'CA', 2, 167, 85, '2022-12-07 12:06:27.800759', '2022-12-07 12:06:27.800820'),
(358, 'CA', 2, 5, 91, '2022-12-07 12:06:27.802392', '2022-12-07 12:06:27.802449'),
(359, 'CA', 2, 5, 87, '2022-12-07 12:06:27.803570', '2022-12-07 12:06:27.803622'),
(360, 'ML', 2, 798, 89, '2022-12-07 12:06:27.806145', '2022-12-07 12:06:27.806268'),
(361, 'CA', 2, 167, 91, '2022-12-07 12:06:27.814311', '2022-12-07 12:06:27.814390'),
(362, 'CA', 2, 5, 89, '2022-12-07 12:06:27.818561', '2022-12-07 12:06:27.818626'),
(363, 'CA', 2, 167, 87, '2022-12-07 12:06:27.819679', '2022-12-07 12:06:27.819731'),
(364, 'CA', 2, 167, 89, '2022-12-07 12:06:27.825187', '2022-12-07 12:06:27.825396'),
(365, 'PH', 2, 678, 93, '2023-01-25 11:53:58.947509', '2023-01-25 11:53:58.947597'),
(366, 'PH', 2, 675, 92, '2023-01-25 11:53:58.949762', '2023-01-25 11:53:58.949884'),
(367, 'PH', 2, 475, 94, '2023-01-25 11:53:58.960303', '2023-01-25 11:53:58.960382'),
(368, 'SI', 2, 1043, 93, '2023-01-25 11:53:58.962915', '2023-01-25 11:53:58.963009'),
(369, 'SI', 2, 287, 92, '2023-01-25 11:53:58.967860', '2023-01-25 11:53:58.967950'),
(370, 'SI', 2, 102, 94, '2023-01-25 11:53:58.969999', '2023-01-25 11:53:58.970084'),
(371, 'ML', 2, 84, 93, '2023-01-25 11:53:58.973630', '2023-01-25 11:53:58.973704'),
(372, 'ML', 2, 84, 92, '2023-01-25 11:53:58.978776', '2023-01-25 11:53:58.978851'),
(373, 'ML', 2, 84, 94, '2023-01-25 11:53:58.982192', '2023-01-25 11:53:58.982278'),
(374, 'CA', 2, 772, 93, '2023-01-25 11:53:58.987006', '2023-01-25 11:53:58.987129'),
(375, 'CA', 2, 113, 93, '2023-01-25 11:53:58.999417', '2023-01-25 11:53:58.999481'),
(376, 'CA', 2, 772, 92, '2023-01-25 11:53:59.001539', '2023-01-25 11:53:59.001685'),
(377, 'CA', 2, 772, 94, '2023-01-25 11:53:59.003371', '2023-01-25 11:53:59.003448'),
(378, 'PH', 2, 1044, 95, '2023-01-25 11:53:59.010211', '2023-01-25 11:53:59.010287'),
(379, 'PH', 2, 678, 96, '2023-01-25 11:53:59.016422', '2023-01-25 11:53:59.016505'),
(380, 'CA', 2, 113, 94, '2023-01-25 11:53:59.021639', '2023-01-25 11:53:59.021797'),
(381, 'SI', 2, 74, 95, '2023-01-25 11:53:59.023368', '2023-01-25 11:53:59.023437'),
(382, 'CA', 2, 113, 92, '2023-01-25 11:53:59.027750', '2023-01-25 11:53:59.027819'),
(383, 'SI', 2, 489, 96, '2023-01-25 11:53:59.033073', '2023-01-25 11:53:59.033201'),
(384, 'ML', 2, 84, 95, '2023-01-25 11:53:59.044058', '2023-01-25 11:53:59.044119'),
(385, 'ML', 2, 84, 96, '2023-01-25 11:53:59.045380', '2023-01-25 11:53:59.045437'),
(386, 'CA', 2, 772, 95, '2023-01-25 11:53:59.053655', '2023-01-25 11:53:59.053733'),
(387, 'CA', 2, 772, 96, '2023-01-25 11:53:59.055651', '2023-01-25 11:53:59.055729'),
(388, 'CA', 2, 113, 95, '2023-01-25 11:53:59.060614', '2023-01-25 11:53:59.060701'),
(389, 'CA', 2, 113, 96, '2023-01-25 11:53:59.062340', '2023-01-25 11:53:59.062421'),
(390, 'PH', 2, 678, 97, '2023-01-25 11:53:59.131684', '2023-01-25 11:53:59.131752'),
(391, 'PH', 2, 675, 98, '2023-01-25 11:53:59.133454', '2023-01-25 11:53:59.133555'),
(392, 'SI', 2, 511, 97, '2023-01-25 11:53:59.139781', '2023-01-25 11:53:59.139864'),
(393, 'SI', 2, 601, 98, '2023-01-25 11:53:59.142011', '2023-01-25 11:53:59.142117'),
(394, 'ML', 2, 84, 97, '2023-01-25 11:53:59.149108', '2023-01-25 11:53:59.149251'),
(395, 'ML', 2, 84, 98, '2023-01-25 11:53:59.156813', '2023-01-25 11:53:59.156873'),
(396, 'CA', 2, 772, 97, '2023-01-25 11:53:59.161901', '2023-01-25 11:53:59.162011'),
(397, 'CA', 2, 772, 98, '2023-01-25 11:53:59.163976', '2023-01-25 11:53:59.164060'),
(398, 'CA', 2, 113, 97, '2023-01-25 11:53:59.169751', '2023-01-25 11:53:59.169833'),
(399, 'CA', 2, 113, 98, '2023-01-25 11:53:59.171793', '2023-01-25 11:53:59.171864'),
(400, 'PH', 2, 688, 100, '2023-01-25 12:07:58.279044', '2023-01-25 12:07:58.279103'),
(401, 'PH', 2, 688, 99, '2023-01-25 12:07:58.281904', '2023-01-25 12:07:58.281965'),
(402, 'PH', 2, 688, 101, '2023-01-25 12:07:58.288681', '2023-01-25 12:07:58.288723'),
(403, 'SI', 2, 1304, 99, '2023-01-25 12:07:58.290300', '2023-01-25 12:07:58.290378'),
(404, 'SI', 2, 138, 100, '2023-01-25 12:07:58.292751', '2023-01-25 12:07:58.292827'),
(405, 'SI', 2, 34, 101, '2023-01-25 12:07:58.298652', '2023-01-25 12:07:58.298708'),
(406, 'ML', 2, 610, 99, '2023-01-25 12:07:58.299707', '2023-01-25 12:07:58.299765'),
(407, 'ML', 2, 610, 100, '2023-01-25 12:07:58.305249', '2023-01-25 12:07:58.305302'),
(408, 'ML', 2, 610, 101, '2023-01-25 12:07:58.306220', '2023-01-25 12:07:58.306271'),
(409, 'PH', 2, 688, 102, '2023-01-25 12:07:58.307675', '2023-01-25 12:07:58.307753'),
(410, 'CA', 2, 1291, 99, '2023-01-25 12:07:58.312569', '2023-01-25 12:07:58.312614'),
(411, 'CA', 2, 1291, 100, '2023-01-25 12:07:58.315582', '2023-01-25 12:07:58.315626'),
(412, 'CA', 2, 1291, 101, '2023-01-25 12:07:58.316402', '2023-01-25 12:07:58.316441'),
(413, 'CA', 2, 1281, 99, '2023-01-25 12:07:58.323633', '2023-01-25 12:07:58.323702'),
(414, 'SI', 2, 138, 102, '2023-01-25 12:07:58.324945', '2023-01-25 12:07:58.324994'),
(415, 'CA', 2, 1281, 100, '2023-01-25 12:07:58.325983', '2023-01-25 12:07:58.326029'),
(416, 'CA', 2, 1281, 101, '2023-01-25 12:07:58.328144', '2023-01-25 12:07:58.328188'),
(417, 'PH', 2, 688, 103, '2023-01-25 12:07:58.328987', '2023-01-25 12:07:58.329031'),
(418, 'PH', 2, 688, 104, '2023-01-25 12:07:58.334038', '2023-01-25 12:07:58.334099'),
(419, 'SI', 2, 1330, 103, '2023-01-25 12:07:58.336648', '2023-01-25 12:07:58.336692'),
(420, 'SI', 2, 422, 104, '2023-01-25 12:07:58.344235', '2023-01-25 12:07:58.344273'),
(421, 'ML', 2, 610, 102, '2023-01-25 12:07:58.346139', '2023-01-25 12:07:58.346183'),
(422, 'ML', 2, 610, 103, '2023-01-25 12:07:58.350184', '2023-01-25 12:07:58.350232'),
(423, 'ML', 2, 610, 104, '2023-01-25 12:07:58.351445', '2023-01-25 12:07:58.351491'),
(424, 'CA', 2, 1291, 102, '2023-01-25 12:07:58.353523', '2023-01-25 12:07:58.353569'),
(425, 'CA', 2, 1291, 103, '2023-01-25 12:07:58.355497', '2023-01-25 12:07:58.355541'),
(426, 'CA', 2, 1281, 102, '2023-01-25 12:07:58.359585', '2023-01-25 12:07:58.359638'),
(427, 'CA', 2, 1291, 104, '2023-01-25 12:07:58.360746', '2023-01-25 12:07:58.360811'),
(428, 'CA', 2, 1281, 103, '2023-01-25 12:07:58.361859', '2023-01-25 12:07:58.361904'),
(429, 'CA', 2, 1281, 104, '2023-01-25 12:07:58.366000', '2023-01-25 12:07:58.366040'),
(430, 'PH', 2, 688, 105, '2023-01-25 12:07:58.390126', '2023-01-25 12:07:58.390220'),
(431, 'SI', 2, 232, 105, '2023-01-25 12:07:58.394757', '2023-01-25 12:07:58.394807'),
(432, 'ML', 2, 610, 105, '2023-01-25 12:07:58.399756', '2023-01-25 12:07:58.399833'),
(433, 'CA', 2, 1291, 105, '2023-01-25 12:07:58.404668', '2023-01-25 12:07:58.404716'),
(434, 'CA', 2, 1281, 105, '2023-01-25 12:07:58.408653', '2023-01-25 12:07:58.408701');

-- --------------------------------------------------------

--
-- Table structure for table `base_makananfoto`
--

CREATE TABLE `base_makananfoto` (
  `id` bigint(20) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `makanan_id` bigint(20) NOT NULL,
  `foto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `base_makananfoto`
--

INSERT INTO `base_makananfoto` (`id`, `created_at`, `updated_at`, `makanan_id`, `foto`) VALUES
(45, '2022-09-12 12:41:04.816018', '2022-09-12 12:41:04.816078', 1638, 'images/Screenshot_from_2021-04-25_20-02-45.png'),
(47, '2022-09-12 12:41:04.822905', '2022-09-12 12:41:04.822965', 1638, 'images/Screenshot_from_2021-04-26_22-45-09.png'),
(50, '2022-09-12 12:49:01.879325', '2022-09-12 12:49:01.879388', 1638, 'images/Screenshot_from_2021-06-02_07-57-33.png'),
(52, '2022-09-12 13:13:51.234314', '2022-09-12 13:13:51.234375', 1640, 'images/Screenshot_from_2021-05-04_22-45-54.png'),
(53, '2022-09-12 13:13:51.240800', '2022-09-12 13:13:51.240912', 1640, 'images/Screenshot_from_2021-05-05_03-03-20.png'),
(54, '2022-09-12 13:13:51.245502', '2022-09-12 13:13:51.245592', 1640, 'images/Screenshot_from_2021-05-06_08-06-24.png'),
(56, '2022-09-12 13:43:06.530910', '2022-09-12 13:43:06.530951', 1641, 'images/Screenshot_from_2021-05-22_19-31-15.png'),
(60, '2022-09-12 13:44:20.513941', '2022-09-12 13:44:20.513977', 1641, 'images/Screenshot_from_2021-06-02_07-57-33_WfrS3FV.png');

-- --------------------------------------------------------

--
-- Table structure for table `base_minum`
--

CREATE TABLE `base_minum` (
  `id` bigint(20) NOT NULL,
  `jumlah_minum` int(11) NOT NULL,
  `banyak_minum` int(11) NOT NULL,
  `progress` int(11) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `rencana_diet_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `base_minum`
--

INSERT INTO `base_minum` (`id`, `jumlah_minum`, `banyak_minum`, `progress`, `created_at`, `updated_at`, `rencana_diet_id`) VALUES
(56, 8, 2, 0, '2022-12-01 14:30:31.876961', '2022-12-01 14:30:31.877023', 68),
(57, 8, 2, 0, '2022-12-01 14:30:31.881868', '2022-12-01 14:30:31.881894', 64),
(58, 8, 2, 0, '2022-12-01 14:30:31.883401', '2022-12-01 14:30:31.883447', 65),
(59, 8, 2, 0, '2022-12-01 14:30:31.885417', '2022-12-01 14:30:31.885480', 67),
(60, 8, 2, 0, '2022-12-01 14:30:31.892777', '2022-12-01 14:30:31.892825', 70),
(61, 8, 2, 0, '2022-12-01 14:30:31.896109', '2022-12-01 14:30:31.896161', 69),
(62, 8, 2, 0, '2022-12-01 14:30:31.903950', '2022-12-01 14:30:31.904002', 66),
(63, 8, 2, 0, '2022-12-01 14:34:39.876427', '2022-12-01 14:34:39.876489', 75),
(64, 8, 2, 0, '2022-12-01 14:34:39.885950', '2022-12-01 14:34:39.885994', 71),
(65, 8, 2, 0, '2022-12-01 14:34:39.886565', '2022-12-01 14:34:39.886616', 74),
(66, 8, 2, 0, '2022-12-01 14:34:39.887709', '2022-12-01 14:34:39.887813', 73),
(67, 8, 2, 0, '2022-12-01 14:34:39.896234', '2022-12-01 14:34:39.896311', 76),
(68, 8, 2, 0, '2022-12-01 14:34:39.900074', '2022-12-01 14:34:39.900125', 77),
(69, 8, 2, 0, '2022-12-01 14:34:39.915122', '2022-12-01 14:34:39.915173', 72),
(70, 8, 2, 0, '2022-12-06 00:45:44.235699', '2022-12-06 00:45:44.235763', 78),
(71, 8, 2, 0, '2022-12-06 00:45:44.241729', '2022-12-06 00:45:44.241779', 79),
(72, 8, 2, 0, '2022-12-06 00:45:44.243082', '2022-12-06 00:45:44.243127', 82),
(73, 8, 2, 0, '2022-12-06 00:45:44.251859', '2022-12-06 00:45:44.251898', 80),
(74, 8, 2, 0, '2022-12-06 00:45:44.253582', '2022-12-06 00:45:44.253678', 81),
(75, 8, 2, 0, '2022-12-06 00:45:44.330078', '2022-12-06 00:45:44.330126', 83),
(76, 8, 2, 0, '2022-12-06 00:45:44.331116', '2022-12-06 00:45:44.331163', 84),
(77, 8, 2, 0, '2022-12-07 12:06:27.777125', '2022-12-07 12:06:27.777218', 88),
(78, 8, 2, 0, '2022-12-07 12:06:27.781113', '2022-12-07 12:06:27.781173', 86),
(79, 8, 2, 0, '2022-12-07 12:06:27.792562', '2022-12-07 12:06:27.792628', 90),
(80, 8, 2, 0, '2022-12-07 12:06:27.807988', '2022-12-07 12:06:27.808072', 85),
(81, 8, 2, 0, '2022-12-07 12:06:27.826785', '2022-12-07 12:06:27.826842', 91),
(82, 8, 2, 0, '2022-12-07 12:06:27.831649', '2022-12-07 12:06:27.831716', 87),
(83, 8, 2, 0, '2022-12-07 12:06:27.837880', '2022-12-07 12:06:27.837943', 89),
(84, 8, 2, 0, '2023-01-25 11:53:59.011340', '2023-01-25 11:53:59.011407', 93),
(85, 8, 2, 0, '2023-01-25 11:53:59.030520', '2023-01-25 11:53:59.030599', 94),
(86, 8, 2, 0, '2023-01-25 11:53:59.034883', '2023-01-25 11:53:59.034972', 92),
(87, 8, 2, 0, '2023-01-25 11:53:59.066633', '2023-01-25 11:53:59.066742', 95),
(88, 8, 2, 0, '2023-01-25 11:53:59.086620', '2023-01-25 11:53:59.086725', 96),
(89, 8, 2, 0, '2023-01-25 11:53:59.175342', '2023-01-25 11:53:59.175409', 97),
(90, 8, 2, 0, '2023-01-25 11:53:59.176134', '2023-01-25 11:53:59.176186', 98),
(91, 8, 2, 0, '2023-01-25 12:07:58.334878', '2023-01-25 12:07:58.334941', 100),
(92, 8, 2, 0, '2023-01-25 12:07:58.335660', '2023-01-25 12:07:58.335715', 101),
(93, 8, 2, 0, '2023-01-25 12:07:58.338610', '2023-01-25 12:07:58.338681', 99),
(94, 8, 2, 0, '2023-01-25 12:07:58.364502', '2023-01-25 12:07:58.364550', 102),
(95, 8, 2, 0, '2023-01-25 12:07:58.368095', '2023-01-25 12:07:58.368136', 103),
(96, 8, 2, 0, '2023-01-25 12:07:58.371881', '2023-01-25 12:07:58.371946', 104),
(97, 8, 2, 0, '2023-01-25 12:07:58.411967', '2023-01-25 12:07:58.412007', 105);

-- --------------------------------------------------------

--
-- Table structure for table `base_olahraga`
--

CREATE TABLE `base_olahraga` (
  `id` bigint(20) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `rencana_diet_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `base_olahraga`
--

INSERT INTO `base_olahraga` (`id`, `nama`, `status`, `created_at`, `updated_at`, `rencana_diet_id`) VALUES
(56, '', 2, '2022-12-01 14:30:31.854678', '2022-12-01 14:30:31.854747', 65),
(57, '', 2, '2022-12-01 14:30:31.872160', '2022-12-01 14:30:31.872218', 68),
(58, '', 2, '2022-12-01 14:30:31.878912', '2022-12-01 14:30:31.878992', 64),
(59, '', 2, '2022-12-01 14:30:31.881278', '2022-12-01 14:30:31.881340', 67),
(60, '', 2, '2022-12-01 14:30:31.889942', '2022-12-01 14:30:31.889995', 70),
(61, '', 2, '2022-12-01 14:30:31.892200', '2022-12-01 14:30:31.892247', 69),
(62, '', 2, '2022-12-01 14:30:31.893374', '2022-12-01 14:30:31.893415', 66),
(63, '', 2, '2022-12-01 14:34:39.868584', '2022-12-01 14:34:39.868643', 75),
(64, '', 2, '2022-12-01 14:34:39.872346', '2022-12-01 14:34:39.872511', 71),
(65, '', 2, '2022-12-01 14:34:39.882653', '2022-12-01 14:34:39.882705', 74),
(66, '', 2, '2022-12-01 14:34:39.883470', '2022-12-01 14:34:39.883527', 73),
(67, '', 2, '2022-12-01 14:34:39.884250', '2022-12-01 14:34:39.884296', 77),
(68, '', 2, '2022-12-01 14:34:39.889449', '2022-12-01 14:34:39.889562', 76),
(69, '', 2, '2022-12-01 14:34:39.913344', '2022-12-01 14:34:39.913403', 72),
(70, '', 2, '2022-12-06 00:45:44.232653', '2022-12-06 00:45:44.232699', 78),
(71, '', 2, '2022-12-06 00:45:44.233425', '2022-12-06 00:45:44.233483', 79),
(72, '', 2, '2022-12-06 00:45:44.239388', '2022-12-06 00:45:44.239442', 82),
(73, '', 2, '2022-12-06 00:45:44.242349', '2022-12-06 00:45:44.242402', 80),
(74, '', 2, '2022-12-06 00:45:44.251120', '2022-12-06 00:45:44.251184', 81),
(75, '', 2, '2022-12-06 00:45:44.328648', '2022-12-06 00:45:44.328695', 83),
(76, '', 2, '2022-12-06 00:45:44.329201', '2022-12-06 00:45:44.329244', 84),
(77, '', 2, '2022-12-07 12:06:27.763582', '2022-12-07 12:06:27.763686', 86),
(78, '', 2, '2022-12-07 12:06:27.770763', '2022-12-07 12:06:27.770829', 88),
(79, '', 2, '2022-12-07 12:06:27.782042', '2022-12-07 12:06:27.782109', 90),
(80, '', 2, '2022-12-07 12:06:27.804337', '2022-12-07 12:06:27.804397', 85),
(81, '', 2, '2022-12-07 12:06:27.820360', '2022-12-07 12:06:27.820405', 91),
(82, '', 2, '2022-12-07 12:06:27.827893', '2022-12-07 12:06:27.827958', 87),
(83, '', 2, '2022-12-07 12:06:27.833660', '2022-12-07 12:06:27.833750', 89),
(84, '', 2, '2023-01-25 11:53:59.005128', '2023-01-25 11:53:59.005262', 93),
(85, '', 2, '2023-01-25 11:53:59.026276', '2023-01-25 11:53:59.026349', 94),
(86, '', 2, '2023-01-25 11:53:59.031517', '2023-01-25 11:53:59.031585', 92),
(87, '', 2, '2023-01-25 11:53:59.063778', '2023-01-25 11:53:59.063856', 95),
(88, '', 2, '2023-01-25 11:53:59.065335', '2023-01-25 11:53:59.065425', 96),
(89, '', 2, '2023-01-25 11:53:59.172882', '2023-01-25 11:53:59.172944', 97),
(90, '', 2, '2023-01-25 11:53:59.173935', '2023-01-25 11:53:59.174008', 98),
(91, '', 2, '2023-01-25 12:07:58.329624', '2023-01-25 12:07:58.329665', 100),
(92, '', 2, '2023-01-25 12:07:58.330187', '2023-01-25 12:07:58.330224', 99),
(93, '', 2, '2023-01-25 12:07:58.330761', '2023-01-25 12:07:58.330803', 101),
(94, '', 2, '2023-01-25 12:07:58.362711', '2023-01-25 12:07:58.362754', 102),
(95, '', 2, '2023-01-25 12:07:58.365103', '2023-01-25 12:07:58.365163', 103),
(96, '', 2, '2023-01-25 12:07:58.368658', '2023-01-25 12:07:58.368699', 104),
(97, '', 2, '2023-01-25 12:07:58.410176', '2023-01-25 12:07:58.410222', 105);

-- --------------------------------------------------------

--
-- Table structure for table `base_preferensimakanan`
--

CREATE TABLE `base_preferensimakanan` (
  `id` bigint(20) NOT NULL,
  `jenis` varchar(2) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `makanan_id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `base_preferensimakanan`
--

INSERT INTO `base_preferensimakanan` (`id`, `jenis`, `created_at`, `updated_at`, `makanan_id`, `user_id`) VALUES
(2, 'BL', '2022-10-03 11:32:57.766666', '2022-10-03 11:32:57.766695', 9, 44),
(3, 'FV', '2022-10-03 11:33:09.535643', '2022-10-03 11:33:09.535716', 8, 44),
(4, 'BL', '2022-10-03 11:33:22.009508', '2022-10-03 11:33:22.009575', 11, 44),
(5, 'FV', '2022-10-03 11:34:12.963867', '2022-11-10 01:14:08.618541', 4, 44),
(6, 'FV', '2022-10-03 12:06:49.417528', '2022-10-03 12:06:49.417649', 25, 44),
(7, 'FV', '2022-10-03 12:08:01.749709', '2022-10-03 12:08:01.749780', 26, 44),
(8, 'FV', '2022-10-03 12:08:21.407073', '2022-10-03 12:08:21.407133', 26, 44),
(11, 'BL', '2022-10-03 12:12:37.823989', '2022-10-03 12:15:22.297697', 1641, 44),
(12, 'FV', '2022-10-03 12:17:49.036499', '2022-10-03 12:17:49.036568', 26, 45),
(13, 'FV', '2022-11-09 18:09:40.841733', '2022-11-09 18:09:40.841764', 3, 44),
(14, 'FV', '2022-11-09 18:12:51.201482', '2022-11-09 18:12:51.201517', 3, 44),
(15, 'FV', '2022-11-10 00:59:19.774940', '2022-11-10 00:59:19.775025', 3, 44),
(35, 'FV', '2022-11-24 13:00:35.858012', '2022-11-24 13:00:35.858074', 7, 49),
(37, 'FV', '2022-11-24 14:13:25.093994', '2022-11-24 14:13:25.094049', 15, 49),
(39, 'BL', '2022-11-26 10:16:23.872133', '2022-11-26 10:16:23.872192', 16, 49),
(40, 'BL', '2022-11-26 10:17:04.606226', '2022-11-26 10:17:04.606279', 15, 49),
(41, 'BL', '2022-11-26 10:18:14.604940', '2022-11-26 10:18:14.604973', 17, 49),
(42, 'FV', '2022-12-06 00:37:49.549793', '2022-12-06 00:37:49.549846', 16, 56),
(43, 'BL', '2022-12-06 00:37:53.846777', '2022-12-06 00:37:53.846812', 15, 56);

-- --------------------------------------------------------

--
-- Table structure for table `base_rekomendasimakanandiet`
--

CREATE TABLE `base_rekomendasimakanandiet` (
  `id` bigint(20) NOT NULL,
  `waktu_makan` varchar(2) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `makanan_id` bigint(20) NOT NULL,
  `rekomendasi_rencana_diet_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `base_rekomendasimakanandiet`
--

INSERT INTO `base_rekomendasimakanandiet` (`id`, `waktu_makan`, `created_at`, `updated_at`, `makanan_id`, `rekomendasi_rencana_diet_id`) VALUES
(743, 'PH', '2023-01-25 12:07:57.939615', '2023-01-25 12:07:57.939659', 688, 180),
(744, 'SI', '2023-01-25 12:07:57.944715', '2023-01-25 12:07:57.944758', 1304, 180),
(745, 'ML', '2023-01-25 12:07:57.950424', '2023-01-25 12:07:57.950469', 610, 180),
(746, 'CA', '2023-01-25 12:07:57.954914', '2023-01-25 12:07:57.954958', 1291, 180),
(747, 'CA', '2023-01-25 12:07:57.960345', '2023-01-25 12:07:57.960395', 1281, 180),
(748, 'PH', '2023-01-25 12:07:57.967077', '2023-01-25 12:07:57.967120', 688, 181),
(749, 'SI', '2023-01-25 12:07:57.973337', '2023-01-25 12:07:57.973408', 34, 181),
(750, 'ML', '2023-01-25 12:07:57.978399', '2023-01-25 12:07:57.978428', 610, 181),
(751, 'CA', '2023-01-25 12:07:57.981832', '2023-01-25 12:07:57.981857', 1291, 181),
(752, 'CA', '2023-01-25 12:07:57.985262', '2023-01-25 12:07:57.985287', 1281, 181),
(753, 'PH', '2023-01-25 12:07:57.989655', '2023-01-25 12:07:57.989681', 688, 182),
(754, 'SI', '2023-01-25 12:07:57.993165', '2023-01-25 12:07:57.993192', 138, 182),
(755, 'ML', '2023-01-25 12:07:57.996529', '2023-01-25 12:07:57.996555', 610, 182),
(756, 'CA', '2023-01-25 12:07:57.999355', '2023-01-25 12:07:57.999380', 1291, 182),
(757, 'CA', '2023-01-25 12:07:58.002724', '2023-01-25 12:07:58.002751', 1281, 182),
(758, 'PH', '2023-01-25 12:07:58.007540', '2023-01-25 12:07:58.007570', 688, 183),
(759, 'SI', '2023-01-25 12:07:58.011222', '2023-01-25 12:07:58.011250', 138, 183),
(760, 'ML', '2023-01-25 12:07:58.014673', '2023-01-25 12:07:58.014701', 610, 183),
(761, 'CA', '2023-01-25 12:07:58.019326', '2023-01-25 12:07:58.019374', 1291, 183),
(762, 'CA', '2023-01-25 12:07:58.024048', '2023-01-25 12:07:58.024099', 1281, 183),
(763, 'PH', '2023-01-25 12:07:58.031781', '2023-01-25 12:07:58.031830', 688, 184),
(764, 'SI', '2023-01-25 12:07:58.036545', '2023-01-25 12:07:58.036592', 1330, 184),
(765, 'ML', '2023-01-25 12:07:58.041412', '2023-01-25 12:07:58.041461', 610, 184),
(766, 'CA', '2023-01-25 12:07:58.046267', '2023-01-25 12:07:58.046317', 1291, 184),
(767, 'CA', '2023-01-25 12:07:58.051021', '2023-01-25 12:07:58.051070', 1281, 184),
(768, 'PH', '2023-01-25 12:07:58.057937', '2023-01-25 12:07:58.057986', 688, 185),
(769, 'SI', '2023-01-25 12:07:58.062677', '2023-01-25 12:07:58.062725', 422, 185),
(770, 'ML', '2023-01-25 12:07:58.067779', '2023-01-25 12:07:58.067827', 610, 185),
(771, 'CA', '2023-01-25 12:07:58.072807', '2023-01-25 12:07:58.072856', 1291, 185),
(772, 'CA', '2023-01-25 12:07:58.078107', '2023-01-25 12:07:58.078157', 1281, 185),
(773, 'PH', '2023-01-25 12:07:58.084616', '2023-01-25 12:07:58.084664', 688, 186),
(774, 'SI', '2023-01-25 12:07:58.089912', '2023-01-25 12:07:58.089987', 232, 186),
(775, 'ML', '2023-01-25 12:07:58.097289', '2023-01-25 12:07:58.097345', 610, 186),
(776, 'CA', '2023-01-25 12:07:58.102563', '2023-01-25 12:07:58.102612', 1291, 186),
(777, 'CA', '2023-01-25 12:07:58.107475', '2023-01-25 12:07:58.107526', 1281, 186);

-- --------------------------------------------------------

--
-- Table structure for table `base_rekomendasirencanadiet`
--

CREATE TABLE `base_rekomendasirencanadiet` (
  `id` bigint(20) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `riwayat_rekomendasi_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `base_rekomendasirencanadiet`
--

INSERT INTO `base_rekomendasirencanadiet` (`id`, `created_at`, `updated_at`, `riwayat_rekomendasi_id`) VALUES
(180, '2023-01-25 12:07:57.934708', '2023-01-25 12:07:57.934752', 55),
(181, '2023-01-25 12:07:57.962465', '2023-01-25 12:07:57.962512', 55),
(182, '2023-01-25 12:07:57.986744', '2023-01-25 12:07:57.986765', 55),
(183, '2023-01-25 12:07:58.004340', '2023-01-25 12:07:58.004363', 55),
(184, '2023-01-25 12:07:58.026325', '2023-01-25 12:07:58.026386', 55),
(185, '2023-01-25 12:07:58.052910', '2023-01-25 12:07:58.052954', 55),
(186, '2023-01-25 12:07:58.080083', '2023-01-25 12:07:58.080128', 55);

-- --------------------------------------------------------

--
-- Table structure for table `base_rencanadiet`
--

CREATE TABLE `base_rencanadiet` (
  `id` bigint(20) NOT NULL,
  `tanggal` datetime(6) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `base_rencanadiet`
--

INSERT INTO `base_rencanadiet` (`id`, `tanggal`, `created_at`, `updated_at`, `user_id`) VALUES
(64, '2022-12-02 00:00:00.000000', '2022-12-01 14:30:31.781508', '2022-12-01 14:30:31.781539', 49),
(65, '2022-12-03 00:00:00.000000', '2022-12-01 14:30:31.782580', '2022-12-01 14:30:31.782608', 49),
(66, '2022-12-05 00:00:00.000000', '2022-12-01 14:30:31.784734', '2022-12-01 14:30:31.784780', 49),
(67, '2022-12-01 00:00:00.000000', '2022-12-01 14:30:31.785925', '2022-12-01 14:30:31.785954', 49),
(68, '2022-12-04 00:00:00.000000', '2022-12-01 14:30:31.795214', '2022-12-01 14:30:31.795245', 49),
(69, '2022-12-06 00:00:00.000000', '2022-12-01 14:30:31.796457', '2022-12-01 14:30:31.796490', 49),
(70, '2022-12-07 00:00:00.000000', '2022-12-01 14:30:31.801657', '2022-12-01 14:30:31.801687', 49),
(71, '2022-12-07 00:00:00.000000', '2022-12-01 14:34:39.752544', '2022-12-01 14:34:39.752591', 49),
(72, '2022-12-08 00:00:00.000000', '2022-12-01 14:34:39.756148', '2022-12-01 14:34:39.756197', 49),
(73, '2022-12-10 00:00:00.000000', '2022-12-01 14:34:39.757963', '2022-12-01 14:34:39.757998', 49),
(74, '2022-12-11 00:00:00.000000', '2022-12-01 14:34:39.764489', '2022-12-01 14:34:39.764519', 49),
(75, '2022-12-09 00:00:00.000000', '2022-12-01 14:34:39.765629', '2022-12-01 14:34:39.765660', 49),
(76, '2022-12-13 00:00:00.000000', '2022-12-01 14:34:39.771561', '2022-12-01 14:34:39.771593', 49),
(77, '2022-12-12 00:00:00.000000', '2022-12-01 14:34:39.774360', '2022-12-01 14:34:39.774406', 49),
(78, '2022-12-06 00:00:00.000000', '2022-12-06 00:45:44.166096', '2022-12-06 00:45:44.166127', 56),
(79, '2022-12-07 00:00:00.000000', '2022-12-06 00:45:44.168341', '2022-12-06 00:45:44.168375', 56),
(80, '2022-12-08 00:00:00.000000', '2022-12-06 00:45:44.173553', '2022-12-06 00:45:44.173588', 56),
(81, '2022-12-09 00:00:00.000000', '2022-12-06 00:45:44.178175', '2022-12-06 00:45:44.178211', 56),
(82, '2022-12-10 00:00:00.000000', '2022-12-06 00:45:44.183866', '2022-12-06 00:45:44.183914', 56),
(83, '2022-12-11 00:00:00.000000', '2022-12-06 00:45:44.296434', '2022-12-06 00:45:44.296477', 56),
(84, '2022-12-12 00:00:00.000000', '2022-12-06 00:45:44.297848', '2022-12-06 00:45:44.297880', 56),
(85, '2022-12-16 00:00:00.000000', '2022-12-07 12:06:27.651957', '2022-12-07 12:06:27.651996', 49),
(86, '2022-12-18 00:00:00.000000', '2022-12-07 12:06:27.653843', '2022-12-07 12:06:27.653890', 49),
(87, '2022-12-13 00:00:00.000000', '2022-12-07 12:06:27.661306', '2022-12-07 12:06:27.661345', 49),
(88, '2022-12-14 00:00:00.000000', '2022-12-07 12:06:27.663287', '2022-12-07 12:06:27.663343', 49),
(89, '2022-12-19 00:00:00.000000', '2022-12-07 12:06:27.667343', '2022-12-07 12:06:27.667392', 49),
(90, '2022-12-15 00:00:00.000000', '2022-12-07 12:06:27.670917', '2022-12-07 12:06:27.670955', 49),
(91, '2022-12-17 00:00:00.000000', '2022-12-07 12:06:27.683938', '2022-12-07 12:06:27.683975', 49),
(92, '2023-01-25 00:00:00.000000', '2023-01-25 11:53:58.913680', '2023-01-25 11:53:58.913716', 49),
(93, '2023-01-26 00:00:00.000000', '2023-01-25 11:53:58.918703', '2023-01-25 11:53:58.918739', 49),
(94, '2023-01-27 00:00:00.000000', '2023-01-25 11:53:58.931485', '2023-01-25 11:53:58.931528', 49),
(95, '2023-01-29 00:00:00.000000', '2023-01-25 11:53:58.977070', '2023-01-25 11:53:58.977104', 49),
(96, '2023-01-28 00:00:00.000000', '2023-01-25 11:53:58.994554', '2023-01-25 11:53:58.994594', 49),
(97, '2023-01-30 00:00:00.000000', '2023-01-25 11:53:59.117576', '2023-01-25 11:53:59.117614', 49),
(98, '2023-01-31 00:00:00.000000', '2023-01-25 11:53:59.119640', '2023-01-25 11:53:59.119674', 49),
(99, '2023-01-31 00:00:00.000000', '2023-01-25 12:07:58.256328', '2023-01-25 12:07:58.256369', 49),
(100, '2023-02-02 00:00:00.000000', '2023-01-25 12:07:58.258889', '2023-01-25 12:07:58.258934', 49),
(101, '2023-02-01 00:00:00.000000', '2023-01-25 12:07:58.262193', '2023-01-25 12:07:58.262223', 49),
(102, '2023-02-03 00:00:00.000000', '2023-01-25 12:07:58.295956', '2023-01-25 12:07:58.295978', 49),
(103, '2023-02-04 00:00:00.000000', '2023-01-25 12:07:58.311520', '2023-01-25 12:07:58.311551', 49),
(104, '2023-02-05 00:00:00.000000', '2023-01-25 12:07:58.314676', '2023-01-25 12:07:58.314707', 49),
(105, '2023-02-06 00:00:00.000000', '2023-01-25 12:07:58.383674', '2023-01-25 12:07:58.383704', 49);

-- --------------------------------------------------------

--
-- Table structure for table `base_riwayatrekomendasirencanadiet`
--

CREATE TABLE `base_riwayatrekomendasirencanadiet` (
  `id` bigint(20) NOT NULL,
  `berat_badan` double DEFAULT NULL,
  `tinggi_badan` double DEFAULT NULL,
  `usia` int(11) DEFAULT NULL,
  `gender` varchar(2) NOT NULL,
  `imt` double DEFAULT NULL,
  `keseluruhan_energi` double DEFAULT NULL,
  `butuh_protein` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`butuh_protein`)),
  `butuh_karbo` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`butuh_karbo`)),
  `butuh_lemak` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`butuh_lemak`)),
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `base_riwayatrekomendasirencanadiet`
--

INSERT INTO `base_riwayatrekomendasirencanadiet` (`id`, `berat_badan`, `tinggi_badan`, `usia`, `gender`, `imt`, `keseluruhan_energi`, `butuh_protein`, `butuh_karbo`, `butuh_lemak`, `created_at`, `updated_at`, `user_id`) VALUES
(55, 90, 159, 20, 'LA', 35.59985760056959, 2730.7, '{\"protein_15\": 102.40124999999999, \"protein_20\": 136.535}', '{\"karbo_55\": 375.47125, \"karbo_65\": 443.73875}', '{\"lemak_20\": 60.68222222222222, \"lemak_25\": 75.85277777777777}', '2023-01-25 12:07:57.929536', '2023-01-25 12:07:57.929584', 49);

-- --------------------------------------------------------

--
-- Table structure for table `base_satuan`
--

CREATE TABLE `base_satuan` (
  `id` bigint(20) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `base_satuan`
--

INSERT INTO `base_satuan` (`id`, `nama`, `created_at`, `updated_at`) VALUES
(1, '0.5 cup', '2022-11-29 14:30:39.245799', '2022-11-29 14:30:39.260042'),
(2, '10-inch crepe', '2022-11-29 14:30:39.245799', '2022-11-29 14:30:39.260042'),
(3, '12\" sandwich roll', '2022-11-29 14:30:39.245799', '2022-11-29 14:30:39.260042'),
(4, '3-cm cube', '2022-11-29 14:30:39.245799', '2022-11-29 14:30:39.260042'),
(5, '6\" pancake', '2022-11-29 14:30:39.245799', '2022-11-29 14:30:39.260042'),
(6, 'apple', '2022-11-29 14:30:39.245799', '2022-11-29 14:30:39.260042'),
(7, 'bar', '2022-11-29 14:30:39.245799', '2022-11-29 14:30:39.260042'),
(8, 'biscuit', '2022-11-29 14:30:39.245799', '2022-11-29 14:30:39.260042'),
(9, 'bottle', '2022-11-29 14:30:39.245799', '2022-11-29 14:30:39.260042'),
(10, 'burrito', '2022-11-29 14:30:39.245799', '2022-11-29 14:30:39.260042'),
(11, 'cake', '2022-11-29 14:30:39.245799', '2022-11-29 14:30:39.260042'),
(12, 'calzone', '2022-11-29 14:30:39.245799', '2022-11-29 14:30:39.260042'),
(13, 'can', '2022-11-29 14:30:39.245799', '2022-11-29 14:30:39.260042'),
(14, 'can drained', '2022-11-29 14:30:39.245799', '2022-11-29 14:30:39.260042'),
(15, 'chicken breast', '2022-11-29 14:30:39.245799', '2022-11-29 14:30:39.260042'),
(16, 'chips', '2022-11-29 14:30:39.245799', '2022-11-29 14:30:39.260042'),
(17, 'cocktail', '2022-11-29 14:30:39.245799', '2022-11-29 14:30:39.260042'),
(18, 'container', '2022-11-29 14:30:39.245799', '2022-11-29 14:30:39.260042'),
(19, 'cookie', '2022-11-29 14:30:39.245799', '2022-11-29 14:30:39.260042'),
(20, 'cookies', '2022-11-29 14:30:39.245799', '2022-11-29 14:30:39.260042'),
(21, 'crackers', '2022-11-29 14:30:39.245799', '2022-11-29 14:30:39.260042'),
(22, 'croissant', '2022-11-29 14:30:39.245799', '2022-11-29 14:30:39.260042'),
(23, 'cubes', '2022-11-29 14:30:39.245799', '2022-11-29 14:30:39.260042'),
(24, 'cup', '2022-11-29 14:30:39.245799', '2022-11-29 14:30:39.260042'),
(25, 'cup (drained)', '2022-11-29 14:30:39.245799', '2022-11-29 14:30:39.260042'),
(26, 'cup dry', '2022-11-29 14:30:39.245799', '2022-11-29 14:30:39.260042'),
(27, 'cup mix', '2022-11-29 14:30:39.245799', '2022-11-29 14:30:39.260042'),
(28, 'cup uncooked', '2022-11-29 14:30:39.245799', '2022-11-29 14:30:39.260042'),
(29, 'cup, uncooked', '2022-11-29 14:30:39.245799', '2022-11-29 14:30:39.260042'),
(30, 'cupcakes', '2022-11-29 14:30:39.245799', '2022-11-29 14:30:39.260042'),
(31, 'cups', '2022-11-29 14:30:39.245799', '2022-11-29 14:30:39.260042'),
(32, 'drink', '2022-11-29 14:30:39.245799', '2022-11-29 14:30:39.260042'),
(33, 'each', '2022-11-29 14:30:39.245799', '2022-11-29 14:30:39.260042'),
(34, 'enchilada', '2022-11-29 14:30:39.245799', '2022-11-29 14:30:39.260042'),
(35, 'fillet', '2022-11-29 14:30:39.245799', '2022-11-29 14:30:39.260042'),
(36, 'fl oz', '2022-11-29 14:30:39.245799', '2022-11-29 14:30:39.260042'),
(37, 'fritter', '2022-11-29 14:30:39.245799', '2022-11-29 14:30:39.260042'),
(38, 'full cracker sheets', '2022-11-29 14:30:39.245799', '2022-11-29 14:30:39.260042'),
(39, 'grams', '2022-11-29 14:30:39.245799', '2022-11-29 14:30:39.260042'),
(40, 'grande', '2022-11-29 14:30:39.245799', '2022-11-29 14:30:39.260042'),
(41, 'hamburger bun', '2022-11-29 14:30:39.245799', '2022-11-29 14:30:39.260042'),
(42, 'jar', '2022-11-29 14:30:39.245799', '2022-11-29 14:30:39.260042'),
(43, 'large muffin', '2022-11-29 14:30:39.245799', '2022-11-29 14:30:39.260042'),
(44, 'latte', '2022-11-29 14:30:39.245799', '2022-11-29 14:30:39.260042'),
(45, 'link', '2022-11-29 14:30:39.245799', '2022-11-29 14:30:39.260042'),
(46, 'links', '2022-11-29 14:30:39.245799', '2022-11-29 14:30:39.260042'),
(47, 'meal', '2022-11-29 14:30:39.245799', '2022-11-29 14:30:39.260042'),
(48, 'medium muffin', '2022-11-29 14:30:39.245799', '2022-11-29 14:30:39.260042'),
(49, 'ml', '2022-11-29 14:30:39.245799', '2022-11-29 14:30:39.260042'),
(50, 'muffin', '2022-11-29 14:30:39.245799', '2022-11-29 14:30:39.260042'),
(51, 'null', '2022-11-29 14:30:39.245799', '2022-11-29 14:30:39.260042'),
(52, 'omelet', '2022-11-29 14:30:39.245799', '2022-11-29 14:30:39.260042'),
(53, 'order', '2022-11-29 14:30:39.245799', '2022-11-29 14:30:39.260042'),
(54, 'ounce', '2022-11-29 14:30:39.245799', '2022-11-29 14:30:39.260042'),
(55, 'oz', '2022-11-29 14:30:39.245799', '2022-11-29 14:30:39.260042'),
(56, 'oz dry', '2022-11-29 14:30:39.245799', '2022-11-29 14:30:39.260042'),
(57, 'oz fl', '2022-11-29 14:30:39.245799', '2022-11-29 14:30:39.260042'),
(58, 'package', '2022-11-29 14:30:39.245799', '2022-11-29 14:30:39.260042'),
(59, 'patty', '2022-11-29 14:30:39.245799', '2022-11-29 14:30:39.260042'),
(60, 'pie', '2022-11-29 14:30:39.245799', '2022-11-29 14:30:39.260042'),
(61, 'piece', '2022-11-29 14:30:39.245799', '2022-11-29 14:30:39.260042'),
(62, 'pizza', '2022-11-29 14:30:39.245799', '2022-11-29 14:30:39.260042'),
(63, 'pot', '2022-11-29 14:30:39.245799', '2022-11-29 14:30:39.260042'),
(64, 'pouch', '2022-11-29 14:30:39.245799', '2022-11-29 14:30:39.260042'),
(65, 'Qty', '2022-11-29 14:30:39.245799', '2022-11-29 14:30:39.260042'),
(66, 'ramekin', '2022-11-29 14:30:39.245799', '2022-11-29 14:30:39.260042'),
(67, 'roll', '2022-11-29 14:30:39.245799', '2022-11-29 14:30:39.260042'),
(68, 'salad (about 3 cups)', '2022-11-29 14:30:39.245799', '2022-11-29 14:30:39.260042'),
(69, 'salad in tortilla bowl', '2022-11-29 14:30:39.245799', '2022-11-29 14:30:39.260042'),
(70, 'sandwich', '2022-11-29 14:30:39.245799', '2022-11-29 14:30:39.260042'),
(71, 'serving', '2022-11-29 14:30:39.245799', '2022-11-29 14:30:39.260042'),
(72, 'serving (about 2 cups)', '2022-11-29 14:30:39.245799', '2022-11-29 14:30:39.260042'),
(73, 'serving 1/2 cup', '2022-11-29 14:30:39.245799', '2022-11-29 14:30:39.260042'),
(74, 'servings', '2022-11-29 14:30:39.245799', '2022-11-29 14:30:39.260042'),
(75, 'slice', '2022-11-29 14:30:39.245799', '2022-11-29 14:30:39.260042'),
(76, 'slice (1.5 oz)', '2022-11-29 14:30:39.245799', '2022-11-29 14:30:39.260042'),
(77, 'slice without syrup', '2022-11-29 14:30:39.245799', '2022-11-29 14:30:39.260042'),
(78, 'slices', '2022-11-29 14:30:39.245799', '2022-11-29 14:30:39.260042'),
(79, 'slider', '2022-11-29 14:30:39.245799', '2022-11-29 14:30:39.260042'),
(80, 'small', '2022-11-29 14:30:39.245799', '2022-11-29 14:30:39.260042'),
(81, 'small egg with cheese', '2022-11-29 14:30:39.245799', '2022-11-29 14:30:39.260042'),
(82, 'small scone', '2022-11-29 14:30:39.245799', '2022-11-29 14:30:39.260042'),
(83, 'small slice', '2022-11-29 14:30:39.245799', '2022-11-29 14:30:39.260042'),
(84, 'stroopwafel', '2022-11-29 14:30:39.245799', '2022-11-29 14:30:39.260042'),
(85, 'sub', '2022-11-29 14:30:39.245799', '2022-11-29 14:30:39.260042'),
(86, 'tall', '2022-11-29 14:30:39.245799', '2022-11-29 14:30:39.260042'),
(87, 'tbsp', '2022-11-29 14:30:39.245799', '2022-11-29 14:30:39.260042'),
(88, 'venti', '2022-11-29 14:30:39.245799', '2022-11-29 14:30:39.260042'),
(89, 'whole quesadilla', '2022-11-29 14:30:39.245799', '2022-11-29 14:30:39.260042'),
(90, 'wonton', '2022-11-29 14:30:39.245799', '2022-11-29 14:30:39.260042'),
(91, 'wrappers', '2022-11-29 14:30:39.245799', '2022-11-29 14:30:39.260042');

-- --------------------------------------------------------

--
-- Table structure for table `base_tingkataktivitas`
--

CREATE TABLE `base_tingkataktivitas` (
  `id` bigint(20) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `gender` varchar(2) NOT NULL,
  `nilai` double NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `base_tingkataktivitas`
--

INSERT INTO `base_tingkataktivitas` (`id`, `nama`, `gender`, `nilai`, `created_at`, `updated_at`) VALUES
(4, 'Sangat Ringan', 'PE', 1.3, '2022-09-12 11:22:43.928859', '2022-09-12 11:25:53.717532'),
(5, 'Sangat Ringan', 'LA', 1.3, '2022-09-12 11:26:06.550780', '2022-09-12 11:26:06.550851'),
(6, 'Ringan', 'PE', 1.55, '2022-09-12 11:26:24.536642', '2022-09-12 11:26:24.536732'),
(7, 'Ringan', 'LA', 1.65, '2022-09-12 11:26:39.019116', '2022-09-12 12:21:03.644104'),
(8, 'Sedang', 'LA', 1.76, '2022-09-12 11:27:05.918295', '2022-09-12 11:27:05.918375'),
(9, 'Sedang', 'PE', 1.7, '2022-09-12 11:27:34.826125', '2022-09-12 11:27:34.826186'),
(10, 'Berat', 'LA', 2.1, '2022-09-12 11:27:52.327076', '2022-09-12 12:20:32.739389'),
(11, 'Berat', 'PE', 2, '2022-09-12 11:28:02.849710', '2022-09-12 11:28:02.849809');

-- --------------------------------------------------------

--
-- Table structure for table `base_userprofile`
--

CREATE TABLE `base_userprofile` (
  `id` bigint(20) NOT NULL,
  `avatar` varchar(100) DEFAULT NULL,
  `berat_badan` double DEFAULT NULL,
  `tinggi_badan` double DEFAULT NULL,
  `usia` int(11) DEFAULT NULL,
  `gender` varchar(2) NOT NULL,
  `imt` double DEFAULT NULL,
  `keseluruhan_energi` double DEFAULT NULL,
  `butuh_protein` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`butuh_protein`)),
  `butuh_karbo` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`butuh_karbo`)),
  `butuh_lemak` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`butuh_lemak`)),
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `tingkat_aktivitas_id` bigint(20) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `base_userprofile`
--

INSERT INTO `base_userprofile` (`id`, `avatar`, `berat_badan`, `tinggi_badan`, `usia`, `gender`, `imt`, `keseluruhan_energi`, `butuh_protein`, `butuh_karbo`, `butuh_lemak`, `created_at`, `updated_at`, `tingkat_aktivitas_id`, `user_id`) VALUES
(12, NULL, 90, 159, 20, 'LA', 35.59985760056959, 2730.7, '{\"protein_15\": 102.40124999999999, \"protein_20\": 136.535}', '{\"karbo_55\": 375.47125, \"karbo_65\": 443.73875}', '{\"lemak_20\": 60.68222222222222, \"lemak_25\": 75.85277777777777}', '2022-11-21 11:10:58.177975', '2023-01-25 11:49:44.272989', 7, 49);

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2022-08-17 00:53:05.258000', '3', 'TingkatAktivitas object (3)', 1, '[{\"added\": {}}]', 8, 1),
(2, '2022-09-05 11:49:03.355835', '18', 'User object (18)', 3, '', 7, 1),
(3, '2022-09-05 11:49:03.360049', '17', 'User object (17)', 3, '', 7, 1),
(4, '2022-09-05 11:49:03.362841', '16', 'User object (16)', 3, '', 7, 1),
(5, '2022-09-05 11:49:03.366221', '15', 'User object (15)', 3, '', 7, 1),
(6, '2022-09-05 11:49:03.368697', '14', 'User object (14)', 3, '', 7, 1),
(7, '2022-09-05 11:49:03.371383', '13', 'User object (13)', 3, '', 7, 1),
(8, '2022-09-05 11:49:03.374484', '12', 'User object (12)', 3, '', 7, 1),
(9, '2022-09-05 11:49:03.376934', '11', 'User object (11)', 3, '', 7, 1),
(10, '2022-09-05 11:49:03.378712', '10', 'User object (10)', 3, '', 7, 1),
(11, '2022-09-05 11:49:03.381104', '9', 'User object (9)', 3, '', 7, 1),
(12, '2022-09-05 11:49:03.383186', '8', 'User object (8)', 3, '', 7, 1),
(13, '2022-09-05 11:49:03.385273', '7', 'User object (7)', 3, '', 7, 1),
(14, '2022-09-05 11:49:03.389050', '6', 'User object (6)', 3, '', 7, 1),
(15, '2022-09-05 11:49:03.392698', '5', 'User object (5)', 3, '', 7, 1),
(16, '2022-09-05 11:49:03.395246', '4', 'User object (4)', 3, '', 7, 1),
(17, '2022-09-05 12:07:26.392285', '3', 'User object (3)', 3, '', 7, 1),
(18, '2022-09-05 12:07:26.395279', '1', 'User object (1)', 3, '', 7, 1),
(19, '2022-09-06 11:17:31.572961', '2', 'admin', 3, '', 4, 1),
(20, '2022-09-06 11:17:52.119972', '6', 'goga', 3, '', 4, 1),
(21, '2022-09-06 11:17:52.123135', '8', 'gogo', 3, '', 4, 1),
(22, '2022-09-06 11:17:52.124761', '9', 'ikan', 3, '', 4, 1),
(23, '2022-09-06 11:17:52.128214', '10', 'korg', 3, '', 4, 1),
(24, '2022-09-06 11:17:52.130145', '7', 'lali', 3, '', 4, 1),
(25, '2022-09-06 12:06:08.718376', '11', 'admin', 2, '[{\"changed\": {\"fields\": [\"Email address\"]}}]', 4, 11),
(26, '2022-09-06 12:18:45.589312', '12', 'levi', 1, '[{\"added\": {}}]', 4, 11),
(27, '2022-09-06 12:19:33.547717', '13', 'gru', 1, '[{\"added\": {}}]', 4, 11),
(28, '2022-09-06 12:19:50.114961', '14', 'kompar', 1, '[{\"added\": {}}]', 4, 11),
(29, '2022-09-08 10:55:21.473144', '1', 'RiwayatRekomendasiRencanaDiet object (1)', 1, '[{\"added\": {}}]', 19, 11),
(30, '2022-09-08 10:55:37.323536', '2', 'RiwayatRekomendasiRencanaDiet object (2)', 1, '[{\"added\": {}}]', 19, 11),
(31, '2022-09-09 13:07:29.693265', '1', 'MakananFoto object (1)', 1, '[{\"added\": {}}]', 13, 11),
(32, '2022-09-09 13:08:16.801525', '1', 'MakananFoto object (1)', 3, '', 13, 11),
(33, '2022-09-09 13:36:00.172981', '1617', 'Makanan object (1617)', 3, '', 12, 11),
(34, '2022-09-09 13:38:55.291326', '1618', 'Makanan object (1618)', 3, '', 12, 11),
(35, '2022-09-09 15:04:13.566816', '1620', 'Makanan object (1620)', 3, '', 12, 11),
(36, '2022-09-09 15:04:13.569464', '1619', 'Makanan object (1619)', 3, '', 12, 11),
(37, '2022-09-09 15:54:56.278798', '10', 'MakananFoto object (10)', 1, '[{\"added\": {}}]', 13, 11),
(38, '2022-09-10 01:41:02.655419', '3', 'RiwayatRekomendasiRencanaDiet object (3)', 1, '[{\"added\": {}}]', 19, 11),
(39, '2022-09-10 01:41:21.038370', '4', 'RiwayatRekomendasiRencanaDiet object (4)', 1, '[{\"added\": {}}]', 19, 11),
(40, '2022-09-10 02:33:09.924244', '1630', 'Makanan object (1630)', 3, '', 12, 11),
(41, '2022-09-10 02:33:09.927158', '1629', 'Makanan object (1629)', 3, '', 12, 11),
(42, '2022-09-10 02:33:09.929514', '1628', 'Makanan object (1628)', 3, '', 12, 11),
(43, '2022-09-10 02:33:09.930894', '1627', 'Makanan object (1627)', 3, '', 12, 11),
(44, '2022-09-10 02:33:09.935358', '1626', 'Makanan object (1626)', 3, '', 12, 11),
(45, '2022-09-10 02:33:09.937836', '1625', 'Makanan object (1625)', 3, '', 12, 11),
(46, '2022-09-10 02:33:09.939904', '1624', 'Makanan object (1624)', 3, '', 12, 11),
(47, '2022-09-10 02:33:09.942167', '1623', 'Makanan object (1623)', 3, '', 12, 11),
(48, '2022-09-10 02:33:52.711999', '1622', 'Makanan object (1622)', 3, '', 12, 11),
(49, '2022-09-10 02:33:52.714858', '1621', 'Makanan object (1621)', 3, '', 12, 11),
(50, '2022-09-10 02:40:21.493567', '10', 'MakananFoto object (10)', 3, '', 13, 11),
(51, '2022-09-10 02:40:38.423621', '23', 'MakananFoto object (23)', 3, '', 13, 11),
(52, '2022-09-10 02:40:59.132726', '1631', 'Makanan object (1631)', 3, '', 12, 11),
(53, '2022-09-10 03:30:10.470466', '1633', 'Makanan object (1633)', 3, '', 12, 11),
(54, '2022-09-10 03:30:10.472517', '1632', 'Makanan object (1632)', 3, '', 12, 11),
(55, '2022-09-10 03:35:32.636187', '1634', 'Makanan object (1634)', 3, '', 12, 11),
(56, '2022-09-12 10:51:43.395074', '5', 'RiwayatRekomendasiRencanaDiet object (5)', 1, '[{\"added\": {}}]', 19, 11),
(57, '2022-09-12 11:21:23.430768', '3', 'TingkatAktivitas object (3)', 3, '', 8, 11),
(58, '2022-09-12 11:21:29.557757', '2', 'TingkatAktivitas object (2)', 3, '', 8, 11),
(59, '2022-09-12 11:21:29.560474', '1', 'TingkatAktivitas object (1)', 3, '', 8, 11),
(60, '2022-09-12 11:22:43.930718', '4', 'TingkatAktivitas object (4)', 1, '[{\"added\": {}}]', 8, 11),
(61, '2022-09-12 11:25:53.719974', '4', 'TingkatAktivitas object (4)', 2, '[{\"changed\": {\"fields\": [\"Nilai\"]}}]', 8, 11),
(62, '2022-09-12 11:26:06.552702', '5', 'TingkatAktivitas object (5)', 1, '[{\"added\": {}}]', 8, 11),
(63, '2022-09-12 11:26:24.538248', '6', 'TingkatAktivitas object (6)', 1, '[{\"added\": {}}]', 8, 11),
(64, '2022-09-12 11:26:39.020948', '7', 'TingkatAktivitas object (7)', 1, '[{\"added\": {}}]', 8, 11),
(65, '2022-09-12 11:27:05.919913', '8', 'TingkatAktivitas object (8)', 1, '[{\"added\": {}}]', 8, 11),
(66, '2022-09-12 11:27:34.828365', '9', 'TingkatAktivitas object (9)', 1, '[{\"added\": {}}]', 8, 11),
(67, '2022-09-12 11:27:52.328452', '10', 'TingkatAktivitas object (10)', 1, '[{\"added\": {}}]', 8, 11),
(68, '2022-09-12 11:28:02.851528', '11', 'TingkatAktivitas object (11)', 1, '[{\"added\": {}}]', 8, 11),
(69, '2022-10-03 11:32:45.877895', '1', 'PreferensiMakanan object (1)', 1, '[{\"added\": {}}]', 15, 11),
(70, '2022-10-03 11:32:57.767497', '2', 'PreferensiMakanan object (2)', 1, '[{\"added\": {}}]', 15, 11),
(71, '2022-10-03 11:33:09.536873', '3', 'PreferensiMakanan object (3)', 1, '[{\"added\": {}}]', 15, 11),
(72, '2022-10-03 11:33:22.010655', '4', 'PreferensiMakanan object (4)', 1, '[{\"added\": {}}]', 15, 11),
(73, '2022-10-03 11:34:12.964810', '5', 'PreferensiMakanan object (5)', 1, '[{\"added\": {}}]', 15, 11),
(74, '2022-10-03 13:15:39.785110', '1', 'RekomendasiRencanaDiet object (1)', 1, '[{\"added\": {}}]', 17, 11),
(75, '2022-10-03 13:15:46.491135', '2', 'RekomendasiRencanaDiet object (2)', 1, '[{\"added\": {}}]', 17, 11),
(76, '2022-10-03 13:15:52.609681', '3', 'RekomendasiRencanaDiet object (3)', 1, '[{\"added\": {}}]', 17, 11),
(77, '2022-10-03 13:15:59.600641', '4', 'RekomendasiRencanaDiet object (4)', 1, '[{\"added\": {}}]', 17, 11),
(78, '2022-10-03 13:45:39.624066', '1', 'RekomendasiMakananDiet object (1)', 1, '[{\"added\": {}}]', 18, 11),
(79, '2022-10-03 13:45:52.859525', '2', 'RekomendasiMakananDiet object (2)', 1, '[{\"added\": {}}]', 18, 11),
(80, '2022-10-03 13:52:30.699594', '3', 'RekomendasiMakananDiet object (3)', 1, '[{\"added\": {}}]', 18, 11),
(81, '2022-10-03 13:52:47.516896', '4', 'RekomendasiMakananDiet object (4)', 1, '[{\"added\": {}}]', 18, 11),
(82, '2022-10-05 11:28:01.216288', '25', 'RiwayatRekomendasiRencanaDiet object (25)', 3, '', 19, 11),
(83, '2022-10-05 11:31:43.467423', '27', 'RiwayatRekomendasiRencanaDiet object (27)', 3, '', 19, 11),
(84, '2022-10-05 11:31:43.469590', '26', 'RiwayatRekomendasiRencanaDiet object (26)', 3, '', 19, 11),
(85, '2022-10-05 11:35:14.542582', '28', 'RiwayatRekomendasiRencanaDiet object (28)', 3, '', 19, 11),
(86, '2022-10-05 11:38:44.578203', '30', 'RiwayatRekomendasiRencanaDiet object (30)', 3, '', 19, 11),
(87, '2022-10-05 11:38:44.580436', '29', 'RiwayatRekomendasiRencanaDiet object (29)', 3, '', 19, 11),
(88, '2022-10-05 11:39:42.101051', '31', 'RiwayatRekomendasiRencanaDiet object (31)', 3, '', 19, 11),
(89, '2022-10-05 11:41:42.497755', '33', 'RiwayatRekomendasiRencanaDiet object (33)', 3, '', 19, 11),
(90, '2022-10-05 11:41:42.500190', '32', 'RiwayatRekomendasiRencanaDiet object (32)', 3, '', 19, 11),
(91, '2022-10-05 12:13:03.679472', '1', 'RencanaDiet object (1)', 1, '[{\"added\": {}}]', 9, 11),
(92, '2022-10-05 12:15:02.957219', '2', 'RencanaDiet object (2)', 1, '[{\"added\": {}}]', 9, 11),
(93, '2022-10-05 12:24:05.402360', '1', 'MakananDiet object (1)', 1, '[{\"added\": {}}]', 16, 11),
(94, '2022-10-05 12:27:42.221537', '2', 'MakananDiet object (2)', 1, '[{\"added\": {}}]', 16, 11),
(95, '2022-10-05 12:30:49.452444', '1', 'Minum object (1)', 1, '[{\"added\": {}}]', 11, 11),
(96, '2022-10-05 12:31:08.167160', '2', 'Minum object (2)', 1, '[{\"added\": {}}]', 11, 11),
(97, '2022-10-05 12:31:21.767561', '1', 'Olahraga object (1)', 1, '[{\"added\": {}}]', 10, 11),
(98, '2022-10-05 12:31:29.386958', '2', 'Olahraga object (2)', 1, '[{\"added\": {}}]', 10, 11),
(99, '2022-10-05 13:44:25.618634', '8', 'RencanaDiet object (8)', 3, '', 9, 11),
(100, '2022-10-05 13:44:25.623474', '7', 'RencanaDiet object (7)', 3, '', 9, 11),
(101, '2022-10-05 13:44:25.626312', '6', 'RencanaDiet object (6)', 3, '', 9, 11),
(102, '2022-10-06 10:01:33.335960', '37', 'RiwayatRekomendasiRencanaDiet object (37)', 3, '', 19, 11),
(103, '2022-10-06 10:01:33.339866', '36', 'RiwayatRekomendasiRencanaDiet object (36)', 3, '', 19, 11),
(104, '2022-10-06 10:01:33.342578', '35', 'RiwayatRekomendasiRencanaDiet object (35)', 3, '', 19, 11),
(105, '2022-10-06 10:01:33.345056', '34', 'RiwayatRekomendasiRencanaDiet object (34)', 3, '', 19, 11),
(106, '2022-10-06 10:01:41.116662', '38', 'RiwayatRekomendasiRencanaDiet object (38)', 3, '', 19, 11),
(107, '2022-10-06 10:02:50.802459', '11', 'RencanaDiet object (11)', 3, '', 9, 11),
(108, '2022-10-06 10:02:50.805303', '10', 'RencanaDiet object (10)', 3, '', 9, 11),
(109, '2022-10-06 10:02:50.807134', '9', 'RencanaDiet object (9)', 3, '', 9, 11),
(110, '2022-10-06 10:02:50.809456', '4', 'RencanaDiet object (4)', 3, '', 9, 11),
(111, '2022-10-06 10:02:50.811067', '2', 'RencanaDiet object (2)', 3, '', 9, 11),
(112, '2022-10-06 10:02:50.813267', '1', 'RencanaDiet object (1)', 3, '', 9, 11),
(113, '2022-10-10 11:40:00.761460', '1', 'alif', 2, '[{\"changed\": {\"fields\": [\"Email address\"]}}]', 4, 11),
(114, '2022-11-14 11:40:32.705979', '77', 'RekomendasiRencanaDiet object (77)', 1, '[{\"added\": {}}]', 17, 11),
(115, '2022-11-14 11:53:09.825464', '235', 'RekomendasiMakananDiet object (235)', 1, '[{\"added\": {}}]', 18, 11),
(116, '2022-11-28 17:52:11.828981', '46', 'RiwayatRekomendasiRencanaDiet object (46)', 3, '', 19, 11),
(117, '2022-11-28 17:52:11.833814', '45', 'RiwayatRekomendasiRencanaDiet object (45)', 3, '', 19, 11),
(118, '2022-11-28 17:52:11.836984', '44', 'RiwayatRekomendasiRencanaDiet object (44)', 3, '', 19, 11),
(119, '2022-11-28 17:52:11.839949', '43', 'RiwayatRekomendasiRencanaDiet object (43)', 3, '', 19, 11),
(120, '2022-11-28 17:52:11.841918', '42', 'RiwayatRekomendasiRencanaDiet object (42)', 3, '', 19, 11),
(121, '2022-11-28 17:52:11.844852', '41', 'RiwayatRekomendasiRencanaDiet object (41)', 3, '', 19, 11),
(122, '2022-11-28 17:52:11.847987', '40', 'RiwayatRekomendasiRencanaDiet object (40)', 3, '', 19, 11),
(123, '2022-11-28 17:52:11.850400', '10', 'RiwayatRekomendasiRencanaDiet object (10)', 3, '', 19, 11),
(124, '2022-11-28 17:52:36.302222', '42', 'RencanaDiet object (42)', 3, '', 9, 11),
(125, '2022-11-28 17:52:36.305200', '41', 'RencanaDiet object (41)', 3, '', 9, 11),
(126, '2022-11-28 17:52:36.307563', '40', 'RencanaDiet object (40)', 3, '', 9, 11),
(127, '2022-11-28 17:52:36.310183', '39', 'RencanaDiet object (39)', 3, '', 9, 11),
(128, '2022-11-28 17:52:36.313008', '38', 'RencanaDiet object (38)', 3, '', 9, 11),
(129, '2022-11-28 17:52:36.316219', '37', 'RencanaDiet object (37)', 3, '', 9, 11),
(130, '2022-11-28 17:52:36.318959', '36', 'RencanaDiet object (36)', 3, '', 9, 11),
(131, '2022-11-28 17:52:36.321098', '35', 'RencanaDiet object (35)', 3, '', 9, 11),
(132, '2022-11-28 17:52:36.323226', '34', 'RencanaDiet object (34)', 3, '', 9, 11),
(133, '2022-11-28 17:52:36.324860', '33', 'RencanaDiet object (33)', 3, '', 9, 11),
(134, '2022-11-28 17:52:36.327331', '32', 'RencanaDiet object (32)', 3, '', 9, 11),
(135, '2022-11-28 17:52:36.329675', '31', 'RencanaDiet object (31)', 3, '', 9, 11),
(136, '2022-11-28 17:52:36.332387', '30', 'RencanaDiet object (30)', 3, '', 9, 11),
(137, '2022-11-28 17:52:36.334863', '29', 'RencanaDiet object (29)', 3, '', 9, 11),
(138, '2022-11-28 17:52:36.336348', '28', 'RencanaDiet object (28)', 3, '', 9, 11),
(139, '2022-11-28 17:52:36.337793', '27', 'RencanaDiet object (27)', 3, '', 9, 11),
(140, '2022-11-28 17:52:36.340005', '26', 'RencanaDiet object (26)', 3, '', 9, 11),
(141, '2022-11-28 17:52:36.342542', '25', 'RencanaDiet object (25)', 3, '', 9, 11),
(142, '2022-11-28 17:52:36.344665', '24', 'RencanaDiet object (24)', 3, '', 9, 11),
(143, '2022-11-28 17:52:36.347376', '23', 'RencanaDiet object (23)', 3, '', 9, 11),
(144, '2022-11-28 17:52:36.349558', '22', 'RencanaDiet object (22)', 3, '', 9, 11),
(145, '2022-11-28 17:52:36.351785', '20', 'RencanaDiet object (20)', 3, '', 9, 11),
(146, '2022-11-28 17:52:36.353342', '19', 'RencanaDiet object (19)', 3, '', 9, 11),
(147, '2022-11-28 17:52:36.355465', '18', 'RencanaDiet object (18)', 3, '', 9, 11),
(148, '2022-11-28 17:52:36.357170', '17', 'RencanaDiet object (17)', 3, '', 9, 11),
(149, '2022-11-28 17:52:36.359546', '16', 'RencanaDiet object (16)', 3, '', 9, 11),
(150, '2022-11-28 17:52:36.361603', '15', 'RencanaDiet object (15)', 3, '', 9, 11),
(151, '2022-11-28 17:52:36.364228', '14', 'RencanaDiet object (14)', 3, '', 9, 11),
(152, '2022-11-28 17:52:36.366537', '13', 'RencanaDiet object (13)', 3, '', 9, 11),
(153, '2022-11-28 17:52:36.368185', '12', 'RencanaDiet object (12)', 3, '', 9, 11),
(154, '2022-12-01 14:26:08.661887', '63', 'RencanaDiet object (63)', 3, '', 9, 11),
(155, '2022-12-01 14:26:08.664161', '62', 'RencanaDiet object (62)', 3, '', 9, 11),
(156, '2022-12-01 14:26:08.665400', '61', 'RencanaDiet object (61)', 3, '', 9, 11),
(157, '2022-12-01 14:26:08.666543', '60', 'RencanaDiet object (60)', 3, '', 9, 11),
(158, '2022-12-01 14:26:08.668114', '59', 'RencanaDiet object (59)', 3, '', 9, 11),
(159, '2022-12-01 14:26:08.669166', '58', 'RencanaDiet object (58)', 3, '', 9, 11),
(160, '2022-12-01 14:26:08.670267', '57', 'RencanaDiet object (57)', 3, '', 9, 11),
(161, '2022-12-01 14:27:44.790051', '56', 'RencanaDiet object (56)', 3, '', 9, 11),
(162, '2022-12-01 14:27:44.792996', '55', 'RencanaDiet object (55)', 3, '', 9, 11),
(163, '2022-12-01 14:27:44.794275', '54', 'RencanaDiet object (54)', 3, '', 9, 11),
(164, '2022-12-01 14:27:44.796300', '53', 'RencanaDiet object (53)', 3, '', 9, 11),
(165, '2022-12-01 14:27:44.798214', '52', 'RencanaDiet object (52)', 3, '', 9, 11),
(166, '2022-12-01 14:27:44.800520', '51', 'RencanaDiet object (51)', 3, '', 9, 11),
(167, '2022-12-01 14:27:44.802145', '50', 'RencanaDiet object (50)', 3, '', 9, 11),
(168, '2022-12-01 14:27:44.804542', '49', 'RencanaDiet object (49)', 3, '', 9, 11),
(169, '2022-12-01 14:27:44.806435', '48', 'RencanaDiet object (48)', 3, '', 9, 11),
(170, '2022-12-01 14:27:44.808407', '47', 'RencanaDiet object (47)', 3, '', 9, 11),
(171, '2022-12-01 14:27:44.809904', '46', 'RencanaDiet object (46)', 3, '', 9, 11),
(172, '2022-12-01 14:27:44.812003', '45', 'RencanaDiet object (45)', 3, '', 9, 11),
(173, '2022-12-01 14:27:44.814162', '44', 'RencanaDiet object (44)', 3, '', 9, 11),
(174, '2022-12-01 14:27:44.817222', '43', 'RencanaDiet object (43)', 3, '', 9, 11),
(175, '2023-01-25 11:15:16.230446', '53', 'RiwayatRekomendasiRencanaDiet object (53)', 3, '', 19, 11),
(176, '2023-01-25 11:15:16.235451', '52', 'RiwayatRekomendasiRencanaDiet object (52)', 3, '', 19, 11),
(177, '2023-01-25 11:15:16.237716', '51', 'RiwayatRekomendasiRencanaDiet object (51)', 3, '', 19, 11),
(178, '2023-01-25 11:15:16.240407', '50', 'RiwayatRekomendasiRencanaDiet object (50)', 3, '', 19, 11),
(179, '2023-01-25 11:15:16.242716', '49', 'RiwayatRekomendasiRencanaDiet object (49)', 3, '', 19, 11),
(180, '2023-01-25 11:15:16.244657', '48', 'RiwayatRekomendasiRencanaDiet object (48)', 3, '', 19, 11),
(181, '2023-01-25 11:15:16.247197', '47', 'RiwayatRekomendasiRencanaDiet object (47)', 3, '', 19, 11);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(14, 'base', 'bahanmakanan'),
(12, 'base', 'makanan'),
(16, 'base', 'makanandiet'),
(13, 'base', 'makananfoto'),
(11, 'base', 'minum'),
(10, 'base', 'olahraga'),
(15, 'base', 'preferensimakanan'),
(18, 'base', 'rekomendasimakanandiet'),
(17, 'base', 'rekomendasirencanadiet'),
(9, 'base', 'rencanadiet'),
(19, 'base', 'riwayatrekomendasirencanadiet'),
(20, 'base', 'satuan'),
(8, 'base', 'tingkataktivitas'),
(7, 'base', 'user'),
(21, 'base', 'userprofile'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(22, 'token_blacklist', 'blacklistedtoken'),
(23, 'token_blacklist', 'outstandingtoken');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-08-14 04:58:21.158723'),
(2, 'auth', '0001_initial', '2022-08-14 04:58:21.406888'),
(3, 'admin', '0001_initial', '2022-08-14 04:58:21.474787'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-08-14 04:58:21.488877'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-08-14 04:58:21.507326'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-08-14 04:58:21.547309'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-08-14 04:58:21.582752'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-08-14 04:58:21.598050'),
(9, 'auth', '0004_alter_user_username_opts', '2022-08-14 04:58:21.608308'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-08-14 04:58:21.632319'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-08-14 04:58:21.636370'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-08-14 04:58:21.653464'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-08-14 04:58:21.674703'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-08-14 04:58:21.694006'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-08-14 04:58:21.714027'),
(16, 'auth', '0011_update_proxy_permissions', '2022-08-14 04:58:21.728328'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-08-14 04:58:21.742550'),
(18, 'base', '0001_initial', '2022-08-14 04:58:21.755780'),
(19, 'sessions', '0001_initial', '2022-08-14 04:58:21.780039'),
(20, 'base', '0002_tingkataktivitas_rename_role_user_gender_and_more', '2022-08-14 05:14:02.295912'),
(21, 'base', '0003_alter_user_tingkat_aktivitas', '2022-08-14 05:31:42.072072'),
(22, 'base', '0004_user_avatar_user_berat_badan_user_butuh_karbo_and_more', '2022-08-15 01:14:47.005806'),
(24, 'base', '0005_rencanadiet_olahraga_minum', '2022-08-15 01:32:50.998845'),
(25, 'base', '0006_makanan_rename_name_tingkataktivitas_nama_and_more', '2022-08-15 01:50:47.163627'),
(26, 'base', '0007_bahanmakanan_created_at_bahanmakanan_updated_at', '2022-08-15 01:57:22.998637'),
(27, 'base', '0008_preferensimakanan', '2022-08-15 01:57:23.084831'),
(28, 'base', '0009_makanandiet', '2022-08-15 02:02:05.502668'),
(30, 'base', '0010_riwayatrekomendasirencanadiet_rekomendasirencanadiet_and_more', '2022-08-15 02:11:02.989842'),
(31, 'base', '0011_user_is_admin', '2022-08-17 00:43:43.939612'),
(32, 'base', '0012_satuan_makanan_berat_porsi_makanan_sumber_and_more', '2022-08-24 02:49:19.777260'),
(33, 'base', '0013_alter_satuan_nama', '2022-08-24 02:54:24.869987'),
(34, 'base', '0014_makanan_kelompok', '2022-08-24 03:26:20.617237'),
(35, 'base', '0015_alter_makanan_nama', '2022-08-24 03:31:15.147442'),
(36, 'base', '0016_alter_makanan_sumber', '2022-08-24 03:41:35.418719'),
(37, 'base', '0017_alter_bahanmakanan_berat_alter_makanan_berat_porsi_and_more', '2022-08-25 01:05:18.273359'),
(38, 'base', '0018_userprofile_alter_preferensimakanan_user_and_more', '2022-09-05 13:17:57.345754'),
(39, 'base', '0019_remove_makananfoto_path_makananfoto_foto', '2022-09-09 13:06:53.643101'),
(40, 'base', '0020_alter_tingkataktivitas_nilai', '2022-09-12 11:25:33.318595'),
(42, 'base', '0021_alter_riwayatrekomendasirencanadiet_butuh_karbo_and_more', '2022-10-04 13:17:41.593118'),
(43, 'base', '0022_alter_olahraga_rencana_diet', '2022-10-05 12:42:03.835693'),
(44, 'base', '0023_alter_minum_rencana_diet', '2022-10-05 12:43:30.309222'),
(45, 'token_blacklist', '0001_initial', '2022-10-14 12:25:24.306281'),
(46, 'token_blacklist', '0002_outstandingtoken_jti_hex', '2022-10-14 12:25:24.333191'),
(47, 'token_blacklist', '0003_auto_20171017_2007', '2022-10-14 12:25:24.368689'),
(48, 'token_blacklist', '0004_auto_20171017_2013', '2022-10-14 12:25:24.412085'),
(49, 'token_blacklist', '0005_remove_outstandingtoken_jti', '2022-10-14 12:25:24.442233'),
(50, 'token_blacklist', '0006_auto_20171017_2113', '2022-10-14 12:25:24.467545'),
(51, 'token_blacklist', '0007_auto_20171017_2214', '2022-10-14 12:25:24.755324'),
(52, 'token_blacklist', '0008_migrate_to_bigautofield', '2022-10-14 12:25:24.924915'),
(53, 'token_blacklist', '0010_fix_migrate_to_bigautofield', '2022-10-14 12:25:24.965188'),
(54, 'token_blacklist', '0011_linearizes_history', '2022-10-14 12:25:24.968783'),
(55, 'token_blacklist', '0012_alter_outstandingtoken_user', '2022-10-14 12:25:24.998604'),
(56, 'base', '0024_alter_rencanadiet_tanggal', '2022-11-28 16:07:44.988340'),
(57, 'base', '0025_makanandiet_created_at_makanandiet_updated_at', '2022-11-29 14:23:32.441777'),
(58, 'base', '0026_satuan_created_at_satuan_updated_at', '2022-11-29 14:30:39.267060');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('0fwq10tizhbcqlobuezfvg8p9ryhnqk2', '.eJxVjEEOwiAQRe_C2pCh0HZw6d4zkJkySNVAUtqV8e7apAvd_vfef6lA25rD1mQJc1RnZYw6_Y5M00PKTuKdyq3qqZZ1mVnvij5o09ca5Xk53L-DTC1_a2Ds0TubIjoAAoFOuGPkEYA9G4zeINtBZIyWBuwZ3NRZZrIeUjLq_QH2rDfu:1pKd2M:Ly6zqN1_mShutoDK5cH-h2VNKl7dMtQKnmosMerWt-c', '2023-02-08 10:29:50.409781'),
('7uvj77x77i5t9kkq8kjccyey8m161o0l', '.eJxVjEEOwiAQRe_C2pCh0HZw6d4zkJkySNVAUtqV8e7apAvd_vfef6lA25rD1mQJc1RnZYw6_Y5M00PKTuKdyq3qqZZ1mVnvij5o09ca5Xk53L-DTC1_a2Ds0TubIjoAAoFOuGPkEYA9G4zeINtBZIyWBuwZ3NRZZrIeUjLq_QH2rDfu:1oVwBF:2DV7ECP70rnG7UzibKqP-QKXxxyQ4YPXWuG3WUD_6Sg', '2022-09-21 14:37:29.729888'),
('86k94kcy7kuzivd5yweidx7tdzuszsni', '.eJxVjEEOwiAQRe_C2pCh0HZw6d4zkJkySNVAUtqV8e7apAvd_vfef6lA25rD1mQJc1RnZYw6_Y5M00PKTuKdyq3qqZZ1mVnvij5o09ca5Xk53L-DTC1_a2Ds0TubIjoAAoFOuGPkEYA9G4zeINtBZIyWBuwZ3NRZZrIeUjLq_QH2rDfu:1pAurq:Y228Pvu8aEQxQqpdg1eFkRBnjkG2wOjYfIImR3OP6H4', '2023-01-12 15:30:50.855937'),
('bze1iz98h2xx7i3n57q05au8efq2ff6e', '.eJxVjEEOwiAQRe_C2pCh0HZw6d4zkJkySNVAUtqV8e7apAvd_vfef6lA25rD1mQJc1RnZYw6_Y5M00PKTuKdyq3qqZZ1mVnvij5o09ca5Xk53L-DTC1_a2Ds0TubIjoAAoFOuGPkEYA9G4zeINtBZIyWBuwZ3NRZZrIeUjLq_QH2rDfu:1ojJya:nKV7fTUdd3rZ3ssn_2hO1PJz2d9TrbZJRK0KWSIZm-M', '2022-10-28 12:39:44.597738'),
('d3lqbsjbhqxu2wf87g6i7ntac98dftgz', '.eJxVjEEOwiAQRe_C2pCh0HZw6d4zkJkySNVAUtqV8e7apAvd_vfef6lA25rD1mQJc1RnZYw6_Y5M00PKTuKdyq3qqZZ1mVnvij5o09ca5Xk53L-DTC1_a2Ds0TubIjoAAoFOuGPkEYA9G4zeINtBZIyWBuwZ3NRZZrIeUjLq_QH2rDfu:1p2R8n:u_4Aba3jOenveO549svA63Ad4r3S8V91QivWdpzDMuY', '2022-12-20 06:09:17.394122'),
('dcqsoh93pu97fvipwqx7i5tgb78ggn7l', '.eJxVjEEOwiAQRe_C2pCh0HZw6d4zkJkySNVAUtqV8e7apAvd_vfef6lA25rD1mQJc1RnZYw6_Y5M00PKTuKdyq3qqZZ1mVnvij5o09ca5Xk53L-DTC1_a2Ds0TubIjoAAoFOuGPkEYA9G4zeINtBZIyWBuwZ3NRZZrIeUjLq_QH2rDfu:1p54Ki:HQZTwLgXQ9ntf2S3UCvj2DyNDVdpjkC97RJxopqBN7g', '2022-12-27 12:24:28.764603'),
('eflqjr8xrx16rq0ladj46m6tsq0241lz', '.eJxVjEEOwiAQRe_C2pCh0HZw6d4zkJkySNVAUtqV8e7apAvd_vfef6lA25rD1mQJc1RnZYw6_Y5M00PKTuKdyq3qqZZ1mVnvij5o09ca5Xk53L-DTC1_a2Ds0TubIjoAAoFOuGPkEYA9G4zeINtBZIyWBuwZ3NRZZrIeUjLq_QH2rDfu:1oskqe:1AnA87xPmG0Un_liTfli293Nu5TtH3ENwDD5bJOncNo', '2022-11-23 13:10:32.303449'),
('ftpaj17iohul6eoak0ig9j77tenu0s9w', '.eJxVjMsOwiAQRf-FtSE8Smdw6d5vIAMDUjU0Ke3K-O_apAvd3nPOfYlA21rD1vMSJhZnocXpd4uUHrntgO_UbrNMc1uXKcpdkQft8jpzfl4O9--gUq_f2hlwxmtnHUXCZLQBPSr0SmeDGYjTUNKooDAQWmW9AbaAOpYSi8VBvD-zWzcY:1oNDXe:HTrk_UXpPWtNKfoc9026aBfMZOOksOkpq2UapHSQvDc', '2022-08-28 13:20:34.140912'),
('hyu82zjjpuc5lcckrvbj7nk49fke0257', '.eJxVjEEOwiAQRe_C2pCh0HZw6d4zkJkySNVAUtqV8e7apAvd_vfef6lA25rD1mQJc1RnZYw6_Y5M00PKTuKdyq3qqZZ1mVnvij5o09ca5Xk53L-DTC1_a2Ds0TubIjoAAoFOuGPkEYA9G4zeINtBZIyWBuwZ3NRZZrIeUjLq_QH2rDfu:1pKdi1:RLuG0Ly4HqU1gD1oAXv624So8mRTNTRnJWQn5cpPT6U', '2023-02-08 11:12:53.280364'),
('keysx6invq143v26aht8qz5uqcs8ckub', '.eJxVjEEOwiAQRe_C2pCh0HZw6d4zkJkySNVAUtqV8e7apAvd_vfef6lA25rD1mQJc1RnZYw6_Y5M00PKTuKdyq3qqZZ1mVnvij5o09ca5Xk53L-DTC1_a2Ds0TubIjoAAoFOuGPkEYA9G4zeINtBZIyWBuwZ3NRZZrIeUjLq_QH2rDfu:1oppyD:Tu8ivfIX-rZ7T-QKXsWnxG__6yxZnolp-MiXJpmCKp0', '2022-11-15 12:02:17.501758'),
('r1g0bzmuotk1gl5c699cecbckh21zpcj', '.eJxVjEEOwiAQRe_C2pCh0HZw6d4zkJkySNVAUtqV8e7apAvd_vfef6lA25rD1mQJc1RnZYw6_Y5M00PKTuKdyq3qqZZ1mVnvij5o09ca5Xk53L-DTC1_a2Ds0TubIjoAAoFOuGPkEYA9G4zeINtBZIyWBuwZ3NRZZrIeUjLq_QH2rDfu:1oWF9g:vXDCy8jNQA5a5KD60u08f-vv9Q3ZX8ps0en7SDFgi8Y', '2022-09-22 10:53:08.936013');

-- --------------------------------------------------------

--
-- Table structure for table `token_blacklist_blacklistedtoken`
--

CREATE TABLE `token_blacklist_blacklistedtoken` (
  `id` bigint(20) NOT NULL,
  `blacklisted_at` datetime(6) NOT NULL,
  `token_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `token_blacklist_blacklistedtoken`
--

INSERT INTO `token_blacklist_blacklistedtoken` (`id`, `blacklisted_at`, `token_id`) VALUES
(1, '2022-10-14 12:27:34.373327', 1);

-- --------------------------------------------------------

--
-- Table structure for table `token_blacklist_outstandingtoken`
--

CREATE TABLE `token_blacklist_outstandingtoken` (
  `id` bigint(20) NOT NULL,
  `token` longtext NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `expires_at` datetime(6) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `jti` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `token_blacklist_outstandingtoken`
--

INSERT INTO `token_blacklist_outstandingtoken` (`id`, `token`, `created_at`, `expires_at`, `user_id`, `jti`) VALUES
(1, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2NTgzNTkxMCwiaWF0IjoxNjY1NzQ5NTEwLCJqdGkiOiJlYzViZmNjYzVmNmQ0OTljODYxNTg2MDVmMWI3MzMwOCIsInVzZXJfaWQiOjF9.xXo6VLN9PAdOyhURn7T1B2rZrGqgNHeLB2cVEHgtVEc', NULL, '2022-10-15 12:11:50.000000', NULL, 'ec5bfccc5f6d499c86158605f1b73308'),
(2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2ODQyOTM4NCwiaWF0IjoxNjY1NzUwOTg0LCJqdGkiOiI4MDY3ZWVmZDU4N2U0YzgzYWVhNWVmNzJkNmZjZmVjNiIsInVzZXJfaWQiOjF9.WGhC5B_87zLWJuxGg69JEj11aPR5ZoTYEqgmzGAu1k8', '2022-10-14 12:36:24.794176', '2022-11-14 12:36:24.000000', 1, '8067eefd587e4c83aea5ef72d6fcfec6'),
(3, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2ODQzMDk3MCwiaWF0IjoxNjY1NzUyNTcwLCJqdGkiOiJmNzk1ZGI2MjVjNjM0M2I2OWM3YTcxYTc4ODlhZDRjZSIsInVzZXJfaWQiOjQ4fQ.dPBW0w_LqBfR9P0TiqU6ltKtuJvu33luG9nLPR9W0hM', '2022-10-14 13:02:50.777151', '2022-11-14 13:02:50.000000', 48, 'f795db625c6343b69c7a71a7889ad4ce'),
(4, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY2ODQzMTA1MywiaWF0IjoxNjY1NzUyNjUzLCJqdGkiOiI3ZDJkY2I4YzA0ZDg0ODY0OTI1Y2Y1MmFhZDhlNjVjYyIsInVzZXJfaWQiOjQ5fQ.Hll85IAAM52n06XHVNa_DFGG4XvazTnaZlctVUIPrjE', '2022-10-14 13:04:13.431935', '2022-11-14 13:04:13.000000', 49, '7d2dcb8c04d84864925cf52aad8e65cc'),
(5, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MDU5MzAzNywiaWF0IjoxNjY3OTE0NjM3LCJqdGkiOiJmYWU1ZTkwY2NhMmE0NTMwOWY2NzMxZWM4NDc4ZTE1YyIsInVzZXJfaWQiOjQ5fQ.90oHjAl757VnWJMzx1tgNAPEExO1soOtd8ha_CrwOOQ', '2022-11-08 13:37:17.671163', '2022-12-09 13:37:17.000000', 49, 'fae5e90cca2a45309f6731ec8478e15c'),
(6, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MDU5MzExOSwiaWF0IjoxNjY3OTE0NzE5LCJqdGkiOiI0Mzg0MjgwMWQwMmU0ZDY4Yjc4NzMwNGRhNDc1MzY5NiIsInVzZXJfaWQiOjQ5fQ.tLLCqBHdqr6nC3w3_foTTKo9WN0LijLe-KRkVdMWgbo', '2022-11-08 13:38:39.953444', '2022-12-09 13:38:39.000000', 49, '43842801d02e4d68b787304da4753696'),
(7, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MDU5ODkyMCwiaWF0IjoxNjY3OTIwNTIwLCJqdGkiOiIxZDY4ODVmNjI2NDc0YjhmODc5YTQyMTAzMTExOGFmOSIsInVzZXJfaWQiOjQ5fQ.6DB4NUQGkTqTVTwGK0t4WzN5JN2jZL6qacBuC5b7h7c', '2022-11-08 15:15:20.653525', '2022-12-09 15:15:20.000000', 49, '1d6885f626474b8f879a421031118af9'),
(8, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MDY3MTIyOCwiaWF0IjoxNjY3OTkyODI4LCJqdGkiOiJhZjQzNDAzNjRiNmI0M2JmYWRlMTc3YmRhOGQzYjk0NiIsInVzZXJfaWQiOjQ5fQ.eRCrYEhvr_BIl24jMNIaJ9y-qqPX3uZqCTkTSfPaz68', '2022-11-09 11:20:28.773977', '2022-12-10 11:20:28.000000', 49, 'af4340364b6b43bfade177bda8d3b946'),
(9, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MDY3MTI5NSwiaWF0IjoxNjY3OTkyODk1LCJqdGkiOiIwNjI4NzU1OGJkNGU0ZjQxOTE0NjEyM2RhOTIxZjNlOCIsInVzZXJfaWQiOjQ5fQ.ZxlCtd_inqPZCdHMQXcFpxQHgTkjgvcg-Fy1FnH8uyQ', '2022-11-09 11:21:35.352013', '2022-12-10 11:21:35.000000', 49, '06287558bd4e4f419146123da921f3e8'),
(10, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MDY3MzA0NywiaWF0IjoxNjY3OTk0NjQ3LCJqdGkiOiIxNmUxOTEwOTJiMjA0N2Y4YmY2OTBkYmQyMTg3MWU1NiIsInVzZXJfaWQiOjQ5fQ.1slw2FXP7QfJ3z-sqSuJK-n3ZqDcougLMZDzfrnkXSE', '2022-11-09 11:50:47.771727', '2022-12-10 11:50:47.000000', 49, '16e191092b2047f8bf690dbd21871e56'),
(11, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MDY3NzU4NSwiaWF0IjoxNjY3OTk5MTg1LCJqdGkiOiI0NDFmYTk3ZDk5Nzg0NTMzYmI1MzNiZjAyOWE0MzE3ZCIsInVzZXJfaWQiOjU1fQ.MwEgyNhN9WsQ9mXQV_yt9cGSGta3J7TAWOSfIXL8-X4', '2022-11-09 13:06:25.878475', '2022-12-10 13:06:25.000000', NULL, '441fa97d99784533bb533bf029a4317d'),
(12, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MDc3MTM3MiwiaWF0IjoxNjY4MDkyOTcyLCJqdGkiOiJkYmU5MzA2NDg2YmI0MGFkYTcyOTExMGQ4NGYyZDJhZSIsInVzZXJfaWQiOjQ5fQ.9mprOdOsoOUBxVY86slxmXbsHmz9u3Z5pYtASaaTwVQ', '2022-11-10 15:09:32.798841', '2022-12-11 15:09:32.000000', 49, 'dbe9306486bb40ada729110d84f2d2ae'),
(13, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MTE4OTUwMCwiaWF0IjoxNjY4NTExMTAwLCJqdGkiOiJmN2NmNzZjZDRlNjk0OGQ3Yjg4NGNmZWRlZGI2Y2E2NyIsInVzZXJfaWQiOjQ5fQ.CyGfUhRUGP7jddfabyODqfECfMiYtSFvGARW8HFeBnk', '2022-11-15 11:18:20.823456', '2022-12-16 11:18:20.000000', 49, 'f7cf76cd4e6948d7b884cfededb6ca67'),
(14, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MTIwMDcwNCwiaWF0IjoxNjY4NTIyMzA0LCJqdGkiOiIzOWRlOGNhOGJjYmQ0Zjg1OWMwYmRjNmEwNjNkMThkNyIsInVzZXJfaWQiOjQ5fQ.cRsJdqdGcRsR7sqsWLDBNiqRE3yfVBZMRy-LhUKQHRY', '2022-11-15 14:25:04.575341', '2022-12-16 14:25:04.000000', 49, '39de8ca8bcbd4f859c0bdc6a063d18d7'),
(15, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MTIwMDc0OCwiaWF0IjoxNjY4NTIyMzQ4LCJqdGkiOiI1NTcyZDRjOTY2ZmQ0YzBlYmFhNmEwOGZiOWVlM2E0NyIsInVzZXJfaWQiOjQ5fQ.MRIOsMih-6n9cRZ-OI9KpTNTGqUITMk3wBnkxXB4ZIk', '2022-11-15 14:25:48.509037', '2022-12-16 14:25:48.000000', 49, '5572d4c966fd4c0ebaa6a08fb9ee3a47'),
(16, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MTIwMDc3OCwiaWF0IjoxNjY4NTIyMzc4LCJqdGkiOiI5OTA4MTA0YTgxMzg0YTM1YjU2NmNkMTU5NDEzZjQ4YyIsInVzZXJfaWQiOjQ5fQ.nn3k2Ki1KhZFZq1KpPsAK-QYcAMCe8gUOs0w41f3_x0', '2022-11-15 14:26:18.653868', '2022-12-16 14:26:18.000000', 49, '9908104a81384a35b566cd159413f48c'),
(17, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MTIwNDYxMiwiaWF0IjoxNjY4NTI2MjEyLCJqdGkiOiIyMTZmNDgyZDdmMzI0MTk2OTNhODA1NzYwMTUxMzBhMCIsInVzZXJfaWQiOjQ5fQ.0hQJa0qG5Wp8IDD12esP22jR7QrlKpZxqG5BdWNI9ig', '2022-11-15 15:30:12.636526', '2022-12-16 15:30:12.000000', 49, '216f482d7f32419693a80576015130a0'),
(18, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MTIwNDcxOCwiaWF0IjoxNjY4NTI2MzE4LCJqdGkiOiIxYjg5ZTMwMTg2ZDQ0YzNkYmZmNjExOTcwYjFhZDQ2MSIsInVzZXJfaWQiOjQ5fQ.hQnZg6vLNpZOeJlln-vhW7aetQ0hZDJQDBMgdOruivY', '2022-11-15 15:31:58.965541', '2022-12-16 15:31:58.000000', 49, '1b89e30186d44c3dbff611970b1ad461'),
(19, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MTIwNDc0NCwiaWF0IjoxNjY4NTI2MzQ0LCJqdGkiOiI5NWJlNTI3OGZkMzI0NmQ3ODBkOGFlODc3N2M3MWRmNCIsInVzZXJfaWQiOjQ5fQ.rceoLbW4H4PJmcRU6tWwL22BGs97KgJDcqtEg-7LKnY', '2022-11-15 15:32:24.522147', '2022-12-16 15:32:24.000000', 49, '95be5278fd3246d780d8ae8777c71df4'),
(20, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MTIwNDg1NywiaWF0IjoxNjY4NTI2NDU3LCJqdGkiOiIyYmRjZTY2MDkwMWQ0ZWM0ODMxY2M1NGYzNTE2MjJlNyIsInVzZXJfaWQiOjQ5fQ.NhREagKc8oT_WyQyYJZGu7_o9I09xztoAgQKKBdR00s', '2022-11-15 15:34:17.948718', '2022-12-16 15:34:17.000000', 49, '2bdce660901d4ec4831cc54f351622e7'),
(21, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MTI3NDI5NiwiaWF0IjoxNjY4NTk1ODk2LCJqdGkiOiI0MDJkMTFlNThiZGU0NTVlODQ0MDk0ZWZhNmNkODMzNyIsInVzZXJfaWQiOjQ5fQ.cXWjdqS1EJCbDAmLL_n35YKKVXYL_fo5pQMnbZFa5Pw', '2022-11-16 10:51:36.997883', '2022-12-17 10:51:36.000000', 49, '402d11e58bde455e844094efa6cd8337'),
(22, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MTM2MjUzNCwiaWF0IjoxNjY4Njg0MTM0LCJqdGkiOiJlNzVhYmJlNjcwZTY0NjQ5YTMxOTM3YTQ4ZmY3ODAxZCIsInVzZXJfaWQiOjQ5fQ.HXOLPwSVoRD_KUynqM6H5JniSsdpizbqYixbS8_CIkI', '2022-11-17 11:22:14.060893', '2022-12-18 11:22:14.000000', 49, 'e75abbe670e64649a31937a48ff7801d'),
(23, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MTUzNDIyNiwiaWF0IjoxNjY4ODU1ODI2LCJqdGkiOiJhNjIzN2MxYzFiMmU0MWY2YTYwZjdlOGRkZGE5MmU1MiIsInVzZXJfaWQiOjQ5fQ.o8P4h-4su5zoZ86PeVap4RoiNALBGsTwwYGyAHO8U-U', '2022-11-19 11:03:46.619193', '2022-12-20 11:03:46.000000', 49, 'a6237c1c1b2e41f6a60f7e8ddda92e52'),
(24, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MTYwMDc4NiwiaWF0IjoxNjY4OTIyMzg2LCJqdGkiOiJlYTliZmFmZmFkYTA0YmIyOTAyZWZhOGQwNzIxNDM3OCIsInVzZXJfaWQiOjQ5fQ.Y9MkwllLTMTEJXs2KSBBKaIvXYjJOu_swWZGvtlHFbw', '2022-11-20 05:33:06.253888', '2022-12-21 05:33:06.000000', 49, 'ea9bfaffada04bb2902efa8d07214378'),
(25, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MTcwNjk2MSwiaWF0IjoxNjY5MDI4NTYxLCJqdGkiOiI0ZWY5OTAzNzY0OGU0MTUyYTNmMDU0ZjczMTVhZjY3MyIsInVzZXJfaWQiOjQ5fQ.kTJvfhgHNZiW5sVx5mPtsYixcVxD72Tm6yb4EXcWFzE', '2022-11-21 11:02:41.720953', '2022-12-22 11:02:41.000000', 49, '4ef99037648e4152a3f054f7315af673'),
(26, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MTgwODYyMSwiaWF0IjoxNjY5MTMwMjIxLCJqdGkiOiI2MjQ4ZTg4ZGFiOTA0NzI2YTBkNjU0ZWU0NGFjNzhmOSIsInVzZXJfaWQiOjQ5fQ.T9jNPtjptaKc0Sdc_8jOrsXTr3lVla2B6UmCddXYDpg', '2022-11-22 15:17:01.924819', '2022-12-23 15:17:01.000000', 49, '6248e88dab904726a0d654ee44ac78f9'),
(27, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MTg5NTg4NCwiaWF0IjoxNjY5MjE3NDg0LCJqdGkiOiI1NmEyMWVjZjU0Nzc0NDU3OGRlM2Y0N2RmNDY1ODVhZiIsInVzZXJfaWQiOjQ5fQ.sLK01ueM1JW9nI-3aNn6Fz1O54gk4WpFNQ6faMiIGSI', '2022-11-23 15:31:24.724624', '2022-12-24 15:31:24.000000', 49, '56a21ecf547744578de3f47df46585af'),
(28, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MjEzNTcxMCwiaWF0IjoxNjY5NDU3MzEwLCJqdGkiOiI5NGQ5NGExYjEyMjM0OWI1YjdlYzFkNjEyMTFkOGRkYiIsInVzZXJfaWQiOjQ5fQ.I6vn1QKaaTNKn3_yuDCelKXRV7Pr3sorcnvTGM_LxmI', '2022-11-26 10:08:30.708084', '2022-12-27 10:08:30.000000', 49, '94d94a1b122349b5b7ec1d61211d8ddb'),
(29, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MjE4OTQyNCwiaWF0IjoxNjY5NTExMDI0LCJqdGkiOiJkYWU0YjAwOTZjZWY0YjE0YjZlYjRiYTE2MGVkM2I0MSIsInVzZXJfaWQiOjQ5fQ.8iUvFx6K5fNcmQRXQPr55jbB4P18AYW_yaxygp53XTM', '2022-11-27 01:03:44.417732', '2022-12-28 01:03:44.000000', 49, 'dae4b0096cef4b14b6eb4ba160ed3b41'),
(30, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MjMxMjcwOCwiaWF0IjoxNjY5NjM0MzA4LCJqdGkiOiIzZDY2NzdmNGUzMDU0YjU1YjNkMDBhNDJiMzBjNTNlMiIsInVzZXJfaWQiOjQ5fQ.y2hglWlU2FP9QrIlEozhm5eM8AJvVZaxMcXjD4d2cGY', '2022-11-28 11:18:28.762783', '2022-12-29 11:18:28.000000', 49, '3d6677f4e3054b55b3d00a42b30c53e2'),
(31, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MjMyODcyOSwiaWF0IjoxNjY5NjUwMzI5LCJqdGkiOiJkMWYxM2Y4ZDhkMTI0OGFmOTJmZjYwMDI0Mjc1MzIzNCIsInVzZXJfaWQiOjQ5fQ.4qJqk_gp5TK2piyaKdQVvYgG40kkCmpOKqc2-0eWX5I', '2022-11-28 15:45:29.658355', '2022-12-29 15:45:29.000000', 49, 'd1f13f8d8d1248af92ff600242753234'),
(32, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MjM5MTYyOSwiaWF0IjoxNjY5NzEzMjI5LCJqdGkiOiJmMDdhOTBlNjViY2Y0YTU4OTI1NTMxOTQ0MTBhMzVkNCIsInVzZXJfaWQiOjQ5fQ.Sz7KUeQuje-cPR1IWeBLfI9sTmqcV8nnf0BJO5UQ7xI', '2022-11-29 09:13:49.250278', '2022-12-30 09:13:49.000000', 49, 'f07a90e65bcf4a5892553194410a35d4'),
(33, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MjQ3NzY1NCwiaWF0IjoxNjY5Nzk5MjU0LCJqdGkiOiI1NjNjNTRmNTIwYTg0YmE5OTNiNzc0MTI3MDUzNWQ0ZiIsInVzZXJfaWQiOjQ5fQ.cOQ39DZDdCydXs5j7Nd2h2qbBnefMj21nn_A_rJkVfQ', '2022-11-30 09:07:34.400393', '2022-12-31 09:07:34.000000', 49, '563c54f520a84ba993b7741270535d4f'),
(34, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MjU2ODc1NSwiaWF0IjoxNjY5ODkwMzU1LCJqdGkiOiI0MWVmMWYyMzVjYWM0ZjA5ODNmN2ViNDc1YmIxNGM1OSIsInVzZXJfaWQiOjQ5fQ.flCPBiwa4ezrokt1onRXbkJnd6NWobuaqrDcsw0101k', '2022-12-01 10:25:55.654804', '2023-01-01 10:25:55.000000', 49, '41ef1f235cac4f0983f7eb475bb14c59'),
(35, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MjU3ODcyNCwiaWF0IjoxNjY5OTAwMzI0LCJqdGkiOiIyYzc0NzAxZWQwNzU0OTgwOWEwY2ZjN2QzNTJmZTk5ZSIsInVzZXJfaWQiOjQ5fQ.Sjgpae94DWgf1Zj5Uq5ThhkqgxFs2D8knu_3KGYAT6k', '2022-12-01 13:12:04.436843', '2023-01-01 13:12:04.000000', 49, '2c74701ed07549809a0cfc7d352fe99e'),
(36, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MjU4Mzk4NSwiaWF0IjoxNjY5OTA1NTg1LCJqdGkiOiI5OTFlMjkyMzExMWM0YmQyOGI0MDlmNjVkMjQ1MzRjNSIsInVzZXJfaWQiOjQ5fQ.LqD-NefGFi8_RzYdXU7skzjXHusoND_Dd0nnBrwT-sM', '2022-12-01 14:39:45.655523', '2023-01-01 14:39:45.000000', 49, '991e2923111c4bd28b409f65d24534c5'),
(37, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3Mjk2NTM5NywiaWF0IjoxNjcwMjg2OTk3LCJqdGkiOiJlMTY5M2I1NTQ3Nzg0OTk2ODg2MzE4NzhmMjFjMjEzMyIsInVzZXJfaWQiOjU2fQ.z9BFeTPX0KLqlSRqtGviJnN2fU5U6EXCM4Bh1ZbMJdw', '2022-12-06 00:36:37.307650', '2023-01-06 00:36:37.000000', 56, 'e1693b554778499688631878f21c2133'),
(38, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3Mjk2NjA5MiwiaWF0IjoxNjcwMjg3NjkyLCJqdGkiOiJmOTU2ZTVmYmM2NWM0YjYwODdjYmI2YTE5ZTE4YjU1MyIsInVzZXJfaWQiOjQ5fQ.iNw2nBQdycscsXqjgydN5pqzAsV_Wxzz4HQ4SVUAjkY', '2022-12-06 00:48:12.098502', '2023-01-06 00:48:12.000000', 49, 'f956e5fbc65c4b6087cbb6a19e18b553'),
(39, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3Mjk2NzE0MiwiaWF0IjoxNjcwMjg4NzQyLCJqdGkiOiIyZTdjYjc5N2M1OGI0OTc5YmRiNmM0OWM5NDg0MmMzMCIsInVzZXJfaWQiOjQ5fQ.75v4CzSe5xmeyt7Q_-WnOyBDavPhQiFfn-X33u8fOII', '2022-12-06 01:05:42.975501', '2023-01-06 01:05:42.000000', 49, '2e7cb797c58b4979bdb6c49c94842c30'),
(40, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MzA4NDc4MCwiaWF0IjoxNjcwNDA2MzgwLCJqdGkiOiIyYzUzNWVjN2U1OTU0N2U3YWE2ZGVlZGNlNjc0MWI3NyIsInVzZXJfaWQiOjQ5fQ.eJdMPBQiMk4nPsAWnnsl2Suc0JqYdeo7nyIHvlaUPyw', '2022-12-07 09:46:20.270192', '2023-01-07 09:46:20.000000', 49, '2c535ec7e59547e7aa6deedce6741b77'),
(41, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MzA4OTA1OSwiaWF0IjoxNjcwNDEwNjU5LCJqdGkiOiI4NTE3ZjIzMzkzNTA0YTBkYWZkNzkxYzM5ZDUyMzI1NiIsInVzZXJfaWQiOjQ5fQ.gCGhq0YznDjgzwB6pLJAv5U750d7ZyPbi1On_qFL4T8', '2022-12-07 10:57:39.965113', '2023-01-07 10:57:39.000000', 49, '8517f23393504a0dafd791c39d523256'),
(42, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MzI2NTY5NywiaWF0IjoxNjcwNTg3Mjk3LCJqdGkiOiJkYjdiOTc2OTNmMmI0NDBlOGY4MWMyNDYyOGJjYmQ2NyIsInVzZXJfaWQiOjQ5fQ.ubdFknJr9rRYpIbMLMC4V8GeXhFA4sVXu3hFInTkhpk', '2022-12-09 12:01:37.237201', '2023-01-09 12:01:37.000000', 49, 'db7b97693f2b440e8f81c24628bcbd67'),
(43, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3NzMyNTE2NiwiaWF0IjoxNjc0NjQ2NzY2LCJqdGkiOiI4ODBlYmRlODU2ZWU0ZGU4OThhNzNkOWQ5ZTI4ZDBhZCIsInVzZXJfaWQiOjQ5fQ.b0V2Qic0ZcVK_uS5X-avtvjAkt19EaPeBhpy0VHc9OI', '2023-01-25 11:39:26.764878', '2023-02-25 11:39:26.000000', 49, '880ebde856ee4de898a73d9d9e28d0ad'),
(44, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3NzMyNTc1MiwiaWF0IjoxNjc0NjQ3MzUyLCJqdGkiOiJiZGZmMDQ2MmI4NjA0YmVhYjgyZDM2YjkxODM3ZGY0YiIsInVzZXJfaWQiOjQ5fQ.s2ZscaqXTdYd1rCwZ2zf56Abx90IwtdzluyQ1EXKkc4', '2023-01-25 11:49:12.646484', '2023-02-25 11:49:12.000000', 49, 'bdff0462b8604beab82d36b91837df4b');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `base_bahanmakanan`
--
ALTER TABLE `base_bahanmakanan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `base_bahanmakanan_bahan_makanan_id_f29a2c2c_fk_base_makanan_id` (`bahan_makanan_id`),
  ADD KEY `base_bahanmakanan_menu_makanan_id_49d9eddd_fk_base_makanan_id` (`menu_makanan_id`),
  ADD KEY `base_bahanmakanan_satuan_id_6388335e` (`satuan_id`);

--
-- Indexes for table `base_makanan`
--
ALTER TABLE `base_makanan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `base_makanan_besar_porsi_id_e1f07be6_fk_base_satuan_id` (`besar_porsi_id`);

--
-- Indexes for table `base_makanandiet`
--
ALTER TABLE `base_makanandiet`
  ADD PRIMARY KEY (`id`),
  ADD KEY `base_makanandiet_makanan_id_a19e4b74_fk_base_makanan_id` (`makanan_id`),
  ADD KEY `base_makanandiet_rencana_diet_id_09934654_fk_base_rencanadiet_id` (`rencana_diet_id`);

--
-- Indexes for table `base_makananfoto`
--
ALTER TABLE `base_makananfoto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `base_makananfoto_makanan_id_0428b7ce_fk_base_makanan_id` (`makanan_id`);

--
-- Indexes for table `base_minum`
--
ALTER TABLE `base_minum`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `base_minum_rencana_diet_id_aa5588cc_uniq` (`rencana_diet_id`);

--
-- Indexes for table `base_olahraga`
--
ALTER TABLE `base_olahraga`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `base_olahraga_rencana_diet_id_dfcde043_uniq` (`rencana_diet_id`);

--
-- Indexes for table `base_preferensimakanan`
--
ALTER TABLE `base_preferensimakanan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `base_preferensimakanan_makanan_id_7f8d9778_fk_base_makanan_id` (`makanan_id`),
  ADD KEY `base_preferensimakanan_user_id_5d4405bc_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `base_rekomendasimakanandiet`
--
ALTER TABLE `base_rekomendasimakanandiet`
  ADD PRIMARY KEY (`id`),
  ADD KEY `base_rekomendasimaka_makanan_id_7ffc544d_fk_base_maka` (`makanan_id`),
  ADD KEY `base_rekomendasimaka_rekomendasi_rencana__8adeee17_fk_base_reko` (`rekomendasi_rencana_diet_id`);

--
-- Indexes for table `base_rekomendasirencanadiet`
--
ALTER TABLE `base_rekomendasirencanadiet`
  ADD PRIMARY KEY (`id`),
  ADD KEY `base_rekomendasirenc_riwayat_rekomendasi__e62e955b_fk_base_riwa` (`riwayat_rekomendasi_id`);

--
-- Indexes for table `base_rencanadiet`
--
ALTER TABLE `base_rencanadiet`
  ADD PRIMARY KEY (`id`),
  ADD KEY `base_rencanadiet_user_id_0c07fbb8_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `base_riwayatrekomendasirencanadiet`
--
ALTER TABLE `base_riwayatrekomendasirencanadiet`
  ADD PRIMARY KEY (`id`),
  ADD KEY `base_riwayatrekomend_user_id_90b8c89b_fk_auth_user` (`user_id`);

--
-- Indexes for table `base_satuan`
--
ALTER TABLE `base_satuan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `base_tingkataktivitas`
--
ALTER TABLE `base_tingkataktivitas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `base_userprofile`
--
ALTER TABLE `base_userprofile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD KEY `base_userprofile_tingkat_aktivitas_id_6cbd3f0c_fk_base_ting` (`tingkat_aktivitas_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `token_blacklist_blacklistedtoken`
--
ALTER TABLE `token_blacklist_blacklistedtoken`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `token_id` (`token_id`);

--
-- Indexes for table `token_blacklist_outstandingtoken`
--
ALTER TABLE `token_blacklist_outstandingtoken`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `token_blacklist_outstandingtoken_jti_hex_d9bdf6f7_uniq` (`jti`),
  ADD KEY `token_blacklist_outs_user_id_83bc629a_fk_auth_user` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `base_bahanmakanan`
--
ALTER TABLE `base_bahanmakanan`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `base_makanan`
--
ALTER TABLE `base_makanan`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1648;

--
-- AUTO_INCREMENT for table `base_makanandiet`
--
ALTER TABLE `base_makanandiet`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=435;

--
-- AUTO_INCREMENT for table `base_makananfoto`
--
ALTER TABLE `base_makananfoto`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `base_minum`
--
ALTER TABLE `base_minum`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `base_olahraga`
--
ALTER TABLE `base_olahraga`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `base_preferensimakanan`
--
ALTER TABLE `base_preferensimakanan`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `base_rekomendasimakanandiet`
--
ALTER TABLE `base_rekomendasimakanandiet`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=778;

--
-- AUTO_INCREMENT for table `base_rekomendasirencanadiet`
--
ALTER TABLE `base_rekomendasirencanadiet`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=187;

--
-- AUTO_INCREMENT for table `base_rencanadiet`
--
ALTER TABLE `base_rencanadiet`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `base_riwayatrekomendasirencanadiet`
--
ALTER TABLE `base_riwayatrekomendasirencanadiet`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `base_satuan`
--
ALTER TABLE `base_satuan`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `base_tingkataktivitas`
--
ALTER TABLE `base_tingkataktivitas`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `base_userprofile`
--
ALTER TABLE `base_userprofile`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=182;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `token_blacklist_blacklistedtoken`
--
ALTER TABLE `token_blacklist_blacklistedtoken`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `token_blacklist_outstandingtoken`
--
ALTER TABLE `token_blacklist_outstandingtoken`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `base_bahanmakanan`
--
ALTER TABLE `base_bahanmakanan`
  ADD CONSTRAINT `base_bahanmakanan_bahan_makanan_id_f29a2c2c_fk_base_makanan_id` FOREIGN KEY (`bahan_makanan_id`) REFERENCES `base_makanan` (`id`),
  ADD CONSTRAINT `base_bahanmakanan_menu_makanan_id_49d9eddd_fk_base_makanan_id` FOREIGN KEY (`menu_makanan_id`) REFERENCES `base_makanan` (`id`),
  ADD CONSTRAINT `base_bahanmakanan_satuan_id_6388335e_fk_base_satuan_id` FOREIGN KEY (`satuan_id`) REFERENCES `base_satuan` (`id`);

--
-- Constraints for table `base_makanan`
--
ALTER TABLE `base_makanan`
  ADD CONSTRAINT `base_makanan_besar_porsi_id_e1f07be6_fk_base_satuan_id` FOREIGN KEY (`besar_porsi_id`) REFERENCES `base_satuan` (`id`);

--
-- Constraints for table `base_makanandiet`
--
ALTER TABLE `base_makanandiet`
  ADD CONSTRAINT `base_makanandiet_makanan_id_a19e4b74_fk_base_makanan_id` FOREIGN KEY (`makanan_id`) REFERENCES `base_makanan` (`id`),
  ADD CONSTRAINT `base_makanandiet_rencana_diet_id_09934654_fk_base_rencanadiet_id` FOREIGN KEY (`rencana_diet_id`) REFERENCES `base_rencanadiet` (`id`);

--
-- Constraints for table `base_makananfoto`
--
ALTER TABLE `base_makananfoto`
  ADD CONSTRAINT `base_makananfoto_makanan_id_0428b7ce_fk_base_makanan_id` FOREIGN KEY (`makanan_id`) REFERENCES `base_makanan` (`id`);

--
-- Constraints for table `base_minum`
--
ALTER TABLE `base_minum`
  ADD CONSTRAINT `base_minum_rencana_diet_id_aa5588cc_fk_base_rencanadiet_id` FOREIGN KEY (`rencana_diet_id`) REFERENCES `base_rencanadiet` (`id`);

--
-- Constraints for table `base_olahraga`
--
ALTER TABLE `base_olahraga`
  ADD CONSTRAINT `base_olahraga_rencana_diet_id_dfcde043_fk_base_rencanadiet_id` FOREIGN KEY (`rencana_diet_id`) REFERENCES `base_rencanadiet` (`id`);

--
-- Constraints for table `base_preferensimakanan`
--
ALTER TABLE `base_preferensimakanan`
  ADD CONSTRAINT `base_preferensimakanan_makanan_id_7f8d9778_fk_base_makanan_id` FOREIGN KEY (`makanan_id`) REFERENCES `base_makanan` (`id`),
  ADD CONSTRAINT `base_preferensimakanan_user_id_5d4405bc_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `base_rekomendasimakanandiet`
--
ALTER TABLE `base_rekomendasimakanandiet`
  ADD CONSTRAINT `base_rekomendasimaka_makanan_id_7ffc544d_fk_base_maka` FOREIGN KEY (`makanan_id`) REFERENCES `base_makanan` (`id`),
  ADD CONSTRAINT `base_rekomendasimaka_rekomendasi_rencana__8adeee17_fk_base_reko` FOREIGN KEY (`rekomendasi_rencana_diet_id`) REFERENCES `base_rekomendasirencanadiet` (`id`);

--
-- Constraints for table `base_rekomendasirencanadiet`
--
ALTER TABLE `base_rekomendasirencanadiet`
  ADD CONSTRAINT `base_rekomendasirenc_riwayat_rekomendasi__e62e955b_fk_base_riwa` FOREIGN KEY (`riwayat_rekomendasi_id`) REFERENCES `base_riwayatrekomendasirencanadiet` (`id`);

--
-- Constraints for table `base_rencanadiet`
--
ALTER TABLE `base_rencanadiet`
  ADD CONSTRAINT `base_rencanadiet_user_id_0c07fbb8_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `base_riwayatrekomendasirencanadiet`
--
ALTER TABLE `base_riwayatrekomendasirencanadiet`
  ADD CONSTRAINT `base_riwayatrekomend_user_id_90b8c89b_fk_auth_user` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `base_userprofile`
--
ALTER TABLE `base_userprofile`
  ADD CONSTRAINT `base_userprofile_tingkat_aktivitas_id_6cbd3f0c_fk_base_ting` FOREIGN KEY (`tingkat_aktivitas_id`) REFERENCES `base_tingkataktivitas` (`id`),
  ADD CONSTRAINT `base_userprofile_user_id_f259b2d7_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `token_blacklist_blacklistedtoken`
--
ALTER TABLE `token_blacklist_blacklistedtoken`
  ADD CONSTRAINT `token_blacklist_blacklistedtoken_token_id_3cc7fe56_fk` FOREIGN KEY (`token_id`) REFERENCES `token_blacklist_outstandingtoken` (`id`);

--
-- Constraints for table `token_blacklist_outstandingtoken`
--
ALTER TABLE `token_blacklist_outstandingtoken`
  ADD CONSTRAINT `token_blacklist_outs_user_id_83bc629a_fk_auth_user` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;