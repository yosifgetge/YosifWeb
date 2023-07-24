-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 23 يوليو 2023 الساعة 03:45
-- إصدار الخادم: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- بنية الجدول `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add login', 7, 'add_login'),
(26, 'Can change login', 7, 'change_login'),
(27, 'Can delete login', 7, 'delete_login'),
(28, 'Can view login', 7, 'view_login'),
(29, 'Can add singup', 8, 'add_singup'),
(30, 'Can change singup', 8, 'change_singup'),
(31, 'Can delete singup', 8, 'delete_singup'),
(32, 'Can view singup', 8, 'view_singup'),
(33, 'Can add products', 9, 'add_products'),
(34, 'Can change products', 9, 'change_products'),
(35, 'Can delete products', 9, 'delete_products'),
(36, 'Can view products', 9, 'view_products'),
(37, 'Can add sing', 10, 'add_sing'),
(38, 'Can change sing', 10, 'change_sing'),
(39, 'Can delete sing', 10, 'delete_sing'),
(40, 'Can view sing', 10, 'view_sing');

-- --------------------------------------------------------

--
-- بنية الجدول `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'pages', 'login'),
(9, 'products', 'products'),
(6, 'sessions', 'session'),
(10, 'singup', 'sing'),
(8, 'singups', 'singup');

-- --------------------------------------------------------

--
-- بنية الجدول `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-07-21 21:48:06.343919'),
(2, 'auth', '0001_initial', '2023-07-21 21:48:06.652287'),
(3, 'admin', '0001_initial', '2023-07-21 21:48:06.718435'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-07-21 21:48:06.724418'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-07-21 21:48:06.730401'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-07-21 21:48:06.778379'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-07-21 21:48:06.816333'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-07-21 21:48:06.831293'),
(9, 'auth', '0004_alter_user_username_opts', '2023-07-21 21:48:06.836280'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-07-21 21:48:06.870552'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-07-21 21:48:06.871548'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-07-21 21:48:06.877533'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-07-21 21:48:06.891496'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-07-21 21:48:06.907676'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-07-21 21:48:06.922649'),
(16, 'auth', '0011_update_proxy_permissions', '2023-07-21 21:48:06.927856'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-07-21 21:48:06.941818'),
(18, 'pages', '0001_initial', '2023-07-21 21:48:06.952789'),
(19, 'pages', '0002_alter_login_password_alter_login_username', '2023-07-21 21:48:06.975728'),
(20, 'pages', '0003_login_active_alter_login_password_and_more', '2023-07-21 21:48:07.032576'),
(21, 'pages', '0004_login_female_login_male', '2023-07-21 21:48:07.068941'),
(22, 'pages', '0005_remove_login_female_remove_login_male', '2023-07-21 21:48:07.088983'),
(23, 'pages', '0006_singup', '2023-07-21 21:48:07.100952'),
(24, 'pages', '0007_delete_singup', '2023-07-21 21:48:07.105937'),
(25, 'products', '0001_initial', '2023-07-21 21:48:07.116910'),
(26, 'products', '0002_alter_products_price', '2023-07-21 21:48:07.134861'),
(27, 'sessions', '0001_initial', '2023-07-21 21:48:07.154726'),
(28, 'singups', '0001_initial', '2023-07-21 21:48:07.164702'),
(29, 'singups', '0002_rename_password_singup_passw_and_more', '2023-07-21 21:48:07.185303'),
(30, 'singups', '0003_rename_passw_singup_password_and_more', '2023-07-21 21:48:07.206248'),
(31, 'singups', '0004_rename_active_singup_active', '2023-07-21 21:48:07.217561'),
(32, 'singups', '0005_rename_password_singup_password_and_more', '2023-07-21 21:48:07.246484'),
(33, 'singups', '0006_alter_singup_password_alter_singup_username', '2023-07-21 21:48:07.274530'),
(34, 'singups', '0007_alter_singup_password_alter_singup_username', '2023-07-21 21:48:07.300545'),
(35, 'singups', '0008_alter_singup_password', '2023-07-21 21:48:07.312513'),
(36, 'singups', '0009_alter_singup_password_alter_singup_username', '2023-07-21 21:48:07.336449'),
(37, 'singups', '0010_alter_singup_password', '2023-07-21 21:48:07.348416'),
(38, 'singups', '0011_rename_password_singup_password', '2023-07-21 21:48:07.359388'),
(39, 'singups', '0012_alter_singup_username', '2023-07-21 21:48:07.371781'),
(40, 'singups', '0013_alter_singup_password', '2023-07-21 21:48:07.383748'),
(41, 'singups', '0014_alter_singup_username_alter_singup_password', '2023-07-21 21:48:07.421041'),
(42, 'singups', '0015_alter_singup_username', '2023-07-21 21:48:07.433009'),
(43, 'singups', '0016_alter_singup_password', '2023-07-21 21:48:07.444976'),
(44, 'singups', '0017_alter_singup_password', '2023-07-21 21:48:07.457942'),
(45, 'singups', '0018_alter_singup_username', '2023-07-21 21:48:07.469910'),
(46, 'singups', '0019_rename_singup_singups', '2023-07-21 21:48:07.482607'),
(47, 'singups', '0020_rename_singups_singup', '2023-07-21 21:48:07.494578'),
(48, 'singups', '0021_alter_singup_username_alter_singup_password', '2023-07-21 21:48:07.516519'),
(49, 'singups', '0022_alter_singup_username_alter_singup_password', '2023-07-21 21:48:07.539459'),
(50, 'singups', '0023_rename_password_singup_password', '2023-07-21 21:48:07.550348'),
(51, 'singups', '0024_alter_singup_password_alter_singup_username', '2023-07-21 21:48:07.591076'),
(52, 'singup', '0001_initial', '2023-07-21 21:57:22.526808'),
(53, 'singup', '0002_rename_password_sing_password_and_more', '2023-07-21 21:59:43.195476'),
(54, 'singup', '0003_alter_sing_password_alter_sing_username', '2023-07-21 22:00:54.106466'),
(55, 'singup', '0004_alter_sing_password_alter_sing_username', '2023-07-21 22:08:44.558514'),
(56, 'singup', '0005_rename_active_sing_active', '2023-07-21 22:10:41.327023'),
(57, 'singup', '0006_alter_sing_password_alter_sing_username', '2023-07-21 22:13:57.685249'),
(58, 'singup', '0007_alter_sing_password_alter_sing_username', '2023-07-21 22:18:25.373446'),
(59, 'singup', '0008_rename_password_sing_passworde', '2023-07-22 01:14:16.202644');

-- --------------------------------------------------------

--
-- بنية الجدول `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `pages_login`
--

CREATE TABLE `pages_login` (
  `id` bigint(20) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(100) NOT NULL,
  `Active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `products_products`
--

CREATE TABLE `products_products` (
  `id` bigint(20) NOT NULL,
  `name` varchar(25) NOT NULL,
  `content` longtext NOT NULL,
  `price` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `Active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `singup_sing`
--

CREATE TABLE `singup_sing` (
  `id` bigint(20) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `passworde` varchar(50) DEFAULT NULL,
  `Active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `singup_sing`
--

INSERT INTO `singup_sing` (`id`, `username`, `passworde`, `Active`) VALUES
(1, 'hweywbq', '', 1),
(2, 'يوسف 20072', '', 1),
(3, 'e5hety', NULL, 1),
(4, 'hweyw', NULL, 1),
(5, 'عصام علي عمار', NULL, 1),
(6, 'يوسف عمك', NULL, 1),
(7, 'ul', NULL, 1),
(8, 'يوسفسكيا', 'لثق444555', 1),
(9, 'يوسف 5t4', 'hje4yu', 1),
(10, '', '', 1),
(11, 'heyy73w', 'neu3e7', 1),
(12, '', '', 1),
(13, '', '', 1),
(14, 'يوسف علي', '2002-=-', 1),
(15, 'يوسف', '22', 1),
(16, 'yp', 'yyy', 1),
(17, 'yosif2020', '30', 1),
(18, '', '', 1),
(19, '', '', 1),
(20, '', '', 1),
(21, '', '', 1),
(22, '', '', 1),
(23, '', '', 1),
(24, 'عاشور', '20203040', 1),
(25, 'يوسف', '30013002ئئ', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `pages_login`
--
ALTER TABLE `pages_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products_products`
--
ALTER TABLE `products_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `singup_sing`
--
ALTER TABLE `singup_sing`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `pages_login`
--
ALTER TABLE `pages_login`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products_products`
--
ALTER TABLE `products_products`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `singup_sing`
--
ALTER TABLE `singup_sing`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- قيود الجداول المُلقاة.
--

--
-- قيود الجداول `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- قيود الجداول `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- قيود الجداول `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- قيود الجداول `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- قيود الجداول `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
