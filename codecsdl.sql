-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 21, 2024 at 05:34 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `doan5`
--

-- --------------------------------------------------------

--
-- Table structure for table `ctdh`
--

CREATE TABLE `ctdh` (
  `Ctdh_id` int(11) NOT NULL,
  `Donhang_id` int(11) DEFAULT NULL,
  `Sanpham_id` int(11) DEFAULT NULL,
  `Tensanpham` varchar(100) NOT NULL,
  `Anh` varchar(1000) DEFAULT NULL,
  `Soluong` int(11) DEFAULT NULL,
  `Gia` decimal(10,3) DEFAULT NULL,
  `Tongtien` float DEFAULT NULL,
  `Giakhuyenmai` decimal(10,3) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `ctdh`
--

INSERT INTO `ctdh` (`Ctdh_id`, `Donhang_id`, `Sanpham_id`, `Tensanpham`, `Anh`, `Soluong`, `Gia`, `Tongtien`, `Giakhuyenmai`, `created_at`, `updated_at`) VALUES
(21, 21, 2, 'Air Blade 125/160', 'xetayga1.png', 3, 41324.000, 123972, NULL, '2023-04-21 00:58:47', '2023-04-21 00:58:47'),
(22, 21, 3, 'LEAD 125cc', 'xe8.png', 2, 41324.000, 82648, NULL, '2023-04-21 00:58:47', '2023-04-21 00:58:47'),
(23, 22, 7, 'CB150R The Streetster', 'xe23.jpg', 1, 105500.000, 105500, NULL, '2023-04-21 01:00:29', '2023-04-21 01:00:29'),
(24, 22, 4, 'Air Blade 125/160', 'xetayga1.png', 2, 39066.000, 78132, NULL, '2023-04-21 01:00:29', '2023-04-21 01:00:29'),
(25, 23, 3, 'LEAD 125cc', 'xe8.png', 1, 41324.000, 41324, NULL, '2023-04-21 01:02:21', '2023-04-21 01:02:21'),
(26, 24, 7, 'CB150R The Streetster', 'xe23.jpg', 1, 105500.000, 105500, NULL, '2023-04-21 01:57:19', '2023-04-21 01:57:19'),
(27, 24, 2, 'Air Blade 125/160', 'xetayga1.png', 4, 41324.000, 165296, NULL, '2023-04-21 01:57:19', '2023-04-21 01:57:19'),
(28, 25, 2, 'Air Blade 125/160', 'xetayga1.png', 2, 41324.000, 82648, NULL, '2023-04-22 18:38:09', '2023-04-22 18:38:09'),
(30, 26, 2, 'Air Blade 125/160', 'xetayga1.png', 1, 41324.000, 41324, NULL, '2023-05-11 07:40:35', '2023-05-11 07:40:35'),
(31, 26, 3, 'LEAD 125cc', 'xe8.png', 1, 41324.000, 41324, NULL, '2023-05-11 07:40:35', '2023-05-11 07:40:35'),
(34, 28, 2, 'Air Blade 125/160', 'xetayga1.png', 1, 41324.000, 41324, NULL, '2023-05-11 07:52:54', '2023-05-11 07:52:54'),
(36, 29, 2, 'Air Blade 125/160', 'xetayga1.png', 2, 41324.000, 82648, NULL, '2023-05-11 07:54:25', '2023-05-11 07:54:25'),
(37, 30, 2, 'Air Blade 125/160', 'xe1.png', 1, 41324.000, 41324, NULL, '2023-05-11 08:23:27', '2023-05-11 08:23:27'),
(38, 31, 2, 'Air Blade 125/160', 'xe1.png', 1, 41324.000, 41324, NULL, '2023-05-11 08:27:54', '2023-05-11 08:27:54'),
(39, 32, 2, 'Air Blade 125/160', 'xe1.png', 5, 41324.000, 206620, NULL, '2023-05-11 08:35:42', '2023-05-11 08:35:42'),
(40, 33, 2, 'Air Blade 125/160', 'xe1.png', 1, 41324.000, 41324, NULL, '2023-05-11 17:28:33', '2023-05-11 17:28:33'),
(41, 34, 2, 'Air Blade 125/160', 'xe1.png', 1, 41324.000, 41324, NULL, '2023-05-12 06:15:29', '2023-05-12 06:15:29'),
(42, 36, 2, 'Air Blade 125/160', 'xe1.png', 1, 41324.000, 41324, NULL, '2023-05-12 06:23:55', '2023-05-12 06:23:55'),
(47, 41, 2, 'Air Blade 125/160', 'xe1.png', 1, 41324.000, 41324, NULL, '2023-05-12 06:33:58', '2023-05-12 06:33:58'),
(49, 43, 2, 'Air Blade 125/160', 'xe1.png', 2, 41324.000, 82648, NULL, '2023-05-24 06:54:56', '2023-05-24 06:54:56'),
(50, 44, 2, 'Air Blade 125/160', 'xe2.png', 2, 41324.000, 82648, NULL, '2023-05-25 20:22:25', '2023-05-25 20:22:25'),
(51, 44, 3, 'LEAD 125cc', 'xe8.png', 1, 41324.000, 41324, NULL, '2023-05-25 20:22:25', '2023-05-25 20:22:25'),
(52, 45, 2, 'Air Blade 125/160', 'xe2.png', 2, 41324.000, 82648, NULL, '2023-05-25 20:37:44', '2023-05-25 20:37:44'),
(53, 46, 4, 'Air Blade 125/160', 'xetayga1.png', 2, 39066.000, 78132, NULL, '2023-10-20 20:18:59', '2023-10-20 20:18:59'),
(54, 47, 3, 'LEAD 125cc', 'xe8.png', 1, 41324.000, 41324, NULL, '2023-10-20 20:20:25', '2023-10-20 20:20:25'),
(55, 47, 7, 'CB150R The Streetster', 'xe23.jpg', 1, 105500.000, 105500, NULL, '2023-10-20 20:20:25', '2023-10-20 20:20:25'),
(56, 48, 3, 'LEAD 125cc', 'xe8.png', 1, 41324.000, 41324, NULL, '2023-10-21 17:26:02', '2023-10-21 17:26:02'),
(57, 48, 4, 'Air Blade 125/160', 'xetayga1.png', 2, 39066.000, 78132, NULL, '2023-10-21 17:26:02', '2023-10-21 17:26:02'),
(58, 50, 2, 'Sản phẩm 2', 'sp1.jpg', 2, 200000.000, 400000, NULL, '2023-12-22 15:57:42', NULL),
(59, 50, 3, 'Sản phẩm 3', 'sp2.jpg', 1, 100000.000, 100000, NULL, '2023-12-22 15:57:42', NULL),
(60, 52, 33, 'Sh Mode 125cc', 'xe7.png', 10, 222200.000, 100000, NULL, '2023-12-22 16:03:21', NULL),
(61, 52, 30, 'MONSTER ENERGY', 'X30-Monster-004.png', 13, 54500.000, 100000, NULL, '2023-12-22 16:03:21', NULL),
(62, 52, 3, 'LEAD 125cc', 'xe8.png', 20, 41324.000, 100000, NULL, '2023-12-22 16:03:21', NULL),
(63, 52, 4, 'Air Blade 125/160', 'xetayga1.png', 38, 39066.000, 100000, NULL, '2023-12-22 16:03:21', NULL),
(64, 52, 2, 'Air Blade 125/160', 'xe2.png', 21, 41324.000, 100000, NULL, '2023-12-22 16:03:21', NULL),
(65, 52, 31, 'Gold Wing', 'xetayga1.png', 2, 20000.000, 100000, NULL, '2023-12-22 16:03:21', NULL),
(66, 53, 3, 'LEAD 125cc', 'xe8.png', 20, 41324.000, 100000, NULL, '2023-12-22 16:13:25', NULL),
(67, 53, 4, 'Air Blade 125/160', 'xetayga1.png', 38, 39066.000, 100000, NULL, '2023-12-22 16:13:25', NULL),
(68, 54, 2, 'Air Blade 125/160', 'xe2.png', 21, 41324.000, 100000, NULL, '2023-12-26 13:21:35', NULL),
(69, 54, 3, 'LEAD 125cc', 'xe8.png', 20, 41324.000, 100000, NULL, '2023-12-26 13:21:35', NULL),
(70, 55, 2, 'Air Blade 125/160', 'xe2.png', 21, 41324.000, 100000, NULL, '2023-12-26 13:26:24', NULL),
(71, 56, 2, 'Air Blade 125/160', 'xe2.png', 21, 41324.000, 100000, NULL, '2023-12-26 14:04:44', NULL),
(72, 56, 3, 'LEAD 125cc', 'xe8.png', 20, 41324.000, 100000, NULL, '2023-12-26 14:04:44', NULL),
(73, 57, 2, 'Air Blade 125/160', 'xe2.png', 2, 41324.000, 100000, NULL, '2023-12-26 14:08:46', NULL),
(74, 57, 3, 'LEAD 125cc', 'xe8.png', 2, 41324.000, 100000, NULL, '2023-12-26 14:08:46', NULL),
(75, 58, 2, 'Air Blade 125/160', 'xe2.png', 1, 41324.000, 100000, NULL, '2023-12-26 14:09:23', NULL),
(76, 58, 3, 'LEAD 125cc', 'xe8.png', 1, 41324.000, 100000, NULL, '2023-12-26 14:09:23', NULL),
(77, 59, 3, 'LEAD 125cc', 'xe8.png', 2, 41324.000, 100000, NULL, '2023-12-26 14:11:47', NULL),
(78, 59, 4, 'Air Blade 125/160', 'xetayga1.png', 1, 39066.000, 100000, NULL, '2023-12-26 14:11:47', NULL),
(79, 60, 2, 'Air Blade 125/160', 'xe2.png', 3, 41324.000, 867804, NULL, '2023-12-26 14:14:58', NULL),
(80, 60, 3, 'LEAD 125cc', 'xe8.png', 1, 41324.000, 826480, NULL, '2023-12-26 14:14:58', NULL),
(81, 61, 2, 'Air Blade 125/160', 'xe2.png', 1, 41324.000, NULL, NULL, '2023-12-26 14:18:11', NULL),
(82, 61, 3, 'LEAD 125cc', 'xe8.png', 2, 41324.000, NULL, NULL, '2023-12-26 14:18:11', NULL),
(83, 62, 2, 'Air Blade 125/160', 'xe2.png', 1, 41324.000, NULL, NULL, '2023-12-26 14:20:08', NULL),
(84, 62, 3, 'LEAD 125cc', 'xe8.png', 2, 41324.000, NULL, NULL, '2023-12-26 14:20:08', NULL),
(85, 64, 2, 'Air Blade 125/160', 'xe2.png', 1, 41324.000, 867804, NULL, '2023-12-26 14:22:37', NULL),
(86, 64, 3, 'LEAD 125cc', 'xe8.png', 1, 41324.000, 826480, NULL, '2023-12-26 14:22:37', NULL),
(87, 64, 4, 'Air Blade 125/160', 'xetayga1.png', 1, 39066.000, 1484510, NULL, '2023-12-26 14:22:37', NULL),
(88, 65, 2, 'Air Blade 125/160', 'xe2.png', 2, 41324.000, 867804, NULL, '2023-12-26 14:28:29', NULL),
(89, 65, 3, 'LEAD 125cc', 'xe8.png', 1, 41324.000, 826480, NULL, '2023-12-26 14:28:29', NULL),
(90, 66, 2, 'Air Blade 125/160', 'xe2.png', 1, 41324.000, 41324, NULL, '2023-12-26 14:30:11', NULL),
(91, 66, 3, 'LEAD 125cc', 'xe8.png', 1, 41324.000, 41324, NULL, '2023-12-26 14:30:11', NULL),
(92, 66, 4, 'Air Blade 125/160', 'xetayga1.png', 1, 39066.000, 39066, NULL, '2023-12-26 14:30:11', NULL),
(93, 67, 2, 'Air Blade 125/160', 'xe2.png', 1, 41324.000, 41324, NULL, '2023-12-26 14:33:40', NULL),
(94, 67, 3, 'LEAD 125cc', 'xe8.png', 2, 41324.000, 82648, NULL, '2023-12-26 14:33:40', NULL),
(95, 68, 2, 'Air Blade 125/160', 'xe2.png', 2, 41324.000, 82648, NULL, '2023-12-26 14:36:39', NULL),
(96, 68, 3, 'LEAD 125cc', 'xe8.png', 1, 41324.000, 41324, NULL, '2023-12-26 14:36:39', NULL),
(97, 69, 2, 'Air Blade 125/160', 'xe2.png', 1, 41324.000, 41324, NULL, '2023-12-26 14:38:52', NULL),
(98, 69, 3, 'LEAD 125cc', 'xe8.png', 1, 41324.000, 41324, NULL, '2023-12-26 14:38:52', NULL),
(99, 70, 2, 'Air Blade 125/160', 'xe2.png', 2, 41324.000, 82648, NULL, '2023-12-26 14:44:03', NULL),
(100, 70, 3, 'LEAD 125cc', 'xe8.png', 1, 41324.000, 41324, NULL, '2023-12-26 14:44:03', NULL),
(101, 71, 2, 'Air Blade 125/160', 'xe2.png', 2, 41324.000, 82648, NULL, '2023-12-26 14:48:05', NULL),
(102, 71, 3, 'LEAD 125cc', 'xe8.png', 1, 41324.000, 41324, NULL, '2023-12-26 14:48:05', NULL),
(103, 72, 2, 'Air Blade 125/160', 'xe2.png', 1, 41324.000, 41324, NULL, '2023-12-26 14:50:18', NULL),
(104, 72, 3, 'LEAD 125cc', 'xe8.png', 1, 41324.000, 41324, NULL, '2023-12-26 14:50:18', NULL),
(105, 72, 4, 'Air Blade 125/160', 'xetayga1.png', 1, 39066.000, 39066, NULL, '2023-12-26 14:50:18', NULL),
(106, 73, 3, 'LEAD 125cc', 'xe8.png', 1, 41324.000, 41324, NULL, '2023-12-26 14:51:05', NULL),
(107, 73, 4, 'Air Blade 125/160', 'xetayga1.png', 2, 39066.000, 78132, NULL, '2023-12-26 14:51:05', NULL),
(108, 74, 3, 'LEAD 125cc', 'xe8.png', 1, 41324.000, 41324, NULL, '2023-12-26 14:51:50', NULL),
(109, 74, 4, 'Air Blade 125/160', 'xetayga1.png', 2, 39066.000, 78132, NULL, '2023-12-26 14:51:50', NULL),
(110, 75, 2, 'Air Blade 125/160', 'xe2.png', 2, 41324.000, 82648, NULL, '2023-12-26 14:52:24', NULL),
(111, 75, 3, 'LEAD 125cc', 'xe8.png', 3, 41324.000, 123972, NULL, '2023-12-26 14:52:24', NULL),
(112, 76, 3, 'LEAD 125cc', 'xe8.png', 1, 41324.000, 41324, NULL, '2023-12-26 14:57:42', NULL),
(113, 76, 2, 'Air Blade 125/160', 'xe2.png', 3, 41324.000, 123972, NULL, '2023-12-26 14:57:42', NULL),
(114, 77, 2, 'Air Blade 125/160', 'xe2.png', 2, 41324.000, 82648, NULL, '2023-12-27 05:55:18', NULL),
(115, 77, 3, 'LEAD 125cc', 'xe8.png', 2, 41324.000, 82648, NULL, '2023-12-27 05:55:18', NULL),
(116, 77, 4, 'Air Blade 125/160', 'xetayga1.png', 1, 39066.000, 39066, NULL, '2023-12-27 05:55:18', NULL),
(117, 78, 2, 'Air Blade 125/160', 'xe2.png', 2, 200000.000, 400000, NULL, '2023-12-27 06:04:59', NULL),
(118, 78, 3, 'LEAD 125cc', 'xe8.png', 1, 100000.000, 100000, NULL, '2023-12-27 06:04:59', NULL),
(119, 79, 2, 'Air Blade 125/160', 'xe2.png', 2, 200000.000, 400000, NULL, '2023-12-27 06:06:25', NULL),
(120, 79, 3, 'LEAD 125cc', 'xe8.png', 1, 100000.000, 100000, NULL, '2023-12-27 06:06:25', NULL),
(121, 80, 2, 'Air Blade 125/160', 'xe2.png', 2, 41324.000, 82648, NULL, '2023-12-27 06:08:29', NULL),
(122, 80, 3, 'LEAD 125cc', 'xe8.png', 1, 41324.000, 41324, NULL, '2023-12-27 06:08:29', NULL),
(123, 81, 2, 'Air Blade 125/160', 'xe2.png', 1, 41324.000, 41324, NULL, '2023-12-27 06:47:30', NULL),
(124, 81, 3, 'LEAD 125cc', 'xe8.png', 1, 41324.000, 41324, NULL, '2023-12-27 06:47:30', NULL),
(125, 81, 4, 'Air Blade 125/160', 'xetayga1.png', 1, 39066.000, 39066, NULL, '2023-12-27 06:47:30', NULL),
(126, 82, 2, 'Air Blade 125/160', 'xe2.png', 1, 41324.000, 41324, NULL, '2023-12-27 06:59:27', NULL),
(127, 82, 3, 'LEAD 125cc', 'xe8.png', 1, 41324.000, 41324, NULL, '2023-12-27 06:59:27', NULL),
(128, 82, 4, 'Air Blade 125/160', 'xetayga1.png', 2, 39066.000, 78132, NULL, '2023-12-27 06:59:27', NULL),
(129, 83, 2, 'Air Blade 125/160', 'xe2.png', 2, 41324.000, 82648, NULL, '2023-12-27 07:33:33', NULL),
(130, 83, 3, 'LEAD 125cc', 'xe8.png', 2, 41324.000, 82648, NULL, '2023-12-27 07:33:33', NULL),
(131, 84, 2, 'Air Blade 125/160', 'xe2.png', 2, 41324.000, 82648, NULL, '2023-12-27 07:51:00', NULL),
(132, 84, 3, 'LEAD 125cc', 'xe8.png', 2, 41324.000, 82648, NULL, '2023-12-27 07:51:00', NULL),
(133, 85, 3, 'LEAD 125cc', 'xe8.png', 2, 41324.000, 82648, NULL, '2023-12-30 03:37:57', NULL),
(134, 85, 4, 'Air Blade 125/160', 'xetayga1.png', 2, 39066.000, 78132, NULL, '2023-12-30 03:37:57', NULL),
(135, 86, 4, 'Air Blade 125/160', 'xetayga1.png', 1, 39066.000, 39066, NULL, '2023-12-31 15:00:25', NULL),
(136, 86, 3, 'LEAD 125cc', 'xe8.png', 2, 41324.000, 82648, NULL, '2023-12-31 15:00:25', NULL),
(137, 86, 6, 'SH125i/150i', 'xe20.jpg', 1, 71957.000, 71957, NULL, '2023-12-31 15:00:25', NULL),
(138, 87, 4, 'Air Blade 125/160', 'xetayga1.png', 1, 39066.000, 39066, NULL, '2023-12-31 15:01:08', NULL),
(139, 87, 3, 'LEAD 125cc', 'xe8.png', 1, 41324.000, 41324, NULL, '2023-12-31 15:01:08', NULL),
(140, 88, 5, 'SH350i', 'xe9.jpg', 1, 14899.000, 14899, NULL, '2024-01-04 09:01:38', NULL),
(141, 88, 10, 'CBR500R 2022', 'CB150R THE STREETSTER.jpg', 1, 1924900.000, 1924900, NULL, '2024-01-04 09:01:38', NULL),
(142, 88, 9, 'Winner X', 'xe25.png', 1, 46160.000, 46160, NULL, '2024-01-04 09:01:38', NULL),
(148, 91, 4, 'Air Blade 125/160', 'xetayga1.png', 1, 39066.000, 39066, NULL, '2024-01-05 00:10:57', NULL),
(149, 91, 3, 'LEAD 125cc', 'xe8.png', 2, 41324.000, 82648, NULL, '2024-01-05 00:10:57', NULL),
(150, 92, 2, 'Air Blade 125/161', 'xe2.png', 2, 41324.000, 82648, NULL, '2024-01-05 02:55:18', NULL),
(151, 93, 3, 'LEAD 125cc', 'xe8.png', 2, 41324.000, 82648, NULL, '2024-01-07 13:35:56', NULL),
(152, 93, 2, 'Air Blade 125/161', 'xe2.png', 1, 41324.000, 41324, NULL, '2024-01-07 13:35:56', NULL),
(153, 94, 6, 'SH125i/150i', 'xe20.jpg', 1, 71957.000, 71957, NULL, '2024-01-08 14:17:55', NULL),
(154, 94, 5, 'SH350i', 'xe9.jpg', 2, 14899.000, 29798, NULL, '2024-01-08 14:17:55', NULL),
(155, 95, 2, 'Air Blade 125/161', 'xe2.png', 1, 41324.000, 41324, NULL, '2024-01-08 14:18:40', NULL),
(156, 95, 3, 'LEAD 125cc', 'xe8.png', 2, 41324.000, 82648, NULL, '2024-01-08 14:18:40', NULL),
(157, 96, 4, 'Air Blade 125/160', 'xetayga1.png', 2, 39066.000, 78132, NULL, '2024-02-19 03:49:25', NULL),
(158, 97, 3, 'LEAD 125cc', 'xe8.png', 1, 41324.000, 41324, NULL, '2024-02-19 04:04:34', NULL),
(159, 98, 2, 'Air Blade 125/161', 'xe2.png', 1, 41324.000, 41324, NULL, '2024-02-19 04:10:45', NULL),
(160, 99, 2, 'Air Blade 125/161', 'xe2.png', 2, 41324.000, 82648, NULL, '2024-02-19 04:21:05', NULL),
(161, 100, 2, 'Air Blade 125/161', 'xe2.png', 1, 41324.000, 41324, NULL, '2024-02-19 04:22:41', NULL),
(162, 101, 4, 'Air Blade 125/160', 'xetayga1.png', 2, 39066.000, 78132, NULL, '2024-02-19 05:22:24', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cthdn`
--

CREATE TABLE `cthdn` (
  `id` int(11) NOT NULL,
  `Hoadonnhap_id` int(11) DEFAULT NULL,
  `Sanpham_id` int(11) DEFAULT NULL,
  `Dongia` float DEFAULT NULL,
  `Soluong` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `cthdn`
--

INSERT INTO `cthdn` (`id`, `Hoadonnhap_id`, `Sanpham_id`, `Dongia`, `Soluong`, `created_at`, `updated_at`) VALUES
(1, 1, 20, 20000, 4, '2023-05-06 14:42:52', NULL),
(2, 1, 15, 21244, 24, '2023-05-06 14:42:52', NULL),
(4, 1, 2, 20000, 2, '2023-05-06 14:54:59', NULL),
(5, 1, 2, 20888, 2, '2023-05-06 08:20:12', '2023-05-06 08:20:12'),
(8, 1, 12, 20888, 2, '2023-05-06 08:29:08', '2023-05-06 08:29:08'),
(10, NULL, NULL, NULL, NULL, '2023-05-06 08:34:49', '2023-05-06 08:34:49'),
(15, 9, 5, 20888, 2, '2023-05-06 08:48:37', '2023-05-06 08:48:37'),
(16, 1, 5, 20888, 10, '2023-05-06 08:49:50', '2023-05-06 08:49:50'),
(17, 1, 4, 20888, 2, '2023-05-06 08:52:51', '2023-05-06 08:52:51'),
(18, 8, 28, 20888, 5, '2023-05-10 05:20:04', '2023-05-10 05:20:04'),
(19, 7, 28, 20888, 5, '2023-05-10 05:28:39', '2023-05-10 05:28:39'),
(21, 10, 18, 20888, 6, '2023-05-10 05:39:48', '2023-05-10 05:39:48'),
(22, 11, 15, NULL, 7, '2023-05-10 05:45:32', '2023-05-10 05:45:32'),
(23, 1, 22, NULL, 7, '2023-05-10 05:46:40', '2023-05-10 05:46:40'),
(24, 12, 30, NULL, 10, '2023-05-10 07:15:42', '2023-05-10 07:15:42'),
(25, 12, 29, NULL, 10, '2023-05-10 07:19:12', '2023-05-10 07:19:12'),
(26, 12, 13, NULL, 5, '2023-05-10 07:20:02', '2023-05-10 07:20:02'),
(27, 12, 24, NULL, 10, '2023-05-10 07:20:41', '2023-05-10 07:20:41'),
(28, 11, 21, NULL, 5, '2023-05-10 07:23:49', '2023-05-10 07:23:49'),
(29, 10, 19, 20888, 1, '2023-05-10 07:29:57', '2023-05-10 07:29:57'),
(30, 10, 6, 20888, 3, '2023-05-10 07:33:17', '2023-05-10 07:33:17'),
(31, 10, 6, 20888, 10, '2023-05-10 07:34:39', '2023-05-10 07:34:39'),
(32, 13, 3, 20888, 10, '2023-05-10 07:42:58', '2023-05-10 07:42:58'),
(33, 13, 3, 20888, 10, '2023-05-10 07:43:33', '2023-05-10 07:43:33'),
(34, 13, 3, 20888, 10, '2023-05-10 07:47:30', '2023-05-10 07:47:30'),
(35, 13, 2, 20888, 7, '2023-05-10 07:48:58', '2023-05-10 07:48:58'),
(36, 13, 2, 20888, 12, '2023-05-10 07:49:54', '2023-05-10 07:49:54'),
(38, 13, 3, 20888, 23, '2023-05-10 07:50:40', '2023-05-10 07:50:40'),
(39, 14, 2, 20888, 10, '2023-05-10 07:52:24', '2023-05-10 07:52:24'),
(40, 14, 2, 20888, 10, '2023-05-11 17:29:03', '2023-05-11 17:29:03'),
(41, 14, 2, 20000, 10, '2023-05-24 06:59:08', '2023-05-24 06:59:08'),
(42, 14, 2, 20888, 2, '2023-05-24 06:59:46', '2023-05-24 06:59:46'),
(43, 14, 2, 20000, 2, '2023-12-09 02:18:49', '2023-12-09 02:18:49'),
(44, 14, 2, 20000, 2, '2023-12-09 02:20:11', '2023-12-09 02:20:11'),
(45, 14, 2, 20000, 2, '2023-12-09 02:22:35', '2023-12-09 02:22:35'),
(46, 14, 2, 20000, 2, '2023-12-09 02:22:47', '2023-12-09 02:22:47'),
(47, 2, 4, NULL, 3, '2023-12-31 14:15:50', '2023-12-31 14:15:50'),
(48, 1, 2, 20000, 5, '2023-12-31 14:20:43', '2023-12-31 14:20:43'),
(49, 1, 5, 20888, 2, '2024-01-01 13:58:10', '2024-01-01 13:58:10'),
(50, 18, 3, 20000, 2, '2024-01-01 13:58:28', '2024-01-01 13:58:28'),
(51, 26, 3, 20888, 10, '2024-01-05 00:14:46', '2024-01-05 00:14:46');

-- --------------------------------------------------------

--
-- Table structure for table `donhang`
--

CREATE TABLE `donhang` (
  `id` int(11) NOT NULL,
  `Khachhang_id` int(11) DEFAULT NULL,
  `Hoten` varchar(50) DEFAULT NULL,
  `Sdt` char(20) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Diachi` varchar(50) DEFAULT NULL,
  `Ngaydat` datetime DEFAULT NULL,
  `Tongtien` float DEFAULT NULL,
  `Trangthai` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `donhang`
--

INSERT INTO `donhang` (`id`, `Khachhang_id`, `Hoten`, `Sdt`, `Email`, `Diachi`, `Ngaydat`, `Tongtien`, `Trangthai`, `created_at`, `updated_at`) VALUES
(21, NULL, 'Trần Quang Trung', '0989536321', 'trungruoi747@gmail.com', 'Hưng Yên', '2023-04-21 00:00:00', 262279, NULL, '2023-04-21 00:58:47', '2024-01-04 08:26:54'),
(22, NULL, 'Ae', '0989536321', 'trungruoi747@gmail.com', 'Hưng Yên', '2023-04-21 00:00:00', 183632, NULL, '2023-04-21 01:00:29', '2024-01-04 08:26:50'),
(23, NULL, 'Trần Quang Trung', '0989536321', 'trungruoi747@gmail.com', 'Hưng Yên', '2023-04-21 00:00:00', 41324, NULL, '2023-04-21 01:02:21', '2023-12-26 14:55:27'),
(24, NULL, 'Nguyễn Thế Dũng', '0989536321', 'cuongcon@gmail.com', 'Hưng Yên', '2023-04-21 00:00:00', 270796, NULL, '2023-04-21 01:57:19', '2023-12-26 14:55:52'),
(25, NULL, 'Đào Nhật Việt', '0989536321', 'nghiadonhu96@gmail.com', 'Hưng Yên', '2023-04-23 00:00:00', 193966, NULL, '2023-04-22 18:38:09', '2023-12-26 14:55:49'),
(26, NULL, 'Nguyễn Thế Dũng', '0989536321', 'nghiadonhu96@gmail.com', 'Hưng Yên', '2023-05-11 00:00:00', 82648, NULL, '2023-05-11 07:40:35', '2023-12-26 14:55:46'),
(28, NULL, 'Trần Quang Trung', '0989536321', 'cuongcon@gmail.com', 'Hưng Yên', '2023-05-11 00:00:00', 96983, NULL, '2023-05-11 07:52:54', '2024-01-04 04:03:31'),
(29, NULL, 'adadada', '0989536321', 'daonhatviet2912@gmail.com', 'Hưng Yên', '2023-05-11 00:00:00', 193966, NULL, '2023-05-11 07:54:25', '2023-12-26 14:55:39'),
(30, NULL, 'Đào Nhật Việt', '0989536321', 'nghia10x02@gmail.com', 'Hưng Yên', '2023-05-11 00:00:00', 41324, NULL, '2023-05-11 08:23:27', '2023-12-26 14:55:35'),
(31, NULL, 'Trần Quang Trung', '0989536321', 'trantrung2002hy89@gmail.com', 'Hưng Yên', '2023-05-11 00:00:00', 41324, NULL, '2023-05-11 08:27:54', '2023-12-26 14:55:33'),
(32, NULL, 'Ae', '0989536321', 'daonhatviet2912@gmail.comom', 'Hưng Yên', '2023-05-11 00:00:00', 206620, NULL, '2023-05-11 08:35:42', '2023-12-26 14:55:31'),
(33, NULL, 'Trần Quang Trung', '0989536321', 'trantrung2002hy89@gmail.com', 'Hưng Yên', '2023-05-12 00:00:00', 41324, NULL, '2023-05-11 17:28:33', '2023-12-26 14:55:29'),
(34, NULL, 'Trần Quang Trung', '0989536321', 'daonhatviet2912@gmail.com', 'Hưng Yên', '2023-05-12 00:00:00', 41324, NULL, '2023-05-12 06:15:28', '2023-12-26 14:55:56'),
(35, NULL, 'Trần Quang Trung', '0989536321', 'daonhatviet2912@gmail.com', 'Hưng Yên', '2023-05-12 00:00:00', 41324, NULL, '2023-05-12 06:18:41', '2023-12-26 14:56:04'),
(36, NULL, 'Nguyễn Thế Dũng', '0989536321', 'cuongcon@gmail.com', 'Hưng Yên', '2023-05-12 00:00:00', 41324, NULL, '2023-05-12 06:23:55', '2023-12-26 14:56:00'),
(37, NULL, 'Đỗ Như Nghĩa', '0989536321', 'daonhatviet2912@gmail.com', 'Hưng Yên', '2023-05-12 00:00:00', 111318, NULL, '2023-05-12 06:28:16', '2023-12-26 14:55:58'),
(38, NULL, 'Ae', '0989536321', 'cuongcon@gmail.com', 'Hưng Yên', '2023-05-12 00:00:00', 55659, NULL, '2023-05-12 06:29:20', '2023-12-26 14:56:14'),
(39, NULL, 'adadada', '0989536321', 'trantrung2002hy89@gmail.com', 'Hưng Yên', '2023-05-12 00:00:00', 55659, NULL, '2023-05-12 06:30:24', '2023-12-26 14:56:11'),
(40, NULL, 'Nguyễn Thế Dũng', '0989536321', 'trantrung2002hy89@gmail.com', 'Hưng Yên', '2023-05-12 00:00:00', 55659, NULL, '2023-05-12 06:33:17', '2023-12-26 14:56:08'),
(41, NULL, '7', '0989536321', 'trantrung2002hy89@gmail.com', 'Hưng Yên', '2023-05-12 00:00:00', 41324, NULL, '2023-05-12 06:33:58', '2023-12-26 14:56:06'),
(42, NULL, 'ae', '0989536321', 'daonhatviet2912@gmail.com', 'Hưng Yên', '2023-05-12 00:00:00', 111318, NULL, '2023-05-12 06:42:18', '2023-12-26 14:56:22'),
(43, NULL, 'Đỗ Như Nghĩa', '0989536321', 'daonhatviet2912@gmail.com', 'Hưng Yên', '2023-05-24 00:00:00', 82648, NULL, '2023-05-24 06:54:56', '2023-12-26 14:56:25'),
(44, NULL, 'Nguyễn Thế Dũng', '0989536321', 'trungruoi747@gmail.com', 'Hưng Yên', '2023-05-26 00:00:00', 123972, NULL, '2023-05-25 20:22:25', '2023-12-26 14:56:33'),
(45, NULL, 'nghia', '09832123', 'daonhatviet2912@gmail.com', 'Hưng Yên', '2023-05-26 00:00:00', 82648, NULL, '2023-05-25 20:37:44', '2023-12-26 14:56:16'),
(46, NULL, 'Đào Nhật Việt', '0989536321', 'nghiadonhu96@gmail.com', 'Hưng Yên', '2023-10-21 00:00:00', 78132, NULL, '2023-10-20 20:18:59', '2023-12-26 14:56:30'),
(47, NULL, 'Đỗ Như Nghĩa', '0989536321', 'daonhatviet2912@gmail.comom', 'Hưng Yên', '2023-10-21 00:00:00', 146824, NULL, '2023-10-20 20:20:25', '2023-12-26 14:56:27'),
(48, NULL, 'Nguyễn Thế Dũng', '0989536321', 'trungruoi747@gmail.com', 'Hưng Yên', '2023-10-22 00:00:00', 119456, NULL, '2023-10-21 17:26:02', '2023-12-26 14:56:36'),
(49, NULL, 'testq113', '989536321', 'daonhatviet2912@gmail.comom', 'Hưng Yênn', NULL, NULL, NULL, '2023-12-22 15:54:23', NULL),
(50, NULL, 'ưe DHcuoiưq', '0987654321', 'nguyenvana@example.com', '123 Duong ABC, Quan XYZ, TP HCM', '2023-12-13 14:27:13', 500000, NULL, '2023-12-22 15:57:42', NULL),
(51, NULL, 'testq113', '989536321', 'daonhatviet2912@gmail.comom', 'Hưng Yênn', NULL, NULL, NULL, '2023-12-22 16:01:54', NULL),
(52, NULL, 'testq114', '989536321', 'daonhatviet2912@gmail.comom', 'Hưng Yênn', NULL, NULL, NULL, '2023-12-22 16:03:21', NULL),
(53, NULL, 'testq115', '989536321', 'daonhatviet2912@gmail.comom', 'Hưng Yênn', NULL, NULL, NULL, '2023-12-22 16:13:25', NULL),
(54, NULL, 'testq116', '989536321', 'daonhatviet2912@gmail.comom', 'Hưng Yênn', NULL, NULL, NULL, '2023-12-26 13:21:35', NULL),
(55, NULL, 'testq117', '989536321', 'daonhatviet2912@gmail.comom', 'Hưng Yênn', NULL, NULL, NULL, '2023-12-26 13:26:24', NULL),
(56, NULL, 'testq118', '989536321', 'daonhatviet2912@gmail.comom', 'Hưng Yênn', NULL, NULL, NULL, '2023-12-26 14:04:44', NULL),
(57, NULL, 'testq119', '989536321', 'daonhatviet2912@gmail.comom', 'Hưng Yênn', NULL, NULL, NULL, '2023-12-26 14:08:46', NULL),
(58, NULL, 'testq120', '989536321', 'daonhatviet2912@gmail.comom', 'Hưng Yênn', NULL, NULL, NULL, '2023-12-26 14:09:23', NULL),
(59, NULL, 'testq121', '989536321', 'daonhatviet2912@gmail.comom', 'Hưng Yênn', NULL, NULL, NULL, '2023-12-26 14:11:47', NULL),
(60, NULL, 'testq121', '989536321', 'daonhatviet2912@gmail.comom', 'Hưng Yênn', NULL, NULL, NULL, '2023-12-26 14:14:58', NULL),
(61, NULL, 'testq122', '989536321', 'daonhatviet2912@gmail.comom', 'Hưng Yênn', NULL, NULL, NULL, '2023-12-26 14:18:11', NULL),
(62, NULL, 'testq123', '989536321', 'daonhatviet2912@gmail.comom', 'Hưng Yênn', NULL, NULL, NULL, '2023-12-26 14:20:08', NULL),
(63, NULL, 'testq124', '989536321', 'daonhatviet2912@gmail.comom', 'Hưng Yênn', NULL, NULL, NULL, '2023-12-26 14:21:34', NULL),
(64, NULL, 'testq125', '989536321', 'daonhatviet2912@gmail.comom', 'Hưng Yênn', NULL, NULL, NULL, '2023-12-26 14:22:37', NULL),
(65, NULL, 'testq126', '989536321', 'daonhatviet2912@gmail.comom', 'Hưng Yênn', NULL, 123972, NULL, '2023-12-26 14:28:29', NULL),
(66, NULL, 'testq127', '989536321', 'daonhatviet2912@gmail.comom', 'Hưng Yênn', NULL, NULL, NULL, '2023-12-26 14:30:11', NULL),
(67, NULL, 'testq128', '989536321', 'daonhatviet2912@gmail.comom', 'Hưng Yênn', NULL, 0, NULL, '2023-12-26 14:33:40', NULL),
(68, NULL, 'testq129', '989536321', 'daonhatviet2912@gmail.comom', 'Hưng Yênn', NULL, 123972, NULL, '2023-12-26 14:36:39', NULL),
(69, NULL, 'testq131', '989536321', 'daonhatviet2912@gmail.comom', 'Hưng Yênn', NULL, 82648, NULL, '2023-12-26 14:38:52', NULL),
(70, NULL, 'testq132', '989536321', 'daonhatviet2912@gmail.comom', 'Hưng Yênn', NULL, 123972, NULL, '2023-12-26 14:44:03', NULL),
(71, NULL, 'testq133', '989536321', 'daonhatviet2912@gmail.comom', 'Hưng Yênn', NULL, 123972, NULL, '2023-12-26 14:48:05', NULL),
(72, NULL, 'testq134', '989536321', 'daonhatviet2912@gmail.comom', 'Hưng Yênn', NULL, 121714, NULL, '2023-12-26 14:50:18', NULL),
(73, NULL, 'testq135', '989536321', 'daonhatviet2912@gmail.comom', 'Hưng Yênn', '2023-12-26 14:51:00', 119456, NULL, '2023-12-26 14:51:05', NULL),
(74, NULL, 'testq136', '989536321', 'daonhatviet2912@gmail.comom', 'Hưng Yênn', '2023-12-26 14:51:42', 119456, NULL, '2023-12-26 14:51:50', NULL),
(75, NULL, 'testq137', '989536321', 'daonhatviet2912@gmail.comom', 'Hưng Yênn', '2023-12-26 14:52:20', 206620, NULL, '2023-12-26 14:52:24', NULL),
(76, NULL, 'testq138', '989536321', 'daonhatviet2912@gmail.comom', 'Hưng Yênn', '2023-12-26 14:57:30', 165296, NULL, '2023-12-26 14:57:42', NULL),
(77, NULL, 'testq139', '989536321', 'daonhatviet2912@gmail.comom', 'Hưng Yênn', '2023-12-27 05:55:01', 204362, NULL, '2023-12-27 05:55:18', NULL),
(78, NULL, 'Tanggiam', '0987654321', 'nguyenvana@example.com', '123 Duong ABC, Quan XYZ, TP HCM', '2023-12-13 14:27:13', 500000, NULL, '2023-12-27 06:04:59', NULL),
(79, NULL, 'Tanggiam1', '0987654321', 'nguyenvana@example.com', '123 Duong ABC, Quan XYZ, TP HCM', '2023-12-13 14:27:13', 500000, NULL, '2023-12-27 06:06:25', NULL),
(80, NULL, 'testq140', '989536321', 'daonhatviet2912@gmail.comom', 'Hưng Yênn', '2023-12-27 06:08:20', 123972, NULL, '2023-12-27 06:08:29', NULL),
(81, NULL, 'testq141', '989536321', 'daonhatviet2912@gmail.comom', 'Hưng Yênn', '2023-12-27 06:47:04', 121714, NULL, '2023-12-27 06:47:30', NULL),
(82, NULL, 'testq142', '989536321', 'daonhatviet2912@gmail.comom', 'Hưng Yênn', '2023-12-27 06:59:22', 160780, NULL, '2023-12-27 06:59:27', NULL),
(83, NULL, 'testq143', '989536321', 'daonhatviet2912@gmail.comom', 'Hưng Yênn', '2023-12-27 07:33:28', 165296, NULL, '2023-12-27 07:33:33', NULL),
(84, NULL, 'testq144', '989536321', 'daonhatviet2912@gmail.comom', 'Hưng Yênn', '2023-12-27 07:50:55', 165296, NULL, '2023-12-27 07:51:00', NULL),
(85, NULL, 'testq145', '989536321', 'daonhatviet2912@gmail.comom', 'Hưng Yênn', '2023-12-30 03:37:51', 160780, NULL, '2023-12-30 03:37:57', NULL),
(86, NULL, 'testq146', '989536321', 'daonhatviet2912@gmail.comom', 'Hưng Yênn', '2023-12-31 15:00:18', 193671, NULL, '2023-12-31 15:00:25', NULL),
(87, NULL, 'testq147', '989536321', 'nghia9x02@gmail.com', 'Hưng Yênn', '2023-12-31 15:00:56', 80390, NULL, '2023-12-31 15:01:08', NULL),
(88, NULL, 'testq114', '989221234', 'trungruoi747@gmail.com', 'hưng yên', '2024-01-04 09:01:32', 1985960, NULL, '2024-01-04 09:01:38', NULL),
(91, NULL, 'testq151', '989221234', 'trungruoi747@gmail.com', 'hưng yên', '2024-01-05 00:10:45', 121714, NULL, '2024-01-05 00:10:57', NULL),
(92, NULL, 'testq152', '989221234', 'trungruoi747@gmail.com', 'hưng yên', '2024-01-05 02:55:05', 82648, NULL, '2024-01-05 02:55:18', NULL),
(93, NULL, 'testq153', '989221234', 'trungruoi747@gmail.com', 'hưng yên', '2024-01-07 13:35:50', 123972, NULL, '2024-01-07 13:35:56', NULL),
(94, NULL, 'testq154', '989221234', 'trungruoi747@gmail.com', 'hưng yên', '2024-01-08 14:17:43', 101755, NULL, '2024-01-08 14:17:55', NULL),
(95, NULL, 'testq155', '989221234', 'trungruoi747@gmail.com', 'hưng yên', '2024-01-08 14:18:34', 123972, NULL, '2024-01-08 14:18:40', NULL),
(96, NULL, 'testq155', '989221234', 'trungruoi747@gmail.com', 'hưng yên', '2024-02-19 03:49:10', 78132, NULL, '2024-02-19 03:49:25', NULL),
(97, NULL, 'testq155', '989221234', 'nghia9x02@gmail.com', 'hưng yên', '2024-02-19 04:04:17', 41324, NULL, '2024-02-19 04:04:33', NULL),
(98, NULL, 'testq1551', '989221234', 'nghia9x02@gmail.com', 'hưng yên', '2024-02-19 04:10:38', 41324, NULL, '2024-02-19 04:10:45', NULL),
(99, NULL, 'testq1552', '989221234', 'nghia9x02@gmail.com', 'hưng yên', '2024-02-19 04:21:00', 82648, NULL, '2024-02-19 04:21:05', NULL),
(100, NULL, 'testq1553', '989221234', 'nghia9x02@gmail.com', 'hưng yên', '2024-02-19 04:22:36', 41324, NULL, '2024-02-19 04:22:41', NULL),
(101, NULL, 'testq1555', '989221234', 'samiface89@gmail.com', 'hưng yên', '2024-02-19 05:21:52', 78132, NULL, '2024-02-19 05:22:24', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `hoadonnhap`
--

CREATE TABLE `hoadonnhap` (
  `id` int(11) NOT NULL,
  `Nhanvien_id` int(11) DEFAULT NULL,
  `Thanhtien` float DEFAULT NULL,
  `Ngaynhap` datetime DEFAULT NULL,
  `Ncc_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `hoadonnhap`
--

INSERT INTO `hoadonnhap` (`id`, `Nhanvien_id`, `Thanhtien`, `Ngaynhap`, `Ncc_id`, `created_at`, `updated_at`) VALUES
(1, 1, 20000, '2023-05-02 00:39:17', 1, '2023-05-06 14:39:31', '2024-01-04 04:01:47'),
(2, 1, 20000, '2023-05-01 10:00:00', 1, '2023-05-06 08:06:14', '2024-01-04 04:01:51'),
(4, 1, 2000, '2023-05-02 00:00:00', 1, '2023-05-06 08:16:27', '2023-05-10 14:54:53'),
(5, 1, 2000, '2023-05-02 00:00:00', 1, '2023-05-06 08:17:54', '2023-05-10 14:54:56'),
(6, 1, 2000, '2023-05-02 00:00:00', 1, '2023-05-06 08:19:03', '2023-05-10 14:54:57'),
(7, 1, 20000, '2023-03-03 00:00:00', 1, '2023-05-06 08:20:49', '2023-05-06 08:20:49'),
(8, 1, 20000, '2023-03-02 17:00:00', 1, '2023-05-06 08:29:26', '2024-01-04 03:33:58'),
(9, 1, 20000, '2023-03-03 00:00:00', 1, '2023-05-06 08:34:49', '2023-05-06 08:34:49'),
(10, 1, 20000, '2023-03-03 00:00:00', 1, '2023-05-10 05:39:28', '2023-05-10 05:39:28'),
(11, 1, 20000, '2023-03-03 00:00:00', 1, '2023-05-10 05:45:14', '2023-05-10 05:45:14'),
(12, 1, 20000, '2023-03-03 00:00:00', 1, '2023-05-10 05:46:27', '2023-05-10 05:46:27'),
(13, 1, 20000, '2023-03-03 00:00:00', 1, '2023-05-10 07:42:43', '2023-05-10 07:42:43'),
(14, 2, 20000, '2023-03-03 00:00:00', 1, '2023-05-10 07:51:54', '2023-05-10 07:51:54'),
(16, 1, 20000, '2023-03-03 00:00:00', 1, '2024-01-01 13:54:24', '2024-01-01 13:54:24'),
(17, 2, 10000, '2023-03-03 00:00:00', 1, '2024-01-01 13:55:48', '2024-01-01 13:55:48'),
(18, 3, 100012, '2023-03-01 19:00:00', 1, '2024-01-01 13:57:20', '2024-01-04 03:34:26'),
(22, 3, 10021200, '2023-03-04 00:00:00', 1, '2024-01-04 03:54:33', '2024-01-04 03:54:33'),
(24, 2, 1200, '2023-02-28 02:00:00', 1, '2024-01-04 14:07:57', '2024-01-04 14:08:41'),
(26, 3, 1510, '2023-03-02 10:00:00', 1, '2024-01-05 00:11:26', '2024-01-05 00:12:16');

-- --------------------------------------------------------

--
-- Table structure for table `khachhang`
--

CREATE TABLE `khachhang` (
  `id` int(11) NOT NULL,
  `Tenkhachhang` varchar(100) DEFAULT NULL,
  `Anhdaidien` varchar(100) DEFAULT NULL,
  `Ngaysinh` datetime DEFAULT NULL,
  `Sdt` char(20) DEFAULT NULL,
  `Diachi` varchar(100) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `khachhang`
--

INSERT INTO `khachhang` (`id`, `Tenkhachhang`, `Anhdaidien`, `Ngaysinh`, `Sdt`, `Diachi`, `Email`, `created_at`, `updated_at`) VALUES
(1, 'Nguyễn Thế Dũng', NULL, '2002-04-29 13:00:00', '09783322123', 'Hải Dương', 'nghia10x02@gmail.com', '2023-04-18 02:57:41', '2024-01-04 03:21:08'),
(2, 'Nghĩa hehe', NULL, '0000-00-00 00:00:00', '0978332212', 'Hưng Yên', 'nghia9x02Gmail.com', '2023-12-09 01:19:52', '2024-01-04 04:03:01'),
(3, 'Vũ Quang Cường', NULL, '2002-06-05 00:00:00', '9783322123', 'Hải Dương', 'trungruoi747@gmail.com', '2024-01-04 03:12:41', '2024-01-04 03:12:41');

-- --------------------------------------------------------

--
-- Table structure for table `loaisanpham`
--

CREATE TABLE `loaisanpham` (
  `id` int(11) NOT NULL,
  `Tenloai` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `loaisanpham`
--

INSERT INTO `loaisanpham` (`id`, `Tenloai`, `created_at`, `updated_at`) VALUES
(1, 'Xe số', '2023-04-18 08:04:48', '2023-12-26 04:09:52'),
(2, 'Xe tay ga', '2023-04-18 08:04:48', '2023-12-27 06:51:51'),
(3, 'Xe côn tay', '2023-04-18 08:04:48', '2023-12-25 00:42:14'),
(4, 'Xe mô tô', '2023-04-18 08:04:48', '2023-12-25 00:42:27'),
(15, 'Phần mềm', '2024-02-20 08:29:13', '2024-02-20 08:29:13'),
(16, 'Bộ điều khiển lập trình PVC', '2024-02-21 01:46:58', NULL),
(17, 'Màn hình cảm ứng HMI', '2024-02-21 01:46:58', NULL),
(18, 'CẢM BIẾN – SENSOR', '2024-02-21 01:46:58', NULL),
(19, 'BIẾN TẦN INVERTER', '2024-02-21 01:46:58', NULL),
(20, 'AC SERVO MOTOR & DRIVER', '2024-02-21 01:46:58', NULL),
(21, 'BỘ MÃ HÓA ENCODER', '2024-02-21 01:46:58', NULL),
(22, 'BỘ ĐIỀU KHIỂN NHIỆT ĐỘ', '2024-02-21 01:46:58', NULL),
(23, 'BỘ ĐẾM COUNTER', '2024-02-21 01:46:58', NULL),
(24, 'BỘ ĐỊNH THỜI TIMER', '2024-02-21 01:46:58', NULL),
(25, 'BỘ NGUỒN 24VDC', '2024-02-21 01:46:58', NULL),
(26, 'BỘ ĐỔI NGUỒN DRIVER SERVO', '2024-02-21 01:47:02', '2024-02-21 01:47:31'),
(27, 'STEPPING MOTOR-DRIVER', '2024-02-21 01:47:02', '2024-02-21 01:47:48'),
(28, 'THIẾT BỊ ĐÓNG CẮT', '2024-02-21 01:47:02', '2024-02-21 01:49:11'),
(29, 'THIẾT BỊ IOLINK', '2024-02-21 01:47:02', '2024-02-21 01:56:47'),
(30, 'CÔNG TẮC HÀNH TRÌNH', '2024-02-21 01:47:02', '2024-02-21 01:57:13'),
(31, 'LẮP TỦ ĐIỆN ĐIỀU KHIỂN', '2024-02-21 01:47:02', '2024-02-21 01:57:46'),
(32, 'CÁP LẬP TRÌNH PLC-HMI-SERVO', '2024-02-21 01:47:02', '2024-02-21 01:58:00'),
(33, 'HỘP SỐ', '2024-02-21 01:47:02', '2024-02-21 01:58:17'),
(34, 'PIN NUÔI NGUỒN PLC-HMI-SERVO', '2024-02-21 01:47:02', '2024-02-21 01:58:32'),
(35, 'SỬA PLC-HMI-INVERTER-SERVO', '2024-02-21 01:47:02', '2024-02-21 01:58:49'),
(36, 'SỬA MÁY CNC, MÁY CÔNG CỤ', '2024-02-21 01:59:39', NULL),
(37, 'TỦ ĐIỆN MÔ HÌNH THỰC HÀNH', '2024-02-21 01:59:39', NULL),
(38, 'PHỤ KIỆN MÀN HÌNH HMI', '2024-02-21 01:59:39', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ncc`
--

CREATE TABLE `ncc` (
  `id` int(11) NOT NULL,
  `Tenncc` varchar(100) DEFAULT NULL,
  `Diachi` varchar(100) DEFAULT NULL,
  `Sdt` char(20) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `ncc`
--

INSERT INTO `ncc` (`id`, `Tenncc`, `Diachi`, `Sdt`, `created_at`, `updated_at`) VALUES
(1, 'Honda', 'Hưng Yên', '09783322123', '2023-04-18 02:27:03', '2024-01-03 15:04:36');

-- --------------------------------------------------------

--
-- Table structure for table `nhanvien`
--

CREATE TABLE `nhanvien` (
  `id` int(11) NOT NULL,
  `Tennhanvien` varchar(100) DEFAULT NULL,
  `Ngaysinh` datetime DEFAULT NULL,
  `Sdt` char(20) DEFAULT NULL,
  `Diachi` varchar(100) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Anh` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `nhanvien`
--

INSERT INTO `nhanvien` (`id`, `Tennhanvien`, `Ngaysinh`, `Sdt`, `Diachi`, `Email`, `Anh`, `created_at`, `updated_at`) VALUES
(1, 'Đào Nhật Việt', '2002-06-04 10:00:00', '0989321312', 'Ân Thi', 'daonhatviet2912@gmail.comom', NULL, '2023-04-18 02:30:14', '2024-01-04 04:02:09'),
(2, 'Nguyễn Thế Dũng', '2002-06-04 10:00:00', '09783322123', 'Yên Mỹ', 'trungruoi747@gmail.com', NULL, '2023-04-18 02:30:54', '2024-01-04 04:02:25'),
(3, 'Nghĩa ', '2002-05-05 00:00:00', '0978332212', 'Hưng Yên', 'nghia9x02Gmail.com', NULL, '2023-12-09 01:27:19', '2024-01-04 08:22:28');

-- --------------------------------------------------------

--
-- Table structure for table `phanmem`
--

CREATE TABLE `phanmem` (
  `id` int(11) NOT NULL,
  `Maloai_id` int(11) DEFAULT NULL,
  `Tensanpham` varchar(100) NOT NULL,
  `Anh` varchar(1000) DEFAULT NULL,
  `Soluong` int(11) DEFAULT NULL,
  `Gia` decimal(10,3) DEFAULT NULL,
  `Mota` varchar(1000) DEFAULT NULL,
  `Giakhuyenmai` decimal(10,3) DEFAULT NULL,
  `ViewCount` int(11) DEFAULT NULL,
  `ReducePrice` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `phanmem`
--

INSERT INTO `phanmem` (`id`, `Maloai_id`, `Tensanpham`, `Anh`, `Soluong`, `Gia`, `Mota`, `Giakhuyenmai`, `ViewCount`, `ReducePrice`, `created_at`, `updated_at`) VALUES
(1, 15, 'Phần mềm', 'xe1.png', 1, 20000.000, 'qeq', 17500.000, 2, 3, '2024-02-20 08:30:48', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `id` int(11) NOT NULL,
  `Maloai_id` int(11) DEFAULT NULL,
  `Tensanpham` varchar(100) NOT NULL,
  `Anh` varchar(1000) DEFAULT NULL,
  `Soluong` int(11) DEFAULT NULL,
  `Gia` decimal(10,3) DEFAULT NULL,
  `Maluc` varchar(1000) DEFAULT NULL,
  `PhanKhuc` varchar(1000) DEFAULT NULL,
  `VongTuaMay` varchar(1000) DEFAULT NULL,
  `MoMenXoan` mediumtext DEFAULT NULL,
  `Giakhuyenmai` decimal(10,3) DEFAULT NULL,
  `ViewCount` int(11) DEFAULT NULL,
  `ReducePrice` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`id`, `Maloai_id`, `Tensanpham`, `Anh`, `Soluong`, `Gia`, `Maluc`, `PhanKhuc`, `VongTuaMay`, `MoMenXoan`, `Giakhuyenmai`, `ViewCount`, `ReducePrice`, `created_at`, `updated_at`) VALUES
(2, 3, 'Air Blade 125/161', 'xe2.png', 16, 41324.000, '144hz', '2020', '30', 'Ko', 40324.000, 12, 15, '2023-04-18 08:05:05', '2024-02-19 04:22:41'),
(3, 2, 'LEAD 125cc', 'xe8.png', 12, 41324.000, '144hz', '2020', '30', 'Ko', 40324.000, 20, 15, '2023-04-18 08:05:05', '2024-02-19 09:46:55'),
(4, 2, 'Air Blade 125/160', 'xetayga1.png', 27, 39066.000, '144hz', '2020', '30', 'Ko', 38066.000, 20, 15, '2023-04-18 08:05:05', '2024-02-19 05:22:24'),
(5, 2, 'SH350i', 'xe9.jpg', 155, 14899.000, '144hz', '2020', '30', 'Ko', 13899.000, 20, 15, '2023-04-18 08:05:05', '2024-01-08 14:17:55'),
(6, 1, 'SH125i/150i', 'xe20.jpg', 14, 71957.000, '144hz', '2020', '30', 'Ko', 70957.000, NULL, 15, '2023-04-18 08:05:05', '2024-01-08 14:17:55'),
(7, 3, 'CB150R The Streetster', 'xe23.jpg', 15, 105500.000, '144hz', '2020', '30', 'Ko', 95500.000, 20, 15, '2023-04-18 08:05:05', '2023-10-20 20:20:25'),
(8, 3, 'CBR150R', 'xe26.png', 16, 30328.000, '144hz', '2020', '30', 'Ko', 29328.000, 20, 15, '2023-04-18 08:05:05', '2023-05-10 07:29:50'),
(9, 3, 'Winner X', 'xe25.png', 15, 46160.000, '144hz', '2020', '30', 'Ko', 45160.000, 20, 15, '2023-04-18 08:05:05', '2024-01-04 09:01:38'),
(10, 2, 'CBR500R 2022', 'CB150R THE STREETSTER.jpg', 1, 1924900.000, '144hz', '2020', '30', 'Ko', 1824900.000, NULL, 15, '2023-04-18 08:05:05', '2024-01-04 09:01:38'),
(11, 4, 'CB500X 2022', 'xemoto2.jpg', 16, 1937900.000, '144hz', '2020', '30', 'Ko', 1837900.000, 20, 15, '2023-04-18 08:05:05', '2023-05-10 07:29:50'),
(12, 4, 'CB500F 2022', 'xemoto3.jpg', 46, 1844900.000, '144hz', '2020', '30', 'Ko', 1744900.000, 20, 15, '2023-04-18 08:05:05', '2023-05-10 07:18:48'),
(13, 4, 'CB650R', 'xemoto4.png', 16, 246490.000, '144hz', '2020', '30', 'Ko', 246490.000, 20, 15, '2023-04-18 08:05:05', '2023-05-10 07:29:50'),
(14, 4, 'Rebel 500', 'xemoto5.png', 4, 180800.000, '144hz', '2020', '30', 'Ko', 180800.000, 20, 15, '2023-04-18 08:05:05', NULL),
(15, 4, 'Gold Wing', 'xemoto6.png', 748, 989124.000, '144hz', '2020', '30', 'Ko', 989114.000, 20, 15, '2023-04-18 08:05:05', '2023-05-10 07:18:48'),
(16, 4, 'CB1000R 2021', 'xemoto7.png', 64, 5100000.000, '144hz', '2020', '30', 'Ko', 5000000.000, 20, 15, '2023-04-18 08:05:05', '2023-05-10 07:29:50'),
(17, 4, 'CBR650R', 'xemoto8.png', 16, 2544900.000, '144hz', '2020', '30', 'Ko', 2454900.000, 20, 15, '2023-04-18 08:05:05', '2023-05-10 07:29:50'),
(18, 4, 'Africa Twin Adventu', 'xemoto9.jpg', 4, 2544900.000, '144hz', '2020', '30', 'Ko', 2454900.000, 20, 15, '2023-04-18 08:05:05', NULL),
(19, 4, 'Africa Twin 2021', 'xemoto10.jpg', 4, 5904900.000, '144hz', '2020', '30', 'Ko', 5804900.000, 20, 15, '2023-04-18 08:05:05', NULL),
(20, 4, 'CBR1000RR-R', 'xemoto11.png', 128, 9550000.000, '144hz', '2020', '30', 'Ko', 9450000.000, 20, 15, '2023-04-18 08:05:05', '2023-05-10 07:18:48'),
(21, 4, 'Tracer 9', '2021-Yamaha-Tracer-9-2.jpg', 28, 369000.000, '144hz', '2020', '30', 'Ko', 3790000.000, 20, 15, '2023-04-18 08:05:05', '2023-05-10 07:34:29'),
(22, 4, 'R7', 'ymh-motor-vn-2022_yzf690_dpbmc_usa_team-yamaha-blue_s3_cmyk.png', 32, 2690000.000, '144hz', '2020', '30', 'Ko', 2590000.000, 20, 15, '2023-04-18 08:05:05', '2023-05-10 07:18:48'),
(23, 1, 'Exciter 150 Pearl White', 'Exciter-150-Pearl-White-004.png', 46, 458000.000, '144hz', '2020', '30', 'Ko', 448000.000, 20, 15, '2023-04-18 08:05:05', '2023-05-10 07:29:50'),
(24, 1, 'JUPITER FI', 'Jupiter-Mat-Black-004.png', 4, 369000.000, '144hz', '2020', '30', 'Ko', 3790000.000, 20, 15, '2023-04-18 08:05:05', NULL),
(25, 1, 'JUPITER FINN', 'Jupiter-Finn-Silver-Metallic-004.png', 4, 280000.000, '144hz', '2020', '30', 'Ko', 270000.000, 20, 15, '2023-04-18 08:05:05', NULL),
(26, 1, 'NVX 155 VVA', 'Latte-Dark-Grey-004.png', 4, 54500.000, '144hz', '2020', '30', 'Ko', 53500.000, 20, 15, '2023-04-18 08:05:05', NULL),
(27, 2, 'LATTE', 'NVX-Bluish-Gray-004.png', 4, 54500.000, '144hz', '2020', '30', 'Ko', 53500.000, 20, 15, '2023-04-18 08:05:05', NULL),
(28, 2, 'JANUS', 'New-Janus-Black-Metallic-SMK-004.png', 19, 54500.000, '144hz', '2020', '30', 'Ko', 53500.000, 20, 15, '2023-04-18 08:05:05', '2023-05-10 12:33:42'),
(29, 2, 'FREEGO S', 'FreeGo-Mat-Red-SMK-004.png', 8, 54500.000, '144hz', '2020', '30', 'Ko', 53500.000, 20, 15, '2023-04-18 08:05:05', '2023-05-10 07:34:29'),
(30, 2, 'MONSTER ENERGY', 'X30-Monster-004.png', 13, 54500.000, '144hz', '2020', '30', 'Ko', 53500.000, 20, 15, '2023-04-18 08:05:05', '2023-05-10 07:34:29'),
(31, 1, 'Gold Wing', NULL, 2, 20000.000, '144hz', 'ko', 'ko', 'ko', 200000.000, 14, 2, '2023-04-18 02:18:50', '2023-12-27 08:01:25'),
(32, 1, 'Gold Wing', 'NVX-Bluish-Gray-004.png', 2, 300000.000, '144hz', 'ko', 'ko', 'ko', 210000.000, NULL, 23, '2023-04-18 02:21:21', '2023-04-18 08:09:02'),
(33, 1, 'Sh Mode 125cc', 'xe7.png', 10, 222200.000, 'ko', 'ko', 'ko', 'ko', 210000.000, NULL, 3, '2023-05-25 06:43:05', '2023-05-25 06:43:32'),
(36, 2, 'Gold Wing', 'xetayga1.png', 10, 300000.000, '144hz', 'ko', 'ko', 'ko', 12344.000, 10, 10, '2023-12-26 03:59:53', '2023-12-26 03:59:53'),
(37, 2, 'Gold Wingâd3', 'xetayga1.png', 12, 300000.000, '144hz', 'ko', 'ko', 'ko', 12344.000, 10, 10, '2023-12-26 04:08:19', '2023-12-27 07:57:42'),
(38, 2, 'Gold Winggfj', 'xetayga1.png', 10, 300000.000, '144hz', 'ko', 'ko', 'ko', 12344.000, 10, 10, '2023-12-26 13:29:54', '2023-12-26 13:29:54'),
(39, 3, 'Gold Wingg', 'xetayga1.png', 10, 123000.000, 'ko', 'ko', 'ko', 'ko', 20000.000, 2, 23, '2023-12-29 15:38:59', '2023-12-29 15:38:59'),
(78, 2, 'Gold Wingg1', 'Exciter-150-Pearl-White-004.png', 10, 123000.000, 'ko', 'ko', 'ko', 'ko', 20000.000, 2, 23, '2023-12-30 02:45:48', '2023-12-30 02:45:48'),
(79, 3, 'Gold Wingg1', 'noimg.jpg', 10, 123000.000, 'ko', 'ko', 'ko', 'ko', 20000.000, 2, 23, '2023-12-30 02:50:38', '2023-12-30 02:50:38'),
(80, 2, 'Gold Winggtest11', 'FreeGo-Mat-Red-SMK-004.png', 10, 123000.000, 'ko', 'ko', 'ko', 'ko', 20000.000, 2, 23, '2024-01-01 15:31:01', '2024-01-02 15:41:10'),
(82, 16, 'ADa', 'FX3U-32MR-PLC-MITSUBISHI-600x600.jpg', 2, 222200.000, 'ko', '', '', '', 0.000, 2, 2, '2024-02-21 03:49:41', '2024-02-21 03:49:41');

-- --------------------------------------------------------

--
-- Table structure for table `tintuc`
--

CREATE TABLE `tintuc` (
  `id` int(11) NOT NULL,
  `Nhanvien_id` int(11) DEFAULT NULL,
  `Ngaynhap` datetime DEFAULT NULL,
  `Anh` varchar(500) DEFAULT NULL,
  `Mota` varchar(1000) DEFAULT NULL,
  `Tentieude` varchar(200) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `tintuc`
--

INSERT INTO `tintuc` (`id`, `Nhanvien_id`, `Ngaynhap`, `Anh`, `Mota`, `Tentieude`, `created_at`, `updated_at`) VALUES
(1, 2, '2023-03-03 00:00:00', 'dongco1.png', 'Blade 110 Ã„â€˜Ã†Â°Ã¡Â»Â£c thiÃ¡ÂºÂ¿t kÃ¡ÂºÂ¿ hÃ†Â°Ã¡Â»â€ºng Ã„â€˜Ã¡ÂºÂ¿n sÃ¡Â»Â± Ã¢â‚¬Å“Thanh thoÃƒÂ¡t vÃƒÂ  SÃ¡ÂºÂ¯c nÃƒÂ©tÃ¢â‚¬Â vÃƒÂ  sÃ¡Â»Â± hÃƒÂ i hÃƒÂ²a giÃ¡Â»Â¯a tÃ†Â° thÃ¡ÂºÂ¿ ngÃ†Â°Ã¡Â»Âi Ã„â€˜iÃ¡Â»Âu khiÃ¡Â»Æ’n vÃƒÂ  chiÃ¡ÂºÂ¿c xe Ã„â€˜Ã¡Â»Æ’ Ã„â€˜Ã¡ÂºÂ£m bÃ¡ÂºÂ£o tÃ†Â° thÃ¡ÂºÂ¿ khÃƒÂ¡ch hÃƒÂ ng lÃƒÂ¡i xe Ã„â€˜Ã¡ÂºÂ¹p, tÃ¡Â»Â± tin vÃƒÂ  thoÃ¡ÂºÂ£i mÃƒÂ¡i', 'Blead', '2023-04-18 02:31:18', '2023-04-18 02:31:18'),
(2, 3, '0000-00-00 00:00:00', '0978332212', 'HÆ°ng YÃªn', 'nghia11.com', '2023-12-09 01:34:31', '2023-12-09 01:38:14');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'nghiadonhu', 'nghia9x02@gmail.com', '$2y$10$tSg1yl5bqExp/L7eTl1GOu.D8QKWCJVofuvMldp1dqxf2An3kz0eO', '2023-05-24 09:15:37', '2023-05-24 09:15:37'),
(2, 'viet', 'daoviet@gmail.com', '$2y$10$d7It23JlL13dVYjycqK6FenLwxfQSId8GXARK09ACIe.caLARyoLC', '2023-05-24 19:04:49', '2023-05-24 19:04:49'),
(3, 'nghia', 'nghia9x02@gmail.com', '1223', '2023-12-09 01:58:59', '2024-01-09 14:19:20'),
(4, 'nghia2', 'nghia9x02@gmail.com', '$2b$10$GITDyZv8As6nlSW2pjUFfOzBBP5VmGKhmr3VYDob1MeeevjpslO.e', '2024-01-09 14:42:42', NULL),
(5, 'nghia3', 'nghia9x02@gmail.com', '$2b$10$PKxo8CV7Lx9BA.I0FFp00uFEzfLfn03u3e77imuMWY0akqrwQpSsC', '2024-01-09 15:49:46', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ctdh`
--
ALTER TABLE `ctdh`
  ADD PRIMARY KEY (`Ctdh_id`),
  ADD KEY `Donhang_id` (`Donhang_id`),
  ADD KEY `Sanpham_id` (`Sanpham_id`);

--
-- Indexes for table `cthdn`
--
ALTER TABLE `cthdn`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Hoadonnhap_id` (`Hoadonnhap_id`),
  ADD KEY `Sanpham_id` (`Sanpham_id`);

--
-- Indexes for table `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Khachhang_id` (`Khachhang_id`);

--
-- Indexes for table `hoadonnhap`
--
ALTER TABLE `hoadonnhap`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Nhanvien_id` (`Nhanvien_id`),
  ADD KEY `Ncc_id` (`Ncc_id`);

--
-- Indexes for table `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loaisanpham`
--
ALTER TABLE `loaisanpham`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ncc`
--
ALTER TABLE `ncc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phanmem`
--
ALTER TABLE `phanmem`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Maloai_id` (`Maloai_id`);

--
-- Indexes for table `tintuc`
--
ALTER TABLE `tintuc`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Nhanvien_id` (`Nhanvien_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ctdh`
--
ALTER TABLE `ctdh`
  MODIFY `Ctdh_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=163;

--
-- AUTO_INCREMENT for table `cthdn`
--
ALTER TABLE `cthdn`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `donhang`
--
ALTER TABLE `donhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `hoadonnhap`
--
ALTER TABLE `hoadonnhap`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `loaisanpham`
--
ALTER TABLE `loaisanpham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `ncc`
--
ALTER TABLE `ncc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `nhanvien`
--
ALTER TABLE `nhanvien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `phanmem`
--
ALTER TABLE `phanmem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `tintuc`
--
ALTER TABLE `tintuc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ctdh`
--
ALTER TABLE `ctdh`
  ADD CONSTRAINT `ctdh_ibfk_1` FOREIGN KEY (`Donhang_id`) REFERENCES `donhang` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ctdh_ibfk_2` FOREIGN KEY (`Sanpham_id`) REFERENCES `sanpham` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `cthdn`
--
ALTER TABLE `cthdn`
  ADD CONSTRAINT `cthdn_ibfk_1` FOREIGN KEY (`Hoadonnhap_id`) REFERENCES `hoadonnhap` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cthdn_ibfk_2` FOREIGN KEY (`Sanpham_id`) REFERENCES `sanpham` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `donhang`
--
ALTER TABLE `donhang`
  ADD CONSTRAINT `donhang_ibfk_1` FOREIGN KEY (`Khachhang_id`) REFERENCES `khachhang` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `hoadonnhap`
--
ALTER TABLE `hoadonnhap`
  ADD CONSTRAINT `hoadonnhap_ibfk_1` FOREIGN KEY (`Nhanvien_id`) REFERENCES `nhanvien` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `hoadonnhap_ibfk_2` FOREIGN KEY (`Ncc_id`) REFERENCES `ncc` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_ibfk_1` FOREIGN KEY (`Maloai_id`) REFERENCES `loaisanpham` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tintuc`
--
ALTER TABLE `tintuc`
  ADD CONSTRAINT `tintuc_ibfk_1` FOREIGN KEY (`Nhanvien_id`) REFERENCES `nhanvien` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
