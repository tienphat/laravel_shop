/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 100110
Source Host           : localhost:3306
Source Database       : e_commerce

Target Server Type    : MYSQL
Target Server Version : 100110
File Encoding         : 65001

Date: 2016-08-23 11:53:28
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for customer
-- ----------------------------
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `organisation_or_person` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `organisation_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `middle_initial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `login_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `login_password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_number` int(15) DEFAULT NULL,
  `address_line_1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address_line_2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address_line_3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address_line_4` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `town_city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `county` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of customer
-- ----------------------------

-- ----------------------------
-- Table structure for customer_payment_methods
-- ----------------------------
DROP TABLE IF EXISTS `customer_payment_methods`;
CREATE TABLE `customer_payment_methods` (
  `customer_payment_id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `payment_method_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `credit_card_number` int(11) DEFAULT NULL,
  `payment_method_details` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`customer_payment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of customer_payment_methods
-- ----------------------------

-- ----------------------------
-- Table structure for invoices
-- ----------------------------
DROP TABLE IF EXISTS `invoices`;
CREATE TABLE `invoices` (
  `invoide_number` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `invoice_status_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `invoice_date` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `invoice_details` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`invoide_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of invoices
-- ----------------------------

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `order_status_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_order_placed` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of orders
-- ----------------------------

-- ----------------------------
-- Table structure for order_items
-- ----------------------------
DROP TABLE IF EXISTS `order_items`;
CREATE TABLE `order_items` (
  `order_item_id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `oder_item_status_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_item_quantity` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_item_price` decimal(10,2) DEFAULT NULL,
  `RMA_number` int(11) DEFAULT NULL,
  `RMA_issued_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `RMA_order_item_details` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`order_item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of order_items
-- ----------------------------

-- ----------------------------
-- Table structure for payments
-- ----------------------------
DROP TABLE IF EXISTS `payments`;
CREATE TABLE `payments` (
  `payment_id` int(11) NOT NULL,
  `invoice_number` int(11) DEFAULT NULL,
  `payment_date` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `payment_amount` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`payment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of payments
-- ----------------------------

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `product_id` int(10) NOT NULL,
  `product_type_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `return_merchandise_authorization_nr` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_price` decimal(10,2) DEFAULT NULL,
  `product_color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_size` float DEFAULT NULL,
  `product_desciption` text COLLATE utf8_unicode_ci,
  `other_product_details` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of products
-- ----------------------------

-- ----------------------------
-- Table structure for ref_invoice_status_codes
-- ----------------------------
DROP TABLE IF EXISTS `ref_invoice_status_codes`;
CREATE TABLE `ref_invoice_status_codes` (
  `invoice_status_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `invoice_status_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`invoice_status_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of ref_invoice_status_codes
-- ----------------------------

-- ----------------------------
-- Table structure for ref_order_item_status_codes
-- ----------------------------
DROP TABLE IF EXISTS `ref_order_item_status_codes`;
CREATE TABLE `ref_order_item_status_codes` (
  `order_item_status_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `oder_item_status_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`order_item_status_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of ref_order_item_status_codes
-- ----------------------------

-- ----------------------------
-- Table structure for ref_order_status_codes
-- ----------------------------
DROP TABLE IF EXISTS `ref_order_status_codes`;
CREATE TABLE `ref_order_status_codes` (
  `order_status_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `order_status_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`order_status_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of ref_order_status_codes
-- ----------------------------

-- ----------------------------
-- Table structure for ref_payment_methods
-- ----------------------------
DROP TABLE IF EXISTS `ref_payment_methods`;
CREATE TABLE `ref_payment_methods` (
  `payment_method_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payment_method_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`payment_method_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of ref_payment_methods
-- ----------------------------

-- ----------------------------
-- Table structure for ref_product_types
-- ----------------------------
DROP TABLE IF EXISTS `ref_product_types`;
CREATE TABLE `ref_product_types` (
  `product_type_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `parent_product_type_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_type_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`product_type_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of ref_product_types
-- ----------------------------

-- ----------------------------
-- Table structure for shipments
-- ----------------------------
DROP TABLE IF EXISTS `shipments`;
CREATE TABLE `shipments` (
  `shipment_id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `invoice_number` int(11) DEFAULT NULL,
  `shipment_tracking_number` int(11) DEFAULT NULL,
  `shipment_date` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `other_shipment_details` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`shipment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of shipments
-- ----------------------------

-- ----------------------------
-- Table structure for shipment_items
-- ----------------------------
DROP TABLE IF EXISTS `shipment_items`;
CREATE TABLE `shipment_items` (
  `shipment_id` int(11) NOT NULL,
  `order_item_id` int(11) NOT NULL,
  PRIMARY KEY (`shipment_id`,`order_item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of shipment_items
-- ----------------------------
SET FOREIGN_KEY_CHECKS=1;
