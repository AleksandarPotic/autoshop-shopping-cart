-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 17, 2018 at 01:38 PM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `autoshop2`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Akomulator', 'akomulator', '2018-02-09 14:56:11', '2018-02-09 14:56:11'),
(2, 'Staklo', 'staklo', '2018-02-09 14:56:11', '2018-02-09 14:56:11'),
(3, 'Retrovizor', 'retrovizor', '2018-02-09 14:56:11', '2018-02-09 14:56:11'),
(4, 'Motor', 'motor', '2018-02-09 14:56:11', '2018-02-09 14:56:11'),
(5, 'Gume', 'gume', '2018-02-09 14:56:11', '2018-02-09 14:56:11'),
(6, 'Ostalo', 'ostalo', '2018-02-09 14:56:11', '2018-02-09 14:56:11');

-- --------------------------------------------------------

--
-- Table structure for table `category_product`
--

CREATE TABLE `category_product` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_product`
--

INSERT INTO `category_product` (`id`, `product_id`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 2, 1, NULL, NULL),
(3, 3, 1, NULL, NULL),
(4, 4, 1, NULL, NULL),
(5, 5, 1, NULL, NULL),
(6, 6, 1, NULL, NULL),
(7, 7, 1, NULL, NULL),
(8, 8, 1, NULL, NULL),
(9, 9, 1, NULL, NULL),
(10, 10, 1, NULL, NULL),
(11, 11, 1, NULL, NULL),
(12, 12, 2, NULL, NULL),
(13, 13, 2, NULL, NULL),
(14, 14, 2, NULL, NULL),
(15, 15, 2, NULL, NULL),
(16, 16, 2, NULL, NULL),
(17, 17, 2, NULL, NULL),
(18, 18, 2, NULL, NULL),
(19, 19, 2, NULL, NULL),
(20, 20, 2, NULL, NULL),
(21, 21, 2, NULL, NULL),
(22, 22, 2, NULL, NULL),
(23, 23, 3, NULL, NULL),
(24, 24, 3, NULL, NULL),
(25, 25, 3, NULL, NULL),
(26, 26, 3, NULL, NULL),
(27, 27, 3, NULL, NULL),
(28, 28, 3, NULL, NULL),
(29, 29, 3, NULL, NULL),
(30, 30, 3, NULL, NULL),
(31, 31, 3, NULL, NULL),
(32, 32, 3, NULL, NULL),
(33, 33, 3, NULL, NULL),
(34, 34, 4, NULL, NULL),
(35, 35, 4, NULL, NULL),
(36, 36, 4, NULL, NULL),
(37, 37, 4, NULL, NULL),
(38, 38, 4, NULL, NULL),
(39, 39, 4, NULL, NULL),
(40, 40, 4, NULL, NULL),
(41, 41, 4, NULL, NULL),
(42, 42, 4, NULL, NULL),
(43, 43, 4, NULL, NULL),
(44, 44, 4, NULL, NULL),
(45, 45, 5, NULL, NULL),
(46, 46, 5, NULL, NULL),
(47, 47, 5, NULL, NULL),
(48, 48, 5, NULL, NULL),
(49, 49, 5, NULL, NULL),
(50, 50, 5, NULL, NULL),
(51, 51, 5, NULL, NULL),
(52, 52, 5, NULL, NULL),
(53, 53, 5, NULL, NULL),
(54, 54, 5, NULL, NULL),
(55, 55, 5, NULL, NULL),
(56, 56, 6, NULL, NULL),
(57, 57, 6, NULL, NULL),
(58, 58, 6, NULL, NULL),
(59, 59, 6, NULL, NULL),
(60, 60, 6, NULL, NULL),
(61, 61, 6, NULL, NULL),
(62, 62, 6, NULL, NULL),
(63, 63, 6, NULL, NULL),
(64, 64, 6, NULL, NULL),
(65, 65, 6, NULL, NULL),
(66, 66, 6, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` int(10) UNSIGNED NOT NULL,
  `discountCode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` int(11) DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(2, 1, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, '', 2),
(3, 1, 'category_id', 'text', 'Category', 1, 0, 1, 1, 1, 0, '', 3),
(4, 1, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '', 4),
(5, 1, 'excerpt', 'text_area', 'excerpt', 1, 0, 1, 1, 1, 1, '', 5),
(6, 1, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, '', 6),
(7, 1, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(8, 1, 'slug', 'text', 'slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true}}', 8),
(9, 1, 'meta_description', 'text_area', 'meta_description', 1, 0, 1, 1, 1, 1, '', 9),
(10, 1, 'meta_keywords', 'text_area', 'meta_keywords', 1, 0, 1, 1, 1, 1, '', 10),
(11, 1, 'status', 'select_dropdown', 'status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(12, 1, 'created_at', 'timestamp', 'created_at', 0, 1, 1, 0, 0, 0, '', 12),
(13, 1, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '', 13),
(14, 2, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '', 1),
(15, 2, 'author_id', 'text', 'author_id', 1, 0, 0, 0, 0, 0, '', 2),
(16, 2, 'title', 'text', 'title', 1, 1, 1, 1, 1, 1, '', 3),
(17, 2, 'excerpt', 'text_area', 'excerpt', 1, 0, 1, 1, 1, 1, '', 4),
(18, 2, 'body', 'rich_text_box', 'body', 1, 0, 1, 1, 1, 1, '', 5),
(19, 2, 'slug', 'text', 'slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"}}', 6),
(20, 2, 'meta_description', 'text', 'meta_description', 1, 0, 1, 1, 1, 1, '', 7),
(21, 2, 'meta_keywords', 'text', 'meta_keywords', 1, 0, 1, 1, 1, 1, '', 8),
(22, 2, 'status', 'select_dropdown', 'status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(23, 2, 'created_at', 'timestamp', 'created_at', 1, 1, 1, 0, 0, 0, '', 10),
(24, 2, 'updated_at', 'timestamp', 'updated_at', 1, 0, 0, 0, 0, 0, '', 11),
(25, 2, 'image', 'image', 'image', 0, 1, 1, 1, 1, 1, '', 12),
(26, 3, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '', 1),
(27, 3, 'name', 'text', 'name', 1, 1, 1, 1, 1, 1, '', 2),
(28, 3, 'email', 'text', 'email', 1, 1, 1, 1, 1, 1, '', 3),
(29, 3, 'password', 'password', 'password', 0, 0, 0, 1, 1, 0, '', 4),
(30, 3, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"roles\",\"pivot\":\"0\"}', 10),
(31, 3, 'remember_token', 'text', 'remember_token', 0, 0, 0, 0, 0, 0, '', 5),
(32, 3, 'created_at', 'timestamp', 'created_at', 0, 1, 1, 0, 0, 0, '', 6),
(33, 3, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '', 7),
(34, 3, 'avatar', 'image', 'avatar', 0, 1, 1, 1, 1, 1, '', 8),
(35, 5, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '', 1),
(36, 5, 'name', 'text', 'name', 1, 1, 1, 1, 1, 1, '', 2),
(37, 5, 'created_at', 'timestamp', 'created_at', 0, 0, 0, 0, 0, 0, '', 3),
(38, 5, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '', 4),
(39, 4, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '', 1),
(40, 4, 'parent_id', 'select_dropdown', 'parent_id', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(41, 4, 'order', 'text', 'order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(42, 4, 'name', 'text', 'name', 1, 1, 1, 1, 1, 1, '', 4),
(43, 4, 'slug', 'text', 'slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(44, 4, 'created_at', 'timestamp', 'created_at', 0, 0, 1, 0, 0, 0, '', 6),
(45, 4, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '', 7),
(46, 6, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '', 1),
(47, 6, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 2),
(48, 6, 'created_at', 'timestamp', 'created_at', 0, 0, 0, 0, 0, 0, '', 3),
(49, 6, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '', 4),
(50, 6, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, '', 5),
(51, 1, 'seo_title', 'text', 'seo_title', 0, 1, 1, 1, 1, 1, '', 14),
(52, 1, 'featured', 'checkbox', 'featured', 1, 1, 1, 1, 1, 1, '', 15),
(53, 3, 'role_id', 'text', 'role_id', 1, 1, 1, 1, 1, 1, '', 9),
(54, 7, 'id', 'hidden', 'Id', 1, 1, 1, 1, 1, 1, NULL, 1),
(55, 7, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(56, 7, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, NULL, 3),
(57, 7, 'details', 'text', 'Details', 0, 1, 1, 1, 1, 1, NULL, 4),
(58, 7, 'price', 'number', 'Price', 1, 1, 1, 1, 1, 1, NULL, 5),
(59, 7, 'image', 'image', 'Image', 1, 1, 1, 1, 1, 1, NULL, 6),
(60, 7, 'description', 'text', 'Description', 1, 1, 1, 1, 1, 1, NULL, 7),
(61, 7, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 8),
(62, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 9),
(63, 8, 'id', 'hidden', 'Id', 1, 1, 1, 1, 1, 1, NULL, 1),
(64, 8, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(65, 8, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, NULL, 3),
(66, 8, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 4),
(67, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 5),
(68, 9, 'id', 'hidden', 'Id', 1, 1, 1, 1, 1, 1, NULL, 1),
(69, 9, 'product_id', 'number', 'Product Id', 0, 1, 1, 1, 1, 1, NULL, 2),
(70, 9, 'category_id', 'number', 'Category Id', 0, 1, 1, 1, 1, 1, NULL, 3),
(71, 9, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 4),
(72, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 5),
(73, 10, 'id', 'hidden', 'Id', 1, 1, 1, 1, 1, 1, NULL, 1),
(74, 10, 'discountCode', 'text', 'DiscountCode', 1, 1, 1, 1, 1, 1, NULL, 2),
(75, 10, 'type', 'text', 'Type', 1, 1, 1, 1, 1, 1, '{\"default\":\"fixed\"}', 3),
(76, 10, 'value', 'number', 'Value', 0, 1, 1, 1, 1, 1, NULL, 4),
(77, 10, 'email', 'text', 'Email', 0, 1, 1, 1, 1, 1, NULL, 5),
(78, 10, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 6),
(79, 10, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(80, 11, 'id', 'hidden', 'Id', 1, 1, 1, 1, 1, 1, NULL, 1),
(81, 11, 'user_id', 'number', 'User Id', 0, 1, 1, 1, 1, 1, NULL, 2),
(82, 11, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 3),
(83, 11, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 4),
(84, 11, 'mobile', 'text', 'Mobile', 1, 1, 1, 1, 1, 1, NULL, 5),
(85, 11, 'street', 'text', 'Street', 1, 1, 1, 1, 1, 1, NULL, 6),
(86, 11, 'city', 'text', 'City', 1, 1, 1, 1, 1, 1, NULL, 7),
(87, 11, 'postalCode', 'text', 'PostalCode', 1, 1, 1, 1, 1, 1, NULL, 8),
(88, 11, 'cart', 'text', 'Cart', 1, 1, 1, 1, 1, 1, NULL, 9),
(89, 11, 'totalPrice', 'text', 'TotalPrice', 1, 1, 1, 1, 1, 1, NULL, 10),
(90, 11, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 11),
(91, 11, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 12);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `created_at`, `updated_at`) VALUES
(1, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, '2018-02-09 14:55:07', '2018-02-09 14:55:07'),
(2, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, '2018-02-09 14:55:07', '2018-02-09 14:55:07'),
(3, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', '', '', 1, 0, '2018-02-09 14:55:07', '2018-02-09 14:55:07'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, '2018-02-09 14:55:07', '2018-02-09 14:55:07'),
(5, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, '2018-02-09 14:55:07', '2018-02-09 14:55:07'),
(6, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, '2018-02-09 14:55:07', '2018-02-09 14:55:07'),
(7, 'products', 'products', 'Product', 'Products', 'voyager-bag', 'App\\Product', NULL, NULL, NULL, 1, 0, '2018-02-09 15:21:10', '2018-02-09 15:21:10'),
(8, 'category', 'category', 'Category', 'Categories', 'voyager-tag', 'App\\Category', NULL, NULL, NULL, 1, 0, '2018-02-09 15:21:46', '2018-02-09 15:21:46'),
(9, 'category_product', 'category-product', 'Category Product', 'Category Products', 'voyager-paper-plane', 'App\\CategoryProduct', NULL, NULL, NULL, 1, 0, '2018-02-09 15:22:51', '2018-02-09 15:22:51'),
(10, 'coupons', 'coupons', 'Coupon', 'Coupons', 'voyager-ticket', 'App\\Coupon', NULL, NULL, NULL, 1, 0, '2018-02-09 15:24:09', '2018-02-09 15:24:09'),
(11, 'home_deliveries', 'home-deliveries', 'Home Delivery', 'Home Deliveries', 'voyager-basket', 'App\\HomeDelivery', NULL, NULL, NULL, 1, 0, '2018-02-10 17:42:13', '2018-02-10 17:42:13');

-- --------------------------------------------------------

--
-- Table structure for table `home_deliveries`
--

CREATE TABLE `home_deliveries` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `street` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postalCode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cart` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `totalPrice` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_deliveries`
--

INSERT INTO `home_deliveries` (`id`, `user_id`, `name`, `email`, `mobile`, `street`, `city`, `postalCode`, `cart`, `totalPrice`, `created_at`, `updated_at`) VALUES
(15, '3', 'Aleksandar Potic', 'aleksandar1995potic@gmail.com', '0665064004', 'sl.Drzina br 200', 'Pirot', '18300', 'O:29:\"Illuminate\\Support\\Collection\":1:{s:8:\"\0*\0items\";a:2:{s:32:\"addc525ce43f5cbb4517bfa51c9c08e5\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":8:{s:5:\"rowId\";s:32:\"addc525ce43f5cbb4517bfa51c9c08e5\";s:2:\"id\";s:2:\"26\";s:3:\"qty\";s:1:\"3\";s:4:\"name\";s:12:\"Retrovizor 4\";s:5:\"price\";d:569;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":1:{s:8:\"\0*\0items\";a:0:{}}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:11:\"App\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:21;}s:32:\"18d6934483b994fb9943b43b7d7646bf\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":8:{s:5:\"rowId\";s:32:\"18d6934483b994fb9943b43b7d7646bf\";s:2:\"id\";s:1:\"8\";s:3:\"qty\";s:1:\"1\";s:4:\"name\";s:12:\"Akomulator 8\";s:5:\"price\";d:856;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":1:{s:8:\"\0*\0items\";a:0:{}}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:11:\"App\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:21;}}}', '3,024.34', '2018-02-10 17:19:59', '2018-02-10 17:19:59'),
(16, '3', 'Aleksandar Potic', 'aleksandar1995potic@gmail.com', '0665064004', 'sl.Drzina br 200', 'Pirot', '18300', 'O:29:\"Illuminate\\Support\\Collection\":1:{s:8:\"\0*\0items\";a:1:{s:32:\"eef12573176125ce53e333e13d747a17\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":8:{s:5:\"rowId\";s:32:\"eef12573176125ce53e333e13d747a17\";s:2:\"id\";s:2:\"12\";s:3:\"qty\";s:1:\"1\";s:4:\"name\";s:8:\"Staklo 1\";s:5:\"price\";d:149;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":1:{s:8:\"\0*\0items\";a:0:{}}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:11:\"App\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:21;}}}', '175.82', '2018-02-10 17:30:31', '2018-02-10 17:30:31'),
(17, NULL, 'Marinko Rokvic', 'marinkorokvic@gmail.com', '0665053792', 'Bulevar Nikole Tesle b44', 'Nis', '18000', 'O:29:\"Illuminate\\Support\\Collection\":1:{s:8:\"\0*\0items\";a:1:{s:32:\"88aad65a1416c8271cddc2ee48e4a30b\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":8:{s:5:\"rowId\";s:32:\"88aad65a1416c8271cddc2ee48e4a30b\";s:2:\"id\";s:2:\"56\";s:3:\"qty\";s:1:\"1\";s:4:\"name\";s:8:\"Ostalo 1\";s:5:\"price\";d:271;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":1:{s:8:\"\0*\0items\";a:0:{}}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:11:\"App\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:21;}}}', '319.78', '2018-02-10 17:38:05', '2018-02-10 17:38:05'),
(18, '3', 'Aleksandar Potic', 'aleksandar1995potic@gmail.com', '0665064004', 'sl.Drzina br 200', 'Pirot', '18300', 'O:29:\"Illuminate\\Support\\Collection\":1:{s:8:\"\0*\0items\";a:1:{s:32:\"8b486433ba8a9e4089eafa927840a692\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":8:{s:5:\"rowId\";s:32:\"8b486433ba8a9e4089eafa927840a692\";s:2:\"id\";s:2:\"13\";s:3:\"qty\";s:1:\"1\";s:4:\"name\";s:8:\"Staklo 2\";s:5:\"price\";d:904;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":1:{s:8:\"\0*\0items\";a:0:{}}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:11:\"App\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:21;}}}', '1,066.72', '2018-02-16 15:52:31', '2018-02-16 15:52:31'),
(19, '3', 'Aleksandar Potic', 'aleksandar1995potic@gmail.com', '0665064004', 'sl.Drzina br 200', 'Pirot', '18300', 'O:29:\"Illuminate\\Support\\Collection\":1:{s:8:\"\0*\0items\";a:1:{s:32:\"6aa0d4b8fac3c55a3e83b7e2b7d1cb97\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":8:{s:5:\"rowId\";s:32:\"6aa0d4b8fac3c55a3e83b7e2b7d1cb97\";s:2:\"id\";s:2:\"24\";s:3:\"qty\";s:1:\"1\";s:4:\"name\";s:12:\"Retrovizor 2\";s:5:\"price\";d:881;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":1:{s:8:\"\0*\0items\";a:0:{}}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:11:\"App\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:21;}}}', '1,039.58', '2018-02-16 15:53:17', '2018-02-16 15:53:17'),
(20, '3', 'Aleksandar Potic', 'aleksandar1995potic@gmail.com', '0665064004', 'sl.Drzina br 200', 'Pirot', '18300', 'O:29:\"Illuminate\\Support\\Collection\":1:{s:8:\"\0*\0items\";a:1:{s:32:\"49b344bb1c30597cf0a6df3a0cd1f5dc\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":8:{s:5:\"rowId\";s:32:\"49b344bb1c30597cf0a6df3a0cd1f5dc\";s:2:\"id\";s:2:\"58\";s:3:\"qty\";s:1:\"1\";s:4:\"name\";s:8:\"Ostalo 3\";s:5:\"price\";d:353;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":1:{s:8:\"\0*\0items\";a:0:{}}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:11:\"App\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:21;}}}', '416.54', '2018-02-16 15:57:35', '2018-02-16 15:57:35'),
(21, '3', 'Aleksandar Potic', 'aleksandar1995potic@gmail.com', '0665064004', 'sl.Drzina br 200', 'Pirot', '18300', 'O:29:\"Illuminate\\Support\\Collection\":1:{s:8:\"\0*\0items\";a:1:{s:32:\"303a7f02364f1e92dc60c05c9b15239f\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":8:{s:5:\"rowId\";s:32:\"303a7f02364f1e92dc60c05c9b15239f\";s:2:\"id\";s:2:\"18\";s:3:\"qty\";s:1:\"1\";s:4:\"name\";s:8:\"Staklo 7\";s:5:\"price\";d:789;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":1:{s:8:\"\0*\0items\";a:0:{}}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:11:\"App\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:21;}}}', '931.02', '2018-02-16 15:58:05', '2018-02-16 15:58:05'),
(22, '3', 'Aleksandar Potic', 'aleksandar1995potic@gmail.com', '0665064004', 'sl.Drzina br 200', 'Pirot', '18300', 'O:29:\"Illuminate\\Support\\Collection\":1:{s:8:\"\0*\0items\";a:1:{s:32:\"49b344bb1c30597cf0a6df3a0cd1f5dc\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":8:{s:5:\"rowId\";s:32:\"49b344bb1c30597cf0a6df3a0cd1f5dc\";s:2:\"id\";s:2:\"58\";s:3:\"qty\";s:1:\"1\";s:4:\"name\";s:8:\"Ostalo 3\";s:5:\"price\";d:353;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":1:{s:8:\"\0*\0items\";a:0:{}}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:11:\"App\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:21;}}}', '416.54', '2018-02-16 15:58:24', '2018-02-16 15:58:24'),
(23, '3', 'Aleksandar Potic', 'aleksandar1995potic@gmail.com', '0665064004', 'sl.Drzina br 200', 'Pirot', '18300', 'O:29:\"Illuminate\\Support\\Collection\":1:{s:8:\"\0*\0items\";a:1:{s:32:\"303a7f02364f1e92dc60c05c9b15239f\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":8:{s:5:\"rowId\";s:32:\"303a7f02364f1e92dc60c05c9b15239f\";s:2:\"id\";s:2:\"18\";s:3:\"qty\";s:1:\"1\";s:4:\"name\";s:8:\"Staklo 7\";s:5:\"price\";d:789;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":1:{s:8:\"\0*\0items\";a:0:{}}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:11:\"App\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:21;}}}', '931.02', '2018-02-16 15:58:45', '2018-02-16 15:58:45'),
(24, '3', 'Aleksandar Potic', 'aleksandar1995potic@gmail.com', '0665064004', 'sl.Drzina br 200', 'Pirot', '18300', 'O:29:\"Illuminate\\Support\\Collection\":1:{s:8:\"\0*\0items\";a:2:{s:32:\"49b344bb1c30597cf0a6df3a0cd1f5dc\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":8:{s:5:\"rowId\";s:32:\"49b344bb1c30597cf0a6df3a0cd1f5dc\";s:2:\"id\";s:2:\"58\";s:3:\"qty\";s:1:\"1\";s:4:\"name\";s:8:\"Ostalo 3\";s:5:\"price\";d:353;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":1:{s:8:\"\0*\0items\";a:0:{}}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:11:\"App\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:21;}s:32:\"c42f6beec9c93fd6afea6eb0684aa99a\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":8:{s:5:\"rowId\";s:32:\"c42f6beec9c93fd6afea6eb0684aa99a\";s:2:\"id\";s:1:\"9\";s:3:\"qty\";s:1:\"2\";s:4:\"name\";s:12:\"Akomulator 9\";s:5:\"price\";d:715;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":1:{s:8:\"\0*\0items\";a:0:{}}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:11:\"App\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:21;}}}', '2,103.94', '2018-02-16 16:12:11', '2018-02-16 16:12:11'),
(25, '3', 'Aleksandar Potic', 'aleksandar1995potic@gmail.com', '0665064004', 'sl.Drzina br 200', 'Pirot', '18300', 'O:29:\"Illuminate\\Support\\Collection\":1:{s:8:\"\0*\0items\";a:1:{s:32:\"1ca30d70ab09187def0f79120f1607ee\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":8:{s:5:\"rowId\";s:32:\"1ca30d70ab09187def0f79120f1607ee\";s:2:\"id\";s:2:\"43\";s:3:\"qty\";s:1:\"1\";s:4:\"name\";s:8:\"Motor 10\";s:5:\"price\";d:883;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":1:{s:8:\"\0*\0items\";a:0:{}}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:11:\"App\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:21;}}}', '883.00', '2018-02-17 11:24:45', '2018-02-17 11:24:45'),
(26, '3', 'Aleksandar Potic', 'aleksandar1995potic@gmail.com', '0665064004', 'sl.Drzina br 200', 'Pirot', '18300', 'O:29:\"Illuminate\\Support\\Collection\":1:{s:8:\"\0*\0items\";a:1:{s:32:\"c42f6beec9c93fd6afea6eb0684aa99a\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":8:{s:5:\"rowId\";s:32:\"c42f6beec9c93fd6afea6eb0684aa99a\";s:2:\"id\";s:1:\"9\";s:3:\"qty\";s:1:\"1\";s:4:\"name\";s:12:\"Akomulator 9\";s:5:\"price\";d:715;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":1:{s:8:\"\0*\0items\";a:0:{}}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:11:\"App\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:21;}}}', '715.00', '2018-02-17 11:25:13', '2018-02-17 11:25:13'),
(27, '3', 'Aleksandar Potic', 'aleksandar1995potic@gmail.com', '0665064004', 'sl.Drzina br 200', 'Pirot', '18300', 'O:29:\"Illuminate\\Support\\Collection\":1:{s:8:\"\0*\0items\";a:1:{s:32:\"0d881817bb81e6017d2df92d0313f607\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":8:{s:5:\"rowId\";s:32:\"0d881817bb81e6017d2df92d0313f607\";s:2:\"id\";s:2:\"25\";s:3:\"qty\";s:1:\"1\";s:4:\"name\";s:12:\"Retrovizor 3\";s:5:\"price\";d:488;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":1:{s:8:\"\0*\0items\";a:0:{}}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:11:\"App\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:21;}}}', '488.00', '2018-02-17 11:25:43', '2018-02-17 11:25:43'),
(28, '3', 'Aleksandar Potic', 'aleksandar1995potic@gmail.com', '0665064004', 'sl.Drzina br 200', 'Pirot', '18300', 'O:29:\"Illuminate\\Support\\Collection\":1:{s:8:\"\0*\0items\";a:1:{s:32:\"ab474a72475ea6ea54d2085e5cdacc28\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":8:{s:5:\"rowId\";s:32:\"ab474a72475ea6ea54d2085e5cdacc28\";s:2:\"id\";s:2:\"15\";s:3:\"qty\";s:1:\"1\";s:4:\"name\";s:8:\"Staklo 4\";s:5:\"price\";d:223;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":1:{s:8:\"\0*\0items\";a:0:{}}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:11:\"App\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:21;}}}', '-0.00', '2018-02-17 11:26:27', '2018-02-17 11:26:27'),
(29, '3', 'Aleksandar Potic', 'aleksandar1995potic@gmail.com', '0665064004', 'sl.Drzina br 200', 'Pirot', '18300', 'O:29:\"Illuminate\\Support\\Collection\":1:{s:8:\"\0*\0items\";a:1:{s:32:\"303a7f02364f1e92dc60c05c9b15239f\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":8:{s:5:\"rowId\";s:32:\"303a7f02364f1e92dc60c05c9b15239f\";s:2:\"id\";s:2:\"18\";s:3:\"qty\";s:1:\"1\";s:4:\"name\";s:8:\"Staklo 7\";s:5:\"price\";d:789;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":1:{s:8:\"\0*\0items\";a:0:{}}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:11:\"App\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:21;}}}', '789.00', '2018-02-17 11:37:22', '2018-02-17 11:37:22');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2018-02-09 14:55:10', '2018-02-09 14:55:10');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2018-02-09 14:55:10', '2018-02-09 15:26:11', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 8, '2018-02-09 14:55:10', '2018-02-09 15:26:37', 'voyager.media.index', NULL),
(3, 1, 'Posts', '', '_self', 'voyager-news', NULL, NULL, 9, '2018-02-09 14:55:10', '2018-02-09 15:26:38', 'voyager.posts.index', NULL),
(4, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 2, '2018-02-09 14:55:10', '2018-02-09 15:26:40', 'voyager.users.index', NULL),
(5, 1, 'Categories', '', '_self', 'voyager-categories', NULL, NULL, 4, '2018-02-09 14:55:10', '2018-02-09 15:26:40', 'voyager.categories.index', NULL),
(6, 1, 'Pages', '', '_self', 'voyager-file-text', NULL, NULL, 10, '2018-02-09 14:55:10', '2018-02-09 15:26:38', 'voyager.pages.index', NULL),
(7, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 6, '2018-02-09 14:55:10', '2018-02-09 15:26:37', 'voyager.roles.index', NULL),
(8, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 12, '2018-02-09 14:55:10', '2018-02-09 15:26:34', NULL, NULL),
(9, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 8, 1, '2018-02-09 14:55:10', '2018-02-09 15:26:02', 'voyager.menus.index', NULL),
(10, 1, 'Database', '', '_self', 'voyager-data', NULL, 8, 2, '2018-02-09 14:55:10', '2018-02-09 15:26:02', 'voyager.database.index', NULL),
(11, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 8, 3, '2018-02-09 14:55:11', '2018-02-09 15:26:02', 'voyager.compass.index', NULL),
(12, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 13, '2018-02-09 14:55:11', '2018-02-09 15:26:34', 'voyager.settings.index', NULL),
(13, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 8, 4, '2018-02-09 14:55:16', '2018-02-09 15:26:03', 'voyager.hooks', NULL),
(14, 1, 'Products', '/admin/products', '_self', 'voyager-bag', NULL, NULL, 3, '2018-02-09 15:21:11', '2018-02-09 15:26:40', NULL, NULL),
(15, 1, 'Categories', '/admin/category', '_self', 'voyager-tag', NULL, NULL, 11, '2018-02-09 15:21:46', '2018-02-09 15:26:34', NULL, NULL),
(16, 1, 'Category Products', '/admin/category-product', '_self', 'voyager-paper-plane', NULL, NULL, 5, '2018-02-09 15:22:51', '2018-02-09 15:26:40', NULL, NULL),
(17, 1, 'Coupons', '/admin/coupons', '_self', 'voyager-ticket', NULL, NULL, 7, '2018-02-09 15:24:10', '2018-02-09 15:26:37', NULL, NULL),
(18, 1, 'Home Deliveries', '/admin/home-deliveries', '_self', 'voyager-basket', NULL, NULL, 14, '2018-02-10 17:42:13', '2018-02-10 17:42:13', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_01_01_000000_create_pages_table', 1),
(6, '2016_01_01_000000_create_posts_table', 1),
(7, '2016_02_15_204651_create_categories_table', 1),
(8, '2016_05_19_173453_create_menu_table', 1),
(9, '2016_10_21_190000_create_roles_table', 1),
(10, '2016_10_21_190000_create_settings_table', 1),
(11, '2016_11_30_135954_create_permission_table', 1),
(12, '2016_11_30_141208_create_permission_role_table', 1),
(13, '2016_12_26_201236_data_types__add__server_side', 1),
(14, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(15, '2017_01_14_005015_create_translations_table', 1),
(16, '2017_01_15_000000_add_permission_group_id_to_permissions_table', 1),
(17, '2017_01_15_000000_create_permission_groups_table', 1),
(18, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(19, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(20, '2017_04_11_000000_alter_post_nullable_fields_table', 1),
(21, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(22, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(23, '2017_08_05_000000_add_group_to_settings_table', 1),
(24, '2018_01_26_174327_create_products_table', 1),
(25, '2018_02_03_112743_create_category_table', 1),
(26, '2018_02_03_114112_create_category_product_table', 1),
(27, '2018_02_05_095103_create_coupons_table', 1),
(28, '2018_02_06_181115_create_orders_table', 1),
(29, '2018_02_09_163201_create_home_deliveries_table', 2),
(30, '2018_02_16_163453_create_points_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `cart` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `totalPrice` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `cart`, `totalPrice`, `transaction`, `created_at`, `updated_at`) VALUES
(12, 3, 'O:29:\"Illuminate\\Support\\Collection\":1:{s:8:\"\0*\0items\";a:2:{s:32:\"addc525ce43f5cbb4517bfa51c9c08e5\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":8:{s:5:\"rowId\";s:32:\"addc525ce43f5cbb4517bfa51c9c08e5\";s:2:\"id\";s:2:\"26\";s:3:\"qty\";s:1:\"3\";s:4:\"name\";s:12:\"Retrovizor 4\";s:5:\"price\";d:569;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":1:{s:8:\"\0*\0items\";a:0:{}}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:11:\"App\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:21;}s:32:\"18d6934483b994fb9943b43b7d7646bf\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":8:{s:5:\"rowId\";s:32:\"18d6934483b994fb9943b43b7d7646bf\";s:2:\"id\";s:1:\"8\";s:3:\"qty\";s:1:\"1\";s:4:\"name\";s:12:\"Akomulator 8\";s:5:\"price\";d:856;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":1:{s:8:\"\0*\0items\";a:0:{}}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:11:\"App\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:21;}}}', '3,024.34', 'Kucna dostava', '2018-02-10 17:19:59', '2018-02-10 17:19:59'),
(13, 3, 'O:29:\"Illuminate\\Support\\Collection\":1:{s:8:\"\0*\0items\";a:1:{s:32:\"eef12573176125ce53e333e13d747a17\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":8:{s:5:\"rowId\";s:32:\"eef12573176125ce53e333e13d747a17\";s:2:\"id\";s:2:\"12\";s:3:\"qty\";s:1:\"1\";s:4:\"name\";s:8:\"Staklo 1\";s:5:\"price\";d:149;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":1:{s:8:\"\0*\0items\";a:0:{}}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:11:\"App\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:21;}}}', '175.82', 'Kucna dostava', '2018-02-10 17:30:31', '2018-02-10 17:30:31'),
(14, 3, 'O:29:\"Illuminate\\Support\\Collection\":1:{s:8:\"\0*\0items\";a:1:{s:32:\"8b486433ba8a9e4089eafa927840a692\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":8:{s:5:\"rowId\";s:32:\"8b486433ba8a9e4089eafa927840a692\";s:2:\"id\";s:2:\"13\";s:3:\"qty\";s:1:\"1\";s:4:\"name\";s:8:\"Staklo 2\";s:5:\"price\";d:904;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":1:{s:8:\"\0*\0items\";a:0:{}}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:11:\"App\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:21;}}}', '1,066.72', 'Kucna dostava', '2018-02-16 15:52:31', '2018-02-16 15:52:31'),
(15, 3, 'O:29:\"Illuminate\\Support\\Collection\":1:{s:8:\"\0*\0items\";a:1:{s:32:\"6aa0d4b8fac3c55a3e83b7e2b7d1cb97\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":8:{s:5:\"rowId\";s:32:\"6aa0d4b8fac3c55a3e83b7e2b7d1cb97\";s:2:\"id\";s:2:\"24\";s:3:\"qty\";s:1:\"1\";s:4:\"name\";s:12:\"Retrovizor 2\";s:5:\"price\";d:881;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":1:{s:8:\"\0*\0items\";a:0:{}}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:11:\"App\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:21;}}}', '1,039.58', 'Kucna dostava', '2018-02-16 15:53:17', '2018-02-16 15:53:17'),
(16, 3, 'O:29:\"Illuminate\\Support\\Collection\":1:{s:8:\"\0*\0items\";a:1:{s:32:\"49b344bb1c30597cf0a6df3a0cd1f5dc\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":8:{s:5:\"rowId\";s:32:\"49b344bb1c30597cf0a6df3a0cd1f5dc\";s:2:\"id\";s:2:\"58\";s:3:\"qty\";s:1:\"1\";s:4:\"name\";s:8:\"Ostalo 3\";s:5:\"price\";d:353;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":1:{s:8:\"\0*\0items\";a:0:{}}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:11:\"App\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:21;}}}', '416.54', 'Kucna dostava', '2018-02-16 15:57:35', '2018-02-16 15:57:35'),
(17, 3, 'O:29:\"Illuminate\\Support\\Collection\":1:{s:8:\"\0*\0items\";a:1:{s:32:\"303a7f02364f1e92dc60c05c9b15239f\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":8:{s:5:\"rowId\";s:32:\"303a7f02364f1e92dc60c05c9b15239f\";s:2:\"id\";s:2:\"18\";s:3:\"qty\";s:1:\"1\";s:4:\"name\";s:8:\"Staklo 7\";s:5:\"price\";d:789;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":1:{s:8:\"\0*\0items\";a:0:{}}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:11:\"App\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:21;}}}', '931.02', 'Kucna dostava', '2018-02-16 15:58:05', '2018-02-16 15:58:05'),
(18, 3, 'O:29:\"Illuminate\\Support\\Collection\":1:{s:8:\"\0*\0items\";a:1:{s:32:\"49b344bb1c30597cf0a6df3a0cd1f5dc\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":8:{s:5:\"rowId\";s:32:\"49b344bb1c30597cf0a6df3a0cd1f5dc\";s:2:\"id\";s:2:\"58\";s:3:\"qty\";s:1:\"1\";s:4:\"name\";s:8:\"Ostalo 3\";s:5:\"price\";d:353;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":1:{s:8:\"\0*\0items\";a:0:{}}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:11:\"App\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:21;}}}', '416.54', 'Kucna dostava', '2018-02-16 15:58:24', '2018-02-16 15:58:24'),
(19, 3, 'O:29:\"Illuminate\\Support\\Collection\":1:{s:8:\"\0*\0items\";a:1:{s:32:\"303a7f02364f1e92dc60c05c9b15239f\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":8:{s:5:\"rowId\";s:32:\"303a7f02364f1e92dc60c05c9b15239f\";s:2:\"id\";s:2:\"18\";s:3:\"qty\";s:1:\"1\";s:4:\"name\";s:8:\"Staklo 7\";s:5:\"price\";d:789;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":1:{s:8:\"\0*\0items\";a:0:{}}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:11:\"App\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:21;}}}', '931.02', 'Kucna dostava', '2018-02-16 15:58:45', '2018-02-16 15:58:45'),
(20, 3, 'O:29:\"Illuminate\\Support\\Collection\":1:{s:8:\"\0*\0items\";a:2:{s:32:\"49b344bb1c30597cf0a6df3a0cd1f5dc\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":8:{s:5:\"rowId\";s:32:\"49b344bb1c30597cf0a6df3a0cd1f5dc\";s:2:\"id\";s:2:\"58\";s:3:\"qty\";s:1:\"1\";s:4:\"name\";s:8:\"Ostalo 3\";s:5:\"price\";d:353;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":1:{s:8:\"\0*\0items\";a:0:{}}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:11:\"App\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:21;}s:32:\"c42f6beec9c93fd6afea6eb0684aa99a\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":8:{s:5:\"rowId\";s:32:\"c42f6beec9c93fd6afea6eb0684aa99a\";s:2:\"id\";s:1:\"9\";s:3:\"qty\";s:1:\"2\";s:4:\"name\";s:12:\"Akomulator 9\";s:5:\"price\";d:715;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":1:{s:8:\"\0*\0items\";a:0:{}}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:11:\"App\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:21;}}}', '2,103.94', 'Kucna dostava', '2018-02-16 16:12:11', '2018-02-16 16:12:11'),
(21, 3, 'O:29:\"Illuminate\\Support\\Collection\":1:{s:8:\"\0*\0items\";a:1:{s:32:\"1ca30d70ab09187def0f79120f1607ee\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":8:{s:5:\"rowId\";s:32:\"1ca30d70ab09187def0f79120f1607ee\";s:2:\"id\";s:2:\"43\";s:3:\"qty\";s:1:\"1\";s:4:\"name\";s:8:\"Motor 10\";s:5:\"price\";d:883;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":1:{s:8:\"\0*\0items\";a:0:{}}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:11:\"App\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:21;}}}', '883.00', 'Kucna dostava', '2018-02-17 11:24:45', '2018-02-17 11:24:45'),
(22, 3, 'O:29:\"Illuminate\\Support\\Collection\":1:{s:8:\"\0*\0items\";a:1:{s:32:\"c42f6beec9c93fd6afea6eb0684aa99a\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":8:{s:5:\"rowId\";s:32:\"c42f6beec9c93fd6afea6eb0684aa99a\";s:2:\"id\";s:1:\"9\";s:3:\"qty\";s:1:\"1\";s:4:\"name\";s:12:\"Akomulator 9\";s:5:\"price\";d:715;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":1:{s:8:\"\0*\0items\";a:0:{}}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:11:\"App\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:21;}}}', '715.00', 'Kucna dostava', '2018-02-17 11:25:13', '2018-02-17 11:25:13'),
(23, 3, 'O:29:\"Illuminate\\Support\\Collection\":1:{s:8:\"\0*\0items\";a:1:{s:32:\"0d881817bb81e6017d2df92d0313f607\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":8:{s:5:\"rowId\";s:32:\"0d881817bb81e6017d2df92d0313f607\";s:2:\"id\";s:2:\"25\";s:3:\"qty\";s:1:\"1\";s:4:\"name\";s:12:\"Retrovizor 3\";s:5:\"price\";d:488;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":1:{s:8:\"\0*\0items\";a:0:{}}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:11:\"App\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:21;}}}', '488.00', 'Kucna dostava', '2018-02-17 11:25:43', '2018-02-17 11:25:43'),
(24, 3, 'O:29:\"Illuminate\\Support\\Collection\":1:{s:8:\"\0*\0items\";a:1:{s:32:\"ab474a72475ea6ea54d2085e5cdacc28\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":8:{s:5:\"rowId\";s:32:\"ab474a72475ea6ea54d2085e5cdacc28\";s:2:\"id\";s:2:\"15\";s:3:\"qty\";s:1:\"1\";s:4:\"name\";s:8:\"Staklo 4\";s:5:\"price\";d:223;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":1:{s:8:\"\0*\0items\";a:0:{}}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:11:\"App\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:21;}}}', '-0.00', 'Kucna dostava', '2018-02-17 11:26:27', '2018-02-17 11:26:27'),
(25, 3, 'O:29:\"Illuminate\\Support\\Collection\":1:{s:8:\"\0*\0items\";a:1:{s:32:\"303a7f02364f1e92dc60c05c9b15239f\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":8:{s:5:\"rowId\";s:32:\"303a7f02364f1e92dc60c05c9b15239f\";s:2:\"id\";s:2:\"18\";s:3:\"qty\";s:1:\"1\";s:4:\"name\";s:8:\"Staklo 7\";s:5:\"price\";d:789;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":1:{s:8:\"\0*\0items\";a:0:{}}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:11:\"App\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:21;}}}', '789.00', 'Kucna dostava', '2018-02-17 11:37:22', '2018-02-17 11:37:22');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permission_group_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`, `permission_group_id`) VALUES
(1, 'browse_admin', NULL, '2018-02-09 14:55:11', '2018-02-09 14:55:11', NULL),
(2, 'browse_database', NULL, '2018-02-09 14:55:11', '2018-02-09 14:55:11', NULL),
(3, 'browse_media', NULL, '2018-02-09 14:55:11', '2018-02-09 14:55:11', NULL),
(4, 'browse_compass', NULL, '2018-02-09 14:55:11', '2018-02-09 14:55:11', NULL),
(5, 'browse_menus', 'menus', '2018-02-09 14:55:11', '2018-02-09 14:55:11', NULL),
(6, 'read_menus', 'menus', '2018-02-09 14:55:11', '2018-02-09 14:55:11', NULL),
(7, 'edit_menus', 'menus', '2018-02-09 14:55:11', '2018-02-09 14:55:11', NULL),
(8, 'add_menus', 'menus', '2018-02-09 14:55:11', '2018-02-09 14:55:11', NULL),
(9, 'delete_menus', 'menus', '2018-02-09 14:55:11', '2018-02-09 14:55:11', NULL),
(10, 'browse_pages', 'pages', '2018-02-09 14:55:11', '2018-02-09 14:55:11', NULL),
(11, 'read_pages', 'pages', '2018-02-09 14:55:11', '2018-02-09 14:55:11', NULL),
(12, 'edit_pages', 'pages', '2018-02-09 14:55:11', '2018-02-09 14:55:11', NULL),
(13, 'add_pages', 'pages', '2018-02-09 14:55:11', '2018-02-09 14:55:11', NULL),
(14, 'delete_pages', 'pages', '2018-02-09 14:55:11', '2018-02-09 14:55:11', NULL),
(15, 'browse_roles', 'roles', '2018-02-09 14:55:11', '2018-02-09 14:55:11', NULL),
(16, 'read_roles', 'roles', '2018-02-09 14:55:11', '2018-02-09 14:55:11', NULL),
(17, 'edit_roles', 'roles', '2018-02-09 14:55:12', '2018-02-09 14:55:12', NULL),
(18, 'add_roles', 'roles', '2018-02-09 14:55:12', '2018-02-09 14:55:12', NULL),
(19, 'delete_roles', 'roles', '2018-02-09 14:55:12', '2018-02-09 14:55:12', NULL),
(20, 'browse_users', 'users', '2018-02-09 14:55:12', '2018-02-09 14:55:12', NULL),
(21, 'read_users', 'users', '2018-02-09 14:55:12', '2018-02-09 14:55:12', NULL),
(22, 'edit_users', 'users', '2018-02-09 14:55:12', '2018-02-09 14:55:12', NULL),
(23, 'add_users', 'users', '2018-02-09 14:55:12', '2018-02-09 14:55:12', NULL),
(24, 'delete_users', 'users', '2018-02-09 14:55:12', '2018-02-09 14:55:12', NULL),
(25, 'browse_posts', 'posts', '2018-02-09 14:55:12', '2018-02-09 14:55:12', NULL),
(26, 'read_posts', 'posts', '2018-02-09 14:55:12', '2018-02-09 14:55:12', NULL),
(27, 'edit_posts', 'posts', '2018-02-09 14:55:12', '2018-02-09 14:55:12', NULL),
(28, 'add_posts', 'posts', '2018-02-09 14:55:12', '2018-02-09 14:55:12', NULL),
(29, 'delete_posts', 'posts', '2018-02-09 14:55:12', '2018-02-09 14:55:12', NULL),
(30, 'browse_categories', 'categories', '2018-02-09 14:55:12', '2018-02-09 14:55:12', NULL),
(31, 'read_categories', 'categories', '2018-02-09 14:55:12', '2018-02-09 14:55:12', NULL),
(32, 'edit_categories', 'categories', '2018-02-09 14:55:12', '2018-02-09 14:55:12', NULL),
(33, 'add_categories', 'categories', '2018-02-09 14:55:12', '2018-02-09 14:55:12', NULL),
(34, 'delete_categories', 'categories', '2018-02-09 14:55:12', '2018-02-09 14:55:12', NULL),
(35, 'browse_settings', 'settings', '2018-02-09 14:55:12', '2018-02-09 14:55:12', NULL),
(36, 'read_settings', 'settings', '2018-02-09 14:55:12', '2018-02-09 14:55:12', NULL),
(37, 'edit_settings', 'settings', '2018-02-09 14:55:12', '2018-02-09 14:55:12', NULL),
(38, 'add_settings', 'settings', '2018-02-09 14:55:12', '2018-02-09 14:55:12', NULL),
(39, 'delete_settings', 'settings', '2018-02-09 14:55:12', '2018-02-09 14:55:12', NULL),
(40, 'browse_hooks', NULL, '2018-02-09 14:55:16', '2018-02-09 14:55:16', NULL),
(41, 'browse_products', 'products', '2018-02-09 15:21:10', '2018-02-09 15:21:10', NULL),
(42, 'read_products', 'products', '2018-02-09 15:21:10', '2018-02-09 15:21:10', NULL),
(43, 'edit_products', 'products', '2018-02-09 15:21:10', '2018-02-09 15:21:10', NULL),
(44, 'add_products', 'products', '2018-02-09 15:21:10', '2018-02-09 15:21:10', NULL),
(45, 'delete_products', 'products', '2018-02-09 15:21:10', '2018-02-09 15:21:10', NULL),
(46, 'browse_category', 'category', '2018-02-09 15:21:46', '2018-02-09 15:21:46', NULL),
(47, 'read_category', 'category', '2018-02-09 15:21:46', '2018-02-09 15:21:46', NULL),
(48, 'edit_category', 'category', '2018-02-09 15:21:46', '2018-02-09 15:21:46', NULL),
(49, 'add_category', 'category', '2018-02-09 15:21:46', '2018-02-09 15:21:46', NULL),
(50, 'delete_category', 'category', '2018-02-09 15:21:46', '2018-02-09 15:21:46', NULL),
(51, 'browse_category_product', 'category_product', '2018-02-09 15:22:51', '2018-02-09 15:22:51', NULL),
(52, 'read_category_product', 'category_product', '2018-02-09 15:22:51', '2018-02-09 15:22:51', NULL),
(53, 'edit_category_product', 'category_product', '2018-02-09 15:22:51', '2018-02-09 15:22:51', NULL),
(54, 'add_category_product', 'category_product', '2018-02-09 15:22:51', '2018-02-09 15:22:51', NULL),
(55, 'delete_category_product', 'category_product', '2018-02-09 15:22:51', '2018-02-09 15:22:51', NULL),
(56, 'browse_coupons', 'coupons', '2018-02-09 15:24:09', '2018-02-09 15:24:09', NULL),
(57, 'read_coupons', 'coupons', '2018-02-09 15:24:09', '2018-02-09 15:24:09', NULL),
(58, 'edit_coupons', 'coupons', '2018-02-09 15:24:09', '2018-02-09 15:24:09', NULL),
(59, 'add_coupons', 'coupons', '2018-02-09 15:24:09', '2018-02-09 15:24:09', NULL),
(60, 'delete_coupons', 'coupons', '2018-02-09 15:24:09', '2018-02-09 15:24:09', NULL),
(61, 'browse_home_deliveries', 'home_deliveries', '2018-02-10 17:42:13', '2018-02-10 17:42:13', NULL),
(62, 'read_home_deliveries', 'home_deliveries', '2018-02-10 17:42:13', '2018-02-10 17:42:13', NULL),
(63, 'edit_home_deliveries', 'home_deliveries', '2018-02-10 17:42:13', '2018-02-10 17:42:13', NULL),
(64, 'add_home_deliveries', 'home_deliveries', '2018-02-10 17:42:13', '2018-02-10 17:42:13', NULL),
(65, 'delete_home_deliveries', 'home_deliveries', '2018-02-10 17:42:13', '2018-02-10 17:42:13', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permission_groups`
--

CREATE TABLE `permission_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1);

-- --------------------------------------------------------

--
-- Table structure for table `points`
--

CREATE TABLE `points` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `points` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `points`
--

INSERT INTO `points` (`id`, `user_id`, `points`, `created_at`, `updated_at`) VALUES
(2, 3, 50, '2018-02-16 15:57:35', '2018-02-17 11:37:21');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int(11) NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `details`, `price`, `image`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Akomulator 1', 'Akomulator 1', '10 inch, 1TB SSD, 32GB RAM', 633, 'user/image/p1.jpeg', 'It is a long established fact that a reader will be distracted by the readable content of a page \n                             when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal.', '2018-02-09 14:56:11', '2018-02-09 14:56:11'),
(2, 'Akomulator 2', 'Akomulator 2', '20 inch, 1TB SSD, 32GB RAM', 971, 'user/image/p1.jpeg', 'It is a long established fact that a reader will be distracted by the readable content of a page \n                             when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal.', '2018-02-09 14:56:11', '2018-02-09 14:56:11'),
(3, 'Akomulator 3', 'Akomulator 3', '30 inch, 1TB SSD, 32GB RAM', 120, 'user/image/p1.jpeg', 'It is a long established fact that a reader will be distracted by the readable content of a page \n                             when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal.', '2018-02-09 14:56:11', '2018-02-09 14:56:11'),
(4, 'Akomulator 4', 'Akomulator 4', '40 inch, 1TB SSD, 32GB RAM', 119, 'user/image/p1.jpeg', 'It is a long established fact that a reader will be distracted by the readable content of a page \n                             when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal.', '2018-02-09 14:56:12', '2018-02-09 14:56:12'),
(5, 'Akomulator 5', 'Akomulator 5', '50 inch, 1TB SSD, 32GB RAM', 912, 'user/image/p1.jpeg', 'It is a long established fact that a reader will be distracted by the readable content of a page \n                             when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal.', '2018-02-09 14:56:12', '2018-02-09 14:56:12'),
(6, 'Akomulator 6', 'Akomulator 6', '60 inch, 1TB SSD, 32GB RAM', 209, 'user/image/p1.jpeg', 'It is a long established fact that a reader will be distracted by the readable content of a page \n                             when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal.', '2018-02-09 14:56:12', '2018-02-09 14:56:12'),
(7, 'Akomulator 7', 'Akomulator 7', '70 inch, 1TB SSD, 32GB RAM', 690, 'user/image/p1.jpeg', 'It is a long established fact that a reader will be distracted by the readable content of a page \n                             when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal.', '2018-02-09 14:56:12', '2018-02-09 14:56:12'),
(8, 'Akomulator 8', 'Akomulator 8', '80 inch, 1TB SSD, 32GB RAM', 856, 'user/image/p1.jpeg', 'It is a long established fact that a reader will be distracted by the readable content of a page \n                             when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal.', '2018-02-09 14:56:12', '2018-02-09 14:56:12'),
(9, 'Akomulator 9', 'Akomulator 9', '90 inch, 1TB SSD, 32GB RAM', 715, 'user/image/p1.jpeg', 'It is a long established fact that a reader will be distracted by the readable content of a page \n                             when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal.', '2018-02-09 14:56:12', '2018-02-09 14:56:12'),
(10, 'Akomulator 10', 'Akomulator 10', '100 inch, 1TB SSD, 32GB RAM', 833, 'user/image/p1.jpeg', 'It is a long established fact that a reader will be distracted by the readable content of a page \n                             when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal.', '2018-02-09 14:56:12', '2018-02-09 14:56:12'),
(11, 'Akomulator 11', 'Akomulator 11', '110 inch, 1TB SSD, 32GB RAM', 791, 'user/image/p1.jpeg', 'It is a long established fact that a reader will be distracted by the readable content of a page \n                             when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal.', '2018-02-09 14:56:13', '2018-02-09 14:56:13'),
(12, 'Staklo 1', 'Staklo 1', '10 inch, 1TB SSD, 32GB RAM', 149, 'user/image/p2.jpeg', 'It is a long established fact that a reader will be distracted by the readable content of a page \n                             when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal.', '2018-02-09 14:56:13', '2018-02-09 14:56:13'),
(13, 'Staklo 2', 'Staklo 2', '20 inch, 1TB SSD, 32GB RAM', 904, 'user/image/p2.jpeg', 'It is a long established fact that a reader will be distracted by the readable content of a page \n                             when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal.', '2018-02-09 14:56:13', '2018-02-09 14:56:13'),
(14, 'Staklo 3', 'Staklo 3', '30 inch, 1TB SSD, 32GB RAM', 461, 'user/image/p2.jpeg', 'It is a long established fact that a reader will be distracted by the readable content of a page \n                             when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal.', '2018-02-09 14:56:13', '2018-02-09 14:56:13'),
(15, 'Staklo 4', 'Staklo 4', '40 inch, 1TB SSD, 32GB RAM', 223, 'user/image/p2.jpeg', 'It is a long established fact that a reader will be distracted by the readable content of a page \n                             when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal.', '2018-02-09 14:56:13', '2018-02-09 14:56:13'),
(16, 'Staklo 5', 'Staklo 5', '50 inch, 1TB SSD, 32GB RAM', 938, 'user/image/p2.jpeg', 'It is a long established fact that a reader will be distracted by the readable content of a page \n                             when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal.', '2018-02-09 14:56:13', '2018-02-09 14:56:13'),
(17, 'Staklo 6', 'Staklo 6', '60 inch, 1TB SSD, 32GB RAM', 930, 'user/image/p2.jpeg', 'It is a long established fact that a reader will be distracted by the readable content of a page \n                             when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal.', '2018-02-09 14:56:13', '2018-02-09 14:56:13'),
(18, 'Staklo 7', 'Staklo 7', '70 inch, 1TB SSD, 32GB RAM', 789, 'user/image/p2.jpeg', 'It is a long established fact that a reader will be distracted by the readable content of a page \n                             when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal.', '2018-02-09 14:56:13', '2018-02-09 14:56:13'),
(19, 'Staklo 8', 'Staklo 8', '80 inch, 1TB SSD, 32GB RAM', 478, 'user/image/p2.jpeg', 'It is a long established fact that a reader will be distracted by the readable content of a page \n                             when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal.', '2018-02-09 14:56:13', '2018-02-09 14:56:13'),
(20, 'Staklo 9', 'Staklo 9', '90 inch, 1TB SSD, 32GB RAM', 566, 'user/image/p2.jpeg', 'It is a long established fact that a reader will be distracted by the readable content of a page \n                             when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal.', '2018-02-09 14:56:14', '2018-02-09 14:56:14'),
(21, 'Staklo 10', 'Staklo 10', '100 inch, 1TB SSD, 32GB RAM', 128, 'user/image/p2.jpeg', 'It is a long established fact that a reader will be distracted by the readable content of a page \n                             when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal.', '2018-02-09 14:56:14', '2018-02-09 14:56:14'),
(22, 'Staklo 11', 'Staklo 11', '110 inch, 1TB SSD, 32GB RAM', 908, 'user/image/p2.jpeg', 'It is a long established fact that a reader will be distracted by the readable content of a page \n                             when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal.', '2018-02-09 14:56:14', '2018-02-09 14:56:14'),
(23, 'Retrovizor 1', 'Retrovizor 1', '10 inch, 1TB SSD, 32GB RAM', 346, 'user/image/p3.jpeg', 'It is a long established fact that a reader will be distracted by the readable content of a page \n                             when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal.', '2018-02-09 14:56:14', '2018-02-09 14:56:14'),
(24, 'Retrovizor 2', 'Retrovizor 2', '20 inch, 1TB SSD, 32GB RAM', 881, 'user/image/p3.jpeg', 'It is a long established fact that a reader will be distracted by the readable content of a page \n                             when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal.', '2018-02-09 14:56:14', '2018-02-09 14:56:14'),
(25, 'Retrovizor 3', 'Retrovizor 3', '30 inch, 1TB SSD, 32GB RAM', 488, 'user/image/p3.jpeg', 'It is a long established fact that a reader will be distracted by the readable content of a page \n                             when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal.', '2018-02-09 14:56:14', '2018-02-09 14:56:14'),
(26, 'Retrovizor 4', 'Retrovizor 4', '40 inch, 1TB SSD, 32GB RAM', 569, 'user/image/p3.jpeg', 'It is a long established fact that a reader will be distracted by the readable content of a page \n                             when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal.', '2018-02-09 14:56:14', '2018-02-09 14:56:14'),
(27, 'Retrovizor 5', 'Retrovizor 5', '50 inch, 1TB SSD, 32GB RAM', 216, 'user/image/p3.jpeg', 'It is a long established fact that a reader will be distracted by the readable content of a page \n                             when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal.', '2018-02-09 14:56:14', '2018-02-09 14:56:14'),
(28, 'Retrovizor 6', 'Retrovizor 6', '60 inch, 1TB SSD, 32GB RAM', 185, 'user/image/p3.jpeg', 'It is a long established fact that a reader will be distracted by the readable content of a page \n                             when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal.', '2018-02-09 14:56:14', '2018-02-09 14:56:14'),
(29, 'Retrovizor 7', 'Retrovizor 7', '70 inch, 1TB SSD, 32GB RAM', 778, 'user/image/p3.jpeg', 'It is a long established fact that a reader will be distracted by the readable content of a page \n                             when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal.', '2018-02-09 14:56:15', '2018-02-09 14:56:15'),
(30, 'Retrovizor 8', 'Retrovizor 8', '80 inch, 1TB SSD, 32GB RAM', 192, 'user/image/p3.jpeg', 'It is a long established fact that a reader will be distracted by the readable content of a page \n                             when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal.', '2018-02-09 14:56:15', '2018-02-09 14:56:15'),
(31, 'Retrovizor 9', 'Retrovizor 9', '90 inch, 1TB SSD, 32GB RAM', 306, 'user/image/p3.jpeg', 'It is a long established fact that a reader will be distracted by the readable content of a page \n                             when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal.', '2018-02-09 14:56:15', '2018-02-09 14:56:15'),
(32, 'Retrovizor 10', 'Retrovizor 10', '100 inch, 1TB SSD, 32GB RAM', 594, 'user/image/p3.jpeg', 'It is a long established fact that a reader will be distracted by the readable content of a page \n                             when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal.', '2018-02-09 14:56:15', '2018-02-09 14:56:15'),
(33, 'Retrovizor 11', 'Retrovizor 11', '110 inch, 1TB SSD, 32GB RAM', 804, 'user/image/p3.jpeg', 'It is a long established fact that a reader will be distracted by the readable content of a page \n                             when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal.', '2018-02-09 14:56:15', '2018-02-09 14:56:15'),
(34, 'Motor 1', 'Motor 1', '10 inch, 1TB SSD, 32GB RAM', 433, 'user/image/p4.jpeg', 'It is a long established fact that a reader will be distracted by the readable content of a page \n                             when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal.', '2018-02-09 14:56:15', '2018-02-09 14:56:15'),
(35, 'Motor 2', 'Motor 2', '20 inch, 1TB SSD, 32GB RAM', 118, 'user/image/p4.jpeg', 'It is a long established fact that a reader will be distracted by the readable content of a page \n                             when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal.', '2018-02-09 14:56:15', '2018-02-09 14:56:15'),
(36, 'Motor 3', 'Motor 3', '30 inch, 1TB SSD, 32GB RAM', 901, 'user/image/p4.jpeg', 'It is a long established fact that a reader will be distracted by the readable content of a page \n                             when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal.', '2018-02-09 14:56:15', '2018-02-09 14:56:15'),
(37, 'Motor 4', 'Motor 4', '40 inch, 1TB SSD, 32GB RAM', 754, 'user/image/p4.jpeg', 'It is a long established fact that a reader will be distracted by the readable content of a page \n                             when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal.', '2018-02-09 14:56:15', '2018-02-09 14:56:15'),
(38, 'Motor 5', 'Motor 5', '50 inch, 1TB SSD, 32GB RAM', 658, 'user/image/p4.jpeg', 'It is a long established fact that a reader will be distracted by the readable content of a page \n                             when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal.', '2018-02-09 14:56:15', '2018-02-09 14:56:15'),
(39, 'Motor 6', 'Motor 6', '60 inch, 1TB SSD, 32GB RAM', 582, 'user/image/p4.jpeg', 'It is a long established fact that a reader will be distracted by the readable content of a page \n                             when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal.', '2018-02-09 14:56:15', '2018-02-09 14:56:15'),
(40, 'Motor 7', 'Motor 7', '70 inch, 1TB SSD, 32GB RAM', 283, 'user/image/p4.jpeg', 'It is a long established fact that a reader will be distracted by the readable content of a page \n                             when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal.', '2018-02-09 14:56:15', '2018-02-09 14:56:15'),
(41, 'Motor 8', 'Motor 8', '80 inch, 1TB SSD, 32GB RAM', 462, 'user/image/p4.jpeg', 'It is a long established fact that a reader will be distracted by the readable content of a page \n                             when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal.', '2018-02-09 14:56:15', '2018-02-09 14:56:15'),
(42, 'Motor 9', 'Motor 9', '90 inch, 1TB SSD, 32GB RAM', 574, 'user/image/p4.jpeg', 'It is a long established fact that a reader will be distracted by the readable content of a page \n                             when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal.', '2018-02-09 14:56:16', '2018-02-09 14:56:16'),
(43, 'Motor 10', 'Motor 10', '100 inch, 1TB SSD, 32GB RAM', 883, 'user/image/p4.jpeg', 'It is a long established fact that a reader will be distracted by the readable content of a page \n                             when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal.', '2018-02-09 14:56:16', '2018-02-09 14:56:16'),
(44, 'Motor 11', 'Motor 11', '110 inch, 1TB SSD, 32GB RAM', 928, 'user/image/p4.jpeg', 'It is a long established fact that a reader will be distracted by the readable content of a page \n                             when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal.', '2018-02-09 14:56:16', '2018-02-09 14:56:16'),
(45, 'Gume 1', 'Gume 1', '10 inch, 1TB SSD, 32GB RAM', 341, 'user/image/p5.jpeg', 'It is a long established fact that a reader will be distracted by the readable content of a page \n                             when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal.', '2018-02-09 14:56:16', '2018-02-09 14:56:16'),
(46, 'Gume 2', 'Gume 2', '20 inch, 1TB SSD, 32GB RAM', 605, 'user/image/p5.jpeg', 'It is a long established fact that a reader will be distracted by the readable content of a page \n                             when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal.', '2018-02-09 14:56:16', '2018-02-09 14:56:16'),
(47, 'Gume 3', 'Gume 3', '30 inch, 1TB SSD, 32GB RAM', 434, 'user/image/p5.jpeg', 'It is a long established fact that a reader will be distracted by the readable content of a page \n                             when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal.', '2018-02-09 14:56:16', '2018-02-09 14:56:16'),
(48, 'Gume 4', 'Gume 4', '40 inch, 1TB SSD, 32GB RAM', 656, 'user/image/p5.jpeg', 'It is a long established fact that a reader will be distracted by the readable content of a page \n                             when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal.', '2018-02-09 14:56:16', '2018-02-09 14:56:16'),
(49, 'Gume 5', 'Gume 5', '50 inch, 1TB SSD, 32GB RAM', 369, 'user/image/p5.jpeg', 'It is a long established fact that a reader will be distracted by the readable content of a page \n                             when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal.', '2018-02-09 14:56:16', '2018-02-09 14:56:16'),
(50, 'Gume 6', 'Gume 6', '60 inch, 1TB SSD, 32GB RAM', 376, 'user/image/p5.jpeg', 'It is a long established fact that a reader will be distracted by the readable content of a page \n                             when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal.', '2018-02-09 14:56:16', '2018-02-09 14:56:16'),
(51, 'Gume 7', 'Gume 7', '70 inch, 1TB SSD, 32GB RAM', 220, 'user/image/p5.jpeg', 'It is a long established fact that a reader will be distracted by the readable content of a page \n                             when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal.', '2018-02-09 14:56:16', '2018-02-09 14:56:16'),
(52, 'Gume 8', 'Gume 8', '80 inch, 1TB SSD, 32GB RAM', 177, 'user/image/p5.jpeg', 'It is a long established fact that a reader will be distracted by the readable content of a page \n                             when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal.', '2018-02-09 14:56:17', '2018-02-09 14:56:17'),
(53, 'Gume 9', 'Gume 9', '90 inch, 1TB SSD, 32GB RAM', 496, 'user/image/p5.jpeg', 'It is a long established fact that a reader will be distracted by the readable content of a page \n                             when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal.', '2018-02-09 14:56:17', '2018-02-09 14:56:17'),
(54, 'Gume 10', 'Gume 10', '100 inch, 1TB SSD, 32GB RAM', 963, 'user/image/p5.jpeg', 'It is a long established fact that a reader will be distracted by the readable content of a page \n                             when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal.', '2018-02-09 14:56:17', '2018-02-09 14:56:17'),
(55, 'Gume 11', 'Gume 11', '110 inch, 1TB SSD, 32GB RAM', 700, 'user/image/p5.jpeg', 'It is a long established fact that a reader will be distracted by the readable content of a page \n                             when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal.', '2018-02-09 14:56:17', '2018-02-09 14:56:17'),
(56, 'Ostalo 1', 'Ostalo 1', '10 inch, 1TB SSD, 32GB RAM', 271, 'user/image/p6.jpeg', 'It is a long established fact that a reader will be distracted by the readable content of a page \n                             when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal.', '2018-02-09 14:56:17', '2018-02-09 14:56:17'),
(57, 'Ostalo 2', 'Ostalo 2', '20 inch, 1TB SSD, 32GB RAM', 799, 'user/image/p6.jpeg', 'It is a long established fact that a reader will be distracted by the readable content of a page \n                             when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal.', '2018-02-09 14:56:17', '2018-02-09 14:56:17'),
(58, 'Ostalo 3', 'Ostalo 3', '30 inch, 1TB SSD, 32GB RAM', 353, 'user/image/p6.jpeg', 'It is a long established fact that a reader will be distracted by the readable content of a page \n                             when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal.', '2018-02-09 14:56:17', '2018-02-09 14:56:17'),
(59, 'Ostalo 4', 'Ostalo 4', '40 inch, 1TB SSD, 32GB RAM', 650, 'user/image/p6.jpeg', 'It is a long established fact that a reader will be distracted by the readable content of a page \n                             when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal.', '2018-02-09 14:56:17', '2018-02-09 14:56:17'),
(60, 'Ostalo 5', 'Ostalo 5', '50 inch, 1TB SSD, 32GB RAM', 295, 'user/image/p6.jpeg', 'It is a long established fact that a reader will be distracted by the readable content of a page \n                             when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal.', '2018-02-09 14:56:17', '2018-02-09 14:56:17'),
(61, 'Ostalo 6', 'Ostalo 6', '60 inch, 1TB SSD, 32GB RAM', 752, 'user/image/p6.jpeg', 'It is a long established fact that a reader will be distracted by the readable content of a page \n                             when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal.', '2018-02-09 14:56:17', '2018-02-09 14:56:17'),
(62, 'Ostalo 7', 'Ostalo 7', '70 inch, 1TB SSD, 32GB RAM', 538, 'user/image/p6.jpeg', 'It is a long established fact that a reader will be distracted by the readable content of a page \n                             when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal.', '2018-02-09 14:56:17', '2018-02-09 14:56:17'),
(63, 'Ostalo 8', 'Ostalo 8', '80 inch, 1TB SSD, 32GB RAM', 149, 'user/image/p6.jpeg', 'It is a long established fact that a reader will be distracted by the readable content of a page \n                             when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal.', '2018-02-09 14:56:18', '2018-02-09 14:56:18'),
(64, 'Ostalo 9', 'Ostalo 9', '90 inch, 1TB SSD, 32GB RAM', 287, 'user/image/p6.jpeg', 'It is a long established fact that a reader will be distracted by the readable content of a page \n                             when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal.', '2018-02-09 14:56:18', '2018-02-09 14:56:18'),
(65, 'Ostalo 10', 'Ostalo 10', '100 inch, 1TB SSD, 32GB RAM', 595, 'user/image/p6.jpeg', 'It is a long established fact that a reader will be distracted by the readable content of a page \n                             when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal.', '2018-02-09 14:56:18', '2018-02-09 14:56:18'),
(66, 'Ostalo 11', 'Ostalo 11', '110 inch, 1TB SSD, 32GB RAM', 103, 'user/image/p6.jpeg', 'It is a long established fact that a reader will be distracted by the readable content of a page \n                             when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal.', '2018-02-09 14:56:18', '2018-02-09 14:56:18');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2018-02-09 14:55:11', '2018-02-09 14:55:11'),
(2, 'user', 'Normal User', '2018-02-09 14:55:11', '2018-02-09 14:55:11');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', '', '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', 'settings/February2018/mkF4blGvUyZJgIT11Xdj.png', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Autoshop', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Dobrodosli na admin deo sajta Autoshop.', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', 'settings/February2018/DTwxwT0vjTlEEL5HuON0.png', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', 'settings/February2018/AgCI0FKoo3w3xrbquztQ.png', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', '', '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `street` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postalCode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `verifyToken` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `password`, `mobile`, `street`, `city`, `postalCode`, `birthday`, `status`, `verifyToken`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, 'Aleksandar', 'admin@admin.com', 'users/default.png', '$2y$10$h6bwRLPdTXWr/yoGDB/zxuqrvE1pEiFqfPc9JgMB1dxitXyL8j.am', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'GdzEKa5AMb9KfBiUX0pzkwsUjLlQvrCvPEq0wG24rSevlFX9LTmjYCtWdt4o', '2018-02-09 14:58:47', '2018-02-09 14:58:47'),
(3, 2, 'Aleksandar Potic', 'aleksandar1995potic@gmail.com', 'users/default.png', '$2y$10$.p8P3rs.XIWJPSBcXJq35ekrtfOzgd12wOTbCNYvXo7c4ulKBxHYS', '0665064004', 'sl.Drzina br 200', 'Pirot', '18300', '1995-09-29', 1, NULL, 'qhPd2JicX74n30fgCwiX2wM5JRug6HlyGjLpW3MjCBQvorCGpzZgu784omW7', '2018-02-09 15:34:40', '2018-02-10 09:34:29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category_name_unique` (`name`),
  ADD UNIQUE KEY `category_slug_unique` (`slug`);

--
-- Indexes for table `category_product`
--
ALTER TABLE `category_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_product_product_id_foreign` (`product_id`),
  ADD KEY `category_product_category_id_foreign` (`category_id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `home_deliveries`
--
ALTER TABLE `home_deliveries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

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
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_groups`
--
ALTER TABLE `permission_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permission_groups_name_unique` (`name`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `points`
--
ALTER TABLE `points`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_name_unique` (`name`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `category_product`
--
ALTER TABLE `category_product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `home_deliveries`
--
ALTER TABLE `home_deliveries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `permission_groups`
--
ALTER TABLE `permission_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `points`
--
ALTER TABLE `points`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `category_product`
--
ALTER TABLE `category_product`
  ADD CONSTRAINT `category_product_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `category_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
