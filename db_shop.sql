-- phpMyAdmin SQL Dump
-- version 4.4.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 18, 2016 at 11:16 AM
-- Server version: 5.6.25
-- PHP Version: 5.6.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
  `customer_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `organisation_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `user_id`, `organisation_name`) VALUES
(1, 3, NULL),
(2, 4, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customer_payment_methods`
--

CREATE TABLE IF NOT EXISTS `customer_payment_methods` (
  `customer_payment_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `payment_method_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `credit_card_number` int(11) DEFAULT NULL,
  `payment_method_details` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE IF NOT EXISTS `invoices` (
  `invoice_number` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `invoice_status_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `invoice_date` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `invoice_details` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
  `id` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `parentid` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `created_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `access` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `trash` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `level`, `title`, `link`, `parentid`, `created`, `created_by`, `access`, `status`, `trash`) VALUES
(1, 1, 'Trang chủ', 'trang-chu', 0, '0000-00-00 00:00:00', 'Ngô Tiến Phát', 1, 1, 1),
(2, 1, 'Giới thiệu', 'gioi-thieu', 0, '0000-00-00 00:00:00', 'Ngô Tiến Phát', 1, 1, 1),
(3, 1, 'Sản phẩm', 'san-pham', 0, '0000-00-00 00:00:00', 'Ngô Tiến Phát', 1, 1, 1),
(4, 1, 'Liên hệ', 'lien-he', 0, '0000-00-00 00:00:00', 'Ngô Tiến Phát', 1, 1, 1),
(5, 1, 'Dịch vụ', 'dich-vu', 0, '0000-00-00 00:00:00', 'Ngô Tiến Phát', 1, 1, 1),
(6, 1, 'Tin tức', 'tin-tuc', 0, '0000-00-00 00:00:00', 'Ngô Tiến Phát', 1, 1, 1),
(7, 2, 'Thời trang nam', 'thoi-trang-nam', 3, '0000-00-00 00:00:00', 'Ngô Tiến Phát', 1, 1, 1),
(8, 2, 'Thời trang nữ', 'thoi-trang-nu', 3, '0000-00-00 00:00:00', 'Ngô Tiến Phát', 1, 1, 1),
(9, 2, 'Thời trang trẻ em', 'thoi-trang-tre-em', 3, '0000-00-00 00:00:00', 'Ngô Tiến Phát', 1, 1, 1),
(10, 2, 'Phụ kiện', 'phu-kien', 3, '0000-00-00 00:00:00', 'Ngô Tiến Phát', 1, 1, 1),
(11, 3, 'Giầy nam', 'giay-nam', 7, '0000-00-00 00:00:00', 'Ngô Tiến Phát', 1, 1, 1),
(12, 3, 'Áo sơ mi nam', 'ao-so-mi-nam', 7, '0000-00-00 00:00:00', 'Ngô Tiến Phát', 1, 1, 1),
(13, 3, 'Áo khoác nam', 'ao-khoac-nam', 7, '0000-00-00 00:00:00', 'Ngô Tiến Phát', 1, 1, 1),
(14, 3, 'Đồ vest nam', 'do-vest-nam', 7, '0000-00-00 00:00:00', 'Ngô Tiến Phát', 1, 1, 1),
(15, 3, 'Áo thun nam', 'ao-thun-nam', 7, '0000-00-00 00:00:00', 'Ngô Tiến Phát', 1, 1, 1),
(16, 3, 'Áo len nam', 'ao-len-nam', 7, '0000-00-00 00:00:00', 'Ngô Tiến Phát', 1, 1, 1),
(17, 3, 'Váy đầm', 'vay-dam', 8, '0000-00-00 00:00:00', 'Ngô Tiến Phát', 1, 1, 1),
(18, 3, 'Áo sơmi nữ', 'ao-somi-nu', 8, '0000-00-00 00:00:00', 'Ngô Tiến Phát', 1, 1, 1),
(19, 3, 'Áo len nữ', 'ao-len-nu', 8, '0000-00-00 00:00:00', 'Ngô Tiến Phát', 1, 1, 1),
(20, 3, 'Áo thun nữ', 'ao-thun-nu', 8, '0000-00-00 00:00:00', 'Ngô Tiến Phát', 1, 1, 1),
(21, 3, 'Áo kiểu nữ', 'ao-kieu-nu', 8, '0000-00-00 00:00:00', 'Ngô Tiến Phát', 1, 1, 1),
(22, 3, 'Áo khoác nữ', 'ao-khoac-nu', 8, '0000-00-00 00:00:00', 'Ngô Tiến Phát', 1, 1, 1),
(23, 3, 'Giày cao gót', 'giay-cao-got', 8, '0000-00-00 00:00:00', 'Ngô Tiến Phát', 1, 1, 1),
(24, 3, 'Giày bệt nữ', 'giay-bet-nu', 8, '0000-00-00 00:00:00', 'Ngô Tiến Phát', 1, 1, 1),
(25, 3, 'Giày sandal nữ', 'giay-sandal-nu', 8, '0000-00-00 00:00:00', 'Ngô Tiến Phát', 1, 1, 1),
(26, 3, 'Giày búp bê nữ', 'giay-bup-be-nu', 8, '0000-00-00 00:00:00', 'Ngô Tiến Phát', 1, 1, 1),
(27, 3, 'Quần áo bé trai', 'quan-ao-be-trai', 9, '0000-00-00 00:00:00', 'Ngô Tiến Phát', 1, 1, 1),
(28, 3, 'Quần áo bé gái', 'quan-ao-be-gai', 9, '0000-00-00 00:00:00', 'Ngô Tiến Phát', 1, 1, 1),
(29, 3, 'Giày bé trai', 'giay-be-trai', 9, '0000-00-00 00:00:00', 'Ngô Tiến Phát', 1, 1, 1),
(30, 3, 'Giày bé gái', 'giay-be-gai', 9, '0000-00-00 00:00:00', 'Ngô Tiến Phát', 1, 1, 1),
(31, 3, 'Đồng hồ', 'dong-ho', 10, '0000-00-00 00:00:00', 'Ngô Tiến Phát', 1, 1, 1),
(32, 3, 'Mắt kính', 'mat-kinh', 10, '0000-00-00 00:00:00', 'Ngô Tiến Phát', 1, 1, 1),
(33, 3, 'Thắt lưng', 'that-lung', 10, '0000-00-00 00:00:00', 'Ngô Tiến Phát', 1, 1, 1),
(34, 3, 'Bóp', 'bop', 10, '0000-00-00 00:00:00', 'Ngô Tiến Phát', 1, 1, 0),
(35, 3, 'Nón', 'non', 10, '0000-00-00 00:00:00', 'Ngô Tiến Phát', 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_100000_create_password_resets_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `order_status_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date_order_placed` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE IF NOT EXISTS `order_items` (
  `order_item_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `oder_item_status_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `order_item_quantity` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_item_price` decimal(10,2) DEFAULT NULL,
  `RMA_number` int(11) DEFAULT NULL,
  `RMA_issued_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `RMA_order_item_details` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE IF NOT EXISTS `payments` (
  `payment_id` int(11) NOT NULL,
  `invoice_number` int(11) DEFAULT NULL,
  `payment_date` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `payment_amount` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `product_id` int(11) NOT NULL,
  `product_type_code` int(11) NOT NULL,
  `product_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_images` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_size` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_color` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_detail` text COLLATE utf8_unicode_ci NOT NULL,
  `product_introtext` text COLLATE utf8_unicode_ci NOT NULL,
  `product_quantity` int(11) NOT NULL DEFAULT '1',
  `product_price` int(11) NOT NULL DEFAULT '0',
  `product_discount` float NOT NULL DEFAULT '0',
  `other_product_details` text COLLATE utf8_unicode_ci,
  `created` datetime NOT NULL,
  `created_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) DEFAULT '1',
  `trash` int(11) DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_type_code`, `product_name`, `product_images`, `product_size`, `product_color`, `product_alias`, `product_detail`, `product_introtext`, `product_quantity`, `product_price`, `product_discount`, `other_product_details`, `created`, `created_by`, `status`, `trash`) VALUES
(1, 31, 'Đồng hồ 1', 'dong-ho-1.jpg', '', '', 'dong-ho-1', '', '', 0, 215000, 0.2, NULL, '2016-01-21 00:00:00', 'Ngô Tiến Phát', 1, 0),
(2, 11, 'Giày nam 1', 'giay-nam-1.jpg', '', '', 'giay-nam-1', '', '', 0, 265000, 0.2, NULL, '2016-01-21 00:00:00', 'Ngô Tiến Phát', 1, 0),
(3, 31, 'Đồng hồ 3', 'dong-ho-3.jpg', '', '', 'dong-ho-3', '', '', 0, 525000, 0.2, NULL, '2016-01-21 00:00:00', 'Ngô Tiến Phát', 1, 0),
(4, 31, 'Đồng hồ 4', 'dong-ho-4.jpg', '', '', 'dong-ho-4', '', '', 0, 925000, 0.2, NULL, '2016-01-21 00:00:00', 'Ngô Tiến Phát', 1, 0),
(5, 31, 'Đồng hồ 5', 'dong-ho-5.jpg', '', '', 'dong-ho-5', '', '', 0, 295000, 0.2, NULL, '2016-01-21 00:00:00', 'Ngô Tiến Phát', 1, 0),
(6, 11, 'Giày nam 2', 'giay-nam-2.jpg', '', '', 'giay-nam-2', '', '', 0, 415000, 0.2, NULL, '2016-01-21 00:00:00', 'Ngô Tiến Phát', 1, 0),
(7, 31, 'Đồng hồ 2', 'dong-ho-2.jpg', '', '', 'dong-ho-2', '', '', 0, 235000, 0.2, NULL, '2016-01-21 00:00:00', 'Ngô Tiến Phát', 1, 0),
(8, 31, 'Đồng hồ 1', 'dong-ho-1.jpg', '', '', 'dong-ho-1', '', '', 0, 275000, 0.2, NULL, '2016-01-21 00:00:00', 'Ngô Tiến Phát', 1, 0),
(9, 11, 'Giày nam 3', 'giay-nam-3.jpg', '', '', 'giay-nam-3', '', '', 0, 365000, 0.2, NULL, '2016-01-21 00:00:00', 'Ngô Tiến Phát', 1, 0),
(10, 31, 'Đồng hồ 6', 'dong-ho-6.jpg', '', '', 'dong-ho-6', '', '', 0, 815000, 0, NULL, '2016-01-21 00:00:00', 'Ngô Tiến Phát', 1, 0),
(11, 11, 'Giày nam 1', 'giay-nam-1.jpg', '', '', 'giay-nam-1', '', '', 0, 235000, 0, NULL, '2016-01-21 00:00:00', 'Ngô Tiến Phát', 1, 0),
(12, 31, 'Đồng hồ 5', 'dong-ho-5.jpg', '', '', 'dong-ho-5', '', '', 0, 215000, 0, NULL, '2016-01-21 00:00:00', 'Ngô Tiến Phát', 1, 0),
(13, 31, 'Đồng hồ 2', 'dong-ho-2.jpg', '', '', 'dong-ho-2', '', '', 0, 215000, 0, NULL, '2016-01-21 00:00:00', 'Ngô Tiến Phát', 1, 0),
(14, 31, 'Đồng hồ 3', 'dong-ho-3.jpg', '', '', 'dong-ho-3', '', '', 0, 225000, 0, NULL, '2016-01-21 00:00:00', 'Ngô Tiến Phát', 1, 0),
(15, 11, 'Giày nam 3', 'giay-nam-3.jpg', '', '', 'giay-nam-3', '', '', 0, 215000, 0, NULL, '2016-01-21 00:00:00', 'Ngô Tiến Phát', 1, 0),
(16, 31, 'Đồng hồ 5', 'dong-ho-5.jpg', '', '', 'dong-ho-5', '', '', 0, 215000, 0, NULL, '2016-01-21 00:00:00', 'Ngô Tiến Phát', 1, 0),
(28, 31, 'Đồng hồ 3', 'dong-ho-3.jpg', '', '', 'dong-ho-3', '', '', 0, 225000, 0, NULL, '2016-01-21 00:00:00', 'Ngô Tiến Phát', 1, 0),
(29, 31, 'Đồng hồ 5', 'dong-ho-5.jpg', '', '', 'dong-ho-5', '', '', 0, 295000, 0, NULL, '2016-01-21 00:00:00', 'Ngô Tiến Phát', 1, 0),
(30, 31, 'Đồng hồ 3', 'dong-ho-3.jpg', '', '', 'dong-ho-3', '', '', 0, 525000, 0, NULL, '2016-01-21 00:00:00', 'Ngô Tiến Phát', 1, 0),
(32, 11, 'Giày nam 3', 'giay-nam-3.jpg', '', '', 'giay-nam-3', '', '', 0, 365000, 0, NULL, '2016-01-21 00:00:00', 'Ngô Tiến Phát', 1, 0),
(34, 31, 'Đồng hồ 6', 'dong-ho-6.jpg', '', '', 'dong-ho-6', '', '', 0, 815000, 0, NULL, '2016-01-21 00:00:00', 'Ngô Tiến Phát', 1, 0),
(35, 0, 'HHHHHHHHHHHH', 'Screenshot.png', '', '', 'hhhhhhhh', '<p>sgasdg</p>\r\n', '<p>adsg</p>\r\n', 1, 10000, 0, NULL, '2016-02-17 22:45:59', 'Ngô Tiến Phát', 1, 0),
(37, 11, 'Giày nam 2', 'giay-nam-2.jpg', '', '', 'giay-nam-2', '', '', 0, 415000, 0, NULL, '2016-01-21 00:00:00', 'Ngô Tiến Phát', 1, 0),
(38, 22, 'Áo khoác jean nữ', 'ao-khoac-jean-nu-a902-147.jpg', '', '', 'ao-khoac-jean-nu', '', '', 24, 260000, 0, NULL, '2016-04-25 17:29:50', 'Ngô Tiến Phát', 1, 0),
(39, 22, 'Áo khoác jean nữ giá sỉ', 'ao-khoac-jean-nu-gia-si-a901.jpg', '', '', 'ao-khoac-jean-nu-gia-si', '', '', 46, 300000, 0, NULL, '2016-04-25 17:31:10', 'Ngô Tiến Phát', 1, 0),
(40, 13, 'Áo khoác nam 01', 'ao-khoac-nam-01.jpg', '', '', 'ao-khoac-nam-01', '', '', 35, 250000, 0, NULL, '2016-04-25 17:31:55', 'Ngô Tiến Phát', 1, 0),
(41, 13, 'Áo khoác nam 2', 'ao-khoac-nam-02.jpg', '', '', 'ao-khoac-nam-2', '', '', 20, 450000, 0, NULL, '2016-04-25 17:32:47', 'Ngô Tiến Phát', 1, 0),
(42, 13, 'Áo khoác nam 03', 'ao-khoac-nam-03.jpg', '', '', 'ao-khoac-nam-03', '', '', 5, 350000, 0, NULL, '2016-04-25 17:34:19', 'Ngô Tiến Phát', 1, 0),
(43, 13, 'Áo khoác nam 04', 'ao-khoac-nam-04.jpg', '', '', 'ao-khoac-nam-04', '', '', 16, 540000, 0, NULL, '2016-04-25 17:34:48', 'Ngô Tiến Phát', 1, 0),
(44, 13, 'Áo khoác nam 05', 'ao-khoac-nam-05.jpg', '', '', 'ao-khoac-nam-05', '', '', 17, 250000, 0, NULL, '2016-04-25 17:35:22', 'Ngô Tiến Phát', 1, 0),
(45, 13, 'Áo khoác nam 07', 'ao-khoac-nam-07.jpg', '', '', 'ao-khoac-nam-07', '', '', 23, 340000, 0, NULL, '2016-04-25 17:35:57', 'Ngô Tiến Phát', 1, 0),
(46, 13, 'Áo khoác nam 06', 'ao-khoac-nam-06.jpg', '', '', 'ao-khoac-nam-06', '', '', 26, 320000, 0.15, NULL, '2016-04-25 17:36:28', 'Ngô Tiến Phát', 1, 0),
(47, 13, 'Áo khoác nam 08', 'ao-khoac-nam-08.jpg', '', '', 'ao-khoac-nam-08', '', '', 25, 340000, 0.15, NULL, '2016-04-25 17:37:01', 'Ngô Tiến Phát', 1, 0),
(48, 13, 'Áo khoác nam 09', 'ao-khoac-nam-09.jpg', '', '', 'ao-khoac-nam-09', '', '', 6, 530000, 0.15, NULL, '2016-04-25 17:37:46', 'Ngô Tiến Phát', 1, 0),
(49, 13, 'Áo khoác nam 10', 'ao-khoac-nam-10.jpg', '', '', 'ao-khoac-nam-10', '', '', 8, 420000, 0.15, NULL, '2016-04-25 17:38:26', 'Ngô Tiến Phát', 1, 0),
(50, 13, 'Áo khoác nam 11', 'ao-khoac-nam-011.jpg', '', '', 'ao-khoac-nam-11', '', '', 5, 370000, 0.15, NULL, '2016-04-25 17:39:01', 'Ngô Tiến Phát', 1, 0),
(51, 16, 'Áo len nam 01', 'ao-len-nam_(1).jpg', '', '', 'ao-len-nam-01', '', '', 10, 250000, 0.15, NULL, '2016-04-25 17:40:11', 'Ngô Tiến Phát', 1, 0),
(52, 16, 'Áo len nam 02', 'ao-len-nam_(1).png', '', '', 'ao-len-nam-02', '', '', 4, 320000, 0.15, NULL, '2016-04-25 17:40:53', 'Ngô Tiến Phát', 1, 0),
(53, 16, 'Áo len nam 03', 'ao-len-nam_(3).jpg', '', '', 'ao-len-nam-03', '', '', 14, 250000, 0.1, NULL, '2016-04-25 17:41:28', 'Ngô Tiến Phát', 1, 0),
(54, 16, 'Áo len nam 04', 'ao-len-nam_(4).jpg', '', '', 'ao-len-nam-04', '', '', 16, 380000, 0.1, NULL, '2016-04-25 17:42:03', 'Ngô Tiến Phát', 1, 0),
(55, 16, 'Áo len nam 05', 'ao-len-nam_(5).jpg', '', '', 'ao-len-nam-05', '', '', 17, 350000, 0.1, NULL, '2016-04-25 17:42:33', 'Ngô Tiến Phát', 1, 0),
(56, 16, 'Áo len nam 6', 'ao-len-nam_(6).jpg', '', '', 'ao-len-nam-6', '', '', 14, 250000, 0.1, NULL, '2016-04-25 17:43:08', 'Ngô Tiến Phát', 1, 0),
(57, 16, 'Áo len nam 08', 'ao-len-nam_(8)1.jpg', '', '', 'ao-len-nam-08', '', '', 24, 300000, 0.1, NULL, '2016-04-25 17:43:45', 'Ngô Tiến Phát', 1, 0),
(58, 16, 'Áo len nam 07', 'ao-len-nam_(1).png', '', '', 'ao-len-nam-07', '', '', 0, 250000, 0, NULL, '2016-04-25 17:48:12', 'Ngô Tiến Phát', 1, 0),
(59, 15, 'Áo phông nam 01', 'ao-phong-_(1).jpg', '', '', 'ao-phong-nam-1', '', '', 25, 150000, 0.1, NULL, '2016-04-25 17:46:31', 'Ngô Tiến Phát', 1, 0),
(60, 15, 'Áo phông nam 02', 'ao-phong-_(2).jpg', '', '', 'ao-phong-nam-02', '', '', 4, 100000, 0.1, NULL, '2016-04-25 17:47:00', 'Ngô Tiến Phát', 1, 0),
(61, 15, 'Áo phông nam 03', 'ao-phong-_(3).jpg', '', '', 'ao-phong-nam-03', '', '', 6, 150000, 0.1, NULL, '2016-04-25 17:48:57', 'Ngô Tiến Phát', 1, 0),
(62, 15, 'Áo phông nam 04', 'ao-phong-_(4).jpg', '', '', 'ao-phong-nam-04', '', '', 15, 130000, 0.1, NULL, '2016-04-25 17:49:37', 'Ngô Tiến Phát', 1, 0),
(63, 15, 'Áo phông nam 05', 'ao-phong-_(5).jpg', '', '', 'ao-phong-nam-05', '', '', 24, 120000, 0.1, NULL, '2016-04-25 17:50:17', 'Ngô Tiến Phát', 1, 0),
(64, 15, 'Áo phông nam 07', 'ba73f0_simg_b5529c_250x250_maxb.jpg', '', '', 'ao-phong-nam-07', '', '', 15, 190000, 0.1, NULL, '2016-04-25 17:50:52', 'Ngô Tiến Phát', 1, 0),
(65, 14, 'Áo vest nam 01', 'ao-vest-nam_(1).jpg', '', '', 'ao-vest-nam-01', '', '', 12, 540000, 0.1, NULL, '2016-04-25 17:51:27', 'Ngô Tiến Phát', 1, 0),
(66, 14, 'Áo vest nam 02', 'ao-vest-nam_(2).jpg', '', '', 'ao-vest-nam-02', '', '', 4, 250000, 0, NULL, '2016-04-25 17:52:00', 'Ngô Tiến Phát', 1, 0),
(67, 14, 'Áo vest nam 03', 'ao-vest-nam_(3).jpg', '', '', 'ao-vest-nam-03', '', '', 15, 560000, 0, NULL, '2016-04-25 17:52:30', 'Ngô Tiến Phát', 1, 0),
(68, 14, 'Áo vest nam 04', 'ao-vest-nam_(4).jpg', '', '', 'ao-vest-nam-04', '', '', 25, 640000, 0, NULL, '2016-04-25 17:52:57', 'Ngô Tiến Phát', 1, 0),
(69, 14, 'Áo vest nam 05', 'ao-vest-nam_(5).jpg', '', '', 'ao-vest-nam-05', '', '', 16, 420000, 0, NULL, '2016-04-25 17:53:35', 'Ngô Tiến Phát', 1, 0),
(70, 14, 'Áo vest nam 06', 'ao-vest-nam_(6).jpg', '', '', 'ao-vest-nam-06', '', '', 17, 530000, 0, NULL, '2016-04-25 17:54:08', 'Ngô Tiến Phát', 1, 0),
(71, 14, 'Áo vest nam 07', 'ao-vest-nam_(7).jpg', '', '', 'ao-vest-nam-07', '', '', 15, 540000, 0, NULL, '2016-04-25 17:54:39', 'Ngô Tiến Phát', 1, 0),
(72, 14, 'Áo vest nam 08', 'ao-vest-nam_(8).jpg', '', '', 'ao-vest-nam-08', '', '', 15, 510000, 0, NULL, '2016-04-25 17:55:14', 'Ngô Tiến Phát', 1, 0),
(73, 14, 'Áo vest nam 09', 'ao-vest-nam_(9).jpg', '', '', 'ao-vest-nam-09', '', '', 12, 620000, 0, NULL, '2016-04-25 17:56:01', 'Ngô Tiến Phát', 1, 0),
(74, 31, 'Đồng hồ armani 2434', 'Armani_2434.jpg', '', '', 'dong-ho-armani-2434', '', '', 4, 460000, 0, NULL, '2016-04-25 17:57:01', 'Ngô Tiến Phát', 1, 0),
(75, 31, 'Đồng hồ armani 0373', 'armani-0373.jpg', '', '', 'dong-ho-armani-0373', '', '', 15, 780000, 0, NULL, '2016-04-25 17:57:41', 'Ngô Tiến Phát', 1, 0),
(76, 16, 'Áo len nam 20', 'bb3eae_simg_b5529c_250x250_maxb.jpg', '', '', 'ao-len-nam-20', '', '', 15, 250000, 0, NULL, '2016-04-25 17:58:23', 'Ngô Tiến Phát', 1, 0),
(77, 31, 'Đồng hồ cơ nam dây da', 'Dong-ho-co-nam-day-da.jpg', '', '', 'dong-ho-co-nam-day-da', '', '', 15, 450000, 0.2, NULL, '2016-04-25 17:59:25', 'Ngô Tiến Phát', 1, 0),
(78, 31, 'Đồng hồ cơ nam lộ máy', 'dong-ho-co-nam-lo-may.jpg', '', '', 'dong-ho-co-nam-lo-may', '', '', 16, 450000, 0.2, NULL, '2016-04-25 18:00:13', 'Ngô Tiến Phát', 1, 0),
(79, 31, 'Đồng hồ cơ logine cao cấp', 'Dong-ho-longines-1598c-cao-cap.jpg', '', '', 'dong-ho-co-longine-cao-cap', '', '', 24, 240000, 0.2, NULL, '2016-04-25 18:01:03', 'Ngô Tiến Phát', 1, 0),
(80, 31, 'Đồng hồ nam CX104', 'Dong-ho-nam-CX104.jpg', '', '', 'dong-ho-nam-cx104', '', '', 17, 600000, 0.2, NULL, '2016-04-25 18:01:50', 'Ngô Tiến Phát', 1, 0),
(81, 31, 'Đồng hồ nam gianba hợp kim thép', 'Dong-ho-nam-qianba-hop-kim-thep.jpg', '', '', 'dong-ho-nam-gianba-hop-kim-thep', '', '', 6, 540000, 0.2, NULL, '2016-04-25 18:02:36', 'Ngô Tiến Phát', 1, 0),
(82, 31, 'Đồng hồ Omega dây inox', 'dong-ho-Omega-day-inox.png', '', '', 'dong-ho-omega-day-inox', '', '', 14, 240000, 0.25, NULL, '2016-04-25 18:03:27', 'Ngô Tiến Phát', 1, 0),
(83, 31, 'Đồng hồ Rolex rb tự động', 'dong-ho-rolex-rb-tu-dong.jpg', '', '', 'dong-ho-rolex-rb-tu-dong', '', '', 15, 290000, 0.25, NULL, '2016-04-25 18:04:07', 'Ngô Tiến Phát', 1, 0),
(84, 31, 'Đồng hồ Stuhrling Original st 01', 'dong-ho-Stuhrling-Original_ST-1.jpg', '', '', 'dong-ho-stuhrling-original-st-01', '', '', 18, 620000, 0.25, NULL, '2016-04-25 18:05:24', 'Ngô Tiến Phát', 1, 0),
(85, 31, 'Đồng hồ Stuhrling Original ST 2', 'dong-ho-Stuhrling-Original-ST-2.jpg', '', '', 'dong-ho-Stuhrling-Original-ST-2', '', '', 16, 340000, 0.25, NULL, '2016-04-25 18:06:19', 'Ngô Tiến Phát', 1, 0),
(86, 31, 'Đồng hồ Stuhrling Original st 03', 'dong-ho-STUHRLING-ORIGINAL-ST-3.png', '', '', 'dong-ho-stuhrling-orginal-st-03', '', '', 15, 300000, 0.25, NULL, '2016-04-25 18:07:12', 'Ngô Tiến Phát', 1, 0),
(87, 34, 'Bộ ví da thật vân cá sầu màu đen', 'Bo-vi-da-that-van-ca-sau-mau-den.JPG', '', '', 'Bo-vi-da-that-van-ca-sau-mau-den', '', '', 16, 250000, 0.25, NULL, '2016-04-25 18:08:38', 'Ngô Tiến Phát', 1, 0),
(88, 34, 'Ví nam da thật', 'Vi-nam-da-that-van-ca-sau-mau-den-LAKA-LKVY03-5.JPG', '', '', 'vi-nam-da-that', '', '', 16, 160000, 0.25, NULL, '2016-04-25 18:09:13', 'Ngô Tiến Phát', 1, 0),
(89, 32, 'Kính mắt chính hãng Ao Star 01', 'Kinh-mat-chinh-hang-Ao-Star-AO-1101-3.jpg', '', '', 'kinh-mat-chinh-hang-ao-star', '', '', 16, 120000, 0.25, NULL, '2016-04-25 18:10:12', 'Ngô Tiến Phát', 1, 0),
(90, 32, 'Kính mắt chính hãng Ao Star 02', 'Kinh-mat-chinh-hang-Ao-Star-AO-1568-BLK.jpg', '', '', 'kinh-mat-chinh-hang-ao-star-02', '', '', 17, 150000, 0.25, NULL, '2016-04-25 18:10:48', 'Ngô Tiến Phát', 1, 0),
(91, 32, 'Kính mắt chính hãng Ao Star 03', 'Kinh-mat-chinh-hang-Ao-Star-AO-1574-3.jpg', '', '', 'kinh-mat-chinh-hang-ao-star-03', '', '', 17, 120000, 0, NULL, '2016-04-25 18:11:53', 'Ngô Tiến Phát', 1, 0),
(92, 32, 'Kính mắt chính hãng Ao Star 04', 'Kinh-mat-chinh-hang-Ao-Star-AO-5803-BL-4.jpg', '', '', 'kinh-mat-chinh-hang-ao-star-04', '', '', 19, 120000, 0, NULL, '2016-04-25 18:12:27', 'Ngô Tiến Phát', 1, 0),
(93, 11, 'Giày boot nam martern Olunpo 01', 'Giay-boot-nam-Martern-Olunpo-dht1440.jpg', '', '', 'giay-boot-nam-martern-olunpo-01', '', '', 14, 520000, 0, NULL, '2016-04-25 18:13:52', 'Ngô Tiến Phát', 1, 0),
(94, 11, 'Giày boot nam martern Olunpo 02', 'Giay-da-nam-Olunpo-QHB1403.jpg', '', '', 'giay-boot-nam-martern-olunpo-02', '', '', 19, 750000, 0, NULL, '2016-04-25 18:14:33', 'Ngô Tiến Phát', 1, 0),
(95, 11, 'Giày boot nam martern Olunpo 03', 'Giay-da-nam-olunpo-qht1432.jpg', '', '', 'giay-boot-nam-martern-olunpo-03', '', '', 12, 410000, 0, NULL, '2016-04-25 18:15:10', 'Ngô Tiến Phát', 1, 0),
(96, 11, 'Giày da nam Olunpo 01', 'Giay-da-nam-olunpo-qzk1405.jpg', '', '', 'giay-da-nam-olunpo-01', '', '', 5, 520000, 0, NULL, '2016-04-25 18:16:02', 'Ngô Tiến Phát', 1, 0),
(97, 11, 'Giày nam Olunpo 02', 'Giay-nam-Olunpo-dht1443.jpg', '', '', 'giay-nam-olunpo-02', '', '', 16, 520000, 0, NULL, '2016-04-25 18:16:48', 'Ngô Tiến Phát', 1, 0),
(98, 11, 'Giày nam olunpo 03', 'Giay-nam-Olunpo-dht1444.jpg', '', '', 'giay-nam-oplunpo-03', '', '', 24, 620000, 0, NULL, '2016-04-25 18:17:37', 'Ngô Tiến Phát', 1, 0),
(99, 11, 'Giày nam Olunpo 04', 'Giay-nam-Olunpo-QDT1404.jpg', '', '', 'giay-nam-olunpo-04', '', '', 12, 560000, 0, NULL, '2016-04-25 18:18:16', 'Ngô Tiến Phát', 1, 0),
(100, 11, 'Giày nam Olunpo 05', 'Giay-nam-Olunpo-qxd1403.jpg', '', '', 'giay-nam-olunpo-05', '', '', 12, 760000, 0, NULL, '2016-04-25 18:19:04', 'Ngô Tiến Phát', 1, 0),
(101, 11, 'Giày nam Olunpo 06', 'Giay-nam-Olunpo-qyc1401.jpg', '', '', 'giay-nam-olunpo-06', '', '', 18, 640000, 0.1, NULL, '2016-04-25 18:19:40', 'Ngô Tiến Phát', 1, 0),
(102, 17, 'Đầm body jazzy', 'dam-body-tay-lo-jazzy-FD36-1.JPG', '', '', 'dam-body-jazzy', '', '', 5, 320000, 0.15, NULL, '2016-04-25 18:20:43', 'Ngô Tiến Phát', 1, 0),
(103, 17, 'Đầm cổ tròn béo', 'dam-co-tron-beo-ktfashion-msd119-1.jpg', '', '', 'dam-co-tron-beo', '<p>Bộ sản phẩm bao gồm:</p>\n\n<ul>\n	<li>1 x sản phẩm</li>\n</ul>\n\n<p>Đặc điểm ch&iacute;nh:</p>\n\n<table>\n	<tbody>\n		<tr>\n			<td>SKU</td>\n			<td>LA287FAAA197B3VNAMZ-1894844</td>\n		</tr>\n		<tr>\n			<td>Mẫu m&atilde;</td>\n			<td>DN13</td>\n		</tr>\n		<tr>\n			<td>K&iacute;ch thước sản phẩm (D x R x C cm)</td>\n			<td>94x58x7</td>\n		</tr>\n		<tr>\n			<td>Bảo h&agrave;nh</td>\n			<td>Kh&ocirc;ng bảo h&agrave;nh</td>\n		</tr>\n		<tr>\n			<td>Trọng lượng (KG)</td>\n			<td>0.3</td>\n		</tr>\n		<tr>\n			<td>Sản xuất tại</td>\n			<td>Việt Nam</td>\n		</tr>\n	</tbody>\n</table>\n', '<p>Kiểu d&aacute;ng thời trang, tinh tế, kết hợp những đường may tinh xảo, tạo n&ecirc;n gu thời trang s&agrave;nh điệu của bạn g&aacute;i.<br />\n- Chất liệu cao cấp, linh hoạt mang đến cảm gi&aacute;c thoải m&aacute;i.<br />\n- M&agrave;u sắc trẻ trung, năng động cho bạn nữ th&ecirc;m phần nổi bật, c&aacute; t&iacute;nh.<br />\n- K&iacute;ch thước d&agrave;i: 80, eo: 64, ngực: 82</p>\n', 21, 432000, 0.15, NULL, '2016-04-29 02:49:57', 'Ngô Tiến Phát', 1, 0),
(104, 17, 'Đầm hoa văn jazzy', 'dam-hoa-van-jazzy-FD26-02.JPG', '', '', 'dam-hoa-van-jazzy', '<p>Bộ sản phẩm bao gồm:</p>\n\n<ul>\n	<li>1 x sản phẩm</li>\n</ul>\n\n<p>Đặc điểm ch&iacute;nh:</p>\n\n<table>\n	<tbody>\n		<tr>\n			<td>SKU</td>\n			<td>LA287FAAA197B3VNAMZ-1894844</td>\n		</tr>\n		<tr>\n			<td>Mẫu m&atilde;</td>\n			<td>DN13</td>\n		</tr>\n		<tr>\n			<td>K&iacute;ch thước sản phẩm (D x R x C cm)</td>\n			<td>94x58x7</td>\n		</tr>\n		<tr>\n			<td>Bảo h&agrave;nh</td>\n			<td>Kh&ocirc;ng bảo h&agrave;nh</td>\n		</tr>\n		<tr>\n			<td>Trọng lượng (KG)</td>\n			<td>0.3</td>\n		</tr>\n		<tr>\n			<td>Sản xuất tại</td>\n			<td>Việt Nam</td>\n		</tr>\n	</tbody>\n</table>\n', '<p>Kiểu d&aacute;ng thời trang, tinh tế, kết hợp những đường may tinh xảo, tạo n&ecirc;n gu thời trang s&agrave;nh điệu của bạn g&aacute;i.<br />\n- Chất liệu cao cấp, linh hoạt mang đến cảm gi&aacute;c thoải m&aacute;i.<br />\n- M&agrave;u sắc trẻ trung, năng động cho bạn nữ th&ecirc;m phần nổi bật, c&aacute; t&iacute;nh.<br />\n- K&iacute;ch thước d&agrave;i: 80, eo: 64, ngực: 82</p>\n', 21, 410000, 0.15, NULL, '2016-04-29 02:45:56', 'Ngô Tiến Phát', 1, 0),
(105, 17, 'Đầm chấm bi', 'dam-kieu-cham-bi-hong-son-fd05-7.JPG', '', '', 'dam-cham-bi', '<p>Bộ sản phẩm bao gồm:</p>\n\n<ul>\n	<li>1 x sản phẩm</li>\n</ul>\n\n<p>Đặc điểm ch&iacute;nh:</p>\n\n<table>\n	<tbody>\n		<tr>\n			<td>SKU</td>\n			<td>LA287FAAA197B3VNAMZ-1894844</td>\n		</tr>\n		<tr>\n			<td>Mẫu m&atilde;</td>\n			<td>DN13</td>\n		</tr>\n		<tr>\n			<td>K&iacute;ch thước sản phẩm (D x R x C cm)</td>\n			<td>94x58x7</td>\n		</tr>\n		<tr>\n			<td>Bảo h&agrave;nh</td>\n			<td>Kh&ocirc;ng bảo h&agrave;nh</td>\n		</tr>\n		<tr>\n			<td>Trọng lượng (KG)</td>\n			<td>0.3</td>\n		</tr>\n		<tr>\n			<td>Sản xuất tại</td>\n			<td>Việt Nam</td>\n		</tr>\n	</tbody>\n</table>\n', '<p>Kiểu d&aacute;ng thời trang, tinh tế, kết hợp những đường may tinh xảo, tạo n&ecirc;n gu thời trang s&agrave;nh điệu của bạn g&aacute;i.<br />\n- Chất liệu cao cấp, linh hoạt mang đến cảm gi&aacute;c thoải m&aacute;i.<br />\n- M&agrave;u sắc trẻ trung, năng động cho bạn nữ th&ecirc;m phần nổi bật, c&aacute; t&iacute;nh.<br />\n- K&iacute;ch thước d&agrave;i: 80, eo: 64, ngực: 82</p>\n', 23, 250000, 0.15, NULL, '2016-04-29 02:46:11', 'Ngô Tiến Phát', 1, 0),
(106, 17, 'Đầm sọc ngang phối jean thun', 'dam-soc-ngang-phoi-jean-thun-hong-son-fd02-13.JPG', '', '', 'dam-soc-ngang-phoi-jean-thun', '<p>Bộ sản phẩm bao gồm:</p>\n\n<ul>\n	<li>1 x sản phẩm</li>\n</ul>\n\n<p>Đặc điểm ch&iacute;nh:</p>\n\n<table>\n	<tbody>\n		<tr>\n			<td>SKU</td>\n			<td>LA287FAAA197B3VNAMZ-1894844</td>\n		</tr>\n		<tr>\n			<td>Mẫu m&atilde;</td>\n			<td>DN13</td>\n		</tr>\n		<tr>\n			<td>K&iacute;ch thước sản phẩm (D x R x C cm)</td>\n			<td>94x58x7</td>\n		</tr>\n		<tr>\n			<td>Bảo h&agrave;nh</td>\n			<td>Kh&ocirc;ng bảo h&agrave;nh</td>\n		</tr>\n		<tr>\n			<td>Trọng lượng (KG)</td>\n			<td>0.3</td>\n		</tr>\n		<tr>\n			<td>Sản xuất tại</td>\n			<td>Việt Nam</td>\n		</tr>\n	</tbody>\n</table>\n', '<p>Kiểu d&aacute;ng thời trang, tinh tế, kết hợp những đường may tinh xảo, tạo n&ecirc;n gu thời trang s&agrave;nh điệu của bạn g&aacute;i.<br />\n- Chất liệu cao cấp, linh hoạt mang đến cảm gi&aacute;c thoải m&aacute;i.<br />\n- M&agrave;u sắc trẻ trung, năng động cho bạn nữ th&ecirc;m phần nổi bật, c&aacute; t&iacute;nh.<br />\n- K&iacute;ch thước d&agrave;i: 80, eo: 64, ngực: 82</p>\n', 12, 280000, 0.15, NULL, '2016-04-29 02:45:07', 'Ngô Tiến Phát', 1, 0),
(107, 17, 'Đầm tuyết mùa xếp ly màu xanh', 'dam-tuyet-mua-xep-ly-mau-xanh-kt-fashion-msd122.jpg', '', '', 'dam-tuyet-mua-xep-ly-mau-xanh', '<p>Bộ sản phẩm bao gồm:</p>\n\n<ul>\n	<li>1 x sản phẩm</li>\n</ul>\n\n<p>Đặc điểm ch&iacute;nh:</p>\n\n<table>\n	<tbody>\n		<tr>\n			<td>SKU</td>\n			<td>LA287FAAA197B3VNAMZ-1894844</td>\n		</tr>\n		<tr>\n			<td>Mẫu m&atilde;</td>\n			<td>DN13</td>\n		</tr>\n		<tr>\n			<td>K&iacute;ch thước sản phẩm (D x R x C cm)</td>\n			<td>94x58x7</td>\n		</tr>\n		<tr>\n			<td>Bảo h&agrave;nh</td>\n			<td>Kh&ocirc;ng bảo h&agrave;nh</td>\n		</tr>\n		<tr>\n			<td>Trọng lượng (KG)</td>\n			<td>0.3</td>\n		</tr>\n		<tr>\n			<td>Sản xuất tại</td>\n			<td>Việt Nam</td>\n		</tr>\n	</tbody>\n</table>\n', '<p>Kiểu d&aacute;ng thời trang, tinh tế, kết hợp những đường may tinh xảo, tạo n&ecirc;n gu thời trang s&agrave;nh điệu của bạn g&aacute;i.<br />\n- Chất liệu cao cấp, linh hoạt mang đến cảm gi&aacute;c thoải m&aacute;i.<br />\n- M&agrave;u sắc trẻ trung, năng động cho bạn nữ th&ecirc;m phần nổi bật, c&aacute; t&iacute;nh.<br />\n- K&iacute;ch thước d&agrave;i: 80, eo: 64, ngực: 82</p>\n', 14, 250000, 0.15, NULL, '2016-04-29 02:44:47', 'Ngô Tiến Phát', 1, 0),
(108, 17, 'Đầm màu hồng đẹp', 'dam-voan-dap-luoi-ktfashion-mSD117-01.jpg', '', '', 'dam-mau-hong-dep', '<p>Bộ sản phẩm bao gồm:</p>\n\n<ul>\n	<li>1 x sản phẩm</li>\n</ul>\n\n<p>Đặc điểm ch&iacute;nh:</p>\n\n<table>\n	<tbody>\n		<tr>\n			<td>SKU</td>\n			<td>LA287FAAA197B3VNAMZ-1894844</td>\n		</tr>\n		<tr>\n			<td>Mẫu m&atilde;</td>\n			<td>DN13</td>\n		</tr>\n		<tr>\n			<td>K&iacute;ch thước sản phẩm (D x R x C cm)</td>\n			<td>94x58x7</td>\n		</tr>\n		<tr>\n			<td>Bảo h&agrave;nh</td>\n			<td>Kh&ocirc;ng bảo h&agrave;nh</td>\n		</tr>\n		<tr>\n			<td>Trọng lượng (KG)</td>\n			<td>0.3</td>\n		</tr>\n		<tr>\n			<td>Sản xuất tại</td>\n			<td>Việt Nam</td>\n		</tr>\n	</tbody>\n</table>\n', '<p>Kiểu d&aacute;ng thời trang, tinh tế, kết hợp những đường may tinh xảo, tạo n&ecirc;n gu thời trang s&agrave;nh điệu của bạn g&aacute;i.<br />\n- Chất liệu cao cấp, linh hoạt mang đến cảm gi&aacute;c thoải m&aacute;i.<br />\n- M&agrave;u sắc trẻ trung, năng động cho bạn nữ th&ecirc;m phần nổi bật, c&aacute; t&iacute;nh.<br />\n- K&iacute;ch thước d&agrave;i: 80, eo: 64, ngực: 82</p>\n', 14, 250000, 0.15, NULL, '2016-04-29 02:36:23', 'Ngô Tiến Phát', 1, 0),
(109, 17, 'Đầm xòa tay voăn màu vàng', 'dam-xoe-tay-voan-mau-vang-kt-fastiom-MSD98-(1).jpg', '', '', 'dam-xoe-tay-voan-mau-vang', '\n\n<p>Bộ sản phẩm bao gồm:</p>\n\n<ul>\n	<li>1 x sản phẩm</li>\n</ul>\n\n<p>Đặc điểm ch&iacute;nh:</p>\n\n<table>\n	<tbody>\n		<tr>\n			<td>SKU</td>\n			<td>LA287FAAA197B3VNAMZ-1894844</td>\n		</tr>\n		<tr>\n			<td>Mẫu m&atilde;</td>\n			<td>DN13</td>\n		</tr>\n		<tr>\n			<td>K&iacute;ch thước sản phẩm (D x R x C cm)</td>\n			<td>94x58x7</td>\n		</tr>\n		<tr>\n			<td>Bảo h&agrave;nh</td>\n			<td>Kh&ocirc;ng bảo h&agrave;nh</td>\n		</tr>\n		<tr>\n			<td>Trọng lượng (KG)</td>\n			<td>0.3</td>\n		</tr>\n		<tr>\n			<td>Sản xuất tại</td>\n			<td>Việt Nam</td>\n		</tr>\n	</tbody>\n</table>\n', '\n\n<p>Kiểu d&aacute;ng thời trang, tinh tế, kết hợp những đường may tinh xảo, tạo n&ecirc;n gu thời trang s&agrave;nh điệu của bạn g&aacute;i.<br />\n- Chất liệu cao cấp, linh hoạt mang đến cảm gi&aacute;c thoải m&aacute;i.<br />\n- M&agrave;u sắc trẻ trung, năng động cho bạn nữ th&ecirc;m phần nổi bật, c&aacute; t&iacute;nh.<br />\n. K&iacute;ch thước d&agrave;i: 80, eo: 64, ngực: 82</p>\n', 24, 360000, 0.15, NULL, '2016-04-29 02:13:38', 'Ngô Tiến Phát', 1, 0),
(110, 33, 'Thắt lưng nam 01', 'day-nit-nam-1-lop-huy-hoang-4106-(2).jpg', '', '', 'that-lung-nam-01', '', '', 10, 200000, 0.15, NULL, '2016-04-25 18:26:17', 'Ngô Tiến Phát', 1, 0),
(111, 33, 'Thắt lưng nam 02', 'day-nit-nam-huy-hoang-1lop-hh4105-01.JPG', '', '', 'that-lung-nam-02', '', '', 15, 240000, 0.15, NULL, '2016-04-25 18:26:48', 'Ngô Tiến Phát', 1, 0),
(112, 33, 'Thắt lưng nữ da 01', 'That-lung-nu-da-dadieu-HuyHoang-5403-(3).jpg', '', '', 'that-lung-nu-da-01', '', '', 10, 120000, 0.15, NULL, '2016-04-25 18:27:27', 'Ngô Tiến Phát', 1, 0),
(114, 33, 'Thắt lưng nữ 03', 'day-nit-nu-Huy-Hoang-HH5118-xanh-duong-1.JPG', '', '', 'that-lung-nu-03', '<p>&ndash; &nbsp;Chất liệu da b&ograve; nhập khẩu 100%</p>\n\n<p>&ndash; Thiết kế mặt xỏ kim cao cấp, chống hoen, ố, gỉ</p>\n\n<p>&ndash; Bảo h&agrave;nh da 12 th&aacute;ng</p>\n\n<p>&ndash; Sản xuất tại đồ da T&acirc;m Anh</p>\n\n<p>&ndash; K&iacute;ch thước (Rộng x D&agrave;i): 3.3cm x 120cm</p>\n\n<p>&ndash; Gi&aacute; tốt nhất thị trường</p>\n', '<p>Thắt lưng&nbsp;da thật 100% với chất liệu da b&ograve;, da c&aacute; sấu, da trăn, l&agrave; phụ kiện kh&ocirc;ng thể thiếu&nbsp;khi kết hợp trang phục. Ch&iacute;nh v&igrave; thế, sở hữu một chiếc thắt h&agrave;ng hiệu sang trọng v&agrave; đẳng cấp v&ocirc; c&ugrave;ng quan trọng. V&agrave; chắc hẳn, những mẫu thắt lưng của T&acirc;m Anh sẽ khiến bạn cảm thấy h&agrave;i l&ograve;ng.<br />\nNhững mẫu d&acirc;y nịt&nbsp;cao cấp được l&agrave;m bằng chất liệu da b&ograve;, c&aacute; sấu thật 100% mang đến sự y&ecirc;n t&acirc;m cho người sử dụng. Mặt kh&oacute;a được l&agrave;m bằng chất liệu hợp kim cao cấp, lu&ocirc;n s&aacute;ng đẹp v&agrave; c&oacute; khả năng chống hoen, ố, gỉ v&ocirc; c&ugrave;ng tốt. Tất cả đều được thể hiện v&ocirc; c&ugrave;ng ho&agrave;n hảo qua b&agrave;n tay của những người thợ c&oacute; tay nghề l&acirc;u năm.</p>\n', 7, 130000, 0.2, NULL, '2016-04-29 02:56:58', 'Ngô Tiến Phát', 1, 0),
(115, 33, 'Thắt lưng nữ 04', 'day-nit-nu-huy-hoang-HH5119-xanh-dam-01.jpg', '', '', 'that-lung-nu-04', '<p>&ndash; &nbsp;Chất liệu da b&ograve; nhập khẩu 100%</p>\n\n<p>&ndash; Thiết kế mặt xỏ kim cao cấp, chống hoen, ố, gỉ</p>\n\n<p>&ndash; Bảo h&agrave;nh da 12 th&aacute;ng</p>\n\n<p>&ndash; Sản xuất tại đồ da T&acirc;m Anh</p>\n\n<p>&ndash; K&iacute;ch thước (Rộng x D&agrave;i): 3.3cm x 120cm</p>\n\n<p>&ndash; Gi&aacute; tốt nhất thị trường</p>\n', '<p>Thắt lưng&nbsp;da thật 100% với chất liệu da b&ograve;, da c&aacute; sấu, da trăn, l&agrave; phụ kiện kh&ocirc;ng thể thiếu&nbsp;khi kết hợp trang phục. Ch&iacute;nh v&igrave; thế, sở hữu một chiếc thắt h&agrave;ng hiệu sang trọng v&agrave; đẳng cấp v&ocirc; c&ugrave;ng quan trọng. V&agrave; chắc hẳn, những mẫu thắt lưng của T&acirc;m Anh sẽ khiến bạn cảm thấy h&agrave;i l&ograve;ng.<br />\nNhững mẫu d&acirc;y nịt&nbsp;cao cấp được l&agrave;m bằng chất liệu da b&ograve;, c&aacute; sấu thật 100% mang đến sự y&ecirc;n t&acirc;m cho người sử dụng. Mặt kh&oacute;a được l&agrave;m bằng chất liệu hợp kim cao cấp, lu&ocirc;n s&aacute;ng đẹp v&agrave; c&oacute; khả năng chống hoen, ố, gỉ v&ocirc; c&ugrave;ng tốt. Tất cả đều được thể hiện v&ocirc; c&ugrave;ng ho&agrave;n hảo qua b&agrave;n tay của những người thợ c&oacute; tay nghề l&acirc;u năm.</p>\n', 7, 110000, 0.2, NULL, '2016-04-29 02:56:25', 'Ngô Tiến Phát', 1, 0),
(117, 33, 'Thắt lưng nữ da cá sấu', 'That-lung-nu-da-ca-sau-mau-den-Huy-Hoang-HH5201--(1).jpg', '', '', 'that-lung-nu-da-ca-sau', '<p>&ndash; &nbsp;Chất liệu da b&ograve; nhập khẩu 100%</p>\n\n<p>&ndash; Thiết kế mặt xỏ kim cao cấp, chống hoen, ố, gỉ</p>\n\n<p>&ndash; Bảo h&agrave;nh da 12 th&aacute;ng</p>\n\n<p>&ndash; Sản xuất tại đồ da T&acirc;m Anh</p>\n\n<p>&ndash; K&iacute;ch thước (Rộng x D&agrave;i): 3.3cm x 120cm</p>\n\n<p>&ndash; Gi&aacute; tốt nhất thị trường</p>\n', '<p>Thắt lưng&nbsp;da thật 100% với chất liệu da b&ograve;, da c&aacute; sấu, da trăn, l&agrave; phụ kiện kh&ocirc;ng thể thiếu&nbsp;khi kết hợp trang phục. Ch&iacute;nh v&igrave; thế, sở hữu một chiếc thắt h&agrave;ng hiệu sang trọng v&agrave; đẳng cấp v&ocirc; c&ugrave;ng quan trọng. V&agrave; chắc hẳn, những mẫu thắt lưng của T&acirc;m Anh sẽ khiến bạn cảm thấy h&agrave;i l&ograve;ng.<br />\nNhững mẫu d&acirc;y nịt&nbsp;cao cấp được l&agrave;m bằng chất liệu da b&ograve;, c&aacute; sấu thật 100% mang đến sự y&ecirc;n t&acirc;m cho người sử dụng. Mặt kh&oacute;a được l&agrave;m bằng chất liệu hợp kim cao cấp, lu&ocirc;n s&aacute;ng đẹp v&agrave; c&oacute; khả năng chống hoen, ố, gỉ v&ocirc; c&ugrave;ng tốt. Tất cả đều được thể hiện v&ocirc; c&ugrave;ng ho&agrave;n hảo qua b&agrave;n tay của những người thợ c&oacute; tay nghề l&acirc;u năm.</p>\n', 6, 80000, 0.2, NULL, '2016-04-29 02:56:43', 'Ngô Tiến Phát', 1, 0),
(118, 12, 'Sơ mi nam 1', 'so-mi-nam-11.jpg', '', '', 'so-mi-nam-1', '<p>Bộ sản phẩm bao gồm:</p>\n\n<ul>\n	<li>1 x &Aacute;o</li>\n</ul>\n\n<p>Đặc điểm ch&iacute;nh:</p>\n\n<table>\n	<tbody>\n		<tr>\n			<td>SKU</td>\n			<td>HU630FAAUHBVVNAMZ-475729</td>\n		</tr>\n		<tr>\n			<td>M&agrave;u</td>\n			<td>Trắng</td>\n		</tr>\n		<tr>\n			<td>Chất liệu</td>\n			<td>Cotton</td>\n		</tr>\n		<tr>\n			<td>Mẫu m&atilde;</td>\n			<td>Caro07-D</td>\n		</tr>\n		<tr>\n			<td>K&iacute;ch thước sản phẩm (D x R x C cm)</td>\n			<td>25 x 10 x 1</td>\n		</tr>\n		<tr>\n			<td>Bảo h&agrave;nh</td>\n			<td>Kh&ocirc;ng</td>\n		</tr>\n		<tr>\n			<td>Trọng lượng (KG)</td>\n			<td>0.3</td>\n		</tr>\n	</tbody>\n</table>\n', '<p><strong>TH&Ocirc;NG TIN SẢN PHẨM</strong></p>\n\n<p>&Aacute;o sơ mi nam<br />\nM&agrave;u: Trắng<br />\nChất liệu: Cotton<br />\nSản xuất tại Việt Nam<br />\nThiết kế trẻ trung; thời trang<br />\nKh&ocirc;ng bảo h&agrave;nh</p>\n', 10, 240000, 0.2, NULL, '2016-05-15 09:24:41', 'Ngô Tiến Phát', 1, 0),
(119, 12, 'Sơ mi nam 2', 'so-mi-nam-21.jpg', '', '', 'so-mi-nam-2', '<p>Bộ sản phẩm bao gồm:</p>\n\n<ul>\n	<li>1 x &Aacute;o</li>\n</ul>\n\n<p>Đặc điểm ch&iacute;nh:</p>\n\n<table>\n	<tbody>\n		<tr>\n			<td>SKU</td>\n			<td>HU630FAAUHBVVNAMZ-475729</td>\n		</tr>\n		<tr>\n			<td>M&agrave;u</td>\n			<td>Kẻ xanh - trắng</td>\n		</tr>\n		<tr>\n			<td>Chất liệu</td>\n			<td>Cotton</td>\n		</tr>\n		<tr>\n			<td>Mẫu m&atilde;</td>\n			<td>Caro07-D</td>\n		</tr>\n		<tr>\n			<td>K&iacute;ch thước sản phẩm (D x R x C cm)</td>\n			<td>25 x 10 x 1</td>\n		</tr>\n		<tr>\n			<td>Bảo h&agrave;nh</td>\n			<td>Kh&ocirc;ng</td>\n		</tr>\n		<tr>\n			<td>Trọng lượng (KG)</td>\n			<td>0.3</td>\n		</tr>\n	</tbody>\n</table>\n', '<p><strong>TH&Ocirc;NG TIN SẢN PHẨM</strong></p>\n\n<p>&Aacute;o sơ mi nam<br />\nM&agrave;u: Kẻ xanh - trắng<br />\nChất liệu: Cotton<br />\nSản xuất tại Việt Nam<br />\nThiết kế trẻ trung; thời trang<br />\nKh&ocirc;ng bảo h&agrave;nh</p>\n', 7, 230000, 0.2, NULL, '2016-05-15 09:24:18', 'Ngô Tiến Phát', 1, 0),
(120, 12, 'Sơ mi nam 3', 'so-mi-nam-31.jpg', '', '', 'so-mi-nam-3', '', '', 13, 189000, 0.2, NULL, '2016-05-15 09:15:38', 'Ngô Tiến Phát', 1, 0),
(121, 12, 'Sơ mi nam 4', 'so-mi-nam-41.jpg', '', '', 'so-mi-nam-4', '<p>Bộ sản phẩm bao gồm:</p>\n\n<ul>\n	<li>1 x &Aacute;o</li>\n</ul>\n\n<p>Đặc điểm ch&iacute;nh:</p>\n\n<table>\n	<tbody>\n		<tr>\n			<td>SKU</td>\n			<td>HU630FAAUHBVVNAMZ-475729</td>\n		</tr>\n		<tr>\n			<td>M&agrave;u</td>\n			<td>T&iacute;m</td>\n		</tr>\n		<tr>\n			<td>Chất liệu</td>\n			<td>Cotton</td>\n		</tr>\n		<tr>\n			<td>Mẫu m&atilde;</td>\n			<td>Caro07-D</td>\n		</tr>\n		<tr>\n			<td>K&iacute;ch thước sản phẩm (D x R x C cm)</td>\n			<td>25 x 10 x 1</td>\n		</tr>\n		<tr>\n			<td>Bảo h&agrave;nh</td>\n			<td>Kh&ocirc;ng</td>\n		</tr>\n		<tr>\n			<td>Trọng lượng (KG)</td>\n			<td>0.3</td>\n		</tr>\n	</tbody>\n</table>\n', '<p><strong>TH&Ocirc;NG TIN SẢN PHẨM</strong></p>\n\n<p>&Aacute;o sơ mi nam<br />\nM&agrave;u: T&iacute;m<br />\nChất liệu: Cotton<br />\nSản xuất tại Việt Nam<br />\nThiết kế trẻ trung; thời trang<br />\nKh&ocirc;ng bảo h&agrave;nh</p>\n', 5, 240000, 0.2, NULL, '2016-05-15 09:23:36', 'Ngô Tiến Phát', 1, 0),
(122, 12, 'Sơ mi nam dài tay', 'so-mi-dai-tay-11.jpg', '', '', 'so-mi-nam-dai-tay', '<p>Bộ sản phẩm bao gồm:</p>\n\n<ul>\n	<li>1 x &Aacute;o</li>\n</ul>\n\n<p>Đặc điểm ch&iacute;nh:</p>\n\n<table>\n	<tbody>\n		<tr>\n			<td>SKU</td>\n			<td>HU630FAAUHBVVNAMZ-475729</td>\n		</tr>\n		<tr>\n			<td>M&agrave;u</td>\n			<td>Trắng</td>\n		</tr>\n		<tr>\n			<td>Chất liệu</td>\n			<td>Cotton</td>\n		</tr>\n		<tr>\n			<td>Mẫu m&atilde;</td>\n			<td>Caro07-D</td>\n		</tr>\n		<tr>\n			<td>K&iacute;ch thước sản phẩm (D x R x C cm)</td>\n			<td>25 x 10 x 1</td>\n		</tr>\n		<tr>\n			<td>Bảo h&agrave;nh</td>\n			<td>Kh&ocirc;ng</td>\n		</tr>\n		<tr>\n			<td>Trọng lượng (KG)</td>\n			<td>0.3</td>\n		</tr>\n	</tbody>\n</table>\n', '<p><strong>TH&Ocirc;NG TIN SẢN PHẨM</strong></p>\n\n<p>&Aacute;o sơ mi nam<br />\nM&agrave;u: Trắng<br />\nChất liệu: Cotton<br />\nSản xuất tại Việt Nam<br />\nThiết kế trẻ trung; thời trang<br />\nKh&ocirc;ng bảo h&agrave;nh</p>\n', 25, 240000, 0.2, NULL, '2016-05-15 09:23:08', 'Ngô Tiến Phát', 1, 0),
(123, 12, 'Sơ mi nam đỏ', 'sms-tim-021.jpg', '', '', 'so-mi-nam-do', '<p>Bộ sản phẩm bao gồm:</p>\n\n<ul>\n	<li>1 x &Aacute;o</li>\n</ul>\n\n<p>Đặc điểm ch&iacute;nh:</p>\n\n<table>\n	<tbody>\n		<tr>\n			<td>SKU</td>\n			<td>HU630FAAUHBVVNAMZ-475729</td>\n		</tr>\n		<tr>\n			<td>M&agrave;u</td>\n			<td>đỏ</td>\n		</tr>\n		<tr>\n			<td>Chất liệu</td>\n			<td>Cotton</td>\n		</tr>\n		<tr>\n			<td>Mẫu m&atilde;</td>\n			<td>Caro07-D</td>\n		</tr>\n		<tr>\n			<td>K&iacute;ch thước sản phẩm (D x R x C cm)</td>\n			<td>25 x 10 x 1</td>\n		</tr>\n		<tr>\n			<td>Bảo h&agrave;nh</td>\n			<td>Kh&ocirc;ng</td>\n		</tr>\n		<tr>\n			<td>Trọng lượng (KG)</td>\n			<td>0.3</td>\n		</tr>\n	</tbody>\n</table>\n', '<p><strong>TH&Ocirc;NG TIN SẢN PHẨM</strong></p>\n\n<p>&Aacute;o sơ mi nam<br />\nM&agrave;u:&nbsp;đỏ<br />\nChất liệu: Cotton<br />\nSản xuất tại Việt Nam<br />\nThiết kế trẻ trung; thời trang<br />\nKh&ocirc;ng bảo h&agrave;nh</p>\n', 16, 300000, 0.3, NULL, '2016-05-15 09:22:24', 'Ngô Tiến Phát', 1, 0),
(124, 12, 'Sơ mi nam tím', 'sms15-tim-011.jpg', '', '', 'so-mi-nam-tim', '<p>Bộ sản phẩm bao gồm:</p>\n\n<ul>\n	<li>1 x &Aacute;o</li>\n</ul>\n\n<p>Đặc điểm ch&iacute;nh:</p>\n\n<table>\n	<tbody>\n		<tr>\n			<td>SKU</td>\n			<td>HU630FAAUHBVVNAMZ-475729</td>\n		</tr>\n		<tr>\n			<td>M&agrave;u</td>\n			<td>N&acirc;u</td>\n		</tr>\n		<tr>\n			<td>Chất liệu</td>\n			<td>Cotton</td>\n		</tr>\n		<tr>\n			<td>Mẫu m&atilde;</td>\n			<td>Caro07-D</td>\n		</tr>\n		<tr>\n			<td>K&iacute;ch thước sản phẩm (D x R x C cm)</td>\n			<td>25 x 10 x 1</td>\n		</tr>\n		<tr>\n			<td>Bảo h&agrave;nh</td>\n			<td>Kh&ocirc;ng</td>\n		</tr>\n		<tr>\n			<td>Trọng lượng (KG)</td>\n			<td>0.3</td>\n		</tr>\n	</tbody>\n</table>\n', '<p><strong>TH&Ocirc;NG TIN SẢN PHẨM</strong></p>\n\n<p>&Aacute;o sơ mi nam<br />\nM&agrave;u: t&iacute;m<br />\nChất liệu: Cotton<br />\nSản xuất tại Việt Nam<br />\nThiết kế trẻ trung; thời trang<br />\nKh&ocirc;ng bảo h&agrave;nh</p>\n', 17, 270000, 0.3, NULL, '2016-05-15 09:21:47', 'Ngô Tiến Phát', 1, 0),
(125, 12, 'Sơ mi nam đen', 'so-mi-dai-tay-21.jpg', '', '', 'so-mi-nam-den', '<p>Bộ sản phẩm bao gồm:</p>\n\n<ul>\n	<li>1 x &Aacute;o</li>\n</ul>\n\n<p>Đặc điểm ch&iacute;nh:</p>\n\n<table>\n	<tbody>\n		<tr>\n			<td>SKU</td>\n			<td>HU630FAAUHBVVNAMZ-475729</td>\n		</tr>\n		<tr>\n			<td>M&agrave;u</td>\n			<td>N&acirc;u</td>\n		</tr>\n		<tr>\n			<td>Chất liệu</td>\n			<td>Cotton</td>\n		</tr>\n		<tr>\n			<td>Mẫu m&atilde;</td>\n			<td>Caro07-D</td>\n		</tr>\n		<tr>\n			<td>K&iacute;ch thước sản phẩm (D x R x C cm)</td>\n			<td>25 x 10 x 1</td>\n		</tr>\n		<tr>\n			<td>Bảo h&agrave;nh</td>\n			<td>Kh&ocirc;ng</td>\n		</tr>\n		<tr>\n			<td>Trọng lượng (KG)</td>\n			<td>0.3</td>\n		</tr>\n	</tbody>\n</table>\n', '<p><strong>TH&Ocirc;NG TIN SẢN PHẨM</strong></p>\n\n<p>&Aacute;o sơ mi nam<br />\nM&agrave;u:&nbsp;đen<br />\nChất liệu: Cotton<br />\nSản xuất tại Việt Nam<br />\nThiết kế trẻ trung; thời trang<br />\nKh&ocirc;ng bảo h&agrave;nh</p>\n', 18, 270000, 0.3, NULL, '2016-05-15 09:21:58', 'Ngô Tiến Phát', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ref_invoice_status_codes`
--

CREATE TABLE IF NOT EXISTS `ref_invoice_status_codes` (
  `invoice_status_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `invoice_status_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ref_order_item_status_codes`
--

CREATE TABLE IF NOT EXISTS `ref_order_item_status_codes` (
  `order_item_status_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `oder_item_status_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ref_order_status_codes`
--

CREATE TABLE IF NOT EXISTS `ref_order_status_codes` (
  `order_status_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `order_status_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ref_payment_methods`
--

CREATE TABLE IF NOT EXISTS `ref_payment_methods` (
  `payment_method_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payment_method_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ref_product_types`
--

CREATE TABLE IF NOT EXISTS `ref_product_types` (
  `product_type_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `parent_product_type_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_type_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shipments`
--

CREATE TABLE IF NOT EXISTS `shipments` (
  `shipment_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `invoice_number` int(11) DEFAULT NULL,
  `shipment_tracking_number` int(11) DEFAULT NULL,
  `shipment_date` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `other_shipment_details` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shipment_items`
--

CREATE TABLE IF NOT EXISTS `shipment_items` (
  `shipment_id` int(11) NOT NULL,
  `order_item_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL,
  `pid_user` int(11) NOT NULL DEFAULT '3',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `birth_date` date DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci,
  `gender` int(11) DEFAULT '1',
  `phone_number` text COLLATE utf8_unicode_ci,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'user.png',
  `remember_token` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'NO',
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `trash` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `pid_user`, `name`, `fullname`, `birth_date`, `address`, `gender`, `phone_number`, `email`, `password`, `image`, `remember_token`, `updated_at`, `created_at`, `status`, `trash`) VALUES
(1, 1, 'admin', 'Admin', '1995-09-07', 'Cầu Giấy, Hà Nội', 1, '0967085852', 'admin@gmail.com', '$2a$06$Q6CBL0glUPHGr/gL9rFMoevIqQhEdRofkMjosaerT6fhazkNDlimy', 'admin.jpg', 'Bn6mJIHqtbB52xgLKmWPJbQcEhyVWS3mcdRODOt8EGWNzkjptYpwIfZIOvIw', '2016-09-12 08:38:37', '2016-08-31 17:56:52', 1, 0),
(2, 2, 'quangphat', 'Tiến Phát', '1994-09-08', 'Cầu Giấy, Hà Nội', 1, '0967085852', 'quangphattt95@gmail.com', '$2y$10$VSJiTiYzB6jrnlrbFDQAy.Mv2Z9sx5n9TtntmMraxF6C6a4JNks92', 'admin.jpg', 'mRlLyVBsO9T5xZJPzC9akPMeJbtiXRAvVrYLYpncSWE7XG9LZGUKqCHCDBVg', '2016-09-12 08:30:37', '2016-09-10 18:59:31', 1, 0),
(3, 3, 'buihoang', 'Bùi Ngọc Hoàng', '1993-09-11', 'Cầu Giấy, Hà Nội', 1, '0949223943', 'ngochoang@gmail.com', '$2a$06$Q6CBL0glUPHGr/gL9rFMoevIqQhEdRofkMjosaerT6fhazkNDlimy', 'user.png', 'NO', '2016-09-16 17:00:00', '2016-09-16 17:00:00', 1, 0),
(4, 3, 'maihuong', 'Mai Thị Hương', '1993-04-30', 'Đống Đa, Hà Nội', 0, '0923432432', 'vanhuong@gmail.com', '$2a$06$Q6CBL0glUPHGr/gL9rFMoevIqQhEdRofkMjosaerT6fhazkNDlimy', 'user.png', 'NO', '2016-09-16 17:00:00', '2016-09-16 17:00:00', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users_permission`
--

CREATE TABLE IF NOT EXISTS `users_permission` (
  `pid_user` int(11) NOT NULL,
  `permission` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `is_admin` int(11) NOT NULL DEFAULT '0',
  `read` int(11) NOT NULL DEFAULT '1',
  `write` int(11) NOT NULL DEFAULT '0',
  `delete` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users_permission`
--

INSERT INTO `users_permission` (`pid_user`, `permission`, `is_admin`, `read`, `write`, `delete`) VALUES
(1, 'MANAGE_USERS', 1, 1, 1, 1),
(2, 'admin', 0, 1, 1, 1),
(3, 'customer', 0, 1, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`),
  ADD KEY `FK_customer` (`user_id`);

--
-- Indexes for table `customer_payment_methods`
--
ALTER TABLE `customer_payment_methods`
  ADD PRIMARY KEY (`customer_payment_id`),
  ADD KEY `FK_customer_payment_methods` (`payment_method_code`),
  ADD KEY `FK_customer_id` (`customer_id`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`invoice_number`),
  ADD KEY `FK_invoices` (`order_id`),
  ADD KEY `FK_invoices_status_code` (`invoice_status_code`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `FK_orders` (`customer_id`),
  ADD KEY `FK_orders_status_code` (`order_status_code`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `FK_order_items` (`order_id`),
  ADD KEY `FK_product_items` (`product_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `ref_invoice_status_codes`
--
ALTER TABLE `ref_invoice_status_codes`
  ADD PRIMARY KEY (`invoice_status_code`);

--
-- Indexes for table `ref_order_item_status_codes`
--
ALTER TABLE `ref_order_item_status_codes`
  ADD PRIMARY KEY (`order_item_status_code`);

--
-- Indexes for table `ref_order_status_codes`
--
ALTER TABLE `ref_order_status_codes`
  ADD PRIMARY KEY (`order_status_code`);

--
-- Indexes for table `ref_payment_methods`
--
ALTER TABLE `ref_payment_methods`
  ADD PRIMARY KEY (`payment_method_code`);

--
-- Indexes for table `ref_product_types`
--
ALTER TABLE `ref_product_types`
  ADD PRIMARY KEY (`product_type_code`);

--
-- Indexes for table `shipments`
--
ALTER TABLE `shipments`
  ADD PRIMARY KEY (`shipment_id`),
  ADD KEY `FK_shipments` (`order_id`),
  ADD KEY `FK_shipments_invoide_number` (`invoice_number`);

--
-- Indexes for table `shipment_items`
--
ALTER TABLE `shipment_items`
  ADD PRIMARY KEY (`shipment_id`,`order_item_id`),
  ADD KEY `FK_shipment_items` (`order_item_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_permission`
--
ALTER TABLE `users_permission`
  ADD PRIMARY KEY (`pid_user`,`permission`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `customer_payment_methods`
--
ALTER TABLE `customer_payment_methods`
  MODIFY `customer_payment_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `invoice_number` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `order_item_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=126;
--
-- AUTO_INCREMENT for table `shipments`
--
ALTER TABLE `shipments`
  MODIFY `shipment_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `users_permission`
--
ALTER TABLE `users_permission`
  MODIFY `pid_user` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
