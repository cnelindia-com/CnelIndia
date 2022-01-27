-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 28, 2021 at 05:06 PM
-- Server version: 5.7.33
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `om20`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `phone`, `photo`, `role_id`, `password`, `email_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', '01629552892', '1631023655pexels-moose-photos-1036627.jpg', 0, '$2y$10$6NIlpjkeVmn8wAfiMfBw9.d.1NkH0UuP8RF8mF330jjw4Ypc.o7nC', NULL, '2018-02-28 23:27:08', '2021-09-22 03:17:03');

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keyword` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attributes`
--

INSERT INTO `attributes` (`id`, `item_id`, `name`, `keyword`, `created_at`, `updated_at`) VALUES
(281, 456, 'Color', 'color', NULL, NULL),
(282, 456, 'Size', 'size', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `attribute_options`
--

CREATE TABLE `attribute_options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `attribute_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double DEFAULT '0',
  `keyword` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attribute_options`
--

INSERT INTO `attribute_options` (`id`, `attribute_id`, `name`, `price`, `keyword`, `created_at`, `updated_at`) VALUES
(1054, 281, 'Red', 3, 'red', NULL, NULL),
(1055, 281, 'Blue', 2, 'blue', NULL, NULL),
(1056, 281, 'Green', 1, 'green', NULL, NULL),
(1057, 282, 'M', 2, 'm', NULL, NULL),
(1058, 282, 'XL', 2, 'xl', NULL, NULL),
(1059, 282, 'S', 1, 's', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `title`, `subtitle`, `url`, `image`, `type`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Shein Womens Clothing 2021 Summer Fashion Design Clothing Manufacturer Lantern Long Sleeve', '45% OFF', '#', '163172091306.jpg', ' Banner 1', 1, NULL, NULL),
(2, 'Casual Minimalist Tie Waist women clothing Denim Halter Midi Pencil Sling Dresses', '70% OFF', '#', '163172090805.jpg', 'Banner 2', 1, NULL, NULL),
(3, 'Top Sale High Quality Newest Designs Custom Women Clothing Wholesale from China Dresses', '60% OFF', '#', '163172090304.jpg', 'Banner 3', 1, NULL, NULL),
(5, '2021 Summer Women Clothing Ropa Sexy Lady Cut Out Halter Mini Dresses', '50% OFF', '#', '163172089704.jpg', 'Banner 4', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bcategories`
--

CREATE TABLE `bcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bcategories`
--

INSERT INTO `bcategories` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Beauty', 'Beauty', 1, NULL, NULL),
(2, 'Fashion', 'fashion', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT '1',
  `is_popular` tinyint(4) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `slug`, `photo`, `status`, `is_popular`, `created_at`, `updated_at`) VALUES
(7, 'Adidas', 'Adidas', '1632336527add.png', 1, 1, NULL, NULL),
(8, 'Lavie', 'Lavie', '1632336517leves.jpg', 1, 1, NULL, NULL),
(9, 'Skyart', 'Skyart', '1632336538skyart.png', 1, 1, NULL, NULL),
(10, 'Nike', 'Nike', '1632336489nike.jpg', 1, 1, NULL, NULL),
(11, 'Samsung', 'Samsung', '1632336479samsung.png', 1, 1, NULL, NULL),
(14, 'Yamaha', 'Yamaha', '1632336551yamaha.png', 1, 1, NULL, NULL),
(15, 'H.M', 'HM', '1632336576hm.jpg', 1, 1, NULL, NULL),
(16, 'Loreal', 'Loreal', '1632336591lora.jpg', 1, 1, NULL, NULL),
(17, 'Lego', 'Lego', '1632336607lego.png', 1, 1, NULL, NULL),
(18, 'Dimond World', 'Dimond-World', '1632336621dimondwo.jpg', 1, 1, NULL, NULL),
(19, 'Ascis', 'Ascis', '1632336642ascis.jpg', 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `campaign_items`
--

CREATE TABLE `campaign_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` int(11) NOT NULL,
  `status` tinyint(4) DEFAULT '1',
  `is_feature` tinyint(4) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `campaign_items`
--

INSERT INTO `campaign_items` (`id`, `item_id`, `status`, `is_feature`, `created_at`, `updated_at`) VALUES
(13, 428, 1, 0, NULL, NULL),
(14, 427, 1, 0, NULL, NULL),
(15, 426, 1, 1, NULL, NULL),
(16, 421, 1, 1, NULL, NULL),
(17, 419, 1, 1, NULL, NULL),
(18, 420, 1, 1, NULL, NULL),
(19, 422, 1, 1, NULL, NULL),
(20, 417, 1, 1, NULL, NULL),
(21, 418, 1, 1, NULL, NULL),
(22, 425, 1, 0, NULL, NULL),
(23, 424, 1, 1, NULL, NULL),
(24, 423, 1, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_descriptions` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(4) DEFAULT '1',
  `is_feature` tinyint(4) DEFAULT '1',
  `serial` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `photo`, `meta_keywords`, `meta_descriptions`, `status`, `is_feature`, `serial`, `created_at`, `updated_at`) VALUES
(18, 'Women Clothing', 'Women-Clothing', '1629616296pexels-juan-mendez-1536619.jpg', '[{\"value\":\"women\"}]', 'Women Clothing', 1, 1, 0, NULL, NULL),
(19, 'Men Clothing', 'men-clothing', '1629616281pexels-moose-photos-1036627.jpg', '[{\"value\":\"men\"}]', 'men', 1, 1, 1, NULL, NULL),
(21, 'Electronics', 'Electronics', '1629616270computer.jpg', NULL, NULL, 1, 1, 1, NULL, NULL),
(22, 'Beauty & Personal Care', 'Beauty--Personal-Care', '1631023636ballll.jpg', NULL, NULL, 1, 1, 5, NULL, NULL),
(23, 'Vehicles & Accessories', 'Vehicles--Accessories', '1629616254pexels-thales-silva-772393.jpg', NULL, NULL, 1, 1, 4, NULL, NULL),
(24, 'Sports & Entertainment', 'Sports--Entertainment', '1629616243pexels-karolina-grabowska-4498574.jpg', NULL, NULL, 1, 1, 6, NULL, NULL),
(25, 'Home & Garden', 'Home--Garden', '1629616234pexels-cup-of-couple-8015784.jpg', NULL, NULL, 1, 1, 6, NULL, NULL),
(26, 'Medicine & Health Care', 'Medicine-Health-Care', '1629616218pexels-karolina-grabowska-4386467.jpg', NULL, NULL, 1, 1, 6, NULL, NULL),
(27, 'Web Themes & Templates', 'Web-Themes--Templates', '1632341620bbb.jpg', NULL, NULL, 1, 1, 5, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `chield_categories`
--

CREATE TABLE `chield_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) NOT NULL,
  `status` tinyint(4) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chield_categories`
--

INSERT INTO `chield_categories` (`id`, `name`, `slug`, `category_id`, `subcategory_id`, `status`, `created_at`, `updated_at`) VALUES
(5, 'Pajama Sets', 'Pajama-Sets', 18, 6, 1, NULL, NULL),
(6, 'Women Socks & Hosiery', 'Women-Socks--Hosiery', 18, 6, 1, NULL, NULL),
(7, 'Shapewer', 'Shapewer', 18, 6, 1, NULL, NULL),
(8, 'Bras', 'Bras', 18, 6, 1, NULL, NULL),
(9, 'Wedding Dresses', 'Wedding-Dresses', 18, 7, 1, NULL, NULL),
(10, 'Prom Dresses', 'Prom-Dresses', 18, 7, 1, NULL, NULL),
(11, 'Evening Dresses', 'Evening-Dresses', 18, 7, 1, NULL, NULL),
(12, 'Costumes', 'Costumes', 18, 7, 1, NULL, NULL),
(13, 'Leggings', 'Leggings', 18, 8, 1, NULL, NULL),
(14, 'Skirt', 'Skirt', 18, 8, 1, NULL, NULL),
(15, 'Jeans', 'Jeans', 18, 8, 1, NULL, NULL),
(16, 'Pants & Capris', 'Pants--Capris', 18, 8, 1, NULL, NULL),
(17, 'Jackets', 'Jackets', 19, 9, 1, NULL, NULL),
(18, 'Sweaters', 'Sweaters', 19, 9, 1, NULL, NULL),
(19, 'Parkas', 'Parkas', 19, 9, 1, NULL, NULL),
(20, 'Down Jackets', 'Down-Jackets', 19, 9, 1, NULL, NULL),
(21, 'Suits & Blazers', 'Suits--Blazers', 19, 9, 1, NULL, NULL),
(22, 'Boxers', 'Boxers', 19, 17, 1, NULL, NULL),
(23, 'Briefs', 'Briefs', 19, 17, 1, NULL, NULL),
(24, 'Long Johns', 'Long-Johns', 19, 17, 1, NULL, NULL),
(25, 'Sleep & Lounge', 'Sleep--Lounge', 19, 17, 1, NULL, NULL),
(26, 'Pajama Sets', 'Pajama-Sets', 19, 17, 1, NULL, NULL),
(27, 'Cellphones', 'Cellphones', 21, 12, 1, NULL, NULL),
(28, 'iPhones', 'iPhones', 21, 12, 1, NULL, NULL),
(29, 'Android Phone', 'Android-Phone', 21, 12, 1, NULL, NULL),
(30, 'Phone Bags & Cases', 'Phone-Bags--Cases', 21, 13, 1, NULL, NULL),
(31, 'Mobile Phone Cables', 'Mobile-Phone-Cables', 21, 13, 1, NULL, NULL),
(32, 'Power Bank', 'Power-Bank', 21, 13, 1, NULL, NULL),
(33, 'Screen Protectors', 'Screen-Protectors', 21, 13, 1, NULL, NULL),
(34, 'Shirt', 'Shirt', 19, 9, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Afghanistan', NULL, NULL),
(2, 'Albania', NULL, NULL),
(3, 'Algeria', NULL, NULL),
(4, 'American Samoa', NULL, NULL),
(5, 'Andorra', NULL, NULL),
(6, 'Angola', NULL, NULL),
(7, 'Anguilla', NULL, NULL),
(8, 'Antarctica', NULL, NULL),
(9, 'Antigua and Barbuda', NULL, NULL),
(10, 'Argentina', NULL, NULL),
(11, 'Armenia', NULL, NULL),
(12, 'Aruba', NULL, NULL),
(13, 'Australia', NULL, NULL),
(14, 'Austria', NULL, NULL),
(15, 'Azerbaijan', NULL, NULL),
(16, 'Bahamas', NULL, NULL),
(17, 'Bahrain', NULL, NULL),
(18, 'Bangladesh', NULL, NULL),
(19, 'Barbados', NULL, NULL),
(20, 'Belarus', NULL, NULL),
(21, 'Belgium', NULL, NULL),
(22, 'Belize', NULL, NULL),
(23, 'Benin', NULL, NULL),
(24, 'Bermuda', NULL, NULL),
(25, 'Bhutan', NULL, NULL),
(26, 'Bolivia', NULL, NULL),
(27, 'Bosnia and Herzegovina', NULL, NULL),
(28, 'Botswana', NULL, NULL),
(29, 'Bouvet Island', NULL, NULL),
(30, 'Brazil', NULL, NULL),
(31, 'British Indian Ocean Territory', NULL, NULL),
(32, 'Brunei Darussalam', NULL, NULL),
(33, 'Bulgaria', NULL, NULL),
(34, 'Burkina Faso', NULL, NULL),
(35, 'Burundi', NULL, NULL),
(36, 'Cambodia', NULL, NULL),
(37, 'Cameroon', NULL, NULL),
(38, 'Canada', NULL, NULL),
(39, 'Cape Verde', NULL, NULL),
(40, 'Cayman Islands', NULL, NULL),
(41, 'Central African Republic', NULL, NULL),
(42, 'Chad', NULL, NULL),
(43, 'Chile', NULL, NULL),
(44, 'China', NULL, NULL),
(45, 'Christmas Island', NULL, NULL),
(46, 'Cocos (Keeling) Islands', NULL, NULL),
(47, 'Colombia', NULL, NULL),
(48, 'Comoros', NULL, NULL),
(49, 'Democratic Republic of the Congo', NULL, NULL),
(50, 'Republic of Congo', NULL, NULL),
(51, 'Cook Islands', NULL, NULL),
(52, 'Costa Rica', NULL, NULL),
(53, 'Croatia (Hrvatska)', NULL, NULL),
(54, 'Cuba', NULL, NULL),
(55, 'Cyprus', NULL, NULL),
(56, 'Czech Republic', NULL, NULL),
(57, 'Denmark', NULL, NULL),
(58, 'Djibouti', NULL, NULL),
(59, 'Dominica', NULL, NULL),
(60, 'Dominican Republic', NULL, NULL),
(61, 'East Timor', NULL, NULL),
(62, 'Ecuador', NULL, NULL),
(63, 'Egypt', NULL, NULL),
(64, 'El Salvador', NULL, NULL),
(65, 'Equatorial Guinea', NULL, NULL),
(66, 'Eritrea', NULL, NULL),
(67, 'Estonia', NULL, NULL),
(68, 'Ethiopia', NULL, NULL),
(69, 'Falkland Islands (Malvinas)', NULL, NULL),
(70, 'Faroe Islands', NULL, NULL),
(71, 'Fiji', NULL, NULL),
(72, 'Finland', NULL, NULL),
(73, 'France', NULL, NULL),
(74, 'France, Metropolitan', NULL, NULL),
(75, 'French Guiana', NULL, NULL),
(76, 'French Polynesia', NULL, NULL),
(77, 'French Southern Territories', NULL, NULL),
(78, 'Gabon', NULL, NULL),
(79, 'Gambia', NULL, NULL),
(80, 'Georgia', NULL, NULL),
(81, 'Germany', NULL, NULL),
(82, 'Ghana', NULL, NULL),
(83, 'Gibraltar', NULL, NULL),
(84, 'Guernsey', NULL, NULL),
(85, 'Greece', NULL, NULL),
(86, 'Greenland', NULL, NULL),
(87, 'Grenada', NULL, NULL),
(88, 'Guadeloupe', NULL, NULL),
(89, 'Guam', NULL, NULL),
(90, 'Guatemala', NULL, NULL),
(91, 'Guinea', NULL, NULL),
(92, 'Guinea-Bissau', NULL, NULL),
(93, 'Guyana', NULL, NULL),
(94, 'Haiti', NULL, NULL),
(95, 'Heard and Mc Donald Islands', NULL, NULL),
(96, 'Honduras', NULL, NULL),
(97, 'Hong Kong', NULL, NULL),
(98, 'Hungary', NULL, NULL),
(99, 'Iceland', NULL, NULL),
(100, 'India', NULL, NULL),
(101, 'Isle of Man', NULL, NULL),
(102, 'Indonesia', NULL, NULL),
(103, 'Iran (Islamic Republic of)', NULL, NULL),
(104, 'Iraq', NULL, NULL),
(105, 'Ireland', NULL, NULL),
(106, 'Israel', NULL, NULL),
(107, 'Italy', NULL, NULL),
(108, 'Ivory Coast', NULL, NULL),
(109, 'Jersey', NULL, NULL),
(110, 'Jamaica', NULL, NULL),
(111, 'Japan', NULL, NULL),
(112, 'Jordan', NULL, NULL),
(113, 'Kazakhstan', NULL, NULL),
(114, 'Kenya', NULL, NULL),
(115, 'Kiribati', NULL, NULL),
(116, 'Korea, Democratic People\'s Republic of', NULL, NULL),
(117, 'Korea, Republic of', NULL, NULL),
(118, 'Kosovo', NULL, NULL),
(119, 'Kuwait', NULL, NULL),
(120, 'Kyrgyzstan', NULL, NULL),
(121, 'Lao People\'s Democratic Republic', NULL, NULL),
(122, 'Latvia', NULL, NULL),
(123, 'Lebanon', NULL, NULL),
(124, 'Lesotho', NULL, NULL),
(125, 'Liberia', NULL, NULL),
(126, 'Libyan Arab Jamahiriya', NULL, NULL),
(127, 'Liechtenstein', NULL, NULL),
(128, 'Lithuania', NULL, NULL),
(129, 'Luxembourg', NULL, NULL),
(130, 'Macau', NULL, NULL),
(131, 'North Macedonia', NULL, NULL),
(132, 'Madagascar', NULL, NULL),
(133, 'Malawi', NULL, NULL),
(134, 'Malaysia', NULL, NULL),
(135, 'Maldives', NULL, NULL),
(136, 'Mali', NULL, NULL),
(137, 'Malta', NULL, NULL),
(138, 'Marshall Islands', NULL, NULL),
(139, 'Martinique', NULL, NULL),
(140, 'Mauritania', NULL, NULL),
(141, 'Mauritius', NULL, NULL),
(142, 'Mayotte', NULL, NULL),
(143, 'Mexico', NULL, NULL),
(144, 'Micronesia, Federated States of', NULL, NULL),
(145, 'Moldova, Republic of', NULL, NULL),
(146, 'Monaco', NULL, NULL),
(147, 'Mongolia', NULL, NULL),
(148, 'Montenegro', NULL, NULL),
(149, 'Montserrat', NULL, NULL),
(150, 'Morocco', NULL, NULL),
(151, 'Mozambique', NULL, NULL),
(152, 'Myanmar', NULL, NULL),
(153, 'Namibia', NULL, NULL),
(154, 'Nauru', NULL, NULL),
(155, 'Nepal', NULL, NULL),
(156, 'Netherlands', NULL, NULL),
(157, 'Netherlands Antilles', NULL, NULL),
(158, 'New Caledonia', NULL, NULL),
(159, 'New Zealand', NULL, NULL),
(160, 'Nicaragua', NULL, NULL),
(161, 'Niger', NULL, NULL),
(162, 'Nigeria', NULL, NULL),
(163, 'Niue', NULL, NULL),
(164, 'Norfolk Island', NULL, NULL),
(165, 'Northern Mariana Islands', NULL, NULL),
(166, 'Norway', NULL, NULL),
(167, 'Oman', NULL, NULL),
(168, 'Pakistan', NULL, NULL),
(169, 'Palau', NULL, NULL),
(170, 'Palestine', NULL, NULL),
(171, 'Panama', NULL, NULL),
(172, 'Papua New Guinea', NULL, NULL),
(173, 'Paraguay', NULL, NULL),
(174, 'Peru', NULL, NULL),
(175, 'Philippines', NULL, NULL),
(176, 'Pitcairn', NULL, NULL),
(177, 'Poland', NULL, NULL),
(178, 'Portugal', NULL, NULL),
(179, 'Puerto Rico', NULL, NULL),
(180, 'Qatar', NULL, NULL),
(181, 'Reunion', NULL, NULL),
(182, 'Romania', NULL, NULL),
(183, 'Russian Federation', NULL, NULL),
(184, 'Rwanda', NULL, NULL),
(185, 'Saint Kitts and Nevis', NULL, NULL),
(186, 'Saint Lucia', NULL, NULL),
(187, 'Saint Vincent and the Grenadines', NULL, NULL),
(188, 'Samoa', NULL, NULL),
(189, 'San Marino', NULL, NULL),
(190, 'Sao Tome and Principe', NULL, NULL),
(191, 'Saudi Arabia', NULL, NULL),
(192, 'Senegal', NULL, NULL),
(193, 'Serbia', NULL, NULL),
(194, 'Seychelles', NULL, NULL),
(195, 'Sierra Leone', NULL, NULL),
(196, 'Singapore', NULL, NULL),
(197, 'Slovakia', NULL, NULL),
(198, 'Slovenia', NULL, NULL),
(199, 'Solomon Islands', NULL, NULL),
(200, 'Somalia', NULL, NULL),
(201, 'South Africa', NULL, NULL),
(202, 'South Georgia South Sandwich Islands', NULL, NULL),
(203, 'South Sudan', NULL, NULL),
(204, 'Spain', NULL, NULL),
(205, 'Sri Lanka', NULL, NULL),
(206, 'St. Helena', NULL, NULL),
(207, 'St. Pierre and Miquelon', NULL, NULL),
(208, 'Sudan', NULL, NULL),
(209, 'Suriname', NULL, NULL),
(210, 'Svalbard and Jan Mayen Islands', NULL, NULL),
(211, 'Swaziland', NULL, NULL),
(212, 'Sweden', NULL, NULL),
(213, 'Switzerland', NULL, NULL),
(214, 'Syrian Arab Republic', NULL, NULL),
(215, 'Taiwan', NULL, NULL),
(216, 'Tajikistan', NULL, NULL),
(217, 'Tanzania, United Republic of', NULL, NULL),
(218, 'Thailand', NULL, NULL),
(219, 'Togo', NULL, NULL),
(220, 'Tokelau', NULL, NULL),
(221, 'Tonga', NULL, NULL),
(222, 'Trinidad and Tobago', NULL, NULL),
(223, 'Tunisia', NULL, NULL),
(224, 'Turkey', NULL, NULL),
(225, 'Turkmenistan', NULL, NULL),
(226, 'Turks and Caicos Islands', NULL, NULL),
(227, 'Tuvalu', NULL, NULL),
(228, 'Uganda', NULL, NULL),
(229, 'Ukraine', NULL, NULL),
(230, 'United Arab Emirates', NULL, NULL),
(231, 'United Kingdom', NULL, NULL),
(232, 'United States', NULL, NULL),
(233, 'United States minor outlying islands', NULL, NULL),
(234, 'Uruguay', NULL, NULL),
(235, 'Uzbekistan', NULL, NULL),
(236, 'Vanuatu', NULL, NULL),
(237, 'Vatican City State', NULL, NULL),
(238, 'Venezuela', NULL, NULL),
(239, 'Vietnam', NULL, NULL),
(240, 'Virgin Islands (British)', NULL, NULL),
(241, 'Virgin Islands (U.S.)', NULL, NULL),
(242, 'Wallis and Futuna Islands', NULL, NULL),
(243, 'Western Sahara', NULL, NULL),
(244, 'Yemen', NULL, NULL),
(245, 'Zambia', NULL, NULL),
(246, 'Zimbabwe', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sign` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` double DEFAULT NULL,
  `is_default` tinyint(4) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `sign`, `value`, `is_default`, `created_at`, `updated_at`) VALUES
(1, 'USD', '$', 1, 1, NULL, NULL),
(6, 'EUR', '€', 0.89, 0, NULL, NULL),
(7, 'INR', '₹', 74, 0, NULL, NULL),
(8, 'BDT', '৳', 84, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

CREATE TABLE `email_templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` text COLLATE utf8mb4_unicode_ci,
  `body` mediumtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `email_templates`
--

INSERT INTO `email_templates` (`id`, `type`, `subject`, `body`, `created_at`, `updated_at`) VALUES
(1, 'Order', 'Your Have Successfully Placed The Order', '<p>Hello {user_name},</p><p>Your Order Has Been Placed Successfilly.<br>Your Order Number is {transaction_number}.<br></p>', NULL, NULL),
(2, 'Registration', 'Welcome To Magicshop', '<p>Hello&nbsp; {user_name},</p><p>You have successfully registered to {website_title}, We wish you will have a wonderful experience using our service.</p><p>Thank You.<br></p>', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_descriptions` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `category_id`, `title`, `details`, `meta_keywords`, `meta_descriptions`, `created_at`, `updated_at`) VALUES
(15, 1, 'How can I purchase it ?', 'Voluptatibus enim, aut natus sint porro veniam atque obcaecati ullam, consequatur laboriosam laborum corrupti autem fugit', NULL, NULL, NULL, NULL),
(25, 1, 'Anim pariatur cliche reprehenderit ?', 'Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven\'t heard of them accusamus.', NULL, NULL, NULL, NULL),
(27, 1, 'Smartphones in Every Day Life ?', 'afdads', '[{\"value\":\"ad\"},{\"value\":\"fd\"}]', 'dfa', NULL, NULL),
(28, 3, 'Lorem ipsum dolor sit amet, consectetur adipiscing  ?', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', NULL, NULL, NULL, NULL),
(29, 3, 'But I must explain to you how all this mistaken idea ?', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, cons', NULL, NULL, NULL, NULL),
(30, 3, 'Where does it come from ?', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.', NULL, NULL, NULL, NULL),
(31, 4, 'Where can I get some ?', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.', NULL, NULL, NULL, NULL),
(32, 4, 'Why do we use it?', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', NULL, NULL, NULL, NULL),
(33, 4, 'Where can I get some?', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', NULL, NULL, NULL, NULL),
(34, 4, 'Where does it come from?', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.', NULL, NULL, NULL, NULL),
(35, 5, 'Where can I get some?', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', NULL, NULL, NULL, NULL),
(36, 5, 'Why do we use it?', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', NULL, NULL, NULL, NULL),
(37, 5, 'Where does it come from?', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.', NULL, NULL, NULL, NULL),
(38, 6, 'Where does it come from?', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.', NULL, NULL, NULL, NULL),
(39, 6, 'Why do we use it?', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', NULL, NULL, NULL, NULL),
(40, 6, 'Where can I get some?', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', NULL, NULL, NULL, NULL),
(41, 7, 'Where does it come from?', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.', NULL, NULL, NULL, NULL),
(42, 7, 'Why do we use it?', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', NULL, NULL, NULL, NULL),
(43, 7, 'Where can I get some?', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `fcategories`
--

CREATE TABLE `fcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_descriptions` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(4) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fcategories`
--

INSERT INTO `fcategories` (`id`, `name`, `text`, `slug`, `meta_keywords`, `meta_descriptions`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Electronics !', 'But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born', 'Electronics-', NULL, NULL, 1, NULL, NULL),
(3, 'Poroduct Delevery !', 'But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born', 'Poroduct-Delevery-', '[{\"value\":\"a\"},{\"value\":\"b\"},{\"value\":\"c\"}]', 'It is a long established fact that a r', 1, NULL, NULL),
(4, 'Discount Policy !', 'But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born', 'Discount-Policy-', NULL, NULL, 1, NULL, NULL),
(5, 'Vat Information !', 'But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born', 'Vat-Information-', NULL, NULL, 1, NULL, NULL),
(6, 'Coupon  Information !', 'But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born', 'Coupon--Information-', NULL, NULL, 1, NULL, NULL),
(7, 'Offer Information !', 'But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born', 'Offer-Information-', NULL, NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` int(11) NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `item_id`, `photo`, `created_at`, `updated_at`) VALUES
(301, 412, '16310240591629220670Ha04a8a2d450544c9a80996bcdd70c543b.jpg', NULL, NULL),
(302, 412, '16310240591629220688Hcb62dec2d6a241fc90ce2bb04059684em.jpg', NULL, NULL),
(303, 412, '16310240591629221352H75345266923349e280d5f5e5fd5c71e5a.jpg', NULL, NULL),
(304, 412, '16310240591629221388HTB1BqH4aIfrK1RkSmLyq6xGApXaJ.jpg', NULL, NULL),
(305, 411, '16310241041629220622H624bc94495584b2384c07e2db9f2bdfcd.jpg', NULL, NULL),
(306, 411, '16310241041629220670Ha04a8a2d450544c9a80996bcdd70c543b.jpg', NULL, NULL),
(307, 411, '16310241041629221328H349db6b6a70c4604b507c446a7b06ae5k.jpg', NULL, NULL),
(308, 411, '16310241041629221388HTB1BqH4aIfrK1RkSmLyq6xGApXaJ.jpg', NULL, NULL),
(309, 405, '16310241801629220622H624bc94495584b2384c07e2db9f2bdfcd.jpg', NULL, NULL),
(310, 405, '16310241801629220642H220c85b541d145789e167a4b23787dd5h.jpg', NULL, NULL),
(311, 405, '16310241801629220670Ha04a8a2d450544c9a80996bcdd70c543b.jpg', NULL, NULL),
(312, 405, '16310241801629221352H75345266923349e280d5f5e5fd5c71e5a.jpg', NULL, NULL),
(313, 406, '16310241961629220622H624bc94495584b2384c07e2db9f2bdfcd.jpg', NULL, NULL),
(314, 406, '16310241961629220642H220c85b541d145789e167a4b23787dd5h.jpg', NULL, NULL),
(315, 406, '16310241961629220688Hcb62dec2d6a241fc90ce2bb04059684em.jpg', NULL, NULL),
(316, 406, '16310241961629221352H75345266923349e280d5f5e5fd5c71e5a.jpg', NULL, NULL),
(317, 410, '16310242091629220670Ha04a8a2d450544c9a80996bcdd70c543b.jpg', NULL, NULL),
(318, 410, '16310242091629220688Hcb62dec2d6a241fc90ce2bb04059684em.jpg', NULL, NULL),
(319, 410, '16310242091629221328H349db6b6a70c4604b507c446a7b06ae5k.jpg', NULL, NULL),
(320, 410, '16310242091629221352H75345266923349e280d5f5e5fd5c71e5a.jpg', NULL, NULL),
(321, 404, '1631024262H98f42eece72a4cf3980c64ab58dbfd890.jpg', NULL, NULL),
(322, 404, '1631024262H164f6a6b606646098519731d159d4e8am.jpg', NULL, NULL),
(323, 404, '1631024262Hcc2445bfd070462089ea573816837100j.jpg', NULL, NULL),
(324, 404, '1631024262Hd47c5c350c3f44839b7573930fe5ab4dX.jpg', NULL, NULL),
(325, 387, '1631024300H98f42eece72a4cf3980c64ab58dbfd890.jpg', NULL, NULL),
(326, 387, '1631024300H164f6a6b606646098519731d159d4e8am.jpg', NULL, NULL),
(327, 387, '1631024300Hcc2445bfd070462089ea573816837100j.jpg', NULL, NULL),
(328, 387, '1631024300Hd47c5c350c3f44839b7573930fe5ab4dX.jpg', NULL, NULL),
(329, 388, '1631024312H98f42eece72a4cf3980c64ab58dbfd890.jpg', NULL, NULL),
(330, 388, '1631024312H164f6a6b606646098519731d159d4e8am.jpg', NULL, NULL),
(331, 388, '1631024312Hcc2445bfd070462089ea573816837100j.jpg', NULL, NULL),
(332, 388, '1631024312Hd47c5c350c3f44839b7573930fe5ab4dX.jpg', NULL, NULL),
(333, 391, '1631024343H98f42eece72a4cf3980c64ab58dbfd890.jpg', NULL, NULL),
(334, 391, '1631024343H164f6a6b606646098519731d159d4e8am.jpg', NULL, NULL),
(335, 391, '1631024343Hcc2445bfd070462089ea573816837100j.jpg', NULL, NULL),
(336, 391, '1631024343Hd47c5c350c3f44839b7573930fe5ab4dX.jpg', NULL, NULL),
(337, 396, '1631024363H98f42eece72a4cf3980c64ab58dbfd890.jpg', NULL, NULL),
(338, 396, '1631024363H164f6a6b606646098519731d159d4e8am.jpg', NULL, NULL),
(339, 396, '1631024363Hcc2445bfd070462089ea573816837100j.jpg', NULL, NULL),
(340, 396, '1631024363Hd47c5c350c3f44839b7573930fe5ab4dX.jpg', NULL, NULL),
(341, 402, '1631024395H98f42eece72a4cf3980c64ab58dbfd890.jpg', NULL, NULL),
(342, 402, '1631024395H164f6a6b606646098519731d159d4e8am.jpg', NULL, NULL),
(343, 402, '1631024395Hcc2445bfd070462089ea573816837100j.jpg', NULL, NULL),
(344, 402, '1631024395Hd47c5c350c3f44839b7573930fe5ab4dX.jpg', NULL, NULL),
(345, 399, '1631024419H98f42eece72a4cf3980c64ab58dbfd890.jpg', NULL, NULL),
(346, 399, '1631024419H164f6a6b606646098519731d159d4e8am.jpg', NULL, NULL),
(347, 399, '1631024419Hcc2445bfd070462089ea573816837100j.jpg', NULL, NULL),
(348, 399, '1631024419Hd47c5c350c3f44839b7573930fe5ab4dX.jpg', NULL, NULL),
(349, 394, '1631024432H98f42eece72a4cf3980c64ab58dbfd890.jpg', NULL, NULL),
(350, 394, '1631024432H164f6a6b606646098519731d159d4e8am.jpg', NULL, NULL),
(351, 394, '1631024432Hcc2445bfd070462089ea573816837100j.jpg', NULL, NULL),
(352, 394, '1631024432Hd47c5c350c3f44839b7573930fe5ab4dX.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `home_cutomizes`
--

CREATE TABLE `home_cutomizes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `banner_first` text COLLATE utf8mb4_unicode_ci,
  `banner_secend` text COLLATE utf8mb4_unicode_ci,
  `banner_third` text COLLATE utf8mb4_unicode_ci,
  `popular_category` text COLLATE utf8mb4_unicode_ci,
  `two_column_category` text COLLATE utf8mb4_unicode_ci,
  `feature_category` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_cutomizes`
--

INSERT INTO `home_cutomizes` (`id`, `banner_first`, `banner_secend`, `banner_third`, `popular_category`, `two_column_category`, `feature_category`, `created_at`, `updated_at`) VALUES
(1, '{\"firsturl1\":\"#\",\"firsturl2\":\"#\",\"firsturl3\":\"#\",\"img1\":\"16323488091.jpg\",\"img2\":\"16323488092.jpg\",\"img3\":\"16323488093.jpg\"}', '{\"url1\":\"#\",\"url2\":\"#\",\"url3\":\"#\",\"img1\":\"16323488334.jpg\",\"img2\":\"16323488335.jpg\",\"img3\":\"16323488336.jpg\"}', '{\"url1\":\"#\",\"url2\":\"#\",\"img1\":\"1632348844111.jpg\",\"img2\":\"16323488442222.jpg\"}', '{\"popular_title\":\"Popular Categories\",\"category_id1\":\"18\",\"subcategory_id1\":null,\"childcategory_id1\":null,\"category_id2\":\"19\",\"subcategory_id2\":null,\"childcategory_id2\":null,\"category_id3\":\"21\",\"subcategory_id3\":null,\"childcategory_id3\":null,\"category_id4\":\"22\",\"subcategory_id4\":null,\"childcategory_id4\":null}', '{\"category_id1\":\"27\",\"subcategory_id1\":null,\"childcategory_id1\":null,\"category_id2\":\"22\",\"subcategory_id2\":null,\"childcategory_id2\":null}', '{\"feature_title\":\"Featured Categories\",\"category_id1\":\"22\",\"subcategory_id1\":null,\"childcategory_id1\":null,\"category_id2\":\"27\",\"subcategory_id2\":null,\"childcategory_id2\":null,\"category_id3\":\"18\",\"subcategory_id3\":null,\"childcategory_id3\":null,\"category_id4\":\"21\",\"subcategory_id4\":null,\"childcategory_id4\":null}', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) DEFAULT '0',
  `subcategory_id` int(11) DEFAULT '0',
  `childcategory_id` int(11) DEFAULT '0',
  `tax_id` int(11) DEFAULT NULL,
  `brand_id` int(11) DEFAULT '0',
  `name` text COLLATE utf8mb4_unicode_ci,
  `slug` text COLLATE utf8mb4_unicode_ci,
  `sku` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags` text COLLATE utf8mb4_unicode_ci,
  `video` text COLLATE utf8mb4_unicode_ci,
  `sort_details` text COLLATE utf8mb4_unicode_ci,
  `specification_name` text COLLATE utf8mb4_unicode_ci,
  `specification_description` text COLLATE utf8mb4_unicode_ci,
  `is_specification` tinyint(4) DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_price` double DEFAULT '0',
  `previous_price` double DEFAULT '0',
  `stock` int(11) DEFAULT '0',
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(4) DEFAULT '1',
  `is_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item_type` enum('normal','digital') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'normal',
  `file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` text COLLATE utf8mb4_unicode_ci,
  `file_type` enum('file','link') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `category_id`, `subcategory_id`, `childcategory_id`, `tax_id`, `brand_id`, `name`, `slug`, `sku`, `tags`, `video`, `sort_details`, `specification_name`, `specification_description`, `is_specification`, `details`, `photo`, `discount_price`, `previous_price`, `stock`, `meta_keywords`, `meta_description`, `status`, `is_type`, `date`, `item_type`, `file`, `link`, `file_type`, `created_at`, `updated_at`) VALUES
(387, 18, 6, 0, 2, 7, 'New French Elegant White Bubble Sleeve Party Dress Casual A-Line Dresses, Long Sleeve Dresses', 'New-French-Elegant-White-Bubble-Sleeve-Party-Dress-Casual-ALine-Dresses-Long-Sleeve-Dresses', '65dVy8J8Uo', 'women,dresses', 'https://www.youtube.com/watch?v=6ZVEAXmupEo', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less.', '[\"Product Type:\",\"Material:\",\"Lining Material:\",\"Fabric Type:\",\"Technics:\",\"Decoration:\",\"Size:\"]', '[\"Velvet elegant sleeveless evening dress\",\"Polyester \\/ Spandex\",\"Polyester\",\"Fleece\",\"Plain dyed\",\"Sequins\",\"S\\/M\\/L\"]', 1, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!', '1629210624H03667d1e3ae44be08f32b72d840db095J.jpg', 134.83146067416, 189.77528089888, 199, '', NULL, 1, 'best', NULL, 'normal', NULL, NULL, NULL, '2021-08-17 04:03:40', '2021-09-22 17:00:46'),
(388, 18, 6, 0, 2, 7, 'Luxury designer square neck lightweight crop top pullover slim thin clothing cashmere winter fall', 'Luxury-designer-square-neck-lightweight-crop-top-pullover-slim-thin-clothing-cashmere-winter-fall', '65dVy8J8Uo2', 'women,dresses', 'https://www.youtube.com/watch?v=6ZVEAXmupEo', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less.', '[\"Product Type:\",\"Material:\",\"Lining Material:\",\"Fabric Type:\",\"Technics:\",\"Decoration:\",\"Size:\"]', '[\"Velvet elegant sleeveless evening dress\",\"Polyester \\/ Spandex\",\"Polyester\",\"Fleece\",\"Plain dyed\",\"Sequins\",\"S\\/M\\/L\"]', 1, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!', '1629210604Hfac364f1b40a4e169de009ee243c1b41s.jpg', 134.83146067416, 189.77528089888, 199, '', NULL, 1, 'best', NULL, 'normal', NULL, NULL, NULL, '2021-08-17 04:03:40', '2021-09-22 17:26:33'),
(389, 18, 6, 0, 2, 7, 'Women\'s Women Clothing Women Dresses Women Bodycon 2021 Trendy Black Women\'s Sexy Dres', 'Womens-Women-Clothing-Women-Dresses-Women-Bodycon-2021-Trendy-Black-Womens-Sexy-Dres', '65dVy8J8Uo1', 'women,dresses', 'https://www.youtube.com/watch?v=6ZVEAXmupEo', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less.', '[\"Product Type:\",\"Material:\",\"Lining Material:\",\"Fabric Type:\",\"Technics:\",\"Decoration:\",\"Size:\"]', '[\"Velvet elegant sleeveless evening dress\",\"Polyester \\/ Spandex\",\"Polyester\",\"Fleece\",\"Plain dyed\",\"Sequins\",\"S\\/M\\/L\"]', 1, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!', '1629210591H6230e6b983944982bc81e124a6b54484y.jpg', 134.83146067416, 189.77528089888, 199, '', NULL, 1, 'new', NULL, 'normal', NULL, NULL, NULL, '2021-08-17 04:03:40', '2021-09-22 16:37:10'),
(390, 18, 6, 0, 2, 7, 'New Women\'s Square Collar Pleated Long Sleeve Dresses', 'New-Womens-Square-Collar-Pleated-Long-Sleeve-Dresses', '65dVy8J8Uo22', 'women,dresses', 'https://www.youtube.com/watch?v=6ZVEAXmupEo', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less.', '[\"Product Type:\",\"Material:\",\"Lining Material:\",\"Fabric Type:\",\"Technics:\",\"Decoration:\",\"Size:\"]', '[\"Velvet elegant sleeveless evening dress\",\"Polyester \\/ Spandex\",\"Polyester\",\"Fleece\",\"Plain dyed\",\"Sequins\",\"S\\/M\\/L\"]', 1, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!', '1629210185Hd734b291822a4cdd8ffe19da91b365e8F.jpg', 134.83146067416, 189.77528089888, 199, '', NULL, 1, 'new', NULL, 'normal', NULL, NULL, NULL, '2021-08-17 04:03:40', '2021-09-22 16:37:30'),
(391, 18, 6, 0, 2, 7, 'OEM Morden Fashion Design Women Clothing Super Eight Silk Wrap V-neck Satin Mini Dress', 'OEM-Morden-Fashion-Design-Women-Clothing-Super-Eight-Silk-Wrap-Vneck-Satin-Mini-Dress', '65dVy8J8Uo1q', 'women,dresses', 'https://www.youtube.com/watch?v=6ZVEAXmupEo', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less.', '[\"Product Type:\",\"Material:\",\"Lining Material:\",\"Fabric Type:\",\"Technics:\",\"Decoration:\",\"Size:\"]', '[\"Velvet elegant sleeveless evening dress\",\"Polyester \\/ Spandex\",\"Polyester\",\"Fleece\",\"Plain dyed\",\"Sequins\",\"S\\/M\\/L\"]', 1, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!', '1629210173Hb2d512b424b3420899645bdefcc03ca3O.jpg', 134.83146067416, 189.77528089888, 199, '', NULL, 1, 'top', NULL, 'normal', NULL, NULL, NULL, '2021-08-17 04:03:40', '2021-08-24 00:44:10'),
(392, 18, 6, 0, 2, 7, 'New arrivals Hot Sale Summer New Women\'s Long Dresses Beach Floral Print Boho Maxi Dress', 'New-arrivals-Hot-Sale-Summer-New-Womens-Long-Dresses-Beach-Floral-Print-Boho-Maxi-Dress-', '65dVy8J8Uo23x', 'women,dresses', 'https://www.youtube.com/watch?v=6ZVEAXmupEo', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less.', '[\"Product Type:\",\"Material:\",\"Lining Material:\",\"Fabric Type:\",\"Technics:\",\"Decoration:\",\"Size:\"]', '[\"Velvet elegant sleeveless evening dress\",\"Polyester \\/ Spandex\",\"Polyester\",\"Fleece\",\"Plain dyed\",\"Sequins\",\"S\\/M\\/L\"]', 1, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!', '1629210157H2477b68e6b044ea98a0614c488203114H.jpg', 134.83146067416, 189.77528089888, 199, '', NULL, 1, 'top', NULL, 'normal', NULL, NULL, NULL, '2021-08-17 04:03:40', '2021-08-24 00:44:19'),
(393, 18, 6, 0, 2, 7, 'Bodycon Tube Tie Dye Summer Dress Sun Dresses 2021 Colorful Women Long Floral Summer Dress', 'Bodycon-Tube-Tie-Dye-Summer-Dress-Sun-Dresses-2021-Colorful-Women-Long-Floral-Summer-Dress', '65dVy8J8Uo1r3', 'women,dresses', 'https://www.youtube.com/watch?v=6ZVEAXmupEo', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less.', '[\"Product Type:\",\"Material:\",\"Lining Material:\",\"Fabric Type:\",\"Technics:\",\"Decoration:\",\"Size:\"]', '[\"Velvet elegant sleeveless evening dress\",\"Polyester \\/ Spandex\",\"Polyester\",\"Fleece\",\"Plain dyed\",\"Sequins\",\"S\\/M\\/L\"]', 1, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!', '1629210146H9ef30f583b96459684b6d40a50d441c65.jpg', 134.83146067416, 189.77528089888, 199, '', NULL, 1, 'top', NULL, 'normal', NULL, NULL, NULL, '2021-08-17 04:03:40', '2021-08-24 00:44:29'),
(394, 18, 6, 0, 2, 7, 'Plus size women Clothing floral print Long sleeve Maxi African Split Dress for women', 'Plus-size-women-Clothing-floral-print-Long-sleeve-Maxi-African-Split-Dress-for-women', '65dVy8J8Uo224z', 'women,dresses', 'https://www.youtube.com/watch?v=6ZVEAXmupEo', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less.', '[\"Product Type:\",\"Material:\",\"Lining Material:\",\"Fabric Type:\",\"Technics:\",\"Decoration:\",\"Size:\"]', '[\"Velvet elegant sleeveless evening dress\",\"Polyester \\/ Spandex\",\"Polyester\",\"Fleece\",\"Plain dyed\",\"Sequins\",\"S\\/M\\/L\"]', 1, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo', '1629210133H05e7334ec3664662b136268a00cc2f331.jpg', 134.83146067416, 189.77528089888, 199, '', NULL, 1, 'new', NULL, 'normal', NULL, NULL, NULL, '2021-08-17 04:03:40', '2021-09-22 16:37:40'),
(395, 18, 6, 0, 2, 7, 'Best Sale Fashion Elegant Muslim stitching National style vintage double pocket Plaid islamic dress', 'Best-Sale-Fashion-Elegant-Muslim-stitching-National-style-vintage-double-pocket-Plaid-islamic-dress', '65dVy8J8Uo2dd', 'women,dresses', 'https://www.youtube.com/watch?v=6ZVEAXmupEo', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less.', '[\"Product Type:\",\"Material:\",\"Lining Material:\",\"Fabric Type:\",\"Technics:\",\"Decoration:\",\"Size:\"]', '[\"Velvet elegant sleeveless evening dress\",\"Polyester \\/ Spandex\",\"Polyester\",\"Fleece\",\"Plain dyed\",\"Sequins\",\"S\\/M\\/L\"]', 1, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!', '1629210110H0c25aedf26654552bd7e1d4c8751ffddM.jpg', 134.83146067416, 189.77528089888, 199, '', NULL, 1, 'top', NULL, 'normal', NULL, NULL, NULL, '2021-08-17 04:03:40', '2021-08-24 00:44:38'),
(396, 18, 6, 0, 2, 7, 'Women Women Fall 2021 Women Clothes Backless Halter Dress Casual Jersey Dress Mini Sexy Knit Dress', 'Women-Women-Fall-2021-Women-Clothes-Backless-Halter-Dress-Casual-Jersey-Dress-Mini-Sexy-Knit-Dress', '65dVy8J8Uo25gg', 'women,dresses', 'https://www.youtube.com/watch?v=6ZVEAXmupEo', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less.', '[\"Product Type:\",\"Material:\",\"Lining Material:\",\"Fabric Type:\",\"Technics:\",\"Decoration:\",\"Size:\"]', '[\"Velvet elegant sleeveless evening dress\",\"Polyester \\/ Spandex\",\"Polyester\",\"Fleece\",\"Plain dyed\",\"Sequins\",\"S\\/M\\/L\"]', 1, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!', '1629210095Hf086ae681630461684ced251f8fb5206P.jpg', 134.83146067416, 189.77528089888, 199, '', NULL, 1, 'flash_deal', '10/20/2021', 'normal', NULL, NULL, NULL, '2021-08-17 04:03:40', '2021-09-22 12:41:37'),
(397, 18, 8, 0, 2, 7, 'Shein Womens Clothing 2021 Summer Fashion Design Clothing Manufacturer Lantern Long Sleeve', 'Shein-Womens-Clothing-2021-Summer-Fashion-Design-Clothing-Manufacturer-Lantern-Long-Sleeve', '65dVy8J8Uo25gg3e', 'women,dresses', 'https://www.youtube.com/watch?v=6ZVEAXmupEo', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less.', '[\"Product Type:\",\"Material:\",\"Lining Material:\",\"Fabric Type:\",\"Technics:\",\"Decoration:\",\"Size:\"]', '[\"Velvet elegant sleeveless evening dress\",\"Polyester \\/ Spandex\",\"Polyester\",\"Fleece\",\"Plain dyed\",\"Sequins\",\"S\\/M\\/L\"]', 1, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!', '1629213224Uff4a9015ea454a79a2b9e3249bd2e19bg.jpg', 134.83146067416, 189.77528089888, 199, '', NULL, 1, 'flash_deal', '10/20/2021', 'normal', NULL, NULL, NULL, '2021-08-17 04:03:40', '2021-09-22 12:41:51'),
(398, 18, 8, 0, 2, 7, 'Casual Minimalist Tie Waist women clothing Denim Halter Midi Pencil Sling Dresses', 'Casual-Minimalist-Tie-Waist-women-clothing-Denim-Halter-Midi-Pencil-Sling-Dresses', '65dVy8J8Uo25gg3e', 'women,dresses', 'https://www.youtube.com/watch?v=6ZVEAXmupEo', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less.', '[\"Product Type:\",\"Material:\",\"Lining Material:\",\"Fabric Type:\",\"Technics:\",\"Decoration:\",\"Size:\"]', '[\"Velvet elegant sleeveless evening dress\",\"Polyester \\/ Spandex\",\"Polyester\",\"Fleece\",\"Plain dyed\",\"Sequins\",\"S\\/M\\/L\"]', 1, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!', '1629213211HTB1cVsPaEz1gK0jSZLeq6z9kVXay.jpg', 134.83146067416, 189.77528089888, 199, '', NULL, 1, 'top', NULL, 'normal', NULL, NULL, NULL, '2021-08-17 04:03:40', '2021-08-24 00:44:48'),
(399, 18, 8, 0, 2, 7, 'Top Sale High Quality Newest Designs Custom Women Clothing Wholesale from China Dresses', 'Top-Sale-High-Quality-Newest-Designs-Custom-Women-Clothing-Wholesale-from-China-Dresses', '65dVy8J8Uo25gg3e23', 'women,dresses', 'https://www.youtube.com/watch?v=6ZVEAXmupEo', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less.', '[\"Product Type:\",\"Material:\",\"Lining Material:\",\"Fabric Type:\",\"Technics:\",\"Decoration:\",\"Size:\"]', '[\"Velvet elegant sleeveless evening dress\",\"Polyester \\/ Spandex\",\"Polyester\",\"Fleece\",\"Plain dyed\",\"Sequins\",\"S\\/M\\/L\"]', 1, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!', '1629213200H948b3bef197c492d999473dffa5303f9P.jpg', 59.550561797753, 75.280898876404, 199, '', NULL, 1, 'feature', NULL, 'normal', NULL, NULL, NULL, '2021-08-17 04:03:40', '2021-09-22 16:39:09'),
(400, 18, 8, 0, 2, 7, '2021 Summer Women Clothing Ropa Sexy Lady Cut Out Halter Mini Dresses', '2021-Summer-Women-Clothing-Ropa-Sexy-Lady-Cut-Out-Halter-Mini-Dresses', '65dVy8J8Uo25gg3e23', 'women,dresses', 'https://www.youtube.com/watch?v=6ZVEAXmupEo', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less.', '[\"Product Type:\",\"Material:\",\"Lining Material:\",\"Fabric Type:\",\"Technics:\",\"Decoration:\",\"Size:\"]', '[\"Velvet elegant sleeveless evening dress\",\"Polyester \\/ Spandex\",\"Polyester\",\"Fleece\",\"Plain dyed\",\"Sequins\",\"S\\/M\\/L\"]', 1, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!', '1629213187H408d7d7e37b4437297de600584c1af1fL.jpg', 134.83146067416, 189.77528089888, 199, '', NULL, 1, 'best', NULL, 'normal', NULL, NULL, NULL, '2021-08-17 04:03:40', '2021-09-22 17:26:20');
INSERT INTO `items` (`id`, `category_id`, `subcategory_id`, `childcategory_id`, `tax_id`, `brand_id`, `name`, `slug`, `sku`, `tags`, `video`, `sort_details`, `specification_name`, `specification_description`, `is_specification`, `details`, `photo`, `discount_price`, `previous_price`, `stock`, `meta_keywords`, `meta_description`, `status`, `is_type`, `date`, `item_type`, `file`, `link`, `file_type`, `created_at`, `updated_at`) VALUES
(401, 18, 7, 0, 2, 7, 'B4301 2021 New Arrivals Wholesale Hot Night Sexy Mini Bodycon Summer Dress', 'B4301-2021-New-Arrivals-Wholesale-Hot-Night-Sexy-Mini-Bodycon-Summer-Dress', '65dVy8J8Uo25gg3e34r', 'women,dresses', 'https://www.youtube.com/watch?v=6ZVEAXmupEo', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less.', '[\"Product Type:\",\"Material:\",\"Lining Material:\",\"Fabric Type:\",\"Technics:\",\"Decoration:\",\"Size:\"]', '[\"Velvet elegant sleeveless evening dress\",\"Polyester \\/ Spandex\",\"Polyester\",\"Fleece\",\"Plain dyed\",\"Sequins\",\"S\\/M\\/L\"]', 1, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!', '1629213907H0f71a2a40cf04ee0b5a03980a5a617020.jpg', 157.30337078652, 201.01123595506, 199, '', NULL, 1, 'new', NULL, 'normal', NULL, NULL, NULL, '2021-08-17 04:03:40', '2021-08-23 06:18:19'),
(402, 18, 7, 0, 2, 7, 'Hot Sale Women Clothing 2021 Designer Clothes Women Clothing Sexy Dress', 'Hot-Sale-Women-Clothing-2021-Designer-Clothes-Women-Clothing-Sexy-Dress', '65dVy8J8Uo25gg3e6sf', 'women,dresses', 'https://www.youtube.com/watch?v=6ZVEAXmupEo', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less.', '[\"Product Type:\",\"Material:\",\"Lining Material:\",\"Fabric Type:\",\"Technics:\",\"Decoration:\",\"Size:\"]', '[\"Velvet elegant sleeveless evening dress\",\"Polyester \\/ Spandex\",\"Polyester\",\"Fleece\",\"Plain dyed\",\"Sequins\",\"S\\/M\\/L\"]', 1, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!', '1629213885H4886d13f040a41739481b3c9bd241aaaa.jpg', 53.932584269663, 100, 199, '', NULL, 1, 'new', NULL, 'normal', NULL, NULL, NULL, '2021-08-17 04:03:40', '2021-09-22 17:25:33'),
(403, 18, 7, 0, 2, 7, 'New Arrive Spring Fall Women Clothing Plus Size Dresses Floral Layered Ruffle Off Shoulder Dress', 'New-Arrive-Spring-Fall-Women-Clothing-Plus-Size-Dresses-Floral-Layered-Ruffle-Off-Shoulder-Dress', '65dVy8J8Uo25gg3e23f4', 'women,dresses', 'https://www.youtube.com/watch?v=6ZVEAXmupEo', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less.', '[\"Product Type:\",\"Material:\",\"Lining Material:\",\"Fabric Type:\",\"Technics:\",\"Decoration:\",\"Size:\"]', '[\"Velvet elegant sleeveless evening dress\",\"Polyester \\/ Spandex\",\"Polyester\",\"Fleece\",\"Plain dyed\",\"Sequins\",\"S\\/M\\/L\"]', 1, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!', '1629213857Hd8364db18d9942a38e89779ca3b4fa7an.jpg', 134.83146067416, 189.77528089888, 199, '', NULL, 1, 'top', NULL, 'normal', NULL, NULL, NULL, '2021-08-17 04:03:40', '2021-09-22 17:27:40'),
(404, 18, 8, 15, 2, 8, 'Clothing Women 2021 New Fashion Printed Knitwear Round Neck Casual Couple Clothing Christmas', 'Clothing-Women-2021-New-Fashion-Printed-Knitwear-Round-Neck-Casual-Couple-Clothing-Christmas', '65dVy8J8Uo25gg3e23ty6', 'women,dresses', 'https://www.youtube.com/watch?v=6ZVEAXmupEo', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less.', '[\"Product Type:\",\"Material:\",\"Lining Material:\",\"Fabric Type:\",\"Technics:\",\"Decoration:\",\"Size:\"]', '[\"Velvet elegant sleeveless evening dress\",\"Polyester \\/ Spandex\",\"Polyester\",\"Fleece\",\"Plain dyed\",\"Sequins\",\"S\\/M\\/L\"]', 1, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!', '1629213809H8b2502797ffe4c93984c99bdd5061ab3W.jpg', 56.18, 78.65, 199, '', NULL, 1, 'new', NULL, 'normal', NULL, NULL, NULL, '2021-08-17 04:03:40', '2021-09-22 16:59:45'),
(405, 21, 12, 0, 2, 7, 'UMIDIGI A9 Pro Android Mobile Phone 4g 48MP Quad Camera 6.3\" FHD+ Full Screen 6GB RAM', 'UMIDIGI-A9-Pro-Android-Mobile-Phone-4g-48MP-Quad-Camera-63-FHD-Full-Screen-6GB-RAM', '65dVy8J8Uo25gg3e34r45fdg', 'women,dresses', 'https://www.youtube.com/watch?v=6ZVEAXmupEo', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less.', '[\"Product Type:\",\"Material:\",\"Lining Material:\",\"Fabric Type:\",\"Technics:\",\"Decoration:\",\"Size:\"]', '[\"Velvet elegant sleeveless evening dress\",\"Polyester \\/ Spandex\",\"Polyester\",\"Fleece\",\"Plain dyed\",\"Sequins\",\"S\\/M\\/L\"]', 1, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!', '1629220688Hcb62dec2d6a241fc90ce2bb04059684em.jpg', 1573.0337078652, 1910.1123595506, 199, '', NULL, 1, 'flash_deal', '10/29/2021', 'normal', NULL, NULL, NULL, '2021-08-17 04:03:40', '2021-09-22 12:42:03'),
(406, 21, 12, 0, 2, 7, 'Hot Selling s10+ Unlocked 8+16MP 8 Core Dual SIM 4G+64G Cheap Smart Phone 5.8 inch', 'Hot-Selling-s10-Unlocked-816MP-8-Core-Dual-SIM-4G64G-Cheap-Smart-Phone-58-inch', '65dVy8J8Uo25gg3e6sf456fgh', 'women,dresses', 'https://www.youtube.com/watch?v=6ZVEAXmupEo', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less.', '[\"Product Type:\",\"Material:\",\"Lining Material:\",\"Fabric Type:\",\"Technics:\",\"Decoration:\",\"Size:\"]', '[\"Velvet elegant sleeveless evening dress\",\"Polyester \\/ Spandex\",\"Polyester\",\"Fleece\",\"Plain dyed\",\"Sequins\",\"S\\/M\\/L\"]', 1, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!', '1629220670Ha04a8a2d450544c9a80996bcdd70c543b.jpg', 134.83146067416, 189.77528089888, 199, '', NULL, 1, 'top', NULL, 'normal', NULL, NULL, NULL, '2021-08-17 04:03:40', '2021-09-22 17:27:31'),
(407, 21, 12, 0, 2, 7, 'Cheap Price Mobile Phones i13 Pro 6.6inch FHD Big Screen Smart Phone 12+512GB', 'Cheap-Price-Mobile-Phones-i13-Pro-66inch-FHD-Big-Screen-Smart-Phone-12512GB-', '65dVy8J8Uo25gg3e23f4fdgh', 'women,dresses', 'https://www.youtube.com/watch?v=6ZVEAXmupEo', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less.', '[\"Product Type:\",\"Material:\",\"Lining Material:\",\"Fabric Type:\",\"Technics:\",\"Decoration:\",\"Size:\"]', '[\"Velvet elegant sleeveless evening dress\",\"Polyester \\/ Spandex\",\"Polyester\",\"Fleece\",\"Plain dyed\",\"Sequins\",\"S\\/M\\/L\"]', 1, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!', '1629220642H220c85b541d145789e167a4b23787dd5h.jpg', 1235.9550561798, 1460.6741573034, 199, '', NULL, 1, 'new', NULL, 'normal', NULL, NULL, NULL, '2021-08-17 04:03:40', '2021-08-23 06:17:15'),
(408, 21, 12, 0, 2, 7, 'New product 2019 Refurbished used smart phone for I phone XS MAX XR 64GB 256GB 4G', 'New-product-2019-Refurbished-used-smart-phone-for-I-phone-XS-MAX-XR-64GB-256GB-4G-', '65dVy8J8Uo25gg3e23ty6ge4', 'women,dresses', 'https://www.youtube.com/watch?v=6ZVEAXmupEo', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less.', '[\"Product Type:\",\"Material:\",\"Lining Material:\",\"Fabric Type:\",\"Technics:\",\"Decoration:\",\"Size:\"]', '[\"Velvet elegant sleeveless evening dress\",\"Polyester \\/ Spandex\",\"Polyester\",\"Fleece\",\"Plain dyed\",\"Sequins\",\"S\\/M\\/L\"]', 1, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!', '1629220622H624bc94495584b2384c07e2db9f2bdfcd.jpg', 932.58426966292, 1348.3146067416, 199, '', NULL, 1, 'new', '09/09/2021', 'normal', NULL, NULL, NULL, '2021-08-17 04:03:40', '2021-08-23 06:16:55'),
(410, 21, 13, 0, 2, 7, 'Wholesale Price 1.3 Mega HD DV SLR Camera, 2.4 inch LCD Full HD 720P Recording, EIS, Supply Drops', 'Wholesale-Price-13-Mega-HD-DV-SLR-Camera-24-inch-LCD-Full-HD-720P-Recording-EIS-Supply-Drops', '65dVy8J8Uo2gfd7', 'women,dresses', 'https://www.youtube.com/watch?v=6ZVEAXmupEo', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less.', '[\"Product Type:\",\"Material:\",\"Lining Material:\",\"Fabric Type:\",\"Technics:\",\"Decoration:\",\"Size:\"]', '[\"Velvet elegant sleeveless evening dress\",\"Polyester \\/ Spandex\",\"Polyester\",\"Fleece\",\"Plain dyed\",\"Sequins\",\"S\\/M\\/L\"]', 1, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!', '1629221388HTB1BqH4aIfrK1RkSmLyq6xGApXaJ.jpg', 146.06741573034, 167.30337078652, 199, '', NULL, 1, 'top', NULL, 'normal', NULL, NULL, NULL, '2021-08-17 04:03:40', '2021-09-22 17:27:49'),
(411, 21, 13, 0, 2, 7, 'Dropshipping EIS 2.4 inch LCD Full HD 720P Recording 1.3 Mega HD DV SLR Camera', 'Dropshipping-EIS-24-inch-LCD-Full-HD-720P-Recording-13-Mega-HD-DV-SLR-Camera', '65dVy8J8Uo1dfg87', 'women,dresses', 'https://www.youtube.com/watch?v=6ZVEAXmupEo', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less.', '[\"Product Type:\",\"Material:\",\"Lining Material:\",\"Fabric Type:\",\"Technics:\",\"Decoration:\",\"Size:\"]', '[\"Velvet elegant sleeveless evening dress\",\"Polyester \\/ Spandex\",\"Polyester\",\"Fleece\",\"Plain dyed\",\"Sequins\",\"S\\/M\\/L\"]', 1, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!', '1629221352H75345266923349e280d5f5e5fd5c71e5a.jpg', 134.83146067416, 189.77528089888, 199, '', NULL, 1, 'flash_deal', '10/18/2021', 'normal', NULL, NULL, NULL, '2021-08-17 04:03:40', '2021-09-22 12:42:50'),
(412, 18, 7, NULL, 2, 7, 'DC-7200 DSLR support 32G sd card video camera 33 Mega pixels digital camera dslr HD professional', 'DC7200-DSLR-support-32G-sd-card-video-camera-33-Mega-pixels-digital-camera-dslr-HD-professional', '65dVy8J8Uo22cvh9', 'women,dresses', 'https://www.youtube.com/watch?v=6ZVEAXmupEo', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', '[\"Product Type:\",\"Material:\",\"Lining Material:\",\"Fabric Type:\",\"Technics:\",\"Decoration:\",\"Size:\"]', '[\"Velvet elegant sleeveless evening dress\",\"Polyester \\/ Spandex\",\"Polyester\",\"Fleece\",\"Plain dyed\",\"Sequins\",\"S\\/M\\/L\"]', 1, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!', '1629221328H349db6b6a70c4604b507c446a7b06ae5k.jpg', 1352.81, 1893.26, 199, '', NULL, 1, 'new', NULL, 'normal', NULL, NULL, NULL, '2021-08-17 04:03:40', '2021-09-15 08:26:17'),
(417, 23, 29, NULL, 2, 14, 'hot sell high performance petrol motorcycle/ city sport gas motorcycle/ scooter', '--hot-sell-high-performance-petrol-motorcycle-city-sport-gas-motorcycle-scooter', '65dVy8J8Uo', 'women,dresses', 'https://www.youtube.com/watch?v=6ZVEAXmupEo', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', '[\"Product Type:\",\"Material:\",\"Lining Material:\",\"Fabric Type:\",\"Technics:\",\"Decoration:\",\"Size:\"]', '[\"Velvet elegant sleeveless evening dress\",\"Polyester \\/ Spandex\",\"Polyester\",\"Fleece\",\"Plain dyed\",\"Sequins\",\"S\\/M\\/L\"]', 1, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!', '1632340020H1a72ebe7af5e4fe99e03a0bd7fcbdc16N.jpg', 1352.81, 1893.26, 199, '', NULL, 1, 'new', NULL, 'normal', NULL, NULL, NULL, '2021-08-17 04:03:40', '2021-09-22 13:47:00'),
(418, 23, 29, NULL, 2, 14, 'Newest style 250cc china motorcycle 72v racing electric motorcycles', 'Newest-style-250cc-china-motorcycle-72v-racing-electric-motorcycles', '65dVy8J', 'women,dresses', 'https://www.youtube.com/watch?v=6ZVEAXmupEo', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', '[\"Product Type:\",\"Material:\",\"Lining Material:\",\"Fabric Type:\",\"Technics:\",\"Decoration:\",\"Size:\"]', '[\"Velvet elegant sleeveless evening dress\",\"Polyester \\/ Spandex\",\"Polyester\",\"Fleece\",\"Plain dyed\",\"Sequins\",\"S\\/M\\/L\"]', 1, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!', '1632340045H2fa037b42eeb4767b96939eb98c7afacT.jpg', 1352.81, 1893.26, 199, '', NULL, 1, 'new', NULL, 'normal', NULL, NULL, NULL, '2021-08-17 04:03:40', '2021-09-22 13:47:25'),
(419, 23, 29, NULL, 2, 14, 'Dongma New EEC high speed 150km/h adult 10000W moto sportbikes', 'Dongma-New-EEC-high-speed-150kmh-adult-10000W-moto-sportbikes', '65dVy8J8Uoxx', 'women,dresses', 'https://www.youtube.com/watch?v=6ZVEAXmupEo', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', '[\"Product Type:\",\"Material:\",\"Lining Material:\",\"Fabric Type:\",\"Technics:\",\"Decoration:\",\"Size:\"]', '[\"Velvet elegant sleeveless evening dress\",\"Polyester \\/ Spandex\",\"Polyester\",\"Fleece\",\"Plain dyed\",\"Sequins\",\"S\\/M\\/L\"]', 1, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!', '1632340070H2fc50e4d58684469b1fdb9ded3f39370x.jpg', 1352.81, 1893.26, 199, '', NULL, 1, 'new', NULL, 'normal', NULL, NULL, NULL, '2021-08-17 04:03:40', '2021-09-22 13:47:50');
INSERT INTO `items` (`id`, `category_id`, `subcategory_id`, `childcategory_id`, `tax_id`, `brand_id`, `name`, `slug`, `sku`, `tags`, `video`, `sort_details`, `specification_name`, `specification_description`, `is_specification`, `details`, `photo`, `discount_price`, `previous_price`, `stock`, `meta_keywords`, `meta_description`, `status`, `is_type`, `date`, `item_type`, `file`, `link`, `file_type`, `created_at`, `updated_at`) VALUES
(420, 23, 29, NULL, 2, 14, '2021 Wholesale High Speed 200CC 250CC 400CC Gas Off Road Engine', '2021-Wholesale-High-Speed-200CC-250CC-400CC-Gas-Off-Road-Engine', '65dVy8Jss', 'women,dresses', 'https://www.youtube.com/watch?v=6ZVEAXmupEo', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', '[\"Product Type:\",\"Material:\",\"Lining Material:\",\"Fabric Type:\",\"Technics:\",\"Decoration:\",\"Size:\"]', '[\"Velvet elegant sleeveless evening dress\",\"Polyester \\/ Spandex\",\"Polyester\",\"Fleece\",\"Plain dyed\",\"Sequins\",\"S\\/M\\/L\"]', 1, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!', '1632340091H9afd762ff5aa41debb6aa5f6e4547006y.jpg', 1352.81, 1893.26, 199, '', NULL, 1, 'top', NULL, 'normal', NULL, NULL, NULL, '2021-08-17 04:03:40', '2021-09-22 17:28:00'),
(421, 23, 29, NULL, 2, 14, 'EEC5 2021 new type of adult bike 125cc motorcycles for sale other E-mark racing', 'EEC5-2021-new-type-of-adult-bike-125cc-motorcycles-for-sale-other-Emark-racing', '65dVy8J8g', 'women,dresses', 'https://www.youtube.com/watch?v=6ZVEAXmupEo', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', '[\"Product Type:\",\"Material:\",\"Lining Material:\",\"Fabric Type:\",\"Technics:\",\"Decoration:\",\"Size:\"]', '[\"Velvet elegant sleeveless evening dress\",\"Polyester \\/ Spandex\",\"Polyester\",\"Fleece\",\"Plain dyed\",\"Sequins\",\"S\\/M\\/L\"]', 1, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!', '1632340109H014bcb981f11475088b2bf2d10fb072eF.jpg', 1352.81, 1893.26, 199, '', NULL, 1, 'new', NULL, 'normal', NULL, NULL, NULL, '2021-08-17 04:03:40', '2021-09-22 13:48:29'),
(422, 23, 29, NULL, 2, 14, 'Best Selling 5000w 8000w 10000W electric motorcycle 72v for adult', '--Best-Selling-5000w-8000w-10000W-electric-motorcycle-72v-for-adult', '65dVy8Jsse5', 'women,dresses', 'https://www.youtube.com/watch?v=6ZVEAXmupEo', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', '[\"Product Type:\",\"Material:\",\"Lining Material:\",\"Fabric Type:\",\"Technics:\",\"Decoration:\",\"Size:\"]', '[\"Velvet elegant sleeveless evening dress\",\"Polyester \\/ Spandex\",\"Polyester\",\"Fleece\",\"Plain dyed\",\"Sequins\",\"S\\/M\\/L\"]', 1, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!', '1632340131Hb7d8c6f533aa4ec58ecb672bf508ab9ad.jpg', 1352.81, 1893.26, 199, '', NULL, 1, 'feature', NULL, 'normal', NULL, NULL, NULL, '2021-08-17 04:03:40', '2021-09-22 16:40:06'),
(423, 23, 29, NULL, 2, 14, 'Car New And Second Hand Used Car High Speed 150km/h Electric Car Vehicles Made In China', 'Car-New-And-Second-Hand-Used-Car-High-Speed-150kmh-Electric-Car-Vehicles-Made-In-China', '65dVy8J8g523', 'women,dresses', 'https://www.youtube.com/watch?v=6ZVEAXmupEo', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', '[\"Product Type:\",\"Material:\",\"Lining Material:\",\"Fabric Type:\",\"Technics:\",\"Decoration:\",\"Size:\"]', '[\"Velvet elegant sleeveless evening dress\",\"Polyester \\/ Spandex\",\"Polyester\",\"Fleece\",\"Plain dyed\",\"Sequins\",\"S\\/M\\/L\"]', 1, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!', '1632340178H1efef3a44b7f478b8b2a2f0343f46e855.jpg', 1352.81, 1893.26, 199, '', NULL, 1, 'new', NULL, 'normal', NULL, NULL, NULL, '2021-08-17 04:03:40', '2021-09-22 13:49:38'),
(424, 23, 29, NULL, 2, 14, 'Wuling Hongguang airbag mini ev 100km/h lithium battery 2021 high speed electric new car', 'Wuling-Hongguang-airbag-mini-ev-100kmh-lithium-battery-2021-high-speed-electric-new-car', '65dVy8Jsse5xs', 'women,dresses', 'https://www.youtube.com/watch?v=6ZVEAXmupEo', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', '[\"Product Type:\",\"Material:\",\"Lining Material:\",\"Fabric Type:\",\"Technics:\",\"Decoration:\",\"Size:\"]', '[\"Velvet elegant sleeveless evening dress\",\"Polyester \\/ Spandex\",\"Polyester\",\"Fleece\",\"Plain dyed\",\"Sequins\",\"S\\/M\\/L\"]', 1, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!', '1632340203H60c22c545e0747ddbe62584d37da4584V.jpg', 1352.81, 1893.26, 199, '', NULL, 1, 'new', NULL, 'normal', NULL, NULL, NULL, '2021-08-17 04:03:40', '2021-09-22 13:50:03'),
(425, 23, 29, NULL, 2, 14, 'EEC L7e L6e DOT Certificated Cheapest Price High Speed New & Used Electric Cars', 'EEC-L7e-L6e-DOT-Certificated-Cheapest-Price-High-Speed-New--Used-Electric-Cars', '65dVy8J8g5290', 'women,dresses', 'https://www.youtube.com/watch?v=6ZVEAXmupEo', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', '[\"Product Type:\",\"Material:\",\"Lining Material:\",\"Fabric Type:\",\"Technics:\",\"Decoration:\",\"Size:\"]', '[\"Velvet elegant sleeveless evening dress\",\"Polyester \\/ Spandex\",\"Polyester\",\"Fleece\",\"Plain dyed\",\"Sequins\",\"S\\/M\\/L\"]', 1, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!', '1632340219H258dcdd6607842d68694b112ec0f240cr.jpg', 1352.81, 1893.26, 199, '', NULL, 1, 'new', NULL, 'normal', NULL, NULL, NULL, '2021-08-17 04:03:40', '2021-09-22 13:50:19'),
(426, 23, 29, NULL, 2, 14, 'Factory New chinese mini van 7 seats van cars made in china with cheap price', 'Factory-New-chinese-mini-van-7-seats-van-cars-made-in-china-with-cheap-price', '65dVy8Jzx', 'women,dresses', 'https://www.youtube.com/watch?v=6ZVEAXmupEo', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', '[\"Product Type:\",\"Material:\",\"Lining Material:\",\"Fabric Type:\",\"Technics:\",\"Decoration:\",\"Size:\"]', '[\"Velvet elegant sleeveless evening dress\",\"Polyester \\/ Spandex\",\"Polyester\",\"Fleece\",\"Plain dyed\",\"Sequins\",\"S\\/M\\/L\"]', 1, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!', '1632340236H416433b70199496691ed7cb8fa0f3221f.jpg', 1352.81, 1893.26, 199, '', NULL, 1, 'new', NULL, 'normal', NULL, NULL, NULL, '2021-08-17 04:03:40', '2021-09-22 13:50:36'),
(427, 23, 29, NULL, 2, 14, 'High Quality Fastest Electric Car Adult High Speed Electric Solar Car electric car supplier', 'High-Quality-Fastest-Electric-Car-Adult-High-Speed-Electric-Solar-Car-electric-car-supplier', '65dVy8Jtt5', 'women,dresses', 'https://www.youtube.com/watch?v=6ZVEAXmupEo', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', '[\"Product Type:\",\"Material:\",\"Lining Material:\",\"Fabric Type:\",\"Technics:\",\"Decoration:\",\"Size:\"]', '[\"Velvet elegant sleeveless evening dress\",\"Polyester \\/ Spandex\",\"Polyester\",\"Fleece\",\"Plain dyed\",\"Sequins\",\"S\\/M\\/L\"]', 1, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!', '1632340255H915716a624814a6c8c19113b7e79cd75H.jpg', 1352.81, 1893.26, 199, '', NULL, 1, 'new', NULL, 'normal', NULL, NULL, NULL, '2021-08-17 04:03:40', '2021-09-22 13:50:55'),
(428, 23, 29, NULL, 2, 14, 'Chang li 2021 hot sale 5 doors 4 seats 4 wheels vehicles cheap sports solar electric car', '--Chang-li-2021-hot-sale-5-doors-4-seats-4-wheels-vehicles-cheap-sports-solar-electric-car', '65dVy8Jzx465f', 'women,dresses', 'https://www.youtube.com/watch?v=6ZVEAXmupEo', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', '[\"Product Type:\",\"Material:\",\"Lining Material:\",\"Fabric Type:\",\"Technics:\",\"Decoration:\",\"Size:\"]', '[\"Velvet elegant sleeveless evening dress\",\"Polyester \\/ Spandex\",\"Polyester\",\"Fleece\",\"Plain dyed\",\"Sequins\",\"S\\/M\\/L\"]', 1, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!', '1632340276Hcba05abf030e44c78c19145b2c38dea5u.jpg', 1352.81, 1893.26, 199, '', NULL, 1, 'new', NULL, 'normal', NULL, NULL, NULL, '2021-08-17 04:03:40', '2021-09-22 14:16:09'),
(429, 19, 9, 34, 2, 7, 'Shirts Menshirts Mens Cotton Shirt Factory Direct Various Style Customization', 'Shirts-Menshirts-Mens-Cotton-Shirt-Factory-Direct-Various-Style-Customization', '65dVy8Jzx45gt', 'women,dresses', 'https://www.youtube.com/watch?v=6ZVEAXmupEo', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', '[\"Product Type:\",\"Material:\",\"Lining Material:\",\"Fabric Type:\",\"Technics:\",\"Decoration:\",\"Size:\"]', '[\"Velvet elegant sleeveless evening dress\",\"Polyester \\/ Spandex\",\"Polyester\",\"Fleece\",\"Plain dyed\",\"Sequins\",\"S\\/M\\/L\"]', 1, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!', '1632342986H8fb00d2318bd48048dcd8bf2546f3f52h.jpg', 1352.81, 1893.26, 199, '', NULL, 1, 'new', NULL, 'normal', NULL, NULL, NULL, '2021-08-17 04:03:40', '2021-09-22 14:36:26'),
(430, 19, 9, 34, 2, 7, 'Men Shirt Custom Shirts Hot Sale Men Women Polyester Cotton Long Sleeve Casual', 'Men-Shirt-Custom-Shirts-Hot-Sale-Men-Women-Polyester-Cotton-Long-Sleeve-Casual', '65dVy8Jtt5rde5', 'women,dresses', 'https://www.youtube.com/watch?v=6ZVEAXmupEo', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', '[\"Product Type:\",\"Material:\",\"Lining Material:\",\"Fabric Type:\",\"Technics:\",\"Decoration:\",\"Size:\"]', '[\"Velvet elegant sleeveless evening dress\",\"Polyester \\/ Spandex\",\"Polyester\",\"Fleece\",\"Plain dyed\",\"Sequins\",\"S\\/M\\/L\"]', 1, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!', '1632342975H206d1d68ce2440ada7b7bc6dfb6354a8p.jpg', 1352.81, 1893.26, 199, '', NULL, 1, 'new', NULL, 'normal', NULL, NULL, NULL, '2021-08-17 04:03:40', '2021-09-22 14:36:15'),
(431, 19, 9, 34, 2, 7, 'Men Shirt Custom Shirts High Quality Men Women Bamboo Fiber Long Sleeve', 'Men-Shirt-Custom-Shirts-High-Quality-Men-Women-Bamboo-Fiber-Long-Sleeve-', '65dVy8Jzxsd', 'women,dresses', 'https://www.youtube.com/watch?v=6ZVEAXmupEo', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', '[\"Product Type:\",\"Material:\",\"Lining Material:\",\"Fabric Type:\",\"Technics:\",\"Decoration:\",\"Size:\"]', '[\"Velvet elegant sleeveless evening dress\",\"Polyester \\/ Spandex\",\"Polyester\",\"Fleece\",\"Plain dyed\",\"Sequins\",\"S\\/M\\/L\"]', 1, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!', '1632342966Hdb695965a744470b958f17251d4d277ew.jpg', 1352.81, 1893.26, 199, '', NULL, 1, 'feature', NULL, 'normal', NULL, NULL, NULL, '2021-08-17 04:03:40', '2021-09-22 16:39:54'),
(432, 19, 9, 17, 2, 15, 'Men Leather Jacket Men New Men High Quality Collar Motorcycle Punk Leather Jacket', 'Men-Leather-Jacket-Men-New-Men-High-Quality-Collar-Motorcycle-Punk-Leather-Jacket', '65dVy8Jzxdty', 'women,dresses', 'https://www.youtube.com/watch?v=6ZVEAXmupEo', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', '[\"Product Type:\",\"Material:\",\"Lining Material:\",\"Fabric Type:\",\"Technics:\",\"Decoration:\",\"Size:\"]', '[\"Velvet elegant sleeveless evening dress\",\"Polyester \\/ Spandex\",\"Polyester\",\"Fleece\",\"Plain dyed\",\"Sequins\",\"S\\/M\\/L\"]', 1, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!', '1632343287H7e01b6c3e996405db8555c5e81c8ade0b.jpg', 1352.81, 1893.26, 199, '', NULL, 1, 'new', NULL, 'normal', NULL, NULL, NULL, '2021-08-17 04:03:40', '2021-09-22 14:41:27'),
(433, 19, 9, 17, 2, 15, 'Men Shirt Custom Shirts Hot Sale Men Women Polyester Cotton Long Sleeve Casual', 'Men-Shirt-Custom-Shirts-Hot-Sale-Men-Women-Polyester-Cotton-Lo', '65dVy8Jt456tg', 'women,dresses', 'https://www.youtube.com/watch?v=6ZVEAXmupEo', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', '[\"Product Type:\",\"Material:\",\"Lining Material:\",\"Fabric Type:\",\"Technics:\",\"Decoration:\",\"Size:\"]', '[\"Velvet elegant sleeveless evening dress\",\"Polyester \\/ Spandex\",\"Polyester\",\"Fleece\",\"Plain dyed\",\"Sequins\",\"S\\/M\\/L\"]', 1, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!', '1632343310Hedf90cf6656546e7a8548d4980edc5bda.jpg', 1352.81, 1893.26, 199, '', NULL, 1, 'new', NULL, 'normal', NULL, NULL, NULL, '2021-08-17 04:03:40', '2021-09-22 14:41:50'),
(434, 19, 10, NULL, 2, 15, 'Pants Factory Hot Sales Large Pockets Elastic Trousers Men Cargo Pants', 'Pants-Factory-Hot-Sales-Large-Pockets-Elastic-Trousers-Men-Cargo-Pants', '65dVy8Jrty56', 'women,dresses', 'https://www.youtube.com/watch?v=6ZVEAXmupEo', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', '[\"Product Type:\",\"Material:\",\"Lining Material:\",\"Fabric Type:\",\"Technics:\",\"Decoration:\",\"Size:\"]', '[\"Velvet elegant sleeveless evening dress\",\"Polyester \\/ Spandex\",\"Polyester\",\"Fleece\",\"Plain dyed\",\"Sequins\",\"S\\/M\\/L\"]', 1, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!', '1632343370H32fbf23e6d3346748cd304531e0a272aa.jpg', 1352.81, 1893.26, 199, '', NULL, 1, 'new', NULL, 'normal', NULL, NULL, NULL, '2021-08-17 04:03:40', '2021-09-22 14:42:50');
INSERT INTO `items` (`id`, `category_id`, `subcategory_id`, `childcategory_id`, `tax_id`, `brand_id`, `name`, `slug`, `sku`, `tags`, `video`, `sort_details`, `specification_name`, `specification_description`, `is_specification`, `details`, `photo`, `discount_price`, `previous_price`, `stock`, `meta_keywords`, `meta_description`, `status`, `is_type`, `date`, `item_type`, `file`, `link`, `file_type`, `created_at`, `updated_at`) VALUES
(435, 19, 10, NULL, 2, 8, 'Pants Wholesales Custom Cotton Workout Exercise Sweatpants Gym Jogger Pants', 'Pants-Wholesales-Custom-Cotton-Workout-Exercise-Sweatpants-Gym-Jogger-Pants', '65dVy8Jrt546g', 'women,dresses', 'https://www.youtube.com/watch?v=6ZVEAXmupEo', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', '[\"Product Type:\",\"Material:\",\"Lining Material:\",\"Fabric Type:\",\"Technics:\",\"Decoration:\",\"Size:\"]', '[\"Velvet elegant sleeveless evening dress\",\"Polyester \\/ Spandex\",\"Polyester\",\"Fleece\",\"Plain dyed\",\"Sequins\",\"S\\/M\\/L\"]', 1, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!', '1632343397H367ac7f408644e8dad8cd151e5cc683cF.jpg', 1352.81, 1893.26, 199, '', NULL, 1, 'new', NULL, 'normal', NULL, NULL, NULL, '2021-08-17 04:03:40', '2021-09-22 14:43:17'),
(436, 19, 10, NULL, 2, 7, 'Pants Men Jogger Pants Just Arrived Street Type Fitness Running Active Wear', 'Pants-Men-Jogger-Pants-Just-Arrived-Street-Type-Fitness-Running-Active-Wear', '65dVy8Jt45xswe', 'women,dresses', 'https://www.youtube.com/watch?v=6ZVEAXmupEo', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', '[\"Product Type:\",\"Material:\",\"Lining Material:\",\"Fabric Type:\",\"Technics:\",\"Decoration:\",\"Size:\"]', '[\"Velvet elegant sleeveless evening dress\",\"Polyester \\/ Spandex\",\"Polyester\",\"Fleece\",\"Plain dyed\",\"Sequins\",\"S\\/M\\/L\"]', 1, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!', '1632343419H12506540827146faad596973c3424597O.jpg', 1352.81, 1893.26, 199, '', NULL, 1, 'new', NULL, 'normal', NULL, NULL, NULL, '2021-08-17 04:03:40', '2021-09-22 14:43:39'),
(437, 19, 10, NULL, 2, 8, 'Slim Fit Joggers Tapered Sweatpants For Gym Casual Zipper', 'Slim-Fit-Joggers-Tapered-Sweatpants-For-Gym-Casual-Zipper', '65dVy8Jzxewr34', 'women,dresses', 'https://www.youtube.com/watch?v=6ZVEAXmupEo', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', '[\"Product Type:\",\"Material:\",\"Lining Material:\",\"Fabric Type:\",\"Technics:\",\"Decoration:\",\"Size:\"]', '[\"Velvet elegant sleeveless evening dress\",\"Polyester \\/ Spandex\",\"Polyester\",\"Fleece\",\"Plain dyed\",\"Sequins\",\"S\\/M\\/L\"]', 1, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!', '1632343442Ha24a8c4da58943759d7725cea11cbd5eU.jpg', 1352.81, 1893.26, 199, '', NULL, 1, 'new', NULL, 'normal', NULL, NULL, NULL, '2021-08-17 04:03:40', '2021-09-22 14:44:02'),
(438, 19, 10, NULL, 2, 7, 'Men Shirt Custom Shirts High Quality Men Women Bamboo Fiber Long Sleeve', 'Men-Shirt-Custom-Swerfwsedrdft', '65dVy8Jzxewr34xs', 'women,dresses', 'https://www.youtube.com/watch?v=6ZVEAXmupEo', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', '[\"Product Type:\",\"Material:\",\"Lining Material:\",\"Fabric Type:\",\"Technics:\",\"Decoration:\",\"Size:\"]', '[\"Velvet elegant sleeveless evening dress\",\"Polyester \\/ Spandex\",\"Polyester\",\"Fleece\",\"Plain dyed\",\"Sequins\",\"S\\/M\\/L\"]', 1, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!', '1632343462Haeebad0b0907432897c3ee27adc13ef48.jpg', 1352.81, 1893.26, 199, '', NULL, 1, 'new', NULL, 'normal', NULL, NULL, NULL, '2021-08-17 04:03:40', '2021-09-22 14:44:22'),
(439, 22, 26, NULL, 2, 16, 'AMEIZII Beauty And Personal Care Face Skin Masks Nose Blackhead Remover', 'AMEIZII-Beauty-And-Personal-Care-Face-Skin-Masks-Nose-Blackhead-Remover', '65dVy8Jt45xsrr', 'women,dresses', 'https://www.youtube.com/watch?v=6ZVEAXmupEo', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', '[\"Product Type:\",\"Material:\",\"Lining Material:\",\"Fabric Type:\",\"Technics:\",\"Decoration:\",\"Size:\"]', '[\"Velvet elegant sleeveless evening dress\",\"Polyester \\/ Spandex\",\"Polyester\",\"Fleece\",\"Plain dyed\",\"Sequins\",\"S\\/M\\/L\"]', 1, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!', '1632346607H6e71ffd70a134245aaab2261bf685508j.jpg', 1352.81, 1893.26, 199, '', NULL, 1, 'new', NULL, 'normal', NULL, NULL, NULL, '2021-08-17 04:03:40', '2021-09-22 15:36:47'),
(440, 22, 24, NULL, 2, 16, 'OEM ODM Fullerene essence best face moisturizer whitening anti-aging cream', 'OEM-ODM-Fullerene-essence-best-face-moisturizer-whitening-antiaging-cream', '65dVy8Jrt546gcsw', 'women,dresses', 'https://www.youtube.com/watch?v=6ZVEAXmupEo', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', '[\"Product Type:\",\"Material:\",\"Lining Material:\",\"Fabric Type:\",\"Technics:\",\"Decoration:\",\"Size:\"]', '[\"Velvet elegant sleeveless evening dress\",\"Polyester \\/ Spandex\",\"Polyester\",\"Fleece\",\"Plain dyed\",\"Sequins\",\"S\\/M\\/L\"]', 1, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!', '1632346640H1575ae72d5e144cfbf237196d6ea139bj.jpg', 1352.81, 1893.26, 199, '', NULL, 1, 'new', NULL, 'normal', NULL, NULL, NULL, '2021-08-17 04:03:40', '2021-09-22 15:37:20'),
(441, 22, 27, NULL, 2, 16, 'Korean Beauty Organic Brightening Peel off Hyaluronic Acid Facial Jelly Powder', 'Korean-Beauty-Organic-Brightening-Peel-off-Hyaluronic-Acid-Facial-Jelly-Powder', '65dVy8Jrtxew', 'women,dresses', 'https://www.youtube.com/watch?v=6ZVEAXmupEo', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', '[\"Product Type:\",\"Material:\",\"Lining Material:\",\"Fabric Type:\",\"Technics:\",\"Decoration:\",\"Size:\"]', '[\"Velvet elegant sleeveless evening dress\",\"Polyester \\/ Spandex\",\"Polyester\",\"Fleece\",\"Plain dyed\",\"Sequins\",\"S\\/M\\/L\"]', 1, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!', '1632346678H8064fa369ca644958a52846035a40641p.jpg', 1352.81, 1893.26, 199, '', NULL, 1, 'new', NULL, 'normal', NULL, NULL, NULL, '2021-08-17 04:03:40', '2021-09-22 15:37:58'),
(442, 27, 30, NULL, 2, 9, 'Wordpress Ecommerce Online Store B2C Online Shop Website Design Business Online Website', 'Wordpress-Ecommerce-Online-Store-B2C-Online-Shop-Website-Design-Business-Online-Website-', NULL, 'HTML,CSS,Wordpress,Laravel', 'https://www.youtube.com/watch?v=6ZVEAXmupEo', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', '[\"High Resolution\",\"Compatible Browsers\",\"Files Included\",\"Software Framework\",\"Software Version\"]', '[\"Yes\",\"IE10, IE11, Firefox, Safari, Opera, Chrome, Edge\",\"JavaScript JS, HTML, CSS, PHP, SQL\",\"Wordpress\",\"PHP 8.x, PHP 7.x, MySQL 5.x\"]', 1, '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae\r\n illo soluta sapiente minus voluptatibus molestias voluptates maiores \r\nrepudiandae, velit quaerat error! Dolor alias voluptates rerum vitae \r\nillum officiis laboriosam, eos fugiat necessitatibus iste quasi vero \r\nporro at asperiores atque numquam adipisci esse perferendis hic dolore \r\ndolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit \r\nvoluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam\r\n ab adipisci nihil mollitia odio ducimus architecto unde harum saepe \r\nillum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. \r\nPossimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat\r\n nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod \r\nconsectetur culpa autem aliquid? Inventore adipisci officia error dolore\r\n provident omnis sint perferendis, consequuntur, sapiente magni sequi \r\nquo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed \r\nexpedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio \r\nex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla \r\nperspiciatis similique est, libero sapiente hic error amet, quisquam vel\r\n obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error \r\nvoluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident\r\n dolores facere necessitatibus commodi vel in, laborum quidem aliquam \r\nipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, \r\nsapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam \r\nqui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? \r\nDolore excepturi quod doloribus quam rem placeat at odit dicta amet \r\nexpedita illo laboriosam minus ut minima, tenetur suscipit soluta \r\nassumenda. Nisi laboriosam adipisci animi consequuntur, ad illum \r\nrepellat consequatur odit, laudantium velit non nobis labore illo omnis \r\nquod suscipit voluptates quaerat consectetur temporibus et, laborum quam\r\n ducimus earum! Repellat, fugit? Repudiandae repellendus maiores \r\ndoloribus deleniti asperiores distinctio suscipit fugiat omnis culpa \r\nitaque? Harum et, velit ratione corrupti error asperiores optio, \r\nrecusandae mollitia necessitatibus cumque vero voluptatem ullam porro \r\naut eum earum! Consectetur voluptatum ratione dolor in earum molestiae \r\nipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque \r\nofficiis ea et atque eveniet similique sequi illo!</p>', '1632344407U32feef72859d4a018dc33710b3647992j.jpg', 35, 70, 0, '', NULL, 1, 'new', NULL, 'digital', '1632344407sample.zip', NULL, 'file', '2021-09-22 15:00:07', '2021-09-22 15:00:07'),
(443, 27, 32, NULL, 2, 9, 'Custom Website Builder Shopping Website Design and Development', 'Custom-Website-Builder-Shopping-Website-Design-and-Development', NULL, 'HTML,CSS,Wordpress,Laravel', 'https://www.youtube.com/watch?v=6ZVEAXmupEo', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', '[\"High Resolution\",\"Compatible Browsers\",\"Files Included\",\"Software Framework\",\"Software Version\"]', '[\"Yes\",\"IE10, IE11, Firefox, Safari, Opera, Chrome, Edge\",\"JavaScript JS, HTML, CSS, PHP, SQL\",\"Wordpress\",\"PHP 8.x, PHP 7.x, MySQL 5.x\"]', 1, '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae\r\n illo soluta sapiente minus voluptatibus molestias voluptates maiores \r\nrepudiandae, velit quaerat error! Dolor alias voluptates rerum vitae \r\nillum officiis laboriosam, eos fugiat necessitatibus iste quasi vero \r\nporro at asperiores atque numquam adipisci esse perferendis hic dolore \r\ndolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit \r\nvoluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam\r\n ab adipisci nihil mollitia odio ducimus architecto unde harum saepe \r\nillum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. \r\nPossimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat\r\n nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod \r\nconsectetur culpa autem aliquid? Inventore adipisci officia error dolore\r\n provident omnis sint perferendis, consequuntur, sapiente magni sequi \r\nquo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed \r\nexpedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio \r\nex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla \r\nperspiciatis similique est, libero sapiente hic error amet, quisquam vel\r\n obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error \r\nvoluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident\r\n dolores facere necessitatibus commodi vel in, laborum quidem aliquam \r\nipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, \r\nsapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam \r\nqui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? \r\nDolore excepturi quod doloribus quam rem placeat at odit dicta amet \r\nexpedita illo laboriosam minus ut minima, tenetur suscipit soluta \r\nassumenda. Nisi laboriosam adipisci animi consequuntur, ad illum \r\nrepellat consequatur odit, laudantium velit non nobis labore illo omnis \r\nquod suscipit voluptates quaerat consectetur temporibus et, laborum quam\r\n ducimus earum! Repellat, fugit? Repudiandae repellendus maiores \r\ndoloribus deleniti asperiores distinctio suscipit fugiat omnis culpa \r\nitaque? Harum et, velit ratione corrupti error asperiores optio, \r\nrecusandae mollitia necessitatibus cumque vero voluptatem ullam porro \r\naut eum earum! Consectetur voluptatum ratione dolor in earum molestiae \r\nipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque \r\nofficiis ea et atque eveniet similique sequi illo!</p>', '1632344739H32e77b35ed3e4f359723b0893abdf333y.jpg', 35, 70, 0, '', NULL, 1, 'feature', NULL, 'digital', '1632344739sample.zip', NULL, 'file', '2021-09-22 15:00:07', '2021-09-22 17:25:46'),
(444, 27, 31, NULL, 2, 9, 'Website Development Payment Gateway Website Online Business Webdesign Responsive', 'Website-Development-Payment-Gateway-Website-Online-Business-Webdesign-Responsive', NULL, 'HTML,CSS,Wordpress,Laravel', 'https://www.youtube.com/watch?v=6ZVEAXmupEo', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', '[\"High Resolution\",\"Compatible Browsers\",\"Files Included\",\"Software Framework\",\"Software Version\"]', '[\"Yes\",\"IE10, IE11, Firefox, Safari, Opera, Chrome, Edge\",\"JavaScript JS, HTML, CSS, PHP, SQL\",\"Wordpress\",\"PHP 8.x, PHP 7.x, MySQL 5.x\"]', 1, '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae\r\n illo soluta sapiente minus voluptatibus molestias voluptates maiores \r\nrepudiandae, velit quaerat error! Dolor alias voluptates rerum vitae \r\nillum officiis laboriosam, eos fugiat necessitatibus iste quasi vero \r\nporro at asperiores atque numquam adipisci esse perferendis hic dolore \r\ndolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit \r\nvoluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam\r\n ab adipisci nihil mollitia odio ducimus architecto unde harum saepe \r\nillum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. \r\nPossimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat\r\n nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod \r\nconsectetur culpa autem aliquid? Inventore adipisci officia error dolore\r\n provident omnis sint perferendis, consequuntur, sapiente magni sequi \r\nquo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed \r\nexpedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio \r\nex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla \r\nperspiciatis similique est, libero sapiente hic error amet, quisquam vel\r\n obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error \r\nvoluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident\r\n dolores facere necessitatibus commodi vel in, laborum quidem aliquam \r\nipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, \r\nsapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam \r\nqui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? \r\nDolore excepturi quod doloribus quam rem placeat at odit dicta amet \r\nexpedita illo laboriosam minus ut minima, tenetur suscipit soluta \r\nassumenda. Nisi laboriosam adipisci animi consequuntur, ad illum \r\nrepellat consequatur odit, laudantium velit non nobis labore illo omnis \r\nquod suscipit voluptates quaerat consectetur temporibus et, laborum quam\r\n ducimus earum! Repellat, fugit? Repudiandae repellendus maiores \r\ndoloribus deleniti asperiores distinctio suscipit fugiat omnis culpa \r\nitaque? Harum et, velit ratione corrupti error asperiores optio, \r\nrecusandae mollitia necessitatibus cumque vero voluptatem ullam porro \r\naut eum earum! Consectetur voluptatum ratione dolor in earum molestiae \r\nipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque \r\nofficiis ea et atque eveniet similique sequi illo!</p>', '1632344834Hd8e8ee6b580644beba14f0866d6a1269l.jpg', 35, 70, 0, '', NULL, 1, 'top', NULL, 'digital', '1632344834sample.zip', NULL, 'file', '2021-09-22 15:00:07', '2021-09-22 17:27:17'),
(445, 27, 30, NULL, 2, 9, 'wordpress shopify Start Your Own eCommerce Site Create Your Online Store Today online store websit', 'wordpress-shopify-Start-Your-Own-eCommerce-Site-Create-Your-Online-Store-Today-online-store-websit', NULL, 'HTML,CSS,Wordpress,Laravel', 'https://www.youtube.com/watch?v=6ZVEAXmupEo', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', '[\"High Resolution\",\"Compatible Browsers\",\"Files Included\",\"Software Framework\",\"Software Version\"]', '[\"Yes\",\"IE10, IE11, Firefox, Safari, Opera, Chrome, Edge\",\"JavaScript JS, HTML, CSS, PHP, SQL\",\"Wordpress\",\"PHP 8.x, PHP 7.x, MySQL 5.x\"]', 1, '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae\r\n illo soluta sapiente minus voluptatibus molestias voluptates maiores \r\nrepudiandae, velit quaerat error! Dolor alias voluptates rerum vitae \r\nillum officiis laboriosam, eos fugiat necessitatibus iste quasi vero \r\nporro at asperiores atque numquam adipisci esse perferendis hic dolore \r\ndolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit \r\nvoluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam\r\n ab adipisci nihil mollitia odio ducimus architecto unde harum saepe \r\nillum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. \r\nPossimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat\r\n nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod \r\nconsectetur culpa autem aliquid? Inventore adipisci officia error dolore\r\n provident omnis sint perferendis, consequuntur, sapiente magni sequi \r\nquo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed \r\nexpedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio \r\nex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla \r\nperspiciatis similique est, libero sapiente hic error amet, quisquam vel\r\n obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error \r\nvoluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident\r\n dolores facere necessitatibus commodi vel in, laborum quidem aliquam \r\nipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, \r\nsapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam \r\nqui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? \r\nDolore excepturi quod doloribus quam rem placeat at odit dicta amet \r\nexpedita illo laboriosam minus ut minima, tenetur suscipit soluta \r\nassumenda. Nisi laboriosam adipisci animi consequuntur, ad illum \r\nrepellat consequatur odit, laudantium velit non nobis labore illo omnis \r\nquod suscipit voluptates quaerat consectetur temporibus et, laborum quam\r\n ducimus earum! Repellat, fugit? Repudiandae repellendus maiores \r\ndoloribus deleniti asperiores distinctio suscipit fugiat omnis culpa \r\nitaque? Harum et, velit ratione corrupti error asperiores optio, \r\nrecusandae mollitia necessitatibus cumque vero voluptatem ullam porro \r\naut eum earum! Consectetur voluptatum ratione dolor in earum molestiae \r\nipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque \r\nofficiis ea et atque eveniet similique sequi illo!</p>', '1632344887Hf435248807dd438aaf4d8a53e6f7eaedP.jpg', 35, 70, 0, '', NULL, 1, 'new', NULL, 'digital', '1632344887sample.zip', NULL, 'file', '2021-09-22 15:00:07', '2021-09-22 15:08:07'),
(446, 27, 30, NULL, 2, 9, 'Create a Wordpress Website Designers Ecommerce, Multivendor Website Software', 'Create-a-Wordpress-Website-Designers-Ecommerce-Multivendor-Website-Software', NULL, 'HTML,CSS,Wordpress,Laravel', 'https://www.youtube.com/watch?v=6ZVEAXmupEo', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', '[\"High Resolution\",\"Compatible Browsers\",\"Files Included\",\"Software Framework\",\"Software Version\"]', '[\"Yes\",\"IE10, IE11, Firefox, Safari, Opera, Chrome, Edge\",\"JavaScript JS, HTML, CSS, PHP, SQL\",\"Wordpress\",\"PHP 8.x, PHP 7.x, MySQL 5.x\"]', 1, '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae\r\n illo soluta sapiente minus voluptatibus molestias voluptates maiores \r\nrepudiandae, velit quaerat error! Dolor alias voluptates rerum vitae \r\nillum officiis laboriosam, eos fugiat necessitatibus iste quasi vero \r\nporro at asperiores atque numquam adipisci esse perferendis hic dolore \r\ndolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit \r\nvoluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam\r\n ab adipisci nihil mollitia odio ducimus architecto unde harum saepe \r\nillum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. \r\nPossimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat\r\n nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod \r\nconsectetur culpa autem aliquid? Inventore adipisci officia error dolore\r\n provident omnis sint perferendis, consequuntur, sapiente magni sequi \r\nquo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed \r\nexpedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio \r\nex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla \r\nperspiciatis similique est, libero sapiente hic error amet, quisquam vel\r\n obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error \r\nvoluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident\r\n dolores facere necessitatibus commodi vel in, laborum quidem aliquam \r\nipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, \r\nsapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam \r\nqui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? \r\nDolore excepturi quod doloribus quam rem placeat at odit dicta amet \r\nexpedita illo laboriosam minus ut minima, tenetur suscipit soluta \r\nassumenda. Nisi laboriosam adipisci animi consequuntur, ad illum \r\nrepellat consequatur odit, laudantium velit non nobis labore illo omnis \r\nquod suscipit voluptates quaerat consectetur temporibus et, laborum quam\r\n ducimus earum! Repellat, fugit? Repudiandae repellendus maiores \r\ndoloribus deleniti asperiores distinctio suscipit fugiat omnis culpa \r\nitaque? Harum et, velit ratione corrupti error asperiores optio, \r\nrecusandae mollitia necessitatibus cumque vero voluptatem ullam porro \r\naut eum earum! Consectetur voluptatum ratione dolor in earum molestiae \r\nipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque \r\nofficiis ea et atque eveniet similique sequi illo!</p>', '1632344940U4431f054a85341a5a36101d8df36f90a7.jpg', 35, 70, 0, '', NULL, 1, 'new', NULL, 'digital', '1632344940sample.zip', NULL, 'file', '2021-09-22 15:00:07', '2021-09-22 15:09:00'),
(447, 27, NULL, NULL, 2, 7, 'Best Online Wholesale Website Design and development company | Ecommerce shopping webdesign', 'Best-Online-Wholesale-Website-Design-and-development-company--Ecommerce-shopping-webdesign', NULL, 'HTML,CSS,Wordpress,Laravel', 'https://www.youtube.com/watch?v=6ZVEAXmupEo', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', '[\"High Resolution\",\"Compatible Browsers\",\"Files Included\",\"Software Framework\",\"Software Version\"]', '[\"Yes\",\"IE10, IE11, Firefox, Safari, Opera, Chrome, Edge\",\"JavaScript JS, HTML, CSS, PHP, SQL\",\"Wordpress\",\"PHP 8.x, PHP 7.x, MySQL 5.x\"]', 1, '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae\r\n illo soluta sapiente minus voluptatibus molestias voluptates maiores \r\nrepudiandae, velit quaerat error! Dolor alias voluptates rerum vitae \r\nillum officiis laboriosam, eos fugiat necessitatibus iste quasi vero \r\nporro at asperiores atque numquam adipisci esse perferendis hic dolore \r\ndolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit \r\nvoluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam\r\n ab adipisci nihil mollitia odio ducimus architecto unde harum saepe \r\nillum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. \r\nPossimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat\r\n nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod \r\nconsectetur culpa autem aliquid? Inventore adipisci officia error dolore\r\n provident omnis sint perferendis, consequuntur, sapiente magni sequi \r\nquo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed \r\nexpedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio \r\nex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla \r\nperspiciatis similique est, libero sapiente hic error amet, quisquam vel\r\n obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error \r\nvoluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident\r\n dolores facere necessitatibus commodi vel in, laborum quidem aliquam \r\nipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, \r\nsapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam \r\nqui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? \r\nDolore excepturi quod doloribus quam rem placeat at odit dicta amet \r\nexpedita illo laboriosam minus ut minima, tenetur suscipit soluta \r\nassumenda. Nisi laboriosam adipisci animi consequuntur, ad illum \r\nrepellat consequatur odit, laudantium velit non nobis labore illo omnis \r\nquod suscipit voluptates quaerat consectetur temporibus et, laborum quam\r\n ducimus earum! Repellat, fugit? Repudiandae repellendus maiores \r\ndoloribus deleniti asperiores distinctio suscipit fugiat omnis culpa \r\nitaque? Harum et, velit ratione corrupti error asperiores optio, \r\nrecusandae mollitia necessitatibus cumque vero voluptatem ullam porro \r\naut eum earum! Consectetur voluptatum ratione dolor in earum molestiae \r\nipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque \r\nofficiis ea et atque eveniet similique sequi illo!</p>', '1632345162Ucc4d26e9889041dc899c3522859ed3f88.jpg', 35, 70, 0, '', NULL, 1, 'best', NULL, 'digital', '1632345025sample.zip', NULL, 'file', '2021-09-22 15:00:07', '2021-09-22 17:26:48'),
(448, 27, 31, NULL, 2, 9, 'Static Web Design and Development| Business Web development|Outsource Static Webdesign', 'Static-Web-Design-and-Development-Business-Web-developmentOutsource-Static-Webdesign', NULL, 'HTML,CSS,Wordpress,Laravel', 'https://www.youtube.com/watch?v=6ZVEAXmupEo', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', '[\"High Resolution\",\"Compatible Browsers\",\"Files Included\",\"Software Framework\",\"Software Version\"]', '[\"Yes\",\"IE10, IE11, Firefox, Safari, Opera, Chrome, Edge\",\"JavaScript JS, HTML, CSS, PHP, SQL\",\"Wordpress\",\"PHP 8.x, PHP 7.x, MySQL 5.x\"]', 1, '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae\r\n illo soluta sapiente minus voluptatibus molestias voluptates maiores \r\nrepudiandae, velit quaerat error! Dolor alias voluptates rerum vitae \r\nillum officiis laboriosam, eos fugiat necessitatibus iste quasi vero \r\nporro at asperiores atque numquam adipisci esse perferendis hic dolore \r\ndolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit \r\nvoluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam\r\n ab adipisci nihil mollitia odio ducimus architecto unde harum saepe \r\nillum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. \r\nPossimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat\r\n nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod \r\nconsectetur culpa autem aliquid? Inventore adipisci officia error dolore\r\n provident omnis sint perferendis, consequuntur, sapiente magni sequi \r\nquo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed \r\nexpedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio \r\nex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla \r\nperspiciatis similique est, libero sapiente hic error amet, quisquam vel\r\n obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error \r\nvoluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident\r\n dolores facere necessitatibus commodi vel in, laborum quidem aliquam \r\nipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, \r\nsapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam \r\nqui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? \r\nDolore excepturi quod doloribus quam rem placeat at odit dicta amet \r\nexpedita illo laboriosam minus ut minima, tenetur suscipit soluta \r\nassumenda. Nisi laboriosam adipisci animi consequuntur, ad illum \r\nrepellat consequatur odit, laudantium velit non nobis labore illo omnis \r\nquod suscipit voluptates quaerat consectetur temporibus et, laborum quam\r\n ducimus earum! Repellat, fugit? Repudiandae repellendus maiores \r\ndoloribus deleniti asperiores distinctio suscipit fugiat omnis culpa \r\nitaque? Harum et, velit ratione corrupti error asperiores optio, \r\nrecusandae mollitia necessitatibus cumque vero voluptatem ullam porro \r\naut eum earum! Consectetur voluptatum ratione dolor in earum molestiae \r\nipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque \r\nofficiis ea et atque eveniet similique sequi illo!</p>', '1632344992Uc343eca8de2c490eab3930b8f60827379.png', 35, 70, 0, '', NULL, 1, 'new', NULL, 'digital', '1632344992sample.zip', NULL, 'file', '2021-09-22 15:00:07', '2021-09-22 15:09:52');
INSERT INTO `items` (`id`, `category_id`, `subcategory_id`, `childcategory_id`, `tax_id`, `brand_id`, `name`, `slug`, `sku`, `tags`, `video`, `sort_details`, `specification_name`, `specification_description`, `is_specification`, `details`, `photo`, `discount_price`, `previous_price`, `stock`, `meta_keywords`, `meta_description`, `status`, `is_type`, `date`, `item_type`, `file`, `link`, `file_type`, `created_at`, `updated_at`) VALUES
(449, 27, 32, NULL, 2, 9, 'Online Business Website Designing Services Webdesign Website Designers Program', 'Online-Business-Website-Designing-Services-Webdesign-Website-Designers-Program', NULL, 'HTML,CSS,Wordpress,Laravel', 'https://www.youtube.com/watch?v=6ZVEAXmupEo', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', '[\"High Resolution\",\"Compatible Browsers\",\"Files Included\",\"Software Framework\",\"Software Version\"]', '[\"Yes\",\"IE10, IE11, Firefox, Safari, Opera, Chrome, Edge\",\"JavaScript JS, HTML, CSS, PHP, SQL\",\"Wordpress\",\"PHP 8.x, PHP 7.x, MySQL 5.x\"]', 1, '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae\r\n illo soluta sapiente minus voluptatibus molestias voluptates maiores \r\nrepudiandae, velit quaerat error! Dolor alias voluptates rerum vitae \r\nillum officiis laboriosam, eos fugiat necessitatibus iste quasi vero \r\nporro at asperiores atque numquam adipisci esse perferendis hic dolore \r\ndolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit \r\nvoluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam\r\n ab adipisci nihil mollitia odio ducimus architecto unde harum saepe \r\nillum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. \r\nPossimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat\r\n nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod \r\nconsectetur culpa autem aliquid? Inventore adipisci officia error dolore\r\n provident omnis sint perferendis, consequuntur, sapiente magni sequi \r\nquo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed \r\nexpedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio \r\nex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla \r\nperspiciatis similique est, libero sapiente hic error amet, quisquam vel\r\n obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error \r\nvoluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident\r\n dolores facere necessitatibus commodi vel in, laborum quidem aliquam \r\nipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, \r\nsapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam \r\nqui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? \r\nDolore excepturi quod doloribus quam rem placeat at odit dicta amet \r\nexpedita illo laboriosam minus ut minima, tenetur suscipit soluta \r\nassumenda. Nisi laboriosam adipisci animi consequuntur, ad illum \r\nrepellat consequatur odit, laudantium velit non nobis labore illo omnis \r\nquod suscipit voluptates quaerat consectetur temporibus et, laborum quam\r\n ducimus earum! Repellat, fugit? Repudiandae repellendus maiores \r\ndoloribus deleniti asperiores distinctio suscipit fugiat omnis culpa \r\nitaque? Harum et, velit ratione corrupti error asperiores optio, \r\nrecusandae mollitia necessitatibus cumque vero voluptatem ullam porro \r\naut eum earum! Consectetur voluptatum ratione dolor in earum molestiae \r\nipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque \r\nofficiis ea et atque eveniet similique sequi illo!</p>', '1632345057Ucdd42554b97a4e159ea958eeb2d4363f8.jpg', 35, 70, 0, '', NULL, 1, 'feature', NULL, 'digital', '1632345057sample.zip', NULL, 'file', '2021-09-22 15:00:07', '2021-09-22 16:39:42'),
(450, 22, 27, NULL, 2, 16, 'Mask stick to your face moisture skin care clay facial natural moisturiser low moq', 'Mask-stick-to-your-face-moisture-skin-care-clay-facial-natural-moisturiser-low-moq', '65dVy8Jrtfdg4', 'women,dresses', 'https://www.youtube.com/watch?v=6ZVEAXmupEo', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', '[\"Product Type:\",\"Material:\",\"Lining Material:\",\"Fabric Type:\",\"Technics:\",\"Decoration:\",\"Size:\"]', '[\"Velvet elegant sleeveless evening dress\",\"Polyester \\/ Spandex\",\"Polyester\",\"Fleece\",\"Plain dyed\",\"Sequins\",\"S\\/M\\/L\"]', 1, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!', '1632346867Habf8df421e5b4d99b802fc6120d050a7N.jpg', 1352.81, 1893.26, 199, '', NULL, 1, 'new', NULL, 'normal', NULL, NULL, NULL, '2021-08-17 04:03:40', '2021-09-22 15:41:07'),
(451, 22, 26, NULL, 2, 16, 'Face Lift Band Facial Beauty Slimming Double Chin Bandage Strap Weight', 'Face-Lift-Band-Facial-Beauty-Slimming-Double-Chin-Bandage-Strap-Weight', '65dVy8345dfg', 'women,dresses', 'https://www.youtube.com/watch?v=6ZVEAXmupEo', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', '[\"Product Type:\",\"Material:\",\"Lining Material:\",\"Fabric Type:\",\"Technics:\",\"Decoration:\",\"Size:\"]', '[\"Velvet elegant sleeveless evening dress\",\"Polyester \\/ Spandex\",\"Polyester\",\"Fleece\",\"Plain dyed\",\"Sequins\",\"S\\/M\\/L\"]', 1, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!', '1632346908Hcfd42cbddf7b40b08d3f9048f4d425e5A.jpg', 1352.81, 1893.26, 199, '', NULL, 1, 'new', NULL, 'normal', NULL, NULL, NULL, '2021-08-17 04:03:40', '2021-09-22 15:41:48'),
(452, 22, 27, NULL, 2, 16, 'Mini Electric Silicone Face Brush Massager Cepillo Facial Beautiful Silicone Facial Cleansing Brush', 'Mini-Electric-Silicone-Face-Brush-Massager-Cepillo-Facial-Beautiful-Silicone-Facial-Cleansing-Brush', '65dVy834345g', 'women,dresses', 'https://www.youtube.com/watch?v=6ZVEAXmupEo', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', '[\"Product Type:\",\"Material:\",\"Lining Material:\",\"Fabric Type:\",\"Technics:\",\"Decoration:\",\"Size:\"]', '[\"Velvet elegant sleeveless evening dress\",\"Polyester \\/ Spandex\",\"Polyester\",\"Fleece\",\"Plain dyed\",\"Sequins\",\"S\\/M\\/L\"]', 1, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!', '1632346940Hdee8e662b5c747d69275ffd10450d8c1u.jpg', 1352.81, 1893.26, 199, '', NULL, 1, 'best', NULL, 'normal', NULL, NULL, NULL, '2021-08-17 04:03:40', '2021-09-22 17:26:40'),
(453, 22, 24, NULL, 2, 16, 'Beauty Beauty Anti-wrinkle USB Charging Neck Wrinkle Removal Neck Care', 'Beauty-Beauty-Antiwrinkle-USB-Charging-Neck-Wrinkle-Removal-Neck-Care', '65dVy8Jr8fg', 'women,dresses', 'https://www.youtube.com/watch?v=6ZVEAXmupEo', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', '[\"Product Type:\",\"Material:\",\"Lining Material:\",\"Fabric Type:\",\"Technics:\",\"Decoration:\",\"Size:\"]', '[\"Velvet elegant sleeveless evening dress\",\"Polyester \\/ Spandex\",\"Polyester\",\"Fleece\",\"Plain dyed\",\"Sequins\",\"S\\/M\\/L\"]', 1, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!', '1632346978He4cca751c6c94532958892118104e47ck.jpg', 1352.81, 1893.26, 199, '', NULL, 1, 'new', NULL, 'normal', NULL, NULL, NULL, '2021-08-17 04:03:40', '2021-09-22 15:42:58'),
(454, 22, 26, NULL, 2, 16, 'Latex free makeup sponge Customized beauty make up blender makeup spong', 'Latex-free-makeup-sponge-Customized-beauty-make-up-blender-makeup-spong', '65dVy8Jr8fg566', 'women,dresses', 'https://www.youtube.com/watch?v=6ZVEAXmupEo', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', '[\"Product Type:\",\"Material:\",\"Lining Material:\",\"Fabric Type:\",\"Technics:\",\"Decoration:\",\"Size:\"]', '[\"Velvet elegant sleeveless evening dress\",\"Polyester \\/ Spandex\",\"Polyester\",\"Fleece\",\"Plain dyed\",\"Sequins\",\"S\\/M\\/L\"]', 1, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!', '1632347013HTB1HSCEe25G3KVjSZPxq6zI3XXao.jpg', 1352.81, 1893.26, 199, '', NULL, 1, 'best', NULL, 'normal', NULL, NULL, NULL, '2021-08-17 04:03:40', '2021-09-22 16:59:53'),
(455, 22, 27, NULL, 2, 16, 'Home Use Beauty Device Face Massager Facial Lifting Tool Beauty Anti-Aging', 'Home-Use-Beauty-Device-Face-Massager-Facial-Lifting-Tool-Beauty-AntiAging', '65dVy83xxd08', 'women,dresses', 'https://www.youtube.com/watch?v=6ZVEAXmupEo', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', '[\"Product Type:\",\"Material:\",\"Lining Material:\",\"Fabric Type:\",\"Technics:\",\"Decoration:\",\"Size:\"]', '[\"Velvet elegant sleeveless evening dress\",\"Polyester \\/ Spandex\",\"Polyester\",\"Fleece\",\"Plain dyed\",\"Sequins\",\"S\\/M\\/L\"]', 1, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!', '1632347037HTB1K4CyX6DuK1Rjy1zjq6zraFXaj.jpg', 1352.81, 1893.26, 199, '', NULL, 1, 'new', NULL, 'normal', NULL, NULL, NULL, '2021-08-17 04:03:40', '2021-09-22 15:43:57'),
(456, 22, NULL, NULL, 2, 16, 'BREYLEE facial mask hyaluronic acid facial firming mask beauty', 'BREYLEE-facial-mask-hyaluronic-acid-facial-firming-mask-beauty', '65dVy8345fg9776', 'women,dresses', 'https://www.youtube.com/watch?v=6ZVEAXmupEo', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', '[\"Product Type:\",\"Material:\",\"Lining Material:\",\"Fabric Type:\",\"Technics:\",\"Decoration:\",\"Size:\"]', '[\"Velvet elegant sleeveless evening dress\",\"Polyester \\/ Spandex\",\"Polyester\",\"Fleece\",\"Plain dyed\",\"Sequins\",\"S\\/M\\/L\"]', 1, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!', '1632347061HTB1ymRhXfjsK1Rjy1Xaq6zispXad.jpg', 1352.81, 1893.26, 199, '', NULL, 1, 'feature', NULL, 'normal', NULL, NULL, NULL, '2021-08-17 04:03:40', '2021-09-22 16:39:29');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint(4) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `language`, `file`, `name`, `is_default`, `rtl`, `created_at`, `updated_at`) VALUES
(1, 'English', '1632074091n5DwjCPM.json', '1632074091n5DwjCPM', 1, 0, NULL, NULL),
(2, 'Arabic', '1632074095lDZUdxU2.json', '1632074095lDZUdxU2', 0, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ticket_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2021_08_21_073142_create_admins_table', 1),
(2, '2021_08_21_073507_create_users_table', 1),
(3, '2021_09_20_144419_create_items_table', 1),
(4, '2021_09_20_151605_create_settings_table', 1),
(5, '2021_09_21_073848_create_attributes_table', 1),
(6, '2021_09_21_073951_create_attribute_options_table', 1),
(7, '2021_09_21_074028_create_banners_table', 1),
(8, '2021_09_21_074231_create_bcategories_table', 1),
(9, '2021_09_21_074309_create_brands_table', 1),
(10, '2021_09_21_074412_create_campaign_items_table', 1),
(11, '2021_09_21_074536_create_categories_table', 1),
(12, '2021_09_21_074744_create_chield_categories_table', 1),
(13, '2021_09_21_074952_create_countries_table', 1),
(14, '2021_09_21_075024_create_currencies_table', 1),
(15, '2021_09_21_075231_create_email_templates_table', 1),
(16, '2021_09_21_075346_create_faqs_table', 1),
(17, '2021_09_21_075642_create_fcategories_table', 1),
(18, '2021_09_21_080223_create_galleries_table', 1),
(19, '2021_09_21_080320_create_home_cutomizes_table', 1),
(20, '2021_09_21_080454_create_languages_table', 1),
(21, '2021_09_21_080652_create_messages_table', 1),
(22, '2021_09_21_080805_create_notifications_table', 1),
(23, '2021_09_21_090957_create_orders_table', 1),
(25, '2021_09_21_092255_create_payment_settings_table', 1),
(26, '2021_09_21_092722_create_posts_table', 1),
(27, '2021_09_21_092801_create_promo_codes_table', 1),
(28, '2021_09_21_093709_create_reviews_table', 1),
(29, '2021_09_21_093833_create_roles_table', 1),
(30, '2021_09_21_094020_create_services_table', 1),
(31, '2021_09_21_094413_create_shipping_services_table', 1),
(32, '2021_09_21_094517_create_sliders_table', 1),
(33, '2021_09_21_094630_create_socials_table', 1),
(34, '2021_09_21_094739_create_subcategories_table', 1),
(35, '2021_09_21_094831_create_subscribers_table', 1),
(36, '2021_09_21_094903_create_taxes_table', 1),
(37, '2021_09_21_095021_create_tickets_table', 1),
(38, '2021_09_21_095605_create_track_orders_table', 1),
(39, '2021_09_21_095650_create_transactions_table', 1),
(40, '2021_09_21_095836_create_wishlists_table', 1),
(41, '2021_09_21_091316_create_pages_table', 2),
(42, '2021_09_22_095954_add_extra_visibility_to_settings_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `is_read` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `order_id`, `user_id`, `is_read`, `created_at`, `updated_at`) VALUES
(1, 28, NULL, 0, '2021-09-18 08:27:48', '2021-09-18 08:27:48'),
(2, 29, NULL, 0, '2021-09-18 08:43:21', '2021-09-18 08:43:21'),
(3, 30, NULL, 0, '2021-09-18 08:44:06', '2021-09-18 08:44:06'),
(4, 37, NULL, 0, '2021-09-18 10:13:09', '2021-09-18 10:13:09'),
(5, 38, NULL, 0, '2021-09-19 08:50:34', '2021-09-19 08:50:34');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `cart` text COLLATE utf8mb4_unicode_ci,
  `currency_sign` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount` text COLLATE utf8mb4_unicode_ci,
  `shipping` text COLLATE utf8mb4_unicode_ci,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `txnid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax` double NOT NULL DEFAULT '0',
  `charge_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_info` text COLLATE utf8mb4_unicode_ci,
  `billing_info` text COLLATE utf8mb4_unicode_ci,
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `cart`, `currency_sign`, `currency_value`, `discount`, `shipping`, `payment_method`, `txnid`, `tax`, `charge_id`, `transaction_number`, `order_status`, `shipping_info`, `billing_info`, `payment_status`, `created_at`, `updated_at`) VALUES
(28, 1, '{\"415\":{\"attribute\":{\"names\":[],\"option_name\":[],\"option_price\":[]},\"attribute_price\":0,\"name\":\"Test Digital Product1\",\"slug\":\"Test-Digital-Product1\",\"qty\":\"1\",\"price\":5,\"main_price\":5,\"photo\":\"16319474421629194620Hf086ae681630461684ced251f8fb5206P.jpg\",\"item_type\":\"digital\"},\"387\":{\"attribute\":{\"names\":[\"Color\",\"Size\"],\"option_name\":[\"Red\",\"S\"],\"option_price\":[12,3]},\"attribute_price\":15,\"name\":\"New French Elegant White Bubble Sleeve Party Dress Casual A-Line Dresses, Long Sleeve Dresses\",\"slug\":\"New-French-Elegant-White-Bubble-Sleeve-Party-Dress-Casual-ALine-Dresses-Long-Sleeve-Dresses\",\"qty\":\"1\",\"price\":149.830000000000012505552149377763271331787109375,\"main_price\":134.831460674160013013533898629248142242431640625,\"photo\":\"1629210624H03667d1e3ae44be08f32b72d840db095J.jpg\",\"item_type\":\"normal\"}}', '$', '1', '[]', '{\"id\":3,\"title\":\"UPS\",\"price\":7.2599999999999997868371792719699442386627197265625,\"status\":1}', 'Paypal', '6LT968846U846594W', 5, NULL, 'JXCbFGVLlU', 'Pending', '{\"ship_first_name\":\"Alex\",\"ship_last_name\":\"Smith\",\"ship_email\":\"user@gmail.com\",\"ship_phone\":\"12345678\",\"ship_company\":null,\"ship_address1\":\"472 Clark Street,  Bay Shore, New York\",\"ship_address2\":null,\"ship_zip\":\"3444\",\"ship_city\":\"New York\",\"ship_country\":\"United States\"}', '{\"_token\":\"5S7fTVL10yLEXkVquV34HHXQd9DcvJjPSjSBPFMu\",\"bill_first_name\":\"Alex\",\"bill_last_name\":\"Smith\",\"bill_email\":\"user@gmail.com\",\"bill_phone\":\"12345678\",\"bill_company\":null,\"bill_address1\":\"472 Clark Street,  Bay Shore, New York\",\"bill_address2\":null,\"bill_zip\":\"3444\",\"bill_city\":\"New York\",\"bill_country\":\"United States\",\"same_ship_address\":\"on\"}', 'Paid', '2021-09-18 08:27:48', '2021-09-18 08:27:48'),
(29, 1, '{\"387\":{\"attribute\":{\"names\":[\"Color\",\"Size\"],\"option_name\":[\"Red\",\"S\"],\"option_price\":[12,3]},\"attribute_price\":15,\"name\":\"New French Elegant White Bubble Sleeve Party Dress Casual A-Line Dresses, Long Sleeve Dresses\",\"slug\":\"New-French-Elegant-White-Bubble-Sleeve-Party-Dress-Casual-ALine-Dresses-Long-Sleeve-Dresses\",\"qty\":\"1\",\"price\":149.830000000000012505552149377763271331787109375,\"main_price\":134.831460674160013013533898629248142242431640625,\"photo\":\"1629210624H03667d1e3ae44be08f32b72d840db095J.jpg\",\"item_type\":\"normal\"}}', '$', '1', '[]', '{\"id\":3,\"title\":\"UPS\",\"price\":7.2599999999999997868371792719699442386627197265625,\"status\":1}', 'Cash On Delivery', NULL, 1.3483146067416, NULL, 'lryf4ZtTn0', 'Pending', '{\"ship_first_name\":\"Showrav\",\"ship_last_name\":\"Hasan\",\"ship_email\":\"showrav1@gmail.com\",\"ship_phone\":\"09000000\",\"ship_company\":null,\"ship_address1\":\"Bangladesh,Dhaka\",\"ship_address2\":null,\"ship_zip\":\"1221\",\"ship_city\":\"Dhaka\",\"ship_country\":\"Bangladesh\"}', '{\"_token\":\"5S7fTVL10yLEXkVquV34HHXQd9DcvJjPSjSBPFMu\",\"bill_first_name\":\"Showrav\",\"bill_last_name\":\"Hasan\",\"bill_email\":\"showrav1@gmail.com\",\"bill_phone\":\"09000000\",\"bill_company\":null,\"bill_address1\":\"Bangladesh,Dhaka\",\"bill_address2\":null,\"bill_zip\":\"1221\",\"bill_city\":\"Dhaka\",\"bill_country\":\"Bangladesh\",\"same_ship_address\":\"on\"}', 'Unpaid', '2021-09-18 08:43:21', '2021-09-18 08:43:21'),
(37, 1, '{\"403\":{\"attribute\":{\"names\":[],\"option_name\":[],\"option_price\":[]},\"attribute_price\":0,\"name\":\"New Arrive Spring Fall Women Clothing Plus Size Dresses Floral Layered Ruffle Off Shoulder Dress\",\"slug\":\"New-Arrive-Spring-Fall-Women-Clothing-Plus-Size-Dresses-Floral-Layered-Ruffle-Off-Shoulder-Dress\",\"qty\":\"1\",\"price\":134.830000000000012505552149377763271331787109375,\"main_price\":134.831460674160013013533898629248142242431640625,\"photo\":\"1629213857Hd8364db18d9942a38e89779ca3b4fa7an.jpg\",\"item_type\":\"normal\"}}', '৳', '84', '[]', '{\"id\":3,\"title\":\"UPS\",\"price\":7.2599999999999997868371792719699442386627197265625,\"status\":1}', 'SSLCommerz', 'SSLCZ_TXN_61461012439fa', 1.3483146067416, NULL, 'Vh21K5yB8i', 'Canceled', '{\"ship_first_name\":\"Alex\",\"ship_last_name\":\"Smith\",\"ship_email\":\"user@gmail.com\",\"ship_phone\":\"12345678\",\"ship_company\":null,\"ship_address1\":\"472 Clark Street,  Bay Shore, New York\",\"ship_address2\":null,\"ship_zip\":\"3444\",\"ship_city\":\"New York\",\"ship_country\":\"United States\"}', '{\"_token\":\"5S7fTVL10yLEXkVquV34HHXQd9DcvJjPSjSBPFMu\",\"bill_first_name\":\"Alex\",\"bill_last_name\":\"Smith\",\"bill_email\":\"user@gmail.com\",\"bill_phone\":\"12345678\",\"bill_company\":null,\"bill_address1\":\"472 Clark Street,  Bay Shore, New York\",\"bill_address2\":null,\"bill_zip\":\"3444\",\"bill_city\":\"New York\",\"bill_country\":\"United States\",\"same_ship_address\":\"on\"}', 'Paid', '2021-09-18 10:13:06', '2021-09-19 08:27:06'),
(38, 1, '{\"387\":{\"attribute\":{\"names\":[\"Color\",\"Size\"],\"option_name\":[\"Red\",\"S\"],\"option_price\":[12,3]},\"attribute_price\":15,\"name\":\"New French Elegant White Bubble Sleeve Party Dress Casual A-Line Dresses, Long Sleeve Dresses\",\"slug\":\"New-French-Elegant-White-Bubble-Sleeve-Party-Dress-Casual-ALine-Dresses-Long-Sleeve-Dresses\",\"qty\":\"1\",\"price\":149.830000000000012505552149377763271331787109375,\"main_price\":134.831460674160013013533898629248142242431640625,\"photo\":\"1629210624H03667d1e3ae44be08f32b72d840db095J.jpg\",\"item_type\":\"normal\"}}', '$', '1', '{\"discount\":8.2415000000000002700062395888380706310272216796875,\"code\":{\"id\":2,\"title\":\"Halloween Carnival\",\"code_name\":\"superman\",\"no_of_times\":97,\"discount\":5,\"status\":1}}', '{\"id\":3,\"title\":\"UPS\",\"price\":7.2599999999999997868371792719699442386627197265625,\"status\":1}', 'Cash On Delivery', NULL, 1.3483146067416, NULL, 'PMDrgJCbwC', 'Pending', '{\"ship_first_name\":\"Alex\",\"ship_last_name\":\"Smith\",\"ship_email\":\"user@gmail.com\",\"ship_phone\":\"01728332009\",\"ship_company\":null,\"ship_address1\":\"472 Clark Street,  Bay Shore, New York\",\"ship_address2\":null,\"ship_zip\":\"3444\",\"ship_city\":\"New York\",\"ship_country\":\"United States\"}', '{\"_token\":\"2hmMexkkvgjnB5xwotBb8STi8jGTQAAwUxZarP3f\",\"bill_first_name\":\"Alex\",\"bill_last_name\":\"Smith\",\"bill_email\":\"user@gmail.com\",\"bill_phone\":\"01728332009\",\"bill_company\":null,\"bill_address1\":\"472 Clark Street,  Bay Shore, New York\",\"bill_address2\":null,\"bill_zip\":\"3444\",\"bill_city\":\"New York\",\"bill_country\":\"United States\",\"same_ship_address\":\"on\"}', 'Unpaid', '2021-09-19 08:50:34', '2021-09-19 08:50:34'),
(39, 1, '{\"402\":{\"attribute\":{\"names\":[],\"option_name\":[],\"option_price\":[]},\"attribute_price\":0,\"name\":\"Hot Sale Women Clothing 2021 Designer Clothes Women Clothing Sexy Dress\",\"slug\":\"Hot-Sale-Women-Clothing-2021-Designer-Clothes-Women-Clothing-Sexy-Dress\",\"qty\":2,\"price\":53.93,\"main_price\":53.932584269663,\"photo\":\"1629213885H4886d13f040a41739481b3c9bd241aaaa.jpg\",\"item_type\":\"normal\"},\"405\":{\"attribute\":{\"names\":[],\"option_name\":[],\"option_price\":[]},\"attribute_price\":0,\"name\":\"UMIDIGI A9 Pro Android Mobile Phone 4g 48MP Quad Camera 6.3\\\" FHD+ Full Screen 6GB RAM\",\"slug\":\"UMIDIGI-A9-Pro-Android-Mobile-Phone-4g-48MP-Quad-Camera-63-FHD-Full-Screen-6GB-RAM\",\"qty\":\"1\",\"price\":1573.03,\"main_price\":1573.0337078652,\"photo\":\"1629220688Hcb62dec2d6a241fc90ce2bb04059684em.jpg\",\"item_type\":\"normal\"},\"404\":{\"attribute\":{\"names\":[],\"option_name\":[],\"option_price\":[]},\"attribute_price\":0,\"name\":\"Clothing Women 2021 New Fashion Printed Knitwear Round Neck Casual Couple Clothing Christmas\",\"slug\":\"Clothing-Women-2021-New-Fashion-Printed-Knitwear-Round-Neck-Casual-Couple-Clothing-Christmas\",\"qty\":\"1\",\"price\":56.18,\"main_price\":56.18,\"photo\":\"1629213809H8b2502797ffe4c93984c99bdd5061ab3W.jpg\",\"item_type\":\"normal\"}}', '$', '1', '[]', '{\"id\":3,\"title\":\"UPS\",\"price\":7.26,\"status\":1}', 'SSLCommerz', 'SSLCZ_TXN_61489aa37a2eb', 16.831462921349, NULL, 'X2QtKyxif3', 'Pending', '{\"ship_first_name\":\"Alex\",\"ship_last_name\":\"Smith\",\"ship_email\":\"user@gmail.com\",\"ship_phone\":\"01728332009\",\"ship_company\":null,\"ship_address1\":\"472 Clark Street,  Bay Shore, New York\",\"ship_address2\":null,\"ship_zip\":\"3444\",\"ship_city\":\"New York\",\"ship_country\":\"United States\"}', '{\"_token\":\"gkNfFUk8uzrhaYDskE8Jv2UeWIz8WcWqsGYk5Lt0\",\"bill_first_name\":\"Alex\",\"bill_last_name\":\"Smith\",\"bill_email\":\"user@gmail.com\",\"bill_phone\":\"01728332009\",\"bill_company\":null,\"bill_address1\":\"472 Clark Street,  Bay Shore, New York\",\"bill_address2\":null,\"bill_zip\":\"3444\",\"bill_city\":\"New York\",\"bill_country\":\"United States\",\"same_ship_address\":\"on\"}', 'Unpaid', '2021-09-20 08:28:51', '2021-09-20 08:28:51');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_descriptions` text COLLATE utf8mb4_unicode_ci,
  `pos` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `slug`, `details`, `meta_keywords`, `meta_descriptions`, `pos`, `created_at`, `updated_at`) VALUES
(7, 'About Us', 'about-us', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!', NULL, NULL, 2, NULL, NULL),
(10, 'Privacy Policy', 'privacy-policy', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!', NULL, NULL, 2, NULL, NULL),
(11, 'Terms & Service', 'terms-and-service', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!', NULL, NULL, 2, NULL, NULL),
(12, 'Return Policy', 'return-policy', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!', NULL, NULL, 2, NULL, NULL),
(14, 'How It Works', 'How-It-Works', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!', '[{\"value\":\"a\"},{\"value\":\"b\"},{\"value\":\"c\"}]', NULL, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `payment_settings`
--

CREATE TABLE `payment_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `information` text COLLATE utf8mb4_unicode_ci,
  `unique_keyword` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_settings`
--

INSERT INTO `payment_settings` (`id`, `name`, `information`, `unique_keyword`, `photo`, `text`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Cash On Delivery', NULL, 'cod', '1631032407index.png', 'Cash on Delivery basically means you will pay the amount of product while you get the item delivered to you.', 1, NULL, NULL),
(14, 'Stripe', '{\"key\":\"pk_test_51HZI80H3jdWvr8gEn3oRtFlnJTqRpecXGQueOyngEArTyF6gjjfOVqbFeFMpAMRoQmKwPPrh81OiWzhDlqtS5nGs00gKycg4Oa\",\"secret\":\"sk_test_51HZI80H3jdWvr8gErqdNWpqUkAgHMQdw7uug1mfUY38vIUfodsAWj4hoBK43rBvHebYETVX4ZCne03o3Ifco1qkR00dhrdpPsh\"}', 'stripe', '1601930611stripe-logo-blue.png', 'Stripe is the faster & safer way to send money. Make an online payment via Stripe.', 1, NULL, NULL),
(15, 'Paypal', '{\"client_id\":\"AUtv8KISHG9l9rmlXB0cSLjt6A91IsGfPACeRreuRpEV3GR-ZRnxIxXnUVKNYIfqVXrxs2uPlGDot0Cc\",\"client_secret\":\"EEdtOBI_NjI2bJzLSIzumsN_xSI7htn8qyAcRz0mvO8Emv-7CdfQeqxNZlDhiDAd0ZhV49e4sOhjtwho\",\"check_sandbox\":1}', 'paypal', '16218678201601930675paypal-784404_960_720.png', 'PayPal is the faster & safer way to send money. Make an online payment via PayPal.', 1, NULL, NULL),
(17, 'Mollie', '{\"key\":\"adfadsftkogux4998504763dfa8244sdddddsadsfadfadffaaaaa\"}', 'mollie', '1621785282Mollie.jpeg', 'Mollie is a Payment Provider for Belgium and the Netherlands, offering payment methods such as credit card, iDEAL, Bancontact/Mister cash, PayPal, SCT, SDD and others.', 1, NULL, NULL),
(18, 'Paytm', '{\"mercent\":\"tkogux49985047638244\",\"client_secret\":\"LhNGUUKE9xCQ9xY8\",\"website\":\"WEBSTAGING\",\"industry\":\"Retail\",\"is_paytm\":\"1\",\"paytm_mode\":\"sandbox\"}', 'paytm', '1631978815images.png', 'Paytm is the faster & safer way to send money. Make an online payment via Paytm.', 1, NULL, NULL),
(19, 'SSLCommerz', '{\"store_id\":\"geniu5e1b00621f81e\",\"store_password\":\"geniu5e1b00621f81e@ssl\",\"sandbox_check\":\"1\"}', 'sslcommerz', '1631978716ssl-thumb.jpeg', 'SSL commerz is the faster & safer way to send money. Make an online payment via SSL commerz.', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `tags` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_descriptions` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `slug`, `details`, `photo`, `category_id`, `tags`, `meta_keywords`, `meta_descriptions`, `created_at`, `updated_at`) VALUES
(59, 'Fashion and Beauty Series 1', 'fashion-and-beauty-series-1', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!', '[\"1632349673media_5-768x512.jpg\"]', 1, 'mobile,phone,camera,lapop', '[{\"value\":\"mobile\"},{\"value\":\"phone\"},{\"value\":\"camera\"},{\"value\":\"lapop\"}]', 'It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', '2021-05-31 07:48:23', '2021-09-22 16:27:53'),
(61, 'Fashion and Beauty Series 2', 'fashion-and-beauty-series-2', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!', '[\"1632349684media_7-768x512.jpg\"]', 1, 'mobile,phone,camera,lapop', '[{\"value\":\"mobile\"},{\"value\":\"phone\"},{\"value\":\"camera\"},{\"value\":\"laptop\"}]', 'It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', '2021-05-31 07:48:23', '2021-09-22 16:28:04'),
(62, 'Fashion and Beauty Series 3', 'fashion-and-beauty-series-3', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!', '[\"1632349695media_10-768x512.jpg\"]', 1, 'mobile,phone,camera,lapop', '[{\"value\":\"mobile\"},{\"value\":\"phone\"},{\"value\":\"camera\"},{\"value\":\"laptop\"}]', 'It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', '2021-05-31 07:48:23', '2021-09-22 16:28:15'),
(63, 'Fashion and Beauty Series 4', 'fashion-and-beauty-series-4', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!', '[\"1632349704media_21-768x512.jpg\"]', 1, 'mobile,phone,camera,lapop', '[{\"value\":\"mobile\"},{\"value\":\"phone\"},{\"value\":\"camera\"},{\"value\":\"laptop\"}]', 'It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', '2021-05-31 07:48:23', '2021-09-22 16:28:24'),
(64, 'Fashion and Beauty Series 5', 'fashion-and-beauty-series-5', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!', '[\"1632349716media_23-768x512.jpg\"]', 1, 'mobile,phone,camera,lapop', '[{\"value\":\"mobile\"},{\"value\":\"phone\"},{\"value\":\"camera\"},{\"value\":\"laptop\"}]', 'It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', '2021-05-31 07:48:23', '2021-09-22 16:28:36'),
(65, 'Fashion and Beauty Series 6', 'fashion-and-beauty-series-6', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!', '[\"1632349728media_24-768x512.jpg\"]', 1, 'mobile,phone,camera,lapop', '[{\"value\":\"mobile\"},{\"value\":\"phone\"},{\"value\":\"camera\"},{\"value\":\"laptop\"}]', 'It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', '2021-05-31 07:48:23', '2021-09-22 16:28:48'),
(66, 'Fashion and Beauty Series 7', 'fashion-and-beauty-series-7', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!', '[\"1632349736media_26-768x512.jpg\"]', 1, 'mobile,phone,camera,lapop', '[{\"value\":\"mobile\"},{\"value\":\"phone\"},{\"value\":\"camera\"},{\"value\":\"laptop\"}]', 'It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', '2021-05-31 07:48:23', '2021-09-22 16:28:56'),
(67, 'Fashion and Beauty Series 8', 'fashion-and-beauty-series-8', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!', '[\"1632349747media_28-768x512.jpg\"]', 1, 'mobile,phone,camera,lapop', '[{\"value\":\"mobile\"},{\"value\":\"phone\"},{\"value\":\"camera\"},{\"value\":\"laptop\"}]', 'It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', '2021-05-31 07:48:23', '2021-09-22 16:29:07');

-- --------------------------------------------------------

--
-- Table structure for table `promo_codes`
--

CREATE TABLE `promo_codes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_of_times` int(11) NOT NULL DEFAULT '0',
  `discount` double NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `promo_codes`
--

INSERT INTO `promo_codes` (`id`, `title`, `code_name`, `no_of_times`, `discount`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Flash Discount', 'ironman', 95, 2, 1, NULL, NULL),
(2, 'Halloween Carnival', 'superman', 96, 5, 1, NULL, NULL),
(3, 'Fest Carnival', 'loki', 95, 10, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `item_id` int(11) NOT NULL DEFAULT '0',
  `review` text COLLATE utf8mb4_unicode_ci,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rating` double NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `user_id`, `item_id`, `review`, `subject`, `rating`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 411, 'dsfaThere are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form', 'Good Quality & Best Product', 5, 1, '2021-09-13 09:55:16', '2021-09-13 09:55:16'),
(2, 1, 394, 'There are many variations of passages of Lorem Ipsum available, \r\nbut the majority have suffered alteration in some form', 'Good Quality & Best Product', 5, 1, '2021-09-13 12:09:52', '2021-09-13 12:09:52'),
(3, 1, 390, 'There are many variations of passages of Lorem Ipsum available, \nbut the majority have suffered alteration in some form', 'Good Quality & Best Product', 5, 1, '2021-09-13 12:10:16', '2021-09-13 12:10:16'),
(4, 1, 402, 'There are many variations of passages of Lorem Ipsum available, \nbut the majority have suffered alteration in some form', 'Good Quality & Best Product', 5, 1, '2021-09-13 12:11:10', '2021-09-13 12:11:10'),
(5, 1, 407, 'There are many variations of passages of Lorem Ipsum available, \nbut the majority have suffered alteration in some form', 'Good Quality & Best Product', 5, 1, '2021-09-13 12:12:07', '2021-09-13 12:12:07'),
(6, 1, 406, 'There are many variations of passages of Lorem Ipsum available, \nbut the majority have suffered alteration in some form', 'Good Quality & Best Product', 5, 1, '2021-09-13 12:12:23', '2021-09-13 12:12:23'),
(7, 1, 401, 'There are many variations of passages of Lorem Ipsum available, \nbut the majority have suffered alteration in some form', 'Good Quality & Best Product', 5, 0, '2021-09-13 12:12:46', '2021-09-21 08:26:23');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `section` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `title`, `details`, `photo`, `created_at`, `updated_at`) VALUES
(31, 'Secure Online Payment', 'We posess SSL / Secure Certificate', '162196474904.png', NULL, NULL),
(32, '24/7 Customer Support', 'Friendly 24/7 customer support', '162196471103.png', NULL, NULL),
(33, 'Money Back Guarantee', 'We return money within 30 days', '162196467602.png', NULL, NULL),
(34, 'Free Worldwide Shipping', 'Free shipping for all orders over $100 Contrary to popular belie', '162196463701.png', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favicon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `loader` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_loader` tinyint(4) DEFAULT '1',
  `feature_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `primary_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_check` tinyint(4) DEFAULT '0',
  `email_host` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_port` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_encryption` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_user` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_pass` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `version` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `overlay` text COLLATE utf8mb4_unicode_ci,
  `google_analytics_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `is_shop` tinyint(4) DEFAULT '1',
  `is_blog` tinyint(4) DEFAULT '1',
  `is_faq` tinyint(4) DEFAULT '1',
  `is_contact` tinyint(4) DEFAULT '1',
  `facebook_check` tinyint(4) DEFAULT '1',
  `facebook_client_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_client_secret` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_redirect` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_check` tinyint(4) DEFAULT '1',
  `google_client_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_client_secret` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_redirect` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `min_price` double DEFAULT '0',
  `max_price` double DEFAULT '100000',
  `footer_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_address` text COLLATE utf8mb4_unicode_ci,
  `footer_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_gateway_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `social_link` text COLLATE utf8mb4_unicode_ci,
  `friday_start` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `friday_end` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `satureday_start` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `satureday_end` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `copy_right` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_slider` tinyint(4) DEFAULT '1',
  `is_category` tinyint(4) DEFAULT '1',
  `is_product` tinyint(4) DEFAULT '1',
  `is_top_banner` tinyint(4) DEFAULT '1',
  `is_recent` tinyint(4) DEFAULT '1',
  `is_top` tinyint(4) DEFAULT '1',
  `is_best` tinyint(4) DEFAULT '1',
  `is_flash` tinyint(4) DEFAULT '1',
  `is_brand` tinyint(4) DEFAULT '1',
  `is_blogs` tinyint(4) DEFAULT '1',
  `is_campaign` tinyint(4) DEFAULT '1',
  `is_brands` tinyint(4) DEFAULT '1',
  `is_bottom_banner` tinyint(4) DEFAULT '1',
  `is_service` tinyint(4) DEFAULT '1',
  `campaign_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `campaign_end_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `campaign_status` tinyint(4) DEFAULT '1',
  `twilio_sid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twilio_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twilio_form_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twilio_country_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_announcement` tinyint(4) DEFAULT '1',
  `announcement` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `announcement_delay` decimal(11,2) NOT NULL DEFAULT '0.00',
  `is_maintainance` tinyint(4) DEFAULT '1',
  `maintainance_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `maintainance_text` text COLLATE utf8mb4_unicode_ci,
  `is_twilio` tinyint(4) DEFAULT '0',
  `twilio_section` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_three_c_b_first` tinyint(4) NOT NULL DEFAULT '1',
  `is_popular_category` tinyint(4) NOT NULL DEFAULT '1',
  `is_three_c_b_second` tinyint(4) NOT NULL DEFAULT '1',
  `is_highlighted` tinyint(4) NOT NULL DEFAULT '1',
  `is_two_column_category` tinyint(4) NOT NULL DEFAULT '1',
  `is_popular_brand` tinyint(4) NOT NULL DEFAULT '1',
  `is_featured_category` tinyint(4) NOT NULL DEFAULT '1',
  `is_two_c_b` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `title`, `logo`, `favicon`, `loader`, `is_loader`, `feature_image`, `primary_color`, `smtp_check`, `email_host`, `email_port`, `email_encryption`, `email_user`, `email_pass`, `email_from`, `email_from_name`, `contact_email`, `version`, `overlay`, `google_analytics_id`, `meta_keywords`, `meta_description`, `is_shop`, `is_blog`, `is_faq`, `is_contact`, `facebook_check`, `facebook_client_id`, `facebook_client_secret`, `facebook_redirect`, `google_check`, `google_client_id`, `google_client_secret`, `google_redirect`, `min_price`, `max_price`, `footer_phone`, `footer_address`, `footer_email`, `footer_gateway_img`, `social_link`, `friday_start`, `friday_end`, `satureday_start`, `satureday_end`, `copy_right`, `is_slider`, `is_category`, `is_product`, `is_top_banner`, `is_recent`, `is_top`, `is_best`, `is_flash`, `is_brand`, `is_blogs`, `is_campaign`, `is_brands`, `is_bottom_banner`, `is_service`, `campaign_title`, `campaign_end_date`, `campaign_status`, `twilio_sid`, `twilio_token`, `twilio_form_number`, `twilio_country_code`, `is_announcement`, `announcement`, `announcement_delay`, `is_maintainance`, `maintainance_image`, `maintainance_text`, `is_twilio`, `twilio_section`, `created_at`, `updated_at`, `is_three_c_b_first`, `is_popular_category`, `is_three_c_b_second`, `is_highlighted`, `is_two_column_category`, `is_popular_brand`, `is_featured_category`, `is_two_c_b`) VALUES
(1, 'OmniMart', '1630548137omlogo2.png', '1629651232pre.png', '1629650616sample.gif', 1, '1600622296topic.jpg', '#377DFF', 0, 'smtp.mailtrap.io', '465', 'tls', '5d7cdb7848f709', 'db12e73867438f', 'magicshop@email.com', 'Magicshop', 'contact@email.com', '4.0', NULL, 'UA-106757798-1', 'Lorem,ipsum,dolor,amet', 'Omnimart - Multipurpose eCommerce  Shopping Platform Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over .', 1, 1, 1, 1, 1, '664340300885281', 'b129e9253f3110e25c6ce74e058c375f', 'https://localhost/omnimart20/auth/facebook/callback', 1, '455917380246-731jcij2dtcccmspa30vhbn85lg4je1p.apps.googleusercontent.com', 'rR2fLkoql_d6_Jk8XF9Cycq8', 'http://localhost/omnimart20/auth/google/callback', 0, 100000, '453876234', '514 S. Magnolia St. Orlando, FL 32806, USA', 'demoemail123@gmail.com', '16305963101621960148credit-cards-footer.png', '{\"icons\":[\"fab fa-facebook-f\",\"fab fa-twitter\",\"fab fa-youtube\",\"fab fa-linkedin-in\"],\"links\":[\"https:\\/\\/www.facebook.com\",\"https:\\/\\/www.twitter.com\",\"https:\\/\\/www.youtube.com\",\"https:\\/\\/www.linkedin.com\"]}', '9:27 PM', '1:10 AM', '1:10 AM', '1:10 AM', 'OmniMart © All rights reserved.', 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 1, 'Deals Of The Week', '09/30/2021', 1, 'AC73e54518487ad4e26da8b465a7614f1f', '300d787df0c398ae46b84b74ea86f59c', '+15612793758', '+880', 1, '1632348981vintage-lifestyle-minimalist-femininity-e-shopping-concept.jpg', '1.00', 0, '16323327831619241714761747856.jpg', 'We are upgrading our site.  We will come back soon.  \r\nPlease stay with us. \r\nThank you.', 0, '{\"\'purchase\'\":\"Your Order Purchase Successfully....\",\"\'order_status\'\":\"Your Order status update....\"}', NULL, NULL, 1, 1, 1, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `shipping_services`
--

CREATE TABLE `shipping_services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shipping_services`
--

INSERT INTO `shipping_services` (`id`, `title`, `price`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Delivery', 20, 0, NULL, NULL),
(3, 'UPS', 7.26, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `photo`, `title`, `link`, `logo`, `details`, `created_at`, `updated_at`) VALUES
(5, '1630493865s3.jpg', '60% OFF', '#', '1632337245brand2.png', '2021 Summer Women Clothing Ropa Sexy Lady Cut Out Halter Mini Dresses', NULL, NULL),
(6, '16296184734.jpg', '50% OFF', '#', '1632337240brand2.png', 'Casual Minimalist Tie Waist women clothing Denim Halter Midi Pencil Sling Dresses', NULL, NULL),
(7, '1630493728s2.jpg', '40% OFF', '#', '1632337233brand2.png', 'New French Elegant White Bubble Sleeve Party Dress Casual A-Line Dresses', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `socials`
--

CREATE TABLE `socials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `link` text COLLATE utf8mb4_unicode_ci,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `socials`
--

INSERT INTO `socials` (`id`, `link`, `icon`, `created_at`, `updated_at`) VALUES
(1, 'https://www.facebook.com/', 'fab fa-facebook-square', NULL, NULL),
(2, 'https://twitter.com/', 'fab fa-twitter-square', NULL, NULL),
(3, 'https://www.instagram.com/', 'fab fa-instagram', NULL, NULL),
(10, 'https://www.pinterest.com/', 'fab fa-pinterest-square', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `status` tinyint(4) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `name`, `slug`, `category_id`, `status`, `created_at`, `updated_at`) VALUES
(6, 'Women\'s Underwear', 'Womens-Underwear', 18, 1, NULL, NULL),
(7, 'Weddings & Events', 'Weddings--Events', 18, 1, NULL, NULL),
(8, 'Bottoms', 'Bottoms', 18, 1, NULL, NULL),
(9, 'Outerwear & Jackets', 'Outerwear--Jackets', 19, 1, NULL, NULL),
(10, 'Bottoms', 'Bottoms', 19, 1, NULL, NULL),
(12, 'Mobile Phones', 'Mobile-Phones', 21, 1, NULL, NULL),
(13, 'Mobile Phone Accessories', 'Mobile-Phone-Accessories', 21, 1, NULL, NULL),
(15, 'Women\'s Fashion', 'Womens-Fashion', 18, 1, NULL, NULL),
(16, 'Accessories', 'Accessories', 18, 0, NULL, NULL),
(17, 'Underwear', 'Underwear', 19, 0, NULL, NULL),
(18, 'Accessories', 'Accessories', 19, 0, NULL, NULL),
(19, 'Laptop', 'Laptop', 21, 0, NULL, NULL),
(20, 'Computer', 'Computer', 21, 0, NULL, NULL),
(21, 'Featured Accessories', 'Featured-Accessories', 21, 0, NULL, NULL),
(22, 'DSLR', 'DSLR', 21, 0, NULL, NULL),
(23, 'Hair Weaves', 'Hair-Weaves', 22, 0, NULL, NULL),
(24, 'Makeup', 'Makeup', 22, 0, NULL, NULL),
(25, 'Nail Art & Tools', 'Nail-Art--Tools', 22, 0, NULL, NULL),
(26, 'Skin Care', 'Skin-Care', 22, 0, NULL, NULL),
(27, 'Personal Care', 'Personal-Care', 22, 0, NULL, NULL),
(28, 'Bike', 'Bike', 23, 0, NULL, NULL),
(29, 'Car', 'Car', 23, 0, NULL, NULL),
(30, 'WordPress Themes', 'WordPress-Themes', 27, 0, NULL, NULL),
(31, 'Laravel CMS', 'Laravel-CMS', 27, 0, NULL, NULL),
(32, 'HTML Templates', 'HTML-Templates', 27, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `taxes`
--

CREATE TABLE `taxes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` double DEFAULT NULL,
  `status` tinyint(4) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `taxes`
--

INSERT INTO `taxes` (`id`, `name`, `value`, `status`, `created_at`, `updated_at`) VALUES
(1, 'High Tax', 4, 1, NULL, NULL),
(2, 'Low Tax', 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `track_orders`
--

CREATE TABLE `track_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `track_orders`
--

INSERT INTO `track_orders` (`id`, `order_id`, `title`, `created_at`, `updated_at`) VALUES
(176, 318, 'Pending', '2021-09-12 06:07:09', '2021-09-12 06:07:09'),
(177, 1, 'Pending', '2021-09-13 07:11:25', '2021-09-13 07:11:25'),
(178, 22, 'Pending', '2021-09-13 09:13:48', '2021-09-13 09:13:48'),
(179, 22, 'Pending', '2021-09-13 09:14:34', '2021-09-13 09:14:34'),
(180, 23, 'Pending', '2021-09-13 09:15:09', '2021-09-13 09:15:09'),
(182, 25, 'Pending', '2021-09-13 09:22:56', '2021-09-13 09:22:56'),
(185, 28, 'Pending', '2021-09-18 08:27:48', '2021-09-18 08:27:48'),
(186, 29, 'Pending', '2021-09-18 08:43:21', '2021-09-18 08:43:21'),
(187, 30, 'Pending', '2021-09-18 08:44:06', '2021-09-18 08:44:06'),
(188, 37, 'Pending', '2021-09-18 10:13:09', '2021-09-18 10:13:09'),
(189, 37, 'In Progress', '2021-09-19 08:26:03', '2021-09-19 08:26:03'),
(190, 37, 'Delivered', '2021-09-19 08:27:06', '2021-09-19 08:27:06'),
(191, 37, 'Canceled', '2021-09-19 08:27:06', '2021-09-19 08:27:06'),
(192, 38, 'Pending', '2021-09-19 08:50:34', '2021-09-19 08:50:34');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `txn_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` double NOT NULL DEFAULT '0',
  `user_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_sign` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_value` double NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `order_id`, `txn_id`, `amount`, `user_email`, `currency_sign`, `currency_value`, `created_at`, `updated_at`) VALUES
(8, '28', 'JXCbFGVLlU', 164, 'user@gmail.com', '$', 1, '2021-09-18 08:27:48', '2021-09-18 08:27:48'),
(9, '29', 'lryf4ZtTn0', 158, 'user@gmail.com', '$', 1, '2021-09-18 08:43:21', '2021-09-18 08:43:21'),
(10, '30', '4RLrzVrOgI', 164, 'user@gmail.com', '$', 1, '2021-09-18 08:44:06', '2021-09-18 08:44:06'),
(11, '37', 'Vh21K5yB8i', 143, 'user@gmail.com', '৳', 84, '2021-09-18 10:13:09', '2021-09-18 10:13:09'),
(12, '38', 'PMDrgJCbwC', 150, 'user@gmail.com', '$', 1, '2021-09-19 08:50:34', '2021-09-19 08:50:34');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ship_address1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ship_address2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ship_zip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ship_city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ship_country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ship_company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bill_address1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bill_address2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bill_zip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bill_city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bill_country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bill_company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `phone`, `email`, `photo`, `email_token`, `password`, `ship_address1`, `ship_address2`, `ship_zip`, `ship_city`, `ship_country`, `ship_company`, `bill_address1`, `bill_address2`, `bill_zip`, `bill_city`, `bill_country`, `bill_company`, `created_at`, `updated_at`) VALUES
(1, 'Alex', 'Smith', '01728332009', 'user@gmail.com', '16315385264444.jpg', 'JMpl3Y', '$2y$10$Ba2ME37LN5v38f58fIpYDOda9rdyTfl4LKA.Iyfp.ii.vrVe8saXG', '472 Clark Street,  Bay Shore, New York', NULL, '3444', 'New York', 'United States', NULL, '472 Clark Street,  Bay Shore, New York', NULL, '3444', 'New York', 'United States', NULL, '2021-09-13 07:08:04', '2021-09-19 08:26:58');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `item_id`, `created_at`, `updated_at`) VALUES
(39, 22, 411, NULL, NULL),
(40, 22, 405, NULL, NULL),
(41, 22, 395, NULL, NULL),
(42, 22, 390, NULL, NULL),
(43, 22, 394, NULL, NULL),
(44, 22, 412, NULL, NULL),
(45, 1, 455, NULL, NULL),
(46, 1, 456, NULL, NULL),
(47, 1, 453, NULL, NULL),
(48, 1, 442, NULL, NULL),
(49, 1, 444, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attribute_options`
--
ALTER TABLE `attribute_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bcategories`
--
ALTER TABLE `bcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `campaign_items`
--
ALTER TABLE `campaign_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chield_categories`
--
ALTER TABLE `chield_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fcategories`
--
ALTER TABLE `fcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_cutomizes`
--
ALTER TABLE `home_cutomizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_settings`
--
ALTER TABLE `payment_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `promo_codes`
--
ALTER TABLE `promo_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping_services`
--
ALTER TABLE `shipping_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `socials`
--
ALTER TABLE `socials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `taxes`
--
ALTER TABLE `taxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `track_orders`
--
ALTER TABLE `track_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=283;

--
-- AUTO_INCREMENT for table `attribute_options`
--
ALTER TABLE `attribute_options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1060;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `bcategories`
--
ALTER TABLE `bcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `campaign_items`
--
ALTER TABLE `campaign_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `chield_categories`
--
ALTER TABLE `chield_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `fcategories`
--
ALTER TABLE `fcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=353;

--
-- AUTO_INCREMENT for table `home_cutomizes`
--
ALTER TABLE `home_cutomizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=457;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `payment_settings`
--
ALTER TABLE `payment_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `promo_codes`
--
ALTER TABLE `promo_codes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shipping_services`
--
ALTER TABLE `shipping_services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `socials`
--
ALTER TABLE `socials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `taxes`
--
ALTER TABLE `taxes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `track_orders`
--
ALTER TABLE `track_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=195;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
