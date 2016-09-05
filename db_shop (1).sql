-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 05, 2016 at 04:28 AM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 5.6.19

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

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `organisation_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer_payment_methods`
--

CREATE TABLE `customer_payment_methods` (
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

CREATE TABLE `invoices` (
  `invoice_number` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `invoice_status_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `invoice_date` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `invoice_details` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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

CREATE TABLE `migrations` (
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

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `order_status_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_order_placed` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
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
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `payment_id` int(11) NOT NULL,
  `invoice_number` int(11) DEFAULT NULL,
  `payment_date` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `payment_amount` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(10) NOT NULL,
  `product_type_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_alias` text COLLATE utf8_unicode_ci,
  `product_quantity` int(11) DEFAULT NULL,
  `product_images` text COLLATE utf8_unicode_ci,
  `product_price` decimal(10,2) DEFAULT NULL,
  `product_color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_size` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_description` text COLLATE utf8_unicode_ci,
  `product_discount` float DEFAULT NULL,
  `other_product_details` text COLLATE utf8_unicode_ci,
  `status` int(11) DEFAULT NULL,
  `trash` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_type_code`, `product_name`, `product_alias`, `product_quantity`, `product_images`, `product_price`, `product_color`, `product_size`, `product_description`, `product_discount`, `other_product_details`, `status`, `trash`) VALUES
(0, 'SP001', 'Áo sơ mi 01', 'ao_so_mi_01', 20, 'so-mi-nam-1.jpg', '280000.00', 'đỏ', '39,40,41,42,43', 'Áo sơ mi đỏ size 43', 0.25, 'Chi tiết áo ', 0, NULL),
(1, 'SP002', 'Áo sơ mi 02', 'ao_so_mi_02', 15, 'so-mi-nam-2.jpg', '270000.00', 'đỏ', '39,40,41,42,43', 'Áo sơ mi đỏ size 43', 0.15, 'Chi tiết áo ', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ref_invoice_status_codes`
--

CREATE TABLE `ref_invoice_status_codes` (
  `invoice_status_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `invoice_status_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ref_order_item_status_codes`
--

CREATE TABLE `ref_order_item_status_codes` (
  `order_item_status_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `oder_item_status_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ref_order_status_codes`
--

CREATE TABLE `ref_order_status_codes` (
  `order_status_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `order_status_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ref_payment_methods`
--

CREATE TABLE `ref_payment_methods` (
  `payment_method_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payment_method_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ref_product_types`
--

CREATE TABLE `ref_product_types` (
  `product_type_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `parent_product_type_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_type_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shipments`
--

CREATE TABLE `shipments` (
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

CREATE TABLE `shipment_items` (
  `shipment_id` int(11) NOT NULL,
  `order_item_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `name` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `password` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `gender` int(11) DEFAULT NULL,
  `fullname` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `address` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `phone_number` varchar(15) CHARACTER SET latin1 DEFAULT NULL,
  `remember_token` varchar(255) CHARACTER SET latin1 NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `logined_at` timestamp NULL DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `trash` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `name`, `password`, `gender`, `fullname`, `address`, `phone_number`, `remember_token`, `created_at`, `updated_at`, `logined_at`, `level`, `status`, `trash`) VALUES
(1, 'quangphatc3@gmail.com', 'admin', '$2a$06$Q6CBL0glUPHGr/gL9rFMoevIqQhEdRofkMjosaerT6fhazkNDlimy', 1, 'Ngô Ti?n Phát', 'C?u Gi?y, Hà N?i', '0967085852', 'YES', '2016-08-31 17:56:52', '2016-08-31 17:57:00', NULL, 1, 1, 0);

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
  ADD PRIMARY KEY (`shipment_id`,`order_item_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
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
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `shipments`
--
ALTER TABLE `shipments`
  MODIFY `shipment_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
