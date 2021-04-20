-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 26, 2021 at 05:54 PM
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
-- Database: `laravelrole`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `username`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'superadmin', 'superadmin@gmail.com', 'superadmin', NULL, '$2y$10$jdSkZ.jtsUMdkcwT1ZXuUOwrYKQnv0C2vUKZQeVbJrlyZR8oP7W7m', NULL, '2020-11-16 13:22:07', '2020-11-16 13:22:07'),
(10, 'ramisa', 'r@gmail.com', 'ramisa', NULL, '$2y$10$8kBNjJp3oHzxMNObkyLgMe9MmAIOWgtPGO/HHtLSj4l3kritNvuHa', NULL, '2021-01-14 21:38:08', '2021-01-14 21:38:08'),
(11, 'samin', 'samin@gmail.com', 'samin', NULL, '$2y$10$HdLB8OVPqielEoOnDJ8r8ubZI5tszuVD3y9V/kxbGfwY5dfXpG2z6', NULL, '2021-01-14 21:39:45', '2021-01-14 21:39:45'),
(13, 'ABC', 'abc@gmail.com', 'abc', NULL, '$2y$10$8MC95acg1zGVsVByUfa6U.TtuiqrEwLkbXV.j3bf5s5g1O03c9oKK', NULL, '2021-01-16 03:12:37', '2021-01-16 03:12:37');

-- --------------------------------------------------------

--
-- Table structure for table `assigns`
--

CREATE TABLE `assigns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `eid` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `itemcode` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `itemdes` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invcode` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invname` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assigndate` date DEFAULT NULL,
  `noitem` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `warranty` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `assigns`
--

INSERT INTO `assigns` (`id`, `eid`, `name`, `itemcode`, `itemdes`, `invcode`, `invname`, `assigndate`, `noitem`, `remarks`, `warranty`, `created_at`, `updated_at`) VALUES
(1, '789', 'A', '101', 'A', '011', 'SPBML Dhaka Depot', '2021-01-01', 'old', 'abc', '2021-01-24', NULL, NULL),
(7, '654', 'C', '101', 'A', '011', 'SPBML Dhaka Depot', '2021-01-15', 'new', 'abc', '2021-01-09', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(20) UNSIGNED NOT NULL,
  `categoryname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `categoryname`) VALUES
(1, 'Fulltime-Regular'),
(2, 'Contractual Executive'),
(3, 'Fulltime-Temporary'),
(4, 'Parttime-Regular'),
(5, 'Staff');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `genders`
--

CREATE TABLE `genders` (
  `genderid` int(20) UNSIGNED NOT NULL,
  `gendername` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `genders`
--

INSERT INTO `genders` (`genderid`, `gendername`) VALUES
(1, 'Male'),
(2, 'Female'),
(3, 'Others');

-- --------------------------------------------------------

--
-- Table structure for table `grades`
--

CREATE TABLE `grades` (
  `id` int(20) UNSIGNED NOT NULL,
  `gradenumber` int(20) NOT NULL,
  `gradename` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gradecode` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `grades`
--

INSERT INTO `grades` (`id`, `gradenumber`, `gradename`, `gradecode`) VALUES
(1, 1, 'One', 'One(1)'),
(2, 2, 'Two', 'Two(2)'),
(4, 3, 'Three', 'Three(3)'),
(5, 4, 'Four', 'Four(4)'),
(6, 5, 'Five', 'Five(5)');

-- --------------------------------------------------------

--
-- Table structure for table `ilocations`
--

CREATE TABLE `ilocations` (
  `id` int(20) UNSIGNED NOT NULL,
  `lname` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ldescription` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linactivedate` date DEFAULT NULL,
  `ladd` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lcity` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lregion` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lcountry` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lpostalcode` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ltelephone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lship2location` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lship2site` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lbill2ship` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ilocations`
--

INSERT INTO `ilocations` (`id`, `lname`, `ldescription`, `linactivedate`, `ladd`, `lcity`, `lregion`, `lcountry`, `lpostalcode`, `ltelephone`, `lship2location`, `lship2site`, `lbill2ship`) VALUES
(3, 'SPBML Dhaka Depot', NULL, NULL, '68 Tejgaon I/A, Dhaka-1208', 'Dhaka', 'Dhaka', 'Bangladesh', '12', '1212', NULL, 'lship2site', 'lbill2ship');

-- --------------------------------------------------------

--
-- Table structure for table `inventoryorgs`
--

CREATE TABLE `inventoryorgs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `istart` date DEFAULT NULL,
  `iend` date DEFAULT NULL,
  `lname` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ladd` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invcode` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invname` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ledgername` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `legalname` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shortname` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `inventoryorgs`
--

INSERT INTO `inventoryorgs` (`id`, `istart`, `iend`, `lname`, `ladd`, `invcode`, `invname`, `ledgername`, `legalname`, `shortname`) VALUES
(2, '2020-12-01', NULL, 'SPBML Dhaka Depot', '68 Tejgaon I/A, Dhaka-1208', '011', 'SPBML Dhaka Depot', 'PSG DCMBL Primary Ledger', 'Star Particle Board Mills Limited', 'SPBML-OU');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invcode` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invname` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `itemcode` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `itemdes` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `measure` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `itemtype` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `itemstatus` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lot` int(100) DEFAULT NULL,
  `makebuy` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `minitem` int(100) DEFAULT NULL,
  `maxitem` int(100) DEFAULT NULL,
  `mindays` int(100) DEFAULT NULL,
  `maxdays` int(100) DEFAULT NULL,
  `invitem` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stockable` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reservable` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transactable` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `purchaseable` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customerordered` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `internalordered` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shippabbleordered` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `returnable` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `invcode`, `invname`, `itemcode`, `itemdes`, `measure`, `itemtype`, `itemstatus`, `lot`, `makebuy`, `minitem`, `maxitem`, `mindays`, `maxdays`, `invitem`, `stockable`, `reservable`, `transactable`, `purchaseable`, `customerordered`, `internalordered`, `shippabbleordered`, `returnable`) VALUES
(1, '011', 'SPBML Dhaka Depot', '101', 'A', 'pcs', NULL, NULL, 1, 'Buy', 20, 30, 2, 3, NULL, 'stockable', 'reservable', 'transactable', 'purchaseable', 'customerordered', 'internalordered', NULL, 'returnable'),
(2, '011', 'SPBML Dhaka Depot', '202', 'B', 'pcs', NULL, 'itemstatus', 1, 'Buy', 20, 30, 2, 3, NULL, 'stockable', 'reservable', 'transactable', 'purchaseable', 'customerordered', 'internalordered', NULL, 'returnable'),
(3, '011', 'SPBML Dhaka Depot', '303', 'C', 'pcs', NULL, 'itemstatus', 1, 'Make', 20, 30, 2, 3, NULL, 'stockable', 'reservable', 'transactable', 'purchaseable', 'customerordered', 'internalordered', NULL, 'returnable'),
(4, '011', 'SPBML Dhaka Depot', '404', 'D', 'pcs', NULL, NULL, 1, 'Buy', 20, 30, 2, 3, NULL, NULL, 'reservable', 'transactable', 'purchaseable', 'customerordered', NULL, NULL, NULL),
(7, '011', 'SPBML Dhaka Depot', '909', 'Hard Disk', 'pcs', NULL, NULL, 1, 'Buy', 20, 30, 2, 3, NULL, NULL, 'reservable', NULL, 'purchaseable', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` int(20) UNSIGNED NOT NULL,
  `jobname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `jobname`) VALUES
(1, 'Consumer Marketing'),
(2, 'Maintenance'),
(3, 'HR & Admin'),
(4, 'Quality Control');

-- --------------------------------------------------------

--
-- Table structure for table `ledgers`
--

CREATE TABLE `ledgers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ledgername` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ledgers`
--

INSERT INTO `ledgers` (`id`, `ledgername`) VALUES
(1, 'PSG SPBML Primary Ledger'),
(2, 'PSG DCMBL Primary Ledger');

-- --------------------------------------------------------

--
-- Table structure for table `legals`
--

CREATE TABLE `legals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `legalname` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `legalid` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `legals`
--

INSERT INTO `legals` (`id`, `legalname`, `legalid`) VALUES
(1, 'Star Particle Board Mills Limited', '266-200-0869');

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `id` int(20) UNSIGNED NOT NULL,
  `locationcode` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`id`, `locationcode`, `description`) VALUES
(1, 'Star Particles Board Mills Limited', 'Star Particles Board Mills Limited'),
(2, 'Partex Furnitures Industries Limited', 'Partex Furnitures Industries Limited'),
(3, 'PFIL Tejgaon Showroom', 'PFIL Tejgaon Showroom');

-- --------------------------------------------------------

--
-- Table structure for table `maritals`
--

CREATE TABLE `maritals` (
  `maritalid` int(20) UNSIGNED NOT NULL,
  `maritalstatus` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `maritals`
--

INSERT INTO `maritals` (`maritalid`, `maritalstatus`) VALUES
(1, 'Domestic Partner'),
(2, 'Legally Separated'),
(3, 'Living Together'),
(4, 'Divorced'),
(5, 'Married'),
(6, 'Single'),
(7, 'Widowed'),
(8, 'Widowed With Surviving Pension');

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
(9, '2014_10_12_000000_create_users_table', 1),
(10, '2014_10_12_100000_create_password_resets_table', 1),
(11, '2019_08_19_000000_create_failed_jobs_table', 1),
(12, '2020_10_28_054123_create_permission_tables', 1),
(13, '2020_11_16_190727_create_admins_table', 2),
(14, '2020_11_27_163525_create_genders_table', 3),
(15, '2020_12_01_045912_create_title_table', 4),
(16, '2020_12_01_050158_create_persontype_table', 4),
(17, '2020_12_01_050233_create_marital_table', 4),
(18, '2020_12_01_050308_create_nationality_table', 4),
(19, '2020_12_01_050359_create_unit_table', 4),
(20, '2020_12_01_050424_create_job_table', 4),
(21, '2020_12_01_050458_create_grade_table', 4),
(22, '2020_12_01_050544_create_location_table', 4),
(23, '2020_12_01_050625_create_category_table', 4),
(24, '2020_12_01_050710_create_position_table', 4),
(25, '2020_12_01_050729_create_status_table', 4),
(26, '2020_12_01_070421_create_titles_table', 5),
(27, '2020_12_01_071306_create_genders_table', 6),
(28, '2020_12_01_072247_create_emptypes_table', 7),
(29, '2020_12_01_073427_create_persontypes_table', 8),
(30, '2020_12_01_074814_create_maritals_table', 9),
(31, '2020_12_01_080013_create_nationalities_table', 10),
(32, '2020_12_01_081019_create_units_table', 11),
(33, '2020_12_01_082421_create_jobs_table', 12),
(34, '2020_12_01_083416_create_grades_table', 13),
(35, '2020_12_01_085932_create_locations_tables', 14),
(36, '2020_12_01_090227_create_locations_table', 15),
(37, '2020_12_01_093115_create_categories_table', 16),
(38, '2020_12_01_094334_create_positions_table', 17),
(39, '2020_12_01_095053_create_statuss_table', 18),
(40, '2020_12_01_095823_create_statuses_table', 19),
(41, '2020_12_26_175952_create_inventoryorgs_table', 20),
(42, '2020_12_26_180820_create_ilocations_table', 21),
(43, '2020_12_28_162212_create_legals_table', 22),
(44, '2020_12_28_172320_create_ledgers_table', 23),
(45, '2020_12_29_081113_create_items_table', 24),
(46, '2020_12_29_081249_create_transactions_table', 25),
(47, '2021_01_06_172648_create_assigns_table', 26),
(48, '2021_01_07_181037_create_receives_table', 27);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\Admin', 1),
(34, 'App\\Models\\Admin', 10),
(35, 'App\\Models\\Admin', 11),
(38, 'App\\Models\\Admin', 13);

-- --------------------------------------------------------

--
-- Table structure for table `nationalities`
--

CREATE TABLE `nationalities` (
  `id` int(20) UNSIGNED NOT NULL,
  `nationalityname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nationalities`
--

INSERT INTO `nationalities` (`id`, `nationalityname`) VALUES
(1, 'French'),
(2, 'British'),
(3, 'Bangladeshi'),
(5, 'German');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `group_name`, `created_at`, `updated_at`) VALUES
(1, 'dashboard.view', 'admin', 'dashboard', '2020-11-08 08:56:44', '2020-11-08 08:56:44'),
(8, 'admin.create', 'admin', 'admin', '2020-11-08 08:56:46', '2020-11-08 08:56:46'),
(9, 'admin.view', 'admin', 'admin', '2020-11-08 08:56:46', '2020-11-08 08:56:46'),
(10, 'admin.edit', 'admin', 'admin', '2020-11-08 08:56:46', '2020-11-08 08:56:46'),
(11, 'admin.delete', 'admin', 'admin', '2020-11-08 08:56:46', '2020-11-08 08:56:46'),
(13, 'role.create', 'admin', 'role', '2020-11-08 08:56:47', '2020-11-08 08:56:47'),
(14, 'role.view', 'admin', 'role', '2020-11-08 08:56:47', '2020-11-08 08:56:47'),
(15, 'role.edit', 'admin', 'role', '2020-11-08 08:56:47', '2020-11-08 08:56:47'),
(16, 'role.delete', 'admin', 'role', '2020-11-08 08:56:47', '2020-11-08 08:56:47'),
(41, 'employee.create', 'admin', 'employee', '2020-11-21 01:35:37', '2020-11-21 01:35:37'),
(42, 'employee.view', 'admin', 'employee', '2020-11-21 01:35:37', '2020-11-21 01:35:37'),
(43, 'employee.edit', 'admin', 'employee', '2020-11-21 01:35:37', '2020-11-21 01:35:37'),
(44, 'employee.delete', 'admin', 'employee', '2020-11-21 01:35:37', '2020-11-21 01:35:37'),
(45, 'manage.create', 'admin', 'manage', NULL, NULL),
(46, 'manage.view', 'admin', 'manage', NULL, NULL),
(47, 'manage.edit', 'admin', 'manage', NULL, NULL),
(48, 'manage.delete', 'admin', 'manage', NULL, NULL),
(50, 'invorganization.create', 'admin', 'invorganization', NULL, NULL),
(51, 'invorganization.view', 'admin', 'invorganization', NULL, NULL),
(52, 'invorganization.edit', 'admin', 'invorganization', NULL, NULL),
(53, 'invorganization.delete', 'admin', 'invorganization', NULL, NULL),
(55, 'invlocation.create', 'admin', 'invlocation', NULL, NULL),
(56, 'invlocation.view', 'admin', 'invlocation', NULL, NULL),
(57, 'invlocation.edit', 'admin', 'invlocation', NULL, NULL),
(58, 'invlocation.delete', 'admin', 'invlocation', NULL, NULL),
(60, 'invtransaction.create', 'admin', 'invtransaction', NULL, NULL),
(61, 'invtransaction.view', 'admin', 'invtransaction', NULL, NULL),
(62, 'invtransaction.edit', 'admin', 'invtransaction', NULL, NULL),
(63, 'invtransaction.delete', 'admin', 'invtransaction', NULL, NULL),
(66, 'invonhand.view', 'admin', 'invonhand', NULL, NULL),
(69, 'item.create', 'admin', 'item', NULL, NULL),
(70, 'item.view', 'admin', 'item', NULL, NULL),
(71, 'item.edit', 'admin', 'item', NULL, NULL),
(72, 'item.delete', 'admin', 'item', NULL, NULL),
(73, 'assignitem.create', 'admin', 'assignitem', NULL, NULL),
(74, 'assignitem.view', 'admin', 'assignitem', NULL, NULL),
(75, 'assignitem.edit', 'admin', 'assignitem', NULL, NULL),
(76, 'assignitem.delete', 'admin', 'assignitem', NULL, NULL),
(77, 'receiveitem.create', 'admin', 'receiveitem', NULL, NULL),
(78, 'receiveitem.view', 'admin', 'receiveitem', NULL, NULL),
(79, 'receiveitem.edit', 'admin', 'receiveitem', NULL, NULL),
(80, 'receiveitem.delete', 'admin', 'receiveitem', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `persontypes`
--

CREATE TABLE `persontypes` (
  `emptypeid` int(20) UNSIGNED NOT NULL,
  `systemtype` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `usertype` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `persontypes`
--

INSERT INTO `persontypes` (`emptypeid`, `systemtype`, `usertype`) VALUES
(1, 'OTHER', 'External'),
(2, 'APL', 'Applicant');

-- --------------------------------------------------------

--
-- Table structure for table `positions`
--

CREATE TABLE `positions` (
  `id` int(20) UNSIGNED NOT NULL,
  `positionname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `positions`
--

INSERT INTO `positions` (`id`, `positionname`) VALUES
(1, 'CEO'),
(2, 'HOCM');

-- --------------------------------------------------------

--
-- Table structure for table `receives`
--

CREATE TABLE `receives` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `eid` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `itemcode` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `itemdes` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rdate` date DEFAULT NULL,
  `ri` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `receives`
--

INSERT INTO `receives` (`id`, `eid`, `itemcode`, `itemdes`, `rdate`, `ri`, `created_at`, `updated_at`) VALUES
(1, '789', '101', NULL, '2021-01-28', 'issue', NULL, NULL),
(2, '654', '101', 'A', '2021-01-21', 'receive', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'superadmin', 'admin', '2020-11-08 08:56:44', '2020-11-08 08:56:44'),
(34, 'Data Entry', 'admin', '2021-01-14 21:34:26', '2021-01-14 21:34:26'),
(35, 'Manager', 'admin', '2021-01-14 21:34:58', '2021-01-14 21:34:58'),
(36, 'Admin Panel', 'admin', '2021-01-14 21:35:27', '2021-01-14 21:35:27'),
(38, 'IT Intern', 'admin', '2021-01-16 03:11:22', '2021-01-16 03:11:22');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 35),
(1, 36),
(1, 38),
(8, 1),
(8, 36),
(9, 1),
(9, 36),
(10, 1),
(10, 36),
(11, 1),
(11, 36),
(13, 1),
(13, 36),
(14, 1),
(14, 36),
(15, 1),
(15, 36),
(16, 1),
(16, 36),
(41, 1),
(41, 34),
(41, 35),
(41, 38),
(42, 1),
(42, 34),
(42, 35),
(42, 38),
(43, 1),
(43, 34),
(43, 35),
(43, 38),
(44, 1),
(44, 34),
(44, 35),
(44, 38),
(45, 1),
(45, 34),
(45, 38),
(46, 1),
(46, 34),
(46, 38),
(47, 1),
(47, 34),
(47, 38),
(48, 1),
(48, 34),
(48, 38),
(50, 1),
(50, 34),
(51, 1),
(51, 34),
(52, 1),
(52, 34),
(53, 1),
(53, 34),
(55, 1),
(55, 34),
(56, 1),
(56, 34),
(57, 1),
(57, 34),
(58, 1),
(58, 34),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(66, 1),
(69, 1),
(69, 34),
(69, 38),
(70, 1),
(70, 34),
(70, 38),
(71, 1),
(71, 34),
(71, 38),
(72, 1),
(72, 34),
(72, 38),
(73, 1),
(73, 35),
(74, 1),
(74, 35),
(75, 1),
(75, 35),
(76, 1),
(76, 35),
(77, 1),
(77, 35),
(78, 1),
(78, 35),
(79, 1),
(79, 35),
(80, 1),
(80, 35);

-- --------------------------------------------------------

--
-- Table structure for table `statuses`
--

CREATE TABLE `statuses` (
  `statusid` int(20) UNSIGNED NOT NULL,
  `statusassign` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `statuses`
--

INSERT INTO `statuses` (`statusid`, `statusassign`) VALUES
(1, 'Active Assignment'),
(2, 'End'),
(3, 'Suspend Assignment'),
(4, 'Terminate Assignment');

-- --------------------------------------------------------

--
-- Table structure for table `titles`
--

CREATE TABLE `titles` (
  `titleid` int(20) UNSIGNED NOT NULL,
  `titlename` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `titles`
--

INSERT INTO `titles` (`titleid`, `titlename`) VALUES
(1, 'Mr.'),
(2, 'Mrs.'),
(3, 'Ms.'),
(4, 'Doctor'),
(5, 'Professor');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transdate` date DEFAULT NULL,
  `transtype` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `itemcode` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `itemdes` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int(100) DEFAULT NULL,
  `invcode` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invname` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `transdate`, `transtype`, `itemcode`, `itemdes`, `quantity`, `invcode`, `invname`) VALUES
(1, '2021-01-15', 'miscellaneousreceipt', '101', NULL, 10, '011', 'SPBML Dhaka Depot'),
(2, '2021-01-22', 'miscellaneousreceipt', '202', NULL, 18, '011', 'SPBML Dhaka Depot');

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` int(20) UNSIGNED NOT NULL,
  `unitname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shortname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `unitname`, `shortname`) VALUES
(1, 'STAR PARTICLE BOARD MILLS LTD', 'SPBML-OU'),
(2, 'PARTEX FURNITURE INDUSTRIES LIMITED', 'PFIL-OU'),
(4, 'PARTEX PVC INDUSTRIES LIMITED', 'PPIL-OU'),
(5, 'PARTEX LAMINATES LIMITED', 'PLL-OU');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titlename` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `namel` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fname` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fno` int(20) DEFAULT NULL,
  `mname` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mno` int(20) DEFAULT NULL,
  `gendername` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `systemtype` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `eid` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nid` int(100) DEFAULT NULL,
  `start` date DEFAULT NULL,
  `end` date DEFAULT NULL,
  `bd` date DEFAULT NULL,
  `place` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `maritalstatus` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationalityname` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `office` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ono` int(20) DEFAULT NULL,
  `pno` int(20) DEFAULT NULL,
  `shortname` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `statusassign` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jobname` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sscale` int(11) DEFAULT NULL,
  `gradecode` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `locationcode` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `supname` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `supno` int(20) DEFAULT NULL,
  `assignno` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `period` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `categoryname` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `periodend` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `grp` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notice` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `positionname` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whour` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shr` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stime` time(6) DEFAULT NULL,
  `etime` time(6) DEFAULT NULL,
  `checkbox` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `datestart` date DEFAULT NULL,
  `dateend` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `titlename`, `name`, `namel`, `email`, `fname`, `fno`, `mname`, `mno`, `gendername`, `systemtype`, `eid`, `nid`, `start`, `end`, `bd`, `place`, `maritalstatus`, `nationalityname`, `image`, `office`, `address`, `ono`, `pno`, `shortname`, `statusassign`, `jobname`, `sscale`, `gradecode`, `locationcode`, `supname`, `supno`, `assignno`, `period`, `categoryname`, `periodend`, `grp`, `notice`, `positionname`, `whour`, `shr`, `stime`, `etime`, `checkbox`, `datestart`, `dateend`) VALUES
(1, 'Mr.', 'A', 'B', 'ami@gmail.com', 'C', 123, 'D', 321, 'Male', 'APL', '789', 132, '2021-01-01', '2021-01-31', '1999-10-15', 'F', 'Single', 'Bangladeshi', '1610684502.jpg', 'E', 'G', 123123, 123123, 'PFIL-OU', 'End', 'Consumer Marketing', 32121, 'Two(2)', 'Partex Furnitures Industries Limited', 'H', 213213, '2', '1', 'Fulltime-Regular', NULL, '1', NULL, 'CEO', NULL, '312312', '10:00:00.000000', '18:00:00.000000', 'checkbox', '2021-02-01', '2021-02-28'),
(4, 'Ms.', 'C', 'D', 'imrul@gmail.com', 'C', 123, 'D', 321, 'Female', 'OTHER', '654', 456, '2021-01-01', '2021-01-31', '2014-06-15', 'F', 'Single', 'Bangladeshi', '1610688185.jpg', 'E', 'G', 123123, 123123, 'SPBML-OU', 'Terminate Assignment', 'Quality Control', 32121, 'Three(3)', 'Partex Furnitures Industries Limited', 'H', 213213, '2', '1', 'Fulltime-Temporary', '12', '1', '3', 'HOCM', '12', '312312', '11:00:00.000000', '19:00:00.000000', 'checkbox', '2021-01-11', '2021-01-28');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`),
  ADD UNIQUE KEY `admins_username_unique` (`username`);

--
-- Indexes for table `assigns`
--
ALTER TABLE `assigns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `genders`
--
ALTER TABLE `genders`
  ADD PRIMARY KEY (`genderid`);

--
-- Indexes for table `grades`
--
ALTER TABLE `grades`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ilocations`
--
ALTER TABLE `ilocations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventoryorgs`
--
ALTER TABLE `inventoryorgs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `itemcode` (`itemcode`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ledgers`
--
ALTER TABLE `ledgers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `legals`
--
ALTER TABLE `legals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `maritals`
--
ALTER TABLE `maritals`
  ADD PRIMARY KEY (`maritalid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `nationalities`
--
ALTER TABLE `nationalities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `persontypes`
--
ALTER TABLE `persontypes`
  ADD PRIMARY KEY (`emptypeid`);

--
-- Indexes for table `positions`
--
ALTER TABLE `positions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `receives`
--
ALTER TABLE `receives`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `statuses`
--
ALTER TABLE `statuses`
  ADD PRIMARY KEY (`statusid`);

--
-- Indexes for table `titles`
--
ALTER TABLE `titles`
  ADD PRIMARY KEY (`titleid`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `itemcode` (`itemcode`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `assigns`
--
ALTER TABLE `assigns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `genders`
--
ALTER TABLE `genders`
  MODIFY `genderid` int(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `grades`
--
ALTER TABLE `grades`
  MODIFY `id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `ilocations`
--
ALTER TABLE `ilocations`
  MODIFY `id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `inventoryorgs`
--
ALTER TABLE `inventoryorgs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `ledgers`
--
ALTER TABLE `ledgers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `legals`
--
ALTER TABLE `legals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `maritals`
--
ALTER TABLE `maritals`
  MODIFY `maritalid` int(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `nationalities`
--
ALTER TABLE `nationalities`
  MODIFY `id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `persontypes`
--
ALTER TABLE `persontypes`
  MODIFY `emptypeid` int(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `positions`
--
ALTER TABLE `positions`
  MODIFY `id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `receives`
--
ALTER TABLE `receives`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `statuses`
--
ALTER TABLE `statuses`
  MODIFY `statusid` int(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `titles`
--
ALTER TABLE `titles`
  MODIFY `titleid` int(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
