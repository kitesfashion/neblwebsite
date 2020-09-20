-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 19, 2020 at 02:23 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nebl`
--

-- --------------------------------------------------------

--
-- Table structure for table `access_log`
--

CREATE TABLE `access_log` (
  `id` int(35) NOT NULL,
  `user_id` int(35) NOT NULL,
  `comapny_id` int(35) DEFAULT NULL,
  `acess_id` int(35) DEFAULT NULL,
  `count` int(35) DEFAULT NULL,
  `history` longtext NOT NULL,
  `action` varchar(255) NOT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `modified_by` varchar(100) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `access_log`
--

INSERT INTO `access_log` (`id`, `user_id`, `comapny_id`, `acess_id`, `count`, `history`, `action`, `created_by`, `modified_by`, `created_at`, `updated_at`) VALUES
(1, 7, NULL, NULL, 1, '{\"id\":1,\"siteTitle\":\"Creating Tomorrow and Beyond\",\"titlePrefix\":\"||\",\"siteName\":\"NEBC\",\"siteLogo\":\"public\\/uploads\\/site_logo\\/logo\\/nebc_logo_47547316663.png\",\"sitefavIcon\":\"public\\/uploads\\/site_logo\\/fav_icon\\/NEBC-logo_89217655877.png\",\"adminTitle\":\"Admin\",\"adminLogo\":\"public\\/uploads\\/admin_logo\\/main_logo\\/nebc_logo_94973897561.png\",\"adminsmalLogo\":\"public\\/uploads\\/admin_logo\\/small_logo\\/NEBC-logo_6488265717.png\",\"adminfavIcon\":\"public\\/uploads\\/admin_logo\\/fav_icon\\/NEBC-logo_87406432034.png\",\"mobile1\":\"+88 01778311111\",\"mobile2\":\"+88 01778322222\",\"siteEmail1\":\"kites@nebcbd.net\",\"siteEmail2\":\"nebc@gmail.com\",\"siteAddress1\":\"La-Montana, House #33,\",\"siteAddress2\":\"Road: Gareeb-E-Newaz Avenue,\\r\\nSector:11,Uttara,Dhaka-1230,Bangladesh.\",\"copyright1\":null,\"copyright2\":null,\"sitestatus\":null,\"metaTitle\":\"Kites\",\"metaKeyword\":\"Garments manufacturer,Best garments supplier of bangladesh,Bangladesh best garments supplier,Quality garments manufacturer,Ready made garments manufacturer,World best garments supplier\",\"metaDescription\":\"KITES is a leading garments Buying, Manufacturer and exporter in Bangladesh. We provide our quality garments to many internationally reputable\",\"orderBy\":null,\"created_at\":null,\"updated_at\":\"2020-06-14 10:39:11\"}', 'Website Information Update', NULL, NULL, '2020-06-14 10:39:11', '2020-06-14 10:39:11'),
(2, 7, NULL, NULL, 1, '{\"id\":1,\"siteTitle\":\"Creating Tomorrow and Beyond\",\"titlePrefix\":\"||\",\"siteName\":\"NEBC\",\"siteLogo\":\"public\\/uploads\\/site_logo\\/logo\\/nebc_logo_47547316663.png\",\"sitefavIcon\":\"public\\/uploads\\/site_logo\\/fav_icon\\/NEBC-logo_89217655877.png\",\"adminTitle\":\"Admin\",\"adminLogo\":\"public\\/uploads\\/admin_logo\\/main_logo\\/nebc_logo_94973897561.png\",\"adminsmalLogo\":\"public\\/uploads\\/admin_logo\\/small_logo\\/NEBC-logo_6488265717.png\",\"adminfavIcon\":\"public\\/uploads\\/admin_logo\\/fav_icon\\/NEBC-logo_87406432034.png\",\"mobile1\":\"+88 01778311111\",\"mobile2\":\"+88 01778322222\",\"siteEmail1\":\"kites@nebcbd.net\",\"siteEmail2\":\"nebc@gmail.com\",\"siteAddress1\":\"La-Montana, House #33,\",\"siteAddress2\":\"Road: Gareeb-E-Newaz Avenue,    <br>\\r\\nSector:11,Uttara,Dhaka-1230,Bangladesh.\",\"copyright1\":null,\"copyright2\":null,\"sitestatus\":null,\"metaTitle\":\"Kites\",\"metaKeyword\":\"Garments manufacturer,Best garments supplier of bangladesh,Bangladesh best garments supplier,Quality garments manufacturer,Ready made garments manufacturer,World best garments supplier\",\"metaDescription\":\"KITES is a leading garments Buying, Manufacturer and exporter in Bangladesh. We provide our quality garments to many internationally reputable\",\"orderBy\":null,\"created_at\":null,\"updated_at\":\"2020-06-14 10:39:26\"}', 'Website Information Update', NULL, NULL, '2020-06-14 10:39:26', '2020-06-14 10:39:26'),
(3, 7, NULL, NULL, 1, '{\"id\":1,\"siteTitle\":\"Creating Tomorrow and Beyond\",\"titlePrefix\":\"||\",\"siteName\":\"NEBC\",\"siteLogo\":\"public\\/uploads\\/site_logo\\/logo\\/nebc_logo_ccccpng_96305386549.png\",\"sitefavIcon\":\"public\\/uploads\\/site_logo\\/fav_icon\\/NEBC-logo_89217655877.png\",\"adminTitle\":\"Admin\",\"adminLogo\":\"public\\/uploads\\/admin_logo\\/main_logo\\/nebc_logo_94973897561.png\",\"adminsmalLogo\":\"public\\/uploads\\/admin_logo\\/small_logo\\/NEBC-logo_6488265717.png\",\"adminfavIcon\":\"public\\/uploads\\/admin_logo\\/fav_icon\\/NEBC-logo_87406432034.png\",\"mobile1\":\"+88 01778311111\",\"mobile2\":\"+88 01778322222\",\"siteEmail1\":\"kites@nebcbd.net\",\"siteEmail2\":\"nebc@gmail.com\",\"siteAddress1\":\"La-Montana, House #33,\",\"siteAddress2\":\"Road: Gareeb-E-Newaz Avenue,    <br>\\r\\nSector:11,Uttara,Dhaka-1230,Bangladesh.\",\"copyright1\":null,\"copyright2\":null,\"sitestatus\":null,\"metaTitle\":\"Kites\",\"metaKeyword\":\"Garments manufacturer,Best garments supplier of bangladesh,Bangladesh best garments supplier,Quality garments manufacturer,Ready made garments manufacturer,World best garments supplier\",\"metaDescription\":\"KITES is a leading garments Buying, Manufacturer and exporter in Bangladesh. We provide our quality garments to many internationally reputable\",\"orderBy\":null,\"created_at\":null,\"updated_at\":\"2020-06-14 12:57:45\"}', 'Website Information Update', NULL, NULL, '2020-06-14 12:57:45', '2020-06-14 12:57:45'),
(4, 7, NULL, NULL, 1, '{\"id\":1,\"siteTitle\":\"Creating Tomorrow and Beyond\",\"titlePrefix\":\"||\",\"siteName\":\"NEBC\",\"siteLogo\":\"public\\/uploads\\/site_logo\\/logo\\/nebc_logo_ccccpng_96305386549.png\",\"sitefavIcon\":\"public\\/uploads\\/site_logo\\/fav_icon\\/NEBC-logo_89217655877.png\",\"adminTitle\":\"Admin\",\"adminLogo\":\"public\\/uploads\\/admin_logo\\/main_logo\\/nebc_logo_94973897561.png\",\"adminsmalLogo\":\"public\\/uploads\\/admin_logo\\/small_logo\\/NEBC-logo_6488265717.png\",\"adminfavIcon\":\"public\\/uploads\\/admin_logo\\/fav_icon\\/NEBC-logo_87406432034.png\",\"mobile1\":\"+88 01778311111\",\"mobile2\":\"+88 01778322222\",\"siteEmail1\":\"info@nebcbd.net\",\"siteEmail2\":\"nebc@gmail.com\",\"siteAddress1\":\"La-Montana, House #33,\",\"siteAddress2\":\"Road: Gareeb-E-Newaz Avenue,    <br>\\r\\nSector:11,Uttara,Dhaka-1230,Bangladesh.\",\"copyright1\":null,\"copyright2\":null,\"sitestatus\":null,\"metaTitle\":\"Kites\",\"metaKeyword\":\"Garments manufacturer,Best garments supplier of bangladesh,Bangladesh best garments supplier,Quality garments manufacturer,Ready made garments manufacturer,World best garments supplier\",\"metaDescription\":\"KITES is a leading garments Buying, Manufacturer and exporter in Bangladesh. We provide our quality garments to many internationally reputable\",\"orderBy\":null,\"created_at\":null,\"updated_at\":\"2020-06-18 04:36:44\"}', 'Website Information Update', NULL, NULL, '2020-06-18 04:36:44', '2020-06-18 04:36:44'),
(5, 7, NULL, NULL, 1, '{\"id\":1,\"siteTitle\":\"Creating Tomorrow and Beyond\",\"titlePrefix\":\"||\",\"siteName\":\"NEBC\",\"siteLogo\":\"public\\/uploads\\/site_logo\\/logo\\/nebc_logo_ccccpng_96305386549.png\",\"sitefavIcon\":\"public\\/uploads\\/site_logo\\/fav_icon\\/NEBC-logo_89217655877.png\",\"adminTitle\":\"Admin\",\"adminLogo\":\"public\\/uploads\\/admin_logo\\/main_logo\\/nebc_logo_94973897561.png\",\"adminsmalLogo\":\"public\\/uploads\\/admin_logo\\/small_logo\\/NEBC-logo_6488265717.png\",\"adminfavIcon\":\"public\\/uploads\\/admin_logo\\/fav_icon\\/NEBC-logo_87406432034.png\",\"mobile1\":\"+88 01778311111\",\"mobile2\":\"+88 01778322222\",\"siteEmail1\":\"info@neblbd.com\",\"siteEmail2\":\"nebc@gmail.com\",\"siteAddress1\":\"La-Montana, House #33,\",\"siteAddress2\":\"Road: Gareeb-E-Newaz Avenue,    <br>\\r\\nSector:11,Uttara,Dhaka-1230,Bangladesh.\",\"copyright1\":null,\"copyright2\":null,\"sitestatus\":null,\"metaTitle\":\"Kites\",\"metaKeyword\":\"Garments manufacturer,Best garments supplier of bangladesh,Bangladesh best garments supplier,Quality garments manufacturer,Ready made garments manufacturer,World best garments supplier\",\"metaDescription\":\"KITES is a leading garments Buying, Manufacturer and exporter in Bangladesh. We provide our quality garments to many internationally reputable\",\"orderBy\":null,\"created_at\":null,\"updated_at\":\"2020-09-19 04:47:54\"}', 'Website Information Update', NULL, NULL, '2020-09-19 04:47:54', '2020-09-19 04:47:54'),
(6, 7, NULL, NULL, 1, '{\"id\":1,\"siteTitle\":\"Creating Tomorrow and Beyond\",\"titlePrefix\":\"||\",\"siteName\":\"NEBC\",\"siteLogo\":\"public\\/uploads\\/site_logo\\/logo\\/nebc_logo_ccccpng_96305386549.png\",\"sitefavIcon\":\"public\\/uploads\\/site_logo\\/fav_icon\\/Nebl_47217775709.png\",\"adminTitle\":\"Admin\",\"adminLogo\":\"public\\/uploads\\/admin_logo\\/main_logo\\/nebc_logo_94973897561.png\",\"adminsmalLogo\":\"public\\/uploads\\/admin_logo\\/small_logo\\/NEBC-logo_6488265717.png\",\"adminfavIcon\":\"public\\/uploads\\/admin_logo\\/fav_icon\\/NEBC-logo_87406432034.png\",\"mobile1\":\"+88 01778311111\",\"mobile2\":\"+88 01778322222\",\"siteEmail1\":\"info@neblbd.com\",\"siteEmail2\":\"nebc@gmail.com\",\"siteAddress1\":\"La-Montana, House #33,\",\"siteAddress2\":\"Road: Gareeb-E-Newaz Avenue,    <br>\\r\\nSector:11,Uttara,Dhaka-1230,Bangladesh.\",\"copyright1\":null,\"copyright2\":null,\"sitestatus\":null,\"metaTitle\":\"Kites\",\"metaKeyword\":\"Garments manufacturer,Best garments supplier of bangladesh,Bangladesh best garments supplier,Quality garments manufacturer,Ready made garments manufacturer,World best garments supplier\",\"metaDescription\":\"KITES is a leading garments Buying, Manufacturer and exporter in Bangladesh. We provide our quality garments to many internationally reputable\",\"orderBy\":null,\"created_at\":null,\"updated_at\":\"2020-09-19 05:17:20\"}', 'Website Information Update', NULL, NULL, '2020-09-19 05:17:20', '2020-09-19 05:17:20'),
(7, 7, NULL, NULL, 1, '{\"id\":1,\"siteTitle\":\"Creating Tomorrow and Beyond\",\"titlePrefix\":\"||\",\"siteName\":\"NEBC\",\"siteLogo\":\"public\\/uploads\\/site_logo\\/logo\\/NEBL Logo_13964734604.png\",\"sitefavIcon\":\"public\\/uploads\\/site_logo\\/fav_icon\\/Nebl_47217775709.png\",\"adminTitle\":\"Admin\",\"adminLogo\":\"public\\/uploads\\/admin_logo\\/main_logo\\/nebc_logo_94973897561.png\",\"adminsmalLogo\":\"public\\/uploads\\/admin_logo\\/small_logo\\/NEBC-logo_6488265717.png\",\"adminfavIcon\":\"public\\/uploads\\/admin_logo\\/fav_icon\\/NEBC-logo_87406432034.png\",\"mobile1\":\"+88 01778311111\",\"mobile2\":\"+88 01778322222\",\"siteEmail1\":\"info@neblbd.com\",\"siteEmail2\":\"nebc@gmail.com\",\"siteAddress1\":\"La-Montana, House #33,\",\"siteAddress2\":\"Road: Gareeb-E-Newaz Avenue,    <br>\\r\\nSector:11,Uttara,Dhaka-1230,Bangladesh.\",\"copyright1\":null,\"copyright2\":null,\"sitestatus\":null,\"metaTitle\":\"Kites\",\"metaKeyword\":\"Garments manufacturer,Best garments supplier of bangladesh,Bangladesh best garments supplier,Quality garments manufacturer,Ready made garments manufacturer,World best garments supplier\",\"metaDescription\":\"KITES is a leading garments Buying, Manufacturer and exporter in Bangladesh. We provide our quality garments to many internationally reputable\",\"orderBy\":null,\"created_at\":null,\"updated_at\":\"2020-09-19 05:46:45\"}', 'Website Information Update', NULL, NULL, '2020-09-19 05:46:45', '2020-09-19 05:46:45'),
(8, 7, NULL, NULL, 1, '{\"id\":1,\"siteTitle\":\"Creating Tomorrow and Beyond\",\"titlePrefix\":\"||\",\"siteName\":\"NEBC\",\"siteLogo\":\"public\\/uploads\\/site_logo\\/logo\\/NEBL Logo_13964734604.png\",\"sitefavIcon\":\"public\\/uploads\\/site_logo\\/fav_icon\\/Nebl_47217775709.png\",\"adminTitle\":\"Admin\",\"adminLogo\":\"public\\/uploads\\/admin_logo\\/main_logo\\/NEBL Logo_59912250496.png\",\"adminsmalLogo\":\"public\\/uploads\\/admin_logo\\/small_logo\\/Nebl_68110865667.png\",\"adminfavIcon\":\"public\\/uploads\\/admin_logo\\/fav_icon\\/Nebl_10007302000.png\",\"mobile1\":\"+88 01778311111\",\"mobile2\":\"+88 01778322222\",\"siteEmail1\":\"info@neblbd.com\",\"siteEmail2\":\"info@neblbd.com\",\"siteAddress1\":\"La-Montana, House #33,\",\"siteAddress2\":\"Road: Gareeb-E-Newaz Avenue,    <br>\\r\\nSector:11,Uttara,Dhaka-1230,Bangladesh.\",\"copyright1\":null,\"copyright2\":null,\"sitestatus\":null,\"metaTitle\":\"Kites\",\"metaKeyword\":\"Garments manufacturer,Best garments supplier of bangladesh,Bangladesh best garments supplier,Quality garments manufacturer,Ready made garments manufacturer,World best garments supplier\",\"metaDescription\":\"KITES is a leading garments Buying, Manufacturer and exporter in Bangladesh. We provide our quality garments to many internationally reputable\",\"orderBy\":null,\"created_at\":null,\"updated_at\":\"2020-09-19 12:00:30\"}', 'Website Information Update', NULL, NULL, '2020-09-19 12:00:30', '2020-09-19 12:00:30'),
(9, 7, NULL, NULL, 1, '{\"id\":1,\"siteTitle\":\"Creating Tomorrow and Beyond\",\"titlePrefix\":\"||\",\"siteName\":\"NEBC\",\"siteLogo\":\"public\\/uploads\\/site_logo\\/logo\\/NEBL Logo_13964734604.png\",\"sitefavIcon\":\"public\\/uploads\\/site_logo\\/fav_icon\\/Nebl_47217775709.png\",\"adminTitle\":\"Admin\",\"adminLogo\":\"public\\/uploads\\/admin_logo\\/main_logo\\/NEBL Logo_59912250496.png\",\"adminsmalLogo\":\"public\\/uploads\\/admin_logo\\/small_logo\\/Nebl_68110865667.png\",\"adminfavIcon\":\"public\\/uploads\\/admin_logo\\/fav_icon\\/Nebl_10007302000.png\",\"mobile1\":\"+88 01778311111\",\"mobile2\":\"+88 01778322222\",\"siteEmail1\":\"info@neblbd.com\",\"siteEmail2\":\"info@neblbd.com\",\"siteAddress1\":\"La-Montana, House #33,\",\"siteAddress2\":\"Road: Gareeb-E-Newaz Avenue,    <br>\\r\\nSector:11,Uttara,Dhaka-1230,Bangladesh.\",\"copyright1\":null,\"copyright2\":null,\"sitestatus\":null,\"metaTitle\":\"Kites\",\"metaKeyword\":\"Garments manufacturer,Best garments supplier of bangladesh,Bangladesh best garments supplier,Quality garments manufacturer,Ready made garments manufacturer,World best garments supplier\",\"metaDescription\":\"KITES is a leading garments Buying, Manufacturer and exporter in Bangladesh. We provide our quality garments to many internationally reputable\",\"orderBy\":null,\"created_at\":null,\"updated_at\":\"2020-09-19 12:00:30\"}', 'Website Information Update', NULL, NULL, '2020-09-19 12:04:38', '2020-09-19 12:04:38'),
(10, 7, NULL, NULL, 1, '{\"id\":1,\"siteTitle\":\"Creating Tomorrow and Beyond\",\"titlePrefix\":\"||\",\"siteName\":\"NEBL\",\"siteLogo\":\"public\\/uploads\\/site_logo\\/logo\\/NEBL Logo_13964734604.png\",\"sitefavIcon\":\"public\\/uploads\\/site_logo\\/fav_icon\\/Nebl_47217775709.png\",\"adminTitle\":\"Admin\",\"adminLogo\":\"public\\/uploads\\/admin_logo\\/main_logo\\/NEBL Logo_59912250496.png\",\"adminsmalLogo\":\"public\\/uploads\\/admin_logo\\/small_logo\\/Nebl_68110865667.png\",\"adminfavIcon\":\"public\\/uploads\\/admin_logo\\/fav_icon\\/Nebl_10007302000.png\",\"mobile1\":\"+88 01778311111\",\"mobile2\":\"+88 01778322222\",\"siteEmail1\":\"info@neblbd.com\",\"siteEmail2\":\"info@neblbd.com\",\"siteAddress1\":\"La-Montana, House #33,\",\"siteAddress2\":\"Road: Gareeb-E-Newaz Avenue,    <br>\\r\\nSector:11,Uttara,Dhaka-1230,Bangladesh.\",\"copyright1\":null,\"copyright2\":null,\"sitestatus\":null,\"metaTitle\":\"Kites\",\"metaKeyword\":\"Garments manufacturer,Best garments supplier of bangladesh,Bangladesh best garments supplier,Quality garments manufacturer,Ready made garments manufacturer,World best garments supplier\",\"metaDescription\":\"KITES is a leading garments Buying, Manufacturer and exporter in Bangladesh. We provide our quality garments to many internationally reputable\",\"orderBy\":null,\"created_at\":null,\"updated_at\":\"2020-09-19 12:12:17\"}', 'Website Information Update', NULL, NULL, '2020-09-19 12:12:17', '2020-09-19 12:12:17');

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `username`, `role`, `password`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(4, 'Admin', 'info@neblbd.com', 'Admin', 3, '$2y$10$PgDOq8AoSMd0S1xJzhXHFOOvlU4LA12z/7Ve1kXeKVeRttqpl.o/G', 1, 'HftBsS0WaFhNaeki9GEnbTOdo99h14G9dS1WtBq9AJJkzUuSyNKsUxMufhEx', '2019-04-17 01:04:35', '2020-01-20 13:33:35'),
(7, 'Sayeed', 'kitesfashionnebl@gmail.com', 'Sayeed', 2, '$2y$10$PgDOq8AoSMd0S1xJzhXHFOOvlU4LA12z/7Ve1kXeKVeRttqpl.o/G', 1, NULL, '2019-08-30 21:43:55', '2020-06-11 08:09:53');

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` int(11) UNSIGNED NOT NULL,
  `menuId` int(11) DEFAULT NULL,
  `parentArticle` int(11) DEFAULT NULL,
  `articleName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `firstHomeTitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secondHomeTitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `firstInnerTitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secondInnerTitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `firstHomeImage` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `firstInnerImage` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `homeDescription` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `innerDescription` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `urlLink` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `articleIcon` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metaTitle` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metaKeyword` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metaDescription` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orderBy` int(11) DEFAULT NULL,
  `articleStatus` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `menuId`, `parentArticle`, `articleName`, `firstHomeTitle`, `secondHomeTitle`, `firstInnerTitle`, `secondInnerTitle`, `firstHomeImage`, `firstInnerImage`, `homeDescription`, `innerDescription`, `urlLink`, `articleIcon`, `metaTitle`, `metaKeyword`, `metaDescription`, `orderBy`, `articleStatus`, `created_at`, `updated_at`) VALUES
(2, 1, NULL, 'About US', 'About US', NULL, NULL, NULL, NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, 1, 1, '2020-02-10 22:49:06', '2020-02-12 05:02:40'),
(3, 2, NULL, 'Business', 'Business', NULL, NULL, NULL, NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-02-10 22:50:03', '2020-02-10 22:50:03'),
(4, 3, NULL, 'Brands', 'Brands', NULL, NULL, NULL, NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2020-02-10 22:50:31', '2020-06-10 15:14:42'),
(5, 4, NULL, 'Gallery', 'Gallery', NULL, NULL, NULL, NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-02-10 22:50:49', '2020-02-10 22:50:49'),
(6, 5, 2, 'Corporate Overview', 'Corporate Overview', NULL, 'Corporate Overview', NULL, NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p style=\"text-align: justify;\">THE NUR-E-ELAHI BUSINESS LIMITED(NEBL) was established in the 2008, and today has operations in Bangladesh, Malaysia, Australia, Oman, USA, and South Africa. It is involved in the Garments, Healthcare, Education, Export-import, Automobiles and Online Business sectors. Since 2008, the Group has ventured into Bangladesh with operations in the healthcare businesses.</p>\r\n<p style=\"text-align: justify;\">The Group has three companies listed two in Malaysia with one in Bangladesh. It has an annual group turnover of approximately US$ 1.0 billion and provides employment for more than 5200 people.</p>\r\n</body>\r\n</html>', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p style=\"text-align: justify;\">THE NUR-E-ELAHI BUSINESS LIMITED(NEBL) was established in the 2008, and today has operations in Bangladesh, Malaysia, Australia, Oman, USA, and South Africa. It is involved in the Garments, Healthcare, Education, Export-import, Automobiles and Online Business sectors. Since 2008, the Group has ventured into Bangladesh with operations in the healthcare businesses.</p>\r\n<p style=\"text-align: justify;\">The Group has three companies listed two in Malaysia with one in Bangladesh. It has an annual group turnover of approximately US$ 1.0 billion and provides employment for more than 5200 people.</p>\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, 1, 1, '2020-02-10 22:52:33', '2020-09-19 05:58:48'),
(7, 6, 2, 'OUR VALUES', 'OUR VALUES', NULL, NULL, 'OUR VALUES', NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>At NEBC, we are guided by one principle - enduring success is not only measured in financial terms, but is also measured by our commitment to the nation and its people. We recognize that how we conduct our business, and how we participate in the community in which we operate, are equally important as all that we accomplish financially.<br /><br />We do not compromise with quality; we set new standards of satisfaction for our customers&rsquo; lives.</p>\r\n</body>\r\n</html>', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>At&nbsp;NEBC, we are guided by one principle - enduring success is not only measured in financial terms, but is also measured by our commitment to the nation and its people. We recognize that how we conduct our business, and how we participate in the community in which we operate, are equally important as all that we accomplish financially.<br /><br />We do not compromise with quality; we set new standards of satisfaction for our customers&rsquo; lives.</p>\r\n</body>\r\n</html>', NULL, NULL, 'valuesssssss', 'sddf,value', 'valuesssssssfv sfewfew werf werew', 2, 0, '2020-02-10 22:52:53', '2020-05-22 14:50:29'),
(8, NULL, NULL, 'Welcome to NEBL', 'Welcome to NEBL', NULL, NULL, NULL, 'public/uploads/articles/home/NEBC GROUP_98210089314.jpg', NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p style=\"text-align: justify;\">THE NUR-E-ELAHI BUSINESS LIMITED(NEBL) was established in the 2008, and today has operations in Bangladesh, Malaysia, Australia, Oman, USA, and South Africa. It is involved in the Garments, Healthcare, Education, Export-import, Automobiles and Online Business sectors. Since 2008, the Group has ventured into Bangladesh with operations in the healthcare businesses.</p>\r\n<p style=\"text-align: justify;\">The Group has three companies listed two in Malaysia with one in Bangladesh. It has an annual group turnover of approximately US$ 1.0 billion and provides employment for more than 5200 people.</p>\r\n</body>\r\n</html>', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, 1, 1, '2020-02-11 03:39:39', '2020-06-09 10:22:57'),
(9, NULL, NULL, 'Message from NEBC', 'Message from NEBC', NULL, NULL, 'Message from Kallol Group of Companies', NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p><strong>H N ASHIKUR RAHAMAN</strong></p>\r\n<p>Group Chairman</p>\r\n<p style=\"text-align: justify;\">Today, as we head towards our more then years in business, NEBC has been developing by adopting a prudent and pragmatic manner in response to the needs of our customers at different times. We have been expanding our services each year, and sharing the continued success in many of our achievements. The Group has been able to grow at a steady pace because we are steadfast in following our core values.</p>\r\n<p style=\"text-align: justify;\">As we are sailing together on the long voyage of life, there is no stormy weather and no towering wave we cannot overcome as long every member of NEBC family continues to work hard together as a good team. We perceive the times of crisis as an opportunity to forge ourselves into an even stronger company and respond actively to changes in the market. We have been constantly reorganizing our business to create a company that is more competitive and more efficient.</p>\r\n<p style=\"text-align: justify;\">We need to be proactive and make sustainable changes and innovations in order to be able to cope with the unpredictable external business environment. Furthermore, we need to increase our organizational strength and resilience to cope with change. I firmly believe that these efforts are indispensable to NEBC&rsquo;S ability to cope with future changes in the external business environment, to realize our vision to continuously become one of the preferred partner or suppliers in the market.<strong>There is no short cut way to success in business.</strong></p>\r\n<p style=\"text-align: justify;\">Moving on from the milestone of more than ten year, we will continue to strive to meet and exceed market needs and expectations.We\'re clear that what has driven our success in the past won\'t guarantee that same success in the future. As a result, we should focus our efforts towards creating the foundation for sustainable growth through innovation and reinforcing our competitiveness. This is why we\'re continuing to invest significantly in our digital and innovation strategies building on the strength of our market-leading assests to deliver more value to clients.<strong>&nbsp;Customer Satisfaction is Always Our Top Priority</strong></p>\r\n<p style=\"text-align: justify;\">I would like to express my gratitude to our strong workforce for aligning with our business philosophy and aspirations as a company. l can foresee the bright future ahead of us filled with opportunities for our young and visionary NEBC team. Our group will continue to grow at a much faster pace as we develop new businesses. I am very confident that we will continue to lead in all the fields that we are in and I sincerely ask for your support in our future endeavors.</p>\r\n<p style=\"text-align: justify;\">Finally, I would like to thank you for visiting NEBC website. I hope the website has been able to profile our group, our solutions and our services may be of your interest. I personally assure you of our best services at all times.&nbsp;<strong>It is always the ordinary people who do extraordinary contributions.</strong></p>\r\n</body>\r\n</html>', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p><strong>H N ASHIKUR RAHAMAN</strong></p>\r\n<p>Group Chairman</p>\r\n<p style=\"text-align: justify;\">Today, as we head towards our more then years in business, NEBC has been developing by adopting a prudent and pragmatic manner in response to the needs of our customers at different times. We have been expanding our services each year, and sharing the continued success in many of our achievements. The Group has been able to grow at a steady pace because we are steadfast in following our core values.</p>\r\n<p style=\"text-align: justify;\">As we are sailing together on the long voyage of life, there is no stormy weather and no towering wave we cannot overcome as long every member of NEBC family continues to work hard together as a good team. We perceive the times of crisis as an opportunity to forge ourselves into an even stronger company and respond actively to changes in the market. We have been constantly reorganizing our business to create a company that is more competitive and more efficient.</p>\r\n<p style=\"text-align: justify;\">We need to be proactive and make sustainable changes and innovations in order to be able to cope with the unpredictable external business environment. Furthermore, we need to increase our organizational strength and resilience to cope with change. I firmly believe that these efforts are indispensable to NEBC&rsquo;S ability to cope with future changes in the external business environment, to realize our vision to continuously become one of the preferred partner or suppliers in the market.<strong>There is no short cut way to success in business.</strong></p>\r\n<p style=\"text-align: justify;\">Moving on from the milestone of more than ten year, we will continue to strive to meet and exceed market needs and expectations.We\'re clear that what has driven our success in the past won\'t guarantee that same success in the future. As a result, we should focus our efforts towards creating the foundation for sustainable growth through innovation and reinforcing our competitiveness. This is why we\'re continuing to invest significantly in our digital and innovation strategies building on the strength of our market-leading assests to deliver more value to clients.<strong>&nbsp;Customer Satisfaction is Always Our Top Priority</strong></p>\r\n<p style=\"text-align: justify;\">I would like to express my gratitude to our strong workforce for aligning with our business philosophy and aspirations as a company. l can foresee the bright future ahead of us filled with opportunities for our young and visionary NEBC team. Our group will continue to grow at a much faster pace as we develop new businesses. I am very confident that we will continue to lead in all the fields that we are in and I sincerely ask for your support in our future endeavors.</p>\r\n<p style=\"text-align: justify;\">Finally, I would like to thank you for visiting NEBC website. I hope the website has been able to profile our group, our solutions and our services may be of your interest. I personally assure you of our best services at all times.&nbsp;<strong>It is always the ordinary people who do extraordinary contributions.</strong></p>\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, 2, 0, '2020-02-11 04:04:40', '2020-06-11 08:22:47'),
(10, 9, 2, 'OUR MISSION & VISION', 'OUR MISSION & VISION', NULL, 'OUR MISSION & VISION', NULL, NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, 3, 0, '2020-02-11 05:26:00', '2020-05-22 14:50:32'),
(12, 11, 2, 'Recognition', 'RECOGNITION', NULL, 'Recognition', NULL, NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, 4, 1, '2020-02-11 06:12:47', '2020-06-11 09:47:38'),
(13, 12, 3, 'Kites', 'Kites', NULL, NULL, NULL, NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, 1, 1, '2020-02-11 06:15:44', '2020-03-14 13:26:50'),
(14, 13, 3, 'Export & Import', 'Export & Import', NULL, 'Export & Import', NULL, NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, 2, 1, '2020-02-11 06:16:32', '2020-03-14 13:27:52'),
(15, 14, 3, 'Education', 'Education', NULL, NULL, NULL, NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>Time Zone is the only authorized point for sales &amp; customer care in Bangladesh for the watch brands Rado, Tissot, Longines, CK, Swatch, Seiko, Citizen, Casio, Titan, Timex, Tommy Hilfiger and more. There are 42 time zones strategically located at the entrances of key shopping malls and 5-star hotels. Time Zones maintain an international standard interior, with uniform looking point of sales with an elegant outlook and ambience. It is operated by trained sales &amp; customer care officers.<br /><br />KGC has an international standard, well-equipped service center headed by experienced and trained experts in watchmaking from wostep, neuchatel, Switzerland. Kallol also represents the writing instruments Parker, Cross, Waterman, Sheaffer, and Pierre Cardin in Bangladesh through Time Zone.</p>\r\n</body>\r\n</html>', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>Time Zone is the only authorized point for sales &amp; customer care in Bangladesh for the watch brands Rado, Tissot, Longines, CK, Swatch, Seiko, Citizen, Casio, Titan, Timex, Tommy Hilfiger and more. There are 42 time zones strategically located at the entrances of key shopping malls and 5-star hotels. Time Zones maintain an international standard interior, with uniform looking point of sales with an elegant outlook and ambience. It is operated by trained sales &amp; customer care officers.<br /><br />KGC has an international standard, well-equipped service center headed by experienced and trained experts in watchmaking from wostep, neuchatel, Switzerland. Kallol also represents the writing instruments Parker, Cross, Waterman, Sheaffer, and Pierre Cardin in Bangladesh through Time Zone.</p>\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, 4, 1, '2020-02-11 06:17:13', '2020-03-14 13:28:09'),
(16, 15, 4, 'FMCG', 'FMCG', NULL, NULL, NULL, NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-02-11 06:17:52', '2020-02-11 06:17:52'),
(17, 16, 4, 'Watch & Writing Instrument', 'Watch & Writing Instrument', NULL, NULL, NULL, NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-02-11 06:18:26', '2020-02-11 06:18:26'),
(18, 17, 8, 'Sister Concern', 'Sister Concern', NULL, NULL, NULL, NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2020-02-11 06:19:21', '2020-02-13 06:33:28'),
(19, 18, 8, 'Contact Us', 'Contact Us', NULL, NULL, NULL, NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-02-11 06:19:53', '2020-02-11 06:19:53'),
(20, NULL, 10, 'MISSION', 'MISSION', NULL, 'MISSION', NULL, NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>To provide maximum satisfaction to our consumers and customers with high standard of products and services.</p>\r\n</body>\r\n</html>', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>To provide maximum satisfaction to our consumers and customers with high standard of products and services.</p>\r\n</body>\r\n</html>', NULL, '<i class=\"far fa-clock\"></i>', NULL, NULL, NULL, 1, 1, '2020-02-11 23:27:31', '2020-02-11 23:37:08'),
(21, NULL, 10, 'VISION', 'VISION', NULL, 'VISION', NULL, NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>To be recognized as the most eminent and professional sales &amp; distribution company in bangladesh with an array of comprehensive team of professionals and high quality products</p>\r\n</body>\r\n</html>', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>To be recognized as the most eminent and professional sales &amp; distribution company in bangladesh with an array of comprehensive team of professionals and high quality products</p>\r\n</body>\r\n</html>', NULL, '<i class=\"fa fa-vote-yea\"></i>', NULL, NULL, NULL, 2, 1, '2020-02-11 23:47:08', '2020-02-11 23:47:29'),
(22, NULL, 12, 'Recognition 1', NULL, NULL, NULL, NULL, 'public/uploads/articles/home/WhatsApp Image 2020-06-11 at 1.49.39 PM_97723317747.jpeg', NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>Recognition from&nbsp;Bangladesh Garment Manufacturers and Exporters Association (BGMEA)</p>\r\n</body>\r\n</html>', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>Recognition from&nbsp;Bangladesh Garment Manufacturers and Exporters Association (BGMEA)</p>\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, 1, 1, '2020-02-12 00:02:39', '2020-06-15 08:59:02'),
(23, 19, 12, 'Recognition 2', NULL, NULL, NULL, NULL, 'public/uploads/articles/home/WhatsApp Image 2020-06-11 at 1.54.29 PM_35840993781.jpeg', NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>Recognition from&nbsp;Bangladesh Grocery Business Association</p>\r\n</body>\r\n</html>', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>Recognition from&nbsp;Bangladesh Grocery Business Association</p>\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, 2, 1, '2020-02-12 00:13:36', '2020-06-15 09:00:25'),
(24, NULL, 13, 'Kallol Chemicals Limited (Detergent Powder)', 'Kallol Chemicals Limited (Detergent Powder)', NULL, 'Kallol Chemicals Limited (Detergent Powder)', NULL, 'public/uploads/articles/home/1556431006KCL_Detergent_91769479106.jpg', 'public/uploads/articles/inner_page/1556431026kallol_thai_16379428006.jpg', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>The Kohinoor Detergent Factory was established in 1968 with fully equipped machinery imported from Ballestra S.P.A., Italy to manufacture the premium detergent powder Jet. Kallol acquired the Kohinoor Detergent Factory in 2006 and renamed it to Kallol Chemicals Limited. The factory is situated in the Tongi Industrial Area. KGC also signed technical collaboration agreement with Lion Corporation, Japan to improve the quality of the detergent powder and to introduce new variants of Jet.</p>\r\n</body>\r\n</html>', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>The Kohinoor Detergent Factory was established in 1968 with fully equipped machinery imported from Ballestra S.P.A., Italy to manufacture the premium detergent powder Jet. Kallol acquired the Kohinoor Detergent Factory in 2006 and renamed it to Kallol Chemicals Limited. The factory is situated in the Tongi Industrial Area. KGC also signed technical collaboration agreement with Lion Corporation, Japan to improve the quality of the detergent powder and to introduce new variants of Jet.</p>\r\n<p>&nbsp;</p>\r\n<p>The Kohinoor Detergent Factory was established in 1968 with fully equipped machinery imported from Ballestra S.P.A., Italy to manufacture the premium detergent powder Jet. Kallol acquired the Kohinoor Detergent Factory in 2006 and renamed it to Kallol Chemicals Limited. The factory is situated in the Tongi Industrial Area. KGC also signed technical collaboration agreement with Lion Corporation, Japan to improve the quality of the detergent powder and to introduce new variants of Jet.</p>\r\n</body>\r\n</html>', 'http://kitesnebc.com/', NULL, NULL, NULL, NULL, 1, 1, '2020-02-12 01:37:34', '2020-02-13 06:26:45'),
(25, NULL, 13, 'Kallol Chemicals Limited (Soap)', 'Kallol Chemicals Limited (Soap)', NULL, 'Kallol Chemicals Limited (Soap)', NULL, 'public/uploads/articles/home/1556431068KCL_Soap_28189672039.jpg', NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>KGC has recently acquired a company which manufactures Aromatic &amp; Camelia beauty soaps and laundry bar. The factory is situated in Tongi Industrial Area with fully equipped machinery from Ballestra S.P.A, Italy.</p>\r\n</body>\r\n</html>', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>KGC has recently acquired a company which manufactures Aromatic &amp; Camelia beauty soaps and laundry bar. The factory is situated in Tongi Industrial Area with fully equipped machinery from Ballestra S.P.A, Italy.</p>\r\n</body>\r\n</html>', 'https://kallolgroup.com/', NULL, NULL, NULL, NULL, 2, 1, '2020-02-12 01:50:29', '2020-02-13 05:43:27'),
(26, NULL, 13, 'Kawachi Detergent & Chemical Industries Limited', 'Kawachi Detergent & Chemical Industries Limited', NULL, 'Kawachi Detergent & Chemical Industries Limited', NULL, 'public/uploads/articles/home/1556431109kawachi_66602958434.jpg', NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>In the year 2012, Kallol acquired the Kawachi detergent factory with machinery from Ballestra S.P.A., Italy. Kawachi Detergent &amp; Chemical Industries produces all types of premium detergent powders and liquid detergents such as dish wash, car wash, fabric softener and so on. Kallol has signed an agreement of technical collaboration to produce quality detergent powder and liquid products.</p>\r\n</body>\r\n</html>', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>In the year 2012, Kallol acquired the Kawachi detergent factory with machinery from Ballestra S.P.A., Italy. Kawachi Detergent &amp; Chemical Industries produces all types of premium detergent powders and liquid detergents such as dish wash, car wash, fabric softener and so on. Kallol has signed an agreement of technical collaboration to produce quality detergent powder and liquid products.</p>\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, 3, 1, '2020-02-12 02:27:23', '2020-02-12 02:27:39'),
(27, NULL, 13, 'Kallol Industries Limited', 'Kallol Industries Limited', NULL, 'Kallol Industries Limited', NULL, 'public/uploads/articles/home/155643069201_33538215130.jpg', NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>Kallol became the licensee of Fay International UK in 1986 and started the production of different tissue and hygiene products in Bangladesh under the brand name of Fay. Today, Kallol produces Fay facial tissue, serviette tissues, toilet tissue and cotton buds under the Fay brand.</p>\r\n</body>\r\n</html>', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>Kallol became the licensee of Fay International UK in 1986 and started the production of different tissue and hygiene products in Bangladesh under the brand name of Fay. Today, Kallol produces Fay facial tissue, serviette tissues, toilet tissue and cotton buds under the Fay brand.</p>\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, 4, 1, '2020-02-12 02:28:41', '2020-02-12 02:28:58'),
(28, NULL, 14, 'Kallol Thai President Foods (BD) Ltd.', 'Kallol Thai President Foods (BD) Ltd.', NULL, 'Kallol Thai President Foods (BD) Ltd.', NULL, 'public/uploads/articles/home/1556431026kallol_thai_67786614809.jpg', NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>On 18 August 2010, KGC (Kallol Group of Companies) entered into a joint venture with Thai President Food PLC, Saha Pathana Inter-Holding Public Co. Ltd., Saha Pathanapibul Public Co. Ltd. &amp; I.C.C. International Public Co. Ltd of Thailand, to manufacture and produce the famous noodle brand Mama - popular across the world for its quality and variety of instant noodles - in Bangladesh. This joint venture has started production in its newly acquired Gazipur factory from 2012, producing noodles and related snack products.</p>\r\n</body>\r\n</html>', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>On 18 August 2010, KGC (Kallol Group of Companies) entered into a joint venture with Thai President Food PLC, Saha Pathana Inter-Holding Public Co. Ltd., Saha Pathanapibul Public Co. Ltd. &amp; I.C.C. International Public Co. Ltd of Thailand, to manufacture and produce the famous noodle brand Mama - popular across the world for its quality and variety of instant noodles - in Bangladesh. This joint venture has started production in its newly acquired Gazipur factory from 2012, producing noodles and related snack products.</p>\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, 1, 1, '2020-02-12 02:31:42', '2020-02-12 02:31:42'),
(29, NULL, 14, 'Jyothy : Kallol Bangladesh Ltd.', 'Jyothy : Kallol Bangladesh Ltd.', NULL, 'Jyothy : Kallol Bangladesh Ltd.', NULL, 'public/uploads/articles/home/1557124348jyothi_9284497642.jpg', NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>On 17 May 2010, KGC formed another joint venture with Jyothy Laboratories of India. This joint venture started with the production of fabric whitener Ujala. In future, more detergents, mosquito repellants and other products will be manufactured in Bangladesh through this joint venture.</p>\r\n</body>\r\n</html>', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>On 17 May 2010, KGC formed another joint venture with Jyothy Laboratories of India. This joint venture started with the production of fabric whitener Ujala. In future, more detergents, mosquito repellants and other products will be manufactured in Bangladesh through this joint venture.</p>\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, 2, 1, '2020-02-12 02:33:25', '2020-02-12 02:33:25'),
(30, 20, 3, 'Healthcare', 'Healthcare', NULL, 'Healthcare', NULL, NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>FMCG Kallol Is The Authorized Importer And Distributor For Nutri-C The Instant Powder Drink, Cadbury Chocolates And Lotte Confectioneries, With A Distribution Reach For The Above Brands In All 64 Districts In Bangladesh.</p>\r\n</body>\r\n</html>', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>FMCG Kallol Is The Authorized Importer And Distributor For Nutri-C The Instant Powder Drink, Cadbury Chocolates And Lotte Confectioneries, With A Distribution Reach For The Above Brands In All 64 Districts In Bangladesh.</p>\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, 3, 1, '2020-02-12 02:36:12', '2020-03-14 13:28:36'),
(31, 21, 3, 'Automobiles', 'Automobiles', NULL, 'Automobiles', NULL, NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>Kallol is in the process of developing a mixed use hospitality project &ndash; a 5-star hotel chain, office complex and service apartment. The land required for the project has been acquired and necessary permission from the government authorities has already been obtained.</p>\r\n</body>\r\n</html>', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>Kallol is in the process of developing a mixed use hospitality project &ndash; a 5-star hotel chain, office complex and service apartment. The land required for the project has been acquired and necessary permission from the government authorities has already been obtained.</p>\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, 5, 1, '2020-02-12 05:53:13', '2020-03-14 13:28:55'),
(32, 22, 3, 'Online Shop', 'Online Shop', NULL, NULL, NULL, NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, 6, 1, '2020-02-12 05:55:22', '2020-03-14 13:29:18'),
(33, 23, 3, 'Network', 'Network', NULL, NULL, NULL, NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2020-02-12 05:55:54', '2020-03-14 13:29:22'),
(34, 24, NULL, 'International Office', 'International Office', NULL, 'International Office', NULL, NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, 6, 1, '2020-05-17 19:34:51', '2020-05-17 19:38:28'),
(35, NULL, 34, 'BANGLADESH HEAD OFFICE', 'BANGLADESH HEAD OFFICE', NULL, 'BANGLADESH HEAD OFFICE', NULL, 'public/uploads/articles/home/bd_flag_new_54308776222.png', 'public/uploads/articles/inner_page/bd_flag_new_30828017994.png', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p><span style=\"font-size: 10pt;\"><strong>Kites</strong></span><br /><span style=\"font-size: 10pt;\">La-Montana, House #33,</span></p>\r\n<p><span style=\"font-size: 10pt;\">Road: Gareeb-E-Newaz Avenue,</span></p>\r\n<p><span style=\"font-size: 10pt;\">Sector:11,Uttara,</span></p>\r\n<p><span style=\"font-size: 10pt;\">Dhaka-1230,Bangladesh.</span></p>\r\n<p><span style=\"font-size: 10pt;\">Phone : +88 01778311111</span></p>\r\n<p><span style=\"font-size: 10pt;\">Phone : +88 01778322222</span></p>\r\n<p><span style=\"font-size: 10pt;\">Email:&nbsp;kites@nebcbd.net</span></p>\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, 1, 1, '2020-05-17 19:37:22', '2020-06-11 13:06:40'),
(36, 25, 2, 'Chairman Message', 'Chairman Message', NULL, 'Chairman Message', NULL, NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p><strong> H N ASHIKUR RAHAMAN</strong></p>\r\n<p>Group Chairman</p>\r\n<p style=\"text-align: justify;\">Today, as we head towards our more then years in business, NEBC has been developing by adopting a prudent and pragmatic manner in response to the needs of our customers at different times. We have been expanding our services each year, and sharing the continued success in many of our achievements. The Group has been able to grow at a steady pace because we are steadfast in following our core values.</p>\r\n<p style=\"text-align: justify;\">As we are sailing together on the long voyage of life, there is no stormy weather and no towering wave we cannot overcome as long every member of NEBC family continues to work hard together as a good team. We perceive the times of crisis as an opportunity to forge ourselves into an even stronger company and respond actively to changes in the market. We have been constantly reorganizing our business to create a company that is more competitive and more efficient.</p>\r\n<p style=\"text-align: justify;\">We need to be proactive and make sustainable changes and innovations in order to be able to cope with the unpredictable external business environment. Furthermore, we need to increase our organizational strength and resilience to cope with change. I firmly believe that these efforts are indispensable to NEBC&rsquo;S ability to cope with future changes in the external business environment, to realize our vision to continuously become one of the preferred partner or suppliers in the market.<strong>There is no short cut way to success in business.</strong></p>\r\n<p style=\"text-align: justify;\">Moving on from the milestone of more than ten year, we will continue to strive to meet and exceed market needs and expectations.We\'re clear that what has driven our success in the past won\'t guarantee that same success in the future. As a result, we should focus our efforts towards creating the foundation for sustainable growth through innovation and reinforcing our competitiveness. This is why we\'re continuing to invest significantly in our digital and innovation strategies building on the strength of our market-leading assests to deliver more value to clients.<strong> Customer Satisfaction is Always Our Top Priority</strong></p>\r\n<p style=\"text-align: justify;\">I would like to express my gratitude to our strong workforce for aligning with our business philosophy and aspirations as a company. l can foresee the bright future ahead of us filled with opportunities for our young and visionary NEBC team. Our group will continue to grow at a much faster pace as we develop new businesses. I am very confident that we will continue to lead in all the fields that we are in and I sincerely ask for your support in our future endeavors.</p>\r\n<p style=\"text-align: justify;\">Finally, I would like to thank you for visiting NEBC website. I hope the website has been able to profile our group, our solutions and our services may be of your interest. I personally assure you of our best services at all times. <strong>It is always the ordinary people who do extraordinary contributions.</strong></p>\r\n</body>\r\n</html>', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p><strong>DR H N ASHIKUR RAHAMAN</strong></p>\r\n<p>Group Chairman</p>\r\n<p style=\"text-align: justify;\">Today, as we head towards our more then years in business, NEBC has been developing by adopting a prudent and pragmatic manner in response to the needs of our customers at different times. We have been expanding our services each year, and sharing the continued success in many of our achievements. The Group has been able to grow at a steady pace because we are steadfast in following our core values.</p>\r\n<p style=\"text-align: justify;\">As we are sailing together on the long voyage of life, there is no stormy weather and no towering wave we cannot overcome as long every member of NEBC family continues to work hard together as a good team. We perceive the times of crisis as an opportunity to forge ourselves into an even stronger company and respond actively to changes in the market. We have been constantly reorganizing our business to create a company that is more competitive and more efficient.</p>\r\n<p style=\"text-align: justify;\">We need to be proactive and make sustainable changes and innovations in order to be able to cope with the unpredictable external business environment. Furthermore, we need to increase our organizational strength and resilience to cope with change. I firmly believe that these efforts are indispensable to NEBC&rsquo;S ability to cope with future changes in the external business environment, to realize our vision to continuously become one of the preferred partner or suppliers in the market.<strong>There is no short cut way to success in business.</strong></p>\r\n<p style=\"text-align: justify;\">Moving on from the milestone of more than ten year, we will continue to strive to meet and exceed market needs and expectations.We\'re clear that what has driven our success in the past won\'t guarantee that same success in the future. As a result, we should focus our efforts towards creating the foundation for sustainable growth through innovation and reinforcing our competitiveness. This is why we\'re continuing to invest significantly in our digital and innovation strategies building on the strength of our market-leading assests to deliver more value to clients.<strong>&nbsp;Customer Satisfaction is Always Our Top Priority</strong></p>\r\n<p style=\"text-align: justify;\">I would like to express my gratitude to our strong workforce for aligning with our business philosophy and aspirations as a company. l can foresee the bright future ahead of us filled with opportunities for our young and visionary NEBC team. Our group will continue to grow at a much faster pace as we develop new businesses. I am very confident that we will continue to lead in all the fields that we are in and I sincerely ask for your support in our future endeavors.</p>\r\n<p style=\"text-align: justify;\">Finally, I would like to thank you for visiting NEBC website. I hope the website has been able to profile our group, our solutions and our services may be of your interest. I personally assure you of our best services at all times.&nbsp;<strong>It is always the ordinary people who do extraordinary contributions.</strong></p>\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, 2, 1, '2020-05-22 09:21:22', '2020-06-11 08:23:50'),
(37, 26, 2, 'Team Management', 'Team Management', NULL, NULL, NULL, NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-05-22 09:22:04', '2020-05-22 09:22:04'),
(38, 27, 2, 'Philosophy', 'Our Philosophy', NULL, 'Philosophy', NULL, NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<table style=\"height: 356px;\" border=\"0\" width=\"966\" cellspacing=\"0\" cellpadding=\"5\">\r\n<tbody>\r\n<tr>\r\n<td valign=\"top\" width=\"50%\"><span style=\"font-size: 12pt;\"><strong><span class=\"title_gold\" style=\"color: #ff9900;\">VISION</span></strong></span><br />\r\n<p><span style=\"font-family: helvetica, arial, sans-serif;\">We shall be a global business group with world-class products and services that enrich the quality of life.</span></p>\r\n</td>\r\n<td valign=\"top\" width=\"50%\"><span style=\"color: #ff9900;\"><strong><span class=\"title_gold\">MISSION</span></strong></span><br />\r\n<p><span style=\"font-family: helvetica, arial, sans-serif;\">We are committed to make The Lion Group a caring organisation and be recognised for excellence in quality, growth and profitability.</span></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td valign=\"top\"><span style=\"color: #ff9900;\"><strong><span class=\"title_gold\">CORE VALUES</span></strong></span>\r\n<p><span style=\"font-family: helvetica, arial, sans-serif;\"><span class=\"title_gold\">+</span>&nbsp;Team Spirit</span><br /><span style=\"font-family: helvetica, arial, sans-serif;\"><span class=\"title_gold\">+</span>&nbsp;Commitment</span><br /><span style=\"font-family: helvetica, arial, sans-serif;\"><span class=\"title_gold\">+</span>&nbsp;Integrity &amp; Honesty</span><br /><span style=\"font-family: helvetica, arial, sans-serif;\"><span class=\"title_gold\">+</span>&nbsp;Customer Oriented</span><br /><span style=\"font-family: helvetica, arial, sans-serif;\"><span class=\"title_gold\">+</span>&nbsp;Respect and Empathy for Individuals</span></p>\r\n</td>\r\n<td valign=\"top\"><strong><span class=\"title_gold\" style=\"color: #ff9900;\">MANAGEMENT PRACTICES</span></strong>\r\n<p><span style=\"font-family: helvetica, arial, sans-serif;\"><span class=\"title_gold\">+</span>&nbsp;Continuous Learning</span><br /><span style=\"font-family: helvetica, arial, sans-serif;\"><span class=\"title_gold\">+</span>&nbsp;Conducive Environment</span><br /><span style=\"font-family: helvetica, arial, sans-serif;\"><span class=\"title_gold\">+</span>&nbsp;Leadership by Example</span><br /><span style=\"font-family: helvetica, arial, sans-serif;\"><span class=\"title_gold\">+</span>&nbsp;Entrepreneurial Spirit</span><br /><span style=\"font-family: helvetica, arial, sans-serif;\"><span class=\"title_gold\">+</span>&nbsp;Sense of Crisis and Urgency</span><br /><span style=\"font-family: helvetica, arial, sans-serif;\"><span class=\"title_gold\">+</span>&nbsp;Benchmarking for Best Practice</span><br /><span style=\"font-family: helvetica, arial, sans-serif;\"><span class=\"title_gold\">+</span>&nbsp;Empowerment for Effectiveness</span><br /><span style=\"font-family: helvetica, arial, sans-serif;\"><span class=\"title_gold\">+</span>&nbsp;Group Synergy</span></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</body>\r\n</html>', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<div class=\"panel\">\r\n<table style=\"height: 356px;\" border=\"0\" width=\"966\" cellspacing=\"0\" cellpadding=\"5\">\r\n<tbody>\r\n<tr>\r\n<td valign=\"top\" width=\"50%\"><span style=\"font-size: 12pt;\"><strong><span class=\"title_gold\" style=\"color: #ff9900;\">VISION</span></strong></span><br />\r\n<p><span style=\"font-family: helvetica, arial, sans-serif;\">We shall be a global business group with world-class products and services that enrich the quality of life.</span></p>\r\n</td>\r\n<td valign=\"top\" width=\"50%\"><span style=\"color: #ff9900;\"><strong><span class=\"title_gold\">MISSION</span></strong></span><br />\r\n<p><span style=\"font-family: helvetica, arial, sans-serif;\">We are committed to make The Lion Group a caring organisation and be recognised for excellence in quality, growth and profitability.</span></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td valign=\"top\"><span style=\"color: #ff9900;\"><strong><span class=\"title_gold\">CORE VALUES</span></strong></span>\r\n<p><span style=\"font-family: helvetica, arial, sans-serif;\"><span class=\"title_gold\">+</span>&nbsp;Team Spirit</span><br /><span style=\"font-family: helvetica, arial, sans-serif;\"><span class=\"title_gold\">+</span>&nbsp;Commitment</span><br /><span style=\"font-family: helvetica, arial, sans-serif;\"><span class=\"title_gold\">+</span>&nbsp;Integrity &amp; Honesty</span><br /><span style=\"font-family: helvetica, arial, sans-serif;\"><span class=\"title_gold\">+</span>&nbsp;Customer Oriented</span><br /><span style=\"font-family: helvetica, arial, sans-serif;\"><span class=\"title_gold\">+</span>&nbsp;Respect and Empathy for Individuals</span></p>\r\n</td>\r\n<td valign=\"top\"><strong><span class=\"title_gold\" style=\"color: #ff9900;\">MANAGEMENT PRACTICES</span></strong>\r\n<p><span style=\"font-family: helvetica, arial, sans-serif;\"><span class=\"title_gold\">+</span>&nbsp;Continuous Learning</span><br /><span style=\"font-family: helvetica, arial, sans-serif;\"><span class=\"title_gold\">+</span>&nbsp;Conducive Environment</span><br /><span style=\"font-family: helvetica, arial, sans-serif;\"><span class=\"title_gold\">+</span>&nbsp;Leadership by Example</span><br /><span style=\"font-family: helvetica, arial, sans-serif;\"><span class=\"title_gold\">+</span>&nbsp;Entrepreneurial Spirit</span><br /><span style=\"font-family: helvetica, arial, sans-serif;\"><span class=\"title_gold\">+</span>&nbsp;Sense of Crisis and Urgency</span><br /><span style=\"font-family: helvetica, arial, sans-serif;\"><span class=\"title_gold\">+</span>&nbsp;Benchmarking for Best Practice</span><br /><span style=\"font-family: helvetica, arial, sans-serif;\"><span class=\"title_gold\">+</span>&nbsp;Empowerment for Effectiveness</span><br /><span style=\"font-family: helvetica, arial, sans-serif;\"><span class=\"title_gold\">+</span>&nbsp;Group Synergy</span></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, 4, 1, '2020-05-22 09:23:33', '2020-06-10 17:01:15'),
(39, 28, 3, 'NEBC NON WOVEN BAG & FABRIC', 'NEBC NON WOVEN BAG & FABRIC', NULL, NULL, NULL, 'public/uploads/menus/WhatsApp Image 2020-06-09 at 1.00.59 PM (1)_16704599065.jpeg', NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-06-09 11:44:44', '2020-06-09 11:44:44'),
(40, NULL, 38, 'VISION', 'VISION', NULL, 'VISION', NULL, NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>We shall be a global business group with world-class products and services that enrich the quality of life.</p>\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, 1, 1, '2020-06-10 14:21:34', '2020-06-10 14:21:34'),
(41, NULL, 34, 'AUSTRALIA OFFICE', 'AUSTRALIA OFFICE', NULL, 'AUSTRALIA OFFICE', NULL, NULL, 'public/uploads/articles/inner_page/australia_flag_27915080559.png', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p><span style=\"font-size: 10pt;\"><strong>Mr.Hasanuzzaman Khan</strong></span></p>\r\n<p><span style=\"font-size: 10pt;\">11 linum st.macquarie Fields</span><span style=\"font-size: 10pt;\">,</span></p>\r\n<p><span style=\"font-size: 10pt;\">nsw-2564,</span><span style=\"font-size: 10pt;\">Sydney, Australia</span></p>\r\n<p><span style=\"font-size: 10pt;\">Mobile: +61402372243</span></p>\r\n<p><span style=\"font-size: 10pt;\">Email: hasan@nebcbd.net</span></p>\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, 2, 1, '2020-06-10 15:24:59', '2020-06-12 19:01:41'),
(42, NULL, 34, 'USA OFFICE', 'USA OFFICE', NULL, 'USA OFFICE', NULL, NULL, 'public/uploads/articles/inner_page/162-1620815_usa-flag-round-flat-hd-png-download_99519018884.png', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p><span style=\"font-size: 10pt;\"><strong>Mr.Younus</strong></span><br /><span style=\"font-size: 10pt;\">330 Minnesota Ave Buffalo NY 14215,</span><br /><span style=\"font-size: 10pt;\">Mobile: +17182493662</span><br /><span style=\"font-size: 10pt;\">Email:&nbsp;younus@nebcbd.net</span></p>\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, 3, 1, '2020-06-10 15:26:45', '2020-06-12 19:02:06'),
(43, NULL, 34, 'MALAYSIA OFFICE', 'MALAYSIA OFFICE', NULL, 'MALAYSIA OFFICE', NULL, NULL, 'public/uploads/articles/inner_page/malaysia_flag_86180667672.png', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p><span style=\"font-size: 10pt;\"><strong>Mr.Hossain</strong></span><br /><span style=\"font-size: 10pt;\">1, Jalan Imbi, Bukit Bintang,</span><br /><span style=\"font-size: 10pt;\">55100 Kuala Lumpur,</span><br /><span style=\"font-size: 10pt;\">Wilayah Persekutuan Kuala Lumpur, Malaysia</span><br /><span style=\"font-size: 10pt;\">Mobile: +60 3-2117 8000</span><br /><span style=\"font-size: 10pt;\">Email:&nbsp;hossain@nebcbd.net</span></p>\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, 4, 1, '2020-06-10 15:28:09', '2020-06-12 19:02:49'),
(44, NULL, 34, 'Sweden Office', 'Sweden Office', NULL, 'Sweden Office', NULL, NULL, 'public/uploads/articles/inner_page/WhatsApp Image 2020-06-18 at 11.25.28 AM (2)_35053031313.jpeg', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p><strong>Md. Faisal</strong></p>\r\n<p>K&ouml;rsb&auml;rsv&auml;gen 2B, Stockholm 114 23 Sweden.</p>\r\n<p>Email: faisal@nebcbd.net</p>\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, 5, 1, '2020-06-14 17:03:35', '2020-06-18 09:59:42'),
(46, 30, 3, 'Tours & Travels', 'Tours & Travels', NULL, NULL, NULL, 'public/uploads/menus/NEBL Logo_65000664329.png', NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-09-19 00:48:54', '2020-09-19 00:48:54'),
(47, 31, 3, 'Tours & Travels', 'Tours & Travels', NULL, NULL, NULL, 'public/uploads/menus/Tour & Travel logo_74270404863.png', NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-09-19 00:51:17', '2020-09-19 00:51:17'),
(48, 32, 8, 'Service', 'Service', NULL, NULL, NULL, NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-09-19 00:55:29', '2020-09-19 00:55:29');
INSERT INTO `articles` (`id`, `menuId`, `parentArticle`, `articleName`, `firstHomeTitle`, `secondHomeTitle`, `firstInnerTitle`, `secondInnerTitle`, `firstHomeImage`, `firstInnerImage`, `homeDescription`, `innerDescription`, `urlLink`, `articleIcon`, `metaTitle`, `metaKeyword`, `metaDescription`, `orderBy`, `articleStatus`, `created_at`, `updated_at`) VALUES
(50, 34, 50, 'Indian Train Tickets', 'Indian Train Tickets', NULL, 'Indian Train Tickets', NULL, NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>ffffffffffedtrde54476</p>\r\n</body>\r\n</html>', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<h4>IRCTC&nbsp;<em>Indian</em>&nbsp;Railways&nbsp;<em>Train</em>&nbsp;Reservation can be done effortlessly at MakeMyTrip. Check seat availability to get confirmed IRCTC&nbsp;<em>Train Tickets</em>&nbsp;online for all.</h4>\r\n<div id=\"__-9lX-DeIbjZz7sP7sieyA418\" class=\"mWyH1d hide-focus-ring FXMOpb\" tabindex=\"0\">\r\n<div class=\"fbPs3b\">\r\n<div class=\"wjgLQd\"><strong>How can I Book Train Tickets Online?</strong></div>\r\n</div>\r\n</div>\r\n<div id=\"__-9lX-DeIbjZz7sP7sieyA416\" class=\"gy6Qzb oNjtBb V1sL5c\" data-ved=\"2ahUKEwig2tSKk_XrAhW47HMBHW6kB-kQpPYEKAAwA3oECAQQCw\">\r\n<div class=\"ZVWN5d\">\r\n<div id=\"faq_19\">\r\n<div class=\"Xims0d\">To book train tickets online, log on to the EaseMyTrip website and click on the train tab. Search trains for your preferred route and date and then check availability. If your tickets are available, you can proceed to next step. If there is waiting list, you can still go for booking your train tickets. Once you click on continue option, you will be asked to verify your IRCTC id to continue booking online train tickets. Now, you can enter the passenger details and proceed to book. You will be prompted about your IRCTC password. Now you will be directed to the \'Payment Option\' section where choose the method for payment. After entering the details, you have to fill your IRCTC password and then your transaction of online train booking will be processed and you will receive a booking confirmation.</div>\r\n<div class=\"Xims0d\">&nbsp;</div>\r\n<div class=\"Xims0d\">\r\n<div id=\"__-9lX-DeIbjZz7sP7sieyA424\" class=\"mWyH1d hide-focus-ring FXMOpb\" tabindex=\"0\">\r\n<div class=\"fbPs3b\">\r\n<div class=\"wjgLQd\"><strong>How can I Book Train Tickets in Tatkal Quota?</strong></div>\r\n</div>\r\n</div>\r\n<div id=\"__-9lX-DeIbjZz7sP7sieyA423\" class=\"gy6Qzb oNjtBb V1sL5c\" data-ved=\"2ahUKEwig2tSKk_XrAhW47HMBHW6kB-kQpPYEKAAwA3oECAQQDQ\">\r\n<div class=\"ZVWN5d\">\r\n<div id=\"faq_25\">\r\n<div class=\"Xims0d\">Tatkal ticket reservation is a facility that allows the passengers taking a train journey on a short notice. Tatkal quota opens one day advance excluding the date of journey from the originating station of the train.Tatkal Train Ticket Booking Timings are:AC Class - 10:15 AM,Sleeper Class - 11:15 AM You have to opt for Tatkal quota to book tatkal tickets.</div>\r\n<div class=\"Xims0d\">&nbsp;</div>\r\n<div class=\"Xims0d\">\r\n<div id=\"__-9lX-DeIbjZz7sP7sieyA428\" class=\"mWyH1d hide-focus-ring FXMOpb\" tabindex=\"0\">\r\n<div class=\"fbPs3b\">\r\n<div class=\"wjgLQd\"><strong>How Many Days in Advance you can Book Train Tickets?</strong></div>\r\n</div>\r\n</div>\r\n<div id=\"__-9lX-DeIbjZz7sP7sieyA427\" class=\"gy6Qzb oNjtBb V1sL5c\" data-ved=\"2ahUKEwig2tSKk_XrAhW47HMBHW6kB-kQpPYEKAAwA3oECAQQDw\">\r\n<div class=\"ZVWN5d\">\r\n<div id=\"faq_31\">\r\n<div class=\"Xims0d\">Advance Reservation Period for booking train tickets is 120 days (excluding the date of journey). So, booking in trains from train originating stations will open and remain available for 120 days.</div>\r\n<div class=\"Xims0d\">&nbsp;</div>\r\n<div class=\"Xims0d\">You can\'t change your train booking. All that you can do is to cancel your current ticket and book again.</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, 'Indian Train Tickets', 1, 1, '2020-09-19 01:03:46', '2020-09-19 05:51:11'),
(51, 35, 48, 'Medical Visa', 'Medical Visa', NULL, NULL, NULL, 'public/uploads/articles/home/Pic-17-F-Image_44068997183.jpg', 'public/uploads/articles/inner_page/Pic-17-F-Image_15841271898.jpg', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n</body>\r\n</html>', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>&nbsp;<img src=\"https://i2.wp.com/www.hospitalinindia.org/wp-content/uploads/2017/07/Pic-17-F-Image.jpg?resize=1050%2C600\" alt=\"\" width=\"1050\" height=\"600\" /></p>\r\n<h2>How do I apply for a US medical visa?</h2>\r\n<p><strong>The documents required by the applicant are:</strong>&nbsp;</p>\r\n<ol class=\"X5LH0c\">\r\n<li class=\"TrT0Xe\">A valid passport that does not expire prior to 6 months of your intended stay.</li>\r\n<li class=\"TrT0Xe\"><strong>US Visa Application</strong>&nbsp;Fee receipt. Visit&nbsp;<strong>US Visa</strong>&nbsp;Fees for more details.</li>\r\n<li class=\"TrT0Xe\">Printout of your confirmation page from the&nbsp;<strong>US Visa Application</strong>&nbsp;form DS-160.</li>\r\n<li class=\"TrT0Xe\">One Photograph.</li>\r\n<li class=\"TrT0Xe\"><strong>US Visa</strong>&nbsp;Appointment Letter.</li>\r\n</ol>\r\n<div id=\"_l-ZlX9OIBfLbz7sPu6epmAg44\" class=\"mWyH1d hide-focus-ring FXMOpb\" tabindex=\"0\">\r\n<h2 class=\"match-mod-horizontal-padding hide-focus-ring cbphWd\" data-kt=\"Ki-GxtCS2qS_gTrZ0dbcmLLH9fkBkp32wPLtxZcJ1Zauk_Dq3f5d2avEhu-S4eaeAQ\" data-hveid=\"CA0QDg\" data-ved=\"2ahUKEwiTsJuOivXrAhXy7XMBHbtTCoMQuk4oAHoECA0QDg\">How can I get medical visa for India?</h2>\r\n<div class=\"match-mod-horizontal-padding hide-focus-ring cbphWd\" data-kt=\"Ki-GxtCS2qS_gTrZ0dbcmLLH9fkBkp32wPLtxZcJ1Zauk_Dq3f5d2avEhu-S4eaeAQ\" data-hveid=\"CA0QDg\" data-ved=\"2ahUKEwiTsJuOivXrAhXy7XMBHbtTCoMQuk4oAHoECA0QDg\">&nbsp;</div>\r\n</div>\r\n<div id=\"_l-ZlX9OIBfLbz7sPu6epmAg43\" class=\"gy6Qzb oNjtBb V1sL5c\">\r\n<div>\r\n<div id=\"_l-ZlX9OIBfLbz7sPu6epmAg45\" class=\"y8URue\" data-hveid=\"CA0QDw\" data-ved=\"2ahUKEwiTsJuOivXrAhXy7XMBHbtTCoMQu04oAXoECA0QDw\">\r\n<div class=\"mod\" data-md=\"61\">\r\n<div class=\"LGOjhe\" data-attrid=\"wa:/description\" data-hveid=\"CA0QEA\"><span class=\"ILfuVd NA6bn\"><span class=\"hgKElc\">Obtaining an&nbsp;<strong>Medical visa</strong>&nbsp;is a straightforward process. Eligible travelers who wish to receive&nbsp;<strong>medical</strong>&nbsp;treatment can easily complete the&nbsp;<strong>application</strong>&nbsp;providing a few essential details which include their full name, date and place of birth, address, contact info and passport data.</span></span></div>\r\n<div class=\"LGOjhe\" data-attrid=\"wa:/description\" data-hveid=\"CA0QEA\">&nbsp;</div>\r\n<div class=\"LGOjhe\" data-attrid=\"wa:/description\" data-hveid=\"CA0QEA\">Which city is best for medical treatment in India?</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div id=\"_GudlX7WQGISJoATw-IGwCg1\" class=\"gy6Qzb oNjtBb V1sL5c\">\r\n<div>\r\n<div class=\"y8URue\" data-hveid=\"CAEQAg\" data-ved=\"2ahUKEwi1herMivXrAhWEBIgKHXB8AKYQu04oAXoECAEQAg\">\r\n<div class=\"mod\" data-md=\"83\">\r\n<div class=\"di3YZe\">\r\n<div class=\"co8aDb gsrt\"><strong>Medical Tourism: Cities In India With The Best To Offer:</strong></div>\r\n<div class=\"co8aDb gsrt\">&nbsp;</div>\r\n<div class=\"RqBzHd\">\r\n<ul class=\"i8Z77e\">\r\n<li class=\"TrT0Xe\">Considered the health capital of India, Chennai welcomes many international patients for treatment. ...</li>\r\n<li class=\"TrT0Xe\"><strong>Mumbai</strong>&nbsp;is one of the fastest-growing medical tourism destinations in India. ...</li>\r\n<li class=\"TrT0Xe\">Goa isn\'t just the perfect beach destination for international&nbsp;<strong>tourists</strong>&nbsp;to visit.</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<p>&nbsp;</p>\r\n</body>\r\n</html>', NULL, NULL, 'Medical Visa – Traveling to Europe to Get Medical ...', 'Medical Visa – Traveling to Europe to Get Medical ...', 'Medical Visa – Traveling to Europe to Get Medical ...', 1, 1, '2020-09-19 01:05:11', '2020-09-19 05:16:21'),
(52, 36, 48, 'Student Visa', 'Student Visa', NULL, NULL, NULL, NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p><img src=\"https://miro.medium.com/max/2400/1*QznqnH6CJ3GGGIHCvvY3eg.jpeg\" alt=\"\" width=\"1200\" height=\"868\" /></p>\r\n<p>&nbsp;</p>\r\n<p><strong>Student Visas</strong>, as the name suggests are&nbsp;<strong>visas</strong>&nbsp;issued to applicants whose primary purpose of visit to the country is the pursuit of education. These could vary in terms of the requirements of documents to the different proof of funds acceptable to what all the&nbsp;<strong>visas</strong>&nbsp;would let you do apart from studying in the country</p>\r\n<div id=\"_PetlX-SEI7SKmgeoiZDYDw62\" class=\"mWyH1d hide-focus-ring FXMOpb\" tabindex=\"0\">\r\n<div>\r\n<h3 class=\"KA4pGd mDj5wd\" data-hveid=\"CA0QGg\" data-ved=\"2ahUKEwikl_HFjvXrAhU0heYKHagEBPsQ_JoDKAB6BAgNEBo\"><span class=\"OS8yje oJc6P\">Age requirement</span></h3>\r\n</div>\r\n</div>\r\n<div id=\"_PetlX-SEI7SKmgeoiZDYDw61\" class=\"gy6Qzb oNjtBb V1sL5c\">\r\n<div class=\"dfiEbb\">\r\n<div id=\"_PetlX-SEI7SKmgeoiZDYDw63\" class=\"h1v6L\" data-hveid=\"CA0QGw\" data-ved=\"2ahUKEwikl_HFjvXrAhU0heYKHagEBPsQw5oDKAF6BAgNEBs\">\r\n<div class=\"mod\" lang=\"en-BD\" data-md=\"61\">\r\n<div class=\"LGOjhe\" data-attrid=\"wa:/description\" data-hveid=\"CA0QHA\"><span class=\"ILfuVd rjOVwe\"><span class=\"hgKElc\">As part of the&nbsp;<strong>visa</strong>&nbsp;application process, an interview at the embassy consular section is&nbsp;<strong>required</strong>&nbsp;for&nbsp;<strong>visa</strong>&nbsp;applicants from&nbsp;<strong>age</strong>&nbsp;14 through 79, with few exceptions. Persons&nbsp;<strong>age</strong>&nbsp;13 and younger, and&nbsp;<strong>age</strong>&nbsp;80 and older, generally do not require an interview, unless requested by embassy or consulate.</span></span></div>\r\n<div class=\"LGOjhe\" data-attrid=\"wa:/description\" data-hveid=\"CA0QHA\">&nbsp;</div>\r\n<div class=\"LGOjhe\" data-attrid=\"wa:/description\" data-hveid=\"CA0QHA\">\r\n<h3 class=\"co8aDb gsrt\">How to Get a Student Visa: Step Guide</h3>\r\n<div class=\"RqBzHd\">\r\n<ol class=\"X5LH0c\">\r\n<li class=\"TrT0Xe\">Step 1: Apply and Get Accepted to a US School. ...</li>\r\n<li class=\"TrT0Xe\">Step 2: Receive Form I-20 or DS-2019 From Your School. ...</li>\r\n<li class=\"TrT0Xe\">Step 3: Pay the I-901 SEVIS Fee. ...</li>\r\n<li class=\"TrT0Xe\">Step 4: Find Your Nearest US Embassy or Consulate. ...</li>\r\n<li class=\"TrT0Xe\">Step 5: Complete Form DS-160 Online. ...</li>\r\n<li class=\"TrT0Xe\">Step 6: Schedule Your Visa Interview.</li>\r\n</ol>\r\n<div id=\"_PetlX-SEI7SKmgeoiZDYDw83\" class=\"mWyH1d hide-focus-ring FXMOpb\" tabindex=\"0\">\r\n<div>\r\n<h3 class=\"KA4pGd mDj5wd\" data-hveid=\"CA0QMA\" data-ved=\"2ahUKEwikl_HFjvXrAhU0heYKHagEBPsQ_JoDKAB6BAgNEDA\"><span class=\"OS8yje oJc6P\">Minimum credit</span>&nbsp;</h3>\r\n</div>\r\n</div>\r\n<div id=\"_PetlX-SEI7SKmgeoiZDYDw82\" class=\"gy6Qzb oNjtBb V1sL5c\">\r\n<div class=\"dfiEbb\">\r\n<div id=\"_PetlX-SEI7SKmgeoiZDYDw84\" class=\"h1v6L\" data-hveid=\"CA0QMQ\" data-ved=\"2ahUKEwikl_HFjvXrAhU0heYKHagEBPsQw5oDKAF6BAgNEDE\">\r\n<div class=\"mod\" lang=\"en-BD\" data-md=\"61\">\r\n<div class=\"LGOjhe\" data-attrid=\"wa:/description\" data-hveid=\"CA0QMg\"><span class=\"ILfuVd rjOVwe\"><span class=\"hgKElc\">Failure to maintain full-time status may result in termination of your F-1&nbsp;<strong>visa</strong>. Undergraduate&nbsp;<strong>students</strong>&nbsp;must be registered for a&nbsp;<strong>minimum</strong>&nbsp;of 12&nbsp;<strong>credit</strong>&nbsp;hours per semester. Online Classes: Only one online class per semester counts toward the full-time&nbsp;<strong>credits</strong>&nbsp;required to maintain your F-1 status.</span></span></div>\r\n<div class=\"LGOjhe\" data-attrid=\"wa:/description\" data-hveid=\"CA0QMg\">&nbsp;</div>\r\n<div class=\"LGOjhe\" data-attrid=\"wa:/description\" data-hveid=\"CA0QMg\">\r\n<div id=\"_PetlX-SEI7SKmgeoiZDYDw88\" class=\"mWyH1d hide-focus-ring FXMOpb\" tabindex=\"0\">\r\n<div>\r\n<h3 class=\"KA4pGd mDj5wd\" data-hveid=\"CA0QOw\" data-ved=\"2ahUKEwikl_HFjvXrAhU0heYKHagEBPsQ_JoDKAB6BAgNEDs\"><span class=\"OS8yje oJc6P\">Working part time</span>&nbsp;</h3>\r\n</div>\r\n</div>\r\n<div id=\"_PetlX-SEI7SKmgeoiZDYDw87\" class=\"gy6Qzb oNjtBb V1sL5c\">\r\n<div class=\"dfiEbb\">\r\n<div id=\"_PetlX-SEI7SKmgeoiZDYDw89\" class=\"h1v6L\" data-hveid=\"CA0QPA\" data-ved=\"2ahUKEwikl_HFjvXrAhU0heYKHagEBPsQw5oDKAF6BAgNEDw\">\r\n<div class=\"mod\" lang=\"en-BD\" data-md=\"61\">\r\n<div class=\"LGOjhe\" data-attrid=\"wa:/description\" data-hveid=\"CA0QPQ\"><span class=\"ILfuVd rjOVwe\"><span class=\"hgKElc\">Your US&nbsp;<strong>student visa</strong>&nbsp;allows you to&nbsp;<strong>work</strong>&nbsp;on-campus up to 20 hours per week when school is in session and&nbsp;<strong>full</strong>-<strong>time</strong>&nbsp;during school break periods (up to 40 hours per week). On-campus employment is defined as&nbsp;<strong>work</strong>&nbsp;that takes place on campus, or at an off-campus location that is affiliated with the school.</span></span></div>\r\n<div class=\"LGOjhe\" data-attrid=\"wa:/description\" data-hveid=\"CA0QPQ\"><span style=\"background-color: #ffffff; color: #ff0000;\">&nbsp;</span></div>\r\n<div class=\"LGOjhe\" data-attrid=\"wa:/description\" data-hveid=\"CA0QPQ\">&nbsp;</div>\r\n<h3 class=\"LGOjhe\" style=\"text-align: center;\" data-attrid=\"wa:/description\" data-hveid=\"CA0QPQ\"><span style=\"background-color: #00ff00;\"><em><strong><a style=\"background-color: #00ff00;\" title=\"More Details\" href=\"http://bglc.net/\" target=\"_blank\">More Details</a></strong></em></span></h3>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</body>\r\n</html>', NULL, NULL, 'Student Visa', 'Student Visa', 'Student Visa', 2, 1, '2020-09-19 01:06:07', '2020-09-19 05:37:45'),
(53, 37, 48, 'Hotel booking', 'Hotel booking', NULL, 'Hotel booking', NULL, NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p><img src=\"https://aajtravelsbd.com/wp-content/uploads/2018/06/Hotel-Booking-Sub-Logo-1024x423.jpg\" alt=\"\" width=\"1024\" height=\"423\" /></p>\r\n<p>&nbsp;</p>\r\n<div class=\"g\">\r\n<div class=\"rc\" data-hveid=\"CAMQAA\" data-ved=\"2ahUKEwiSgOepkfXrAhVq6XMBHUbyB0cQFSgAMAV6BAgDEAA\">\r\n<div class=\"s\">\r\n<h4><span class=\"st\">Find and&nbsp;<em>book</em>&nbsp;deals on the best cheap&nbsp;<em>hotels</em>&nbsp;in Dhaka, Bangladesh! Explore guest reviews and&nbsp;<em>book</em>&nbsp;the perfect cheap&nbsp;<em>hotel</em>&nbsp;for your trip.</span></h4>\r\n</div>\r\n<div id=\"eob_14\" data-ved=\"2ahUKEwiSgOepkfXrAhVq6XMBHUbyB0cQ2Z0BMAV6BAgDEAk\">&nbsp;\r\n<h2 class=\"widget-toggle-btn widget-toggle-btn-open\" tabindex=\"0\">Top destinations</h2>\r\n<ul id=\"widget-toggle-i0-e0\" class=\"widget-toggle-bd\">\r\n<li><a title=\"Hotels in Las Vegas\" href=\"https://www.hotels.com/de1504033/hotels-las-vegas-nevada/\" rel=\"follow\">Hotels in Las Vegas</a></li>\r\n<li><a title=\"Hotels in New York\" href=\"https://www.hotels.com/de1506246/hotels-new-york-new-york/\" rel=\"follow\">Hotels in New York</a></li>\r\n<li><a title=\"Hotels in Chicago\" href=\"https://www.hotels.com/de1497539/hotels-chicago-illinois/\" rel=\"follow\">Hotels in Chicago</a></li>\r\n<li><a title=\"Hotels in Orlando\" href=\"https://www.hotels.com/de1404711/hotels-orlando-florida/\" rel=\"follow\">Hotels in Orlando</a></li>\r\n<li><a title=\"Hotels in New Orleans\" href=\"https://www.hotels.com/de1456744/hotels-new-orleans-louisiana/\" rel=\"follow\">Hotels in New Orleans</a></li>\r\n<li><a title=\"Hotels in Myrtle Beach\" href=\"https://www.hotels.com/de1447135/hotels-myrtle-beach-south-carolina/\" rel=\"follow\">Hotels in Myrtle Beach</a></li>\r\n<li><a title=\"Hotels in San Diego\" href=\"https://www.hotels.com/de1483250/hotels-san-diego-california/\" rel=\"follow\">Hotels in San Diego</a></li>\r\n<li><a title=\"Hotels in Nashville\" href=\"https://www.hotels.com/de1489624/hotels-nashville-tennessee/\" rel=\"follow\">Hotels in Nashville</a></li>\r\n<li><a title=\"Hotels in San Francisco\" href=\"https://www.hotels.com/de1493604/hotels-san-francisco-california/\" rel=\"follow\">Hotels in San Francisco</a></li>\r\n<li><a title=\"Hotels in Los Angeles\" href=\"https://www.hotels.com/de1439028/hotels-los-angeles-california/\" rel=\"follow\">Hotels in Los Angeles</a></li>\r\n<li><a title=\"Hotels in Miami\" href=\"https://www.hotels.com/de1516192/hotels-miami-florida/\" rel=\"follow\">Hotels in Miami</a></li>\r\n<li><a title=\"Hotels in Paris\" href=\"https://www.hotels.com/de504261/hotels-paris-france/\" rel=\"follow\">Hotels in Paris</a></li>\r\n<li><a title=\"Hotels in Denver\" href=\"https://www.hotels.com/de1440421/hotels-denver-colorado/\" rel=\"follow\">Hotels in Denver</a></li>\r\n<li><a title=\"Hotels in Washington\" href=\"https://www.hotels.com/de1467359/hotels-washington-district-of-columbia/\" rel=\"follow\">Hotels in Washington</a></li>\r\n<li><a title=\"Hotels in Austin\" href=\"https://www.hotels.com/de1496344/hotels-austin-texas/\" rel=\"follow\">Hotels in Austin</a></li>\r\n<li><a title=\"Hotels in Atlanta\" href=\"https://www.hotels.com/de1496137/hotels-atlanta-georgia/\" rel=\"follow\">Hotels in Atlanta</a></li>\r\n<li><a title=\"Hotels in San Antonio\" href=\"https://www.hotels.com/de1490932/hotels-san-antonio-texas/\" rel=\"follow\">Hotels in San Antonio</a></li>\r\n<li><a title=\"Hotels in Boston\" href=\"https://www.hotels.com/de1401516/hotels-boston-massachusetts/\" rel=\"follow\">Hotels in Boston</a></li>\r\n<li><a title=\"Hotels in Atlantic City\" href=\"https://www.hotels.com/de1512961/hotels-atlantic-city-new-jersey/\" rel=\"follow\">Hotels in Atlantic City</a></li>\r\n<li><a title=\"Hotels in Key West\" href=\"https://www.hotels.com/de1444575/hotels-key-west-florida/\" rel=\"follow\">Hotels in Key West</a></li>\r\n<li><a title=\"Hotels in London\" href=\"https://www.hotels.com/de549499/hotels-london-united-kingdom/\" rel=\"follow\">Hotels in London</a></li>\r\n<li><a title=\"Hotels in Virginia Beach\" href=\"https://www.hotels.com/de1510020/hotels-virginia-beach-virginia/\" rel=\"follow\">Hotels in Virginia Beach</a></li>\r\n<li><a title=\"Hotels in Seattle\" href=\"https://www.hotels.com/de1481165/hotels-seattle-washington/\" rel=\"follow\">Hotels in Seattle</a></li>\r\n<li><a title=\"Hotels in Ocean City\" href=\"https://www.hotels.com/de1498924/hotels-ocean-city-maryland/\" rel=\"follow\">Hotels in Ocean City</a></li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"g\">&nbsp;</div>\r\n</body>\r\n</html>', NULL, NULL, 'hotel booking', 'hotel booking', 'hotel booking', 3, 1, '2020-09-19 01:07:02', '2020-09-19 05:43:12'),
(54, 38, 48, 'Foreign Doctor Appointment', 'Foreign Doctor Appointment', NULL, NULL, NULL, NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p><img src=\"https://siliconcanals.com/wp-content/uploads/2019/03/topdoc.jpg\" alt=\"\" width=\"1024\" height=\"532\" /></p>\r\n<div id=\"res\" class=\"med\">\r\n<div id=\"search\">\r\n<div data-ved=\"2ahUKEwiqgITyk_XrAhUO83MBHZCPCf8QGnoECA0QKA\">\r\n<h1 class=\"Uo8X3b\">&nbsp;</h1>\r\n<div id=\"rso\" data-async-context=\"query:foreign%20doctor%20appointment%20%26%20booking\">\r\n<div class=\"g\">\r\n<div class=\"rc\" data-hveid=\"CAIQAA\" data-ved=\"2ahUKEwiqgITyk_XrAhUO83MBHZCPCf8QFSgAMAB6BAgCEAA\">\r\n<div class=\"r\">\r\n<h3 class=\"LC20lb DKV0Md\">Booking Health &ndash; Hospital and health care booking service.</h3>\r\n</div>\r\n<div class=\"s\">\r\n<div><span class=\"st\"><em>International</em>&nbsp;patients&nbsp;<em>booking medical</em>&nbsp;tours through the&nbsp;<em>Booking</em>&nbsp;Health website ... watch_later Prompt arrangement of hospital&nbsp;<em>appointment</em>&nbsp;in the event of an.</span></div>\r\n<div>&nbsp;</div>\r\n<div>\r\n<div id=\"_2PBlX6q0FI7mz7sPkJ-m-A831\" class=\"mWyH1d hide-focus-ring FXMOpb\" tabindex=\"0\">\r\n<div class=\"match-mod-horizontal-padding hide-focus-ring cbphWd\" data-kt=\"Ki-W1eSs7Y6ljVudiJPOgOqr0gulme_5y4m5-kuOgf3p_qbXsMYBgob5tNqDsui7AQ\" data-hveid=\"CAsQAw\" data-ved=\"2ahUKEwiqgITyk_XrAhUO83MBHZCPCf8Quk4oAHoECAsQAw\"><strong>Can we consult doctor online?</strong></div>\r\n</div>\r\n<div id=\"_2PBlX6q0FI7mz7sPkJ-m-A830\" class=\"gy6Qzb oNjtBb V1sL5c\">\r\n<div>\r\n<div id=\"_2PBlX6q0FI7mz7sPkJ-m-A832\" class=\"y8URue\" data-hveid=\"CAsQBA\" data-ved=\"2ahUKEwiqgITyk_XrAhUO83MBHZCPCf8Qu04oAXoECAsQBA\">\r\n<div class=\"mod\" data-md=\"61\">\r\n<div class=\"LGOjhe\" data-attrid=\"wa:/description\" data-hveid=\"CAsQBQ\"><span class=\"ILfuVd NA6bn\"><span class=\"hgKElc\">How&nbsp;<strong>Online Doctor Consultation</strong>&nbsp;Works? Select the type of category&nbsp;<strong>you</strong>&nbsp;would like to&nbsp;<strong>consult</strong>&nbsp;with the&nbsp;<strong>doctor</strong>. Type in your concern and attach prescription, lab reports if any. Help&nbsp;<strong>doctor</strong>&nbsp;understand your case better.</span></span></div>\r\n<div class=\"LGOjhe\" data-attrid=\"wa:/description\" data-hveid=\"CAsQBQ\">&nbsp;</div>\r\n<div class=\"LGOjhe\" data-attrid=\"wa:/description\" data-hveid=\"CAsQBQ\">\r\n<div id=\"_2PBlX6q0FI7mz7sPkJ-m-A840\" class=\"mWyH1d hide-focus-ring FXMOpb\" tabindex=\"0\">\r\n<div class=\"match-mod-horizontal-padding hide-focus-ring cbphWd\" data-kt=\"Ki_4-Y6loaLvviTWwYLXm8ursvQB_LrYvbOzpea4AdjcsrO_xN7kRea1q-KL2ZG0BQ\" data-hveid=\"CAsQDQ\" data-ved=\"2ahUKEwiqgITyk_XrAhUO83MBHZCPCf8Quk4oAHoECAsQDQ\"><strong>Is it doctor appointment or doctor\'s appointment?</strong></div>\r\n</div>\r\n<div id=\"_2PBlX6q0FI7mz7sPkJ-m-A839\" class=\"gy6Qzb oNjtBb V1sL5c\">\r\n<div>\r\n<div id=\"_2PBlX6q0FI7mz7sPkJ-m-A841\" class=\"y8URue\" data-hveid=\"CAsQDg\" data-ved=\"2ahUKEwiqgITyk_XrAhUO83MBHZCPCf8Qu04oAXoECAsQDg\">\r\n<div class=\"mod\" data-md=\"61\">\r\n<div class=\"LGOjhe\" data-attrid=\"wa:/description\" data-hveid=\"CAsQDw\"><span class=\"ILfuVd NA6bn\"><span class=\"hgKElc\">The authors describe the pair of phrases thusly: In the phrase &ldquo;<strong>doctor\'s appointment</strong>,&rdquo; the noun &ldquo;<strong>doctor</strong>&rdquo; is being used genitively to describe the type of&nbsp;<strong>appointment</strong>, while in &ldquo;<strong>doctor appointment</strong>,&rdquo; the noun is being used attributively (that is, adjectivally) to do the same thing.</span></span></div>\r\n<div class=\"LGOjhe\" data-attrid=\"wa:/description\" data-hveid=\"CAsQDw\">&nbsp;</div>\r\n<div class=\"LGOjhe\" data-attrid=\"wa:/description\" data-hveid=\"CAsQDw\">\r\n<div class=\"co8aDb gsrt\"><strong>How to book&nbsp;an&nbsp;appointment&nbsp;with&nbsp;doctor&nbsp;in&nbsp;Sweden?</strong></div>\r\n<div class=\"RqBzHd\">\r\n<ol class=\"X5LH0c\">\r\n<li class=\"TrT0Xe\">Step 1: To find a Health Center (<strong>Swedish</strong>: V&aring;rdcentral) The websites www.1177.se provides information of all health centers in&nbsp;<strong>Sweden</strong>.</li>\r\n<li class=\"TrT0Xe\">Step 2: To call the Health Center.</li>\r\n<li class=\"TrT0Xe\">Step 3: To&nbsp;<strong>book</strong>&nbsp;a time.</li>\r\n<li class=\"TrT0Xe\">2 thoughts on &ldquo;<strong>How to book</strong>&nbsp;an&nbsp;<strong>appointment</strong>&nbsp;with&nbsp;<strong>doctor</strong>&nbsp;in&nbsp;<strong>Sweden</strong>?&rdquo;</li>\r\n</ol>\r\n<div class=\"co8aDb gsrt\"><strong>How to Schedule a&nbsp;Doctor\'s Appointment&nbsp;in the&nbsp;US</strong></div>\r\n<div class=\"RqBzHd\">\r\n<ol class=\"X5LH0c\">\r\n<li class=\"TrT0Xe\">Know what plan you have. It might sound basic, but the very first step is to know what plan you have. ...</li>\r\n<li class=\"TrT0Xe\">Verify your coverage. ...</li>\r\n<li class=\"TrT0Xe\">Find a&nbsp;<strong>doctor</strong>. ...</li>\r\n<li class=\"TrT0Xe\">Schedule your&nbsp;<strong>appointment</strong>. ...</li>\r\n<li class=\"TrT0Xe\">Attend your&nbsp;<strong>appointment</strong>. ...</li>\r\n<li class=\"TrT0Xe\">File a claim.</li>\r\n</ol>\r\n<div class=\"co8aDb gsrt\"><strong>Five&nbsp;best Android apps&nbsp;for&nbsp;doctors</strong></div>\r\n<div class=\"RqBzHd\">\r\n<ul class=\"i8Z77e\">\r\n<li class=\"TrT0Xe\">1/6. Five&nbsp;<strong>best Android apps</strong>&nbsp;for&nbsp;<strong>doctors</strong>. Text: Avani Bagga, TOI Tech. ...</li>\r\n<li class=\"TrT0Xe\">2/6. Epocrates Plus. A must have&nbsp;<strong>app</strong>&nbsp;for anyone who is medical professional. ...</li>\r\n<li class=\"TrT0Xe\">3/6. Amion. This&nbsp;<strong>app</strong>&nbsp;helps&nbsp;<strong>doctors</strong>&nbsp;organize their shifts&nbsp;<strong>better</strong>. ...</li>\r\n<li class=\"TrT0Xe\">4/6. Consult &amp; Profile Management (Practo) ...</li>\r\n<li class=\"TrT0Xe\">5/6. Curofy. ...</li>\r\n<li class=\"TrT0Xe\">6/6. Medscape.</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</body>\r\n</html>', NULL, NULL, 'foreign doctor appointment & booking', 'foreign doctor appointment & booking', 'foreign doctor appointment & booking', 11, 1, '2020-09-19 01:09:06', '2020-09-19 05:56:24'),
(61, 45, 48, 'Air Tickets', 'Air Tickets', NULL, NULL, NULL, NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>ffffffffffffffffffff</p>\r\n</body>\r\n</html>', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p><img src=\"https://www.raoconsultants.com/wp-content/uploads/2019/07/air-ticketing-1.jpg\" alt=\"\" width=\"1400\" height=\"450\" /></p>\r\n<p>&nbsp;</p>\r\n<h4>Our Eligible Trusted&nbsp;<em class=\"hcV4Re nkGKTb\">Airline</em>&nbsp;Partners are Waiving their Change Fees. Learn More Now! Enjoy Cheap&nbsp;<em class=\"hcV4Re nkGKTb\">Airline Tickets</em>&nbsp;&amp; Hassle Free Travel! Book 600+ Airlines. Our Best Price Guarantee.</h4>\r\n<p>&nbsp;</p>\r\n<div id=\"_Yu9lX-3gONLD3LUP3Oum-Aw42\" class=\"mWyH1d hide-focus-ring FXMOpb\" tabindex=\"0\">\r\n<div class=\"fbPs3b\">\r\n<h3 class=\"wjgLQd\">How can I avail budget air tickets on MakeMyTrip?</h3>\r\n</div>\r\n</div>\r\n<div id=\"_Yu9lX-3gONLD3LUP3Oum-Aw41\" class=\"gy6Qzb oNjtBb V1sL5c\" data-ved=\"2ahUKEwjtmf2_kvXrAhXSIbcAHdy1Cc8QpPYEKAAwAHoECAgQDA\">\r\n<div class=\"ZVWN5d\">\r\n<div id=\"faq_44\">\r\n<div class=\"Xims0d\">\r\n<p>It\'s super-easy to avail budget airfare while booking your flight tickets on MakeMyTrip. Just select the \'Price\' filter once the available flight options are displayed and adjust according to your convenience. On the MakeMyTrip app, you can select the downward arrow, which will show the lowest airfare at the top and continue downward in ascending order.</p>\r\n<div id=\"_Yu9lX-3gONLD3LUP3Oum-Aw47\" class=\"mWyH1d hide-focus-ring FXMOpb\" tabindex=\"0\">\r\n<div class=\"fbPs3b\">\r\n<h3 class=\"wjgLQd\">Why could I not avail the flight booking offers at the time of checkout?</h3>\r\n</div>\r\n</div>\r\n<div id=\"_Yu9lX-3gONLD3LUP3Oum-Aw46\" class=\"gy6Qzb oNjtBb V1sL5c\" data-ved=\"2ahUKEwjtmf2_kvXrAhXSIbcAHdy1Cc8QpPYEKAAwAHoECAgQDg\">\r\n<div class=\"ZVWN5d\">\r\n<div id=\"faq_48\">\r\n<div class=\"Xims0d\">\r\n<p>MakeMyTrip makes use of a world-class real-time reservation database to list airfare and availability. As dynamic changes in airfare take place, or the available flight tickets sell out, the database reflects the changes in real-time. Hence, we suggest, you double-check online flight booking prices when purchasing flight tickets, as the airfare might have been dynamically updated since you first selected the air travel dates or planned your itinerary.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, 4, 1, '2020-09-19 04:56:46', '2020-09-19 05:47:39');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(11) UNSIGNED NOT NULL,
  `firstHomeTitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secondHomeTitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `firstInnerTitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secondInnerTitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `firstHomeImage` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `firstInnerImage` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `homeDescription` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `innerDescription` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `urlLink` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `articleIcon` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metaTitle` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metaKeyword` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metaDescription` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orderBy` int(11) DEFAULT NULL,
  `articleStatus` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orderBy` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `orderBy`, `status`, `created_at`, `updated_at`) VALUES
(1, 'NEBC AUTOMOBILE', 9, 1, '2020-02-12 23:08:07', '2020-06-14 13:21:14'),
(2, 'KITES', 2, 1, '2020-02-12 23:15:01', '2020-06-11 16:57:30'),
(3, 'NEBC HEALTHCARE', 3, 1, '2020-02-12 23:15:14', '2020-06-11 16:57:46'),
(4, 'BANGLADESH GLOBAL LEARNING CENTER', 4, 1, '2020-02-12 23:16:19', '2020-06-11 16:57:59'),
(5, 'NEBC EXPORT IMPORT', 2, 1, '2020-02-12 23:16:29', '2020-06-14 14:40:11'),
(6, 'SHOP N BUY', 6, 1, '2020-06-11 16:58:20', '2020-06-11 16:58:20'),
(7, 'NEBC AGRO', 7, 1, '2020-06-11 16:58:28', '2020-06-11 16:58:28'),
(8, 'NEBC NON OVEN FABRIC & BAG', 8, 1, '2020-06-11 16:58:40', '2020-06-11 16:58:40');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `contactName` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contactPhone` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contactEmail` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contactAddress` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contactTitle` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contactMessage` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `contactName`, `contactPhone`, `contactEmail`, `contactAddress`, `contactTitle`, `contactMessage`, `created_at`, `updated_at`) VALUES
(1, 'gngvhn', NULL, 'jisan@gmail.com', NULL, 'fghbfghf', 'gvn gn gvng', '2020-06-14 09:46:30', '2020-06-14 09:46:30'),
(2, 'fgb gf', NULL, 'jisan@gmail.com', NULL, 'fgbfgbfg', 'bgfb gb', '2020-06-14 09:47:46', '2020-06-14 09:47:46'),
(3, 'dfvbdfv', NULL, 'jisan@gmail.com', NULL, 'dfbvdfbv', 'fdbdfbdf', '2020-06-14 09:48:46', '2020-06-14 09:48:46'),
(4, 'dfvdfv', NULL, 'jisan@gmail.comd', NULL, 'vfdv dfv', 'dfvdfvfd', '2020-06-14 09:49:53', '2020-06-14 09:49:53'),
(5, 'acxs', NULL, 'jisan@gmail.com', NULL, 'sdcdsc', 'sdzcdsc', '2020-06-14 09:50:53', '2020-06-14 09:50:53'),
(6, 'egvrefgv', NULL, 'jisan@gmail.com', NULL, 'sdfvdf', 'vdfv', '2020-06-14 09:51:37', '2020-06-14 09:51:37'),
(7, 'kjhbjknklkm', NULL, 'jisan@gmail.com', NULL, ',mnlk,m lkm;k', 'kjj p ipok[po 0kpoin9ojmpoij', '2020-06-14 09:53:03', '2020-06-14 09:53:03'),
(8, 'Jisan ahmed', NULL, 'jisan@gmail.com', NULL, 'test subject', 'test message', '2020-06-14 09:57:20', '2020-06-14 09:57:20'),
(9, 'Kawsar Ahmed Parvez', NULL, 'ed@nebcbd.net', NULL, 'Promotion', 'Why?', '2020-06-15 22:30:43', '2020-06-15 22:30:43');

-- --------------------------------------------------------

--
-- Table structure for table `contactuses`
--

CREATE TABLE `contactuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'new-message',
  `metaTitle` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metaKeyword` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metaDescription` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orderBy` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_address`
--

CREATE TABLE `contact_address` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `designation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile1` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile2` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `siteEmail1` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `siteEmail2` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `siteAddress1` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `siteAddress2` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orderBy` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_address`
--

INSERT INTO `contact_address` (`id`, `title`, `name`, `designation`, `mobile1`, `mobile2`, `siteEmail1`, `siteEmail2`, `siteAddress1`, `siteAddress2`, `image`, `orderBy`, `status`, `created_at`, `updated_at`) VALUES
(1, 'HR & ADMIN', 'Mahfuza Haque', 'Manager, HR & Admin', '880258816004-9', '880-2-9846268', 'hrd@kallolgroup.com', NULL, '199, Tejgaon I.A, Dhaka, Bangladesh', NULL, NULL, 1, 1, '2020-02-13 04:22:57', '2020-02-13 04:28:00'),
(2, 'BUSINESS DEVELOPMENT', 'S. Mariam Bint-e-Faruk (Tina)', 'Manager, Business Development(Watch)', '880258816004-9', '880-2-9846268', 'tina@kallolgroup.com', 'mariam@gmail.com', '199, Tejgaon I.A, Dhaka, Bangladesh', 'Dhaka', NULL, 2, 1, '2020-02-13 04:34:04', '2020-02-13 04:47:50');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `information` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orderBy` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` int(2) UNSIGNED NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `bn_name` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `name`, `bn_name`, `created_at`, `updated_at`) VALUES
(1, 'Dhaka', 'ঢাকা', NULL, NULL),
(2, 'Faridpur', 'ফরিদপুর', NULL, NULL),
(3, 'Gazipur', 'গাজীপুর', NULL, NULL),
(4, 'Gopalganj', 'গোপালগঞ্জ', NULL, NULL),
(5, 'Jamalpur', 'জামালপুর', NULL, NULL),
(6, 'Kishoreganj', 'কিশোরগঞ্জ', NULL, NULL),
(7, 'Madaripur', 'মাদারীপুর', NULL, NULL),
(8, 'Manikganj', 'মানিকগঞ্জ', NULL, NULL),
(9, 'Munshiganj', 'মুন্সিগঞ্জ', NULL, NULL),
(10, 'Mymensingh', 'ময়মনসিং', NULL, NULL),
(11, 'Narayanganj', 'নারায়াণগঞ্জ', NULL, NULL),
(12, 'Narsingdi', 'নরসিংদী', NULL, NULL),
(13, 'Netrokona', 'নেত্রকোনা', NULL, NULL),
(14, 'Rajbari', 'রাজবাড়ি', NULL, NULL),
(15, 'Shariatpur', 'শরীয়তপুর', NULL, NULL),
(16, 'Sherpur', 'শেরপুর', NULL, NULL),
(17, 'Tangail', 'টাঙ্গাইল', NULL, NULL),
(18, 'Bogra', 'বগুড়া', NULL, NULL),
(19, 'Joypurhat', 'জয়পুরহাট', NULL, NULL),
(20, 'Naogaon', 'নওগাঁ', NULL, NULL),
(21, 'Natore', 'নাটোর', NULL, NULL),
(22, 'Nawabganj', 'নবাবগঞ্জ', NULL, NULL),
(23, 'Pabna', 'পাবনা', NULL, NULL),
(24, 'Rajshahi', 'রাজশাহী', NULL, NULL),
(25, 'Sirajgonj', 'সিরাজগঞ্জ', NULL, NULL),
(26, 'Dinajpur', 'দিনাজপুর', NULL, NULL),
(27, 'Gaibandha', 'গাইবান্ধা', NULL, NULL),
(28, 'Kurigram', 'কুড়িগ্রাম', NULL, NULL),
(29, 'Lalmonirhat', 'লালমনিরহাট', NULL, NULL),
(30, 'Nilphamari', 'নীলফামারী', NULL, NULL),
(31, 'Panchagarh', 'পঞ্চগড়', NULL, NULL),
(32, 'Rangpur', 'রংপুর', NULL, NULL),
(33, 'Thakurgaon', 'ঠাকুরগাঁও', NULL, NULL),
(34, 'Barguna', 'বরগুনা', NULL, NULL),
(35, 'Barisal', 'বরিশাল', NULL, NULL),
(36, 'Bhola', 'ভোলা', NULL, NULL),
(37, 'Jhalokati', 'ঝালকাঠি', NULL, NULL),
(38, 'Patuakhali', 'পটুয়াখালী', NULL, NULL),
(39, 'Pirojpur', 'পিরোজপুর', NULL, NULL),
(40, 'Bandarban', 'বান্দরবান', NULL, NULL),
(41, 'Brahmanbaria', 'ব্রাহ্মণবাড়িয়া', NULL, NULL),
(42, 'Chandpur', 'চাঁদপুর', NULL, NULL),
(43, 'Chittagong', 'চট্টগ্রাম', NULL, NULL),
(44, 'Comilla', 'কুমিল্লা', NULL, NULL),
(45, 'Cox\'s Bazar', 'কক্স বাজার', NULL, NULL),
(46, 'Feni', 'ফেনী', NULL, NULL),
(47, 'Khagrachari', 'খাগড়াছড়ি', NULL, NULL),
(48, 'Lakshmipur', 'লক্ষ্মীপুর', NULL, NULL),
(49, 'Noakhali', 'নোয়াখালী', NULL, NULL),
(50, 'Rangamati', 'রাঙ্গামাটি', NULL, NULL),
(51, 'Habiganj', 'হবিগঞ্জ', NULL, NULL),
(52, 'Maulvibazar', 'মৌলভীবাজার', NULL, NULL),
(53, 'Sunamganj', 'সুনামগঞ্জ', NULL, NULL),
(54, 'Sylhet', 'সিলেট', NULL, NULL),
(55, 'Bagerhat', 'বাগেরহাট', NULL, NULL),
(56, 'Chuadanga', 'চুয়াডাঙ্গা', NULL, NULL),
(57, 'Jessore', 'যশোর', NULL, NULL),
(58, 'Jhenaidah', 'ঝিনাইদহ', NULL, NULL),
(59, 'Khulna', 'খুলনা', NULL, NULL),
(60, 'Kushtia', 'কুষ্টিয়া', NULL, NULL),
(61, 'Magura', 'মাগুরা', NULL, NULL),
(62, 'Meherpur', 'মেহেরপুর', NULL, NULL),
(63, 'Narail', 'নড়াইল', NULL, NULL),
(64, 'Satkhira', 'সাতক্ষীরা', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `header_block`
--

CREATE TABLE `header_block` (
  `id` int(11) UNSIGNED NOT NULL,
  `articleName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `firstHomeTitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secondHomeTitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `firstInnerTitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secondInnerTitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `firstHomeImage` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `firstInnerImage` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `homeDescription` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `innerDescription` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `urlLink` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `articleIcon` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metaTitle` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metaKeyword` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metaDescription` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orderBy` int(11) DEFAULT NULL,
  `articleStatus` int(11) NOT NULL DEFAULT 1,
  `section` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `header_block`
--

INSERT INTO `header_block` (`id`, `articleName`, `firstHomeTitle`, `secondHomeTitle`, `firstInnerTitle`, `secondInnerTitle`, `firstHomeImage`, `firstInnerImage`, `homeDescription`, `innerDescription`, `urlLink`, `articleIcon`, `metaTitle`, `metaKeyword`, `metaDescription`, `orderBy`, `articleStatus`, `section`, `created_at`, `updated_at`) VALUES
(3, 'Upcoming Events', NULL, NULL, NULL, NULL, NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, NULL, 1, 'event', '2019-11-30 06:07:39', '2019-11-30 06:07:57'),
(4, 'Recent News', NULL, NULL, NULL, NULL, NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, NULL, 1, 'activities', '2019-12-01 02:08:23', '2019-12-01 23:12:18'),
(5, 'Gallery', 'Gallery', NULL, 'Gallery', NULL, NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, NULL, 1, 'photoGallery', '2019-12-01 23:44:29', '2020-02-12 07:10:43'),
(6, 'Our Customers', 'Our Customers', NULL, 'Our Customers', NULL, NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>We provide wholesale,Retail and Online delivery across the world.We have many valuable customer in different countries.We alreday received many award for best quality and quick shipment from our customer.Our customer happiness is our first priority.</p>\r\n</body>\r\n</html>', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p style=\"margin: 0in 0in 0.0001pt; line-height: 18pt; background: white; text-align: center;\" align=\"center\">We provide wholesale,Retail and Online delivery across the world.We have many valuable customer in different countries.We alreday received many award for best quality and quick shipment from our customer.Our customer happiness is our first priority.</p>\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, NULL, 1, 'customers', '2020-01-16 04:57:05', '2020-01-29 14:01:06'),
(7, 'Our Team', 'Our Team', NULL, 'Our Team', NULL, NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, NULL, 1, 'team', '2020-01-16 06:04:24', '2020-05-22 03:54:21'),
(8, 'Blog', 'Blog List', 'Blog List', 'Blog List', 'Blog List', NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, NULL, 1, 'blog', '2020-01-21 04:27:41', '2020-01-21 04:27:41'),
(9, 'SEND A MESSAGE', '24/7 CUSTOMER SERVICES', 'VISIT HEAD OFFICE', '24/7 Free HelpLine', 'We usually reply within 24 hours', NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>Fell free to Contract with us.We are available in Phone,Email,Whatsapp,Viber.</p>\r\n</body>\r\n</html>', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>Fell free to Contract with us.We are available in Phone,Email,Whatsapp,Viber.</p>\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, NULL, 1, 'contacts', '2020-01-29 03:58:15', '2020-01-29 04:05:33'),
(10, 'TIME ZONE', 'TIME ZONE', NULL, 'TIME ZONE', NULL, NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>Is the only authorized point for sales &amp; customer care in Bangladesh for the watch brands Rado, Tissot, Longines, CK, Swatch, Seiko, Citizen, Casio, Titan, Timex, Tommy Hilfiger, and more. There are 42 time zones strategically located at the entrances of key shopping malls and 5-star hotels. Time zones maintain an international standard interior, with uniform looking point of sales with an elegant outlook and ambiance. It is operated by trained sales &amp; customer care officers.</p>\r\n</body>\r\n</html>', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>Is the only authorized point for sales &amp; customer care in Bangladesh for the watch brands Rado, Tissot, Longines, CK, Swatch, Seiko, Citizen, Casio, Titan, Timex, Tommy Hilfiger, and more. There are 42 time zones strategically located at the entrances of key shopping malls and 5-star hotels. Time zones maintain an international standard interior, with uniform looking point of sales with an elegant outlook and ambiance. It is operated by trained sales &amp; customer care officers.</p>\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, NULL, 1, 'timeZone', '2020-02-12 05:14:25', '2020-02-12 05:50:16'),
(11, 'Contact Address', 'OUR HEAD OFFICE', 'CONTACT INFORMATION', NULL, NULL, NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<h3><span style=\"color: #000000;\">Want to talk<span style=\"color: #ff6600;\">&nbsp;in person</span>? Call us or visit us</span></h3>\r\n<p class=\"text-muted mb-5\">If you have any query regarding our business, marketing or human resources, please contact from the links below.</p>\r\n</body>\r\n</html>', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, NULL, 1, 'contactAddress', '2020-02-13 05:12:27', '2020-02-13 05:12:27');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(11) UNSIGNED NOT NULL,
  `root_menu` int(11) DEFAULT NULL,
  `parent` int(11) DEFAULT NULL,
  `menuName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `articleName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentArticle` int(11) DEFAULT NULL,
  `firstHomeTitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `firstHomeImage` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `homeDescription` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `urlLink` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menuIcon` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metaTitle` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metaKeyword` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metaDescription` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orderBy` int(11) DEFAULT NULL,
  `menuStatus` int(11) NOT NULL DEFAULT 1,
  `showInMenu` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  `showInFooterMenu` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `root_menu`, `parent`, `menuName`, `articleName`, `parentArticle`, `firstHomeTitle`, `firstHomeImage`, `homeDescription`, `urlLink`, `menuIcon`, `metaTitle`, `metaKeyword`, `metaDescription`, `orderBy`, `menuStatus`, `showInMenu`, `showInFooterMenu`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, 'About US', 'About US', NULL, 'About US', NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, 1, 1, 'yes', 'no', '2020-02-10 22:49:06', '2020-02-10 22:49:06'),
(2, NULL, NULL, 'Company', 'Company', NULL, 'Company', NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, 2, 1, 'yes', 'no', '2020-02-10 22:50:03', '2020-09-18 22:37:36'),
(3, NULL, NULL, 'Brands', 'Brands', NULL, 'Brands', 'public/uploads/menus/kites_67761651592.png', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, 3, 0, 'yes', 'no', '2020-02-10 22:50:31', '2020-06-10 15:15:31'),
(4, NULL, NULL, 'Gallery', 'Gallery', NULL, 'Gallery', NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, 4, 1, 'yes', 'no', '2020-02-10 22:50:49', '2020-02-10 22:50:49'),
(5, 1, 1, 'Corporate Overview', 'History', 1, 'Corporate Overview', NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, 1, 1, 'yes', 'no', '2020-02-10 22:52:33', '2020-05-22 09:19:18'),
(6, 1, 1, 'Value', 'Value', 1, 'Value', NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, 2, 0, 'yes', 'no', '2020-02-10 22:52:53', '2020-05-22 09:17:57'),
(9, 1, 1, 'Mission / Vision', 'Mission / Mission', 1, 'Mission / Mission', NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, 3, 0, 'yes', 'no', '2020-02-11 05:26:00', '2020-05-22 09:17:59'),
(11, 1, 1, 'Recognition', 'Recognition', NULL, 'Recognition', NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, 5, 1, 'yes', 'no', '2020-02-11 06:12:47', '2020-05-22 09:25:57'),
(12, 2, 2, 'Kites', 'Manufacturing', 2, 'Kites', 'public/uploads/menus/WhatsApp Image 2020-06-18 at 11.25.28 AM (1)_47032924848.jpeg', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', 'http://kitesfashion.com/', NULL, NULL, NULL, NULL, 1, 1, 'yes', 'no', '2020-02-11 06:15:44', '2020-09-18 22:39:09'),
(13, 2, 2, 'Export & Import', 'Joint Venture', 2, 'Export & Import', 'public/uploads/menus/WhatsApp Image 2020-06-18 at 11.25.27 AM (1)_42697814353.jpeg', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', 'http://nebcbd.net/Gallery/4', NULL, NULL, NULL, NULL, 2, 1, 'yes', 'no', '2020-02-11 06:16:32', '2020-06-18 09:56:15'),
(14, 2, 2, 'Education', 'Retailing', 2, 'Education', 'public/uploads/menus/Untitled-2_55639551209_28451354908_95830730536.png', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', 'http://bglc.net/', NULL, NULL, NULL, NULL, 4, 1, 'yes', 'no', '2020-02-11 06:17:13', '2020-06-14 14:51:39'),
(15, 3, 3, 'Kites', 'FMCG', 3, 'Kites', 'public/uploads/menus/kites_53754521911.png', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', 'http://kitesnebc.com/', NULL, NULL, NULL, NULL, 1, 1, 'yes', 'no', '2020-02-11 06:17:52', '2020-03-15 15:33:47'),
(16, 3, 3, 'Watch & Writing Instrument', 'Watch & Writing Instrument', 3, 'Watch & Writing Instrument', NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, 2, 0, 'yes', 'no', '2020-02-11 06:18:26', '2020-03-14 13:03:09'),
(17, NULL, NULL, 'Sister Concern', 'Sister Concern', NULL, 'Sister Concern', NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, 6, 0, 'yes', 'no', '2020-02-11 06:19:21', '2020-02-13 06:32:00'),
(18, NULL, NULL, 'Contact Us', 'Contact Us', NULL, 'Contact Us', NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, 7, 1, 'yes', 'no', '2020-02-11 06:19:53', '2020-02-11 06:19:53'),
(20, 2, 2, 'Healthcare', 'Trading', 2, 'Healthcare', 'public/uploads/menus/WhatsApp Image 2020-06-18 at 11.25.28 AM_38742671935.jpeg', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', 'http://nebcbd.net/Gallery/4', NULL, NULL, NULL, NULL, 3, 1, 'yes', 'no', '2020-02-12 02:36:12', '2020-06-18 09:57:58'),
(21, 2, 2, 'Automobiles', 'Future Projects', NULL, 'Automobiles', 'public/uploads/menus/WhatsApp Image 2020-06-18 at 11.25.27 AM_54309053271.jpeg', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>Kallol is in the process of developing a mixed use hospitality project &ndash; a 5-star hotel chain, office complex and service apartment. The land required for the project has been acquired and necessary permission from the government authorities has already been obtained.</p>\r\n</body>\r\n</html>', 'http://nebcbd.net/Gallery/4', NULL, NULL, NULL, NULL, 5, 1, 'yes', 'no', '2020-02-12 05:53:13', '2020-06-18 09:58:17'),
(22, 2, 2, 'Online Shop', 'Business Associates', 2, 'Online Shop', 'public/uploads/menus/WhatsApp Image 2020-06-10 at 11.50.17 AM_80958059359.jpeg', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', 'http://shopnbuy.com.bd/', NULL, NULL, NULL, NULL, 6, 1, 'yes', 'no', '2020-02-12 05:55:21', '2020-09-18 22:41:18'),
(23, 2, 2, 'NEBC AGRO', 'Network', 2, 'NEBC AGRO', 'public/uploads/menus/WhatsApp-Image-2020-06-10-at-11.50_98680038612.png', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', 'http://nebcbd.net/Gallery/4', NULL, NULL, NULL, NULL, 7, 1, 'yes', 'no', '2020-02-12 05:55:54', '2020-09-19 00:44:22'),
(24, NULL, NULL, 'International Office', 'International Office', NULL, 'International Office', NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, 6, 1, 'yes', 'no', '2020-05-17 19:34:51', '2020-05-17 19:34:51'),
(25, 1, 1, 'Chairman Message', 'Chairman Message', 1, 'Chairman Message', NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, 2, 1, 'yes', 'no', '2020-05-22 09:21:22', '2020-05-22 09:21:22'),
(26, 1, 1, 'Team Management', 'Team Management', 1, 'Team Management', NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, 3, 1, 'yes', 'no', '2020-05-22 09:22:04', '2020-05-22 09:22:04'),
(27, 1, 1, 'Philosophy', 'Philosophy', 1, 'Philosophy', NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, 4, 1, 'yes', 'no', '2020-05-22 09:23:33', '2020-05-22 09:23:33'),
(28, 2, 2, 'NEBC NON WOVEN BAG & FABRIC', 'NEBC NON WOVEN BAG & FABRIC', 2, 'NEBC NON WOVEN BAG & FABRIC', 'public/uploads/menus/WhatsApp-Image-2020-06-11-at-8.17_54423943161.png', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', 'http://nebcbd.net/Gallery/4', NULL, NULL, NULL, NULL, 8, 1, 'yes', 'no', '2020-06-09 11:44:44', '2020-06-18 08:41:11'),
(31, 2, 2, 'Tours & Travels', 'Tours & Travels', 2, 'Tours & Travels', 'public/uploads/menus/Tour & Travel logo_74270404863.png', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<h1><strong>Tours &amp; Travels WebSite Upcomming</strong></h1>\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, 16, 1, 'yes', 'no', '2020-09-19 00:51:17', '2020-09-19 00:53:27'),
(32, NULL, NULL, 'Service', 'Server', NULL, 'Service', NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, 3, 1, 'yes', 'no', '2020-09-19 00:55:29', '2020-09-19 00:56:32'),
(34, 32, 32, 'Indian Train Tickets', 'Indian Train Tickets', 32, 'Indian Train Tickets', NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, NULL, 'Indian Train Tickets', 'Indian Train Tickets', 'Indian Train Tickets', 4, 1, 'yes', 'no', '2020-09-19 01:03:46', '2020-09-19 04:59:32'),
(35, 32, 32, 'Medical Visa', 'Medical Visa', 32, 'Medical Visa', NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, NULL, 'Medical Visa – Traveling to Europe to Get Medical ...', 'Medical Visa – Traveling to Europe to Get Medical ...', 'Medical Visa – Traveling to Europe to Get Medical ...', 2, 1, 'yes', 'no', '2020-09-19 01:05:11', '2020-09-19 04:58:52'),
(36, 32, 32, 'Student Visa', 'Student Visa', 32, 'Student Visa', NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, NULL, 'Student Visa', 'Student Visa', 'Student Visa', 1, 1, 'yes', 'no', '2020-09-19 01:06:07', '2020-09-19 04:58:29'),
(37, 32, 32, 'hotel booking', 'hotel booking', 32, 'hotel booking', NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, NULL, 'hotel booking', 'hotel booking', 'hotel booking', 5, 1, 'yes', 'no', '2020-09-19 01:07:02', '2020-09-19 01:07:02'),
(38, 32, 32, 'foreign doctor appointment', 'foreign doctor appointment & booking', 32, 'Foreign Doctor Appointment', NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, NULL, 'foreign doctor appointment & booking', 'foreign doctor appointment & booking', 'foreign doctor appointment & booking', 7, 1, 'yes', 'no', '2020-09-19 01:09:06', '2020-09-19 05:00:46'),
(45, 32, 32, 'Air Tickets', 'Air Tickets', 32, 'Air Tickets', NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>ffffffffffffffffffff</p>\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, 3, 1, 'yes', 'no', '2020-09-19 04:56:45', '2020-09-19 04:59:21');

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
(3, '2018_07_02_180455_create_categories_table', 1),
(4, '2018_07_13_130624_create_sub_categories_table', 1),
(5, '2018_07_14_141212_create_products_table', 1),
(6, '2018_07_18_172951_create_customers_table', 1),
(7, '2018_07_18_173018_create_shippings_table', 1),
(8, '2018_07_18_173045_create_checkouts_table', 1),
(9, '2018_07_18_173051_create_orders_table', 1),
(10, '2018_07_18_173115_create_transactions_table', 1),
(11, '2018_07_21_144649_create_contactuses_table', 1),
(12, '2018_07_22_211328_create_admins_table', 1),
(13, '2018_07_27_082321_create_careers_table', 1),
(14, '2018_07_27_103118_create_teams_table', 1),
(15, '2018_07_27_111833_create_sliders_table', 1),
(16, '2019_01_06_085032_create_packages_table', 1),
(17, '2019_03_13_120816_create_menus_table', 2),
(18, '2019_03_13_121439_create_menus_table', 3),
(19, '2018_11_17_160100_create_verifies_customers_table', 4),
(20, '2018_11_17_160100_create_verify_customers_table', 5),
(21, '2019_03_19_065715_create_settings_table', 6),
(22, '2018_07_02_180455_create_policies_table', 7),
(23, '2018_07_02_180455_create_banners_table', 8),
(24, '2019_03_27_075039_create_product_sections_table', 9),
(25, '2019_03_28_062230_create_product_sections_table', 10),
(26, '2019_03_30_094825_create_socials_table', 11),
(27, '2019_03_30_181906_create_product_sections_table', 12),
(28, '2019_04_03_083641_create_contacts_table', 13),
(29, '2019_04_03_104734_create_reviews_table', 14),
(30, '2019_04_03_105403_create_reviews_table', 15),
(31, '2019_04_04_111431_create_abouts_table', 16),
(32, '2019_04_04_112139_create_abouts_table', 17),
(33, '2019_04_07_042104_create_product_images_table', 18),
(34, '2019_04_05_060258_create_faqs_table', 19),
(35, '2019_04_09_072500_create_delivery_policies_table', 20),
(36, '2019_04_09_075441_create_payment_policies_table', 21),
(37, '2019_04_09_090821_create_refund_policies_table', 22),
(38, '2019_04_10_061020_create_help_centers_table', 22),
(39, '2019_04_10_071450_create_terms_table', 23),
(40, '2019_04_10_073726_create_blogs_table', 24),
(41, '2019_04_10_101945_create_newsletters_table', 25),
(42, '2019_04_17_062734_create_user_roles_table', 26),
(43, '2019_06_15_064819_create_shipping_charges_table', 27),
(44, '2019_06_16_100518_create_invoice_table', 28),
(45, '2019_07_14_074721_create_customer_group_section_table', 29),
(46, '2019_07_14_075751_create_customer_group_sections_table', 30),
(47, '2019_08_31_064148_create_vendors_table', 31),
(48, '2019_09_03_065923_create_cash_purchase_table', 32),
(49, '2019_09_03_070746_create_cash_purchase_item_table', 33),
(50, '2019_09_04_060034_create_credit_purchases_table', 34),
(51, '2019_09_04_060941_create_credit_purchase_items_table', 34),
(52, '2019_09_04_100454_create_purchase_order_items_table', 35),
(53, '2019_09_04_100609_create_purchase_orders_table', 35),
(54, '2019_09_05_053849_create_purchase_order_receives_table', 36),
(55, '2019_09_05_054156_create_purchase_order_receive_items_table', 36),
(56, '2019_09_05_095924_create_supplier_payments_table', 37),
(57, '2019_09_07_070859_create_purchase_returns_table', 38),
(58, '2019_09_07_071132_create_purchase_return_items_table', 38);

-- --------------------------------------------------------

--
-- Table structure for table `newsletters`
--

CREATE TABLE `newsletters` (
  `id` int(10) UNSIGNED NOT NULL,
  `subscribeEmail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `other_information`
--

CREATE TABLE `other_information` (
  `id` int(11) NOT NULL,
  `homeLogo` varchar(255) DEFAULT NULL,
  `homeFavIcon` varchar(255) DEFAULT NULL,
  `categoryCoverImage` varchar(255) DEFAULT NULL,
  `categoryImage` varchar(255) DEFAULT NULL,
  `sliderImage` varchar(255) DEFAULT NULL,
  `teamMemberImage` varchar(255) DEFAULT NULL,
  `testimonialImage` varchar(255) DEFAULT NULL,
  `partnerImage` varchar(255) DEFAULT NULL,
  `articleHomeImage` varchar(255) DEFAULT NULL,
  `articleInnerImage` varchar(255) DEFAULT NULL,
  `adminMainLogo` varchar(255) DEFAULT NULL,
  `adminSmallLogo` varchar(255) DEFAULT NULL,
  `adminFavIcon` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `other_information`
--

INSERT INTO `other_information` (`id`, `homeLogo`, `homeFavIcon`, `categoryCoverImage`, `categoryImage`, `sliderImage`, `teamMemberImage`, `testimonialImage`, `partnerImage`, `articleHomeImage`, `articleInnerImage`, `adminMainLogo`, `adminSmallLogo`, `adminFavIcon`, `created_at`, `updated_at`) VALUES
(1, '262*480 px', '50*100 px', NULL, NULL, '1920*858 px', 'width:250 px Height:220 px', '200*100 px', '130*70 px', '960*601 px', '960*601 px', '200*100 px', '200*100 px', '200*100 px', NULL, '2020-09-19 01:21:30');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('jisanahmed06@gmail.com', '$2y$10$39ex0T8QTrw7E5LkLNAJhu48bFuuIiN7.Q4iuH77kORw8uNdvCyV2', '2019-08-31 04:34:45'),
('jisanahmed06@gmail.com', '$2y$10$39ex0T8QTrw7E5LkLNAJhu48bFuuIiN7.Q4iuH77kORw8uNdvCyV2', '2019-08-31 04:34:45');

-- --------------------------------------------------------

--
-- Table structure for table `photo_galleries`
--

CREATE TABLE `photo_galleries` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orderBy` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `photo_galleries`
--

INSERT INTO `photo_galleries` (`id`, `category_id`, `title`, `image`, `description`, `orderBy`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'NEBC AUTOMOBILE', 'public/uploads/photo_galleries/WhatsApp Image 2020-06-11 at 3.55.03 PM_17548786069.jpeg', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', 1, 1, '2020-02-12 07:05:14', '2020-06-11 17:00:58'),
(2, 1, 'NEBC AUTOMOBILE', 'public/uploads/photo_galleries/WhatsApp Image 2020-06-11 at 3.55.03 PM (1)_95126839069.jpeg', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', 2, 1, '2020-02-12 07:05:34', '2020-06-11 17:01:05'),
(4, 2, 'KITES', 'public/uploads/photo_galleries/WhatsApp Image 2020-06-11 at 3.55.04 PM (1)_59063340145.jpeg', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', 3, 1, '2020-06-11 15:32:14', '2020-06-11 17:01:15'),
(5, 2, 'KITES', 'public/uploads/photo_galleries/WhatsApp Image 2020-06-11 at 3.55.04 PM_50570619062.jpeg', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', 4, 1, '2020-06-11 15:32:41', '2020-06-11 17:01:23'),
(6, 2, 'KITES', 'public/uploads/photo_galleries/WhatsApp Image 2020-06-11 at 3.55.05 PM (1)_84034272964.jpeg', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', 5, 1, '2020-06-11 15:33:13', '2020-06-11 17:01:35'),
(7, 2, 'KITES', 'public/uploads/photo_galleries/WhatsApp Image 2020-06-11 at 3.55.05 PM (2)_87618053478.jpeg', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', 6, 1, '2020-06-11 15:33:54', '2020-06-11 17:01:44'),
(8, 2, 'KITES', 'public/uploads/photo_galleries/WhatsApp Image 2020-06-11 at 3.55.05 PM_23141359370.jpeg', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', 7, 1, '2020-06-11 15:34:54', '2020-06-11 17:01:55'),
(9, 3, 'NEBC HEALTHCARE', 'public/uploads/photo_galleries/WhatsApp Image 2020-06-11 at 3.55.06 PM_38336694714.jpeg', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', 8, 1, '2020-06-11 15:38:50', '2020-06-11 17:02:39'),
(10, 3, 'NEBC HEALTHCARE', 'public/uploads/photo_galleries/WhatsApp Image 2020-06-11 at 3.55.07 PM (1)_66469365300.jpeg', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', 9, 1, '2020-06-11 15:39:04', '2020-06-11 17:02:52'),
(11, 3, 'NEBC HEALTHCARE', 'public/uploads/photo_galleries/WhatsApp Image 2020-06-11 at 3.55.07 PM_10223455322.jpeg', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', 10, 1, '2020-06-11 15:40:44', '2020-06-11 17:03:00'),
(12, 3, 'NEBC HEALTHCARE', 'public/uploads/photo_galleries/WhatsApp Image 2020-06-11 at 3.55.08 PM_60885904739.jpeg', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', 11, 1, '2020-06-11 15:48:05', '2020-06-11 17:03:11'),
(13, 4, 'Bangladesh Global Learning Center', 'public/uploads/photo_galleries/WhatsApp Image 2020-06-11 at 3.55.08 PM (1)_7674289380.jpeg', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', 12, 1, '2020-06-11 15:50:03', '2020-06-11 17:03:36'),
(14, 4, 'Bangladesh Global Learning Center', 'public/uploads/photo_galleries/WhatsApp Image 2020-06-11 at 3.55.09 PM_59925824385.jpeg', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', 13, 1, '2020-06-11 15:50:29', '2020-06-11 17:03:47'),
(15, 4, 'Bangladesh Global Learning Center', 'public/uploads/photo_galleries/WhatsApp Image 2020-06-11 at 3.55.09 PM (1)_10137330065.jpeg', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', 14, 1, '2020-06-11 15:51:17', '2020-06-11 17:03:56'),
(16, 5, 'NEBC EXPORT IMPORT', 'public/uploads/photo_galleries/WhatsApp Image 2020-06-11 at 3.55.10 PM_63287571137.jpeg', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', 15, 1, '2020-06-11 15:52:43', '2020-06-11 17:04:13'),
(17, 5, 'NEBC EXPORT IMPORT', 'public/uploads/photo_galleries/WhatsApp Image 2020-06-11 at 3.55.11 PM_75354168591.jpeg', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', 16, 1, '2020-06-11 15:53:08', '2020-06-11 17:04:24'),
(18, 6, 'SHOP N BUY', 'public/uploads/photo_galleries/WhatsApp Image 2020-06-11 at 3.55.11 PM (1)_73554575558.jpeg', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', 17, 1, '2020-06-11 15:54:06', '2020-06-11 17:04:36'),
(19, 6, 'SHOP N BUY', 'public/uploads/photo_galleries/WhatsApp Image 2020-06-11 at 3.55.12 PM (1)_39058802613.jpeg', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', 18, 1, '2020-06-11 15:54:26', '2020-06-11 17:04:47'),
(20, 6, 'SHOP N BUY', 'public/uploads/photo_galleries/WhatsApp Image 2020-06-11 at 3.55.12 PM_3043956183.jpeg', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', 19, 1, '2020-06-11 15:54:48', '2020-06-11 17:04:56'),
(21, 7, 'NEBC AGRO', 'public/uploads/photo_galleries/WhatsApp Image 2020-06-11 at 3.55.13 PM (1)_65446435851.jpeg', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', 20, 1, '2020-06-11 15:55:32', '2020-06-11 17:05:08'),
(22, 7, 'NEBC AGRO', 'public/uploads/photo_galleries/WhatsApp Image 2020-06-11 at 3.55.13 PM_8430988197.jpeg', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', 21, 1, '2020-06-11 15:55:45', '2020-06-11 17:05:34'),
(23, 7, 'NEBC AGRO', 'public/uploads/photo_galleries/WhatsApp Image 2020-06-11 at 3.55.14 PM (1)_57414810770.jpeg', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', 22, 1, '2020-06-11 15:56:17', '2020-06-11 17:05:45'),
(24, 7, 'NEBC AGRO', 'public/uploads/photo_galleries/WhatsApp Image 2020-06-11 at 3.55.14 PM_13512256422.jpeg', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', 23, 1, '2020-06-11 15:56:31', '2020-06-11 17:05:55'),
(25, 8, 'NEBC NON OVEN FABRIC & BAG', 'public/uploads/photo_galleries/WhatsApp Image 2020-06-11 at 3.55.15 PM (1)_65992468043.jpeg', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', 24, 1, '2020-06-11 15:57:04', '2020-06-11 17:06:06'),
(26, 8, 'NEBC NON OVEN FABRIC & BAG', 'public/uploads/photo_galleries/WhatsApp Image 2020-06-11 at 3.55.15 PM_54317591845.jpeg', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', 25, 1, '2020-06-11 15:57:18', '2020-06-11 17:06:21'),
(27, 8, 'NEBC NON OVEN FABRIC & BAG', 'public/uploads/photo_galleries/WhatsApp Image 2020-06-11 at 3.55.16 PM_99029257537.jpeg', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', 26, 1, '2020-06-11 15:57:34', '2020-06-11 17:06:34');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) UNSIGNED NOT NULL,
  `menuId` int(11) DEFAULT NULL,
  `categoryId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `firstHomeTitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secondHomeTitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `firstInnerTitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secondInnerTitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `firstHomeImage` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `firstInnerImage` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `homeDescription` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `innerDescription` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `urlLink` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `articleIcon` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metaTitle` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metaKeyword` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metaDescription` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orderBy` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `menuId`, `categoryId`, `name`, `firstHomeTitle`, `secondHomeTitle`, `firstInnerTitle`, `secondInnerTitle`, `firstHomeImage`, `firstInnerImage`, `homeDescription`, `innerDescription`, `urlLink`, `articleIcon`, `metaTitle`, `metaKeyword`, `metaDescription`, `orderBy`, `status`, `created_at`, `updated_at`) VALUES
(2, 15, 1, 'Jet', NULL, NULL, NULL, NULL, 'public/uploads/products/home/1560676296jetNew_16222569240.png', NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>Jet, one of the most successful brands in the detergent category in Bangladesh, was acquired by Kallol in June 2005. For half a century it has been taking special care of clothes, and today Jet has almost become a generic name for the category itself due to its popularity.</p>\r\n<p>Jet has 2 variants: classic Jet, which is aqua in color and stands out due to its properties, heritage and unique color. Gentle on clothes, classic Jet cleans and softens fabric and increases the longevity of clothes; they remain as bright and good as new after many washes.</p>\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2020-02-12 23:58:55', '2020-02-13 01:50:01'),
(3, 15, 2, 'Camelia & Aromatic', NULL, NULL, NULL, NULL, 'public/uploads/products/home/1557124518camelia_98389338882.jpg', NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>Camellia, a renowned beauty bathing bar has been acquired by Kallol in 2013. It entered the market in different colors and attractive fragrances which help to keep the skin fresh all day long. Lion Corporation, Japan is providing technical assistance to introduce quality soap in Bangladesh.</p>\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, '2020-02-13 00:13:24', '2020-02-13 00:13:24'),
(4, 15, 3, 'Lotte', NULL, NULL, NULL, NULL, 'public/uploads/products/home/1560676496lotte_1023246597.png', NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>KGC has started to retail Lotte products in Bangladesh: Koala&rsquo;s March chocolate filled biscuits, Xylitol gum, Fusen No Mi bubble gum and Lotte stick gum from 2018. Koala&rsquo;s March was born in Japan. It is a delicious chocolate filled biscuit confectionary that uses a cute and friendly koala character, printed on the biscuit.<br /> Xylitol gum has been proven to be a great way to help healthy teeth. Chewing gum containing xylitol can help increase the accumulation of potassium and phosphate, which is a component of dentin, and can help to restore teeth and prevent tooth cavities. Fusen No Mi bubble gum has several different varieties: orange, strawberry, blueberry, cola lemon and lychee, mixed fruit. And Lotte stick gum is the no.1 chewing gum in Asia.</p>\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, '2020-02-13 00:14:40', '2020-02-13 00:14:40'),
(5, 15, 2, 'Fay Air freshener', NULL, NULL, NULL, NULL, 'public/uploads/products/home/1557124611fayAir_33767187098.jpg', NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>Fay Air Freshener was introduced to the nation in the year 2006, with a wide variety of fragrances: Anti- Tobacco, Orchid, Jasmine, Rose, Lily, Lime, Lavender, Magnolia, Sea Minerals, Narcissus, Ballerina, Cotton, Lemon Grass, Vanilla, Oriental and more.&lt;br&gt;&lt;br&gt; We are very selective about choosing the fragrances so after multiple stages of consumer attitude and usage surveys, the fragrances Ballerina, Cotton, Lemon Grass, Vanilla and Oriental were introduced; all of which are long-lasting fragrances.</p>\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, NULL, 4, 1, '2020-02-13 00:15:36', '2020-02-13 00:15:36'),
(6, 16, 4, 'Calvin Klein', NULL, NULL, NULL, NULL, 'public/uploads/products/home/15563730455_98346024629.jpg', NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>Calvin Klein Inc. is an American fashion house founded by designer Calvin Klein and childhood friend Barry K. Schwartz. The company is headquartered in Midtown Manhattan, New York City and is currently owned by PVH. Calvin Klein offers modern, sophisticated styles for women and men. <br /> &lt;br&gt;&lt;br&gt;Since 2012, Kallol represents the brand in Bangladesh through its own distribution network and retail chain &lsquo;Time Zone&rsquo;</p>\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2020-02-13 03:04:11', '2020-02-13 03:04:11'),
(7, 16, 4, 'Timex', NULL, NULL, NULL, NULL, 'public/uploads/products/home/1580979028rado_8453952123.jpg', NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>Timex Group USA, Inc. is an American manufacturing company founded in 1854. The company is now a wholly owned subsidiary of the Dutch conglomerate Timex Group B.V. Known as the watches that &lsquo;take a licking and keep on ticking&rsquo;; Timex has the style for everyone with a large and varied line of watches. <br /> <br /><br />Since 1996, Kallol represents the brand in Bangladesh through its own distribution network and retail chain &lsquo;Time Zone&rsquo;.</p>\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, '2020-02-13 03:07:07', '2020-02-13 03:17:40'),
(8, 16, 5, 'Cross', NULL, NULL, NULL, NULL, 'public/uploads/products/home/1557126827p5_72887219326.jpg', NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p><br /> For more than 166 years, Cross has re-invented writing instruments, combining design ingenuity with jewelry-quality craftsmanship. A wide range of models are available in all of Kallol&rsquo;s own Sales centers &lsquo;Time Zone&rsquo; and in all authorized dealers appointed by Kallol.</p>\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, NULL, 7, 1, '2020-02-13 03:18:40', '2020-02-13 03:18:40');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `customerId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `review` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `star` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `siteTitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `titlePrefix` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `siteName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `siteLogo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sitefavIcon` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adminTitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adminLogo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adminsmalLogo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adminfavIcon` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile1` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile2` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `siteEmail1` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `siteEmail2` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `siteAddress1` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `siteAddress2` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `copyright1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `copyright2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sitestatus` int(11) DEFAULT NULL,
  `metaTitle` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metaKeyword` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metaDescription` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orderBy` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `siteTitle`, `titlePrefix`, `siteName`, `siteLogo`, `sitefavIcon`, `adminTitle`, `adminLogo`, `adminsmalLogo`, `adminfavIcon`, `mobile1`, `mobile2`, `siteEmail1`, `siteEmail2`, `siteAddress1`, `siteAddress2`, `copyright1`, `copyright2`, `sitestatus`, `metaTitle`, `metaKeyword`, `metaDescription`, `orderBy`, `created_at`, `updated_at`) VALUES
(1, 'Creating Tomorrow and Beyond', '||', 'NEBL', 'public/uploads/site_logo/logo/NEBL Logo_13964734604.png', 'public/uploads/site_logo/fav_icon/Nebl_47217775709.png', 'Admin', 'public/uploads/admin_logo/main_logo/NEBL Logo_59912250496.png', 'public/uploads/admin_logo/small_logo/Nebl_68110865667.png', 'public/uploads/admin_logo/fav_icon/Nebl_10007302000.png', '+88 01778311111', '+88 01778322222', 'info@neblbd.com', 'info@neblbd.com', 'La-Montana, House #33,', 'Road: Gareeb-E-Newaz Avenue,    <br>\r\nSector:11,Uttara,Dhaka-1230,Bangladesh.', NULL, NULL, NULL, 'Kites', 'Garments manufacturer,Best garments supplier of bangladesh,Bangladesh best garments supplier,Quality garments manufacturer,Ready made garments manufacturer,World best garments supplier', 'KITES is a leading garments Buying, Manufacturer and exporter in Bangladesh. We provide our quality garments to many internationally reputable', NULL, NULL, '2020-09-19 06:12:17');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(10) UNSIGNED NOT NULL,
  `firstTitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secondTitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `section` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `metaTitle` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metaKeyword` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metaDescription` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orderBy` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `firstTitle`, `secondTitle`, `description`, `image`, `productId`, `section`, `link`, `status`, `metaTitle`, `metaKeyword`, `metaDescription`, `orderBy`, `created_at`, `updated_at`) VALUES
(3, NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', 'public/uploads/slider_image/NEW2_85095804176.png', NULL, NULL, NULL, 1, NULL, NULL, NULL, 1, '2020-02-11 03:01:17', '2020-03-15 11:04:49');

-- --------------------------------------------------------

--
-- Table structure for table `social_links`
--

CREATE TABLE `social_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `orderBy` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `social_links`
--

INSERT INTO `social_links` (`id`, `name`, `icon`, `link`, `status`, `orderBy`, `created_at`, `updated_at`) VALUES
(3, 'Faccebook', 'fab fa-facebook-f', 'https://www.facebook.com', 1, 2, '2019-12-01 05:54:34', '2020-03-14 13:05:49'),
(4, 'Twiteer', 'fab fa-twitter', 'https://twitter.com', 0, 7, '2019-12-01 05:56:55', '2020-03-14 13:06:17'),
(5, 'whatsapp', 'fab fa-whatsapp', 'https://www.whatsapp.com/', 1, 1, '2020-01-11 04:12:44', '2020-03-14 13:06:07'),
(6, 'Linkdin', 'fab fa-linkedin-in', 'https://bd.linkedin.com/', 0, 4, '2020-01-11 04:13:04', '2020-03-14 13:07:37'),
(7, 'Instagram', 'fab fa-instagram', 'https://www.instagram.com/', 0, 5, '2020-01-11 04:13:29', '2020-03-14 13:07:38'),
(8, 'Google Plus', 'fab fa-google-plus-g', 'http://facebook.com/', 0, 6, '2020-02-11 04:47:23', '2020-03-14 13:07:40'),
(9, 'Viber', 'fab fa-viber', 'viber://contact?number=01778311111', 1, 3, '2020-03-14 13:07:06', '2020-03-14 13:07:22');

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` int(10) UNSIGNED NOT NULL,
  `teamCategory` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `designation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twiteer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `skype` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_plus` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orderBy` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `teamCategory`, `name`, `email`, `phone`, `designation`, `image`, `description`, `facebook`, `twiteer`, `linkedin`, `instagram`, `skype`, `google_plus`, `orderBy`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Dr. H.N Ashikur Rahaman', 'chairman@nebcbd.net', NULL, 'Chairman', 'public/uploads/teams/WhatsApp Image 2020-02-21 at 9.34.59 PM_38474287893_28931263159.jpeg', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2020-05-22 04:04:42', '2020-06-09 10:33:55'),
(2, NULL, 'Kawsar Ahmed Parvez', 'ed@nebcbd.net', NULL, 'Executive Director', 'public/uploads/teams/IMG-20200120-WA0000_45937824826_90318196640.png', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, '2020-05-22 04:30:30', '2020-06-09 10:35:00'),
(3, NULL, 'Dr. A. K. Al Miraj', 'directorplanning@nebcbd.net', '+8801711487410', 'Director(planning)', 'public/uploads/teams/WhatsApp Image 2020-01-27 at 4.17.36 PM_79422229603_3178320731.jpeg', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, '2020-06-09 10:36:14', '2020-06-09 10:37:22'),
(4, NULL, 'M. A. Wadud', 'director@nebcbd.net', NULL, 'Director', 'public/uploads/teams/IMG-20200103-WA0000_43444816592_73359849549.jpg', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, NULL, 4, 1, '2020-06-09 10:37:14', '2020-06-09 10:37:14'),
(5, NULL, 'Mr.Hasanuzzaman Khan', NULL, NULL, 'CEO of Australia', NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, NULL, 6, 1, '2020-06-11 15:59:34', '2020-06-11 19:42:46'),
(6, NULL, 'Mr.Younus', NULL, NULL, 'CEO of USA', NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, NULL, 6, 1, '2020-06-11 16:00:03', '2020-06-11 16:03:01'),
(7, NULL, 'Mr.Iqbal Hossain', NULL, NULL, 'CEO of Malaysia', NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, NULL, 7, 1, '2020-06-11 16:01:21', '2020-06-11 16:01:39'),
(8, NULL, 'Mr.Mubarak Hossain', NULL, NULL, 'CEO of OMAN', NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, NULL, 8, 1, '2020-06-11 16:02:06', '2020-06-11 16:02:06'),
(9, NULL, 'Mr.Faisal', NULL, NULL, 'CEO of Sweden', NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, NULL, 10, 1, '2020-06-11 16:02:36', '2020-06-11 16:02:36'),
(10, NULL, 'MD Mostafizur Rahman', NULL, NULL, 'Chief Operating Officer', 'public/uploads/teams/WhatsApp Image 2020-06-11 at 9.06.33 PM_52875284382.jpeg', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, NULL, 5, 0, '2020-06-11 19:31:48', '2020-06-14 13:20:26'),
(11, NULL, 'MD Mostafizur Rahman', NULL, NULL, 'Chief Operating Officer', 'public/uploads/teams/WhatsApp Image 2020-06-11 at 9.40.22 PM_20199589002.jpeg', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, NULL, 5, 1, '2020-06-11 19:41:51', '2020-06-11 19:41:51');

-- --------------------------------------------------------

--
-- Table structure for table `team_category`
--

CREATE TABLE `team_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orderBy` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `information` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orderBy` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `name`, `country`, `information`, `image`, `description`, `orderBy`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>NEBL offers consumers the highest levels of satisfaction through high standard and quality services available throughout the country.</p>\r\n</body>\r\n</html>', 1, 1, '2020-02-11 04:27:07', '2020-09-19 05:59:25');

-- --------------------------------------------------------

--
-- Table structure for table `time_zone`
--

CREATE TABLE `time_zone` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile1` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile2` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `siteEmail1` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `siteEmail2` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `siteAddress1` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `siteAddress2` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orderBy` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `time_zone`
--

INSERT INTO `time_zone` (`id`, `name`, `mobile1`, `mobile2`, `siteEmail1`, `siteEmail2`, `siteAddress1`, `siteAddress2`, `image`, `orderBy`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Dhaka New Market', '01678007471', NULL, NULL, NULL, 'Govt .New Market,Level-1', 'Shop# 327 Dhaka-1205', 'public/uploads/time_zones/1556433574policePlaza_132566099925.jpg', 1, 1, '2020-02-12 05:07:48', '2020-02-12 05:07:48'),
(3, 'Wari', '01678007495', NULL, NULL, NULL, '2/6/A, Nawab Street Wari', 'Dhaka-1203', 'public/uploads/time_zones/1556433607jamuna2_72459340617.jpg', 2, 1, '2020-02-12 05:08:40', '2020-02-12 05:08:40');

-- --------------------------------------------------------

--
-- Table structure for table `upazilas`
--

CREATE TABLE `upazilas` (
  `id` int(2) UNSIGNED NOT NULL,
  `district_id` int(2) UNSIGNED DEFAULT NULL,
  `name` varchar(30) NOT NULL,
  `bn_name` varchar(50) DEFAULT NULL,
  `is_active` int(4) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `upazilas`
--

INSERT INTO `upazilas` (`id`, `district_id`, `name`, `bn_name`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 34, 'Amtali Upazila', 'আমতলী', 1, NULL, NULL),
(2, 34, 'Bamna Upazila', 'বামনা', 1, NULL, NULL),
(3, 34, 'Barguna Sadar Upazila', 'বরগুনা সদর', 1, NULL, NULL),
(4, 34, 'Betagi Upazila', 'বেতাগি', 1, NULL, NULL),
(5, 34, 'Patharghata Upazila', 'পাথরঘাটা', 1, NULL, NULL),
(6, 34, 'Taltali Upazila', 'তালতলী', 1, NULL, NULL),
(7, 35, 'Muladi Upazila', 'মুলাদি', 1, NULL, NULL),
(8, 35, 'Babuganj Upazila', 'বাবুগঞ্জ', 1, NULL, NULL),
(9, 35, 'Agailjhara Upazila', 'আগাইলঝরা', 1, NULL, NULL),
(10, 35, 'Barisal Sadar Upazila', 'বরিশাল সদর', 1, NULL, NULL),
(11, 35, 'Bakerganj Upazila', 'বাকেরগঞ্জ', 1, NULL, NULL),
(12, 35, 'Banaripara Upazila', 'বানাড়িপারা', 1, NULL, NULL),
(13, 35, 'Gaurnadi Upazila', 'গৌরনদী', 1, NULL, NULL),
(14, 35, 'Hizla Upazila', 'হিজলা', 1, NULL, NULL),
(15, 35, 'Mehendiganj Upazila', 'মেহেদিগঞ্জ ', 1, NULL, NULL),
(16, 35, 'Wazirpur Upazila', 'ওয়াজিরপুর', 1, NULL, NULL),
(17, 36, 'Bhola Sadar Upazila', 'ভোলা সদর', 1, NULL, NULL),
(18, 36, 'Burhanuddin Upazila', 'বুরহানউদ্দিন', 1, NULL, NULL),
(19, 36, 'Char Fasson Upazila', 'চর ফ্যাশন', 1, NULL, NULL),
(20, 36, 'Daulatkhan Upazila', 'দৌলতখান', 1, NULL, NULL),
(21, 36, 'Lalmohan Upazila', 'লালমোহন', 1, NULL, NULL),
(22, 36, 'Manpura Upazila', 'মনপুরা', 1, NULL, NULL),
(23, 36, 'Tazumuddin Upazila', 'তাজুমুদ্দিন', 1, NULL, NULL),
(24, 37, 'Jhalokati Sadar Upazila', 'ঝালকাঠি সদর', 1, NULL, NULL),
(25, 37, 'Kathalia Upazila', 'কাঁঠালিয়া', 1, NULL, NULL),
(26, 37, 'Nalchity Upazila', 'নালচিতি', 1, NULL, NULL),
(27, 37, 'Rajapur Upazila', 'রাজাপুর', 1, NULL, NULL),
(28, 38, 'Bauphal Upazila', 'বাউফল', 1, NULL, NULL),
(29, 38, 'Dashmina Upazila', 'দশমিনা', 1, NULL, NULL),
(30, 38, 'Galachipa Upazila', 'গলাচিপা', 1, NULL, NULL),
(31, 38, 'Kalapara Upazila', 'কালাপারা', 1, NULL, NULL),
(32, 38, 'Mirzaganj Upazila', 'মির্জাগঞ্জ ', 1, NULL, NULL),
(33, 38, 'Patuakhali Sadar Upazila', 'পটুয়াখালী সদর', 1, NULL, NULL),
(34, 38, 'Dumki Upazila', 'ডুমকি', 1, NULL, NULL),
(35, 38, 'Rangabali Upazila', 'রাঙ্গাবালি', 1, NULL, NULL),
(36, 39, 'Bhandaria', 'ভ্যান্ডারিয়া', 1, NULL, NULL),
(37, 39, 'Kaukhali', 'কাউখালি', 1, NULL, NULL),
(38, 39, 'Mathbaria', 'মাঠবাড়িয়া', 1, NULL, NULL),
(39, 39, 'Nazirpur', 'নাজিরপুর', 1, NULL, NULL),
(40, 39, 'Nesarabad', 'নেসারাবাদ', 1, NULL, NULL),
(41, 39, 'Pirojpur Sadar', 'পিরোজপুর সদর', 1, NULL, NULL),
(42, 39, 'Zianagar', 'জিয়ানগর', 1, NULL, NULL),
(43, 40, 'Bandarban Sadar', 'বান্দরবন সদর', 1, NULL, NULL),
(44, 40, 'Thanchi', 'থানচি', 1, NULL, NULL),
(45, 40, 'Lama', 'লামা', 1, NULL, NULL),
(46, 40, 'Naikhongchhari', 'নাইখংছড়ি ', 1, NULL, NULL),
(47, 40, 'Ali kadam', 'আলী কদম', 1, NULL, NULL),
(48, 40, 'Rowangchhari', 'রউয়াংছড়ি ', 1, NULL, NULL),
(49, 40, 'Ruma', 'রুমা', 1, NULL, NULL),
(50, 41, 'Brahmanbaria Sadar Upazila', 'ব্রাহ্মণবাড়িয়া সদর', 1, NULL, NULL),
(51, 41, 'Ashuganj Upazila', 'আশুগঞ্জ', 1, NULL, NULL),
(52, 41, 'Nasirnagar Upazila', 'নাসির নগর', 1, NULL, NULL),
(53, 41, 'Nabinagar Upazila', 'নবীনগর', 1, NULL, NULL),
(54, 41, 'Sarail Upazila', 'সরাইল', 1, NULL, NULL),
(55, 41, 'Shahbazpur Town', 'শাহবাজপুর টাউন', 1, NULL, NULL),
(56, 41, 'Kasba Upazila', 'কসবা', 1, NULL, NULL),
(57, 41, 'Akhaura Upazila', 'আখাউরা', 1, NULL, NULL),
(58, 41, 'Bancharampur Upazila', 'বাঞ্ছারামপুর', 1, NULL, NULL),
(59, 41, 'Bijoynagar Upazila', 'বিজয় নগর', 1, NULL, NULL),
(60, 42, 'Chandpur Sadar', 'চাঁদপুর সদর', 1, NULL, NULL),
(61, 42, 'Faridganj', 'ফরিদগঞ্জ', 1, NULL, NULL),
(62, 42, 'Haimchar', 'হাইমচর', 1, NULL, NULL),
(63, 42, 'Haziganj', 'হাজীগঞ্জ', 1, NULL, NULL),
(64, 42, 'Kachua', 'কচুয়া', 1, NULL, NULL),
(65, 42, 'Matlab Uttar', 'মতলব উত্তর', 1, NULL, NULL),
(66, 42, 'Matlab Dakkhin', 'মতলব দক্ষিণ', 1, NULL, NULL),
(67, 42, 'Shahrasti', 'শাহরাস্তি', 1, NULL, NULL),
(68, 43, 'Anwara Upazila', 'আনোয়ারা', 1, NULL, NULL),
(69, 43, 'Banshkhali Upazila', 'বাশখালি', 1, NULL, NULL),
(70, 43, 'Boalkhali Upazila', 'বোয়ালখালি', 1, NULL, NULL),
(71, 43, 'Chandanaish Upazila', 'চন্দনাইশ', 1, NULL, NULL),
(72, 43, 'Fatikchhari Upazila', 'ফটিকছড়ি', 1, NULL, NULL),
(73, 43, 'Hathazari Upazila', 'হাঠহাজারী', 1, NULL, NULL),
(74, 43, 'Lohagara Upazila', 'লোহাগারা', 1, NULL, NULL),
(75, 43, 'Mirsharai Upazila', 'মিরসরাই', 1, NULL, NULL),
(76, 43, 'Patiya Upazila', 'পটিয়া', 1, NULL, NULL),
(77, 43, 'Rangunia Upazila', 'রাঙ্গুনিয়া', 1, NULL, NULL),
(78, 43, 'Raozan Upazila', 'রাউজান', 1, NULL, NULL),
(79, 43, 'Sandwip Upazila', 'সন্দ্বীপ', 1, NULL, NULL),
(80, 43, 'Satkania Upazila', 'সাতকানিয়া', 1, NULL, NULL),
(81, 43, 'Sitakunda Upazila', 'সীতাকুণ্ড', 1, NULL, NULL),
(82, 44, 'Barura Upazila', 'বড়ুরা', 1, NULL, NULL),
(83, 44, 'Brahmanpara Upazila', 'ব্রাহ্মণপাড়া', 1, NULL, NULL),
(84, 44, 'Burichong Upazila', 'বুড়িচং', 1, NULL, NULL),
(85, 44, 'Chandina Upazila', 'চান্দিনা', 1, NULL, NULL),
(86, 44, 'Chauddagram Upazila', 'চৌদ্দগ্রাম', 1, NULL, NULL),
(87, 44, 'Daudkandi Upazila', 'দাউদকান্দি', 1, NULL, NULL),
(88, 44, 'Debidwar Upazila', 'দেবীদ্বার', 1, NULL, NULL),
(89, 44, 'Homna Upazila', 'হোমনা', 1, NULL, NULL),
(90, 44, 'Comilla Sadar Upazila', 'কুমিল্লা সদর', 1, NULL, NULL),
(91, 44, 'Laksam Upazila', 'লাকসাম', 1, NULL, NULL),
(92, 44, 'Monohorgonj Upazila', 'মনোহরগঞ্জ', 1, NULL, NULL),
(93, 44, 'Meghna Upazila', 'মেঘনা', 1, NULL, NULL),
(94, 44, 'Muradnagar Upazila', 'মুরাদনগর', 1, NULL, NULL),
(95, 44, 'Nangalkot Upazila', 'নাঙ্গালকোট', 1, NULL, NULL),
(96, 44, 'Comilla Sadar South Upazila', 'কুমিল্লা সদর দক্ষিণ', 1, NULL, NULL),
(97, 44, 'Titas Upazila', 'তিতাস', 1, NULL, NULL),
(98, 45, 'Chakaria Upazila', 'চকরিয়া', 1, NULL, NULL),
(100, 45, 'Cox\'s Bazar Sadar Upazila', 'কক্স বাজার সদর', 1, NULL, NULL),
(101, 45, 'Kutubdia Upazila', 'কুতুবদিয়া', 1, NULL, NULL),
(102, 45, 'Maheshkhali Upazila', 'মহেশখালী', 1, NULL, NULL),
(103, 45, 'Ramu Upazila', 'রামু', 1, NULL, NULL),
(104, 45, 'Teknaf Upazila', 'টেকনাফ', 1, NULL, NULL),
(105, 45, 'Ukhia Upazila', 'উখিয়া', 1, NULL, NULL),
(106, 45, 'Pekua Upazila', 'পেকুয়া', 1, NULL, NULL),
(107, 46, 'Feni Sadar', 'ফেনী সদর', 1, NULL, NULL),
(108, 46, 'Chagalnaiya', 'ছাগল নাইয়া', 1, NULL, NULL),
(109, 46, 'Daganbhyan', 'দাগানভিয়া', 1, NULL, NULL),
(110, 46, 'Parshuram', 'পরশুরাম', 1, NULL, NULL),
(111, 46, 'Fhulgazi', 'ফুলগাজি', 1, NULL, NULL),
(112, 46, 'Sonagazi', 'সোনাগাজি', 1, NULL, NULL),
(113, 47, 'Dighinala Upazila', 'দিঘিনালা ', 1, NULL, NULL),
(114, 47, 'Khagrachhari Upazila', 'খাগড়াছড়ি', 1, NULL, NULL),
(115, 47, 'Lakshmichhari Upazila', 'লক্ষ্মীছড়ি', 1, NULL, NULL),
(116, 47, 'Mahalchhari Upazila', 'মহলছড়ি', 1, NULL, NULL),
(117, 47, 'Manikchhari Upazila', 'মানিকছড়ি', 1, NULL, NULL),
(118, 47, 'Matiranga Upazila', 'মাটিরাঙ্গা', 1, NULL, NULL),
(119, 47, 'Panchhari Upazila', 'পানছড়ি', 1, NULL, NULL),
(120, 47, 'Ramgarh Upazila', 'রামগড়', 1, NULL, NULL),
(121, 48, 'Lakshmipur Sadar Upazila', 'লক্ষ্মীপুর সদর', 1, NULL, NULL),
(122, 48, 'Raipur Upazila', 'রায়পুর', 1, NULL, NULL),
(123, 48, 'Ramganj Upazila', 'রামগঞ্জ', 1, NULL, NULL),
(124, 48, 'Ramgati Upazila', 'রামগতি', 1, NULL, NULL),
(125, 48, 'Komol Nagar Upazila', 'কমল নগর', 1, NULL, NULL),
(126, 49, 'Noakhali Sadar Upazila', 'নোয়াখালী সদর', 1, NULL, NULL),
(127, 49, 'Begumganj Upazila', 'বেগমগঞ্জ', 1, NULL, NULL),
(128, 49, 'Chatkhil Upazila', 'চাটখিল', 1, NULL, NULL),
(129, 49, 'Companyganj Upazila', 'কোম্পানীগঞ্জ', 1, NULL, NULL),
(130, 49, 'Shenbag Upazila', 'শেনবাগ', 1, NULL, NULL),
(131, 49, 'Hatia Upazila', 'হাতিয়া', 1, NULL, NULL),
(132, 49, 'Kobirhat Upazila', 'কবিরহাট ', 1, NULL, NULL),
(133, 49, 'Sonaimuri Upazila', 'সোনাইমুরি', 1, NULL, NULL),
(134, 49, 'Suborno Char Upazila', 'সুবর্ণ চর ', 1, NULL, NULL),
(135, 50, 'Rangamati Sadar Upazila', 'রাঙ্গামাটি সদর', 1, NULL, NULL),
(136, 50, 'Belaichhari Upazila', 'বেলাইছড়ি', 1, NULL, NULL),
(137, 50, 'Bagaichhari Upazila', 'বাঘাইছড়ি', 1, NULL, NULL),
(138, 50, 'Barkal Upazila', 'বরকল', 1, NULL, NULL),
(139, 50, 'Juraichhari Upazila', 'জুরাইছড়ি', 1, NULL, NULL),
(140, 50, 'Rajasthali Upazila', 'রাজাস্থলি', 1, NULL, NULL),
(141, 50, 'Kaptai Upazila', 'কাপ্তাই', 1, NULL, NULL),
(142, 50, 'Langadu Upazila', 'লাঙ্গাডু', 1, NULL, NULL),
(143, 50, 'Nannerchar Upazila', 'নান্নেরচর ', 1, NULL, NULL),
(144, 50, 'Kaukhali Upazila', 'কাউখালি', 1, NULL, NULL),
(145, 1, 'Dhamrai Upazila', 'ধামরাই', 1, NULL, NULL),
(146, 1, 'Dohar Upazila', 'দোহার', 1, NULL, NULL),
(147, 1, 'Keraniganj Upazila', 'কেরানীগঞ্জ', 1, NULL, NULL),
(148, 1, 'Nawabganj Upazila', 'নবাবগঞ্জ', 1, NULL, NULL),
(149, 1, 'Savar Upazila', 'সাভার', 1, NULL, NULL),
(150, 2, 'Faridpur Sadar Upazila', 'ফরিদপুর সদর', 1, NULL, NULL),
(151, 2, 'Boalmari Upazila', 'বোয়ালমারী', 1, NULL, NULL),
(152, 2, 'Alfadanga Upazila', 'আলফাডাঙ্গা', 1, NULL, NULL),
(153, 2, 'Madhukhali Upazila', 'মধুখালি', 1, NULL, NULL),
(154, 2, 'Bhanga Upazila', 'ভাঙ্গা', 1, NULL, NULL),
(155, 2, 'Nagarkanda Upazila', 'নগরকান্ড', 1, NULL, NULL),
(156, 2, 'Charbhadrasan Upazila', 'চরভদ্রাসন ', 1, NULL, NULL),
(157, 2, 'Sadarpur Upazila', 'সদরপুর', 1, NULL, NULL),
(158, 2, 'Shaltha Upazila', 'শালথা', 1, NULL, NULL),
(159, 3, 'Gazipur Sadar-Joydebpur', 'গাজীপুর সদর', 1, NULL, NULL),
(160, 3, 'Kaliakior', 'কালিয়াকৈর', 1, NULL, NULL),
(161, 3, 'Kapasia', 'কাপাসিয়া', 1, NULL, NULL),
(162, 3, 'Sripur', 'শ্রীপুর', 1, NULL, NULL),
(163, 3, 'Kaliganj', 'কালীগঞ্জ', 1, NULL, NULL),
(164, 3, 'Tongi', 'টঙ্গি', 1, NULL, NULL),
(165, 4, 'Gopalganj Sadar Upazila', 'গোপালগঞ্জ সদর', 1, NULL, NULL),
(166, 4, 'Kashiani Upazila', 'কাশিয়ানি', 1, NULL, NULL),
(167, 4, 'Kotalipara Upazila', 'কোটালিপাড়া', 1, NULL, NULL),
(168, 4, 'Muksudpur Upazila', 'মুকসুদপুর', 1, NULL, NULL),
(169, 4, 'Tungipara Upazila', 'টুঙ্গিপাড়া', 1, NULL, NULL),
(170, 5, 'Dewanganj Upazila', 'দেওয়ানগঞ্জ', 1, NULL, NULL),
(171, 5, 'Baksiganj Upazila', 'বকসিগঞ্জ', 1, NULL, NULL),
(172, 5, 'Islampur Upazila', 'ইসলামপুর', 1, NULL, NULL),
(173, 5, 'Jamalpur Sadar Upazila', 'জামালপুর সদর', 1, NULL, NULL),
(174, 5, 'Madarganj Upazila', 'মাদারগঞ্জ', 1, NULL, NULL),
(175, 5, 'Melandaha Upazila', 'মেলানদাহা', 1, NULL, NULL),
(176, 5, 'Sarishabari Upazila', 'সরিষাবাড়ি ', 1, NULL, NULL),
(177, 5, 'Narundi Police I.C', 'নারুন্দি', 1, NULL, NULL),
(178, 6, 'Astagram Upazila', 'অষ্টগ্রাম', 1, NULL, NULL),
(179, 6, 'Bajitpur Upazila', 'বাজিতপুর', 1, NULL, NULL),
(180, 6, 'Bhairab Upazila', 'ভৈরব', 1, NULL, NULL),
(181, 6, 'Hossainpur Upazila', 'হোসেনপুর ', 1, NULL, NULL),
(182, 6, 'Itna Upazila', 'ইটনা', 1, NULL, NULL),
(183, 6, 'Karimganj Upazila', 'করিমগঞ্জ', 1, NULL, NULL),
(184, 6, 'Katiadi Upazila', 'কতিয়াদি', 1, NULL, NULL),
(185, 6, 'Kishoreganj Sadar Upazila', 'কিশোরগঞ্জ সদর', 1, NULL, NULL),
(186, 6, 'Kuliarchar Upazila', 'কুলিয়ারচর', 1, NULL, NULL),
(187, 6, 'Mithamain Upazila', 'মিঠামাইন', 1, NULL, NULL),
(188, 6, 'Nikli Upazila', 'নিকলি', 1, NULL, NULL),
(189, 6, 'Pakundia Upazila', 'পাকুন্ডা', 1, NULL, NULL),
(190, 6, 'Tarail Upazila', 'তাড়াইল', 1, NULL, NULL),
(191, 7, 'Madaripur Sadar', 'মাদারীপুর সদর', 1, NULL, NULL),
(192, 7, 'Kalkini', 'কালকিনি', 1, NULL, NULL),
(193, 7, 'Rajoir', 'রাজইর', 1, NULL, NULL),
(194, 7, 'Shibchar', 'শিবচর', 1, NULL, NULL),
(195, 8, 'Manikganj Sadar Upazila', 'মানিকগঞ্জ সদর', 1, NULL, NULL),
(196, 8, 'Singair Upazila', 'সিঙ্গাইর', 1, NULL, NULL),
(197, 8, 'Shibalaya Upazila', 'শিবালয়', 1, NULL, NULL),
(198, 8, 'Saturia Upazila', 'সাঠুরিয়া', 1, NULL, NULL),
(199, 8, 'Harirampur Upazila', 'হরিরামপুর', 1, NULL, NULL),
(200, 8, 'Ghior Upazila', 'ঘিওর', 1, NULL, NULL),
(201, 8, 'Daulatpur Upazila', 'দৌলতপুর', 1, NULL, NULL),
(202, 9, 'Lohajang Upazila', 'লোহাজং', 1, NULL, NULL),
(203, 9, 'Sreenagar Upazila', 'শ্রীনগর', 1, NULL, NULL),
(204, 9, 'Munshiganj Sadar Upazila', 'মুন্সিগঞ্জ সদর', 1, NULL, NULL),
(205, 9, 'Sirajdikhan Upazila', 'সিরাজদিখান', 1, NULL, NULL),
(206, 9, 'Tongibari Upazila', 'টঙ্গিবাড়ি', 1, NULL, NULL),
(207, 9, 'Gazaria Upazila', 'গজারিয়া', 1, NULL, NULL),
(208, 10, 'Bhaluka', 'ভালুকা', 1, NULL, NULL),
(209, 10, 'Trishal', 'ত্রিশাল', 1, NULL, NULL),
(210, 10, 'Haluaghat', 'হালুয়াঘাট', 1, NULL, NULL),
(211, 10, 'Muktagachha', 'মুক্তাগাছা', 1, NULL, NULL),
(212, 10, 'Dhobaura', 'ধবারুয়া', 1, NULL, NULL),
(213, 10, 'Fulbaria', 'ফুলবাড়িয়া', 1, NULL, NULL),
(214, 10, 'Gaffargaon', 'গফরগাঁও', 1, NULL, NULL),
(215, 10, 'Gauripur', 'গৌরিপুর', 1, NULL, NULL),
(216, 10, 'Ishwarganj', 'ঈশ্বরগঞ্জ', 1, NULL, NULL),
(217, 10, 'Mymensingh Sadar', 'ময়মনসিং সদর', 1, NULL, NULL),
(218, 10, 'Nandail', 'নন্দাইল', 1, NULL, NULL),
(219, 10, 'Phulpur', 'ফুলপুর', 1, NULL, NULL),
(220, 11, 'Araihazar Upazila', 'আড়াইহাজার', 1, NULL, NULL),
(221, 11, 'Sonargaon Upazila', 'সোনারগাঁও', 1, NULL, NULL),
(222, 11, 'Bandar', 'বান্দার', 1, NULL, NULL),
(223, 11, 'Naryanganj Sadar Upazila', 'নারায়ানগঞ্জ সদর', 1, NULL, NULL),
(224, 11, 'Rupganj Upazila', 'রূপগঞ্জ', 1, NULL, NULL),
(225, 11, 'Siddirgonj Upazila', 'সিদ্ধিরগঞ্জ', 1, NULL, NULL),
(226, 12, 'Belabo Upazila', 'বেলাবো', 1, NULL, NULL),
(227, 12, 'Monohardi Upazila', 'মনোহরদি', 1, NULL, NULL),
(228, 12, 'Narsingdi Sadar Upazila', 'নরসিংদী সদর', 1, NULL, NULL),
(229, 12, 'Palash Upazila', 'পলাশ', 1, NULL, NULL),
(230, 12, 'Raipura Upazila, Narsingdi', 'রায়পুর', 1, NULL, NULL),
(231, 12, 'Shibpur Upazila', 'শিবপুর', 1, NULL, NULL),
(232, 13, 'Kendua Upazilla', 'কেন্দুয়া', 1, NULL, NULL),
(233, 13, 'Atpara Upazilla', 'আটপাড়া', 1, NULL, NULL),
(234, 13, 'Barhatta Upazilla', 'বরহাট্টা', 1, NULL, NULL),
(235, 13, 'Durgapur Upazilla', 'দুর্গাপুর', 1, NULL, NULL),
(236, 13, 'Kalmakanda Upazilla', 'কলমাকান্দা', 1, NULL, NULL),
(237, 13, 'Madan Upazilla', 'মদন', 1, NULL, NULL),
(238, 13, 'Mohanganj Upazilla', 'মোহনগঞ্জ', 1, NULL, NULL),
(239, 13, 'Netrakona-S Upazilla', 'নেত্রকোনা সদর', 1, NULL, NULL),
(240, 13, 'Purbadhala Upazilla', 'পূর্বধলা', 1, NULL, NULL),
(241, 13, 'Khaliajuri Upazilla', 'খালিয়াজুরি', 1, NULL, NULL),
(242, 14, 'Baliakandi Upazila', 'বালিয়াকান্দি', 1, NULL, NULL),
(243, 14, 'Goalandaghat Upazila', 'গোয়ালন্দ ঘাট', 1, NULL, NULL),
(244, 14, 'Pangsha Upazila', 'পাংশা', 1, NULL, NULL),
(245, 14, 'Kalukhali Upazila', 'কালুখালি', 1, NULL, NULL),
(246, 14, 'Rajbari Sadar Upazila', 'রাজবাড়ি সদর', 1, NULL, NULL),
(247, 15, 'Shariatpur Sadar -Palong', 'শরীয়তপুর সদর ', 1, NULL, NULL),
(248, 15, 'Damudya Upazila', 'দামুদিয়া', 1, NULL, NULL),
(249, 15, 'Naria Upazila', 'নড়িয়া', 1, NULL, NULL),
(250, 15, 'Jajira Upazila', 'জাজিরা', 1, NULL, NULL),
(251, 15, 'Bhedarganj Upazila', 'ভেদারগঞ্জ', 1, NULL, NULL),
(252, 15, 'Gosairhat Upazila', 'গোসাইর হাট ', 1, NULL, NULL),
(253, 16, 'Jhenaigati Upazila', 'ঝিনাইগাতি', 1, NULL, NULL),
(254, 16, 'Nakla Upazila', 'নাকলা', 1, NULL, NULL),
(255, 16, 'Nalitabari Upazila', 'নালিতাবাড়ি', 1, NULL, NULL),
(256, 16, 'Sherpur Sadar Upazila', 'শেরপুর সদর', 1, NULL, NULL),
(257, 16, 'Sreebardi Upazila', 'শ্রীবরদি', 1, NULL, NULL),
(258, 17, 'Tangail Sadar Upazila', 'টাঙ্গাইল সদর', 1, NULL, NULL),
(259, 17, 'Sakhipur Upazila', 'সখিপুর', 1, NULL, NULL),
(260, 17, 'Basail Upazila', 'বসাইল', 1, NULL, NULL),
(261, 17, 'Madhupur Upazila', 'মধুপুর', 1, NULL, NULL),
(262, 17, 'Ghatail Upazila', 'ঘাটাইল', 1, NULL, NULL),
(263, 17, 'Kalihati Upazila', 'কালিহাতি', 1, NULL, NULL),
(264, 17, 'Nagarpur Upazila', 'নগরপুর', 1, NULL, NULL),
(265, 17, 'Mirzapur Upazila', 'মির্জাপুর', 1, NULL, NULL),
(266, 17, 'Gopalpur Upazila', 'গোপালপুর', 1, NULL, NULL),
(267, 17, 'Delduar Upazila', 'দেলদুয়ার', 1, NULL, NULL),
(268, 17, 'Bhuapur Upazila', 'ভুয়াপুর', 1, NULL, NULL),
(269, 17, 'Dhanbari Upazila', 'ধানবাড়ি', 1, NULL, NULL),
(270, 55, 'Bagerhat Sadar Upazila', 'বাগেরহাট সদর', 1, NULL, NULL),
(271, 55, 'Chitalmari Upazila', 'চিতলমাড়ি', 1, NULL, NULL),
(272, 55, 'Fakirhat Upazila', 'ফকিরহাট', 1, NULL, NULL),
(273, 55, 'Kachua Upazila', 'কচুয়া', 1, NULL, NULL),
(274, 55, 'Mollahat Upazila', 'মোল্লাহাট ', 1, NULL, NULL),
(275, 55, 'Mongla Upazila', 'মংলা', 1, NULL, NULL),
(276, 55, 'Morrelganj Upazila', 'মরেলগঞ্জ', 1, NULL, NULL),
(277, 55, 'Rampal Upazila', 'রামপাল', 1, NULL, NULL),
(278, 55, 'Sarankhola Upazila', 'স্মরণখোলা', 1, NULL, NULL),
(279, 56, 'Damurhuda Upazila', 'দামুরহুদা', 1, NULL, NULL),
(280, 56, 'Chuadanga-S Upazila', 'চুয়াডাঙ্গা সদর', 1, NULL, NULL),
(281, 56, 'Jibannagar Upazila', 'জীবন নগর ', 1, NULL, NULL),
(282, 56, 'Alamdanga Upazila', 'আলমডাঙ্গা', 1, NULL, NULL),
(283, 57, 'Abhaynagar Upazila', 'অভয়নগর', 1, NULL, NULL),
(284, 57, 'Keshabpur Upazila', 'কেশবপুর', 1, NULL, NULL),
(285, 57, 'Bagherpara Upazila', 'বাঘের পাড়া ', 1, NULL, NULL),
(286, 57, 'Jessore Sadar Upazila', 'যশোর সদর', 1, NULL, NULL),
(287, 57, 'Chaugachha Upazila', 'চৌগাছা', 1, NULL, NULL),
(288, 57, 'Manirampur Upazila', 'মনিরামপুর ', 1, NULL, NULL),
(289, 57, 'Jhikargachha Upazila', 'ঝিকরগাছা', 1, NULL, NULL),
(290, 57, 'Sharsha Upazila', 'সারশা', 1, NULL, NULL),
(291, 58, 'Jhenaidah Sadar Upazila', 'ঝিনাইদহ সদর', 1, NULL, NULL),
(292, 58, 'Maheshpur Upazila', 'মহেশপুর', 1, NULL, NULL),
(293, 58, 'Kaliganj Upazila', 'কালীগঞ্জ', 1, NULL, NULL),
(294, 58, 'Kotchandpur Upazila', 'কোট চাঁদপুর ', 1, NULL, NULL),
(295, 58, 'Shailkupa Upazila', 'শৈলকুপা', 1, NULL, NULL),
(296, 58, 'Harinakunda Upazila', 'হাড়িনাকুন্দা', 1, NULL, NULL),
(297, 59, 'Terokhada Upazila', 'তেরোখাদা', 1, NULL, NULL),
(298, 59, 'Batiaghata Upazila', 'বাটিয়াঘাটা ', 1, NULL, NULL),
(299, 59, 'Dacope Upazila', 'ডাকপে', 1, NULL, NULL),
(300, 59, 'Dumuria Upazila', 'ডুমুরিয়া', 1, NULL, NULL),
(301, 59, 'Dighalia Upazila', 'দিঘলিয়া', 1, NULL, NULL),
(302, 59, 'Koyra Upazila', 'কয়ড়া', 1, NULL, NULL),
(303, 59, 'Paikgachha Upazila', 'পাইকগাছা', 1, NULL, NULL),
(304, 59, 'Phultala Upazila', 'ফুলতলা', 1, NULL, NULL),
(305, 59, 'Rupsa Upazila', 'রূপসা', 1, NULL, NULL),
(306, 60, 'Kushtia Sadar', 'কুষ্টিয়া সদর', 1, NULL, NULL),
(307, 60, 'Kumarkhali', 'কুমারখালি', 1, NULL, NULL),
(308, 60, 'Daulatpur', 'দৌলতপুর', 1, NULL, NULL),
(309, 60, 'Mirpur', 'মিরপুর', 1, NULL, NULL),
(310, 60, 'Bheramara', 'ভেরামারা', 1, NULL, NULL),
(311, 60, 'Khoksa', 'খোকসা', 1, NULL, NULL),
(312, 61, 'Magura Sadar Upazila', 'মাগুরা সদর', 1, NULL, NULL),
(313, 61, 'Mohammadpur Upazila', 'মোহাম্মাদপুর', 1, NULL, NULL),
(314, 61, 'Shalikha Upazila', 'শালিখা', 1, NULL, NULL),
(315, 61, 'Sreepur Upazila', 'শ্রীপুর', 1, NULL, NULL),
(316, 62, 'angni Upazila', 'আংনি', 1, NULL, NULL),
(317, 62, 'Mujib Nagar Upazila', 'মুজিব নগর', 1, NULL, NULL),
(318, 62, 'Meherpur-S Upazila', 'মেহেরপুর সদর', 1, NULL, NULL),
(319, 63, 'Narail-S Upazilla', 'নড়াইল সদর', 1, NULL, NULL),
(320, 63, 'Lohagara Upazilla', 'লোহাগাড়া', 1, NULL, NULL),
(321, 63, 'Kalia Upazilla', 'কালিয়া', 1, NULL, NULL),
(322, 64, 'Satkhira Sadar Upazila', 'সাতক্ষীরা সদর', 1, NULL, NULL),
(323, 64, 'Assasuni Upazila', 'আসসাশুনি ', 1, NULL, NULL),
(324, 64, 'Debhata Upazila', 'দেভাটা', 1, NULL, NULL),
(325, 64, 'Tala Upazila', 'তালা', 1, NULL, NULL),
(326, 64, 'Kalaroa Upazila', 'কলরোয়া', 1, NULL, NULL),
(327, 64, 'Kaliganj Upazila', 'কালীগঞ্জ', 1, NULL, NULL),
(328, 64, 'Shyamnagar Upazila', 'শ্যামনগর', 1, NULL, NULL),
(329, 18, 'Adamdighi', 'আদমদিঘী', 1, NULL, NULL),
(330, 18, 'Bogra Sadar', 'বগুড়া সদর', 1, NULL, NULL),
(331, 18, 'Sherpur', 'শেরপুর', 1, NULL, NULL),
(332, 18, 'Dhunat', 'ধুনট', 1, NULL, NULL),
(333, 18, 'Dhupchanchia', 'দুপচাচিয়া', 1, NULL, NULL),
(334, 18, 'Gabtali', 'গাবতলি', 1, NULL, NULL),
(335, 18, 'Kahaloo', 'কাহালু', 1, NULL, NULL),
(336, 18, 'Nandigram', 'নন্দিগ্রাম', 1, NULL, NULL),
(337, 18, 'Sahajanpur', 'শাহজাহানপুর', 1, NULL, NULL),
(338, 18, 'Sariakandi', 'সারিয়াকান্দি', 1, NULL, NULL),
(339, 18, 'Shibganj', 'শিবগঞ্জ', 1, NULL, NULL),
(340, 18, 'Sonatala', 'সোনাতলা', 1, NULL, NULL),
(341, 19, 'Joypurhat S', 'জয়পুরহাট সদর', 1, NULL, NULL),
(342, 19, 'Akkelpur', 'আক্কেলপুর', 1, NULL, NULL),
(343, 19, 'Kalai', 'কালাই', 1, NULL, NULL),
(344, 19, 'Khetlal', 'খেতলাল', 1, NULL, NULL),
(345, 19, 'Panchbibi', 'পাঁচবিবি', 1, NULL, NULL),
(346, 20, 'Naogaon Sadar Upazila', 'নওগাঁ সদর', 1, NULL, NULL),
(347, 20, 'Mohadevpur Upazila', 'মহাদেবপুর', 1, NULL, NULL),
(348, 20, 'Manda Upazila', 'মান্দা', 1, NULL, NULL),
(349, 20, 'Niamatpur Upazila', 'নিয়ামতপুর', 1, NULL, NULL),
(350, 20, 'Atrai Upazila', 'আত্রাই', 1, NULL, NULL),
(351, 20, 'Raninagar Upazila', 'রাণীনগর', 1, NULL, NULL),
(352, 20, 'Patnitala Upazila', 'পত্নীতলা', 1, NULL, NULL),
(353, 20, 'Dhamoirhat Upazila', 'ধামইরহাট ', 1, NULL, NULL),
(354, 20, 'Sapahar Upazila', 'সাপাহার', 1, NULL, NULL),
(355, 20, 'Porsha Upazila', 'পোরশা', 1, NULL, NULL),
(356, 20, 'Badalgachhi Upazila', 'বদলগাছি', 1, NULL, NULL),
(357, 21, 'Natore Sadar Upazila', 'নাটোর সদর', 1, NULL, NULL),
(358, 21, 'Baraigram Upazila', 'বড়াইগ্রাম', 1, NULL, NULL),
(359, 21, 'Bagatipara Upazila', 'বাগাতিপাড়া', 1, NULL, NULL),
(360, 21, 'Lalpur Upazila', 'লালপুর', 1, NULL, NULL),
(361, 21, 'Natore Sadar Upazila', 'নাটোর সদর', 1, NULL, NULL),
(362, 21, 'Baraigram Upazila', 'বড়াই গ্রাম', 1, NULL, NULL),
(363, 22, 'Bholahat Upazila', 'ভোলাহাট', 1, NULL, NULL),
(364, 22, 'Gomastapur Upazila', 'গোমস্তাপুর', 1, NULL, NULL),
(365, 22, 'Nachole Upazila', 'নাচোল', 1, NULL, NULL),
(366, 22, 'Nawabganj Sadar Upazila', 'নবাবগঞ্জ সদর', 1, NULL, NULL),
(367, 22, 'Shibganj Upazila', 'শিবগঞ্জ', 1, NULL, NULL),
(368, 23, 'Atgharia Upazila', 'আটঘরিয়া', 1, NULL, NULL),
(369, 23, 'Bera Upazila', 'বেড়া', 1, NULL, NULL),
(370, 23, 'Bhangura Upazila', 'ভাঙ্গুরা', 1, NULL, NULL),
(371, 23, 'Chatmohar Upazila', 'চাটমোহর', 1, NULL, NULL),
(372, 23, 'Faridpur Upazila', 'ফরিদপুর', 1, NULL, NULL),
(373, 23, 'Ishwardi Upazila', 'ঈশ্বরদী', 1, NULL, NULL),
(374, 23, 'Pabna Sadar Upazila', 'পাবনা সদর', 1, NULL, NULL),
(375, 23, 'Santhia Upazila', 'সাথিয়া', 1, NULL, NULL),
(376, 23, 'Sujanagar Upazila', 'সুজানগর', 1, NULL, NULL),
(377, 24, 'Bagha', 'বাঘা', 1, NULL, NULL),
(378, 24, 'Bagmara', 'বাগমারা', 1, NULL, NULL),
(379, 24, 'Charghat', 'চারঘাট', 1, NULL, NULL),
(380, 24, 'Durgapur', 'দুর্গাপুর', 1, NULL, NULL),
(381, 24, 'Godagari', 'গোদাগারি', 1, NULL, NULL),
(382, 24, 'Mohanpur', 'মোহনপুর', 1, NULL, NULL),
(383, 24, 'Paba', 'পবা', 1, NULL, NULL),
(384, 24, 'Puthia', 'পুঠিয়া', 1, NULL, NULL),
(385, 24, 'Tanore', 'তানোর', 1, NULL, NULL),
(386, 25, 'Sirajganj Sadar Upazila', 'সিরাজগঞ্জ সদর', 1, NULL, NULL),
(387, 25, 'Belkuchi Upazila', 'বেলকুচি', 1, NULL, NULL),
(388, 25, 'Chauhali Upazila', 'চৌহালি', 1, NULL, NULL),
(389, 25, 'Kamarkhanda Upazila', 'কামারখান্দা', 1, NULL, NULL),
(390, 25, 'Kazipur Upazila', 'কাজীপুর', 1, NULL, NULL),
(391, 25, 'Raiganj Upazila', 'রায়গঞ্জ', 1, NULL, NULL),
(392, 25, 'Shahjadpur Upazila', 'শাহজাদপুর', 1, NULL, NULL),
(393, 25, 'Tarash Upazila', 'তারাশ', 1, NULL, NULL),
(394, 25, 'Ullahpara Upazila', 'উল্লাপাড়া', 1, NULL, NULL),
(395, 26, 'Birampur Upazila', 'বিরামপুর', 1, NULL, NULL),
(396, 26, 'Birganj', 'বীরগঞ্জ', 1, NULL, NULL),
(397, 26, 'Biral Upazila', 'বিড়াল', 1, NULL, NULL),
(398, 26, 'Bochaganj Upazila', 'বোচাগঞ্জ', 1, NULL, NULL),
(399, 26, 'Chirirbandar Upazila', 'চিরিরবন্দর', 1, NULL, NULL),
(400, 26, 'Phulbari Upazila', 'ফুলবাড়ি', 1, NULL, NULL),
(401, 26, 'Ghoraghat Upazila', 'ঘোড়াঘাট', 1, NULL, NULL),
(402, 26, 'Hakimpur Upazila', 'হাকিমপুর', 1, NULL, NULL),
(403, 26, 'Kaharole Upazila', 'কাহারোল', 1, NULL, NULL),
(404, 26, 'Khansama Upazila', 'খানসামা', 1, NULL, NULL),
(405, 26, 'Dinajpur Sadar Upazila', 'দিনাজপুর সদর', 1, NULL, NULL),
(406, 26, 'Nawabganj', 'নবাবগঞ্জ', 1, NULL, NULL),
(407, 26, 'Parbatipur Upazila', 'পার্বতীপুর', 1, NULL, NULL),
(408, 27, 'Fulchhari', 'ফুলছড়ি', 1, NULL, NULL),
(409, 27, 'Gaibandha sadar', 'গাইবান্ধা সদর', 1, NULL, NULL),
(410, 27, 'Gobindaganj', 'গোবিন্দগঞ্জ', 1, NULL, NULL),
(411, 27, 'Palashbari', 'পলাশবাড়ী', 1, NULL, NULL),
(412, 27, 'Sadullapur', 'সাদুল্যাপুর', 1, NULL, NULL),
(413, 27, 'Saghata', 'সাঘাটা', 1, NULL, NULL),
(414, 27, 'Sundarganj', 'সুন্দরগঞ্জ', 1, NULL, NULL),
(415, 28, 'Kurigram Sadar', 'কুড়িগ্রাম সদর', 1, NULL, NULL),
(416, 28, 'Nageshwari', 'নাগেশ্বরী', 1, NULL, NULL),
(417, 28, 'Bhurungamari', 'ভুরুঙ্গামারি', 1, NULL, NULL),
(418, 28, 'Phulbari', 'ফুলবাড়ি', 1, NULL, NULL),
(419, 28, 'Rajarhat', 'রাজারহাট', 1, NULL, NULL),
(420, 28, 'Ulipur', 'উলিপুর', 1, NULL, NULL),
(421, 28, 'Chilmari', 'চিলমারি', 1, NULL, NULL),
(422, 28, 'Rowmari', 'রউমারি', 1, NULL, NULL),
(423, 28, 'Char Rajibpur', 'চর রাজিবপুর', 1, NULL, NULL),
(424, 29, 'Lalmanirhat Sadar', 'লালমনিরহাট সদর', 1, NULL, NULL),
(425, 29, 'Aditmari', 'আদিতমারি', 1, NULL, NULL),
(426, 29, 'Kaliganj', 'কালীগঞ্জ', 1, NULL, NULL),
(427, 29, 'Hatibandha', 'হাতিবান্ধা', 1, NULL, NULL),
(428, 29, 'Patgram', 'পাটগ্রাম', 1, NULL, NULL),
(429, 30, 'Nilphamari Sadar', 'নীলফামারী সদর', 1, NULL, NULL),
(430, 30, 'Saidpur', 'সৈয়দপুর', 1, NULL, NULL),
(431, 30, 'Jaldhaka', 'জলঢাকা', 1, NULL, NULL),
(432, 30, 'Kishoreganj', 'কিশোরগঞ্জ', 1, NULL, NULL),
(433, 30, 'Domar', 'ডোমার', 1, NULL, NULL),
(434, 30, 'Dimla', 'ডিমলা', 1, NULL, NULL),
(435, 31, 'Panchagarh Sadar', 'পঞ্চগড় সদর', 1, NULL, NULL),
(436, 31, 'Debiganj', 'দেবীগঞ্জ', 1, NULL, NULL),
(437, 31, 'Boda', 'বোদা', 1, NULL, NULL),
(438, 31, 'Atwari', 'আটোয়ারি', 1, NULL, NULL),
(439, 31, 'Tetulia', 'তেতুলিয়া', 1, NULL, NULL),
(440, 32, 'Badarganj', 'বদরগঞ্জ', 1, NULL, NULL),
(441, 32, 'Mithapukur', 'মিঠাপুকুর', 1, NULL, NULL),
(442, 32, 'Gangachara', 'গঙ্গাচরা', 1, NULL, NULL),
(443, 32, 'Kaunia', 'কাউনিয়া', 1, NULL, NULL),
(444, 32, 'Rangpur Sadar', 'রংপুর সদর', 1, NULL, NULL),
(445, 32, 'Pirgachha', 'পীরগাছা', 1, NULL, NULL),
(446, 32, 'Pirganj', 'পীরগঞ্জ', 1, NULL, NULL),
(447, 32, 'Taraganj', 'তারাগঞ্জ', 1, NULL, NULL),
(448, 33, 'Thakurgaon Sadar Upazila', 'ঠাকুরগাঁও সদর', 1, NULL, NULL),
(449, 33, 'Pirganj Upazila', 'পীরগঞ্জ', 1, NULL, NULL),
(450, 33, 'Baliadangi Upazila', 'বালিয়াডাঙ্গি', 1, NULL, NULL),
(451, 33, 'Haripur Upazila', 'হরিপুর', 1, NULL, NULL),
(452, 33, 'Ranisankail Upazila', 'রাণীসংকইল', 1, NULL, NULL),
(453, 51, 'Ajmiriganj', 'আজমিরিগঞ্জ', 1, NULL, NULL),
(454, 51, 'Baniachang', 'বানিয়াচং', 1, NULL, NULL),
(455, 51, 'Bahubal', 'বাহুবল', 1, NULL, NULL),
(456, 51, 'Chunarughat', 'চুনারুঘাট', 1, NULL, NULL),
(457, 51, 'Habiganj Sadar', 'হবিগঞ্জ সদর', 1, NULL, NULL),
(458, 51, 'Lakhai', 'লাক্ষাই', 1, NULL, NULL),
(459, 51, 'Madhabpur', 'মাধবপুর', 1, NULL, NULL),
(460, 51, 'Nabiganj', 'নবীগঞ্জ', 1, NULL, NULL),
(461, 51, 'Shaistagonj Upazila', 'শায়েস্তাগঞ্জ', 1, NULL, NULL),
(462, 52, 'Moulvibazar Sadar', 'মৌলভীবাজার', 1, NULL, NULL),
(463, 52, 'Barlekha', 'বড়লেখা', 1, NULL, NULL),
(464, 52, 'Juri', 'জুড়ি', 1, NULL, NULL),
(465, 52, 'Kamalganj', 'কামালগঞ্জ', 1, NULL, NULL),
(466, 52, 'Kulaura', 'কুলাউরা', 1, NULL, NULL),
(467, 52, 'Rajnagar', 'রাজনগর', 1, NULL, NULL),
(468, 52, 'Sreemangal', 'শ্রীমঙ্গল', 1, NULL, NULL),
(469, 53, 'Bishwamvarpur', 'বিসশম্ভারপুর', 1, NULL, NULL),
(470, 53, 'Chhatak', 'ছাতক', 1, NULL, NULL),
(471, 53, 'Derai', 'দেড়াই', 1, NULL, NULL),
(472, 53, 'Dharampasha', 'ধরমপাশা', 1, NULL, NULL),
(473, 53, 'Dowarabazar', 'দোয়ারাবাজার', 1, NULL, NULL),
(474, 53, 'Jagannathpur', 'জগন্নাথপুর', 1, NULL, NULL),
(475, 53, 'Jamalganj', 'জামালগঞ্জ', 1, NULL, NULL),
(476, 53, 'Sulla', 'সুল্লা', 1, NULL, NULL),
(477, 53, 'Sunamganj Sadar', 'সুনামগঞ্জ সদর', 1, NULL, NULL),
(478, 53, 'Shanthiganj', 'শান্তিগঞ্জ', 1, NULL, NULL),
(479, 53, 'Tahirpur', 'তাহিরপুর', 1, NULL, NULL),
(480, 54, 'Sylhet Sadar', 'সিলেট সদর', 1, NULL, NULL),
(481, 54, 'Beanibazar', 'বেয়ানিবাজার', 1, NULL, NULL),
(482, 54, 'Bishwanath', 'বিশ্বনাথ', 1, NULL, NULL),
(483, 54, 'Dakshin Surma Upazila', 'দক্ষিণ সুরমা', 1, NULL, NULL),
(484, 54, 'Balaganj', 'বালাগঞ্জ', 1, NULL, NULL),
(485, 54, 'Companiganj', 'কোম্পানিগঞ্জ', 1, NULL, NULL),
(486, 54, 'Fenchuganj', 'ফেঞ্চুগঞ্জ', 1, NULL, NULL),
(487, 54, 'Golapganj', 'গোলাপগঞ্জ', 1, NULL, NULL),
(488, 54, 'Gowainghat', 'গোয়াইনঘাট', 1, NULL, NULL),
(489, 54, 'Jaintiapur', 'জয়ন্তপুর', 1, NULL, NULL),
(490, 54, 'Kanaighat', 'কানাইঘাট', 1, NULL, NULL),
(491, 54, 'Zakiganj', 'জাকিগঞ্জ', 1, NULL, NULL),
(492, 54, 'Nobigonj', 'নবীগঞ্জ', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_menus`
--

CREATE TABLE `user_menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `parentMenu` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menuName` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `menuLink` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `menuIcon` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orderBy` int(11) NOT NULL,
  `menuStatus` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_menus`
--

INSERT INTO `user_menus` (`id`, `parentMenu`, `menuName`, `menuLink`, `menuIcon`, `orderBy`, `menuStatus`, `created_at`, `updated_at`) VALUES
(3, NULL, 'Dashboard', 'admin.index', 'fa fa-shopping-bag', 1, '1', '2019-08-30 04:08:49', '2019-08-31 01:52:17'),
(15, '78', 'Category', 'category.index', 'fa fa-caret-right', 1, '1', '2019-08-30 05:28:59', '2020-06-11 16:54:42'),
(18, NULL, 'Website Section', 'admin.index', 'fa fa-bars', 13, '1', '2019-08-30 05:47:44', '2019-10-19 03:30:31'),
(19, '18', 'Website Information', 'site.info', 'fa fa-caret-right', 1, '1', '2019-08-30 05:48:51', '2020-02-13 03:46:37'),
(20, '18', 'Menu', 'menu.index', 'fa fa-caret-right', 15, '1', '2019-08-30 05:49:27', '2019-10-29 22:11:51'),
(21, '18', 'Sliders', 'sliders.index', 'fa fa-caret-right', 16, '1', '2019-08-30 05:50:07', '2020-01-15 04:30:17'),
(26, '18', 'Contact List', 'contacts.index', 'fa fa-caret-right', 17, '1', '2019-08-30 05:53:19', '2020-01-15 04:30:37'),
(28, '18', 'Customer Review', 'reviews.index', 'fa fa-caret-right', 23, '0', '2019-08-30 05:55:02', '2020-02-10 02:13:17'),
(34, '18', 'Subscriber', 'subscribers.index', 'fa fa-caret-right', 19, '0', '2019-08-30 05:58:05', '2020-02-10 02:13:08'),
(36, NULL, 'User Management', 'admin.index', 'fa fa-bars', 31, '1', '2019-08-30 06:00:46', '2019-08-30 06:00:46'),
(37, '36', 'Admin Panel Information', 'admin.logo', 'fa fa-caret-right', 32, '1', '2019-08-30 06:01:24', '2019-11-30 03:48:09'),
(38, '36', 'Menus', 'usermenu.index', 'fa fa-caret-right', 33, '1', '2019-08-30 06:01:52', '2019-08-30 06:01:52'),
(39, '36', 'Role', 'user-roles.index', 'fa fa-caret-right', 34, '1', '2019-08-30 06:02:12', '2019-08-30 06:03:06'),
(40, '36', 'User', 'users.index', 'fa fa-caret-right', 35, '1', '2019-08-30 06:02:35', '2019-08-30 06:04:03'),
(70, '77', 'Articles', 'articles.index', 'fa fa-caret', 1, '1', '2019-10-20 06:33:09', '2020-01-16 10:39:07'),
(72, '78', 'Photo Gallery', 'photoGallery.index', 'fa fa-caret', 18, '1', '2019-11-02 00:46:00', '2020-02-12 06:44:41'),
(74, '36', 'Others Information', 'others.info', 'fa fa-caret', 36, '1', '2019-11-07 00:18:08', '2019-11-07 00:18:08'),
(77, NULL, 'Contents', 'admin.index', 'fa fa-caret', 14, '1', '2019-11-17 00:27:57', '2019-11-17 00:27:57'),
(78, NULL, 'Gallery', 'admin.index', 'fa fa-bars', 16, '1', '2019-11-17 00:30:27', '2020-02-12 22:48:38'),
(81, '18', 'Social Links', 'social.index', 'fa fa-caret', 20, '1', '2019-12-01 05:08:56', '2020-01-15 04:31:20'),
(87, '89', 'Districts', 'district.index', 'fa fa-caret', 1, '0', '2019-12-05 04:01:44', '2020-01-11 00:28:17'),
(88, '89', 'Thana', 'thana.index', 'fa fa-caret', 2, '0', '2019-12-05 04:16:16', '2020-01-11 00:28:41'),
(89, NULL, 'Basic Setup', 'admin.index', 'fa fa-bars', 2, '1', '2020-01-11 00:28:02', '2020-01-11 00:28:02'),
(90, '18', 'Customers', 'customers.index', 'fa fa-caret', 21, '0', '2020-01-15 04:32:13', '2020-02-10 02:13:16'),
(91, NULL, 'Teams', 'admin.index', 'fa fa-bars', 15, '1', '2020-01-16 05:41:51', '2020-05-22 03:33:02'),
(92, '91', 'Team Category', 'teamCategory.index', 'fa fa-caret', 1, '0', '2020-01-16 05:42:25', '2020-06-11 16:54:27'),
(93, '91', 'Team', 'team.index', 'fa fa-caret', 2, '1', '2020-01-16 05:42:56', '2020-05-22 03:33:05'),
(94, '99', 'Products', 'products.index', 'fa fa-caret', 2, '1', '2020-01-16 10:40:09', '2020-02-12 22:51:27'),
(95, '77', 'Collection', 'collection.index', 'fa fa-caret', 3, '0', '2020-01-16 11:24:41', '2020-02-10 02:14:17'),
(96, '18', 'Blogs', 'blogs.index', 'fa fa-caret', 22, '0', '2020-01-21 03:32:28', '2020-02-10 02:13:25'),
(97, '18', 'Testimonial', 'testimonial.index', 'fa fa-caret', 23, '1', '2020-01-26 09:34:18', '2020-01-26 09:34:18'),
(98, '77', 'Time Zone', 'timeZone.index', NULL, 2, '1', '2020-02-12 03:27:31', '2020-02-12 03:28:08'),
(99, NULL, 'Brand', 'admin.index', NULL, 15, '0', '2020-02-12 22:47:45', '2020-05-22 03:32:53'),
(100, '18', 'Contact Address', 'contactAddress.index', 'fa fa-caret-right', 2, '1', '2020-02-13 03:47:03', '2020-02-13 03:47:03');

-- --------------------------------------------------------

--
-- Table structure for table `user_menu_actions`
--

CREATE TABLE `user_menu_actions` (
  `id` int(10) UNSIGNED NOT NULL,
  `parentmenuId` int(11) NOT NULL,
  `menuType` int(11) NOT NULL,
  `actionName` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `actionLink` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `orderBy` int(11) NOT NULL,
  `actionStatus` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_menu_actions`
--

INSERT INTO `user_menu_actions` (`id`, `parentmenuId`, `menuType`, `actionName`, `actionLink`, `orderBy`, `actionStatus`, `created_at`, `updated_at`) VALUES
(4, 15, 1, 'Add', 'category.add', 1, 1, '2019-09-02 08:09:47', '2019-12-01 02:15:03'),
(6, 15, 4, 'Delete', 'category.delete', 4, 1, '2019-09-02 10:25:39', '2019-12-01 02:15:40'),
(7, 15, 2, 'Edit', 'category.edit', 2, 1, '2019-09-02 10:39:20', '2019-12-01 02:15:24'),
(13, 15, 3, 'Status', 'category.status', 10, 1, '2019-09-03 04:57:13', '2019-12-01 02:15:52'),
(24, 20, 1, 'Add', 'menuadd.page', 21, 1, '2019-09-03 10:48:02', '2019-09-03 10:48:02'),
(25, 20, 3, 'Status', 'menu.changeStatus', 22, 1, '2019-09-03 10:48:43', '2019-09-03 10:48:43'),
(26, 20, 2, 'Edit', 'menu.edit', 23, 1, '2019-09-03 10:49:08', '2019-09-03 10:49:08'),
(27, 20, 4, 'Delete', 'menu.delete', 24, 1, '2019-09-03 10:49:40', '2019-09-03 10:49:40'),
(28, 21, 1, 'Add', 'slideradd.page', 25, 1, '2019-09-03 10:50:35', '2019-09-03 10:50:35'),
(29, 21, 3, 'Status', 'sliders.changeStatus', 26, 1, '2019-09-03 10:52:05', '2019-09-03 10:52:05'),
(34, 21, 2, 'Edit', 'slider.edit', 27, 1, '2019-09-03 10:58:11', '2019-09-03 10:58:11'),
(35, 21, 4, 'Delete', 'slider.delete', 28, 1, '2019-09-03 10:58:58', '2019-09-03 10:58:58'),
(44, 28, 3, 'Status', 'reviews.changereviewStatus', 37, 1, '2019-09-03 11:12:16', '2019-09-03 11:12:16'),
(55, 38, 1, 'Add', 'usermenu.add', 47, 1, '2019-09-03 11:19:40', '2019-09-03 11:19:40'),
(56, 38, 2, 'Edit', 'usermenu.edit', 48, 1, '2019-09-03 11:19:55', '2019-09-03 11:19:55'),
(57, 38, 3, 'Status', 'usermenu.status', 49, 1, '2019-09-03 11:20:21', '2019-09-03 11:20:21'),
(58, 38, 4, 'Delete', 'usermenu-delete', 51, 1, '2019-09-03 11:20:37', '2019-09-06 09:25:44'),
(59, 40, 1, 'Add', 'useradd.page', 51, 1, '2019-09-03 11:23:08', '2019-09-03 11:23:08'),
(60, 40, 3, 'Status', 'user.changeuserStatus', 52, 1, '2019-09-03 11:23:26', '2019-09-03 11:23:26'),
(61, 40, 2, 'Edit', 'user.edit', 53, 1, '2019-09-03 11:23:47', '2019-09-03 11:23:47'),
(62, 40, 6, 'Change Password', 'user.password', 54, 1, '2019-09-03 11:24:12', '2019-09-03 11:24:12'),
(63, 40, 7, 'View', 'user.profile', 55, 1, '2019-09-03 11:24:50', '2019-10-05 01:42:44'),
(64, 39, 1, 'Add', 'userRoleAdd.page', 56, 1, '2019-09-03 11:25:46', '2019-09-03 11:25:46'),
(65, 39, 3, 'Status', 'userRole.changeuserRoleStatus', 57, 1, '2019-09-03 11:26:03', '2019-09-03 11:26:03'),
(66, 39, 2, 'Edit', 'userRole.edit', 58, 1, '2019-09-03 11:26:24', '2019-09-03 11:26:24'),
(67, 39, 5, 'Permission', 'userRole.permission', 59, 1, '2019-09-03 11:26:59', '2019-09-03 11:26:59'),
(86, 38, 8, 'View Action Menu', 'usermenuLink.index', 50, 1, '2019-09-06 09:26:39', '2019-09-06 09:26:39'),
(88, 40, 4, 'Delete User', 'user.delete', 56, 1, '2019-09-06 09:31:27', '2019-09-06 09:31:27'),
(89, 34, 4, 'Delete', 'subscriber.delete', 74, 1, '2019-09-06 09:36:56', '2019-09-06 09:36:56'),
(174, 70, 1, 'Add', 'articles.add', 1, 1, '2019-10-20 06:33:38', '2019-10-30 06:10:46'),
(175, 70, 2, 'Edit', 'articles.edit', 2, 1, '2019-10-20 06:33:50', '2019-10-30 06:10:52'),
(176, 70, 4, 'Delete', 'articles.delete', 3, 1, '2019-10-20 06:34:04', '2019-10-30 06:10:59'),
(177, 70, 3, 'Status', 'articles.status', 4, 1, '2019-10-20 06:34:20', '2019-10-30 06:11:05'),
(182, 72, 1, 'Add', 'photoGallery.add', 1, 1, '2019-11-02 00:46:51', '2019-12-01 03:13:30'),
(183, 72, 2, 'Edit', 'photoGallery.edit', 2, 1, '2019-11-02 00:47:03', '2019-12-01 03:13:38'),
(184, 72, 4, 'Delete', 'photoGallery.delete', 3, 1, '2019-11-02 00:47:28', '2019-12-01 03:13:46'),
(185, 72, 3, 'Status', 'photoGallery.status', 4, 1, '2019-11-02 00:47:43', '2019-12-01 03:13:54'),
(206, 81, 1, 'Add', 'social.add', 1, 1, '2019-12-01 05:15:10', '2019-12-01 05:15:10'),
(207, 81, 2, 'Edit', 'social.edit', 2, 1, '2019-12-01 05:15:21', '2019-12-01 05:15:21'),
(208, 81, 4, 'Delete', 'social.delete', 3, 1, '2019-12-01 05:15:32', '2019-12-01 05:15:32'),
(209, 81, 3, 'Status', 'social.status', 4, 1, '2019-12-01 05:17:02', '2019-12-01 05:17:02'),
(219, 39, 4, 'Delete', 'userRole.detele', 60, 1, '2019-12-04 05:47:47', '2019-12-04 05:49:01'),
(224, 87, 1, 'Add', 'district.add', 1, 1, '2019-12-05 04:02:05', '2019-12-05 04:02:05'),
(225, 87, 2, 'Edit', 'district.edit', 2, 1, '2019-12-05 04:02:17', '2019-12-05 04:02:17'),
(226, 87, 4, 'Delete', 'district.delete', 3, 1, '2019-12-05 04:02:40', '2019-12-05 04:02:40'),
(227, 87, 3, 'Status', 'district.status', 4, 1, '2019-12-05 04:02:56', '2019-12-05 04:02:56'),
(228, 88, 1, 'Add', 'thana.add', 1, 1, '2019-12-05 04:16:39', '2019-12-05 04:16:39'),
(229, 88, 2, 'Edit', 'thana.edit', 2, 1, '2019-12-05 04:16:53', '2019-12-05 04:16:53'),
(230, 88, 4, 'Delete', 'thana.delete', 3, 1, '2019-12-05 04:17:09', '2019-12-05 04:17:09'),
(231, 90, 1, 'Add', 'customers.add', 1, 1, '2020-01-15 04:33:12', '2020-01-15 04:33:12'),
(232, 90, 2, 'Edit', 'customers.edit', 2, 1, '2020-01-15 04:37:25', '2020-01-15 04:37:25'),
(233, 90, 3, 'Status', 'customers.status', 3, 1, '2020-01-15 04:38:13', '2020-01-15 04:38:13'),
(234, 90, 4, 'Delete', 'customers.delete', 4, 1, '2020-01-15 04:38:29', '2020-01-15 04:38:29'),
(235, 92, 1, 'Add', 'teamCategory.add', 1, 1, '2020-01-16 05:43:38', '2020-01-16 05:43:38'),
(236, 92, 2, 'Edit', 'teamCategory.edit', 2, 1, '2020-01-16 05:43:59', '2020-01-16 05:43:59'),
(237, 92, 4, 'Delete', 'teamCategory.delete', 3, 1, '2020-01-16 05:44:14', '2020-01-16 05:44:14'),
(238, 92, 3, 'Status', 'teamCategory.status', 4, 1, '2020-01-16 05:44:33', '2020-01-16 05:44:33'),
(239, 93, 1, 'Add', 'team.add', 1, 1, '2020-01-16 05:45:43', '2020-01-16 05:45:43'),
(240, 93, 2, 'Edit', 'team.edit', 2, 1, '2020-01-16 05:45:55', '2020-01-16 05:45:55'),
(241, 93, 4, 'Delete', 'team.delete', 3, 1, '2020-01-16 05:46:06', '2020-01-16 05:46:06'),
(242, 93, 3, 'Status', 'team.status', 4, 1, '2020-01-16 05:46:19', '2020-01-16 05:46:19'),
(243, 94, 1, 'Add', 'products.add', 1, 1, '2020-01-16 10:43:50', '2020-01-16 10:43:50'),
(244, 94, 2, 'Edit', 'products.edit', 2, 1, '2020-01-16 10:44:27', '2020-01-16 10:44:27'),
(245, 94, 4, 'Delete', 'products.delete', 3, 1, '2020-01-16 10:46:45', '2020-01-16 10:46:45'),
(246, 94, 3, 'Status', 'products.status', 4, 1, '2020-01-16 10:47:25', '2020-01-16 10:47:25'),
(247, 95, 1, 'Add', 'collection.add', 1, 1, '2020-01-16 11:28:20', '2020-01-17 04:47:35'),
(248, 95, 2, 'Edit', 'collection.edit', 2, 1, '2020-01-16 11:28:54', '2020-01-16 11:28:54'),
(249, 95, 4, 'Delete', 'collection.delete', 3, 1, '2020-01-16 11:29:41', '2020-01-16 11:29:41'),
(250, 95, 3, 'Status', 'collection.status', 4, 1, '2020-01-16 11:30:28', '2020-01-16 11:30:28'),
(251, 96, 1, 'Add', 'blogs.add', 1, 1, '2020-01-21 03:34:04', '2020-01-21 03:34:04'),
(252, 96, 2, 'Edit', 'blogs.edit', 2, 1, '2020-01-21 03:34:14', '2020-01-21 03:34:14'),
(253, 96, 4, 'Delete', 'blogs.delete', 3, 1, '2020-01-21 03:35:15', '2020-01-21 03:35:15'),
(254, 96, 3, 'Status', 'blogs.status', 4, 1, '2020-01-21 03:35:52', '2020-01-21 03:35:52'),
(255, 97, 1, 'Add', 'testimonial.add', 1, 1, '2020-01-26 09:35:23', '2020-01-26 09:35:23'),
(256, 97, 2, 'Edit', 'testimonial.edit', 2, 1, '2020-01-26 09:35:36', '2020-01-26 09:35:36'),
(257, 97, 4, 'Delete', 'testimonial.delete', 3, 1, '2020-01-26 09:35:48', '2020-01-26 09:35:48'),
(258, 97, 3, 'Status', 'testimonial.status', 4, 1, '2020-01-26 09:36:06', '2020-01-26 09:36:06'),
(259, 98, 1, 'Add', 'timeZone.add', 1, 1, '2020-02-12 03:47:53', '2020-02-12 03:47:53'),
(260, 98, 2, 'Edit', 'timeZone.edit', 2, 1, '2020-02-12 03:49:33', '2020-02-12 03:49:33'),
(261, 98, 4, 'Delete', 'timeZone.delete', 3, 1, '2020-02-12 03:53:23', '2020-02-12 03:53:23'),
(262, 98, 3, 'Status', 'timeZone.status', 4, 1, '2020-02-12 03:54:41', '2020-02-12 03:54:41'),
(263, 100, 1, 'Add', 'contactAddress.add', 1, 1, '2020-02-13 03:47:34', '2020-02-13 03:47:34'),
(264, 100, 2, 'Edit', 'contactAddress.edit', 2, 1, '2020-02-13 03:48:02', '2020-02-13 03:48:02'),
(265, 100, 4, 'Delete', 'contactAddress.delete', 3, 1, '2020-02-13 03:48:18', '2020-02-13 03:48:18'),
(266, 100, 3, 'Status', 'contactAddress.status', 4, 1, '2020-02-13 03:48:35', '2020-02-13 03:48:35');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentRole` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `permission` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `actionPermission` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`id`, `name`, `parentRole`, `status`, `permission`, `actionPermission`, `created_at`, `updated_at`) VALUES
(2, 'Super User', NULL, 1, '3,15,18,19,20,21,26,36,37,38,39,40,70,72,74,77,78,81,91,93,94,97,98,100', '4,7,6,13,24,25,26,27,28,29,34,35,55,56,57,86,58,64,65,66,67,219,59,60,61,62,63,88,174,175,176,177,182,183,184,185,206,207,208,209,239,240,241,242,243,244,245,246,255,256,257,258,259,260,261,262,263,264,265,266', '2019-04-17 00:50:05', '2020-05-22 03:40:30'),
(3, 'Admin', 2, 1, '3,18,19,21,26,34,36,37,39,40,70,77,81,90,91,92,93,94,95,96,97', '28,29,34,35,89,64,65,66,67,59,60,61,62,63,88,174,175,176,177,206,207,208,209,231,232,233,234,235,236,237,238,239,240,241,242,243,244,245,246,247,248,249,250,251,252,253,254,255,256,257,258', '2019-04-17 00:52:54', '2020-02-09 22:39:20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `access_log`
--
ALTER TABLE `access_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contactuses`
--
ALTER TABLE `contactuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_address`
--
ALTER TABLE `contact_address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `header_block`
--
ALTER TABLE `header_block`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletters`
--
ALTER TABLE `newsletters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `other_information`
--
ALTER TABLE `other_information`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `photo_galleries`
--
ALTER TABLE `photo_galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_links`
--
ALTER TABLE `social_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `team_category`
--
ALTER TABLE `team_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `time_zone`
--
ALTER TABLE `time_zone`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `upazilas`
--
ALTER TABLE `upazilas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `district_id` (`district_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_menus`
--
ALTER TABLE `user_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_menu_actions`
--
ALTER TABLE `user_menu_actions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `access_log`
--
ALTER TABLE `access_log`
  MODIFY `id` int(35) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `contactuses`
--
ALTER TABLE `contactuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact_address`
--
ALTER TABLE `contact_address`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `id` int(2) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `header_block`
--
ALTER TABLE `header_block`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `other_information`
--
ALTER TABLE `other_information`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `photo_galleries`
--
ALTER TABLE `photo_galleries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `social_links`
--
ALTER TABLE `social_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `team_category`
--
ALTER TABLE `team_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `time_zone`
--
ALTER TABLE `time_zone`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `upazilas`
--
ALTER TABLE `upazilas`
  MODIFY `id` int(2) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=493;

--
-- AUTO_INCREMENT for table `user_menus`
--
ALTER TABLE `user_menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `user_menu_actions`
--
ALTER TABLE `user_menu_actions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=267;

--
-- AUTO_INCREMENT for table `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
