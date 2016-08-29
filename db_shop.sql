-- phpMyAdmin SQL Dump
-- version 4.4.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 29, 2016 at 03:03 AM
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
  `user_id` int(11) DEFAULT NULL,
  `organisation_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer_payment_methods`
--

CREATE TABLE IF NOT EXISTS `customer_payment_methods` (
  `customer_payment_id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `payment_method_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `credit_card_number` int(11) DEFAULT NULL,
  `payment_method_details` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE IF NOT EXISTS `invoices` (
  `invoide_number` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `invoice_status_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
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
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `order_status_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_order_placed` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE IF NOT EXISTS `order_items` (
  `order_item_id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `oder_item_status_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_item_quantity` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_item_price` decimal(10,2) DEFAULT NULL,
  `RMA_number` int(11) DEFAULT NULL,
  `RMA_issued_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `RMA_order_item_details` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
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
  `product_id` int(10) NOT NULL,
  `product_type_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_alias` text COLLATE utf8_unicode_ci NOT NULL,
  `product_images` text COLLATE utf8_unicode_ci NOT NULL,
  `product_price` decimal(10,2) DEFAULT NULL,
  `product_color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_size` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_desciption` text COLLATE utf8_unicode_ci,
  `other_product_details` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_type_code`, `product_name`, `product_alias`, `product_images`, `product_price`, `product_color`, `product_size`, `product_desciption`, `other_product_details`) VALUES
(0, 'SP001', 'Áo sơ mi 01', 'ao_so_mi_01', 'so-mi-nam-1.jpg', '280000.00', 'đỏ', '39,40,41,42,43', 'Áo sơ mi đỏ size 43', 'Chi tiết áo '),
(1, 'SP002', 'Áo sơ mi 02', 'ao_so_mi_02', 'so-mi-nam-2.jpg', '280000.00', 'đỏ', '39,40,41,42,43', 'Áo sơ mi đỏ size 43', 'Chi tiết áo ');

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
  `parent_product_type_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_type_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shipments`
--

CREATE TABLE IF NOT EXISTS `shipments` (
  `shipment_id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
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
  `user_id` int(11) NOT NULL,
  `email_address` varchar(255) DEFAULT NULL,
  `login_name` varchar(255) DEFAULT NULL,
  `login_password` varchar(255) DEFAULT NULL,
  `gender` int(3) DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone_number` varchar(15) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `logined` datetime DEFAULT NULL,
  `level` int(3) DEFAULT NULL,
  `status` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `customer_payment_methods`
--
ALTER TABLE `customer_payment_methods`
  ADD PRIMARY KEY (`customer_payment_id`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`invoide_number`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`order_item_id`);

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
  ADD PRIMARY KEY (`shipment_id`);

--
-- Indexes for table `shipment_items`
--
ALTER TABLE `shipment_items`
  ADD PRIMARY KEY (`shipment_id`,`order_item_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=36;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
