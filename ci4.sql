-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 17, 2020 at 03:33 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ci4`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_activation_attempts`
--

CREATE TABLE `auth_activation_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups`
--

CREATE TABLE `auth_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups_permissions`
--

CREATE TABLE `auth_groups_permissions` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups_users`
--

CREATE TABLE `auth_groups_users` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_logins`
--

CREATE TABLE `auth_logins` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `date` datetime NOT NULL,
  `success` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_logins`
--

INSERT INTO `auth_logins` (`id`, `ip_address`, `email`, `user_id`, `date`, `success`) VALUES
(1, '::1', 'anscc209@gmail.com', 1, '2020-12-17 01:39:51', 1),
(2, '::1', 'anscc209@gmail.com', NULL, '2020-12-17 01:48:32', 0),
(3, '::1', 'anscc209@gmail.com', NULL, '2020-12-17 01:48:43', 0),
(4, '::1', 'anscc', NULL, '2020-12-17 02:32:33', 0),
(5, '::1', 'anscc209@gmail.com', NULL, '2020-12-17 02:32:53', 0),
(6, '::1', 'anscc209@gmail.com', NULL, '2020-12-17 02:33:01', 0),
(7, '::1', 'admin@blog.com', 2, '2020-12-17 02:33:59', 1),
(8, '::1', 'admin@blog.com', 2, '2020-12-17 02:37:42', 1),
(9, '::1', 'admin@blog.com', 2, '2020-12-17 02:38:18', 1),
(10, '::1', 'admin@blog.com', 2, '2020-12-17 02:46:09', 1),
(11, '::1', 'admin@blog.com', 2, '2020-12-17 02:58:16', 1),
(12, '::1', 'admin@blog.com', 2, '2020-12-17 03:10:08', 1),
(13, '::1', 'admin@blog.com', 2, '2020-12-17 03:11:33', 1),
(14, '::1', 'admin@blog.com', 2, '2020-12-17 03:18:03', 1),
(15, '::1', 'admin@blog.com', 2, '2020-12-17 03:22:23', 1),
(16, '::1', 'admin@blog.com', 2, '2020-12-17 03:25:10', 1),
(17, '::1', 'admin@blog.com', 3, '2020-12-17 03:31:09', 1),
(18, '::1', 'admin@blog.com', 3, '2020-12-17 03:35:56', 1),
(19, '::1', 'admin@blog.com', 3, '2020-12-17 04:35:12', 1),
(20, '::1', 'eka.efira@gmail.com', NULL, '2020-12-17 05:54:35', 0),
(21, '::1', 'nursalsabila209', NULL, '2020-12-17 07:31:24', 0),
(22, '::1', 'admin@blog.com', 6, '2020-12-17 07:35:49', 1),
(23, '::1', 'admin@blog.com', 6, '2020-12-17 07:37:22', 1),
(24, '::1', 'admin@blog.com', 6, '2020-12-17 08:02:21', 1);

-- --------------------------------------------------------

--
-- Table structure for table `auth_permissions`
--

CREATE TABLE `auth_permissions` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_reset_attempts`
--

CREATE TABLE `auth_reset_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_tokens`
--

CREATE TABLE `auth_tokens` (
  `id` int(11) UNSIGNED NOT NULL,
  `selector` varchar(255) NOT NULL,
  `hashedValidator` varchar(255) NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `expires` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_users_permissions`
--

CREATE TABLE `auth_users_permissions` (
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `komik`
--

CREATE TABLE `komik` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `penulis` varchar(255) NOT NULL,
  `penerbit` varchar(255) NOT NULL,
  `sampul` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `komik`
--

INSERT INTO `komik` (`id`, `judul`, `slug`, `penulis`, `penerbit`, `sampul`, `created_at`, `updated_at`) VALUES
(4, 'Doraemon', 'doraemon', 'Fujiko Fujio', 'Shogakukan', '1608213874_d46cec7c59b3e2339359.jpg', NULL, NULL),
(5, 'Naruto', 'naruto', 'Masashi Kishimoto', 'Shonen Jump', '1608213918_c857a7fdddd5b6019301.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` text NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2020-12-17-051439', 'App\\Database\\Migrations\\Orang', 'default', 'App', 1608183472, 1),
(2, '2017-11-20-223112', 'Myth\\Auth\\Database\\Migrations\\CreateAuthTables', 'default', 'Myth\\Auth', 1608189744, 2);

-- --------------------------------------------------------

--
-- Table structure for table `orang`
--

CREATE TABLE `orang` (
  `id` int(11) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orang`
--

INSERT INTO `orang` (`id`, `nama`, `alamat`, `created_at`, `updated_at`) VALUES
(1, 'Ade Lailasari', 'Dk. Bambon No. 668, Administrasi Jakarta Barat 78264, SulTra', '2015-11-04 21:23:05', '2020-12-17 00:16:35'),
(2, 'Tirtayasa Tarihoran', 'Psr. Baladewa No. 33, Ternate 50570, SulTra', '1984-10-12 08:53:52', '2020-12-17 00:16:35'),
(3, 'Wisnu Budiman S.Farm', 'Jln. Cihampelas No. 699, Dumai 51571, KalUt', '1992-05-18 05:13:05', '2020-12-17 00:16:35'),
(4, 'Dalima Uyainah', 'Jln. Siliwangi No. 589, Tangerang Selatan 24259, NTT', '1970-06-16 21:18:22', '2020-12-17 00:16:35'),
(5, 'Septi Sabrina Pudjiastuti S.Psi', 'Gg. Pasteur No. 345, Subulussalam 67849, DKI', '1971-05-24 07:59:29', '2020-12-17 00:16:35'),
(6, 'Keisha Faizah Agustina S.Sos', 'Gg. Wahidin No. 2, Gorontalo 50894, SumUt', '2012-04-26 11:22:42', '2020-12-17 00:16:35'),
(7, 'Kasiyah Haryanti', 'Jln. Jamika No. 655, Lubuklinggau 15151, SulBar', '1983-09-05 15:36:24', '2020-12-17 00:16:35'),
(8, 'Paramita Kezia Safitri', 'Ki. Thamrin No. 534, Cimahi 12572, SumUt', '1982-06-12 16:52:15', '2020-12-17 00:16:35'),
(9, 'Gaiman Irsad Iswahyudi M.M.', 'Dk. Imam No. 302, Tanjung Pinang 33148, DIY', '1985-06-14 17:29:51', '2020-12-17 00:16:35'),
(10, 'Zelaya Kasiyah Haryanti', 'Kpg. Yohanes No. 298, Pagar Alam 25877, Lampung', '2006-05-16 04:23:01', '2020-12-17 00:16:35'),
(11, 'Vera Susanti', 'Dk. Abdullah No. 126, Bekasi 28247, Aceh', '1986-10-07 01:31:06', '2020-12-17 00:16:35'),
(12, 'Yunita Kusmawati', 'Ki. Pasir Koja No. 249, Bukittinggi 23284, Maluku', '2009-06-01 17:15:13', '2020-12-17 00:16:35'),
(13, 'Elvina Usada', 'Jr. Gajah Mada No. 989, Solok 15326, KalUt', '1975-08-22 21:03:42', '2020-12-17 00:16:35'),
(14, 'Caraka Caturangga Saragih', 'Ki. Karel S. Tubun No. 181, Salatiga 62571, Papua', '1971-02-11 00:27:30', '2020-12-17 00:16:35'),
(15, 'Prima Lantar Gunawan', 'Ds. BKR No. 702, Solok 44106, Aceh', '1976-09-14 00:30:32', '2020-12-17 00:16:35'),
(16, 'Mitra Marbun', 'Ds. Abdul. Muis No. 920, Palu 20081, Aceh', '2019-07-19 00:36:33', '2020-12-17 00:16:35'),
(17, 'Eli Tania Laksmiwati S.Farm', 'Gg. Sutan Syahrir No. 854, Administrasi Jakarta Timur 93210, MalUt', '1987-12-20 15:35:06', '2020-12-17 00:16:35'),
(18, 'Ibun Megantara M.Pd', 'Ki. Ketandan No. 649, Jayapura 30427, NTB', '2000-03-15 08:58:26', '2020-12-17 00:16:36'),
(19, 'Paulin Hariyah S.T.', 'Psr. Bass No. 680, Depok 36979, Aceh', '1989-01-21 14:47:01', '2020-12-17 00:16:36'),
(20, 'Natalia Hariyah', 'Jr. Kusmanto No. 381, Sibolga 91393, Jambi', '2013-03-20 20:17:53', '2020-12-17 00:16:36'),
(21, 'Galih Nugroho', 'Gg. Babadak No. 236, Sabang 42849, Jambi', '1992-12-09 06:55:38', '2020-12-17 00:16:36'),
(22, 'Uchita Anita Novitasari S.T.', 'Kpg. Yoga No. 758, Yogyakarta 67479, SulTeng', '1988-03-12 08:24:18', '2020-12-17 00:16:36'),
(23, 'Eman Dongoran', 'Jln. Antapani Lama No. 989, Manado 48343, SulUt', '1987-05-23 15:13:07', '2020-12-17 00:16:36'),
(24, 'Luwes Luwes Setiawan', 'Dk. Yogyakarta No. 423, Lubuklinggau 95563, Maluku', '1984-04-29 16:04:32', '2020-12-17 00:16:36'),
(25, 'Unggul Parman Pradana', 'Jr. Abdul No. 21, Padangsidempuan 96658, JaBar', '2012-07-22 20:50:19', '2020-12-17 00:16:36'),
(26, 'Jatmiko Simbolon', 'Ds. Banda No. 42, Pangkal Pinang 14289, Jambi', '2016-05-01 17:33:31', '2020-12-17 00:16:36'),
(27, 'Ciaobella Padma Utami', 'Jln. Ciwastra No. 263, Bontang 97267, Banten', '1998-04-21 13:49:46', '2020-12-17 00:16:36'),
(28, 'Marsito Dongoran', 'Ki. Gotong Royong No. 332, Pariaman 18490, Gorontalo', '2001-06-24 10:33:26', '2020-12-17 00:16:36'),
(29, 'Eko Sirait', 'Jr. Suharso No. 985, Parepare 83829, SulTra', '1991-08-29 17:17:28', '2020-12-17 00:16:36'),
(30, 'Xanana Rajasa', 'Psr. Dahlia No. 179, Banjar 85535, PapBar', '1987-02-10 05:28:14', '2020-12-17 00:16:36'),
(31, 'Baktianto Lazuardi S.Ked', 'Jr. Bhayangkara No. 838, Kotamobagu 59866, SumBar', '2006-11-12 16:01:51', '2020-12-17 00:16:36'),
(32, 'Rika Yuliarti', 'Psr. Sudirman No. 918, Surabaya 27959, NTB', '1982-08-28 07:55:44', '2020-12-17 00:16:36'),
(33, 'Vivi Anggraini S.Pt', 'Jln. Bappenas No. 212, Binjai 72341, NTB', '2000-01-10 13:18:58', '2020-12-17 00:16:36'),
(34, 'Cindy Janet Purnawati', 'Jr. Pasteur No. 682, Gorontalo 75098, SulSel', '2004-10-12 22:03:11', '2020-12-17 00:16:36'),
(35, 'Jarwadi Pratama S.Pd', 'Psr. Sutoyo No. 96, Mataram 38748, NTT', '1991-06-26 16:31:19', '2020-12-17 00:16:37'),
(36, 'Yulia Nasyidah', 'Ds. Supomo No. 792, Depok 51771, PapBar', '1993-01-07 02:53:12', '2020-12-17 00:16:37'),
(37, 'Kamila Nova Wulandari S.Psi', 'Ds. Gatot Subroto No. 75, Surabaya 83680, SulBar', '2018-01-30 04:05:22', '2020-12-17 00:16:37'),
(38, 'Cindy Eka Laksita', 'Jr. Bahagia  No. 40, Makassar 39768, SulUt', '2002-09-25 11:48:14', '2020-12-17 00:16:37'),
(39, 'Zelda Lailasari S.IP', 'Psr. Baik No. 32, Sabang 11934, SumBar', '2005-12-05 17:12:31', '2020-12-17 00:16:37'),
(40, 'Edward Opung Gunawan', 'Dk. Sutarto No. 571, Makassar 21588, SumBar', '2009-11-19 00:46:15', '2020-12-17 00:16:37'),
(41, 'Tri Kusumo', 'Ds. Baya Kali Bungur No. 881, Administrasi Jakarta Timur 14444, KalTim', '1983-01-05 08:10:27', '2020-12-17 00:16:37'),
(42, 'Puspa Hasna Permata', 'Jln. Abdul No. 684, Administrasi Jakarta Selatan 86511, DKI', '1987-01-08 13:25:28', '2020-12-17 00:16:37'),
(43, 'Wani Karimah Sudiati S.E.', 'Ki. Banda No. 740, Pekalongan 74829, PapBar', '1986-03-29 19:20:06', '2020-12-17 00:16:37'),
(44, 'Carla Wastuti', 'Dk. Jend. A. Yani No. 124, Surabaya 62826, KalBar', '2012-02-06 08:26:52', '2020-12-17 00:16:37'),
(45, 'Cecep Dodo Dabukke', 'Jln. Nanas No. 49, Bandung 88425, Lampung', '1998-04-13 11:02:59', '2020-12-17 00:16:37'),
(46, 'Gawati Wastuti M.Pd', 'Jr. Lembong No. 31, Batam 92915, DIY', '1982-04-09 17:50:44', '2020-12-17 00:16:37'),
(47, 'Gasti Nasyiah S.Sos', 'Ds. Banal No. 168, Pagar Alam 12064, Jambi', '1980-11-28 12:59:59', '2020-12-17 00:16:37'),
(48, 'Zulaikha Uchita Mulyani', 'Psr. Achmad No. 480, Sabang 61195, JaBar', '2012-06-02 22:30:25', '2020-12-17 00:16:37'),
(49, 'Sadina Nuraini', 'Jln. Gegerkalong Hilir No. 404, Banjar 55390, KalTim', '1984-02-13 23:17:45', '2020-12-17 00:16:37'),
(50, 'Hana Oktaviani S.H.', 'Ki. Sumpah Pemuda No. 423, Madiun 31635, JaBar', '1987-07-05 13:37:52', '2020-12-17 00:16:37'),
(51, 'Genta Kania Handayani', 'Psr. Setiabudhi No. 690, Gorontalo 64113, Maluku', '1991-05-02 22:18:38', '2020-12-17 00:16:37'),
(52, 'Laswi Thamrin S.T.', 'Kpg. W.R. Supratman No. 452, Yogyakarta 92937, DIY', '1970-07-29 01:44:34', '2020-12-17 00:16:37'),
(53, 'Umar Manullang', 'Ki. Gedebage Selatan No. 633, Banjarmasin 35281, KalBar', '1973-06-26 19:32:34', '2020-12-17 00:16:37'),
(54, 'Daryani Januar', 'Jln. Bakhita No. 222, Bontang 90179, Riau', '1998-12-25 19:36:11', '2020-12-17 00:16:37'),
(55, 'Umi Andriani', 'Psr. Arifin No. 484, Metro 49885, DKI', '1998-07-14 14:35:03', '2020-12-17 00:16:37'),
(56, 'Sabrina Septi Zulaika', 'Jr. Flora No. 782, Cirebon 31447, PapBar', '1992-12-28 11:17:51', '2020-12-17 00:16:37'),
(57, 'Michelle Mayasari', 'Ki. Ir. H. Juanda No. 60, Administrasi Jakarta Selatan 75850, SulBar', '1979-09-04 13:02:16', '2020-12-17 00:16:38'),
(58, 'Lembah Simbolon M.Kom.', 'Psr. Banal No. 393, Pekalongan 22794, SumSel', '2003-08-04 18:23:02', '2020-12-17 00:16:38'),
(59, 'Jamalia Sudiati', 'Ki. Baja Raya No. 43, Pagar Alam 80926, SulTra', '1993-07-25 18:19:23', '2020-12-17 00:16:38'),
(60, 'Gatra Latif Permadi M.Farm', 'Jln. Bakau Griya Utama No. 43, Batam 36395, Bengkulu', '1991-07-20 19:06:01', '2020-12-17 00:16:38'),
(61, 'Kairav Mulyanto Prayoga', 'Ds. Bass No. 258, Bau-Bau 57266, Bali', '1985-05-28 17:42:14', '2020-12-17 00:16:38'),
(62, 'Zelda Tania Rahimah M.TI.', 'Jr. Katamso No. 330, Madiun 75837, KalSel', '2018-10-08 06:25:03', '2020-12-17 00:16:38'),
(63, 'Mila Dewi Handayani', 'Ds. Kebangkitan Nasional No. 223, Bontang 28153, SumSel', '1971-01-15 08:51:26', '2020-12-17 00:16:38'),
(64, 'Kenzie Widodo M.Pd', 'Gg. Baja No. 380, Bukittinggi 69181, Bali', '1993-12-09 15:00:03', '2020-12-17 00:16:38'),
(65, 'Tania Titin Yuliarti M.Ak', 'Gg. Halim No. 745, Samarinda 71212, DKI', '2015-08-15 23:07:30', '2020-12-17 00:16:38'),
(66, 'Lantar Haryanto', 'Jr. Bazuka Raya No. 386, Sibolga 78886, SulBar', '2009-06-12 01:15:57', '2020-12-17 00:16:38'),
(67, 'Zulfa Yuliarti', 'Gg. Suryo Pranoto No. 968, Ambon 64266, Bali', '1981-01-06 04:29:15', '2020-12-17 00:16:38'),
(68, 'Enteng Martaka Najmudin', 'Psr. Nanas No. 871, Tangerang 75774, SulUt', '1980-03-01 07:37:45', '2020-12-17 00:16:38'),
(69, 'Umar Gunarto', 'Dk. Kalimalang No. 518, Gorontalo 74347, Aceh', '1990-09-28 03:57:40', '2020-12-17 00:16:38'),
(70, 'Kasiyah Utami M.TI.', 'Psr. K.H. Wahid Hasyim (Kopo) No. 809, Medan 44548, KalBar', '2000-07-08 16:00:42', '2020-12-17 00:16:38'),
(71, 'Malik Hardiansyah', 'Ds. Supomo No. 281, Banjarbaru 43638, SumSel', '2002-08-24 00:59:51', '2020-12-17 00:16:38'),
(72, 'Violet Yuliarti', 'Jr. Imam Bonjol No. 912, Padangpanjang 48976, KalBar', '1982-05-09 15:57:10', '2020-12-17 00:16:38'),
(73, 'Hasna Pertiwi S.I.Kom', 'Jln. Pasirkoja No. 580, Administrasi Jakarta Utara 95030, Gorontalo', '1980-11-19 03:51:41', '2020-12-17 00:16:39'),
(74, 'Hartana Jailani', 'Ds. Honggowongso No. 356, Administrasi Jakarta Timur 36639, KalSel', '2008-08-15 02:26:37', '2020-12-17 00:16:39'),
(75, 'Cakrawala Muhammad Siregar', 'Kpg. Tambun No. 806, Pontianak 57984, SumUt', '1993-09-03 17:37:24', '2020-12-17 00:16:39'),
(76, 'Yono Gaiman Suwarno', 'Ki. Abdul No. 304, Sorong 49803, Aceh', '1984-04-08 20:20:14', '2020-12-17 00:16:39'),
(77, 'Dalimin Rajata', 'Jr. Babah No. 263, Kendari 92086, Bali', '1981-08-31 02:33:39', '2020-12-17 00:16:39'),
(78, 'Emas Halim', 'Psr. Bara Tambar No. 136, Lubuklinggau 89725, NTB', '1987-01-27 04:15:25', '2020-12-17 00:16:39'),
(79, 'Citra Laksita', 'Jln. Abdul. Muis No. 352, Manado 59093, Maluku', '2010-02-13 06:54:04', '2020-12-17 00:16:39'),
(80, 'Mariadi Damu Zulkarnain', 'Ki. Baha No. 824, Lhokseumawe 77316, SumBar', '1970-10-26 16:59:31', '2020-12-17 00:16:39'),
(81, 'Oliva Pudjiastuti S.E.', 'Ds. Ir. H. Juanda No. 686, Bima 86138, NTB', '1998-07-02 20:49:00', '2020-12-17 00:16:39'),
(82, 'Yusuf Damu Mustofa M.Kom.', 'Ds. W.R. Supratman No. 798, Binjai 36847, Aceh', '2016-03-18 08:33:28', '2020-12-17 00:16:39'),
(83, 'Hardana Prasetya', 'Jln. Padma No. 959, Bitung 88775, Aceh', '1974-02-10 12:21:13', '2020-12-17 00:16:40'),
(84, 'Lalita Vanya Utami', 'Psr. Rajawali Timur No. 110, Palangka Raya 47679, KepR', '2011-02-20 01:23:23', '2020-12-17 00:16:40'),
(85, 'Elma Olivia Laksmiwati S.Psi', 'Jln. Bhayangkara No. 358, Pekalongan 63285, SulTeng', '2013-05-28 20:53:01', '2020-12-17 00:16:40'),
(86, 'Dian Ghaliyati Kusmawati S.T.', 'Dk. Sugiyopranoto No. 665, Pagar Alam 61150, KalTim', '1976-05-14 23:30:19', '2020-12-17 00:16:40'),
(87, 'Marsito Natsir', 'Dk. Reksoninten No. 661, Palangka Raya 28795, JaBar', '2010-11-17 09:58:23', '2020-12-17 00:16:40'),
(88, 'Salimah Sudiati', 'Jr. Pattimura No. 180, Tomohon 76075, KalSel', '2005-03-04 17:48:09', '2020-12-17 00:16:40'),
(89, 'Zizi Hariyah', 'Gg. Sugiono No. 172, Bima 16898, Jambi', '1973-05-26 12:43:24', '2020-12-17 00:16:40'),
(90, 'Hesti Agnes Maryati M.Ak', 'Dk. Taman No. 299, Tual 20880, KalBar', '1971-12-09 20:35:18', '2020-12-17 00:16:40'),
(91, 'Hafshah Jane Zulaika S.Sos', 'Jr. Cikapayang No. 340, Bandar Lampung 71591, KalTeng', '2005-02-26 10:59:30', '2020-12-17 00:16:40'),
(92, 'Nabila Nurdiyanti', 'Kpg. Cikapayang No. 348, Lhokseumawe 81138, DKI', '2012-08-19 19:14:52', '2020-12-17 00:16:40'),
(93, 'Patricia Yulia Wijayanti', 'Psr. Suharso No. 364, Administrasi Jakarta Selatan 21010, Jambi', '1982-12-13 18:54:39', '2020-12-17 00:16:40'),
(94, 'Utama Natsir', 'Dk. Ters. Pasir Koja No. 997, Padangpanjang 95397, Bali', '2013-09-05 10:10:59', '2020-12-17 00:16:40'),
(95, 'Citra Utami', 'Jln. R.E. Martadinata No. 372, Gunungsitoli 58462, Aceh', '2003-04-13 19:02:03', '2020-12-17 00:16:40'),
(96, 'Aisyah Riyanti', 'Dk. Kyai Mojo No. 784, Bau-Bau 27282, Papua', '2003-11-23 07:24:26', '2020-12-17 00:16:40'),
(97, 'Tania Mardhiyah', 'Dk. Nakula No. 1, Singkawang 84168, PapBar', '1985-12-22 02:46:04', '2020-12-17 00:16:40'),
(98, 'Hamima Mayasari', 'Psr. Suniaraja No. 246, Kupang 80879, NTT', '2009-01-06 05:34:47', '2020-12-17 00:16:41'),
(99, 'Olivia Violet Nasyidah', 'Gg. Bayam No. 358, Sorong 15191, SulTeng', '1978-04-20 09:20:15', '2020-12-17 00:16:41'),
(100, 'Mustofa Carub Siregar', 'Jln. Salak No. 205, Yogyakarta 90629, Bengkulu', '1995-11-04 19:04:46', '2020-12-17 00:16:41');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password_hash` varchar(255) NOT NULL,
  `reset_hash` varchar(255) DEFAULT NULL,
  `reset_at` datetime DEFAULT NULL,
  `reset_expires` datetime DEFAULT NULL,
  `activate_hash` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `status_message` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `force_pass_reset` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `username`, `password_hash`, `reset_hash`, `reset_at`, `reset_expires`, `activate_hash`, `status`, `status_message`, `active`, `force_pass_reset`, `created_at`, `updated_at`, `deleted_at`) VALUES
(6, 'admin@blog.com', 'admin', '$2y$10$qOpJ.9Th2tfBUQpnZu4yJOgvIjQsFYGNp3vI75lsPlwoV3fojWHse', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2020-12-17 07:35:40', '2020-12-17 07:35:40', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_groups`
--
ALTER TABLE `auth_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD KEY `auth_groups_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `group_id_permission_id` (`group_id`,`permission_id`);

--
-- Indexes for table `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD KEY `auth_groups_users_user_id_foreign` (`user_id`),
  ADD KEY `group_id_user_id` (`group_id`,`user_id`);

--
-- Indexes for table `auth_logins`
--
ALTER TABLE `auth_logins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `auth_permissions`
--
ALTER TABLE `auth_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auth_tokens_user_id_foreign` (`user_id`),
  ADD KEY `selector` (`selector`);

--
-- Indexes for table `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD KEY `auth_users_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `user_id_permission_id` (`user_id`,`permission_id`);

--
-- Indexes for table `komik`
--
ALTER TABLE `komik`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orang`
--
ALTER TABLE `orang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_groups`
--
ALTER TABLE `auth_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_logins`
--
ALTER TABLE `auth_logins`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `auth_permissions`
--
ALTER TABLE `auth_permissions`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `komik`
--
ALTER TABLE `komik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orang`
--
ALTER TABLE `orang`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD CONSTRAINT `auth_groups_permissions_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD CONSTRAINT `auth_groups_users_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD CONSTRAINT `auth_tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD CONSTRAINT `auth_users_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_users_permissions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
