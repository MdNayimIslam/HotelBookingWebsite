-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 18, 2023 at 06:02 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `HotelBookingWebsite`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_cred`
--

CREATE TABLE `admin_cred` (
  `sr_no` int(11) NOT NULL,
  `admin_name` varchar(200) NOT NULL,
  `admin_pass` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_cred`
--

INSERT INTO `admin_cred` (`sr_no`, `admin_name`, `admin_pass`) VALUES
(2, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `booking_details`
--

CREATE TABLE `booking_details` (
  `sr_no` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL,
  `room_name` varchar(200) NOT NULL,
  `price` int(11) NOT NULL,
  `total_pay` int(11) NOT NULL,
  `room_no` varchar(100) DEFAULT NULL,
  `user_name` varchar(200) NOT NULL DEFAULT 'pending',
  `phonenum` bigint(20) NOT NULL,
  `address` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking_details`
--

INSERT INTO `booking_details` (`sr_no`, `booking_id`, `room_name`, `price`, `total_pay`, `room_no`, `user_name`, `phonenum`, `address`) VALUES
(42, 44, 'A', 1, 2, '201', 'NAYIM', 178090, 'RAJSHAHI'),
(43, 45, 'Couple Room', 497, 9940, NULL, 'MD.NAYIM', 908235, 'PABA, RAJSHAHI.'),
(44, 46, 'Couple Room', 497, 6958, 'nayim', 'MD.NAYIM ISLAM', 1780908235, 'ALIGONJ BATHANPARA, RAJPARA, PABA, RAJSHAHI.'),
(45, 47, 'q', 1, 14, NULL, 'NAYIM ISLAM', 17809082, 'ALIGONJ BATHANPARA'),
(46, 48, 'Couple Room', 497, 2485, NULL, 'Abdullag', 8235, 'RAJPARA, PABA, RAJSHAHI.'),
(47, 49, 'Couple Room', 497, 1988, 'h', 'MD. Abdullah', 90823, 'PABA'),
(48, 50, 'Couple Room', 497, 497, 'bn', 'MD.NAYIM ISLAM', 1780908235, 'ALIGONJ BATHANPARA, RAJPARA, PABA, RAJSHAHI.'),
(49, 51, 'Couple Room', 497, 2485, '78', 'MD.Alamin', 178098808235, 'BATHANPARA'),
(50, 52, 'A', 1, 8, '98', 'MD.sakib', 80908235, 'RAJSHAHI'),
(51, 53, 'Couple Room', 497, 7455, 'n', 'MD.NAYIM ISLAM', 1780908235, 'ALIGONJ BATHANPARA, RAJPARA, PABA, RAJSHAHI.'),
(52, 54, 'A', 1, 8, NULL, 'ISLAM', 1708235, 'ALIGONJ BATHANPARA, RAJPARA, PABA, RAJSHAHI.'),
(53, 55, 'Couple Room', 497, 3479, NULL, 'MD.NAYIM ISLAM', 1780908235, 'ALIGONJ BATHANPARA, RAJPARA, PABA, RAJSHAHI.'),
(54, 56, 'Couple Room', 497, 2982, NULL, 'MD.NAYIM ISLAM', 1780908235, 'ALIGONJ BATHANPARA, RAJPARA, PABA, RAJSHAHI.'),
(55, 57, 'Couple Room', 497, 11431, NULL, 'NA', 1521728832, 'ALIGONJ BATHANPARA, RAJPARA, PABA, RAJSHAHI.'),
(56, 58, 'Couple Room', 497, 5964, 'n', 'NA', 1521728832, 'ALIGONJ BATHANPARA, RAJPARA, PABA, RAJSHAHI.'),
(57, 59, 'Couple Room', 497, 497, 'n', 'NA', 1521728832, 'ALIGONJ BATHANPARA, RAJPARA, PABA, RAJSHAHI.'),
(58, 60, 'Couple Room', 497, 994, 'n', 'NA', 1521728832, 'ALIGONJ BATHANPARA, RAJPARA, PABA, RAJSHAHI.'),
(59, 61, 'nayim', 500, 2000, 'n', 'NA', 1521728832, 'ALIGONJ BATHANPARA, RAJPARA, PABA, RAJSHAHI.'),
(60, 62, 'Couple Room', 497, 5964, NULL, 'NA', 1521728832, 'ALIGONJ BATHANPARA, RAJPARA, PABA, RAJSHAHI.'),
(61, 63, 'Couple Room', 497, 5467, NULL, 'NA', 1521728832, 'ALIGONJ BATHANPARA, RAJPARA, PABA, RAJSHAHI.');

-- --------------------------------------------------------

--
-- Table structure for table `booking_order`
--

CREATE TABLE `booking_order` (
  `booking_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `check_in` date NOT NULL,
  `check_out` date NOT NULL,
  `arrival` int(11) DEFAULT 0,
  `refund` int(11) DEFAULT NULL,
  `booking_status` varchar(100) DEFAULT 'pending',
  `order_id` varchar(200) NOT NULL,
  `trans_id` varchar(200) DEFAULT NULL,
  `trans_amt` int(11) DEFAULT NULL,
  `trans_status` varchar(200) DEFAULT 'pending',
  `trans_resp_msg` varchar(200) DEFAULT NULL,
  `rate_review` int(11) DEFAULT NULL,
  `datentime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking_order`
--

INSERT INTO `booking_order` (`booking_id`, `user_id`, `room_id`, `check_in`, `check_out`, `arrival`, `refund`, `booking_status`, `order_id`, `trans_id`, `trans_amt`, `trans_status`, `trans_resp_msg`, `rate_review`, `datentime`) VALUES
(44, 58, 5, '2023-01-16', '2023-01-18', 1, NULL, 'booked', 'ORD_582895408', '230116233138l3l3UVv13SXtnt8', 2, 'VALID', 'Payment successful', 0, '2023-01-16 23:31:35'),
(45, 58, 2, '2023-01-10', '2023-01-30', 0, 1, 'cancelled', 'ORD_581795292', '230116233214q3bEgcDDnCoFcFG', 9940, 'VALID', 'Payment successful', NULL, '2023-01-16 23:32:11'),
(46, 58, 2, '2023-01-17', '2023-01-31', 1, NULL, 'booked', 'ORD_588453993', '230116233231pAqVdnLayiQRqXj', 6958, 'VALID', 'Payment successful', 1, '2023-01-16 23:32:28'),
(47, 58, 6, '2023-01-17', '2023-01-31', 0, 1, 'cancelled', 'ORD_587925318', '230116233307Umhmk5Kbq2T27GF', 14, 'VALID', 'Payment successful', NULL, '2023-01-16 23:33:03'),
(48, 58, 2, '2023-01-26', '2023-01-31', 0, 1, 'cancelled', 'ORD_585328210', '230116233343QsX2jcbm0GppVcl', 2485, 'VALID', 'Payment successful', NULL, '2023-01-16 23:33:40'),
(49, 58, 2, '2023-01-26', '2023-01-30', 1, NULL, 'booked', 'ORD_587531514', '2301162335201AefuZoJVYpDtCC', 1988, 'VALID', 'Payment successful', 1, '2023-01-16 23:35:17'),
(50, 58, 2, '2023-01-30', '2023-01-31', 1, NULL, 'booked', 'ORD_581492240', '230116233542F2m2ADhjf2Lg5Q4', 497, 'VALID', 'Payment successful', 1, '2023-01-16 23:35:39'),
(51, 58, 2, '2023-01-25', '2023-01-30', 1, NULL, 'booked', 'ORD_587921727', '230116233615BOnBe8pF5S7ZAD3', 2485, 'VALID', 'Payment successful', 1, '2023-01-16 23:36:12'),
(52, 58, 5, '2023-01-23', '2023-01-31', 1, NULL, 'booked', 'ORD_581079501', '23011623365309HxDcK1pk7QY4i', 8, 'VALID', 'Payment successful', 1, '2023-01-16 23:36:50'),
(53, 58, 2, '2023-01-11', '2023-01-26', 1, NULL, 'booked', 'ORD_588578270', '230116233712BErD6e057zascDK', 7455, 'VALID', 'Payment successful', 0, '2023-01-16 23:37:09'),
(54, 58, 5, '2023-01-23', '2023-01-31', 0, 1, 'cancelled', 'ORD_588808256', '2301162337321E6TuQfDHbj2k9B', 8, 'VALID', 'Payment successful', NULL, '2020-01-16 23:37:29'),
(55, 58, 2, '2023-01-24', '2023-01-31', 0, NULL, 'pending', 'ORD_586669272', NULL, NULL, 'pending', NULL, NULL, '2022-06-16 23:37:44'),
(56, 58, 2, '2023-01-24', '2023-01-30', 0, NULL, 'pending', 'ORD_58160013', NULL, NULL, 'pending', NULL, NULL, '2023-01-16 23:49:20'),
(57, 58, 2, '2023-01-17', '2023-02-09', 0, NULL, 'pending', 'ORD_586170105', NULL, NULL, 'pending', NULL, NULL, '2023-01-17 17:33:58'),
(58, 58, 2, '2023-01-17', '2023-01-29', 1, NULL, 'booked', 'ORD_583587925', '230117174056mvA2vxgwwiJAovS', 5964, 'VALID', 'Payment successful', 0, '2023-01-17 17:40:52'),
(59, 58, 2, '2023-01-31', '2023-02-01', 1, NULL, 'booked', 'ORD_584655182', '2301172035285eeu38YzKs7Ge9N', 497, 'VALID', 'Payment successful', 0, '2022-11-17 20:35:24'),
(60, 58, 2, '2023-02-01', '2023-02-03', 1, NULL, 'booked', 'ORD_587514670', '23011810347MgjF3FpzKmkjC6v', 994, 'VALID', 'Payment successful', 0, '2022-01-18 01:03:44'),
(61, 58, 8, '2023-01-25', '2023-01-29', 1, NULL, 'booked', 'ORD_585132466', '2301181040813uM9CTZlYEQPe4', 2000, 'VALID', 'Payment successful', 0, '2023-01-18 01:04:05'),
(62, 58, 2, '2023-01-19', '2023-01-31', 0, NULL, 'pending', 'ORD_581297301', NULL, NULL, 'pending', NULL, NULL, '2023-01-18 09:50:16'),
(63, 58, 2, '2023-01-20', '2023-01-31', 0, NULL, 'pending', 'ORD_587489398', NULL, NULL, 'pending', NULL, NULL, '2023-01-18 09:52:21');

-- --------------------------------------------------------

--
-- Table structure for table `carousel`
--

CREATE TABLE `carousel` (
  `sr_no` int(11) NOT NULL,
  `image` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `carousel`
--

INSERT INTO `carousel` (`sr_no`, `image`) VALUES
(2, 'IMG_38353.png'),
(3, 'IMG_44702.png'),
(4, 'IMG_99120.png'),
(5, 'IMG_75724.png'),
(6, 'IMG_69001.png'),
(9, 'IMG_12150.png');

-- --------------------------------------------------------

--
-- Table structure for table `contact_details`
--

CREATE TABLE `contact_details` (
  `sr_no` int(11) NOT NULL,
  `address` varchar(500) NOT NULL,
  `gmap` varchar(500) NOT NULL,
  `pn1` bigint(20) NOT NULL,
  `pn2` bigint(20) NOT NULL,
  `email` varchar(200) NOT NULL,
  `fb` varchar(200) NOT NULL,
  `insta` varchar(200) NOT NULL,
  `tw` varchar(200) NOT NULL,
  `iframe` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact_details`
--

INSERT INTO `contact_details` (`sr_no`, `address`, `gmap`, `pn1`, `pn2`, `email`, `fb`, `insta`, `tw`, `iframe`) VALUES
(1, 'ALIGONJ BATHANPARA, RAJPARA, PABA, RAJSHAHI.', 'https://goo.gl/maps/93HrgAy92EwCv18', 1780908235, 1780908235, 'nayimislam0@gmail.com', 'https://www.facebook.com/mdnayimislam.eng', 'https://www.instagram.com/mdnayimislam.eng', 'https://www.twiter.com/', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d116289.072047589!2d88.53597559053529!3d24.380137954371648!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39fbefa96a38d031:0x10f93a950ed6f410!2z4Kaw4Ka-4Kac4Ka24Ka-4Ka54KeA!5e0!3m2!1sbn!2sbd!4v1673462422391!5m2!1sbn!2sbd');

-- --------------------------------------------------------

--
-- Table structure for table `facilities`
--

CREATE TABLE `facilities` (
  `id` int(11) NOT NULL,
  `icon` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `description` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `facilities`
--

INSERT INTO `facilities` (`id`, `icon`, `name`, `description`) VALUES
(1, 'IMG_59657.svg', 'AC', 'You can use it anytime. No charge will be deducted for this.'),
(2, 'IMG_90760.svg', 'Oven', 'You can use it anytime. No charge will be deducted for this.'),
(3, 'IMG_31294.svg', 'Heater', 'You can use it anytime. No charge will be deducted for this.'),
(4, 'IMG_35533.svg', 'TV', 'You can use it anytime. No charge will be deducted for this.'),
(5, 'IMG_63564.svg', 'wifi', 'You can use it anytime. No charge will be deducted for this.'),
(6, 'IMG_50782.svg', 'masssage', 'You can use it anytime. the charge will be deducted for this.');

-- --------------------------------------------------------

--
-- Table structure for table `features`
--

CREATE TABLE `features` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `features`
--

INSERT INTO `features` (`id`, `name`) VALUES
(1, '1 Room'),
(2, '2 Room'),
(3, '3 Room'),
(4, '4 Room'),
(6, '1 Bathroom'),
(7, '2 Bathroom'),
(8, '3 Bathroom'),
(9, '4 Bathroom'),
(11, '1 Balcony'),
(12, '2 Balcony'),
(13, '3 Balcony'),
(14, '4 Balcony'),
(15, '1 Sofa'),
(16, '2 Sofa'),
(17, '3 Sofa'),
(18, '4 Sofa'),
(20, '5 Sofa');

-- --------------------------------------------------------

--
-- Table structure for table `rating_review`
--

CREATE TABLE `rating_review` (
  `sr_no` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `review` varchar(200) NOT NULL,
  `seen` int(11) NOT NULL DEFAULT 0,
  `datentime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rating_review`
--

INSERT INTO `rating_review` (`sr_no`, `booking_id`, `room_id`, `user_id`, `rating`, `review`, `seen`, `datentime`) VALUES
(6, 52, 5, 58, 5, '5Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempora quidem animi vel harum voluptn cupiditate sed consectetur quis possimus aspernatur quam in quibusdam molestia.', 0, '2020-01-17 20:38:12'),
(7, 51, 2, 58, 4, '4Tempora quidem animi vel harum voluptn cupiditate sed consectetur quis possimus aspernatur quam in quibusdam molestia.', 0, '2023-01-17 20:38:27'),
(8, 50, 2, 58, 1, '1possimus aspernatur quam in quibusdam molestia.', 0, '2023-01-17 20:38:51');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `area` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `adult` int(11) NOT NULL,
  `children` int(11) NOT NULL,
  `description` varchar(500) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `removed` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `name`, `area`, `price`, `quantity`, `adult`, `children`, `description`, `status`, `removed`) VALUES
(2, 'Couple Room', 500, 497, 2, 2, 1, 'The “HOTEL BOOKING WEBSITE” is a web-based application that allows handling all hotel activities in online.', 1, 0),
(3, 'a', 1, 1, 1, 1, 1, 'aaa', 1, 0),
(4, 'a', 1, 1, 1, 1, 1, 'aa', 1, 0),
(5, 'A', 1, 1, 1, 1, 1, 'a', 1, 0),
(6, 'q', 1, 1, 1, 1, 1, 'a', 1, 0),
(7, 'a', 1, 1, 1, 1, 1, '1', 0, 0),
(8, 'nayim', 1222, 500, 2, 2, 2, 'bhbhh hbhbh hbh', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `room_facilities`
--

CREATE TABLE `room_facilities` (
  `sr_no` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `facilities_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `room_facilities`
--

INSERT INTO `room_facilities` (`sr_no`, `room_id`, `facilities_id`) VALUES
(5, 2, 1),
(6, 2, 4),
(7, 2, 5),
(11, 6, 2),
(12, 7, 2),
(13, 8, 2),
(14, 8, 3),
(15, 8, 6),
(16, 3, 2),
(17, 3, 3),
(18, 3, 4),
(19, 4, 1),
(20, 4, 2),
(21, 4, 3),
(22, 4, 4),
(23, 4, 5),
(24, 4, 6);

-- --------------------------------------------------------

--
-- Table structure for table `room_features`
--

CREATE TABLE `room_features` (
  `sr_no` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `features_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `room_features`
--

INSERT INTO `room_features` (`sr_no`, `room_id`, `features_id`) VALUES
(5, 2, 1),
(6, 2, 6),
(7, 2, 11),
(8, 2, 15),
(9, 6, 2),
(10, 7, 2),
(11, 8, 2),
(12, 8, 7),
(13, 8, 12),
(14, 8, 16),
(15, 3, 3),
(16, 3, 4),
(17, 3, 6),
(18, 3, 7),
(19, 3, 13),
(20, 3, 14),
(21, 3, 15),
(22, 3, 16),
(23, 4, 1),
(24, 4, 2),
(25, 4, 3),
(26, 4, 4),
(27, 4, 6),
(28, 4, 7),
(29, 4, 8),
(30, 4, 9),
(31, 4, 11),
(32, 4, 12),
(33, 4, 13),
(34, 4, 14),
(35, 4, 15),
(36, 4, 16),
(37, 4, 17),
(38, 4, 18),
(39, 4, 20);

-- --------------------------------------------------------

--
-- Table structure for table `room_images`
--

CREATE TABLE `room_images` (
  `sr_no` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `image` varchar(500) NOT NULL,
  `thumb` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `room_images`
--

INSERT INTO `room_images` (`sr_no`, `room_id`, `image`, `thumb`) VALUES
(22, 2, 'IMG_31315.jpg', 0),
(23, 2, 'IMG_30934.png', 0),
(24, 2, 'IMG_31920.png', 0),
(25, 2, 'IMG_84581.png', 1),
(26, 3, 'IMG_79281.png', 1),
(27, 3, 'IMG_99412.png', 0),
(28, 3, 'IMG_67771.png', 0),
(29, 3, 'IMG_43845.png', 0),
(30, 4, 'IMG_76716.png', 0),
(31, 4, 'IMG_33709.png', 1),
(32, 4, 'IMG_98099.png', 0),
(33, 5, 'IMG_85722.png', 0),
(34, 5, 'IMG_60479.png', 0),
(35, 5, 'IMG_62365.jpg', 0),
(36, 5, 'IMG_39868.png', 1),
(37, 6, 'IMG_24199.png', 1),
(38, 6, 'IMG_52181.png', 0),
(39, 7, 'IMG_41061.png', 1),
(40, 8, 'IMG_62453.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `sr_no` int(11) NOT NULL,
  `site_title` varchar(200) NOT NULL,
  `site_about` varchar(5000) NOT NULL,
  `shutdown` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`sr_no`, `site_title`, `site_about`, `shutdown`) VALUES
(1, 'Nhotel', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempora quidem animi vel harum voluptn cupiditate sed consectetur quis possimus aspernatur quam in quibusdam molestia.', 0);

-- --------------------------------------------------------

--
-- Table structure for table `team_details`
--

CREATE TABLE `team_details` (
  `sr_no` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `picture` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `team_details`
--

INSERT INTO `team_details` (`sr_no`, `name`, `picture`) VALUES
(3, 'Md. Abdullah', 'IMG_15027.jpg'),
(4, 'Md. Alamin', 'IMG_38529.jpg'),
(5, 'Md. Sakib Hosen', 'IMG_57677.jpg'),
(6, 'Md. Munna', 'IMG_70983.jpg'),
(7, 'Md. Yasin Ali', 'IMG_73926.jpg'),
(10, 'Md. Nayim', 'IMG_52771.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user_cred`
--

CREATE TABLE `user_cred` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `address` varchar(500) NOT NULL,
  `phonenum` varchar(200) NOT NULL,
  `pincode` int(11) NOT NULL,
  `dob` date NOT NULL,
  `profile` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `is_verified` int(11) NOT NULL DEFAULT 0,
  `token` varchar(200) DEFAULT NULL,
  `t_expire` date DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `datentime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_cred`
--

INSERT INTO `user_cred` (`id`, `name`, `email`, `address`, `phonenum`, `pincode`, `dob`, `profile`, `password`, `is_verified`, `token`, `t_expire`, `status`, `datentime`) VALUES
(57, 'abdullah', 'abdullah@gmail.com', 'Dhaka', '01521728832', 111, '2022-12-13', 'abdullah.jpeg', '1', 0, '21e2e212e12e12e', NULL, 0, '2023-01-14 13:50:47'),
(58, 'NA', 'md.nayimislam.eng@gmail.com', 'ALIGONJ BATHANPARA, RAJPARA, PABA, RAJSHAHI.', '01521728832', 62, '2023-01-15', 'IMG_15457.jpeg', '$2y$10$FdH.ZG.PtjFAZa8JWi74K.kK6VSH.8MZ7TwMaiT2zC/YN1PmV0Pwe', 1, NULL, NULL, 1, '2020-01-16 02:27:47');

-- --------------------------------------------------------

--
-- Table structure for table `user_queries`
--

CREATE TABLE `user_queries` (
  `sr_no` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `message` varchar(500) NOT NULL,
  `datentime` datetime NOT NULL DEFAULT current_timestamp(),
  `seen` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_queries`
--

INSERT INTO `user_queries` (`sr_no`, `name`, `email`, `subject`, `message`, `datentime`, `seen`) VALUES
(31, 'Nayim', 'nayim0@gmail.com', 'HOTEL', 'HOTEL Lorem ipsum dolor sit amet consectetur adipisicing elit.', '2020-01-18 07:57:09', 0),
(32, 'Nayim', 'nayim0@gmail.com', 'HOTEL', 'HOTEL Lorem ipsum dolor sit amet consectetur adipisicing elit.', '2022-11-18 07:57:52', 1),
(33, 'Nayim', 'nayim0@gmail.com', 'HOTEL', 'HOTEL Lorem ipsum dolor sit amet consectetur adipisicing elit.', '2020-01-18 08:00:18', 1),
(34, 'nayim', 'nayimislam@gmail.com', 'HOTEL', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempora quidem animi vel harum voluptn cupiditate sed consectetur quis possimus aspernatur quam in quibusdam molestia.', '2023-01-18 08:00:58', 1),
(35, 'MD.NAYIM ISLAM', 'md.nayimislam.eng@gmail.com', 'HOTEL', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempora quidem animi vel harum voluptn cupiditate sed consectetur quis possimus aspernatur quam in quibusdam molestia.', '2023-01-18 08:01:30', 1),
(36, 'NN', 'NN@GMAIL.COM', 'N', 'NN', '2023-01-18 09:44:07', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_cred`
--
ALTER TABLE `admin_cred`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `booking_details`
--
ALTER TABLE `booking_details`
  ADD PRIMARY KEY (`sr_no`),
  ADD KEY `booking_details_id` (`booking_id`);

--
-- Indexes for table `booking_order`
--
ALTER TABLE `booking_order`
  ADD PRIMARY KEY (`booking_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `room_id` (`room_id`);

--
-- Indexes for table `carousel`
--
ALTER TABLE `carousel`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `contact_details`
--
ALTER TABLE `contact_details`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `facilities`
--
ALTER TABLE `facilities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `features`
--
ALTER TABLE `features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rating_review`
--
ALTER TABLE `rating_review`
  ADD PRIMARY KEY (`sr_no`),
  ADD KEY `rating_review_id` (`booking_id`),
  ADD KEY `rating_review_room_id` (`room_id`),
  ADD KEY `rating_review_user_id` (`user_id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room_facilities`
--
ALTER TABLE `room_facilities`
  ADD PRIMARY KEY (`sr_no`),
  ADD KEY `room_id` (`room_id`),
  ADD KEY `facilities_id` (`facilities_id`);

--
-- Indexes for table `room_features`
--
ALTER TABLE `room_features`
  ADD PRIMARY KEY (`sr_no`),
  ADD KEY `roomid` (`room_id`),
  ADD KEY `featuresid` (`features_id`);

--
-- Indexes for table `room_images`
--
ALTER TABLE `room_images`
  ADD PRIMARY KEY (`sr_no`),
  ADD KEY `roomsid` (`room_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `team_details`
--
ALTER TABLE `team_details`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `user_cred`
--
ALTER TABLE `user_cred`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_queries`
--
ALTER TABLE `user_queries`
  ADD PRIMARY KEY (`sr_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_cred`
--
ALTER TABLE `admin_cred`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `booking_details`
--
ALTER TABLE `booking_details`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `booking_order`
--
ALTER TABLE `booking_order`
  MODIFY `booking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `carousel`
--
ALTER TABLE `carousel`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `contact_details`
--
ALTER TABLE `contact_details`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `facilities`
--
ALTER TABLE `facilities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `features`
--
ALTER TABLE `features`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `rating_review`
--
ALTER TABLE `rating_review`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `room_facilities`
--
ALTER TABLE `room_facilities`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `room_features`
--
ALTER TABLE `room_features`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `room_images`
--
ALTER TABLE `room_images`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `team_details`
--
ALTER TABLE `team_details`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user_cred`
--
ALTER TABLE `user_cred`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `user_queries`
--
ALTER TABLE `user_queries`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking_details`
--
ALTER TABLE `booking_details`
  ADD CONSTRAINT `booking_details_id` FOREIGN KEY (`booking_id`) REFERENCES `booking_order` (`booking_id`);

--
-- Constraints for table `booking_order`
--
ALTER TABLE `booking_order`
  ADD CONSTRAINT `booking_order_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_cred` (`id`),
  ADD CONSTRAINT `booking_order_ibfk_2` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`);

--
-- Constraints for table `rating_review`
--
ALTER TABLE `rating_review`
  ADD CONSTRAINT `rating_review_id` FOREIGN KEY (`booking_id`) REFERENCES `booking_order` (`booking_id`),
  ADD CONSTRAINT `rating_review_room_id` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`),
  ADD CONSTRAINT `rating_review_user_id` FOREIGN KEY (`user_id`) REFERENCES `user_cred` (`id`);

--
-- Constraints for table `room_facilities`
--
ALTER TABLE `room_facilities`
  ADD CONSTRAINT `facilities_id` FOREIGN KEY (`facilities_id`) REFERENCES `facilities` (`id`) ON UPDATE NO ACTION,
  ADD CONSTRAINT `room_id` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`) ON UPDATE NO ACTION;

--
-- Constraints for table `room_features`
--
ALTER TABLE `room_features`
  ADD CONSTRAINT `featuresid` FOREIGN KEY (`features_id`) REFERENCES `features` (`id`) ON UPDATE NO ACTION,
  ADD CONSTRAINT `roomid` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`) ON UPDATE NO ACTION;

--
-- Constraints for table `room_images`
--
ALTER TABLE `room_images`
  ADD CONSTRAINT `roomsid` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
