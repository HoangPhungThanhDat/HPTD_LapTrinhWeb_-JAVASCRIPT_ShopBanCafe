-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 06, 2024 lúc 09:13 AM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `hoangphungthanhdat_shopcaffe`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_permissions`
--

CREATE TABLE `admin_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `action` varchar(255) DEFAULT NULL,
  `action_parameters` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`action_parameters`)),
  `subject` varchar(255) DEFAULT NULL,
  `properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`properties`)),
  `conditions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`conditions`)),
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin_permissions`
--

INSERT INTO `admin_permissions` (`id`, `action`, `action_parameters`, `subject`, `properties`, `conditions`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'plugin::upload.read', '{}', NULL, '{}', '[]', '2024-05-27 18:26:21.813000', '2024-05-27 18:26:21.813000', NULL, NULL),
(2, 'plugin::upload.configure-view', '{}', NULL, '{}', '[]', '2024-05-27 18:26:21.827000', '2024-05-27 18:26:21.827000', NULL, NULL),
(3, 'plugin::upload.assets.create', '{}', NULL, '{}', '[]', '2024-05-27 18:26:21.837000', '2024-05-27 18:26:21.837000', NULL, NULL),
(4, 'plugin::upload.assets.update', '{}', NULL, '{}', '[]', '2024-05-27 18:26:21.852000', '2024-05-27 18:26:21.852000', NULL, NULL),
(5, 'plugin::upload.assets.download', '{}', NULL, '{}', '[]', '2024-05-27 18:26:21.864000', '2024-05-27 18:26:21.864000', NULL, NULL),
(6, 'plugin::upload.assets.copy-link', '{}', NULL, '{}', '[]', '2024-05-27 18:26:21.872000', '2024-05-27 18:26:21.872000', NULL, NULL),
(7, 'plugin::upload.read', '{}', NULL, '{}', '[\"admin::is-creator\"]', '2024-05-27 18:26:21.887000', '2024-05-27 18:26:21.887000', NULL, NULL),
(8, 'plugin::upload.configure-view', '{}', NULL, '{}', '[]', '2024-05-27 18:26:21.912000', '2024-05-27 18:26:21.912000', NULL, NULL),
(9, 'plugin::upload.assets.create', '{}', NULL, '{}', '[]', '2024-05-27 18:26:21.919000', '2024-05-27 18:26:21.919000', NULL, NULL),
(10, 'plugin::upload.assets.update', '{}', NULL, '{}', '[\"admin::is-creator\"]', '2024-05-27 18:26:21.929000', '2024-05-27 18:26:21.929000', NULL, NULL),
(11, 'plugin::upload.assets.download', '{}', NULL, '{}', '[]', '2024-05-27 18:26:21.933000', '2024-05-27 18:26:21.933000', NULL, NULL),
(12, 'plugin::upload.assets.copy-link', '{}', NULL, '{}', '[]', '2024-05-27 18:26:21.943000', '2024-05-27 18:26:21.943000', NULL, NULL),
(16, 'plugin::content-manager.explorer.delete', '{}', 'plugin::users-permissions.user', '{}', '[]', '2024-05-27 18:26:22.023000', '2024-05-27 18:26:22.023000', NULL, NULL),
(17, 'plugin::content-manager.single-types.configure-view', '{}', NULL, '{}', '[]', '2024-05-27 18:26:22.034000', '2024-05-27 18:26:22.034000', NULL, NULL),
(18, 'plugin::content-manager.collection-types.configure-view', '{}', NULL, '{}', '[]', '2024-05-27 18:26:22.045000', '2024-05-27 18:26:22.045000', NULL, NULL),
(19, 'plugin::content-manager.components.configure-layout', '{}', NULL, '{}', '[]', '2024-05-27 18:26:22.051000', '2024-05-27 18:26:22.051000', NULL, NULL),
(20, 'plugin::content-type-builder.read', '{}', NULL, '{}', '[]', '2024-05-27 18:26:22.064000', '2024-05-27 18:26:22.064000', NULL, NULL),
(21, 'plugin::email.settings.read', '{}', NULL, '{}', '[]', '2024-05-27 18:26:22.075000', '2024-05-27 18:26:22.075000', NULL, NULL),
(22, 'plugin::upload.read', '{}', NULL, '{}', '[]', '2024-05-27 18:26:22.081000', '2024-05-27 18:26:22.081000', NULL, NULL),
(23, 'plugin::upload.assets.create', '{}', NULL, '{}', '[]', '2024-05-27 18:26:22.087000', '2024-05-27 18:26:22.087000', NULL, NULL),
(24, 'plugin::upload.assets.update', '{}', NULL, '{}', '[]', '2024-05-27 18:26:22.096000', '2024-05-27 18:26:22.096000', NULL, NULL),
(25, 'plugin::upload.assets.download', '{}', NULL, '{}', '[]', '2024-05-27 18:26:22.103000', '2024-05-27 18:26:22.103000', NULL, NULL),
(26, 'plugin::upload.assets.copy-link', '{}', NULL, '{}', '[]', '2024-05-27 18:26:22.114000', '2024-05-27 18:26:22.114000', NULL, NULL),
(27, 'plugin::upload.configure-view', '{}', NULL, '{}', '[]', '2024-05-27 18:26:22.119000', '2024-05-27 18:26:22.119000', NULL, NULL),
(28, 'plugin::upload.settings.read', '{}', NULL, '{}', '[]', '2024-05-27 18:26:22.129000', '2024-05-27 18:26:22.129000', NULL, NULL),
(29, 'plugin::users-permissions.roles.create', '{}', NULL, '{}', '[]', '2024-05-27 18:26:22.136000', '2024-05-27 18:26:22.136000', NULL, NULL),
(30, 'plugin::users-permissions.roles.read', '{}', NULL, '{}', '[]', '2024-05-27 18:26:22.146000', '2024-05-27 18:26:22.146000', NULL, NULL),
(31, 'plugin::users-permissions.roles.update', '{}', NULL, '{}', '[]', '2024-05-27 18:26:22.151000', '2024-05-27 18:26:22.151000', NULL, NULL),
(32, 'plugin::users-permissions.roles.delete', '{}', NULL, '{}', '[]', '2024-05-27 18:26:22.162000', '2024-05-27 18:26:22.162000', NULL, NULL),
(33, 'plugin::users-permissions.providers.read', '{}', NULL, '{}', '[]', '2024-05-27 18:26:22.168000', '2024-05-27 18:26:22.168000', NULL, NULL),
(34, 'plugin::users-permissions.providers.update', '{}', NULL, '{}', '[]', '2024-05-27 18:26:22.178000', '2024-05-27 18:26:22.178000', NULL, NULL),
(35, 'plugin::users-permissions.email-templates.read', '{}', NULL, '{}', '[]', '2024-05-27 18:26:22.182000', '2024-05-27 18:26:22.182000', NULL, NULL),
(36, 'plugin::users-permissions.email-templates.update', '{}', NULL, '{}', '[]', '2024-05-27 18:26:22.187000', '2024-05-27 18:26:22.187000', NULL, NULL),
(37, 'plugin::users-permissions.advanced-settings.read', '{}', NULL, '{}', '[]', '2024-05-27 18:26:22.196000', '2024-05-27 18:26:22.196000', NULL, NULL),
(38, 'plugin::users-permissions.advanced-settings.update', '{}', NULL, '{}', '[]', '2024-05-27 18:26:22.201000', '2024-05-27 18:26:22.201000', NULL, NULL),
(39, 'plugin::i18n.locale.create', '{}', NULL, '{}', '[]', '2024-05-27 18:26:22.210000', '2024-05-27 18:26:22.210000', NULL, NULL),
(40, 'plugin::i18n.locale.read', '{}', NULL, '{}', '[]', '2024-05-27 18:26:22.214000', '2024-05-27 18:26:22.214000', NULL, NULL),
(41, 'plugin::i18n.locale.update', '{}', NULL, '{}', '[]', '2024-05-27 18:26:22.219000', '2024-05-27 18:26:22.219000', NULL, NULL),
(42, 'plugin::i18n.locale.delete', '{}', NULL, '{}', '[]', '2024-05-27 18:26:22.227000', '2024-05-27 18:26:22.227000', NULL, NULL),
(43, 'admin::marketplace.read', '{}', NULL, '{}', '[]', '2024-05-27 18:26:22.230000', '2024-05-27 18:26:22.230000', NULL, NULL),
(44, 'admin::webhooks.create', '{}', NULL, '{}', '[]', '2024-05-27 18:26:22.233000', '2024-05-27 18:26:22.233000', NULL, NULL),
(45, 'admin::webhooks.read', '{}', NULL, '{}', '[]', '2024-05-27 18:26:22.236000', '2024-05-27 18:26:22.236000', NULL, NULL),
(46, 'admin::webhooks.update', '{}', NULL, '{}', '[]', '2024-05-27 18:26:22.240000', '2024-05-27 18:26:22.240000', NULL, NULL),
(47, 'admin::webhooks.delete', '{}', NULL, '{}', '[]', '2024-05-27 18:26:22.245000', '2024-05-27 18:26:22.245000', NULL, NULL),
(48, 'admin::users.create', '{}', NULL, '{}', '[]', '2024-05-27 18:26:22.255000', '2024-05-27 18:26:22.255000', NULL, NULL),
(49, 'admin::users.read', '{}', NULL, '{}', '[]', '2024-05-27 18:26:22.262000', '2024-05-27 18:26:22.262000', NULL, NULL),
(50, 'admin::users.update', '{}', NULL, '{}', '[]', '2024-05-27 18:26:22.271000', '2024-05-27 18:26:22.271000', NULL, NULL),
(51, 'admin::users.delete', '{}', NULL, '{}', '[]', '2024-05-27 18:26:22.280000', '2024-05-27 18:26:22.280000', NULL, NULL),
(52, 'admin::roles.create', '{}', NULL, '{}', '[]', '2024-05-27 18:26:22.287000', '2024-05-27 18:26:22.287000', NULL, NULL),
(53, 'admin::roles.read', '{}', NULL, '{}', '[]', '2024-05-27 18:26:22.298000', '2024-05-27 18:26:22.298000', NULL, NULL),
(54, 'admin::roles.update', '{}', NULL, '{}', '[]', '2024-05-27 18:26:22.304000', '2024-05-27 18:26:22.304000', NULL, NULL),
(55, 'admin::roles.delete', '{}', NULL, '{}', '[]', '2024-05-27 18:26:22.312000', '2024-05-27 18:26:22.312000', NULL, NULL),
(56, 'admin::api-tokens.access', '{}', NULL, '{}', '[]', '2024-05-27 18:26:22.317000', '2024-05-27 18:26:22.317000', NULL, NULL),
(57, 'admin::api-tokens.create', '{}', NULL, '{}', '[]', '2024-05-27 18:26:22.322000', '2024-05-27 18:26:22.322000', NULL, NULL),
(58, 'admin::api-tokens.read', '{}', NULL, '{}', '[]', '2024-05-27 18:26:22.329000', '2024-05-27 18:26:22.329000', NULL, NULL),
(59, 'admin::api-tokens.update', '{}', NULL, '{}', '[]', '2024-05-27 18:26:22.333000', '2024-05-27 18:26:22.333000', NULL, NULL),
(60, 'admin::api-tokens.regenerate', '{}', NULL, '{}', '[]', '2024-05-27 18:26:22.343000', '2024-05-27 18:26:22.343000', NULL, NULL),
(61, 'admin::api-tokens.delete', '{}', NULL, '{}', '[]', '2024-05-27 18:26:22.352000', '2024-05-27 18:26:22.352000', NULL, NULL),
(62, 'admin::project-settings.update', '{}', NULL, '{}', '[]', '2024-05-27 18:26:22.362000', '2024-05-27 18:26:22.362000', NULL, NULL),
(63, 'admin::project-settings.read', '{}', NULL, '{}', '[]', '2024-05-27 18:26:22.368000', '2024-05-27 18:26:22.368000', NULL, NULL),
(64, 'admin::transfer.tokens.access', '{}', NULL, '{}', '[]', '2024-05-27 18:26:22.378000', '2024-05-27 18:26:22.378000', NULL, NULL),
(65, 'admin::transfer.tokens.create', '{}', NULL, '{}', '[]', '2024-05-27 18:26:22.384000', '2024-05-27 18:26:22.384000', NULL, NULL),
(66, 'admin::transfer.tokens.read', '{}', NULL, '{}', '[]', '2024-05-27 18:26:22.394000', '2024-05-27 18:26:22.394000', NULL, NULL),
(67, 'admin::transfer.tokens.update', '{}', NULL, '{}', '[]', '2024-05-27 18:26:22.402000', '2024-05-27 18:26:22.402000', NULL, NULL),
(68, 'admin::transfer.tokens.regenerate', '{}', NULL, '{}', '[]', '2024-05-27 18:26:22.411000', '2024-05-27 18:26:22.411000', NULL, NULL),
(69, 'admin::transfer.tokens.delete', '{}', NULL, '{}', '[]', '2024-05-27 18:26:22.417000', '2024-05-27 18:26:22.417000', NULL, NULL),
(73, 'plugin::content-manager.explorer.delete', '{}', 'api::category.category', '{}', '[]', '2024-05-27 19:20:02.507000', '2024-05-27 19:20:02.507000', NULL, NULL),
(74, 'plugin::content-manager.explorer.publish', '{}', 'api::category.category', '{}', '[]', '2024-05-27 19:20:02.511000', '2024-05-27 19:20:02.511000', NULL, NULL),
(81, 'plugin::content-manager.explorer.delete', '{}', 'api::product.product', '{}', '[]', '2024-05-28 19:17:50.977000', '2024-05-28 19:17:50.977000', NULL, NULL),
(82, 'plugin::content-manager.explorer.publish', '{}', 'api::product.product', '{}', '[]', '2024-05-28 19:17:50.981000', '2024-05-28 19:17:50.981000', NULL, NULL),
(83, 'plugin::content-manager.explorer.create', '{}', 'api::brand.brand', '{\"fields\":[\"brand_name\",\"slug\",\"address\"]}', '[]', '2024-05-28 19:23:43.189000', '2024-05-28 19:23:43.189000', NULL, NULL),
(84, 'plugin::content-manager.explorer.read', '{}', 'api::brand.brand', '{\"fields\":[\"brand_name\",\"slug\",\"address\"]}', '[]', '2024-05-28 19:23:43.196000', '2024-05-28 19:23:43.196000', NULL, NULL),
(85, 'plugin::content-manager.explorer.update', '{}', 'api::brand.brand', '{\"fields\":[\"brand_name\",\"slug\",\"address\"]}', '[]', '2024-05-28 19:23:43.199000', '2024-05-28 19:23:43.199000', NULL, NULL),
(86, 'plugin::content-manager.explorer.delete', '{}', 'api::brand.brand', '{}', '[]', '2024-05-28 19:23:43.203000', '2024-05-28 19:23:43.203000', NULL, NULL),
(87, 'plugin::content-manager.explorer.publish', '{}', 'api::brand.brand', '{}', '[]', '2024-05-28 19:23:43.208000', '2024-05-28 19:23:43.208000', NULL, NULL),
(88, 'plugin::content-manager.explorer.create', '{}', 'api::menu.menu', '{\"fields\":[\"name\",\"link\",\"parent_id\",\"position\",\"status\",\"sort_order\"]}', '[]', '2024-05-28 19:26:36.809000', '2024-05-28 19:26:36.809000', NULL, NULL),
(89, 'plugin::content-manager.explorer.read', '{}', 'api::menu.menu', '{\"fields\":[\"name\",\"link\",\"parent_id\",\"position\",\"status\",\"sort_order\"]}', '[]', '2024-05-28 19:26:36.816000', '2024-05-28 19:26:36.816000', NULL, NULL),
(90, 'plugin::content-manager.explorer.update', '{}', 'api::menu.menu', '{\"fields\":[\"name\",\"link\",\"parent_id\",\"position\",\"status\",\"sort_order\"]}', '[]', '2024-05-28 19:26:36.820000', '2024-05-28 19:26:36.820000', NULL, NULL),
(91, 'plugin::content-manager.explorer.delete', '{}', 'api::menu.menu', '{}', '[]', '2024-05-28 19:26:36.823000', '2024-05-28 19:26:36.823000', NULL, NULL),
(92, 'plugin::content-manager.explorer.publish', '{}', 'api::menu.menu', '{}', '[]', '2024-05-28 19:26:36.827000', '2024-05-28 19:26:36.827000', NULL, NULL),
(96, 'plugin::content-manager.explorer.delete', '{}', 'api::slider.slider', '{}', '[]', '2024-05-28 19:27:34.905000', '2024-05-28 19:27:34.905000', NULL, NULL),
(97, 'plugin::content-manager.explorer.publish', '{}', 'api::slider.slider', '{}', '[]', '2024-05-28 19:27:34.909000', '2024-05-28 19:27:34.909000', NULL, NULL),
(98, 'plugin::content-manager.explorer.create', '{}', 'api::slider.slider', '{\"fields\":[\"name\",\"position\",\"image\",\"sort_order\",\"status\"]}', '[]', '2024-05-28 19:30:11.808000', '2024-05-28 19:30:11.808000', NULL, NULL),
(99, 'plugin::content-manager.explorer.read', '{}', 'api::slider.slider', '{\"fields\":[\"name\",\"position\",\"image\",\"sort_order\",\"status\"]}', '[]', '2024-05-28 19:30:11.821000', '2024-05-28 19:30:11.821000', NULL, NULL),
(100, 'plugin::content-manager.explorer.update', '{}', 'api::slider.slider', '{\"fields\":[\"name\",\"position\",\"image\",\"sort_order\",\"status\"]}', '[]', '2024-05-28 19:30:11.825000', '2024-05-28 19:30:11.825000', NULL, NULL),
(101, 'plugin::content-manager.explorer.create', '{}', 'api::use.use', '{\"fields\":[\"username\",\"phone\",\"email\",\"address\",\"password\"]}', '[]', '2024-05-28 19:33:24.130000', '2024-05-28 19:33:24.130000', NULL, NULL),
(102, 'plugin::content-manager.explorer.read', '{}', 'api::use.use', '{\"fields\":[\"username\",\"phone\",\"email\",\"address\",\"password\"]}', '[]', '2024-05-28 19:33:24.137000', '2024-05-28 19:33:24.137000', NULL, NULL),
(103, 'plugin::content-manager.explorer.update', '{}', 'api::use.use', '{\"fields\":[\"username\",\"phone\",\"email\",\"address\",\"password\"]}', '[]', '2024-05-28 19:33:24.141000', '2024-05-28 19:33:24.141000', NULL, NULL),
(104, 'plugin::content-manager.explorer.delete', '{}', 'api::use.use', '{}', '[]', '2024-05-28 19:33:24.144000', '2024-05-28 19:33:24.144000', NULL, NULL),
(105, 'plugin::content-manager.explorer.publish', '{}', 'api::use.use', '{}', '[]', '2024-05-28 19:33:24.149000', '2024-05-28 19:33:24.149000', NULL, NULL),
(112, 'plugin::content-manager.explorer.create', '{}', 'api::category.category', '{\"fields\":[\"category_name\",\"slug\",\"parent_id\",\"status\",\"image\",\"products\"]}', '[]', '2024-06-09 14:31:18.882000', '2024-06-09 14:31:18.882000', NULL, NULL),
(113, 'plugin::content-manager.explorer.create', '{}', 'api::product.product', '{\"fields\":[\"product_name\",\"cat_id\",\"description\",\"price\",\"is_on_sale\",\"sale_price\",\"image\",\"slug\",\"brand_id\",\"category\"]}', '[]', '2024-06-09 14:31:18.888000', '2024-06-09 14:31:18.888000', NULL, NULL),
(114, 'plugin::content-manager.explorer.read', '{}', 'api::category.category', '{\"fields\":[\"category_name\",\"slug\",\"parent_id\",\"status\",\"image\",\"products\"]}', '[]', '2024-06-09 14:31:18.892000', '2024-06-09 14:31:18.892000', NULL, NULL),
(115, 'plugin::content-manager.explorer.read', '{}', 'api::product.product', '{\"fields\":[\"product_name\",\"cat_id\",\"description\",\"price\",\"is_on_sale\",\"sale_price\",\"image\",\"slug\",\"brand_id\",\"category\"]}', '[]', '2024-06-09 14:31:18.896000', '2024-06-09 14:31:18.896000', NULL, NULL),
(116, 'plugin::content-manager.explorer.update', '{}', 'api::category.category', '{\"fields\":[\"category_name\",\"slug\",\"parent_id\",\"status\",\"image\",\"products\"]}', '[]', '2024-06-09 14:31:18.899000', '2024-06-09 14:31:18.899000', NULL, NULL),
(117, 'plugin::content-manager.explorer.update', '{}', 'api::product.product', '{\"fields\":[\"product_name\",\"cat_id\",\"description\",\"price\",\"is_on_sale\",\"sale_price\",\"image\",\"slug\",\"brand_id\",\"category\"]}', '[]', '2024-06-09 14:31:18.903000', '2024-06-09 14:31:18.903000', NULL, NULL),
(118, 'plugin::content-manager.explorer.create', '{}', 'plugin::users-permissions.user', '{\"fields\":[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\",\"phone\",\"address\"]}', '[]', '2024-06-22 20:13:31.356000', '2024-06-22 20:13:31.356000', NULL, NULL),
(119, 'plugin::content-manager.explorer.read', '{}', 'plugin::users-permissions.user', '{\"fields\":[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\",\"phone\",\"address\"]}', '[]', '2024-06-22 20:13:31.362000', '2024-06-22 20:13:31.362000', NULL, NULL),
(120, 'plugin::content-manager.explorer.update', '{}', 'plugin::users-permissions.user', '{\"fields\":[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\",\"phone\",\"address\"]}', '[]', '2024-06-22 20:13:31.365000', '2024-06-22 20:13:31.365000', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_permissions_role_links`
--

CREATE TABLE `admin_permissions_role_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `permission_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin_permissions_role_links`
--

INSERT INTO `admin_permissions_role_links` (`id`, `permission_id`, `role_id`, `permission_order`) VALUES
(1, 1, 2, 1),
(2, 2, 2, 2),
(3, 3, 2, 3),
(4, 4, 2, 4),
(5, 5, 2, 5),
(6, 6, 2, 6),
(7, 7, 3, 1),
(8, 8, 3, 2),
(9, 9, 3, 3),
(10, 10, 3, 4),
(11, 11, 3, 5),
(12, 12, 3, 6),
(16, 16, 1, 4),
(17, 17, 1, 5),
(18, 18, 1, 6),
(19, 19, 1, 7),
(20, 20, 1, 8),
(21, 21, 1, 9),
(22, 22, 1, 10),
(23, 23, 1, 11),
(24, 24, 1, 12),
(25, 25, 1, 13),
(26, 26, 1, 14),
(27, 27, 1, 15),
(28, 28, 1, 16),
(29, 29, 1, 17),
(30, 30, 1, 18),
(31, 31, 1, 19),
(32, 32, 1, 20),
(33, 33, 1, 21),
(34, 34, 1, 22),
(35, 35, 1, 23),
(36, 36, 1, 24),
(37, 37, 1, 25),
(38, 38, 1, 26),
(39, 39, 1, 27),
(40, 40, 1, 28),
(41, 41, 1, 29),
(42, 42, 1, 30),
(43, 43, 1, 31),
(44, 44, 1, 32),
(45, 45, 1, 33),
(46, 46, 1, 34),
(47, 47, 1, 35),
(48, 48, 1, 36),
(49, 49, 1, 37),
(50, 50, 1, 38),
(51, 51, 1, 39),
(52, 52, 1, 40),
(53, 53, 1, 41),
(54, 54, 1, 42),
(55, 55, 1, 43),
(56, 56, 1, 44),
(57, 57, 1, 45),
(58, 58, 1, 46),
(59, 59, 1, 47),
(60, 60, 1, 48),
(61, 61, 1, 49),
(62, 62, 1, 50),
(63, 63, 1, 51),
(64, 64, 1, 52),
(65, 65, 1, 53),
(66, 66, 1, 54),
(67, 67, 1, 55),
(68, 68, 1, 56),
(69, 69, 1, 57),
(73, 73, 1, 61),
(74, 74, 1, 62),
(81, 81, 1, 69),
(82, 82, 1, 70),
(83, 83, 1, 71),
(84, 84, 1, 72),
(85, 85, 1, 73),
(86, 86, 1, 74),
(87, 87, 1, 75),
(88, 88, 1, 76),
(89, 89, 1, 77),
(90, 90, 1, 78),
(91, 91, 1, 79),
(92, 92, 1, 80),
(96, 96, 1, 84),
(97, 97, 1, 85),
(98, 98, 1, 86),
(99, 99, 1, 87),
(100, 100, 1, 88),
(101, 101, 1, 89),
(102, 102, 1, 90),
(103, 103, 1, 91),
(104, 104, 1, 92),
(105, 105, 1, 93),
(112, 112, 1, 94),
(113, 113, 1, 95),
(114, 114, 1, 96),
(115, 115, 1, 97),
(116, 116, 1, 98),
(117, 117, 1, 99),
(118, 118, 1, 100),
(119, 119, 1, 101),
(120, 120, 1, 102);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `name`, `code`, `description`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'Super Admin', 'strapi-super-admin', 'Super Admins can access and manage all features and settings.', '2024-05-27 18:26:21.784000', '2024-05-27 18:26:21.784000', NULL, NULL),
(2, 'Editor', 'strapi-editor', 'Editors can manage and publish contents including those of other users.', '2024-05-27 18:26:21.799000', '2024-05-27 18:26:21.799000', NULL, NULL),
(3, 'Author', 'strapi-author', 'Authors can manage the content they have created.', '2024-05-27 18:26:21.804000', '2024-05-27 18:26:21.804000', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `reset_password_token` varchar(255) DEFAULT NULL,
  `registration_token` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `prefered_language` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin_users`
--

INSERT INTO `admin_users` (`id`, `firstname`, `lastname`, `username`, `email`, `password`, `reset_password_token`, `registration_token`, `is_active`, `blocked`, `prefered_language`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'First', 'Last', NULL, 'admin@gmail.com', '$2a$10$XxInduuw5BlgL7ikhWH4Mu1DpAlrcnQ161j6mL0QkZUeQ.s5CMfHi', NULL, NULL, 1, 0, NULL, '2024-05-27 18:33:01.268000', '2024-05-27 18:33:01.268000', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_users_roles_links`
--

CREATE TABLE `admin_users_roles_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `role_order` double UNSIGNED DEFAULT NULL,
  `user_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin_users_roles_links`
--

INSERT INTO `admin_users_roles_links` (`id`, `user_id`, `role_id`, `role_order`, `user_order`) VALUES
(1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `brands`
--

CREATE TABLE `brands` (
  `id` int(10) UNSIGNED NOT NULL,
  `brand_name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `brands`
--

INSERT INTO `brands` (`id`, `brand_name`, `slug`, `address`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'Cafe Americano', 'Cafe-Americano', 'HCM', '2024-06-02 20:47:49.445000', '2024-06-16 13:50:57.448000', '2024-06-16 13:50:57.445000', 1, 1),
(2, 'Cafe Espresso', 'Cafe-Espresso', 'HCM', '2024-06-02 20:48:19.897000', '2024-06-04 18:43:48.629000', '2024-06-04 18:25:54.234000', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `slug`, `parent_id`, `status`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'Cafe Espresso', 'Cafe-Espresso', 0, '1', '2024-05-28 17:11:40.966000', '2024-06-09 14:40:25.480000', '2024-06-03 20:55:06.557000', 1, 1),
(2, 'Cafe Americano', 'Cafe-Americano', 1, '2', '2024-05-28 18:57:17.676000', '2024-06-09 14:38:52.792000', '2024-06-03 20:13:16.307000', 1, 1),
(3, 'Cafe Truyền Thống', 'Cafe-truyen-thong', 2, '3', '2024-05-28 19:02:09.070000', '2024-06-09 14:38:15.989000', '2024-06-03 20:13:21.852000', 1, 1),
(6, 'Cafe Cappuccino', 'Cafe-Cappuccino', 4, '3', '2024-05-29 13:12:25.151000', '2024-06-04 18:42:39.734000', '2024-06-03 20:55:02.364000', 1, 1),
(7, 'Cafe Mocha', 'Cafe-Mocha', 5, '5', '2024-05-29 13:15:47.990000', '2024-06-09 14:37:50.685000', '2024-06-03 20:55:51.965000', 1, 1),
(8, 'Cafe Flat White', 'Cafe-Flat-White', 6, '6', '2024-05-29 13:19:35.225000', '2024-06-04 18:43:00.305000', '2024-06-03 20:55:37.152000', 1, 1),
(9, 'Cafe Latte', 'Cafe-Latte', 7, '7', '2024-05-29 13:22:01.080000', '2024-06-04 18:43:10.870000', '2024-06-03 20:55:44.632000', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `files`
--

CREATE TABLE `files` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `alternative_text` varchar(255) DEFAULT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `formats` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`formats`)),
  `hash` varchar(255) DEFAULT NULL,
  `ext` varchar(255) DEFAULT NULL,
  `mime` varchar(255) DEFAULT NULL,
  `size` decimal(10,2) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `preview_url` varchar(255) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `provider_metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`provider_metadata`)),
  `folder_path` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `files`
--

INSERT INTO `files` (`id`, `name`, `alternative_text`, `caption`, `width`, `height`, `formats`, `hash`, `ext`, `mime`, `size`, `url`, `preview_url`, `provider`, `provider_metadata`, `folder_path`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'cafe đen.png', NULL, NULL, 305, 212, '{\"thumbnail\":{\"name\":\"thumbnail_cafe đen.png\",\"hash\":\"thumbnail_cafe_den_5776d39ff3\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":224,\"height\":156,\"size\":78.32,\"sizeInBytes\":78318,\"url\":\"/uploads/thumbnail_cafe_den_5776d39ff3.png\"}}', 'cafe_den_5776d39ff3', '.png', 'image/png', 39.75, '/uploads/cafe_den_5776d39ff3.png', NULL, 'local', NULL, '/', '2024-05-28 17:11:15.849000', '2024-06-02 21:03:23.179000', 1, 1),
(3, 'cafe sữa.png', NULL, NULL, 680, 430, '{\"thumbnail\":{\"name\":\"thumbnail_cafe sữa.png\",\"hash\":\"thumbnail_cafe_sua_a00b8e8f52\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":155,\"size\":101.92,\"sizeInBytes\":101918,\"url\":\"/uploads/thumbnail_cafe_sua_a00b8e8f52.png\"},\"small\":{\"name\":\"small_cafe sữa.png\",\"hash\":\"small_cafe_sua_a00b8e8f52\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":316,\"size\":394.25,\"sizeInBytes\":394251,\"url\":\"/uploads/small_cafe_sua_a00b8e8f52.png\"}}', 'cafe_sua_a00b8e8f52', '.png', 'image/png', 189.64, '/uploads/cafe_sua_a00b8e8f52.png', NULL, 'local', NULL, '/', '2024-05-28 19:03:49.685000', '2024-05-28 19:03:49.685000', 1, 1),
(4, 'chòn.png', NULL, NULL, 687, 402, '{\"thumbnail\":{\"name\":\"thumbnail_chòn.png\",\"hash\":\"thumbnail_chon_574e6de061\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":143,\"size\":80.99,\"sizeInBytes\":80985,\"url\":\"/uploads/thumbnail_chon_574e6de061.png\"},\"small\":{\"name\":\"small_chòn.png\",\"hash\":\"small_chon_574e6de061\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":293,\"size\":309.3,\"sizeInBytes\":309300,\"url\":\"/uploads/small_chon_574e6de061.png\"}}', 'chon_574e6de061', '.png', 'image/png', 128.91, '/uploads/chon_574e6de061.png', NULL, 'local', NULL, '/', '2024-05-28 19:06:35.954000', '2024-06-16 21:37:53.174000', 1, 1),
(5, 'caffe2.png', NULL, NULL, 1126, 622, '{\"thumbnail\":{\"name\":\"thumbnail_caffe2.png\",\"hash\":\"thumbnail_caffe2_a80258494e\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":135,\"size\":78.65,\"sizeInBytes\":78654,\"url\":\"/uploads/thumbnail_caffe2_a80258494e.png\"},\"small\":{\"name\":\"small_caffe2.png\",\"hash\":\"small_caffe2_a80258494e\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":276,\"size\":292.01,\"sizeInBytes\":292007,\"url\":\"/uploads/small_caffe2_a80258494e.png\"},\"medium\":{\"name\":\"medium_caffe2.png\",\"hash\":\"medium_caffe2_a80258494e\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":750,\"height\":414,\"size\":607.78,\"sizeInBytes\":607780,\"url\":\"/uploads/medium_caffe2_a80258494e.png\"},\"large\":{\"name\":\"large_caffe2.png\",\"hash\":\"large_caffe2_a80258494e\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":1000,\"height\":552,\"size\":1009.21,\"sizeInBytes\":1009212,\"url\":\"/uploads/large_caffe2_a80258494e.png\"}}', 'caffe2_a80258494e', '.png', 'image/png', 282.78, '/uploads/caffe2_a80258494e.png', NULL, 'local', NULL, '/', '2024-05-29 13:12:21.802000', '2024-05-29 13:12:21.802000', 1, 1),
(6, 'cafe mocha.png', NULL, NULL, 786, 487, '{\"thumbnail\":{\"name\":\"thumbnail_cafe mocha.png\",\"hash\":\"thumbnail_cafe_mocha_6e300c3c16\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":152,\"size\":101.3,\"sizeInBytes\":101297,\"url\":\"/uploads/thumbnail_cafe_mocha_6e300c3c16.png\"},\"small\":{\"name\":\"small_cafe mocha.png\",\"hash\":\"small_cafe_mocha_6e300c3c16\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":310,\"size\":389.4,\"sizeInBytes\":389400,\"url\":\"/uploads/small_cafe_mocha_6e300c3c16.png\"},\"medium\":{\"name\":\"medium_cafe mocha.png\",\"hash\":\"medium_cafe_mocha_6e300c3c16\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":750,\"height\":465,\"size\":809.03,\"sizeInBytes\":809033,\"url\":\"/uploads/medium_cafe_mocha_6e300c3c16.png\"}}', 'cafe_mocha_6e300c3c16', '.png', 'image/png', 193.89, '/uploads/cafe_mocha_6e300c3c16.png', NULL, 'local', NULL, '/', '2024-05-29 13:15:45.033000', '2024-05-29 13:15:45.033000', 1, 1),
(8, 'cafe4.png', NULL, NULL, 972, 602, '{\"thumbnail\":{\"name\":\"thumbnail_cafe4.png\",\"hash\":\"thumbnail_cafe4_a888f8fd1f\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":152,\"size\":87.15,\"sizeInBytes\":87148,\"url\":\"/uploads/thumbnail_cafe4_a888f8fd1f.png\"},\"small\":{\"name\":\"small_cafe4.png\",\"hash\":\"small_cafe4_a888f8fd1f\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":310,\"size\":306.17,\"sizeInBytes\":306169,\"url\":\"/uploads/small_cafe4_a888f8fd1f.png\"},\"medium\":{\"name\":\"medium_cafe4.png\",\"hash\":\"medium_cafe4_a888f8fd1f\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":750,\"height\":465,\"size\":615.9,\"sizeInBytes\":615899,\"url\":\"/uploads/medium_cafe4_a888f8fd1f.png\"}}', 'cafe4_a888f8fd1f', '.png', 'image/png', 234.00, '/uploads/cafe4_a888f8fd1f.png', NULL, 'local', NULL, '/', '2024-05-29 13:21:57.662000', '2024-05-29 13:21:57.662000', 1, 1),
(10, 'caffe E.png', NULL, NULL, 305, 212, '{\"thumbnail\":{\"name\":\"thumbnail_caffe E.png\",\"hash\":\"thumbnail_caffe_E_ad8cb59042\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":224,\"height\":156,\"size\":78.32,\"sizeInBytes\":78318,\"url\":\"/uploads/thumbnail_caffe_E_ad8cb59042.png\"}}', 'caffe_E_ad8cb59042', '.png', 'image/png', 39.75, '/uploads/caffe_E_ad8cb59042.png', NULL, 'local', NULL, '/', '2024-06-02 21:04:31.968000', '2024-06-02 21:04:31.968000', 1, 1),
(11, 'cafe sữa nóng.png', NULL, NULL, 356, 213, '{\"thumbnail\":{\"name\":\"thumbnail_cafe sữa nóng.png\",\"hash\":\"thumbnail_cafe_sua_nong_6970e0edc6\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":147,\"size\":84.76,\"sizeInBytes\":84761,\"url\":\"/uploads/thumbnail_cafe_sua_nong_6970e0edc6.png\"}}', 'cafe_sua_nong_6970e0edc6', '.png', 'image/png', 42.20, '/uploads/cafe_sua_nong_6970e0edc6.png', NULL, 'local', NULL, '/', '2024-06-02 21:11:16.926000', '2024-06-02 21:11:16.926000', 1, 1),
(12, 'cafe mocha.png', NULL, NULL, 302, 198, '{\"thumbnail\":{\"name\":\"thumbnail_cafe mocha.png\",\"hash\":\"thumbnail_cafe_mocha_c58209e3a5\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":238,\"height\":156,\"size\":76.24,\"sizeInBytes\":76237,\"url\":\"/uploads/thumbnail_cafe_mocha_c58209e3a5.png\"}}', 'cafe_mocha_c58209e3a5', '.png', 'image/png', 30.70, '/uploads/cafe_mocha_c58209e3a5.png', NULL, 'local', NULL, '/', '2024-06-02 21:14:42.746000', '2024-06-02 21:14:42.746000', 1, 1),
(13, 'iphone_8.jpg', NULL, NULL, 600, 600, '{\"thumbnail\":{\"name\":\"thumbnail_iphone_8.jpg\",\"hash\":\"thumbnail_iphone_8_aff81e21ad\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":156,\"height\":156,\"size\":4.36,\"sizeInBytes\":4361,\"url\":\"/uploads/thumbnail_iphone_8_aff81e21ad.jpg\"},\"small\":{\"name\":\"small_iphone_8.jpg\",\"hash\":\"small_iphone_8_aff81e21ad\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":500,\"height\":500,\"size\":22.81,\"sizeInBytes\":22813,\"url\":\"/uploads/small_iphone_8_aff81e21ad.jpg\"}}', 'iphone_8_aff81e21ad', '.jpg', 'image/jpeg', 29.75, '/uploads/iphone_8_aff81e21ad.jpg', NULL, 'local', NULL, '/1', '2024-06-16 10:18:03.731000', '2024-06-16 10:18:03.731000', NULL, NULL),
(14, 'iphone_8.jpg', NULL, NULL, 600, 600, '{\"thumbnail\":{\"name\":\"thumbnail_iphone_8.jpg\",\"hash\":\"thumbnail_iphone_8_266069f0f8\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":156,\"height\":156,\"size\":4.36,\"sizeInBytes\":4361,\"url\":\"/uploads/thumbnail_iphone_8_266069f0f8.jpg\"},\"small\":{\"name\":\"small_iphone_8.jpg\",\"hash\":\"small_iphone_8_266069f0f8\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":500,\"height\":500,\"size\":22.81,\"sizeInBytes\":22813,\"url\":\"/uploads/small_iphone_8_266069f0f8.jpg\"}}', 'iphone_8_266069f0f8', '.jpg', 'image/jpeg', 29.75, '/uploads/iphone_8_266069f0f8.jpg', NULL, 'local', NULL, '/1', '2024-06-16 10:18:05.817000', '2024-06-16 10:18:05.817000', NULL, NULL),
(15, 'iphone-11.webp', NULL, NULL, 470, 477, '{\"thumbnail\":{\"name\":\"thumbnail_iphone-11.webp\",\"hash\":\"thumbnail_iphone_11_255d9b6417\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":154,\"height\":156,\"size\":1.95,\"sizeInBytes\":1954,\"url\":\"/uploads/thumbnail_iphone_11_255d9b6417.webp\"}}', 'iphone_11_255d9b6417', '.webp', 'image/webp', 10.49, '/uploads/iphone_11_255d9b6417.webp', NULL, 'local', NULL, '/1', '2024-06-16 10:25:24.283000', '2024-06-16 10:25:24.283000', NULL, NULL),
(16, 'iphone-11.webp', NULL, NULL, 470, 477, '{\"thumbnail\":{\"name\":\"thumbnail_iphone-11.webp\",\"hash\":\"thumbnail_iphone_11_fe84eb83f8\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":154,\"height\":156,\"size\":1.95,\"sizeInBytes\":1954,\"url\":\"/uploads/thumbnail_iphone_11_fe84eb83f8.webp\"}}', 'iphone_11_fe84eb83f8', '.webp', 'image/webp', 10.49, '/uploads/iphone_11_fe84eb83f8.webp', NULL, 'local', NULL, '/1', '2024-06-16 10:25:25.119000', '2024-06-16 10:25:25.119000', NULL, NULL),
(17, 'iphone-11.webp', NULL, NULL, 470, 477, '{\"thumbnail\":{\"name\":\"thumbnail_iphone-11.webp\",\"hash\":\"thumbnail_iphone_11_adf493347c\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":154,\"height\":156,\"size\":1.95,\"sizeInBytes\":1954,\"url\":\"/uploads/thumbnail_iphone_11_adf493347c.webp\"}}', 'iphone_11_adf493347c', '.webp', 'image/webp', 10.49, '/uploads/iphone_11_adf493347c.webp', NULL, 'local', NULL, '/1', '2024-06-16 10:25:25.220000', '2024-06-16 10:25:25.220000', NULL, NULL),
(18, 'iphone-11.webp', NULL, NULL, 470, 477, '{\"thumbnail\":{\"name\":\"thumbnail_iphone-11.webp\",\"hash\":\"thumbnail_iphone_11_d35c82a744\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":154,\"height\":156,\"size\":1.95,\"sizeInBytes\":1954,\"url\":\"/uploads/thumbnail_iphone_11_d35c82a744.webp\"}}', 'iphone_11_d35c82a744', '.webp', 'image/webp', 10.49, '/uploads/iphone_11_d35c82a744.webp', NULL, 'local', NULL, '/1', '2024-06-16 10:25:25.321000', '2024-06-16 10:25:25.321000', NULL, NULL),
(19, 'iphone-11.webp', NULL, NULL, 470, 477, '{\"thumbnail\":{\"name\":\"thumbnail_iphone-11.webp\",\"hash\":\"thumbnail_iphone_11_ff2be44e64\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":154,\"height\":156,\"size\":1.95,\"sizeInBytes\":1954,\"url\":\"/uploads/thumbnail_iphone_11_ff2be44e64.webp\"}}', 'iphone_11_ff2be44e64', '.webp', 'image/webp', 10.49, '/uploads/iphone_11_ff2be44e64.webp', NULL, 'local', NULL, '/1', '2024-06-16 10:25:25.426000', '2024-06-16 10:25:25.426000', NULL, NULL),
(20, 'iphone-11.webp', NULL, NULL, 470, 477, '{\"thumbnail\":{\"name\":\"thumbnail_iphone-11.webp\",\"hash\":\"thumbnail_iphone_11_0a69cce0a8\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":154,\"height\":156,\"size\":1.95,\"sizeInBytes\":1954,\"url\":\"/uploads/thumbnail_iphone_11_0a69cce0a8.webp\"}}', 'iphone_11_0a69cce0a8', '.webp', 'image/webp', 10.49, '/uploads/iphone_11_0a69cce0a8.webp', NULL, 'local', NULL, '/1', '2024-06-16 10:25:25.659000', '2024-06-16 10:25:25.659000', NULL, NULL),
(21, 'iphone-11.webp', NULL, NULL, 470, 477, '{\"thumbnail\":{\"name\":\"thumbnail_iphone-11.webp\",\"hash\":\"thumbnail_iphone_11_01293e5694\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":154,\"height\":156,\"size\":1.95,\"sizeInBytes\":1954,\"url\":\"/uploads/thumbnail_iphone_11_01293e5694.webp\"}}', 'iphone_11_01293e5694', '.webp', 'image/webp', 10.49, '/uploads/iphone_11_01293e5694.webp', NULL, 'local', NULL, '/1', '2024-06-16 10:25:25.841000', '2024-06-16 10:25:25.841000', NULL, NULL),
(22, 'f20fe.jpg', NULL, NULL, 500, 500, '{\"thumbnail\":{\"name\":\"thumbnail_f20fe.jpg\",\"hash\":\"thumbnail_f20fe_e8e2110582\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":156,\"height\":156,\"size\":4.67,\"sizeInBytes\":4667,\"url\":\"/uploads/thumbnail_f20fe_e8e2110582.jpg\"}}', 'f20fe_e8e2110582', '.jpg', 'image/jpeg', 26.52, '/uploads/f20fe_e8e2110582.jpg', NULL, 'local', NULL, '/1', '2024-06-16 10:32:53.949000', '2024-06-16 10:32:53.949000', NULL, NULL),
(23, 'f20fe.jpg', NULL, NULL, 500, 500, '{\"thumbnail\":{\"name\":\"thumbnail_f20fe.jpg\",\"hash\":\"thumbnail_f20fe_f41e2a3e5b\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":156,\"height\":156,\"size\":4.67,\"sizeInBytes\":4667,\"url\":\"/uploads/thumbnail_f20fe_f41e2a3e5b.jpg\"}}', 'f20fe_f41e2a3e5b', '.jpg', 'image/jpeg', 26.52, '/uploads/f20fe_f41e2a3e5b.jpg', NULL, 'local', NULL, '/1', '2024-06-16 10:32:54.940000', '2024-06-16 10:32:54.940000', NULL, NULL),
(24, 'iphone-11.webp', NULL, NULL, 470, 477, '{\"thumbnail\":{\"name\":\"thumbnail_iphone-11.webp\",\"hash\":\"thumbnail_iphone_11_7587aef827\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":154,\"height\":156,\"size\":1.95,\"sizeInBytes\":1954,\"url\":\"/uploads/thumbnail_iphone_11_7587aef827.webp\"}}', 'iphone_11_7587aef827', '.webp', 'image/webp', 10.49, '/uploads/iphone_11_7587aef827.webp', NULL, 'local', NULL, '/1', '2024-06-16 10:43:31.493000', '2024-06-16 10:43:31.493000', NULL, NULL),
(25, 'iphone-11.webp', NULL, NULL, 470, 477, '{\"thumbnail\":{\"name\":\"thumbnail_iphone-11.webp\",\"hash\":\"thumbnail_iphone_11_372b3f8270\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":154,\"height\":156,\"size\":1.95,\"sizeInBytes\":1954,\"url\":\"/uploads/thumbnail_iphone_11_372b3f8270.webp\"}}', 'iphone_11_372b3f8270', '.webp', 'image/webp', 10.49, '/uploads/iphone_11_372b3f8270.webp', NULL, 'local', NULL, '/1', '2024-06-16 10:43:33.010000', '2024-06-16 10:43:33.010000', NULL, NULL),
(26, 'iphone-11.webp', NULL, NULL, 470, 477, '{\"thumbnail\":{\"name\":\"thumbnail_iphone-11.webp\",\"hash\":\"thumbnail_iphone_11_1984e76214\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":154,\"height\":156,\"size\":1.95,\"sizeInBytes\":1954,\"url\":\"/uploads/thumbnail_iphone_11_1984e76214.webp\"}}', 'iphone_11_1984e76214', '.webp', 'image/webp', 10.49, '/uploads/iphone_11_1984e76214.webp', NULL, 'local', NULL, '/1', '2024-06-16 10:43:33.200000', '2024-06-16 10:43:33.200000', NULL, NULL),
(27, 'iphone-11.webp', NULL, NULL, 470, 477, '{\"thumbnail\":{\"name\":\"thumbnail_iphone-11.webp\",\"hash\":\"thumbnail_iphone_11_d5f260b16f\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":154,\"height\":156,\"size\":1.95,\"sizeInBytes\":1954,\"url\":\"/uploads/thumbnail_iphone_11_d5f260b16f.webp\"}}', 'iphone_11_d5f260b16f', '.webp', 'image/webp', 10.49, '/uploads/iphone_11_d5f260b16f.webp', NULL, 'local', NULL, '/1', '2024-06-16 10:43:33.371000', '2024-06-16 10:43:33.371000', NULL, NULL),
(28, 'iphone-11.webp', NULL, NULL, 470, 477, '{\"thumbnail\":{\"name\":\"thumbnail_iphone-11.webp\",\"hash\":\"thumbnail_iphone_11_470a09a169\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":154,\"height\":156,\"size\":1.95,\"sizeInBytes\":1954,\"url\":\"/uploads/thumbnail_iphone_11_470a09a169.webp\"}}', 'iphone_11_470a09a169', '.webp', 'image/webp', 10.49, '/uploads/iphone_11_470a09a169.webp', NULL, 'local', NULL, '/1', '2024-06-16 10:43:34.294000', '2024-06-16 10:43:34.294000', NULL, NULL),
(29, 'iphone-11.webp', NULL, NULL, 470, 477, '{\"thumbnail\":{\"name\":\"thumbnail_iphone-11.webp\",\"hash\":\"thumbnail_iphone_11_db246c3d3c\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":154,\"height\":156,\"size\":1.95,\"sizeInBytes\":1954,\"url\":\"/uploads/thumbnail_iphone_11_db246c3d3c.webp\"}}', 'iphone_11_db246c3d3c', '.webp', 'image/webp', 10.49, '/uploads/iphone_11_db246c3d3c.webp', NULL, 'local', NULL, '/1', '2024-06-16 10:43:34.666000', '2024-06-16 10:43:34.666000', NULL, NULL),
(30, 'iphone-11.webp', NULL, NULL, 470, 477, '{\"thumbnail\":{\"name\":\"thumbnail_iphone-11.webp\",\"hash\":\"thumbnail_iphone_11_4ec21d23f1\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":154,\"height\":156,\"size\":1.95,\"sizeInBytes\":1954,\"url\":\"/uploads/thumbnail_iphone_11_4ec21d23f1.webp\"}}', 'iphone_11_4ec21d23f1', '.webp', 'image/webp', 10.49, '/uploads/iphone_11_4ec21d23f1.webp', NULL, 'local', NULL, '/1', '2024-06-16 10:43:34.843000', '2024-06-16 10:43:34.843000', NULL, NULL),
(31, 'iphone-11.webp', NULL, NULL, 470, 477, '{\"thumbnail\":{\"name\":\"thumbnail_iphone-11.webp\",\"hash\":\"thumbnail_iphone_11_584efd6175\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":154,\"height\":156,\"size\":1.95,\"sizeInBytes\":1954,\"url\":\"/uploads/thumbnail_iphone_11_584efd6175.webp\"}}', 'iphone_11_584efd6175', '.webp', 'image/webp', 10.49, '/uploads/iphone_11_584efd6175.webp', NULL, 'local', NULL, '/1', '2024-06-16 10:43:35.008000', '2024-06-16 10:43:35.008000', NULL, NULL),
(32, 'iphone-11.webp', NULL, NULL, 470, 477, '{\"thumbnail\":{\"name\":\"thumbnail_iphone-11.webp\",\"hash\":\"thumbnail_iphone_11_77199633fa\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":154,\"height\":156,\"size\":1.95,\"sizeInBytes\":1954,\"url\":\"/uploads/thumbnail_iphone_11_77199633fa.webp\"}}', 'iphone_11_77199633fa', '.webp', 'image/webp', 10.49, '/uploads/iphone_11_77199633fa.webp', NULL, 'local', NULL, '/1', '2024-06-16 10:43:35.201000', '2024-06-16 10:43:35.201000', NULL, NULL),
(33, 'iphone-11.webp', NULL, NULL, 470, 477, '{\"thumbnail\":{\"name\":\"thumbnail_iphone-11.webp\",\"hash\":\"thumbnail_iphone_11_2da554f7b5\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":154,\"height\":156,\"size\":1.95,\"sizeInBytes\":1954,\"url\":\"/uploads/thumbnail_iphone_11_2da554f7b5.webp\"}}', 'iphone_11_2da554f7b5', '.webp', 'image/webp', 10.49, '/uploads/iphone_11_2da554f7b5.webp', NULL, 'local', NULL, '/1', '2024-06-16 10:43:36.433000', '2024-06-16 10:43:36.433000', NULL, NULL),
(34, 'iphone-11.webp', NULL, NULL, 470, 477, '{\"thumbnail\":{\"name\":\"thumbnail_iphone-11.webp\",\"hash\":\"thumbnail_iphone_11_bb2316b0a6\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":154,\"height\":156,\"size\":1.95,\"sizeInBytes\":1954,\"url\":\"/uploads/thumbnail_iphone_11_bb2316b0a6.webp\"}}', 'iphone_11_bb2316b0a6', '.webp', 'image/webp', 10.49, '/uploads/iphone_11_bb2316b0a6.webp', NULL, 'local', NULL, '/1', '2024-06-16 10:43:36.540000', '2024-06-16 10:43:36.540000', NULL, NULL),
(35, 'iphone-11.webp', NULL, NULL, 470, 477, '{\"thumbnail\":{\"name\":\"thumbnail_iphone-11.webp\",\"hash\":\"thumbnail_iphone_11_a1b4d9e7c6\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":154,\"height\":156,\"size\":1.95,\"sizeInBytes\":1954,\"url\":\"/uploads/thumbnail_iphone_11_a1b4d9e7c6.webp\"}}', 'iphone_11_a1b4d9e7c6', '.webp', 'image/webp', 10.49, '/uploads/iphone_11_a1b4d9e7c6.webp', NULL, 'local', NULL, '/1', '2024-06-16 10:43:36.606000', '2024-06-16 10:43:36.606000', NULL, NULL),
(36, 'iphone-11.webp', NULL, NULL, 470, 477, '{\"thumbnail\":{\"name\":\"thumbnail_iphone-11.webp\",\"hash\":\"thumbnail_iphone_11_1b9082a769\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":154,\"height\":156,\"size\":1.95,\"sizeInBytes\":1954,\"url\":\"/uploads/thumbnail_iphone_11_1b9082a769.webp\"}}', 'iphone_11_1b9082a769', '.webp', 'image/webp', 10.49, '/uploads/iphone_11_1b9082a769.webp', NULL, 'local', NULL, '/1', '2024-06-16 10:43:36.651000', '2024-06-16 10:43:36.651000', NULL, NULL),
(37, 'iphone-11.webp', NULL, NULL, 470, 477, '{\"thumbnail\":{\"name\":\"thumbnail_iphone-11.webp\",\"hash\":\"thumbnail_iphone_11_13581ba591\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":154,\"height\":156,\"size\":1.95,\"sizeInBytes\":1954,\"url\":\"/uploads/thumbnail_iphone_11_13581ba591.webp\"}}', 'iphone_11_13581ba591', '.webp', 'image/webp', 10.49, '/uploads/iphone_11_13581ba591.webp', NULL, 'local', NULL, '/1', '2024-06-16 10:43:37.585000', '2024-06-16 10:43:37.585000', NULL, NULL),
(38, 'iphone-11.webp', NULL, NULL, 470, 477, '{\"thumbnail\":{\"name\":\"thumbnail_iphone-11.webp\",\"hash\":\"thumbnail_iphone_11_b96985cd0b\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":154,\"height\":156,\"size\":1.95,\"sizeInBytes\":1954,\"url\":\"/uploads/thumbnail_iphone_11_b96985cd0b.webp\"}}', 'iphone_11_b96985cd0b', '.webp', 'image/webp', 10.49, '/uploads/iphone_11_b96985cd0b.webp', NULL, 'local', NULL, '/1', '2024-06-16 10:43:37.756000', '2024-06-16 10:43:37.756000', NULL, NULL),
(39, 'iphone-11.webp', NULL, NULL, 470, 477, '{\"thumbnail\":{\"name\":\"thumbnail_iphone-11.webp\",\"hash\":\"thumbnail_iphone_11_eff9139df6\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":154,\"height\":156,\"size\":1.95,\"sizeInBytes\":1954,\"url\":\"/uploads/thumbnail_iphone_11_eff9139df6.webp\"}}', 'iphone_11_eff9139df6', '.webp', 'image/webp', 10.49, '/uploads/iphone_11_eff9139df6.webp', NULL, 'local', NULL, '/1', '2024-06-16 10:43:37.943000', '2024-06-16 10:43:37.943000', NULL, NULL),
(40, 'iphone-11.webp', NULL, NULL, 470, 477, '{\"thumbnail\":{\"name\":\"thumbnail_iphone-11.webp\",\"hash\":\"thumbnail_iphone_11_2e808e811f\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":154,\"height\":156,\"size\":1.95,\"sizeInBytes\":1954,\"url\":\"/uploads/thumbnail_iphone_11_2e808e811f.webp\"}}', 'iphone_11_2e808e811f', '.webp', 'image/webp', 10.49, '/uploads/iphone_11_2e808e811f.webp', NULL, 'local', NULL, '/1', '2024-06-16 10:43:38.116000', '2024-06-16 10:43:38.116000', NULL, NULL),
(41, 'iphone-11.webp', NULL, NULL, 470, 477, '{\"thumbnail\":{\"name\":\"thumbnail_iphone-11.webp\",\"hash\":\"thumbnail_iphone_11_7650f88bf8\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":154,\"height\":156,\"size\":1.95,\"sizeInBytes\":1954,\"url\":\"/uploads/thumbnail_iphone_11_7650f88bf8.webp\"}}', 'iphone_11_7650f88bf8', '.webp', 'image/webp', 10.49, '/uploads/iphone_11_7650f88bf8.webp', NULL, 'local', NULL, '/1', '2024-06-16 10:43:38.252000', '2024-06-16 10:43:38.252000', NULL, NULL),
(42, 'iphone-11.webp', NULL, NULL, 470, 477, '{\"thumbnail\":{\"name\":\"thumbnail_iphone-11.webp\",\"hash\":\"thumbnail_iphone_11_21076f5cd5\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":154,\"height\":156,\"size\":1.95,\"sizeInBytes\":1954,\"url\":\"/uploads/thumbnail_iphone_11_21076f5cd5.webp\"}}', 'iphone_11_21076f5cd5', '.webp', 'image/webp', 10.49, '/uploads/iphone_11_21076f5cd5.webp', NULL, 'local', NULL, '/1', '2024-06-16 10:49:59.567000', '2024-06-16 10:49:59.567000', NULL, NULL),
(43, 'iphone-11.webp', NULL, NULL, 470, 477, '{\"thumbnail\":{\"name\":\"thumbnail_iphone-11.webp\",\"hash\":\"thumbnail_iphone_11_95cd3bc8b6\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":154,\"height\":156,\"size\":1.95,\"sizeInBytes\":1954,\"url\":\"/uploads/thumbnail_iphone_11_95cd3bc8b6.webp\"}}', 'iphone_11_95cd3bc8b6', '.webp', 'image/webp', 10.49, '/uploads/iphone_11_95cd3bc8b6.webp', NULL, 'local', NULL, '/1', '2024-06-16 10:49:59.972000', '2024-06-16 10:49:59.972000', NULL, NULL),
(44, 'iphone-11.webp', NULL, NULL, 470, 477, '{\"thumbnail\":{\"name\":\"thumbnail_iphone-11.webp\",\"hash\":\"thumbnail_iphone_11_40cef525d6\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":154,\"height\":156,\"size\":1.95,\"sizeInBytes\":1954,\"url\":\"/uploads/thumbnail_iphone_11_40cef525d6.webp\"}}', 'iphone_11_40cef525d6', '.webp', 'image/webp', 10.49, '/uploads/iphone_11_40cef525d6.webp', NULL, 'local', NULL, '/1', '2024-06-16 10:50:00.150000', '2024-06-16 10:50:00.150000', NULL, NULL),
(45, 'iphone-11.webp', NULL, NULL, 470, 477, '{\"thumbnail\":{\"name\":\"thumbnail_iphone-11.webp\",\"hash\":\"thumbnail_iphone_11_762e74a9a8\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":154,\"height\":156,\"size\":1.95,\"sizeInBytes\":1954,\"url\":\"/uploads/thumbnail_iphone_11_762e74a9a8.webp\"}}', 'iphone_11_762e74a9a8', '.webp', 'image/webp', 10.49, '/uploads/iphone_11_762e74a9a8.webp', NULL, 'local', NULL, '/1', '2024-06-16 10:50:00.306000', '2024-06-16 10:50:00.306000', NULL, NULL),
(46, 'iphone-11.webp', NULL, NULL, 470, 477, '{\"thumbnail\":{\"name\":\"thumbnail_iphone-11.webp\",\"hash\":\"thumbnail_iphone_11_ccb21f5ebb\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":154,\"height\":156,\"size\":1.95,\"sizeInBytes\":1954,\"url\":\"/uploads/thumbnail_iphone_11_ccb21f5ebb.webp\"}}', 'iphone_11_ccb21f5ebb', '.webp', 'image/webp', 10.49, '/uploads/iphone_11_ccb21f5ebb.webp', NULL, 'local', NULL, '/1', '2024-06-16 10:50:03.463000', '2024-06-16 10:50:03.463000', NULL, NULL),
(47, 'iphone-11.webp', NULL, NULL, 470, 477, '{\"thumbnail\":{\"name\":\"thumbnail_iphone-11.webp\",\"hash\":\"thumbnail_iphone_11_1597ec4445\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":154,\"height\":156,\"size\":1.95,\"sizeInBytes\":1954,\"url\":\"/uploads/thumbnail_iphone_11_1597ec4445.webp\"}}', 'iphone_11_1597ec4445', '.webp', 'image/webp', 10.49, '/uploads/iphone_11_1597ec4445.webp', NULL, 'local', NULL, '/1', '2024-06-16 11:09:28.142000', '2024-06-16 11:09:28.142000', NULL, NULL),
(48, 'iphone-11.webp', NULL, NULL, 470, 477, '{\"thumbnail\":{\"name\":\"thumbnail_iphone-11.webp\",\"hash\":\"thumbnail_iphone_11_fc885c3e4a\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":154,\"height\":156,\"size\":1.95,\"sizeInBytes\":1954,\"url\":\"/uploads/thumbnail_iphone_11_fc885c3e4a.webp\"}}', 'iphone_11_fc885c3e4a', '.webp', 'image/webp', 10.49, '/uploads/iphone_11_fc885c3e4a.webp', NULL, 'local', NULL, '/1', '2024-06-16 11:09:30.327000', '2024-06-16 11:09:30.327000', NULL, NULL),
(49, 'iphone-11.webp', NULL, NULL, 470, 477, '{\"thumbnail\":{\"name\":\"thumbnail_iphone-11.webp\",\"hash\":\"thumbnail_iphone_11_29bd47aece\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":154,\"height\":156,\"size\":1.95,\"sizeInBytes\":1954,\"url\":\"/uploads/thumbnail_iphone_11_29bd47aece.webp\"}}', 'iphone_11_29bd47aece', '.webp', 'image/webp', 10.49, '/uploads/iphone_11_29bd47aece.webp', NULL, 'local', NULL, '/1', '2024-06-16 11:10:10.170000', '2024-06-16 11:10:10.170000', NULL, NULL),
(50, 'iphone-11.webp', NULL, NULL, 470, 477, '{\"thumbnail\":{\"name\":\"thumbnail_iphone-11.webp\",\"hash\":\"thumbnail_iphone_11_7ee729bab5\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":154,\"height\":156,\"size\":1.95,\"sizeInBytes\":1954,\"url\":\"/uploads/thumbnail_iphone_11_7ee729bab5.webp\"}}', 'iphone_11_7ee729bab5', '.webp', 'image/webp', 10.49, '/uploads/iphone_11_7ee729bab5.webp', NULL, 'local', NULL, '/1', '2024-06-16 11:10:58.291000', '2024-06-16 11:10:58.291000', NULL, NULL),
(51, 'iphone-11.webp', NULL, NULL, 470, 477, '{\"thumbnail\":{\"name\":\"thumbnail_iphone-11.webp\",\"hash\":\"thumbnail_iphone_11_099b0c1d11\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":154,\"height\":156,\"size\":1.95,\"sizeInBytes\":1954,\"url\":\"/uploads/thumbnail_iphone_11_099b0c1d11.webp\"}}', 'iphone_11_099b0c1d11', '.webp', 'image/webp', 10.49, '/uploads/iphone_11_099b0c1d11.webp', NULL, 'local', NULL, '/1', '2024-06-16 11:11:02.651000', '2024-06-16 11:11:02.651000', NULL, NULL),
(52, 'iphone-11.webp', NULL, NULL, 470, 477, '{\"thumbnail\":{\"name\":\"thumbnail_iphone-11.webp\",\"hash\":\"thumbnail_iphone_11_8fd2420d1b\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":154,\"height\":156,\"size\":1.95,\"sizeInBytes\":1954,\"url\":\"/uploads/thumbnail_iphone_11_8fd2420d1b.webp\"}}', 'iphone_11_8fd2420d1b', '.webp', 'image/webp', 10.49, '/uploads/iphone_11_8fd2420d1b.webp', NULL, 'local', NULL, '/1', '2024-06-16 11:13:23.419000', '2024-06-16 11:13:23.419000', NULL, NULL),
(53, 'iphone-11.webp', NULL, NULL, 470, 477, '{\"thumbnail\":{\"name\":\"thumbnail_iphone-11.webp\",\"hash\":\"thumbnail_iphone_11_8ab98d962e\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":154,\"height\":156,\"size\":1.95,\"sizeInBytes\":1954,\"url\":\"/uploads/thumbnail_iphone_11_8ab98d962e.webp\"}}', 'iphone_11_8ab98d962e', '.webp', 'image/webp', 10.49, '/uploads/iphone_11_8ab98d962e.webp', NULL, 'local', NULL, '/1', '2024-06-16 11:14:54.234000', '2024-06-16 11:14:54.234000', NULL, NULL),
(54, 'iphone-11.webp', NULL, NULL, 470, 477, '{\"thumbnail\":{\"name\":\"thumbnail_iphone-11.webp\",\"hash\":\"thumbnail_iphone_11_9c446ccc7e\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":154,\"height\":156,\"size\":1.95,\"sizeInBytes\":1954,\"url\":\"/uploads/thumbnail_iphone_11_9c446ccc7e.webp\"}}', 'iphone_11_9c446ccc7e', '.webp', 'image/webp', 10.49, '/uploads/iphone_11_9c446ccc7e.webp', NULL, 'local', NULL, '/1', '2024-06-16 11:20:57.876000', '2024-06-16 11:20:57.876000', NULL, NULL),
(55, 'iphone-11.webp', NULL, NULL, 470, 477, '{\"thumbnail\":{\"name\":\"thumbnail_iphone-11.webp\",\"hash\":\"thumbnail_iphone_11_07023debeb\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":154,\"height\":156,\"size\":1.95,\"sizeInBytes\":1954,\"url\":\"/uploads/thumbnail_iphone_11_07023debeb.webp\"}}', 'iphone_11_07023debeb', '.webp', 'image/webp', 10.49, '/uploads/iphone_11_07023debeb.webp', NULL, 'local', NULL, '/1', '2024-06-16 11:20:58.677000', '2024-06-16 11:20:58.677000', NULL, NULL),
(56, 'iphone-11.webp', NULL, NULL, 470, 477, '{\"thumbnail\":{\"name\":\"thumbnail_iphone-11.webp\",\"hash\":\"thumbnail_iphone_11_718574097c\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":154,\"height\":156,\"size\":1.95,\"sizeInBytes\":1954,\"url\":\"/uploads/thumbnail_iphone_11_718574097c.webp\"}}', 'iphone_11_718574097c', '.webp', 'image/webp', 10.49, '/uploads/iphone_11_718574097c.webp', NULL, 'local', NULL, '/1', '2024-06-16 11:20:58.849000', '2024-06-16 11:20:58.849000', NULL, NULL),
(57, 'iphone-11.webp', NULL, NULL, 470, 477, '{\"thumbnail\":{\"name\":\"thumbnail_iphone-11.webp\",\"hash\":\"thumbnail_iphone_11_641dbafecd\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":154,\"height\":156,\"size\":1.95,\"sizeInBytes\":1954,\"url\":\"/uploads/thumbnail_iphone_11_641dbafecd.webp\"}}', 'iphone_11_641dbafecd', '.webp', 'image/webp', 10.49, '/uploads/iphone_11_641dbafecd.webp', NULL, 'local', NULL, '/1', '2024-06-16 11:20:59.022000', '2024-06-16 11:20:59.022000', NULL, NULL),
(58, 'iphone-11.webp', NULL, NULL, 470, 477, '{\"thumbnail\":{\"name\":\"thumbnail_iphone-11.webp\",\"hash\":\"thumbnail_iphone_11_e068f6f0c7\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":154,\"height\":156,\"size\":1.95,\"sizeInBytes\":1954,\"url\":\"/uploads/thumbnail_iphone_11_e068f6f0c7.webp\"}}', 'iphone_11_e068f6f0c7', '.webp', 'image/webp', 10.49, '/uploads/iphone_11_e068f6f0c7.webp', NULL, 'local', NULL, '/1', '2024-06-16 11:22:22.214000', '2024-06-16 11:22:22.214000', NULL, NULL),
(59, 'iphone-11.webp', NULL, NULL, 470, 477, '{\"thumbnail\":{\"name\":\"thumbnail_iphone-11.webp\",\"hash\":\"thumbnail_iphone_11_c9e4ba442f\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":154,\"height\":156,\"size\":1.95,\"sizeInBytes\":1954,\"url\":\"/uploads/thumbnail_iphone_11_c9e4ba442f.webp\"}}', 'iphone_11_c9e4ba442f', '.webp', 'image/webp', 10.49, '/uploads/iphone_11_c9e4ba442f.webp', NULL, 'local', NULL, '/1', '2024-06-16 13:21:40.791000', '2024-06-16 13:21:40.791000', NULL, NULL),
(60, 'iphone-11.webp', NULL, NULL, 470, 477, '{\"thumbnail\":{\"name\":\"thumbnail_iphone-11.webp\",\"hash\":\"thumbnail_iphone_11_e3a5bc9cd6\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":154,\"height\":156,\"size\":1.95,\"sizeInBytes\":1954,\"url\":\"/uploads/thumbnail_iphone_11_e3a5bc9cd6.webp\"}}', 'iphone_11_e3a5bc9cd6', '.webp', 'image/webp', 10.49, '/uploads/iphone_11_e3a5bc9cd6.webp', NULL, 'local', NULL, '/1', '2024-06-16 13:21:41.694000', '2024-06-16 13:21:41.694000', NULL, NULL),
(61, 'iphone-11.webp', NULL, NULL, 470, 477, '{\"thumbnail\":{\"name\":\"thumbnail_iphone-11.webp\",\"hash\":\"thumbnail_iphone_11_5e8984b785\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":154,\"height\":156,\"size\":1.95,\"sizeInBytes\":1954,\"url\":\"/uploads/thumbnail_iphone_11_5e8984b785.webp\"}}', 'iphone_11_5e8984b785', '.webp', 'image/webp', 10.49, '/uploads/iphone_11_5e8984b785.webp', NULL, 'local', NULL, '/1', '2024-06-16 13:29:52.437000', '2024-06-16 13:29:52.437000', NULL, NULL),
(62, 'iphone-11.webp', NULL, NULL, 470, 477, '{\"thumbnail\":{\"name\":\"thumbnail_iphone-11.webp\",\"hash\":\"thumbnail_iphone_11_acd51bd259\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":154,\"height\":156,\"size\":1.95,\"sizeInBytes\":1954,\"url\":\"/uploads/thumbnail_iphone_11_acd51bd259.webp\"}}', 'iphone_11_acd51bd259', '.webp', 'image/webp', 10.49, '/uploads/iphone_11_acd51bd259.webp', NULL, 'local', NULL, '/1', '2024-06-16 13:29:54.573000', '2024-06-16 13:29:54.573000', NULL, NULL),
(63, 'iphone-11.webp', NULL, NULL, 470, 477, '{\"thumbnail\":{\"name\":\"thumbnail_iphone-11.webp\",\"hash\":\"thumbnail_iphone_11_e67faa85e3\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":154,\"height\":156,\"size\":1.95,\"sizeInBytes\":1954,\"url\":\"/uploads/thumbnail_iphone_11_e67faa85e3.webp\"}}', 'iphone_11_e67faa85e3', '.webp', 'image/webp', 10.49, '/uploads/iphone_11_e67faa85e3.webp', NULL, 'local', NULL, '/1', '2024-06-16 13:30:54.906000', '2024-06-16 13:30:54.906000', NULL, NULL),
(64, 'iphone-11.webp', NULL, NULL, 470, 477, '{\"thumbnail\":{\"name\":\"thumbnail_iphone-11.webp\",\"hash\":\"thumbnail_iphone_11_b1cdeabc28\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":154,\"height\":156,\"size\":1.95,\"sizeInBytes\":1954,\"url\":\"/uploads/thumbnail_iphone_11_b1cdeabc28.webp\"}}', 'iphone_11_b1cdeabc28', '.webp', 'image/webp', 10.49, '/uploads/iphone_11_b1cdeabc28.webp', NULL, 'local', NULL, '/1', '2024-06-16 13:30:56.237000', '2024-06-16 13:30:56.237000', NULL, NULL),
(65, 'iphone-11.webp', NULL, NULL, 470, 477, '{\"thumbnail\":{\"name\":\"thumbnail_iphone-11.webp\",\"hash\":\"thumbnail_iphone_11_07bdd754fa\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":154,\"height\":156,\"size\":1.95,\"sizeInBytes\":1954,\"url\":\"/uploads/thumbnail_iphone_11_07bdd754fa.webp\"}}', 'iphone_11_07bdd754fa', '.webp', 'image/webp', 10.49, '/uploads/iphone_11_07bdd754fa.webp', NULL, 'local', NULL, '/1', '2024-06-16 13:30:57.296000', '2024-06-16 13:30:57.296000', NULL, NULL),
(66, 'iphone-11.webp', NULL, NULL, 470, 477, '{\"thumbnail\":{\"name\":\"thumbnail_iphone-11.webp\",\"hash\":\"thumbnail_iphone_11_4e7afeaf7f\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":154,\"height\":156,\"size\":1.95,\"sizeInBytes\":1954,\"url\":\"/uploads/thumbnail_iphone_11_4e7afeaf7f.webp\"}}', 'iphone_11_4e7afeaf7f', '.webp', 'image/webp', 10.49, '/uploads/iphone_11_4e7afeaf7f.webp', NULL, 'local', NULL, '/1', '2024-06-16 13:30:59.511000', '2024-06-16 13:30:59.511000', NULL, NULL),
(67, 'iphone-11.webp', NULL, NULL, 470, 477, '{\"thumbnail\":{\"name\":\"thumbnail_iphone-11.webp\",\"hash\":\"thumbnail_iphone_11_7d90296e41\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":154,\"height\":156,\"size\":1.95,\"sizeInBytes\":1954,\"url\":\"/uploads/thumbnail_iphone_11_7d90296e41.webp\"}}', 'iphone_11_7d90296e41', '.webp', 'image/webp', 10.49, '/uploads/iphone_11_7d90296e41.webp', NULL, 'local', NULL, '/1', '2024-06-16 13:31:01.198000', '2024-06-16 13:31:01.198000', NULL, NULL),
(68, 'iphone-11.webp', NULL, NULL, 470, 477, '{\"thumbnail\":{\"name\":\"thumbnail_iphone-11.webp\",\"hash\":\"thumbnail_iphone_11_a1a954c2b6\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":154,\"height\":156,\"size\":1.95,\"sizeInBytes\":1954,\"url\":\"/uploads/thumbnail_iphone_11_a1a954c2b6.webp\"}}', 'iphone_11_a1a954c2b6', '.webp', 'image/webp', 10.49, '/uploads/iphone_11_a1a954c2b6.webp', NULL, 'local', NULL, '/1', '2024-06-16 13:32:18.317000', '2024-06-16 13:32:18.317000', NULL, NULL),
(69, 'iphone-11.webp', NULL, NULL, 470, 477, '{\"thumbnail\":{\"name\":\"thumbnail_iphone-11.webp\",\"hash\":\"thumbnail_iphone_11_1106616356\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":154,\"height\":156,\"size\":1.95,\"sizeInBytes\":1954,\"url\":\"/uploads/thumbnail_iphone_11_1106616356.webp\"}}', 'iphone_11_1106616356', '.webp', 'image/webp', 10.49, '/uploads/iphone_11_1106616356.webp', NULL, 'local', NULL, '/1', '2024-06-16 13:32:19.349000', '2024-06-16 13:32:19.349000', NULL, NULL),
(70, 'iphone-11.webp', NULL, NULL, 470, 477, '{\"thumbnail\":{\"name\":\"thumbnail_iphone-11.webp\",\"hash\":\"thumbnail_iphone_11_fed2fac2c9\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":154,\"height\":156,\"size\":1.95,\"sizeInBytes\":1954,\"url\":\"/uploads/thumbnail_iphone_11_fed2fac2c9.webp\"}}', 'iphone_11_fed2fac2c9', '.webp', 'image/webp', 10.49, '/uploads/iphone_11_fed2fac2c9.webp', NULL, 'local', NULL, '/1', '2024-06-16 13:32:20.058000', '2024-06-16 13:32:20.058000', NULL, NULL),
(71, 'iphone-11.webp', NULL, NULL, 470, 477, '{\"thumbnail\":{\"name\":\"thumbnail_iphone-11.webp\",\"hash\":\"thumbnail_iphone_11_12915b168c\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":154,\"height\":156,\"size\":1.95,\"sizeInBytes\":1954,\"url\":\"/uploads/thumbnail_iphone_11_12915b168c.webp\"}}', 'iphone_11_12915b168c', '.webp', 'image/webp', 10.49, '/uploads/iphone_11_12915b168c.webp', NULL, 'local', NULL, '/1', '2024-06-16 13:32:20.249000', '2024-06-16 13:32:20.249000', NULL, NULL),
(72, 'iphone-11.webp', NULL, NULL, 470, 477, '{\"thumbnail\":{\"name\":\"thumbnail_iphone-11.webp\",\"hash\":\"thumbnail_iphone_11_0e99d8d3b4\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":154,\"height\":156,\"size\":1.95,\"sizeInBytes\":1954,\"url\":\"/uploads/thumbnail_iphone_11_0e99d8d3b4.webp\"}}', 'iphone_11_0e99d8d3b4', '.webp', 'image/webp', 10.49, '/uploads/iphone_11_0e99d8d3b4.webp', NULL, 'local', NULL, '/1', '2024-06-16 13:32:20.412000', '2024-06-16 13:32:20.412000', NULL, NULL),
(73, 'iphone-11.webp', NULL, NULL, 470, 477, '{\"thumbnail\":{\"name\":\"thumbnail_iphone-11.webp\",\"hash\":\"thumbnail_iphone_11_d7ae0d48f1\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":154,\"height\":156,\"size\":1.95,\"sizeInBytes\":1954,\"url\":\"/uploads/thumbnail_iphone_11_d7ae0d48f1.webp\"}}', 'iphone_11_d7ae0d48f1', '.webp', 'image/webp', 10.49, '/uploads/iphone_11_d7ae0d48f1.webp', NULL, 'local', NULL, '/1', '2024-06-16 13:32:20.573000', '2024-06-16 13:32:20.573000', NULL, NULL),
(74, 'iphone-11.webp', NULL, NULL, 470, 477, '{\"thumbnail\":{\"name\":\"thumbnail_iphone-11.webp\",\"hash\":\"thumbnail_iphone_11_67820daaee\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":154,\"height\":156,\"size\":1.95,\"sizeInBytes\":1954,\"url\":\"/uploads/thumbnail_iphone_11_67820daaee.webp\"}}', 'iphone_11_67820daaee', '.webp', 'image/webp', 10.49, '/uploads/iphone_11_67820daaee.webp', NULL, 'local', NULL, '/1', '2024-06-16 13:32:20.723000', '2024-06-16 13:32:20.723000', NULL, NULL),
(75, 'iphone-11.webp', NULL, NULL, 470, 477, '{\"thumbnail\":{\"name\":\"thumbnail_iphone-11.webp\",\"hash\":\"thumbnail_iphone_11_f019d478f8\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":154,\"height\":156,\"size\":1.95,\"sizeInBytes\":1954,\"url\":\"/uploads/thumbnail_iphone_11_f019d478f8.webp\"}}', 'iphone_11_f019d478f8', '.webp', 'image/webp', 10.49, '/uploads/iphone_11_f019d478f8.webp', NULL, 'local', NULL, '/1', '2024-06-16 13:32:20.922000', '2024-06-16 13:32:20.922000', NULL, NULL),
(76, 'iphone-11.webp', NULL, NULL, 470, 477, '{\"thumbnail\":{\"name\":\"thumbnail_iphone-11.webp\",\"hash\":\"thumbnail_iphone_11_441d77061c\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":154,\"height\":156,\"size\":1.95,\"sizeInBytes\":1954,\"url\":\"/uploads/thumbnail_iphone_11_441d77061c.webp\"}}', 'iphone_11_441d77061c', '.webp', 'image/webp', 10.49, '/uploads/iphone_11_441d77061c.webp', NULL, 'local', NULL, '/1', '2024-06-16 13:32:21.095000', '2024-06-16 13:32:21.095000', NULL, NULL),
(77, 'iphone-11.webp', NULL, NULL, 470, 477, '{\"thumbnail\":{\"name\":\"thumbnail_iphone-11.webp\",\"hash\":\"thumbnail_iphone_11_5fe3f6f789\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":154,\"height\":156,\"size\":1.95,\"sizeInBytes\":1954,\"url\":\"/uploads/thumbnail_iphone_11_5fe3f6f789.webp\"}}', 'iphone_11_5fe3f6f789', '.webp', 'image/webp', 10.49, '/uploads/iphone_11_5fe3f6f789.webp', NULL, 'local', NULL, '/1', '2024-06-16 13:32:21.273000', '2024-06-16 13:32:21.273000', NULL, NULL),
(78, 'iphone-11.webp', NULL, NULL, 470, 477, '{\"thumbnail\":{\"name\":\"thumbnail_iphone-11.webp\",\"hash\":\"thumbnail_iphone_11_a02e4118d7\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":154,\"height\":156,\"size\":1.95,\"sizeInBytes\":1954,\"url\":\"/uploads/thumbnail_iphone_11_a02e4118d7.webp\"}}', 'iphone_11_a02e4118d7', '.webp', 'image/webp', 10.49, '/uploads/iphone_11_a02e4118d7.webp', NULL, 'local', NULL, '/1', '2024-06-16 13:32:21.445000', '2024-06-16 13:32:21.445000', NULL, NULL),
(79, 'iphone-11.webp', NULL, NULL, 470, 477, '{\"thumbnail\":{\"name\":\"thumbnail_iphone-11.webp\",\"hash\":\"thumbnail_iphone_11_ab56090012\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":154,\"height\":156,\"size\":1.95,\"sizeInBytes\":1954,\"url\":\"/uploads/thumbnail_iphone_11_ab56090012.webp\"}}', 'iphone_11_ab56090012', '.webp', 'image/webp', 10.49, '/uploads/iphone_11_ab56090012.webp', NULL, 'local', NULL, '/1', '2024-06-16 13:32:21.606000', '2024-06-16 13:32:21.606000', NULL, NULL),
(80, 'iphone-11.webp', NULL, NULL, 470, 477, '{\"thumbnail\":{\"name\":\"thumbnail_iphone-11.webp\",\"hash\":\"thumbnail_iphone_11_bcd1d4ce59\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":154,\"height\":156,\"size\":1.95,\"sizeInBytes\":1954,\"url\":\"/uploads/thumbnail_iphone_11_bcd1d4ce59.webp\"}}', 'iphone_11_bcd1d4ce59', '.webp', 'image/webp', 10.49, '/uploads/iphone_11_bcd1d4ce59.webp', NULL, 'local', NULL, '/1', '2024-06-16 13:32:21.784000', '2024-06-16 13:32:21.784000', NULL, NULL),
(81, 'iphone-11.webp', NULL, NULL, 470, 477, '{\"thumbnail\":{\"name\":\"thumbnail_iphone-11.webp\",\"hash\":\"thumbnail_iphone_11_2f44dbf4a5\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":154,\"height\":156,\"size\":1.95,\"sizeInBytes\":1954,\"url\":\"/uploads/thumbnail_iphone_11_2f44dbf4a5.webp\"}}', 'iphone_11_2f44dbf4a5', '.webp', 'image/webp', 10.49, '/uploads/iphone_11_2f44dbf4a5.webp', NULL, 'local', NULL, '/1', '2024-06-16 13:32:22.141000', '2024-06-16 13:32:22.141000', NULL, NULL),
(82, 'iphone-11.webp', NULL, NULL, 470, 477, '{\"thumbnail\":{\"name\":\"thumbnail_iphone-11.webp\",\"hash\":\"thumbnail_iphone_11_0a066ff334\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":154,\"height\":156,\"size\":1.95,\"sizeInBytes\":1954,\"url\":\"/uploads/thumbnail_iphone_11_0a066ff334.webp\"}}', 'iphone_11_0a066ff334', '.webp', 'image/webp', 10.49, '/uploads/iphone_11_0a066ff334.webp', NULL, 'local', NULL, '/1', '2024-06-16 13:32:22.313000', '2024-06-16 13:32:22.313000', NULL, NULL),
(83, 'iphone-11.webp', NULL, NULL, 470, 477, '{\"thumbnail\":{\"name\":\"thumbnail_iphone-11.webp\",\"hash\":\"thumbnail_iphone_11_432a5cbc2f\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":154,\"height\":156,\"size\":1.95,\"sizeInBytes\":1954,\"url\":\"/uploads/thumbnail_iphone_11_432a5cbc2f.webp\"}}', 'iphone_11_432a5cbc2f', '.webp', 'image/webp', 10.49, '/uploads/iphone_11_432a5cbc2f.webp', NULL, 'local', NULL, '/1', '2024-06-16 13:32:22.683000', '2024-06-16 13:32:22.683000', NULL, NULL),
(84, 'iphone_8.jpg', NULL, NULL, 600, 600, '{\"thumbnail\":{\"name\":\"thumbnail_iphone_8.jpg\",\"hash\":\"thumbnail_iphone_8_1e678cd533\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":156,\"height\":156,\"size\":4.36,\"sizeInBytes\":4361,\"url\":\"/uploads/thumbnail_iphone_8_1e678cd533.jpg\"},\"small\":{\"name\":\"small_iphone_8.jpg\",\"hash\":\"small_iphone_8_1e678cd533\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":500,\"height\":500,\"size\":22.81,\"sizeInBytes\":22813,\"url\":\"/uploads/small_iphone_8_1e678cd533.jpg\"}}', 'iphone_8_1e678cd533', '.jpg', 'image/jpeg', 29.75, '/uploads/iphone_8_1e678cd533.jpg', NULL, 'local', NULL, '/1', '2024-06-16 14:04:33.160000', '2024-06-16 14:04:33.160000', NULL, NULL),
(85, 'iphone_8.jpg', NULL, NULL, 600, 600, '{\"thumbnail\":{\"name\":\"thumbnail_iphone_8.jpg\",\"hash\":\"thumbnail_iphone_8_5db2ebaed8\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":156,\"height\":156,\"size\":4.36,\"sizeInBytes\":4361,\"url\":\"/uploads/thumbnail_iphone_8_5db2ebaed8.jpg\"},\"small\":{\"name\":\"small_iphone_8.jpg\",\"hash\":\"small_iphone_8_5db2ebaed8\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":500,\"height\":500,\"size\":22.81,\"sizeInBytes\":22813,\"url\":\"/uploads/small_iphone_8_5db2ebaed8.jpg\"}}', 'iphone_8_5db2ebaed8', '.jpg', 'image/jpeg', 29.75, '/uploads/iphone_8_5db2ebaed8.jpg', NULL, 'local', NULL, '/1', '2024-06-16 14:05:18.393000', '2024-06-16 14:05:18.393000', NULL, NULL),
(86, 'iphone_13-b.jpg', NULL, NULL, 600, 600, '{\"thumbnail\":{\"name\":\"thumbnail_iphone_13-b.jpg\",\"hash\":\"thumbnail_iphone_13_b_b0fc7519e8\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":156,\"height\":156,\"size\":4.47,\"sizeInBytes\":4469,\"url\":\"/uploads/thumbnail_iphone_13_b_b0fc7519e8.jpg\"},\"small\":{\"name\":\"small_iphone_13-b.jpg\",\"hash\":\"small_iphone_13_b_b0fc7519e8\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":500,\"height\":500,\"size\":23.2,\"sizeInBytes\":23202,\"url\":\"/uploads/small_iphone_13_b_b0fc7519e8.jpg\"}}', 'iphone_13_b_b0fc7519e8', '.jpg', 'image/jpeg', 28.26, '/uploads/iphone_13_b_b0fc7519e8.jpg', NULL, 'local', NULL, '/1', '2024-06-16 14:09:18.027000', '2024-06-16 14:09:18.027000', NULL, NULL),
(87, 'iphone_13-b.jpg', NULL, NULL, 600, 600, '{\"thumbnail\":{\"name\":\"thumbnail_iphone_13-b.jpg\",\"hash\":\"thumbnail_iphone_13_b_7e92b1a8d9\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":156,\"height\":156,\"size\":4.47,\"sizeInBytes\":4469,\"url\":\"/uploads/thumbnail_iphone_13_b_7e92b1a8d9.jpg\"},\"small\":{\"name\":\"small_iphone_13-b.jpg\",\"hash\":\"small_iphone_13_b_7e92b1a8d9\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":500,\"height\":500,\"size\":23.2,\"sizeInBytes\":23202,\"url\":\"/uploads/small_iphone_13_b_7e92b1a8d9.jpg\"}}', 'iphone_13_b_7e92b1a8d9', '.jpg', 'image/jpeg', 28.26, '/uploads/iphone_13_b_7e92b1a8d9.jpg', NULL, 'local', NULL, '/1', '2024-06-16 14:09:18.582000', '2024-06-16 14:09:18.582000', NULL, NULL),
(88, 'iphone_13-b.jpg', NULL, NULL, 600, 600, '{\"thumbnail\":{\"name\":\"thumbnail_iphone_13-b.jpg\",\"hash\":\"thumbnail_iphone_13_b_f7f7931ba0\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":156,\"height\":156,\"size\":4.47,\"sizeInBytes\":4469,\"url\":\"/uploads/thumbnail_iphone_13_b_f7f7931ba0.jpg\"},\"small\":{\"name\":\"small_iphone_13-b.jpg\",\"hash\":\"small_iphone_13_b_f7f7931ba0\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":500,\"height\":500,\"size\":23.2,\"sizeInBytes\":23202,\"url\":\"/uploads/small_iphone_13_b_f7f7931ba0.jpg\"}}', 'iphone_13_b_f7f7931ba0', '.jpg', 'image/jpeg', 28.26, '/uploads/iphone_13_b_f7f7931ba0.jpg', NULL, 'local', NULL, '/1', '2024-06-16 14:09:18.766000', '2024-06-16 14:09:18.766000', NULL, NULL),
(89, 'iphone_13-b.jpg', NULL, NULL, 600, 600, '{\"thumbnail\":{\"name\":\"thumbnail_iphone_13-b.jpg\",\"hash\":\"thumbnail_iphone_13_b_368e12b96e\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":156,\"height\":156,\"size\":4.47,\"sizeInBytes\":4469,\"url\":\"/uploads/thumbnail_iphone_13_b_368e12b96e.jpg\"},\"small\":{\"name\":\"small_iphone_13-b.jpg\",\"hash\":\"small_iphone_13_b_368e12b96e\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":500,\"height\":500,\"size\":23.2,\"sizeInBytes\":23202,\"url\":\"/uploads/small_iphone_13_b_368e12b96e.jpg\"}}', 'iphone_13_b_368e12b96e', '.jpg', 'image/jpeg', 28.26, '/uploads/iphone_13_b_368e12b96e.jpg', NULL, 'local', NULL, '/1', '2024-06-16 14:09:18.959000', '2024-06-16 14:09:18.959000', NULL, NULL),
(90, 'iphone_13-a.jpg', NULL, NULL, 600, 600, '{\"thumbnail\":{\"name\":\"thumbnail_iphone_13-a.jpg\",\"hash\":\"thumbnail_iphone_13_a_c62057ed46\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":156,\"height\":156,\"size\":3.38,\"sizeInBytes\":3377,\"url\":\"/uploads/thumbnail_iphone_13_a_c62057ed46.jpg\"},\"small\":{\"name\":\"small_iphone_13-a.jpg\",\"hash\":\"small_iphone_13_a_c62057ed46\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":500,\"height\":500,\"size\":16.84,\"sizeInBytes\":16844,\"url\":\"/uploads/small_iphone_13_a_c62057ed46.jpg\"}}', 'iphone_13_a_c62057ed46', '.jpg', 'image/jpeg', 21.06, '/uploads/iphone_13_a_c62057ed46.jpg', NULL, 'local', NULL, '/1', '2024-06-16 14:12:46.780000', '2024-06-16 14:12:46.780000', NULL, NULL);
INSERT INTO `files` (`id`, `name`, `alternative_text`, `caption`, `width`, `height`, `formats`, `hash`, `ext`, `mime`, `size`, `url`, `preview_url`, `provider`, `provider_metadata`, `folder_path`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(91, 'iphone_13-a.jpg', NULL, NULL, 600, 600, '{\"thumbnail\":{\"name\":\"thumbnail_iphone_13-a.jpg\",\"hash\":\"thumbnail_iphone_13_a_f2eece1b92\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":156,\"height\":156,\"size\":3.38,\"sizeInBytes\":3377,\"url\":\"/uploads/thumbnail_iphone_13_a_f2eece1b92.jpg\"},\"small\":{\"name\":\"small_iphone_13-a.jpg\",\"hash\":\"small_iphone_13_a_f2eece1b92\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":500,\"height\":500,\"size\":16.84,\"sizeInBytes\":16844,\"url\":\"/uploads/small_iphone_13_a_f2eece1b92.jpg\"}}', 'iphone_13_a_f2eece1b92', '.jpg', 'image/jpeg', 21.06, '/uploads/iphone_13_a_f2eece1b92.jpg', NULL, 'local', NULL, '/1', '2024-06-16 14:12:48.972000', '2024-06-16 14:12:48.972000', NULL, NULL),
(92, 'iphone_13-a.jpg', NULL, NULL, 600, 600, '{\"thumbnail\":{\"name\":\"thumbnail_iphone_13-a.jpg\",\"hash\":\"thumbnail_iphone_13_a_1f7eb624d4\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":156,\"height\":156,\"size\":3.38,\"sizeInBytes\":3377,\"url\":\"/uploads/thumbnail_iphone_13_a_1f7eb624d4.jpg\"},\"small\":{\"name\":\"small_iphone_13-a.jpg\",\"hash\":\"small_iphone_13_a_1f7eb624d4\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":500,\"height\":500,\"size\":16.84,\"sizeInBytes\":16844,\"url\":\"/uploads/small_iphone_13_a_1f7eb624d4.jpg\"}}', 'iphone_13_a_1f7eb624d4', '.jpg', 'image/jpeg', 21.06, '/uploads/iphone_13_a_1f7eb624d4.jpg', NULL, 'local', NULL, '/1', '2024-06-16 14:14:16.126000', '2024-06-16 14:14:16.126000', NULL, NULL),
(93, 'iphone_13-b.jpg', NULL, NULL, 600, 600, '{\"thumbnail\":{\"name\":\"thumbnail_iphone_13-b.jpg\",\"hash\":\"thumbnail_iphone_13_b_7938000eef\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":156,\"height\":156,\"size\":4.47,\"sizeInBytes\":4469,\"url\":\"/uploads/thumbnail_iphone_13_b_7938000eef.jpg\"},\"small\":{\"name\":\"small_iphone_13-b.jpg\",\"hash\":\"small_iphone_13_b_7938000eef\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":500,\"height\":500,\"size\":23.2,\"sizeInBytes\":23202,\"url\":\"/uploads/small_iphone_13_b_7938000eef.jpg\"}}', 'iphone_13_b_7938000eef', '.jpg', 'image/jpeg', 28.26, '/uploads/iphone_13_b_7938000eef.jpg', NULL, 'local', NULL, '/1', '2024-06-16 16:02:00.404000', '2024-06-16 16:02:00.404000', NULL, NULL),
(94, 'iphone-12b.webp', NULL, NULL, 500, 500, '{\"thumbnail\":{\"name\":\"thumbnail_iphone-12b.webp\",\"hash\":\"thumbnail_iphone_12b_dfb2f14ea3\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":156,\"height\":156,\"size\":2.48,\"sizeInBytes\":2480,\"url\":\"/uploads/thumbnail_iphone_12b_dfb2f14ea3.webp\"}}', 'iphone_12b_dfb2f14ea3', '.webp', 'image/webp', 9.57, '/uploads/iphone_12b_dfb2f14ea3.webp', NULL, 'local', NULL, '/1', '2024-06-16 21:44:39.169000', '2024-06-16 21:44:39.169000', NULL, NULL),
(95, 'iphone-12b.webp', NULL, NULL, 500, 500, '{\"thumbnail\":{\"name\":\"thumbnail_iphone-12b.webp\",\"hash\":\"thumbnail_iphone_12b_fe40039649\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":156,\"height\":156,\"size\":2.48,\"sizeInBytes\":2480,\"url\":\"/uploads/thumbnail_iphone_12b_fe40039649.webp\"}}', 'iphone_12b_fe40039649', '.webp', 'image/webp', 9.57, '/uploads/iphone_12b_fe40039649.webp', NULL, 'local', NULL, '/1', '2024-06-16 21:45:05.140000', '2024-06-16 21:45:05.140000', NULL, NULL),
(96, 'iphone-12b.webp', NULL, NULL, 500, 500, '{\"thumbnail\":{\"name\":\"thumbnail_iphone-12b.webp\",\"hash\":\"thumbnail_iphone_12b_cc537a239a\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":156,\"height\":156,\"size\":2.48,\"sizeInBytes\":2480,\"url\":\"/uploads/thumbnail_iphone_12b_cc537a239a.webp\"}}', 'iphone_12b_cc537a239a', '.webp', 'image/webp', 9.57, '/uploads/iphone_12b_cc537a239a.webp', NULL, 'local', NULL, '/1', '2024-06-16 21:45:05.736000', '2024-06-16 21:45:05.736000', NULL, NULL),
(97, 'iphone-12b.webp', NULL, NULL, 500, 500, '{\"thumbnail\":{\"name\":\"thumbnail_iphone-12b.webp\",\"hash\":\"thumbnail_iphone_12b_19a8d116d2\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":156,\"height\":156,\"size\":2.48,\"sizeInBytes\":2480,\"url\":\"/uploads/thumbnail_iphone_12b_19a8d116d2.webp\"}}', 'iphone_12b_19a8d116d2', '.webp', 'image/webp', 9.57, '/uploads/iphone_12b_19a8d116d2.webp', NULL, 'local', NULL, '/1', '2024-06-16 21:45:05.957000', '2024-06-16 21:45:05.957000', NULL, NULL),
(98, 'iphone11a.jpg', NULL, NULL, 481, 500, '{\"thumbnail\":{\"name\":\"thumbnail_iphone11a.jpg\",\"hash\":\"thumbnail_iphone11a_86910e1f6a\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":150,\"height\":156,\"size\":4.24,\"sizeInBytes\":4241,\"url\":\"/uploads/thumbnail_iphone11a_86910e1f6a.jpg\"}}', 'iphone11a_86910e1f6a', '.jpg', 'image/jpeg', 22.61, '/uploads/iphone11a_86910e1f6a.jpg', NULL, 'local', NULL, '/1', '2024-06-16 21:45:54.290000', '2024-06-16 21:45:54.290000', NULL, NULL),
(99, 'iphone_13-b.jpg', NULL, NULL, 600, 600, '{\"thumbnail\":{\"name\":\"thumbnail_iphone_13-b.jpg\",\"hash\":\"thumbnail_iphone_13_b_7651cbba3d\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":156,\"height\":156,\"size\":4.47,\"sizeInBytes\":4469,\"url\":\"/uploads/thumbnail_iphone_13_b_7651cbba3d.jpg\"},\"small\":{\"name\":\"small_iphone_13-b.jpg\",\"hash\":\"small_iphone_13_b_7651cbba3d\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":500,\"height\":500,\"size\":23.2,\"sizeInBytes\":23202,\"url\":\"/uploads/small_iphone_13_b_7651cbba3d.jpg\"}}', 'iphone_13_b_7651cbba3d', '.jpg', 'image/jpeg', 28.26, '/uploads/iphone_13_b_7651cbba3d.jpg', NULL, 'local', NULL, '/1', '2024-06-16 21:48:59.410000', '2024-06-16 21:48:59.410000', NULL, NULL),
(100, 'iphone_13-b.jpg', NULL, NULL, 600, 600, '{\"thumbnail\":{\"name\":\"thumbnail_iphone_13-b.jpg\",\"hash\":\"thumbnail_iphone_13_b_5b6e679942\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":156,\"height\":156,\"size\":4.47,\"sizeInBytes\":4469,\"url\":\"/uploads/thumbnail_iphone_13_b_5b6e679942.jpg\"},\"small\":{\"name\":\"small_iphone_13-b.jpg\",\"hash\":\"small_iphone_13_b_5b6e679942\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":500,\"height\":500,\"size\":23.2,\"sizeInBytes\":23202,\"url\":\"/uploads/small_iphone_13_b_5b6e679942.jpg\"}}', 'iphone_13_b_5b6e679942', '.jpg', 'image/jpeg', 28.26, '/uploads/iphone_13_b_5b6e679942.jpg', NULL, 'local', NULL, '/1', '2024-06-16 21:49:57.279000', '2024-06-16 21:49:57.279000', NULL, NULL),
(101, 'iphone-11.webp', NULL, NULL, 470, 477, '{\"thumbnail\":{\"name\":\"thumbnail_iphone-11.webp\",\"hash\":\"thumbnail_iphone_11_6801eb9bcd\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":154,\"height\":156,\"size\":1.95,\"sizeInBytes\":1954,\"url\":\"/uploads/thumbnail_iphone_11_6801eb9bcd.webp\"}}', 'iphone_11_6801eb9bcd', '.webp', 'image/webp', 10.49, '/uploads/iphone_11_6801eb9bcd.webp', NULL, 'local', NULL, '/1', '2024-06-17 17:44:32.854000', '2024-06-17 17:44:32.854000', NULL, NULL),
(102, 'iphone_13-b.jpg', NULL, NULL, 600, 600, '{\"thumbnail\":{\"name\":\"thumbnail_iphone_13-b.jpg\",\"hash\":\"thumbnail_iphone_13_b_c5e62154f7\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":156,\"height\":156,\"size\":4.47,\"sizeInBytes\":4469,\"url\":\"/uploads/thumbnail_iphone_13_b_c5e62154f7.jpg\"},\"small\":{\"name\":\"small_iphone_13-b.jpg\",\"hash\":\"small_iphone_13_b_c5e62154f7\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":500,\"height\":500,\"size\":23.2,\"sizeInBytes\":23202,\"url\":\"/uploads/small_iphone_13_b_c5e62154f7.jpg\"}}', 'iphone_13_b_c5e62154f7', '.jpg', 'image/jpeg', 28.26, '/uploads/iphone_13_b_c5e62154f7.jpg', NULL, 'local', NULL, '/1', '2024-06-17 17:56:40.400000', '2024-06-17 17:56:40.400000', NULL, NULL),
(103, 'iphone-11.webp', NULL, NULL, 470, 477, '{\"thumbnail\":{\"name\":\"thumbnail_iphone-11.webp\",\"hash\":\"thumbnail_iphone_11_eb38993589\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":154,\"height\":156,\"size\":1.95,\"sizeInBytes\":1954,\"url\":\"/uploads/thumbnail_iphone_11_eb38993589.webp\"}}', 'iphone_11_eb38993589', '.webp', 'image/webp', 10.49, '/uploads/iphone_11_eb38993589.webp', NULL, 'local', NULL, '/1', '2024-06-17 17:58:39.804000', '2024-06-17 17:58:39.804000', NULL, NULL),
(104, 'iphone-11.webp', NULL, NULL, 470, 477, '{\"thumbnail\":{\"name\":\"thumbnail_iphone-11.webp\",\"hash\":\"thumbnail_iphone_11_2ef4466484\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":154,\"height\":156,\"size\":1.95,\"sizeInBytes\":1954,\"url\":\"/uploads/thumbnail_iphone_11_2ef4466484.webp\"}}', 'iphone_11_2ef4466484', '.webp', 'image/webp', 10.49, '/uploads/iphone_11_2ef4466484.webp', NULL, 'local', NULL, '/1', '2024-06-17 17:58:40.802000', '2024-06-17 17:58:40.802000', NULL, NULL),
(105, 'iphone-11.webp', NULL, NULL, 470, 477, '{\"thumbnail\":{\"name\":\"thumbnail_iphone-11.webp\",\"hash\":\"thumbnail_iphone_11_90eb58766b\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":154,\"height\":156,\"size\":1.95,\"sizeInBytes\":1954,\"url\":\"/uploads/thumbnail_iphone_11_90eb58766b.webp\"}}', 'iphone_11_90eb58766b', '.webp', 'image/webp', 10.49, '/uploads/iphone_11_90eb58766b.webp', NULL, 'local', NULL, '/1', '2024-06-17 17:58:41.297000', '2024-06-17 17:58:41.297000', NULL, NULL),
(106, 'iphone-11.webp', NULL, NULL, 470, 477, '{\"thumbnail\":{\"name\":\"thumbnail_iphone-11.webp\",\"hash\":\"thumbnail_iphone_11_ef2dfae55a\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":154,\"height\":156,\"size\":1.95,\"sizeInBytes\":1954,\"url\":\"/uploads/thumbnail_iphone_11_ef2dfae55a.webp\"}}', 'iphone_11_ef2dfae55a', '.webp', 'image/webp', 10.49, '/uploads/iphone_11_ef2dfae55a.webp', NULL, 'local', NULL, '/1', '2024-06-17 17:58:41.603000', '2024-06-17 17:58:41.603000', NULL, NULL),
(107, 'iphone-11.webp', NULL, NULL, 470, 477, '{\"thumbnail\":{\"name\":\"thumbnail_iphone-11.webp\",\"hash\":\"thumbnail_iphone_11_be250bf602\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":154,\"height\":156,\"size\":1.95,\"sizeInBytes\":1954,\"url\":\"/uploads/thumbnail_iphone_11_be250bf602.webp\"}}', 'iphone_11_be250bf602', '.webp', 'image/webp', 10.49, '/uploads/iphone_11_be250bf602.webp', NULL, 'local', NULL, '/1', '2024-06-17 17:58:50.274000', '2024-06-17 17:58:50.274000', NULL, NULL),
(108, 'iphone-11.webp', NULL, NULL, 470, 477, '{\"thumbnail\":{\"name\":\"thumbnail_iphone-11.webp\",\"hash\":\"thumbnail_iphone_11_00c9452a34\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":154,\"height\":156,\"size\":1.95,\"sizeInBytes\":1954,\"url\":\"/uploads/thumbnail_iphone_11_00c9452a34.webp\"}}', 'iphone_11_00c9452a34', '.webp', 'image/webp', 10.49, '/uploads/iphone_11_00c9452a34.webp', NULL, 'local', NULL, '/1', '2024-06-17 18:08:38.541000', '2024-06-17 18:08:38.541000', NULL, NULL),
(109, 'iphone-11.webp', NULL, NULL, 470, 477, '{\"thumbnail\":{\"name\":\"thumbnail_iphone-11.webp\",\"hash\":\"thumbnail_iphone_11_f37429b1e0\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":154,\"height\":156,\"size\":1.95,\"sizeInBytes\":1954,\"url\":\"/uploads/thumbnail_iphone_11_f37429b1e0.webp\"}}', 'iphone_11_f37429b1e0', '.webp', 'image/webp', 10.49, '/uploads/iphone_11_f37429b1e0.webp', NULL, 'local', NULL, '/1', '2024-06-17 18:08:42.496000', '2024-06-17 18:08:42.496000', NULL, NULL),
(110, 'iphone-11.webp', NULL, NULL, 470, 477, '{\"thumbnail\":{\"name\":\"thumbnail_iphone-11.webp\",\"hash\":\"thumbnail_iphone_11_adab99b22f\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":154,\"height\":156,\"size\":1.95,\"sizeInBytes\":1954,\"url\":\"/uploads/thumbnail_iphone_11_adab99b22f.webp\"}}', 'iphone_11_adab99b22f', '.webp', 'image/webp', 10.49, '/uploads/iphone_11_adab99b22f.webp', NULL, 'local', NULL, '/1', '2024-06-17 18:08:42.678000', '2024-06-17 18:08:42.678000', NULL, NULL),
(111, 'iphone-11.webp', NULL, NULL, 470, 477, '{\"thumbnail\":{\"name\":\"thumbnail_iphone-11.webp\",\"hash\":\"thumbnail_iphone_11_641f83e545\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":154,\"height\":156,\"size\":1.95,\"sizeInBytes\":1954,\"url\":\"/uploads/thumbnail_iphone_11_641f83e545.webp\"}}', 'iphone_11_641f83e545', '.webp', 'image/webp', 10.49, '/uploads/iphone_11_641f83e545.webp', NULL, 'local', NULL, '/1', '2024-06-17 18:08:42.886000', '2024-06-17 18:08:42.886000', NULL, NULL),
(112, 'iphone-11.webp', NULL, NULL, 470, 477, '{\"thumbnail\":{\"name\":\"thumbnail_iphone-11.webp\",\"hash\":\"thumbnail_iphone_11_49caccdf00\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":154,\"height\":156,\"size\":1.95,\"sizeInBytes\":1954,\"url\":\"/uploads/thumbnail_iphone_11_49caccdf00.webp\"}}', 'iphone_11_49caccdf00', '.webp', 'image/webp', 10.49, '/uploads/iphone_11_49caccdf00.webp', NULL, 'local', NULL, '/1', '2024-06-17 18:09:31.855000', '2024-06-17 18:09:31.855000', NULL, NULL),
(113, 'iphone-11.webp', NULL, NULL, 470, 477, '{\"thumbnail\":{\"name\":\"thumbnail_iphone-11.webp\",\"hash\":\"thumbnail_iphone_11_949803693f\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":154,\"height\":156,\"size\":1.95,\"sizeInBytes\":1954,\"url\":\"/uploads/thumbnail_iphone_11_949803693f.webp\"}}', 'iphone_11_949803693f', '.webp', 'image/webp', 10.49, '/uploads/iphone_11_949803693f.webp', NULL, 'local', NULL, '/1', '2024-06-17 18:09:41.650000', '2024-06-17 18:09:41.650000', NULL, NULL),
(114, 'iphone-11.webp', NULL, NULL, 470, 477, '{\"thumbnail\":{\"name\":\"thumbnail_iphone-11.webp\",\"hash\":\"thumbnail_iphone_11_ce97c647fd\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":154,\"height\":156,\"size\":1.95,\"sizeInBytes\":1954,\"url\":\"/uploads/thumbnail_iphone_11_ce97c647fd.webp\"}}', 'iphone_11_ce97c647fd', '.webp', 'image/webp', 10.49, '/uploads/iphone_11_ce97c647fd.webp', NULL, 'local', NULL, '/1', '2024-06-17 18:09:42.258000', '2024-06-17 18:09:42.258000', NULL, NULL),
(115, 'iphone-11.webp', NULL, NULL, 470, 477, '{\"thumbnail\":{\"name\":\"thumbnail_iphone-11.webp\",\"hash\":\"thumbnail_iphone_11_3e7eca1828\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":154,\"height\":156,\"size\":1.95,\"sizeInBytes\":1954,\"url\":\"/uploads/thumbnail_iphone_11_3e7eca1828.webp\"}}', 'iphone_11_3e7eca1828', '.webp', 'image/webp', 10.49, '/uploads/iphone_11_3e7eca1828.webp', NULL, 'local', NULL, '/1', '2024-06-17 18:14:11.789000', '2024-06-17 18:14:11.789000', NULL, NULL),
(116, 'iphone-11.webp', NULL, NULL, 470, 477, '{\"thumbnail\":{\"name\":\"thumbnail_iphone-11.webp\",\"hash\":\"thumbnail_iphone_11_f2d49d689c\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":154,\"height\":156,\"size\":1.95,\"sizeInBytes\":1954,\"url\":\"/uploads/thumbnail_iphone_11_f2d49d689c.webp\"}}', 'iphone_11_f2d49d689c', '.webp', 'image/webp', 10.49, '/uploads/iphone_11_f2d49d689c.webp', NULL, 'local', NULL, '/1', '2024-06-17 18:14:21.101000', '2024-06-17 18:14:21.101000', NULL, NULL),
(117, 'iphone-11.webp', NULL, NULL, 470, 477, '{\"thumbnail\":{\"name\":\"thumbnail_iphone-11.webp\",\"hash\":\"thumbnail_iphone_11_6ec45ec3e8\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":154,\"height\":156,\"size\":1.95,\"sizeInBytes\":1954,\"url\":\"/uploads/thumbnail_iphone_11_6ec45ec3e8.webp\"}}', 'iphone_11_6ec45ec3e8', '.webp', 'image/webp', 10.49, '/uploads/iphone_11_6ec45ec3e8.webp', NULL, 'local', NULL, '/1', '2024-06-17 18:14:25.166000', '2024-06-17 18:14:25.166000', NULL, NULL),
(118, 'iphone-11.webp', NULL, NULL, 470, 477, '{\"thumbnail\":{\"name\":\"thumbnail_iphone-11.webp\",\"hash\":\"thumbnail_iphone_11_e09f2bf1ab\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":154,\"height\":156,\"size\":1.95,\"sizeInBytes\":1954,\"url\":\"/uploads/thumbnail_iphone_11_e09f2bf1ab.webp\"}}', 'iphone_11_e09f2bf1ab', '.webp', 'image/webp', 10.49, '/uploads/iphone_11_e09f2bf1ab.webp', NULL, 'local', NULL, '/1', '2024-06-17 18:15:58.057000', '2024-06-17 18:15:58.057000', NULL, NULL),
(119, 'iphone-11.webp', NULL, NULL, 470, 477, '{\"thumbnail\":{\"name\":\"thumbnail_iphone-11.webp\",\"hash\":\"thumbnail_iphone_11_c1229a9ead\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":154,\"height\":156,\"size\":1.95,\"sizeInBytes\":1954,\"url\":\"/uploads/thumbnail_iphone_11_c1229a9ead.webp\"}}', 'iphone_11_c1229a9ead', '.webp', 'image/webp', 10.49, '/uploads/iphone_11_c1229a9ead.webp', NULL, 'local', NULL, '/1', '2024-06-17 18:15:58.600000', '2024-06-17 18:15:58.600000', NULL, NULL),
(120, 'iphone-11.webp', NULL, NULL, 470, 477, '{\"thumbnail\":{\"name\":\"thumbnail_iphone-11.webp\",\"hash\":\"thumbnail_iphone_11_448d371e10\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":154,\"height\":156,\"size\":1.95,\"sizeInBytes\":1954,\"url\":\"/uploads/thumbnail_iphone_11_448d371e10.webp\"}}', 'iphone_11_448d371e10', '.webp', 'image/webp', 10.49, '/uploads/iphone_11_448d371e10.webp', NULL, 'local', NULL, '/1', '2024-06-17 18:15:58.775000', '2024-06-17 18:15:58.775000', NULL, NULL),
(121, 'iphone-11.webp', NULL, NULL, 470, 477, '{\"thumbnail\":{\"name\":\"thumbnail_iphone-11.webp\",\"hash\":\"thumbnail_iphone_11_3a82dba112\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":154,\"height\":156,\"size\":1.95,\"sizeInBytes\":1954,\"url\":\"/uploads/thumbnail_iphone_11_3a82dba112.webp\"}}', 'iphone_11_3a82dba112', '.webp', 'image/webp', 10.49, '/uploads/iphone_11_3a82dba112.webp', NULL, 'local', NULL, '/1', '2024-06-17 18:15:58.981000', '2024-06-17 18:15:58.981000', NULL, NULL),
(122, 'iphone11a.jpg', NULL, NULL, 481, 500, '{\"thumbnail\":{\"name\":\"thumbnail_iphone11a.jpg\",\"hash\":\"thumbnail_iphone11a_b39b21ad0f\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":150,\"height\":156,\"size\":4.24,\"sizeInBytes\":4241,\"url\":\"/uploads/thumbnail_iphone11a_b39b21ad0f.jpg\"}}', 'iphone11a_b39b21ad0f', '.jpg', 'image/jpeg', 22.61, '/uploads/iphone11a_b39b21ad0f.jpg', NULL, 'local', NULL, '/1', '2024-06-17 18:19:21.274000', '2024-06-17 18:19:21.274000', NULL, NULL),
(123, 'iphone11a.jpg', NULL, NULL, 481, 500, '{\"thumbnail\":{\"name\":\"thumbnail_iphone11a.jpg\",\"hash\":\"thumbnail_iphone11a_cac0b2fdb9\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":150,\"height\":156,\"size\":4.24,\"sizeInBytes\":4241,\"url\":\"/uploads/thumbnail_iphone11a_cac0b2fdb9.jpg\"}}', 'iphone11a_cac0b2fdb9', '.jpg', 'image/jpeg', 22.61, '/uploads/iphone11a_cac0b2fdb9.jpg', NULL, 'local', NULL, '/1', '2024-06-17 18:19:31.614000', '2024-06-17 18:19:31.614000', NULL, NULL),
(124, 'iphone11a.jpg', NULL, NULL, 481, 500, '{\"thumbnail\":{\"name\":\"thumbnail_iphone11a.jpg\",\"hash\":\"thumbnail_iphone11a_0d68ca028b\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":150,\"height\":156,\"size\":4.24,\"sizeInBytes\":4241,\"url\":\"/uploads/thumbnail_iphone11a_0d68ca028b.jpg\"}}', 'iphone11a_0d68ca028b', '.jpg', 'image/jpeg', 22.61, '/uploads/iphone11a_0d68ca028b.jpg', NULL, 'local', NULL, '/1', '2024-06-17 18:19:40.108000', '2024-06-17 18:19:40.108000', NULL, NULL),
(125, 'iphone_8.jpg', NULL, NULL, 600, 600, '{\"thumbnail\":{\"name\":\"thumbnail_iphone_8.jpg\",\"hash\":\"thumbnail_iphone_8_0677a7b5e7\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":156,\"height\":156,\"size\":4.36,\"sizeInBytes\":4361,\"url\":\"/uploads/thumbnail_iphone_8_0677a7b5e7.jpg\"},\"small\":{\"name\":\"small_iphone_8.jpg\",\"hash\":\"small_iphone_8_0677a7b5e7\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":500,\"height\":500,\"size\":22.81,\"sizeInBytes\":22813,\"url\":\"/uploads/small_iphone_8_0677a7b5e7.jpg\"}}', 'iphone_8_0677a7b5e7', '.jpg', 'image/jpeg', 29.75, '/uploads/iphone_8_0677a7b5e7.jpg', NULL, 'local', NULL, '/1', '2024-06-17 18:20:20.904000', '2024-06-17 18:20:20.904000', NULL, NULL),
(126, 'iphone_13-a.jpg', NULL, NULL, 600, 600, '{\"thumbnail\":{\"name\":\"thumbnail_iphone_13-a.jpg\",\"hash\":\"thumbnail_iphone_13_a_227647d47d\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":156,\"height\":156,\"size\":3.38,\"sizeInBytes\":3377,\"url\":\"/uploads/thumbnail_iphone_13_a_227647d47d.jpg\"},\"small\":{\"name\":\"small_iphone_13-a.jpg\",\"hash\":\"small_iphone_13_a_227647d47d\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":500,\"height\":500,\"size\":16.84,\"sizeInBytes\":16844,\"url\":\"/uploads/small_iphone_13_a_227647d47d.jpg\"}}', 'iphone_13_a_227647d47d', '.jpg', 'image/jpeg', 21.06, '/uploads/iphone_13_a_227647d47d.jpg', NULL, 'local', NULL, '/1', '2024-06-17 18:41:47.757000', '2024-06-17 18:41:47.757000', NULL, NULL),
(127, 'iphone_13-a.jpg', NULL, NULL, 600, 600, '{\"thumbnail\":{\"name\":\"thumbnail_iphone_13-a.jpg\",\"hash\":\"thumbnail_iphone_13_a_e19004d215\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":156,\"height\":156,\"size\":3.38,\"sizeInBytes\":3377,\"url\":\"/uploads/thumbnail_iphone_13_a_e19004d215.jpg\"},\"small\":{\"name\":\"small_iphone_13-a.jpg\",\"hash\":\"small_iphone_13_a_e19004d215\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":500,\"height\":500,\"size\":16.84,\"sizeInBytes\":16844,\"url\":\"/uploads/small_iphone_13_a_e19004d215.jpg\"}}', 'iphone_13_a_e19004d215', '.jpg', 'image/jpeg', 21.06, '/uploads/iphone_13_a_e19004d215.jpg', NULL, 'local', NULL, '/1', '2024-06-17 18:42:02.377000', '2024-06-17 18:42:02.377000', NULL, NULL),
(128, 'iphone_13-a.jpg', NULL, NULL, 600, 600, '{\"thumbnail\":{\"name\":\"thumbnail_iphone_13-a.jpg\",\"hash\":\"thumbnail_iphone_13_a_c404d43a4a\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":156,\"height\":156,\"size\":3.38,\"sizeInBytes\":3377,\"url\":\"/uploads/thumbnail_iphone_13_a_c404d43a4a.jpg\"},\"small\":{\"name\":\"small_iphone_13-a.jpg\",\"hash\":\"small_iphone_13_a_c404d43a4a\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":500,\"height\":500,\"size\":16.84,\"sizeInBytes\":16844,\"url\":\"/uploads/small_iphone_13_a_c404d43a4a.jpg\"}}', 'iphone_13_a_c404d43a4a', '.jpg', 'image/jpeg', 21.06, '/uploads/iphone_13_a_c404d43a4a.jpg', NULL, 'local', NULL, '/1', '2024-06-17 18:42:13.302000', '2024-06-17 18:42:13.302000', NULL, NULL),
(129, 'a03s.jpg', NULL, NULL, 600, 600, '{\"thumbnail\":{\"name\":\"thumbnail_a03s.jpg\",\"hash\":\"thumbnail_a03s_c8380645fb\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":156,\"height\":156,\"size\":3.91,\"sizeInBytes\":3913,\"url\":\"/uploads/thumbnail_a03s_c8380645fb.jpg\"},\"small\":{\"name\":\"small_a03s.jpg\",\"hash\":\"small_a03s_c8380645fb\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":500,\"height\":500,\"size\":28.03,\"sizeInBytes\":28027,\"url\":\"/uploads/small_a03s_c8380645fb.jpg\"}}', 'a03s_c8380645fb', '.jpg', 'image/jpeg', 39.05, '/uploads/a03s_c8380645fb.jpg', NULL, 'local', NULL, '/1', '2024-06-17 18:42:23.848000', '2024-06-17 18:42:23.848000', NULL, NULL),
(130, 'a03s.jpg', NULL, NULL, 600, 600, '{\"thumbnail\":{\"name\":\"thumbnail_a03s.jpg\",\"hash\":\"thumbnail_a03s_bf6e1df52f\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":156,\"height\":156,\"size\":3.91,\"sizeInBytes\":3913,\"url\":\"/uploads/thumbnail_a03s_bf6e1df52f.jpg\"},\"small\":{\"name\":\"small_a03s.jpg\",\"hash\":\"small_a03s_bf6e1df52f\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":500,\"height\":500,\"size\":28.03,\"sizeInBytes\":28027,\"url\":\"/uploads/small_a03s_bf6e1df52f.jpg\"}}', 'a03s_bf6e1df52f', '.jpg', 'image/jpeg', 39.05, '/uploads/a03s_bf6e1df52f.jpg', NULL, 'local', NULL, '/1', '2024-06-17 18:43:05.636000', '2024-06-17 18:43:05.636000', NULL, NULL),
(131, 'a03s.jpg', NULL, NULL, 600, 600, '{\"thumbnail\":{\"name\":\"thumbnail_a03s.jpg\",\"hash\":\"thumbnail_a03s_7a18be09e9\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":156,\"height\":156,\"size\":3.91,\"sizeInBytes\":3913,\"url\":\"/uploads/thumbnail_a03s_7a18be09e9.jpg\"},\"small\":{\"name\":\"small_a03s.jpg\",\"hash\":\"small_a03s_7a18be09e9\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":500,\"height\":500,\"size\":28.03,\"sizeInBytes\":28027,\"url\":\"/uploads/small_a03s_7a18be09e9.jpg\"}}', 'a03s_7a18be09e9', '.jpg', 'image/jpeg', 39.05, '/uploads/a03s_7a18be09e9.jpg', NULL, 'local', NULL, '/1', '2024-06-17 18:43:12.934000', '2024-06-17 18:43:12.934000', NULL, NULL),
(132, 'iphone-11.webp', NULL, NULL, 470, 477, '{\"thumbnail\":{\"name\":\"thumbnail_iphone-11.webp\",\"hash\":\"thumbnail_iphone_11_44c96b5241\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":154,\"height\":156,\"size\":1.95,\"sizeInBytes\":1954,\"url\":\"/uploads/thumbnail_iphone_11_44c96b5241.webp\"}}', 'iphone_11_44c96b5241', '.webp', 'image/webp', 10.49, '/uploads/iphone_11_44c96b5241.webp', NULL, 'local', NULL, '/1', '2024-06-17 20:04:35.171000', '2024-06-17 20:04:35.171000', NULL, NULL),
(133, 'iphone-11.webp', NULL, NULL, 470, 477, '{\"thumbnail\":{\"name\":\"thumbnail_iphone-11.webp\",\"hash\":\"thumbnail_iphone_11_4ddf12d234\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":154,\"height\":156,\"size\":1.95,\"sizeInBytes\":1954,\"url\":\"/uploads/thumbnail_iphone_11_4ddf12d234.webp\"}}', 'iphone_11_4ddf12d234', '.webp', 'image/webp', 10.49, '/uploads/iphone_11_4ddf12d234.webp', NULL, 'local', NULL, '/1', '2024-06-17 20:04:40.531000', '2024-06-17 20:04:40.531000', NULL, NULL),
(134, 'iphone-11.webp', NULL, NULL, 470, 477, '{\"thumbnail\":{\"name\":\"thumbnail_iphone-11.webp\",\"hash\":\"thumbnail_iphone_11_d8e2e101b7\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":154,\"height\":156,\"size\":1.95,\"sizeInBytes\":1954,\"url\":\"/uploads/thumbnail_iphone_11_d8e2e101b7.webp\"}}', 'iphone_11_d8e2e101b7', '.webp', 'image/webp', 10.49, '/uploads/iphone_11_d8e2e101b7.webp', NULL, 'local', NULL, '/1', '2024-06-17 20:05:29.454000', '2024-06-17 20:05:29.454000', NULL, NULL),
(135, 'iphone-11.webp', NULL, NULL, 470, 477, '{\"thumbnail\":{\"name\":\"thumbnail_iphone-11.webp\",\"hash\":\"thumbnail_iphone_11_eff3b1e03c\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":154,\"height\":156,\"size\":1.95,\"sizeInBytes\":1954,\"url\":\"/uploads/thumbnail_iphone_11_eff3b1e03c.webp\"}}', 'iphone_11_eff3b1e03c', '.webp', 'image/webp', 10.49, '/uploads/iphone_11_eff3b1e03c.webp', NULL, 'local', NULL, '/1', '2024-06-17 20:05:30.614000', '2024-06-17 20:05:30.614000', NULL, NULL),
(136, 'iphone-11.webp', NULL, NULL, 470, 477, '{\"thumbnail\":{\"name\":\"thumbnail_iphone-11.webp\",\"hash\":\"thumbnail_iphone_11_40470ea442\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":154,\"height\":156,\"size\":1.95,\"sizeInBytes\":1954,\"url\":\"/uploads/thumbnail_iphone_11_40470ea442.webp\"}}', 'iphone_11_40470ea442', '.webp', 'image/webp', 10.49, '/uploads/iphone_11_40470ea442.webp', NULL, 'local', NULL, '/1', '2024-06-17 20:05:31.206000', '2024-06-17 20:05:31.206000', NULL, NULL),
(137, 'iphone11a.jpg', NULL, NULL, 481, 500, '{\"thumbnail\":{\"name\":\"thumbnail_iphone11a.jpg\",\"hash\":\"thumbnail_iphone11a_f1b0b05f14\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":150,\"height\":156,\"size\":4.24,\"sizeInBytes\":4241,\"url\":\"/uploads/thumbnail_iphone11a_f1b0b05f14.jpg\"}}', 'iphone11a_f1b0b05f14', '.jpg', 'image/jpeg', 22.61, '/uploads/iphone11a_f1b0b05f14.jpg', NULL, 'local', NULL, '/1', '2024-06-17 20:06:30.305000', '2024-06-17 20:06:30.305000', NULL, NULL),
(138, 'chòn.png', NULL, NULL, 687, 402, '{\"thumbnail\":{\"name\":\"thumbnail_chòn.png\",\"hash\":\"thumbnail_chon_de032795bc\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":143,\"size\":80.99,\"sizeInBytes\":80985,\"url\":\"/uploads/thumbnail_chon_de032795bc.png\"},\"small\":{\"name\":\"small_chòn.png\",\"hash\":\"small_chon_de032795bc\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":293,\"size\":309.3,\"sizeInBytes\":309300,\"url\":\"/uploads/small_chon_de032795bc.png\"}}', 'chon_de032795bc', '.png', 'image/png', 128.91, '/uploads/chon_de032795bc.png', NULL, 'local', NULL, '/1', '2024-06-17 20:07:16.151000', '2024-06-17 20:07:16.151000', NULL, NULL),
(139, 'chòn.png', NULL, NULL, 687, 402, '{\"thumbnail\":{\"name\":\"thumbnail_chòn.png\",\"hash\":\"thumbnail_chon_59e94cc668\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":143,\"size\":80.99,\"sizeInBytes\":80985,\"url\":\"/uploads/thumbnail_chon_59e94cc668.png\"},\"small\":{\"name\":\"small_chòn.png\",\"hash\":\"small_chon_59e94cc668\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":293,\"size\":309.3,\"sizeInBytes\":309300,\"url\":\"/uploads/small_chon_59e94cc668.png\"}}', 'chon_59e94cc668', '.png', 'image/png', 128.91, '/uploads/chon_59e94cc668.png', NULL, 'local', NULL, '/1', '2024-06-17 20:07:29.433000', '2024-06-17 20:07:29.433000', NULL, NULL),
(140, 'chòn.png', NULL, NULL, 687, 402, '{\"thumbnail\":{\"name\":\"thumbnail_chòn.png\",\"hash\":\"thumbnail_chon_c1889e4281\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":143,\"size\":80.99,\"sizeInBytes\":80985,\"url\":\"/uploads/thumbnail_chon_c1889e4281.png\"},\"small\":{\"name\":\"small_chòn.png\",\"hash\":\"small_chon_c1889e4281\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":293,\"size\":309.3,\"sizeInBytes\":309300,\"url\":\"/uploads/small_chon_c1889e4281.png\"}}', 'chon_c1889e4281', '.png', 'image/png', 128.91, '/uploads/chon_c1889e4281.png', NULL, 'local', NULL, '/1', '2024-06-17 20:07:30.786000', '2024-06-17 20:07:30.786000', NULL, NULL),
(141, 'chòn.png', NULL, NULL, 687, 402, '{\"thumbnail\":{\"name\":\"thumbnail_chòn.png\",\"hash\":\"thumbnail_chon_960a5137f4\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":143,\"size\":80.99,\"sizeInBytes\":80985,\"url\":\"/uploads/thumbnail_chon_960a5137f4.png\"},\"small\":{\"name\":\"small_chòn.png\",\"hash\":\"small_chon_960a5137f4\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":293,\"size\":309.3,\"sizeInBytes\":309300,\"url\":\"/uploads/small_chon_960a5137f4.png\"}}', 'chon_960a5137f4', '.png', 'image/png', 128.91, '/uploads/chon_960a5137f4.png', NULL, 'local', NULL, '/1', '2024-06-17 20:07:30.970000', '2024-06-17 20:07:30.970000', NULL, NULL),
(142, 'chòn.png', NULL, NULL, 687, 402, '{\"thumbnail\":{\"name\":\"thumbnail_chòn.png\",\"hash\":\"thumbnail_chon_da057fb7f2\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":143,\"size\":80.99,\"sizeInBytes\":80985,\"url\":\"/uploads/thumbnail_chon_da057fb7f2.png\"},\"small\":{\"name\":\"small_chòn.png\",\"hash\":\"small_chon_da057fb7f2\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":293,\"size\":309.3,\"sizeInBytes\":309300,\"url\":\"/uploads/small_chon_da057fb7f2.png\"}}', 'chon_da057fb7f2', '.png', 'image/png', 128.91, '/uploads/chon_da057fb7f2.png', NULL, 'local', NULL, '/1', '2024-06-17 20:07:44.074000', '2024-06-17 20:07:44.074000', NULL, NULL),
(143, 'chòn.png', NULL, NULL, 687, 402, '{\"thumbnail\":{\"name\":\"thumbnail_chòn.png\",\"hash\":\"thumbnail_chon_8609d17489\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":143,\"size\":80.99,\"sizeInBytes\":80985,\"url\":\"/uploads/thumbnail_chon_8609d17489.png\"},\"small\":{\"name\":\"small_chòn.png\",\"hash\":\"small_chon_8609d17489\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":293,\"size\":309.3,\"sizeInBytes\":309300,\"url\":\"/uploads/small_chon_8609d17489.png\"}}', 'chon_8609d17489', '.png', 'image/png', 128.91, '/uploads/chon_8609d17489.png', NULL, 'local', NULL, '/1', '2024-06-17 20:07:44.372000', '2024-06-17 20:07:44.372000', NULL, NULL),
(144, 'chòn.png', NULL, NULL, 687, 402, '{\"thumbnail\":{\"name\":\"thumbnail_chòn.png\",\"hash\":\"thumbnail_chon_fa49ab271c\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":143,\"size\":80.99,\"sizeInBytes\":80985,\"url\":\"/uploads/thumbnail_chon_fa49ab271c.png\"},\"small\":{\"name\":\"small_chòn.png\",\"hash\":\"small_chon_fa49ab271c\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":293,\"size\":309.3,\"sizeInBytes\":309300,\"url\":\"/uploads/small_chon_fa49ab271c.png\"}}', 'chon_fa49ab271c', '.png', 'image/png', 128.91, '/uploads/chon_fa49ab271c.png', NULL, 'local', NULL, '/1', '2024-06-17 20:07:44.465000', '2024-06-17 20:07:44.465000', NULL, NULL),
(145, 'chòn.png', NULL, NULL, 687, 402, '{\"thumbnail\":{\"name\":\"thumbnail_chòn.png\",\"hash\":\"thumbnail_chon_a405417cb5\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":143,\"size\":80.99,\"sizeInBytes\":80985,\"url\":\"/uploads/thumbnail_chon_a405417cb5.png\"},\"small\":{\"name\":\"small_chòn.png\",\"hash\":\"small_chon_a405417cb5\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":293,\"size\":309.3,\"sizeInBytes\":309300,\"url\":\"/uploads/small_chon_a405417cb5.png\"}}', 'chon_a405417cb5', '.png', 'image/png', 128.91, '/uploads/chon_a405417cb5.png', NULL, 'local', NULL, '/1', '2024-06-17 20:07:44.470000', '2024-06-17 20:07:44.470000', NULL, NULL),
(146, 'chòn.png', NULL, NULL, 687, 402, '{\"thumbnail\":{\"name\":\"thumbnail_chòn.png\",\"hash\":\"thumbnail_chon_59641307ae\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":143,\"size\":80.99,\"sizeInBytes\":80985,\"url\":\"/uploads/thumbnail_chon_59641307ae.png\"},\"small\":{\"name\":\"small_chòn.png\",\"hash\":\"small_chon_59641307ae\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":293,\"size\":309.3,\"sizeInBytes\":309300,\"url\":\"/uploads/small_chon_59641307ae.png\"}}', 'chon_59641307ae', '.png', 'image/png', 128.91, '/uploads/chon_59641307ae.png', NULL, 'local', NULL, '/1', '2024-06-17 20:07:46.108000', '2024-06-17 20:07:46.108000', NULL, NULL),
(147, 'chòn.png', NULL, NULL, 687, 402, '{\"thumbnail\":{\"name\":\"thumbnail_chòn.png\",\"hash\":\"thumbnail_chon_af4fb61246\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":143,\"size\":80.99,\"sizeInBytes\":80985,\"url\":\"/uploads/thumbnail_chon_af4fb61246.png\"},\"small\":{\"name\":\"small_chòn.png\",\"hash\":\"small_chon_af4fb61246\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":293,\"size\":309.3,\"sizeInBytes\":309300,\"url\":\"/uploads/small_chon_af4fb61246.png\"}}', 'chon_af4fb61246', '.png', 'image/png', 128.91, '/uploads/chon_af4fb61246.png', NULL, 'local', NULL, '/1', '2024-06-17 20:07:46.165000', '2024-06-17 20:07:46.165000', NULL, NULL),
(148, 'chòn.png', NULL, NULL, 687, 402, '{\"thumbnail\":{\"name\":\"thumbnail_chòn.png\",\"hash\":\"thumbnail_chon_b7da8b12d2\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":143,\"size\":80.99,\"sizeInBytes\":80985,\"url\":\"/uploads/thumbnail_chon_b7da8b12d2.png\"},\"small\":{\"name\":\"small_chòn.png\",\"hash\":\"small_chon_b7da8b12d2\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":293,\"size\":309.3,\"sizeInBytes\":309300,\"url\":\"/uploads/small_chon_b7da8b12d2.png\"}}', 'chon_b7da8b12d2', '.png', 'image/png', 128.91, '/uploads/chon_b7da8b12d2.png', NULL, 'local', NULL, '/1', '2024-06-17 20:07:46.387000', '2024-06-17 20:07:46.387000', NULL, NULL),
(149, 'chòn.png', NULL, NULL, 687, 402, '{\"thumbnail\":{\"name\":\"thumbnail_chòn.png\",\"hash\":\"thumbnail_chon_4b182202a5\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":143,\"size\":80.99,\"sizeInBytes\":80985,\"url\":\"/uploads/thumbnail_chon_4b182202a5.png\"},\"small\":{\"name\":\"small_chòn.png\",\"hash\":\"small_chon_4b182202a5\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":293,\"size\":309.3,\"sizeInBytes\":309300,\"url\":\"/uploads/small_chon_4b182202a5.png\"}}', 'chon_4b182202a5', '.png', 'image/png', 128.91, '/uploads/chon_4b182202a5.png', NULL, 'local', NULL, '/1', '2024-06-17 20:07:53.241000', '2024-06-17 20:07:53.241000', NULL, NULL),
(150, 'chòn.png', NULL, NULL, 687, 402, '{\"thumbnail\":{\"name\":\"thumbnail_chòn.png\",\"hash\":\"thumbnail_chon_afe03fb592\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":143,\"size\":80.99,\"sizeInBytes\":80985,\"url\":\"/uploads/thumbnail_chon_afe03fb592.png\"},\"small\":{\"name\":\"small_chòn.png\",\"hash\":\"small_chon_afe03fb592\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":293,\"size\":309.3,\"sizeInBytes\":309300,\"url\":\"/uploads/small_chon_afe03fb592.png\"}}', 'chon_afe03fb592', '.png', 'image/png', 128.91, '/uploads/chon_afe03fb592.png', NULL, 'local', NULL, '/1', '2024-06-17 20:07:53.405000', '2024-06-17 20:07:53.405000', NULL, NULL),
(151, 'chòn.png', NULL, NULL, 687, 402, '{\"thumbnail\":{\"name\":\"thumbnail_chòn.png\",\"hash\":\"thumbnail_chon_1e97283f4a\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":143,\"size\":80.99,\"sizeInBytes\":80985,\"url\":\"/uploads/thumbnail_chon_1e97283f4a.png\"},\"small\":{\"name\":\"small_chòn.png\",\"hash\":\"small_chon_1e97283f4a\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":293,\"size\":309.3,\"sizeInBytes\":309300,\"url\":\"/uploads/small_chon_1e97283f4a.png\"}}', 'chon_1e97283f4a', '.png', 'image/png', 128.91, '/uploads/chon_1e97283f4a.png', NULL, 'local', NULL, '/1', '2024-06-17 20:07:53.474000', '2024-06-17 20:07:53.474000', NULL, NULL),
(152, 'chòn.png', NULL, NULL, 687, 402, '{\"thumbnail\":{\"name\":\"thumbnail_chòn.png\",\"hash\":\"thumbnail_chon_ceb916cbdc\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":143,\"size\":80.99,\"sizeInBytes\":80985,\"url\":\"/uploads/thumbnail_chon_ceb916cbdc.png\"},\"small\":{\"name\":\"small_chòn.png\",\"hash\":\"small_chon_ceb916cbdc\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":293,\"size\":309.3,\"sizeInBytes\":309300,\"url\":\"/uploads/small_chon_ceb916cbdc.png\"}}', 'chon_ceb916cbdc', '.png', 'image/png', 128.91, '/uploads/chon_ceb916cbdc.png', NULL, 'local', NULL, '/1', '2024-06-17 20:08:26.798000', '2024-06-17 20:08:26.798000', NULL, NULL),
(153, 'chòn.png', NULL, NULL, 687, 402, '{\"thumbnail\":{\"name\":\"thumbnail_chòn.png\",\"hash\":\"thumbnail_chon_5b4e8b36f8\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":143,\"size\":80.99,\"sizeInBytes\":80985,\"url\":\"/uploads/thumbnail_chon_5b4e8b36f8.png\"},\"small\":{\"name\":\"small_chòn.png\",\"hash\":\"small_chon_5b4e8b36f8\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":293,\"size\":309.3,\"sizeInBytes\":309300,\"url\":\"/uploads/small_chon_5b4e8b36f8.png\"}}', 'chon_5b4e8b36f8', '.png', 'image/png', 128.91, '/uploads/chon_5b4e8b36f8.png', NULL, 'local', NULL, '/1', '2024-06-17 20:08:28.331000', '2024-06-17 20:08:28.331000', NULL, NULL),
(154, 'chòn.png', NULL, NULL, 687, 402, '{\"thumbnail\":{\"name\":\"thumbnail_chòn.png\",\"hash\":\"thumbnail_chon_3c45c2fc48\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":143,\"size\":80.99,\"sizeInBytes\":80985,\"url\":\"/uploads/thumbnail_chon_3c45c2fc48.png\"},\"small\":{\"name\":\"small_chòn.png\",\"hash\":\"small_chon_3c45c2fc48\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":293,\"size\":309.3,\"sizeInBytes\":309300,\"url\":\"/uploads/small_chon_3c45c2fc48.png\"}}', 'chon_3c45c2fc48', '.png', 'image/png', 128.91, '/uploads/chon_3c45c2fc48.png', NULL, 'local', NULL, '/1', '2024-06-17 20:08:28.462000', '2024-06-17 20:08:28.462000', NULL, NULL),
(155, 'chòn.png', NULL, NULL, 687, 402, '{\"thumbnail\":{\"name\":\"thumbnail_chòn.png\",\"hash\":\"thumbnail_chon_09a125cae1\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":143,\"size\":80.99,\"sizeInBytes\":80985,\"url\":\"/uploads/thumbnail_chon_09a125cae1.png\"},\"small\":{\"name\":\"small_chòn.png\",\"hash\":\"small_chon_09a125cae1\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":293,\"size\":309.3,\"sizeInBytes\":309300,\"url\":\"/uploads/small_chon_09a125cae1.png\"}}', 'chon_09a125cae1', '.png', 'image/png', 128.91, '/uploads/chon_09a125cae1.png', NULL, 'local', NULL, '/1', '2024-06-17 20:08:28.680000', '2024-06-17 20:08:28.680000', NULL, NULL),
(156, 'chòn.png', NULL, NULL, 687, 402, '{\"thumbnail\":{\"name\":\"thumbnail_chòn.png\",\"hash\":\"thumbnail_chon_fe686757ef\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":143,\"size\":80.99,\"sizeInBytes\":80985,\"url\":\"/uploads/thumbnail_chon_fe686757ef.png\"},\"small\":{\"name\":\"small_chòn.png\",\"hash\":\"small_chon_fe686757ef\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":293,\"size\":309.3,\"sizeInBytes\":309300,\"url\":\"/uploads/small_chon_fe686757ef.png\"}}', 'chon_fe686757ef', '.png', 'image/png', 128.91, '/uploads/chon_fe686757ef.png', NULL, 'local', NULL, '/1', '2024-06-17 20:08:31.811000', '2024-06-17 20:08:31.811000', NULL, NULL),
(157, 'chòn.png', NULL, NULL, 687, 402, '{\"thumbnail\":{\"name\":\"thumbnail_chòn.png\",\"hash\":\"thumbnail_chon_54459cc11b\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":143,\"size\":80.99,\"sizeInBytes\":80985,\"url\":\"/uploads/thumbnail_chon_54459cc11b.png\"},\"small\":{\"name\":\"small_chòn.png\",\"hash\":\"small_chon_54459cc11b\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":293,\"size\":309.3,\"sizeInBytes\":309300,\"url\":\"/uploads/small_chon_54459cc11b.png\"}}', 'chon_54459cc11b', '.png', 'image/png', 128.91, '/uploads/chon_54459cc11b.png', NULL, 'local', NULL, '/1', '2024-06-17 20:08:32.023000', '2024-06-17 20:08:32.023000', NULL, NULL),
(158, 'chòn.png', NULL, NULL, 687, 402, '{\"thumbnail\":{\"name\":\"thumbnail_chòn.png\",\"hash\":\"thumbnail_chon_599751ee03\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":143,\"size\":80.99,\"sizeInBytes\":80985,\"url\":\"/uploads/thumbnail_chon_599751ee03.png\"},\"small\":{\"name\":\"small_chòn.png\",\"hash\":\"small_chon_599751ee03\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":293,\"size\":309.3,\"sizeInBytes\":309300,\"url\":\"/uploads/small_chon_599751ee03.png\"}}', 'chon_599751ee03', '.png', 'image/png', 128.91, '/uploads/chon_599751ee03.png', NULL, 'local', NULL, '/1', '2024-06-17 20:08:37.577000', '2024-06-17 20:08:37.577000', NULL, NULL),
(159, 'chòn.png', NULL, NULL, 687, 402, '{\"thumbnail\":{\"name\":\"thumbnail_chòn.png\",\"hash\":\"thumbnail_chon_2ee8d94708\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":143,\"size\":80.99,\"sizeInBytes\":80985,\"url\":\"/uploads/thumbnail_chon_2ee8d94708.png\"},\"small\":{\"name\":\"small_chòn.png\",\"hash\":\"small_chon_2ee8d94708\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":293,\"size\":309.3,\"sizeInBytes\":309300,\"url\":\"/uploads/small_chon_2ee8d94708.png\"}}', 'chon_2ee8d94708', '.png', 'image/png', 128.91, '/uploads/chon_2ee8d94708.png', NULL, 'local', NULL, '/1', '2024-06-17 20:08:39.150000', '2024-06-17 20:08:39.150000', NULL, NULL),
(160, 'chòn.png', NULL, NULL, 687, 402, '{\"thumbnail\":{\"name\":\"thumbnail_chòn.png\",\"hash\":\"thumbnail_chon_33270f80d0\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":143,\"size\":80.99,\"sizeInBytes\":80985,\"url\":\"/uploads/thumbnail_chon_33270f80d0.png\"},\"small\":{\"name\":\"small_chòn.png\",\"hash\":\"small_chon_33270f80d0\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":293,\"size\":309.3,\"sizeInBytes\":309300,\"url\":\"/uploads/small_chon_33270f80d0.png\"}}', 'chon_33270f80d0', '.png', 'image/png', 128.91, '/uploads/chon_33270f80d0.png', NULL, 'local', NULL, '/1', '2024-06-17 20:08:39.392000', '2024-06-17 20:08:39.392000', NULL, NULL),
(161, 'chòn.png', NULL, NULL, 687, 402, '{\"thumbnail\":{\"name\":\"thumbnail_chòn.png\",\"hash\":\"thumbnail_chon_0503d53784\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":143,\"size\":80.99,\"sizeInBytes\":80985,\"url\":\"/uploads/thumbnail_chon_0503d53784.png\"},\"small\":{\"name\":\"small_chòn.png\",\"hash\":\"small_chon_0503d53784\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":293,\"size\":309.3,\"sizeInBytes\":309300,\"url\":\"/uploads/small_chon_0503d53784.png\"}}', 'chon_0503d53784', '.png', 'image/png', 128.91, '/uploads/chon_0503d53784.png', NULL, 'local', NULL, '/1', '2024-06-17 20:08:39.457000', '2024-06-17 20:08:39.457000', NULL, NULL),
(162, 'chòn.png', NULL, NULL, 687, 402, '{\"thumbnail\":{\"name\":\"thumbnail_chòn.png\",\"hash\":\"thumbnail_chon_f5e00b3f7f\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":143,\"size\":80.99,\"sizeInBytes\":80985,\"url\":\"/uploads/thumbnail_chon_f5e00b3f7f.png\"},\"small\":{\"name\":\"small_chòn.png\",\"hash\":\"small_chon_f5e00b3f7f\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":293,\"size\":309.3,\"sizeInBytes\":309300,\"url\":\"/uploads/small_chon_f5e00b3f7f.png\"}}', 'chon_f5e00b3f7f', '.png', 'image/png', 128.91, '/uploads/chon_f5e00b3f7f.png', NULL, 'local', NULL, '/1', '2024-06-17 20:09:12.869000', '2024-06-17 20:09:12.869000', NULL, NULL),
(163, 'chòn.png', NULL, NULL, 687, 402, '{\"thumbnail\":{\"name\":\"thumbnail_chòn.png\",\"hash\":\"thumbnail_chon_6cdf9c65de\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":143,\"size\":80.99,\"sizeInBytes\":80985,\"url\":\"/uploads/thumbnail_chon_6cdf9c65de.png\"},\"small\":{\"name\":\"small_chòn.png\",\"hash\":\"small_chon_6cdf9c65de\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":293,\"size\":309.3,\"sizeInBytes\":309300,\"url\":\"/uploads/small_chon_6cdf9c65de.png\"}}', 'chon_6cdf9c65de', '.png', 'image/png', 128.91, '/uploads/chon_6cdf9c65de.png', NULL, 'local', NULL, '/1', '2024-06-17 20:09:14.879000', '2024-06-17 20:09:14.879000', NULL, NULL),
(164, 'chòn.png', NULL, NULL, 687, 402, '{\"thumbnail\":{\"name\":\"thumbnail_chòn.png\",\"hash\":\"thumbnail_chon_8c2d560c4f\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":143,\"size\":80.99,\"sizeInBytes\":80985,\"url\":\"/uploads/thumbnail_chon_8c2d560c4f.png\"},\"small\":{\"name\":\"small_chòn.png\",\"hash\":\"small_chon_8c2d560c4f\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":293,\"size\":309.3,\"sizeInBytes\":309300,\"url\":\"/uploads/small_chon_8c2d560c4f.png\"}}', 'chon_8c2d560c4f', '.png', 'image/png', 128.91, '/uploads/chon_8c2d560c4f.png', NULL, 'local', NULL, '/1', '2024-06-17 20:09:14.902000', '2024-06-17 20:09:14.902000', NULL, NULL),
(165, 'chòn.png', NULL, NULL, 687, 402, '{\"small\":{\"name\":\"small_chòn.png\",\"hash\":\"small_chon_d4659adb74\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":293,\"size\":309.3,\"sizeInBytes\":309300,\"url\":\"/uploads/small_chon_d4659adb74.png\"},\"thumbnail\":{\"name\":\"thumbnail_chòn.png\",\"hash\":\"thumbnail_chon_d4659adb74\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":143,\"size\":80.99,\"sizeInBytes\":80985,\"url\":\"/uploads/thumbnail_chon_d4659adb74.png\"}}', 'chon_d4659adb74', '.png', 'image/png', 128.91, '/uploads/chon_d4659adb74.png', NULL, 'local', NULL, '/1', '2024-06-17 20:09:16.035000', '2024-06-17 20:09:16.035000', NULL, NULL),
(166, 'chòn.png', NULL, NULL, 687, 402, '{\"thumbnail\":{\"name\":\"thumbnail_chòn.png\",\"hash\":\"thumbnail_chon_29ac20b9c3\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":143,\"size\":80.99,\"sizeInBytes\":80985,\"url\":\"/uploads/thumbnail_chon_29ac20b9c3.png\"},\"small\":{\"name\":\"small_chòn.png\",\"hash\":\"small_chon_29ac20b9c3\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":293,\"size\":309.3,\"sizeInBytes\":309300,\"url\":\"/uploads/small_chon_29ac20b9c3.png\"}}', 'chon_29ac20b9c3', '.png', 'image/png', 128.91, '/uploads/chon_29ac20b9c3.png', NULL, 'local', NULL, '/1', '2024-06-17 20:09:16.249000', '2024-06-17 20:09:16.249000', NULL, NULL),
(167, 'chòn.png', NULL, NULL, 687, 402, '{\"thumbnail\":{\"name\":\"thumbnail_chòn.png\",\"hash\":\"thumbnail_chon_e19e8a1f7f\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":143,\"size\":80.99,\"sizeInBytes\":80985,\"url\":\"/uploads/thumbnail_chon_e19e8a1f7f.png\"},\"small\":{\"name\":\"small_chòn.png\",\"hash\":\"small_chon_e19e8a1f7f\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":293,\"size\":309.3,\"sizeInBytes\":309300,\"url\":\"/uploads/small_chon_e19e8a1f7f.png\"}}', 'chon_e19e8a1f7f', '.png', 'image/png', 128.91, '/uploads/chon_e19e8a1f7f.png', NULL, 'local', NULL, '/1', '2024-06-17 20:09:16.843000', '2024-06-17 20:09:16.843000', NULL, NULL);
INSERT INTO `files` (`id`, `name`, `alternative_text`, `caption`, `width`, `height`, `formats`, `hash`, `ext`, `mime`, `size`, `url`, `preview_url`, `provider`, `provider_metadata`, `folder_path`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(168, 'chòn.png', NULL, NULL, 687, 402, '{\"thumbnail\":{\"name\":\"thumbnail_chòn.png\",\"hash\":\"thumbnail_chon_4b102fd305\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":143,\"size\":80.99,\"sizeInBytes\":80985,\"url\":\"/uploads/thumbnail_chon_4b102fd305.png\"},\"small\":{\"name\":\"small_chòn.png\",\"hash\":\"small_chon_4b102fd305\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":293,\"size\":309.3,\"sizeInBytes\":309300,\"url\":\"/uploads/small_chon_4b102fd305.png\"}}', 'chon_4b102fd305', '.png', 'image/png', 128.91, '/uploads/chon_4b102fd305.png', NULL, 'local', NULL, '/1', '2024-06-17 20:09:45.871000', '2024-06-17 20:09:45.871000', NULL, NULL),
(169, 'chòn.png', NULL, NULL, 687, 402, '{\"thumbnail\":{\"name\":\"thumbnail_chòn.png\",\"hash\":\"thumbnail_chon_1530a614fd\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":143,\"size\":80.99,\"sizeInBytes\":80985,\"url\":\"/uploads/thumbnail_chon_1530a614fd.png\"},\"small\":{\"name\":\"small_chòn.png\",\"hash\":\"small_chon_1530a614fd\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":293,\"size\":309.3,\"sizeInBytes\":309300,\"url\":\"/uploads/small_chon_1530a614fd.png\"}}', 'chon_1530a614fd', '.png', 'image/png', 128.91, '/uploads/chon_1530a614fd.png', NULL, 'local', NULL, '/1', '2024-06-17 20:09:46.704000', '2024-06-17 20:09:46.704000', NULL, NULL),
(170, 'chòn.png', NULL, NULL, 687, 402, '{\"thumbnail\":{\"name\":\"thumbnail_chòn.png\",\"hash\":\"thumbnail_chon_eb403dd61b\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":143,\"size\":80.99,\"sizeInBytes\":80985,\"url\":\"/uploads/thumbnail_chon_eb403dd61b.png\"},\"small\":{\"name\":\"small_chòn.png\",\"hash\":\"small_chon_eb403dd61b\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":293,\"size\":309.3,\"sizeInBytes\":309300,\"url\":\"/uploads/small_chon_eb403dd61b.png\"}}', 'chon_eb403dd61b', '.png', 'image/png', 128.91, '/uploads/chon_eb403dd61b.png', NULL, 'local', NULL, '/1', '2024-06-17 20:09:48.074000', '2024-06-17 20:09:48.074000', NULL, NULL),
(171, 'chòn.png', NULL, NULL, 687, 402, '{\"thumbnail\":{\"name\":\"thumbnail_chòn.png\",\"hash\":\"thumbnail_chon_32581ce3ce\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":143,\"size\":80.99,\"sizeInBytes\":80985,\"url\":\"/uploads/thumbnail_chon_32581ce3ce.png\"},\"small\":{\"name\":\"small_chòn.png\",\"hash\":\"small_chon_32581ce3ce\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":293,\"size\":309.3,\"sizeInBytes\":309300,\"url\":\"/uploads/small_chon_32581ce3ce.png\"}}', 'chon_32581ce3ce', '.png', 'image/png', 128.91, '/uploads/chon_32581ce3ce.png', NULL, 'local', NULL, '/1', '2024-06-17 20:09:48.191000', '2024-06-17 20:09:48.191000', NULL, NULL),
(172, 'chòn.png', NULL, NULL, 687, 402, '{\"thumbnail\":{\"name\":\"thumbnail_chòn.png\",\"hash\":\"thumbnail_chon_43ac1c0654\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":143,\"size\":80.99,\"sizeInBytes\":80985,\"url\":\"/uploads/thumbnail_chon_43ac1c0654.png\"},\"small\":{\"name\":\"small_chòn.png\",\"hash\":\"small_chon_43ac1c0654\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":293,\"size\":309.3,\"sizeInBytes\":309300,\"url\":\"/uploads/small_chon_43ac1c0654.png\"}}', 'chon_43ac1c0654', '.png', 'image/png', 128.91, '/uploads/chon_43ac1c0654.png', NULL, 'local', NULL, '/1', '2024-06-17 20:09:49.070000', '2024-06-17 20:09:49.070000', NULL, NULL),
(173, 'chòn.png', NULL, NULL, 687, 402, '{\"thumbnail\":{\"name\":\"thumbnail_chòn.png\",\"hash\":\"thumbnail_chon_edf8d880f6\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":143,\"size\":80.99,\"sizeInBytes\":80985,\"url\":\"/uploads/thumbnail_chon_edf8d880f6.png\"},\"small\":{\"name\":\"small_chòn.png\",\"hash\":\"small_chon_edf8d880f6\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":293,\"size\":309.3,\"sizeInBytes\":309300,\"url\":\"/uploads/small_chon_edf8d880f6.png\"}}', 'chon_edf8d880f6', '.png', 'image/png', 128.91, '/uploads/chon_edf8d880f6.png', NULL, 'local', NULL, '/1', '2024-06-17 20:09:49.071000', '2024-06-17 20:09:49.071000', NULL, NULL),
(174, 'chòn.png', NULL, NULL, 687, 402, '{\"thumbnail\":{\"name\":\"thumbnail_chòn.png\",\"hash\":\"thumbnail_chon_4026d6a5ef\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":143,\"size\":80.99,\"sizeInBytes\":80985,\"url\":\"/uploads/thumbnail_chon_4026d6a5ef.png\"},\"small\":{\"name\":\"small_chòn.png\",\"hash\":\"small_chon_4026d6a5ef\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":293,\"size\":309.3,\"sizeInBytes\":309300,\"url\":\"/uploads/small_chon_4026d6a5ef.png\"}}', 'chon_4026d6a5ef', '.png', 'image/png', 128.91, '/uploads/chon_4026d6a5ef.png', NULL, 'local', NULL, '/1', '2024-06-17 20:09:49.077000', '2024-06-17 20:09:49.077000', NULL, NULL),
(175, 'chòn.png', NULL, NULL, 687, 402, '{\"thumbnail\":{\"name\":\"thumbnail_chòn.png\",\"hash\":\"thumbnail_chon_e404e3d751\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":143,\"size\":80.99,\"sizeInBytes\":80985,\"url\":\"/uploads/thumbnail_chon_e404e3d751.png\"},\"small\":{\"name\":\"small_chòn.png\",\"hash\":\"small_chon_e404e3d751\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":293,\"size\":309.3,\"sizeInBytes\":309300,\"url\":\"/uploads/small_chon_e404e3d751.png\"}}', 'chon_e404e3d751', '.png', 'image/png', 128.91, '/uploads/chon_e404e3d751.png', NULL, 'local', NULL, '/1', '2024-06-17 20:09:49.402000', '2024-06-17 20:09:49.402000', NULL, NULL),
(176, 'chòn.png', NULL, NULL, 687, 402, '{\"thumbnail\":{\"name\":\"thumbnail_chòn.png\",\"hash\":\"thumbnail_chon_7a12ea03cb\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":143,\"size\":80.99,\"sizeInBytes\":80985,\"url\":\"/uploads/thumbnail_chon_7a12ea03cb.png\"},\"small\":{\"name\":\"small_chòn.png\",\"hash\":\"small_chon_7a12ea03cb\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":293,\"size\":309.3,\"sizeInBytes\":309300,\"url\":\"/uploads/small_chon_7a12ea03cb.png\"}}', 'chon_7a12ea03cb', '.png', 'image/png', 128.91, '/uploads/chon_7a12ea03cb.png', NULL, 'local', NULL, '/1', '2024-06-17 20:09:49.821000', '2024-06-17 20:09:49.821000', NULL, NULL),
(177, 'chòn.png', NULL, NULL, 687, 402, '{\"thumbnail\":{\"name\":\"thumbnail_chòn.png\",\"hash\":\"thumbnail_chon_1756de611b\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":143,\"size\":80.99,\"sizeInBytes\":80985,\"url\":\"/uploads/thumbnail_chon_1756de611b.png\"},\"small\":{\"name\":\"small_chòn.png\",\"hash\":\"small_chon_1756de611b\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":293,\"size\":309.3,\"sizeInBytes\":309300,\"url\":\"/uploads/small_chon_1756de611b.png\"}}', 'chon_1756de611b', '.png', 'image/png', 128.91, '/uploads/chon_1756de611b.png', NULL, 'local', NULL, '/1', '2024-06-17 20:09:50.443000', '2024-06-17 20:09:50.443000', NULL, NULL),
(178, 'chòn.png', NULL, NULL, 687, 402, '{\"thumbnail\":{\"name\":\"thumbnail_chòn.png\",\"hash\":\"thumbnail_chon_0548fc7c21\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":143,\"size\":80.99,\"sizeInBytes\":80985,\"url\":\"/uploads/thumbnail_chon_0548fc7c21.png\"},\"small\":{\"name\":\"small_chòn.png\",\"hash\":\"small_chon_0548fc7c21\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":293,\"size\":309.3,\"sizeInBytes\":309300,\"url\":\"/uploads/small_chon_0548fc7c21.png\"}}', 'chon_0548fc7c21', '.png', 'image/png', 128.91, '/uploads/chon_0548fc7c21.png', NULL, 'local', NULL, '/1', '2024-06-17 20:10:10.523000', '2024-06-17 20:10:10.523000', NULL, NULL),
(179, 'chòn.png', NULL, NULL, 687, 402, '{\"thumbnail\":{\"name\":\"thumbnail_chòn.png\",\"hash\":\"thumbnail_chon_955deb36a0\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":143,\"size\":80.99,\"sizeInBytes\":80985,\"url\":\"/uploads/thumbnail_chon_955deb36a0.png\"},\"small\":{\"name\":\"small_chòn.png\",\"hash\":\"small_chon_955deb36a0\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":293,\"size\":309.3,\"sizeInBytes\":309300,\"url\":\"/uploads/small_chon_955deb36a0.png\"}}', 'chon_955deb36a0', '.png', 'image/png', 128.91, '/uploads/chon_955deb36a0.png', NULL, 'local', NULL, '/1', '2024-06-17 20:10:10.804000', '2024-06-17 20:10:10.804000', NULL, NULL),
(180, 'chòn.png', NULL, NULL, 687, 402, '{\"thumbnail\":{\"name\":\"thumbnail_chòn.png\",\"hash\":\"thumbnail_chon_d7b496bcbd\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":143,\"size\":80.99,\"sizeInBytes\":80985,\"url\":\"/uploads/thumbnail_chon_d7b496bcbd.png\"},\"small\":{\"name\":\"small_chòn.png\",\"hash\":\"small_chon_d7b496bcbd\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":293,\"size\":309.3,\"sizeInBytes\":309300,\"url\":\"/uploads/small_chon_d7b496bcbd.png\"}}', 'chon_d7b496bcbd', '.png', 'image/png', 128.91, '/uploads/chon_d7b496bcbd.png', NULL, 'local', NULL, '/1', '2024-06-17 20:10:11.082000', '2024-06-17 20:10:11.082000', NULL, NULL),
(181, 'chòn.png', NULL, NULL, 687, 402, '{\"thumbnail\":{\"name\":\"thumbnail_chòn.png\",\"hash\":\"thumbnail_chon_80bb645cf6\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":143,\"size\":80.99,\"sizeInBytes\":80985,\"url\":\"/uploads/thumbnail_chon_80bb645cf6.png\"},\"small\":{\"name\":\"small_chòn.png\",\"hash\":\"small_chon_80bb645cf6\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":293,\"size\":309.3,\"sizeInBytes\":309300,\"url\":\"/uploads/small_chon_80bb645cf6.png\"}}', 'chon_80bb645cf6', '.png', 'image/png', 128.91, '/uploads/chon_80bb645cf6.png', NULL, 'local', NULL, '/1', '2024-06-17 20:10:11.089000', '2024-06-17 20:10:11.089000', NULL, NULL),
(182, 'chòn.png', NULL, NULL, 687, 402, '{\"small\":{\"name\":\"small_chòn.png\",\"hash\":\"small_chon_3efd853e42\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":293,\"size\":309.3,\"sizeInBytes\":309300,\"url\":\"/uploads/small_chon_3efd853e42.png\"},\"thumbnail\":{\"name\":\"thumbnail_chòn.png\",\"hash\":\"thumbnail_chon_3efd853e42\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":143,\"size\":80.99,\"sizeInBytes\":80985,\"url\":\"/uploads/thumbnail_chon_3efd853e42.png\"}}', 'chon_3efd853e42', '.png', 'image/png', 128.91, '/uploads/chon_3efd853e42.png', NULL, 'local', NULL, '/1', '2024-06-17 20:10:11.900000', '2024-06-17 20:10:11.900000', NULL, NULL),
(183, 'chòn.png', NULL, NULL, 687, 402, '{\"thumbnail\":{\"name\":\"thumbnail_chòn.png\",\"hash\":\"thumbnail_chon_7b9cc3cd17\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":143,\"size\":80.99,\"sizeInBytes\":80985,\"url\":\"/uploads/thumbnail_chon_7b9cc3cd17.png\"},\"small\":{\"name\":\"small_chòn.png\",\"hash\":\"small_chon_7b9cc3cd17\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":293,\"size\":309.3,\"sizeInBytes\":309300,\"url\":\"/uploads/small_chon_7b9cc3cd17.png\"}}', 'chon_7b9cc3cd17', '.png', 'image/png', 128.91, '/uploads/chon_7b9cc3cd17.png', NULL, 'local', NULL, '/1', '2024-06-17 20:10:12.694000', '2024-06-17 20:10:12.694000', NULL, NULL),
(184, 'chòn.png', NULL, NULL, 687, 402, '{\"thumbnail\":{\"name\":\"thumbnail_chòn.png\",\"hash\":\"thumbnail_chon_fd77c6dd6e\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":143,\"size\":80.99,\"sizeInBytes\":80985,\"url\":\"/uploads/thumbnail_chon_fd77c6dd6e.png\"},\"small\":{\"name\":\"small_chòn.png\",\"hash\":\"small_chon_fd77c6dd6e\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":293,\"size\":309.3,\"sizeInBytes\":309300,\"url\":\"/uploads/small_chon_fd77c6dd6e.png\"}}', 'chon_fd77c6dd6e', '.png', 'image/png', 128.91, '/uploads/chon_fd77c6dd6e.png', NULL, 'local', NULL, '/1', '2024-06-17 20:10:12.711000', '2024-06-17 20:10:12.711000', NULL, NULL),
(185, 'chòn.png', NULL, NULL, 687, 402, '{\"thumbnail\":{\"name\":\"thumbnail_chòn.png\",\"hash\":\"thumbnail_chon_65e68e19ee\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":143,\"size\":80.99,\"sizeInBytes\":80985,\"url\":\"/uploads/thumbnail_chon_65e68e19ee.png\"},\"small\":{\"name\":\"small_chòn.png\",\"hash\":\"small_chon_65e68e19ee\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":293,\"size\":309.3,\"sizeInBytes\":309300,\"url\":\"/uploads/small_chon_65e68e19ee.png\"}}', 'chon_65e68e19ee', '.png', 'image/png', 128.91, '/uploads/chon_65e68e19ee.png', NULL, 'local', NULL, '/1', '2024-06-17 20:10:29.910000', '2024-06-17 20:10:29.910000', NULL, NULL),
(186, 'chòn.png', NULL, NULL, 687, 402, '{\"small\":{\"name\":\"small_chòn.png\",\"hash\":\"small_chon_7ddaf7afea\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":293,\"size\":309.3,\"sizeInBytes\":309300,\"url\":\"/uploads/small_chon_7ddaf7afea.png\"},\"thumbnail\":{\"name\":\"thumbnail_chòn.png\",\"hash\":\"thumbnail_chon_7ddaf7afea\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":143,\"size\":80.99,\"sizeInBytes\":80985,\"url\":\"/uploads/thumbnail_chon_7ddaf7afea.png\"}}', 'chon_7ddaf7afea', '.png', 'image/png', 128.91, '/uploads/chon_7ddaf7afea.png', NULL, 'local', NULL, '/1', '2024-06-17 20:10:30.121000', '2024-06-17 20:10:30.121000', NULL, NULL),
(187, 'chòn.png', NULL, NULL, 687, 402, '{\"thumbnail\":{\"name\":\"thumbnail_chòn.png\",\"hash\":\"thumbnail_chon_9d5a436d32\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":143,\"size\":80.99,\"sizeInBytes\":80985,\"url\":\"/uploads/thumbnail_chon_9d5a436d32.png\"},\"small\":{\"name\":\"small_chòn.png\",\"hash\":\"small_chon_9d5a436d32\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":293,\"size\":309.3,\"sizeInBytes\":309300,\"url\":\"/uploads/small_chon_9d5a436d32.png\"}}', 'chon_9d5a436d32', '.png', 'image/png', 128.91, '/uploads/chon_9d5a436d32.png', NULL, 'local', NULL, '/1', '2024-06-17 20:10:30.484000', '2024-06-17 20:10:30.484000', NULL, NULL),
(188, 'chòn.png', NULL, NULL, 687, 402, '{\"thumbnail\":{\"name\":\"thumbnail_chòn.png\",\"hash\":\"thumbnail_chon_4821f0865b\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":143,\"size\":80.99,\"sizeInBytes\":80985,\"url\":\"/uploads/thumbnail_chon_4821f0865b.png\"},\"small\":{\"name\":\"small_chòn.png\",\"hash\":\"small_chon_4821f0865b\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":293,\"size\":309.3,\"sizeInBytes\":309300,\"url\":\"/uploads/small_chon_4821f0865b.png\"}}', 'chon_4821f0865b', '.png', 'image/png', 128.91, '/uploads/chon_4821f0865b.png', NULL, 'local', NULL, '/1', '2024-06-17 20:10:30.895000', '2024-06-17 20:10:30.895000', NULL, NULL),
(189, 'caffe2.png', NULL, NULL, 1126, 622, '{\"thumbnail\":{\"name\":\"thumbnail_caffe2.png\",\"hash\":\"thumbnail_caffe2_c0a0dc833f\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":135,\"size\":78.65,\"sizeInBytes\":78654,\"url\":\"/uploads/thumbnail_caffe2_c0a0dc833f.png\"},\"small\":{\"name\":\"small_caffe2.png\",\"hash\":\"small_caffe2_c0a0dc833f\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":276,\"size\":292.01,\"sizeInBytes\":292007,\"url\":\"/uploads/small_caffe2_c0a0dc833f.png\"},\"medium\":{\"name\":\"medium_caffe2.png\",\"hash\":\"medium_caffe2_c0a0dc833f\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":750,\"height\":414,\"size\":607.78,\"sizeInBytes\":607780,\"url\":\"/uploads/medium_caffe2_c0a0dc833f.png\"},\"large\":{\"name\":\"large_caffe2.png\",\"hash\":\"large_caffe2_c0a0dc833f\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":1000,\"height\":552,\"size\":1009.21,\"sizeInBytes\":1009212,\"url\":\"/uploads/large_caffe2_c0a0dc833f.png\"}}', 'caffe2_c0a0dc833f', '.png', 'image/png', 282.78, '/uploads/caffe2_c0a0dc833f.png', NULL, 'local', NULL, '/1', '2024-06-17 20:10:36.491000', '2024-06-17 20:10:36.491000', NULL, NULL),
(190, 'caffe2.png', NULL, NULL, 1126, 622, '{\"thumbnail\":{\"name\":\"thumbnail_caffe2.png\",\"hash\":\"thumbnail_caffe2_4cc6fab22d\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":135,\"size\":78.65,\"sizeInBytes\":78654,\"url\":\"/uploads/thumbnail_caffe2_4cc6fab22d.png\"},\"small\":{\"name\":\"small_caffe2.png\",\"hash\":\"small_caffe2_4cc6fab22d\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":276,\"size\":292.01,\"sizeInBytes\":292007,\"url\":\"/uploads/small_caffe2_4cc6fab22d.png\"},\"medium\":{\"name\":\"medium_caffe2.png\",\"hash\":\"medium_caffe2_4cc6fab22d\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":750,\"height\":414,\"size\":607.78,\"sizeInBytes\":607780,\"url\":\"/uploads/medium_caffe2_4cc6fab22d.png\"},\"large\":{\"name\":\"large_caffe2.png\",\"hash\":\"large_caffe2_4cc6fab22d\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":1000,\"height\":552,\"size\":1009.21,\"sizeInBytes\":1009212,\"url\":\"/uploads/large_caffe2_4cc6fab22d.png\"}}', 'caffe2_4cc6fab22d', '.png', 'image/png', 282.78, '/uploads/caffe2_4cc6fab22d.png', NULL, 'local', NULL, '/1', '2024-06-17 20:10:36.553000', '2024-06-17 20:10:36.553000', NULL, NULL),
(191, 'caffe2.png', NULL, NULL, 1126, 622, '{\"thumbnail\":{\"name\":\"thumbnail_caffe2.png\",\"hash\":\"thumbnail_caffe2_a02c0ae5a1\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":135,\"size\":78.65,\"sizeInBytes\":78654,\"url\":\"/uploads/thumbnail_caffe2_a02c0ae5a1.png\"},\"small\":{\"name\":\"small_caffe2.png\",\"hash\":\"small_caffe2_a02c0ae5a1\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":276,\"size\":292.01,\"sizeInBytes\":292007,\"url\":\"/uploads/small_caffe2_a02c0ae5a1.png\"},\"medium\":{\"name\":\"medium_caffe2.png\",\"hash\":\"medium_caffe2_a02c0ae5a1\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":750,\"height\":414,\"size\":607.78,\"sizeInBytes\":607780,\"url\":\"/uploads/medium_caffe2_a02c0ae5a1.png\"},\"large\":{\"name\":\"large_caffe2.png\",\"hash\":\"large_caffe2_a02c0ae5a1\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":1000,\"height\":552,\"size\":1009.21,\"sizeInBytes\":1009212,\"url\":\"/uploads/large_caffe2_a02c0ae5a1.png\"}}', 'caffe2_a02c0ae5a1', '.png', 'image/png', 282.78, '/uploads/caffe2_a02c0ae5a1.png', NULL, 'local', NULL, '/1', '2024-06-17 20:10:36.748000', '2024-06-17 20:10:36.748000', NULL, NULL),
(192, 'caffe2.png', NULL, NULL, 1126, 622, '{\"thumbnail\":{\"name\":\"thumbnail_caffe2.png\",\"hash\":\"thumbnail_caffe2_4a0509d982\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":135,\"size\":78.65,\"sizeInBytes\":78654,\"url\":\"/uploads/thumbnail_caffe2_4a0509d982.png\"},\"small\":{\"name\":\"small_caffe2.png\",\"hash\":\"small_caffe2_4a0509d982\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":276,\"size\":292.01,\"sizeInBytes\":292007,\"url\":\"/uploads/small_caffe2_4a0509d982.png\"},\"medium\":{\"name\":\"medium_caffe2.png\",\"hash\":\"medium_caffe2_4a0509d982\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":750,\"height\":414,\"size\":607.78,\"sizeInBytes\":607780,\"url\":\"/uploads/medium_caffe2_4a0509d982.png\"},\"large\":{\"name\":\"large_caffe2.png\",\"hash\":\"large_caffe2_4a0509d982\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":1000,\"height\":552,\"size\":1009.21,\"sizeInBytes\":1009212,\"url\":\"/uploads/large_caffe2_4a0509d982.png\"}}', 'caffe2_4a0509d982', '.png', 'image/png', 282.78, '/uploads/caffe2_4a0509d982.png', NULL, 'local', NULL, '/1', '2024-06-17 20:10:36.903000', '2024-06-17 20:10:36.903000', NULL, NULL),
(193, 'caffe2.png', NULL, NULL, 1126, 622, '{\"thumbnail\":{\"name\":\"thumbnail_caffe2.png\",\"hash\":\"thumbnail_caffe2_97aa572829\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":135,\"size\":78.65,\"sizeInBytes\":78654,\"url\":\"/uploads/thumbnail_caffe2_97aa572829.png\"},\"small\":{\"name\":\"small_caffe2.png\",\"hash\":\"small_caffe2_97aa572829\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":276,\"size\":292.01,\"sizeInBytes\":292007,\"url\":\"/uploads/small_caffe2_97aa572829.png\"},\"medium\":{\"name\":\"medium_caffe2.png\",\"hash\":\"medium_caffe2_97aa572829\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":750,\"height\":414,\"size\":607.78,\"sizeInBytes\":607780,\"url\":\"/uploads/medium_caffe2_97aa572829.png\"},\"large\":{\"name\":\"large_caffe2.png\",\"hash\":\"large_caffe2_97aa572829\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":1000,\"height\":552,\"size\":1009.21,\"sizeInBytes\":1009212,\"url\":\"/uploads/large_caffe2_97aa572829.png\"}}', 'caffe2_97aa572829', '.png', 'image/png', 282.78, '/uploads/caffe2_97aa572829.png', NULL, 'local', NULL, '/1', '2024-06-17 20:11:17.567000', '2024-06-17 20:11:17.567000', NULL, NULL),
(194, 'caffe2.png', NULL, NULL, 1126, 622, '{\"thumbnail\":{\"name\":\"thumbnail_caffe2.png\",\"hash\":\"thumbnail_caffe2_283b2cf787\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":135,\"size\":78.65,\"sizeInBytes\":78654,\"url\":\"/uploads/thumbnail_caffe2_283b2cf787.png\"},\"medium\":{\"name\":\"medium_caffe2.png\",\"hash\":\"medium_caffe2_283b2cf787\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":750,\"height\":414,\"size\":607.78,\"sizeInBytes\":607780,\"url\":\"/uploads/medium_caffe2_283b2cf787.png\"},\"large\":{\"name\":\"large_caffe2.png\",\"hash\":\"large_caffe2_283b2cf787\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":1000,\"height\":552,\"size\":1009.21,\"sizeInBytes\":1009212,\"url\":\"/uploads/large_caffe2_283b2cf787.png\"},\"small\":{\"name\":\"small_caffe2.png\",\"hash\":\"small_caffe2_283b2cf787\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":276,\"size\":292.01,\"sizeInBytes\":292007,\"url\":\"/uploads/small_caffe2_283b2cf787.png\"}}', 'caffe2_283b2cf787', '.png', 'image/png', 282.78, '/uploads/caffe2_283b2cf787.png', NULL, 'local', NULL, '/1', '2024-06-17 20:11:17.806000', '2024-06-17 20:11:17.806000', NULL, NULL),
(195, 'caffe2.png', NULL, NULL, 1126, 622, '{\"thumbnail\":{\"name\":\"thumbnail_caffe2.png\",\"hash\":\"thumbnail_caffe2_acad3862db\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":135,\"size\":78.65,\"sizeInBytes\":78654,\"url\":\"/uploads/thumbnail_caffe2_acad3862db.png\"},\"small\":{\"name\":\"small_caffe2.png\",\"hash\":\"small_caffe2_acad3862db\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":276,\"size\":292.01,\"sizeInBytes\":292007,\"url\":\"/uploads/small_caffe2_acad3862db.png\"},\"medium\":{\"name\":\"medium_caffe2.png\",\"hash\":\"medium_caffe2_acad3862db\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":750,\"height\":414,\"size\":607.78,\"sizeInBytes\":607780,\"url\":\"/uploads/medium_caffe2_acad3862db.png\"},\"large\":{\"name\":\"large_caffe2.png\",\"hash\":\"large_caffe2_acad3862db\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":1000,\"height\":552,\"size\":1009.21,\"sizeInBytes\":1009212,\"url\":\"/uploads/large_caffe2_acad3862db.png\"}}', 'caffe2_acad3862db', '.png', 'image/png', 282.78, '/uploads/caffe2_acad3862db.png', NULL, 'local', NULL, '/1', '2024-06-17 20:11:18.077000', '2024-06-17 20:11:18.077000', NULL, NULL),
(196, 'caffe2.png', NULL, NULL, 1126, 622, '{\"thumbnail\":{\"name\":\"thumbnail_caffe2.png\",\"hash\":\"thumbnail_caffe2_8aa0231a4b\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":135,\"size\":78.65,\"sizeInBytes\":78654,\"url\":\"/uploads/thumbnail_caffe2_8aa0231a4b.png\"},\"small\":{\"name\":\"small_caffe2.png\",\"hash\":\"small_caffe2_8aa0231a4b\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":276,\"size\":292.01,\"sizeInBytes\":292007,\"url\":\"/uploads/small_caffe2_8aa0231a4b.png\"},\"medium\":{\"name\":\"medium_caffe2.png\",\"hash\":\"medium_caffe2_8aa0231a4b\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":750,\"height\":414,\"size\":607.78,\"sizeInBytes\":607780,\"url\":\"/uploads/medium_caffe2_8aa0231a4b.png\"},\"large\":{\"name\":\"large_caffe2.png\",\"hash\":\"large_caffe2_8aa0231a4b\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":1000,\"height\":552,\"size\":1009.21,\"sizeInBytes\":1009212,\"url\":\"/uploads/large_caffe2_8aa0231a4b.png\"}}', 'caffe2_8aa0231a4b', '.png', 'image/png', 282.78, '/uploads/caffe2_8aa0231a4b.png', NULL, 'local', NULL, '/1', '2024-06-17 20:11:18.556000', '2024-06-17 20:11:18.556000', NULL, NULL),
(197, 'caffe2.png', NULL, NULL, 1126, 622, '{\"thumbnail\":{\"name\":\"thumbnail_caffe2.png\",\"hash\":\"thumbnail_caffe2_3612e805fc\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":135,\"size\":78.65,\"sizeInBytes\":78654,\"url\":\"/uploads/thumbnail_caffe2_3612e805fc.png\"},\"small\":{\"name\":\"small_caffe2.png\",\"hash\":\"small_caffe2_3612e805fc\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":276,\"size\":292.01,\"sizeInBytes\":292007,\"url\":\"/uploads/small_caffe2_3612e805fc.png\"},\"medium\":{\"name\":\"medium_caffe2.png\",\"hash\":\"medium_caffe2_3612e805fc\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":750,\"height\":414,\"size\":607.78,\"sizeInBytes\":607780,\"url\":\"/uploads/medium_caffe2_3612e805fc.png\"},\"large\":{\"name\":\"large_caffe2.png\",\"hash\":\"large_caffe2_3612e805fc\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":1000,\"height\":552,\"size\":1009.21,\"sizeInBytes\":1009212,\"url\":\"/uploads/large_caffe2_3612e805fc.png\"}}', 'caffe2_3612e805fc', '.png', 'image/png', 282.78, '/uploads/caffe2_3612e805fc.png', NULL, 'local', NULL, '/1', '2024-06-17 20:11:22.167000', '2024-06-17 20:11:22.167000', NULL, NULL),
(198, 'caffe2.png', NULL, NULL, 1126, 622, '{\"thumbnail\":{\"name\":\"thumbnail_caffe2.png\",\"hash\":\"thumbnail_caffe2_5e1354baad\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":135,\"size\":78.65,\"sizeInBytes\":78654,\"url\":\"/uploads/thumbnail_caffe2_5e1354baad.png\"},\"small\":{\"name\":\"small_caffe2.png\",\"hash\":\"small_caffe2_5e1354baad\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":276,\"size\":292.01,\"sizeInBytes\":292007,\"url\":\"/uploads/small_caffe2_5e1354baad.png\"},\"medium\":{\"name\":\"medium_caffe2.png\",\"hash\":\"medium_caffe2_5e1354baad\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":750,\"height\":414,\"size\":607.78,\"sizeInBytes\":607780,\"url\":\"/uploads/medium_caffe2_5e1354baad.png\"},\"large\":{\"name\":\"large_caffe2.png\",\"hash\":\"large_caffe2_5e1354baad\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":1000,\"height\":552,\"size\":1009.21,\"sizeInBytes\":1009212,\"url\":\"/uploads/large_caffe2_5e1354baad.png\"}}', 'caffe2_5e1354baad', '.png', 'image/png', 282.78, '/uploads/caffe2_5e1354baad.png', NULL, 'local', NULL, '/1', '2024-06-17 20:11:22.474000', '2024-06-17 20:11:22.474000', NULL, NULL),
(199, 'caffe2.png', NULL, NULL, 1126, 622, '{\"thumbnail\":{\"name\":\"thumbnail_caffe2.png\",\"hash\":\"thumbnail_caffe2_04d3b08bdb\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":135,\"size\":78.65,\"sizeInBytes\":78654,\"url\":\"/uploads/thumbnail_caffe2_04d3b08bdb.png\"},\"small\":{\"name\":\"small_caffe2.png\",\"hash\":\"small_caffe2_04d3b08bdb\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":276,\"size\":292.01,\"sizeInBytes\":292007,\"url\":\"/uploads/small_caffe2_04d3b08bdb.png\"},\"medium\":{\"name\":\"medium_caffe2.png\",\"hash\":\"medium_caffe2_04d3b08bdb\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":750,\"height\":414,\"size\":607.78,\"sizeInBytes\":607780,\"url\":\"/uploads/medium_caffe2_04d3b08bdb.png\"},\"large\":{\"name\":\"large_caffe2.png\",\"hash\":\"large_caffe2_04d3b08bdb\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":1000,\"height\":552,\"size\":1009.21,\"sizeInBytes\":1009212,\"url\":\"/uploads/large_caffe2_04d3b08bdb.png\"}}', 'caffe2_04d3b08bdb', '.png', 'image/png', 282.78, '/uploads/caffe2_04d3b08bdb.png', NULL, 'local', NULL, '/1', '2024-06-17 20:11:22.476000', '2024-06-17 20:11:22.476000', NULL, NULL),
(200, 'caffe2.png', NULL, NULL, 1126, 622, '{\"thumbnail\":{\"name\":\"thumbnail_caffe2.png\",\"hash\":\"thumbnail_caffe2_d2f1eb2abd\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":135,\"size\":78.65,\"sizeInBytes\":78654,\"url\":\"/uploads/thumbnail_caffe2_d2f1eb2abd.png\"},\"small\":{\"name\":\"small_caffe2.png\",\"hash\":\"small_caffe2_d2f1eb2abd\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":276,\"size\":292.01,\"sizeInBytes\":292007,\"url\":\"/uploads/small_caffe2_d2f1eb2abd.png\"},\"medium\":{\"name\":\"medium_caffe2.png\",\"hash\":\"medium_caffe2_d2f1eb2abd\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":750,\"height\":414,\"size\":607.78,\"sizeInBytes\":607780,\"url\":\"/uploads/medium_caffe2_d2f1eb2abd.png\"},\"large\":{\"name\":\"large_caffe2.png\",\"hash\":\"large_caffe2_d2f1eb2abd\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":1000,\"height\":552,\"size\":1009.21,\"sizeInBytes\":1009212,\"url\":\"/uploads/large_caffe2_d2f1eb2abd.png\"}}', 'caffe2_d2f1eb2abd', '.png', 'image/png', 282.78, '/uploads/caffe2_d2f1eb2abd.png', NULL, 'local', NULL, '/1', '2024-06-17 20:11:22.596000', '2024-06-17 20:11:22.596000', NULL, NULL),
(201, 'chòn.png', NULL, NULL, 687, 402, '{\"thumbnail\":{\"name\":\"thumbnail_chòn.png\",\"hash\":\"thumbnail_chon_45d0b4b24b\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":143,\"size\":80.99,\"sizeInBytes\":80985,\"url\":\"/uploads/thumbnail_chon_45d0b4b24b.png\"},\"small\":{\"name\":\"small_chòn.png\",\"hash\":\"small_chon_45d0b4b24b\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":293,\"size\":309.3,\"sizeInBytes\":309300,\"url\":\"/uploads/small_chon_45d0b4b24b.png\"}}', 'chon_45d0b4b24b', '.png', 'image/png', 128.91, '/uploads/chon_45d0b4b24b.png', NULL, 'local', NULL, '/1', '2024-06-17 20:11:49.062000', '2024-06-17 20:11:49.062000', NULL, NULL),
(202, 'chòn.png', NULL, NULL, 687, 402, '{\"thumbnail\":{\"name\":\"thumbnail_chòn.png\",\"hash\":\"thumbnail_chon_5a235a52da\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":143,\"size\":80.99,\"sizeInBytes\":80985,\"url\":\"/uploads/thumbnail_chon_5a235a52da.png\"},\"small\":{\"name\":\"small_chòn.png\",\"hash\":\"small_chon_5a235a52da\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":293,\"size\":309.3,\"sizeInBytes\":309300,\"url\":\"/uploads/small_chon_5a235a52da.png\"}}', 'chon_5a235a52da', '.png', 'image/png', 128.91, '/uploads/chon_5a235a52da.png', NULL, 'local', NULL, '/1', '2024-06-17 20:11:49.248000', '2024-06-17 20:11:49.248000', NULL, NULL),
(203, 'chòn.png', NULL, NULL, 687, 402, '{\"thumbnail\":{\"name\":\"thumbnail_chòn.png\",\"hash\":\"thumbnail_chon_9fbbb7b6e3\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":143,\"size\":80.99,\"sizeInBytes\":80985,\"url\":\"/uploads/thumbnail_chon_9fbbb7b6e3.png\"},\"small\":{\"name\":\"small_chòn.png\",\"hash\":\"small_chon_9fbbb7b6e3\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":293,\"size\":309.3,\"sizeInBytes\":309300,\"url\":\"/uploads/small_chon_9fbbb7b6e3.png\"}}', 'chon_9fbbb7b6e3', '.png', 'image/png', 128.91, '/uploads/chon_9fbbb7b6e3.png', NULL, 'local', NULL, '/1', '2024-06-17 20:11:49.296000', '2024-06-17 20:11:49.296000', NULL, NULL),
(204, 'chòn.png', NULL, NULL, 687, 402, '{\"thumbnail\":{\"name\":\"thumbnail_chòn.png\",\"hash\":\"thumbnail_chon_f6c63ce1b2\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":143,\"size\":80.99,\"sizeInBytes\":80985,\"url\":\"/uploads/thumbnail_chon_f6c63ce1b2.png\"},\"small\":{\"name\":\"small_chòn.png\",\"hash\":\"small_chon_f6c63ce1b2\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":293,\"size\":309.3,\"sizeInBytes\":309300,\"url\":\"/uploads/small_chon_f6c63ce1b2.png\"}}', 'chon_f6c63ce1b2', '.png', 'image/png', 128.91, '/uploads/chon_f6c63ce1b2.png', NULL, 'local', NULL, '/1', '2024-06-17 20:11:55.968000', '2024-06-17 20:11:55.968000', NULL, NULL),
(205, 'chòn.png', NULL, NULL, 687, 402, '{\"thumbnail\":{\"name\":\"thumbnail_chòn.png\",\"hash\":\"thumbnail_chon_2836162cc4\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":143,\"size\":80.99,\"sizeInBytes\":80985,\"url\":\"/uploads/thumbnail_chon_2836162cc4.png\"},\"small\":{\"name\":\"small_chòn.png\",\"hash\":\"small_chon_2836162cc4\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":293,\"size\":309.3,\"sizeInBytes\":309300,\"url\":\"/uploads/small_chon_2836162cc4.png\"}}', 'chon_2836162cc4', '.png', 'image/png', 128.91, '/uploads/chon_2836162cc4.png', NULL, 'local', NULL, '/1', '2024-06-17 20:11:57.987000', '2024-06-17 20:11:57.987000', NULL, NULL),
(206, 'chòn.png', NULL, NULL, 687, 402, '{\"thumbnail\":{\"name\":\"thumbnail_chòn.png\",\"hash\":\"thumbnail_chon_1055a6c5ff\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":143,\"size\":80.99,\"sizeInBytes\":80985,\"url\":\"/uploads/thumbnail_chon_1055a6c5ff.png\"},\"small\":{\"name\":\"small_chòn.png\",\"hash\":\"small_chon_1055a6c5ff\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":293,\"size\":309.3,\"sizeInBytes\":309300,\"url\":\"/uploads/small_chon_1055a6c5ff.png\"}}', 'chon_1055a6c5ff', '.png', 'image/png', 128.91, '/uploads/chon_1055a6c5ff.png', NULL, 'local', NULL, '/1', '2024-06-17 20:11:57.993000', '2024-06-17 20:11:57.993000', NULL, NULL),
(207, 'chòn.png', NULL, NULL, 687, 402, '{\"thumbnail\":{\"name\":\"thumbnail_chòn.png\",\"hash\":\"thumbnail_chon_bc489f9945\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":143,\"size\":80.99,\"sizeInBytes\":80985,\"url\":\"/uploads/thumbnail_chon_bc489f9945.png\"},\"small\":{\"name\":\"small_chòn.png\",\"hash\":\"small_chon_bc489f9945\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":293,\"size\":309.3,\"sizeInBytes\":309300,\"url\":\"/uploads/small_chon_bc489f9945.png\"}}', 'chon_bc489f9945', '.png', 'image/png', 128.91, '/uploads/chon_bc489f9945.png', NULL, 'local', NULL, '/1', '2024-06-17 20:11:58.004000', '2024-06-17 20:11:58.004000', NULL, NULL),
(208, 'chòn.png', NULL, NULL, 687, 402, '{\"thumbnail\":{\"name\":\"thumbnail_chòn.png\",\"hash\":\"thumbnail_chon_4d1bc14f5a\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":143,\"size\":80.99,\"sizeInBytes\":80985,\"url\":\"/uploads/thumbnail_chon_4d1bc14f5a.png\"},\"small\":{\"name\":\"small_chòn.png\",\"hash\":\"small_chon_4d1bc14f5a\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":293,\"size\":309.3,\"sizeInBytes\":309300,\"url\":\"/uploads/small_chon_4d1bc14f5a.png\"}}', 'chon_4d1bc14f5a', '.png', 'image/png', 128.91, '/uploads/chon_4d1bc14f5a.png', NULL, 'local', NULL, '/1', '2024-06-17 20:11:58.475000', '2024-06-17 20:11:58.475000', NULL, NULL),
(209, 'chòn.png', NULL, NULL, 687, 402, '{\"thumbnail\":{\"name\":\"thumbnail_chòn.png\",\"hash\":\"thumbnail_chon_3faba1a945\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":143,\"size\":80.99,\"sizeInBytes\":80985,\"url\":\"/uploads/thumbnail_chon_3faba1a945.png\"},\"small\":{\"name\":\"small_chòn.png\",\"hash\":\"small_chon_3faba1a945\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":293,\"size\":309.3,\"sizeInBytes\":309300,\"url\":\"/uploads/small_chon_3faba1a945.png\"}}', 'chon_3faba1a945', '.png', 'image/png', 128.91, '/uploads/chon_3faba1a945.png', NULL, 'local', NULL, '/1', '2024-06-17 20:12:00.272000', '2024-06-17 20:12:00.272000', NULL, NULL),
(210, 'chòn.png', NULL, NULL, 687, 402, '{\"thumbnail\":{\"name\":\"thumbnail_chòn.png\",\"hash\":\"thumbnail_chon_d0efa1ee76\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":143,\"size\":80.99,\"sizeInBytes\":80985,\"url\":\"/uploads/thumbnail_chon_d0efa1ee76.png\"},\"small\":{\"name\":\"small_chòn.png\",\"hash\":\"small_chon_d0efa1ee76\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":293,\"size\":309.3,\"sizeInBytes\":309300,\"url\":\"/uploads/small_chon_d0efa1ee76.png\"}}', 'chon_d0efa1ee76', '.png', 'image/png', 128.91, '/uploads/chon_d0efa1ee76.png', NULL, 'local', NULL, '/1', '2024-06-17 20:12:00.349000', '2024-06-17 20:12:00.349000', NULL, NULL),
(211, 'chòn.png', NULL, NULL, 687, 402, '{\"thumbnail\":{\"name\":\"thumbnail_chòn.png\",\"hash\":\"thumbnail_chon_90da70cc6d\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":143,\"size\":80.99,\"sizeInBytes\":80985,\"url\":\"/uploads/thumbnail_chon_90da70cc6d.png\"},\"small\":{\"name\":\"small_chòn.png\",\"hash\":\"small_chon_90da70cc6d\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":293,\"size\":309.3,\"sizeInBytes\":309300,\"url\":\"/uploads/small_chon_90da70cc6d.png\"}}', 'chon_90da70cc6d', '.png', 'image/png', 128.91, '/uploads/chon_90da70cc6d.png', NULL, 'local', NULL, '/1', '2024-06-17 20:12:00.443000', '2024-06-17 20:12:00.443000', NULL, NULL),
(212, 'chòn.png', NULL, NULL, 687, 402, '{\"thumbnail\":{\"name\":\"thumbnail_chòn.png\",\"hash\":\"thumbnail_chon_e23fe524c4\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":143,\"size\":80.99,\"sizeInBytes\":80985,\"url\":\"/uploads/thumbnail_chon_e23fe524c4.png\"},\"small\":{\"name\":\"small_chòn.png\",\"hash\":\"small_chon_e23fe524c4\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":293,\"size\":309.3,\"sizeInBytes\":309300,\"url\":\"/uploads/small_chon_e23fe524c4.png\"}}', 'chon_e23fe524c4', '.png', 'image/png', 128.91, '/uploads/chon_e23fe524c4.png', NULL, 'local', NULL, '/1', '2024-06-17 20:12:00.448000', '2024-06-17 20:12:00.448000', NULL, NULL),
(213, 'chòn.png', NULL, NULL, 687, 402, '{\"thumbnail\":{\"name\":\"thumbnail_chòn.png\",\"hash\":\"thumbnail_chon_edd9606c2d\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":143,\"size\":80.99,\"sizeInBytes\":80985,\"url\":\"/uploads/thumbnail_chon_edd9606c2d.png\"},\"small\":{\"name\":\"small_chòn.png\",\"hash\":\"small_chon_edd9606c2d\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":293,\"size\":309.3,\"sizeInBytes\":309300,\"url\":\"/uploads/small_chon_edd9606c2d.png\"}}', 'chon_edd9606c2d', '.png', 'image/png', 128.91, '/uploads/chon_edd9606c2d.png', NULL, 'local', NULL, '/1', '2024-06-17 20:12:00.474000', '2024-06-17 20:12:00.474000', NULL, NULL),
(214, 'chòn.png', NULL, NULL, 687, 402, '{\"thumbnail\":{\"name\":\"thumbnail_chòn.png\",\"hash\":\"thumbnail_chon_5be1fcc82f\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":143,\"size\":80.99,\"sizeInBytes\":80985,\"url\":\"/uploads/thumbnail_chon_5be1fcc82f.png\"},\"small\":{\"name\":\"small_chòn.png\",\"hash\":\"small_chon_5be1fcc82f\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":293,\"size\":309.3,\"sizeInBytes\":309300,\"url\":\"/uploads/small_chon_5be1fcc82f.png\"}}', 'chon_5be1fcc82f', '.png', 'image/png', 128.91, '/uploads/chon_5be1fcc82f.png', NULL, 'local', NULL, '/1', '2024-06-17 20:12:00.479000', '2024-06-17 20:12:00.479000', NULL, NULL),
(215, 'chòn.png', NULL, NULL, 687, 402, '{\"thumbnail\":{\"name\":\"thumbnail_chòn.png\",\"hash\":\"thumbnail_chon_0789cd8225\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":143,\"size\":80.99,\"sizeInBytes\":80985,\"url\":\"/uploads/thumbnail_chon_0789cd8225.png\"},\"small\":{\"name\":\"small_chòn.png\",\"hash\":\"small_chon_0789cd8225\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":293,\"size\":309.3,\"sizeInBytes\":309300,\"url\":\"/uploads/small_chon_0789cd8225.png\"}}', 'chon_0789cd8225', '.png', 'image/png', 128.91, '/uploads/chon_0789cd8225.png', NULL, 'local', NULL, '/1', '2024-06-17 20:12:00.979000', '2024-06-17 20:12:00.979000', NULL, NULL),
(216, 'chòn.png', NULL, NULL, 687, 402, '{\"thumbnail\":{\"name\":\"thumbnail_chòn.png\",\"hash\":\"thumbnail_chon_dc4922987f\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":143,\"size\":80.99,\"sizeInBytes\":80985,\"url\":\"/uploads/thumbnail_chon_dc4922987f.png\"},\"small\":{\"name\":\"small_chòn.png\",\"hash\":\"small_chon_dc4922987f\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":293,\"size\":309.3,\"sizeInBytes\":309300,\"url\":\"/uploads/small_chon_dc4922987f.png\"}}', 'chon_dc4922987f', '.png', 'image/png', 128.91, '/uploads/chon_dc4922987f.png', NULL, 'local', NULL, '/1', '2024-06-17 20:12:01.723000', '2024-06-17 20:12:01.723000', NULL, NULL),
(217, 'chòn.png', NULL, NULL, 687, 402, '{\"thumbnail\":{\"name\":\"thumbnail_chòn.png\",\"hash\":\"thumbnail_chon_af914f3116\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":143,\"size\":80.99,\"sizeInBytes\":80985,\"url\":\"/uploads/thumbnail_chon_af914f3116.png\"},\"small\":{\"name\":\"small_chòn.png\",\"hash\":\"small_chon_af914f3116\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":293,\"size\":309.3,\"sizeInBytes\":309300,\"url\":\"/uploads/small_chon_af914f3116.png\"}}', 'chon_af914f3116', '.png', 'image/png', 128.91, '/uploads/chon_af914f3116.png', NULL, 'local', NULL, '/1', '2024-06-17 20:13:20.106000', '2024-06-17 20:13:20.106000', NULL, NULL),
(218, 'chòn.png', NULL, NULL, 687, 402, '{\"thumbnail\":{\"name\":\"thumbnail_chòn.png\",\"hash\":\"thumbnail_chon_3ef0971450\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":143,\"size\":80.99,\"sizeInBytes\":80985,\"url\":\"/uploads/thumbnail_chon_3ef0971450.png\"},\"small\":{\"name\":\"small_chòn.png\",\"hash\":\"small_chon_3ef0971450\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":293,\"size\":309.3,\"sizeInBytes\":309300,\"url\":\"/uploads/small_chon_3ef0971450.png\"}}', 'chon_3ef0971450', '.png', 'image/png', 128.91, '/uploads/chon_3ef0971450.png', NULL, 'local', NULL, '/1', '2024-06-17 20:13:20.257000', '2024-06-17 20:13:20.257000', NULL, NULL),
(219, 'chòn.png', NULL, NULL, 687, 402, '{\"thumbnail\":{\"name\":\"thumbnail_chòn.png\",\"hash\":\"thumbnail_chon_8485076810\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":143,\"size\":80.99,\"sizeInBytes\":80985,\"url\":\"/uploads/thumbnail_chon_8485076810.png\"},\"small\":{\"name\":\"small_chòn.png\",\"hash\":\"small_chon_8485076810\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":293,\"size\":309.3,\"sizeInBytes\":309300,\"url\":\"/uploads/small_chon_8485076810.png\"}}', 'chon_8485076810', '.png', 'image/png', 128.91, '/uploads/chon_8485076810.png', NULL, 'local', NULL, '/1', '2024-06-17 20:13:20.802000', '2024-06-17 20:13:20.802000', NULL, NULL),
(220, 'chòn.png', NULL, NULL, 687, 402, '{\"thumbnail\":{\"name\":\"thumbnail_chòn.png\",\"hash\":\"thumbnail_chon_76a9e47ea3\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":143,\"size\":80.99,\"sizeInBytes\":80985,\"url\":\"/uploads/thumbnail_chon_76a9e47ea3.png\"},\"small\":{\"name\":\"small_chòn.png\",\"hash\":\"small_chon_76a9e47ea3\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":293,\"size\":309.3,\"sizeInBytes\":309300,\"url\":\"/uploads/small_chon_76a9e47ea3.png\"}}', 'chon_76a9e47ea3', '.png', 'image/png', 128.91, '/uploads/chon_76a9e47ea3.png', NULL, 'local', NULL, '/1', '2024-06-17 20:13:20.981000', '2024-06-17 20:13:20.981000', NULL, NULL),
(221, 'chòn.png', NULL, NULL, 687, 402, '{\"thumbnail\":{\"name\":\"thumbnail_chòn.png\",\"hash\":\"thumbnail_chon_eabf0685a9\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":143,\"size\":80.99,\"sizeInBytes\":80985,\"url\":\"/uploads/thumbnail_chon_eabf0685a9.png\"},\"small\":{\"name\":\"small_chòn.png\",\"hash\":\"small_chon_eabf0685a9\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":293,\"size\":309.3,\"sizeInBytes\":309300,\"url\":\"/uploads/small_chon_eabf0685a9.png\"}}', 'chon_eabf0685a9', '.png', 'image/png', 128.91, '/uploads/chon_eabf0685a9.png', NULL, 'local', NULL, '/1', '2024-06-17 20:13:21.805000', '2024-06-17 20:13:21.805000', NULL, NULL),
(222, 'chòn.png', NULL, NULL, 687, 402, '{\"thumbnail\":{\"name\":\"thumbnail_chòn.png\",\"hash\":\"thumbnail_chon_c4aff9a0a2\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":143,\"size\":80.99,\"sizeInBytes\":80985,\"url\":\"/uploads/thumbnail_chon_c4aff9a0a2.png\"},\"small\":{\"name\":\"small_chòn.png\",\"hash\":\"small_chon_c4aff9a0a2\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":293,\"size\":309.3,\"sizeInBytes\":309300,\"url\":\"/uploads/small_chon_c4aff9a0a2.png\"}}', 'chon_c4aff9a0a2', '.png', 'image/png', 128.91, '/uploads/chon_c4aff9a0a2.png', NULL, 'local', NULL, '/1', '2024-06-17 20:13:25.821000', '2024-06-17 20:13:25.821000', NULL, NULL),
(223, 'chòn.png', NULL, NULL, 687, 402, '{\"thumbnail\":{\"name\":\"thumbnail_chòn.png\",\"hash\":\"thumbnail_chon_32b992ad7b\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":143,\"size\":80.99,\"sizeInBytes\":80985,\"url\":\"/uploads/thumbnail_chon_32b992ad7b.png\"},\"small\":{\"name\":\"small_chòn.png\",\"hash\":\"small_chon_32b992ad7b\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":293,\"size\":309.3,\"sizeInBytes\":309300,\"url\":\"/uploads/small_chon_32b992ad7b.png\"}}', 'chon_32b992ad7b', '.png', 'image/png', 128.91, '/uploads/chon_32b992ad7b.png', NULL, 'local', NULL, '/1', '2024-06-17 20:13:26.053000', '2024-06-17 20:13:26.053000', NULL, NULL),
(224, 'chòn.png', NULL, NULL, 687, 402, '{\"thumbnail\":{\"name\":\"thumbnail_chòn.png\",\"hash\":\"thumbnail_chon_871e498d15\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":143,\"size\":80.99,\"sizeInBytes\":80985,\"url\":\"/uploads/thumbnail_chon_871e498d15.png\"},\"small\":{\"name\":\"small_chòn.png\",\"hash\":\"small_chon_871e498d15\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":293,\"size\":309.3,\"sizeInBytes\":309300,\"url\":\"/uploads/small_chon_871e498d15.png\"}}', 'chon_871e498d15', '.png', 'image/png', 128.91, '/uploads/chon_871e498d15.png', NULL, 'local', NULL, '/1', '2024-06-17 20:13:26.198000', '2024-06-17 20:13:26.198000', NULL, NULL),
(225, 'chòn.png', NULL, NULL, 687, 402, '{\"thumbnail\":{\"name\":\"thumbnail_chòn.png\",\"hash\":\"thumbnail_chon_6187c8ed35\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":143,\"size\":80.99,\"sizeInBytes\":80985,\"url\":\"/uploads/thumbnail_chon_6187c8ed35.png\"},\"small\":{\"name\":\"small_chòn.png\",\"hash\":\"small_chon_6187c8ed35\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":293,\"size\":309.3,\"sizeInBytes\":309300,\"url\":\"/uploads/small_chon_6187c8ed35.png\"}}', 'chon_6187c8ed35', '.png', 'image/png', 128.91, '/uploads/chon_6187c8ed35.png', NULL, 'local', NULL, '/1', '2024-06-17 20:13:26.246000', '2024-06-17 20:13:26.246000', NULL, NULL),
(226, 'chòn.png', NULL, NULL, 687, 402, '{\"thumbnail\":{\"name\":\"thumbnail_chòn.png\",\"hash\":\"thumbnail_chon_ac8cd477c2\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":143,\"size\":80.99,\"sizeInBytes\":80985,\"url\":\"/uploads/thumbnail_chon_ac8cd477c2.png\"},\"small\":{\"name\":\"small_chòn.png\",\"hash\":\"small_chon_ac8cd477c2\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":293,\"size\":309.3,\"sizeInBytes\":309300,\"url\":\"/uploads/small_chon_ac8cd477c2.png\"}}', 'chon_ac8cd477c2', '.png', 'image/png', 128.91, '/uploads/chon_ac8cd477c2.png', NULL, 'local', NULL, '/1', '2024-06-17 20:14:43.890000', '2024-06-17 20:14:43.890000', NULL, NULL);
INSERT INTO `files` (`id`, `name`, `alternative_text`, `caption`, `width`, `height`, `formats`, `hash`, `ext`, `mime`, `size`, `url`, `preview_url`, `provider`, `provider_metadata`, `folder_path`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(227, 'chòn.png', NULL, NULL, 687, 402, '{\"thumbnail\":{\"name\":\"thumbnail_chòn.png\",\"hash\":\"thumbnail_chon_5ef1536db6\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":143,\"size\":80.99,\"sizeInBytes\":80985,\"url\":\"/uploads/thumbnail_chon_5ef1536db6.png\"},\"small\":{\"name\":\"small_chòn.png\",\"hash\":\"small_chon_5ef1536db6\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":293,\"size\":309.3,\"sizeInBytes\":309300,\"url\":\"/uploads/small_chon_5ef1536db6.png\"}}', 'chon_5ef1536db6', '.png', 'image/png', 128.91, '/uploads/chon_5ef1536db6.png', NULL, 'local', NULL, '/1', '2024-06-17 20:14:45.066000', '2024-06-17 20:14:45.066000', NULL, NULL),
(228, 'chòn.png', NULL, NULL, 687, 402, '{\"thumbnail\":{\"name\":\"thumbnail_chòn.png\",\"hash\":\"thumbnail_chon_bfd321d4a3\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":143,\"size\":80.99,\"sizeInBytes\":80985,\"url\":\"/uploads/thumbnail_chon_bfd321d4a3.png\"},\"small\":{\"name\":\"small_chòn.png\",\"hash\":\"small_chon_bfd321d4a3\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":293,\"size\":309.3,\"sizeInBytes\":309300,\"url\":\"/uploads/small_chon_bfd321d4a3.png\"}}', 'chon_bfd321d4a3', '.png', 'image/png', 128.91, '/uploads/chon_bfd321d4a3.png', NULL, 'local', NULL, '/1', '2024-06-17 20:14:45.687000', '2024-06-17 20:14:45.687000', NULL, NULL),
(229, 'chòn.png', NULL, NULL, 687, 402, '{\"thumbnail\":{\"name\":\"thumbnail_chòn.png\",\"hash\":\"thumbnail_chon_df99fac4e3\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":143,\"size\":80.99,\"sizeInBytes\":80985,\"url\":\"/uploads/thumbnail_chon_df99fac4e3.png\"},\"small\":{\"name\":\"small_chòn.png\",\"hash\":\"small_chon_df99fac4e3\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":293,\"size\":309.3,\"sizeInBytes\":309300,\"url\":\"/uploads/small_chon_df99fac4e3.png\"}}', 'chon_df99fac4e3', '.png', 'image/png', 128.91, '/uploads/chon_df99fac4e3.png', NULL, 'local', NULL, '/1', '2024-06-17 20:14:47.029000', '2024-06-17 20:14:47.029000', NULL, NULL),
(230, 'chòn.png', NULL, NULL, 687, 402, '{\"thumbnail\":{\"name\":\"thumbnail_chòn.png\",\"hash\":\"thumbnail_chon_669d23451e\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":143,\"size\":80.99,\"sizeInBytes\":80985,\"url\":\"/uploads/thumbnail_chon_669d23451e.png\"},\"small\":{\"name\":\"small_chòn.png\",\"hash\":\"small_chon_669d23451e\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":293,\"size\":309.3,\"sizeInBytes\":309300,\"url\":\"/uploads/small_chon_669d23451e.png\"}}', 'chon_669d23451e', '.png', 'image/png', 128.91, '/uploads/chon_669d23451e.png', NULL, 'local', NULL, '/1', '2024-06-17 20:14:47.309000', '2024-06-17 20:14:47.309000', NULL, NULL),
(231, 'chòn.png', NULL, NULL, 687, 402, '{\"thumbnail\":{\"name\":\"thumbnail_chòn.png\",\"hash\":\"thumbnail_chon_e5c5f906aa\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":143,\"size\":80.99,\"sizeInBytes\":80985,\"url\":\"/uploads/thumbnail_chon_e5c5f906aa.png\"},\"small\":{\"name\":\"small_chòn.png\",\"hash\":\"small_chon_e5c5f906aa\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":293,\"size\":309.3,\"sizeInBytes\":309300,\"url\":\"/uploads/small_chon_e5c5f906aa.png\"}}', 'chon_e5c5f906aa', '.png', 'image/png', 128.91, '/uploads/chon_e5c5f906aa.png', NULL, 'local', NULL, '/1', '2024-06-17 20:14:47.313000', '2024-06-17 20:14:47.313000', NULL, NULL),
(232, 'chòn.png', NULL, NULL, 687, 402, '{\"thumbnail\":{\"name\":\"thumbnail_chòn.png\",\"hash\":\"thumbnail_chon_36bfe2ea4c\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":143,\"size\":80.99,\"sizeInBytes\":80985,\"url\":\"/uploads/thumbnail_chon_36bfe2ea4c.png\"},\"small\":{\"name\":\"small_chòn.png\",\"hash\":\"small_chon_36bfe2ea4c\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":293,\"size\":309.3,\"sizeInBytes\":309300,\"url\":\"/uploads/small_chon_36bfe2ea4c.png\"}}', 'chon_36bfe2ea4c', '.png', 'image/png', 128.91, '/uploads/chon_36bfe2ea4c.png', NULL, 'local', NULL, '/1', '2024-06-17 20:14:47.681000', '2024-06-17 20:14:47.681000', NULL, NULL),
(233, 'chòn.png', NULL, NULL, 687, 402, '{\"thumbnail\":{\"name\":\"thumbnail_chòn.png\",\"hash\":\"thumbnail_chon_c41797d105\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":143,\"size\":80.99,\"sizeInBytes\":80985,\"url\":\"/uploads/thumbnail_chon_c41797d105.png\"},\"small\":{\"name\":\"small_chòn.png\",\"hash\":\"small_chon_c41797d105\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":293,\"size\":309.3,\"sizeInBytes\":309300,\"url\":\"/uploads/small_chon_c41797d105.png\"}}', 'chon_c41797d105', '.png', 'image/png', 128.91, '/uploads/chon_c41797d105.png', NULL, 'local', NULL, '/1', '2024-06-17 20:14:47.683000', '2024-06-17 20:14:47.683000', NULL, NULL),
(234, 'chòn.png', NULL, NULL, 687, 402, '{\"thumbnail\":{\"name\":\"thumbnail_chòn.png\",\"hash\":\"thumbnail_chon_1b0e4770ed\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":143,\"size\":80.99,\"sizeInBytes\":80985,\"url\":\"/uploads/thumbnail_chon_1b0e4770ed.png\"},\"small\":{\"name\":\"small_chòn.png\",\"hash\":\"small_chon_1b0e4770ed\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":293,\"size\":309.3,\"sizeInBytes\":309300,\"url\":\"/uploads/small_chon_1b0e4770ed.png\"}}', 'chon_1b0e4770ed', '.png', 'image/png', 128.91, '/uploads/chon_1b0e4770ed.png', NULL, 'local', NULL, '/1', '2024-06-17 20:14:48.815000', '2024-06-17 20:14:48.815000', NULL, NULL),
(235, 'chòn.png', NULL, NULL, 687, 402, '{\"thumbnail\":{\"name\":\"thumbnail_chòn.png\",\"hash\":\"thumbnail_chon_580456e664\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":143,\"size\":80.99,\"sizeInBytes\":80985,\"url\":\"/uploads/thumbnail_chon_580456e664.png\"},\"small\":{\"name\":\"small_chòn.png\",\"hash\":\"small_chon_580456e664\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":293,\"size\":309.3,\"sizeInBytes\":309300,\"url\":\"/uploads/small_chon_580456e664.png\"}}', 'chon_580456e664', '.png', 'image/png', 128.91, '/uploads/chon_580456e664.png', NULL, 'local', NULL, '/1', '2024-06-17 20:19:41.091000', '2024-06-17 20:19:41.091000', NULL, NULL),
(236, 'chòn.png', NULL, NULL, 687, 402, '{\"thumbnail\":{\"name\":\"thumbnail_chòn.png\",\"hash\":\"thumbnail_chon_f0cf01a982\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":143,\"size\":80.99,\"sizeInBytes\":80985,\"url\":\"/uploads/thumbnail_chon_f0cf01a982.png\"},\"small\":{\"name\":\"small_chòn.png\",\"hash\":\"small_chon_f0cf01a982\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":293,\"size\":309.3,\"sizeInBytes\":309300,\"url\":\"/uploads/small_chon_f0cf01a982.png\"}}', 'chon_f0cf01a982', '.png', 'image/png', 128.91, '/uploads/chon_f0cf01a982.png', NULL, 'local', NULL, '/1', '2024-06-17 20:19:51.711000', '2024-06-17 20:19:51.711000', NULL, NULL),
(237, 'chòn.png', NULL, NULL, 687, 402, '{\"thumbnail\":{\"name\":\"thumbnail_chòn.png\",\"hash\":\"thumbnail_chon_419efe0363\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":143,\"size\":80.99,\"sizeInBytes\":80985,\"url\":\"/uploads/thumbnail_chon_419efe0363.png\"},\"small\":{\"name\":\"small_chòn.png\",\"hash\":\"small_chon_419efe0363\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":293,\"size\":309.3,\"sizeInBytes\":309300,\"url\":\"/uploads/small_chon_419efe0363.png\"}}', 'chon_419efe0363', '.png', 'image/png', 128.91, '/uploads/chon_419efe0363.png', NULL, 'local', NULL, '/1', '2024-06-17 20:19:52.216000', '2024-06-17 20:19:52.216000', NULL, NULL),
(238, 'chòn.png', NULL, NULL, 687, 402, '{\"thumbnail\":{\"name\":\"thumbnail_chòn.png\",\"hash\":\"thumbnail_chon_e31bbe33fd\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":143,\"size\":80.99,\"sizeInBytes\":80985,\"url\":\"/uploads/thumbnail_chon_e31bbe33fd.png\"},\"small\":{\"name\":\"small_chòn.png\",\"hash\":\"small_chon_e31bbe33fd\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":293,\"size\":309.3,\"sizeInBytes\":309300,\"url\":\"/uploads/small_chon_e31bbe33fd.png\"}}', 'chon_e31bbe33fd', '.png', 'image/png', 128.91, '/uploads/chon_e31bbe33fd.png', NULL, 'local', NULL, '/1', '2024-06-17 20:19:52.658000', '2024-06-17 20:19:52.658000', NULL, NULL),
(239, 'chòn.png', NULL, NULL, 687, 402, '{\"thumbnail\":{\"name\":\"thumbnail_chòn.png\",\"hash\":\"thumbnail_chon_2e5463a3a0\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":143,\"size\":80.99,\"sizeInBytes\":80985,\"url\":\"/uploads/thumbnail_chon_2e5463a3a0.png\"},\"small\":{\"name\":\"small_chòn.png\",\"hash\":\"small_chon_2e5463a3a0\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":293,\"size\":309.3,\"sizeInBytes\":309300,\"url\":\"/uploads/small_chon_2e5463a3a0.png\"}}', 'chon_2e5463a3a0', '.png', 'image/png', 128.91, '/uploads/chon_2e5463a3a0.png', NULL, 'local', NULL, '/1', '2024-06-17 20:19:52.926000', '2024-06-17 20:19:52.926000', NULL, NULL),
(240, 'chòn.png', NULL, NULL, 687, 402, '{\"thumbnail\":{\"name\":\"thumbnail_chòn.png\",\"hash\":\"thumbnail_chon_acf618faa4\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":143,\"size\":80.99,\"sizeInBytes\":80985,\"url\":\"/uploads/thumbnail_chon_acf618faa4.png\"},\"small\":{\"name\":\"small_chòn.png\",\"hash\":\"small_chon_acf618faa4\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":293,\"size\":309.3,\"sizeInBytes\":309300,\"url\":\"/uploads/small_chon_acf618faa4.png\"}}', 'chon_acf618faa4', '.png', 'image/png', 128.91, '/uploads/chon_acf618faa4.png', NULL, 'local', NULL, '/1', '2024-06-17 20:24:20.513000', '2024-06-17 20:24:20.513000', NULL, NULL),
(241, 'chòn.png', NULL, NULL, 687, 402, '{\"thumbnail\":{\"name\":\"thumbnail_chòn.png\",\"hash\":\"thumbnail_chon_94f4a4f83d\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":143,\"size\":80.99,\"sizeInBytes\":80985,\"url\":\"/uploads/thumbnail_chon_94f4a4f83d.png\"},\"small\":{\"name\":\"small_chòn.png\",\"hash\":\"small_chon_94f4a4f83d\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":293,\"size\":309.3,\"sizeInBytes\":309300,\"url\":\"/uploads/small_chon_94f4a4f83d.png\"}}', 'chon_94f4a4f83d', '.png', 'image/png', 128.91, '/uploads/chon_94f4a4f83d.png', NULL, 'local', NULL, '/1', '2024-06-17 20:24:30.813000', '2024-06-17 20:24:30.813000', NULL, NULL),
(242, 'caffe2.png', NULL, NULL, 1126, 622, '{\"thumbnail\":{\"name\":\"thumbnail_caffe2.png\",\"hash\":\"thumbnail_caffe2_3150e0744d\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":135,\"size\":78.65,\"sizeInBytes\":78654,\"url\":\"/uploads/thumbnail_caffe2_3150e0744d.png\"},\"small\":{\"name\":\"small_caffe2.png\",\"hash\":\"small_caffe2_3150e0744d\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":276,\"size\":292.01,\"sizeInBytes\":292007,\"url\":\"/uploads/small_caffe2_3150e0744d.png\"},\"medium\":{\"name\":\"medium_caffe2.png\",\"hash\":\"medium_caffe2_3150e0744d\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":750,\"height\":414,\"size\":607.78,\"sizeInBytes\":607780,\"url\":\"/uploads/medium_caffe2_3150e0744d.png\"},\"large\":{\"name\":\"large_caffe2.png\",\"hash\":\"large_caffe2_3150e0744d\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":1000,\"height\":552,\"size\":1009.21,\"sizeInBytes\":1009212,\"url\":\"/uploads/large_caffe2_3150e0744d.png\"}}', 'caffe2_3150e0744d', '.png', 'image/png', 282.78, '/uploads/caffe2_3150e0744d.png', NULL, 'local', NULL, '/1', '2024-06-17 20:24:41.797000', '2024-06-17 20:24:41.797000', NULL, NULL),
(243, 'caffe2.png', NULL, NULL, 1126, 622, '{\"thumbnail\":{\"name\":\"thumbnail_caffe2.png\",\"hash\":\"thumbnail_caffe2_bc6eeba6f9\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":135,\"size\":78.65,\"sizeInBytes\":78654,\"url\":\"/uploads/thumbnail_caffe2_bc6eeba6f9.png\"},\"small\":{\"name\":\"small_caffe2.png\",\"hash\":\"small_caffe2_bc6eeba6f9\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":276,\"size\":292.01,\"sizeInBytes\":292007,\"url\":\"/uploads/small_caffe2_bc6eeba6f9.png\"},\"medium\":{\"name\":\"medium_caffe2.png\",\"hash\":\"medium_caffe2_bc6eeba6f9\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":750,\"height\":414,\"size\":607.78,\"sizeInBytes\":607780,\"url\":\"/uploads/medium_caffe2_bc6eeba6f9.png\"},\"large\":{\"name\":\"large_caffe2.png\",\"hash\":\"large_caffe2_bc6eeba6f9\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":1000,\"height\":552,\"size\":1009.21,\"sizeInBytes\":1009212,\"url\":\"/uploads/large_caffe2_bc6eeba6f9.png\"}}', 'caffe2_bc6eeba6f9', '.png', 'image/png', 282.78, '/uploads/caffe2_bc6eeba6f9.png', NULL, 'local', NULL, '/1', '2024-06-17 20:24:53.540000', '2024-06-17 20:24:53.540000', NULL, NULL),
(244, 'cafe mocha.png', NULL, NULL, 786, 487, '{\"thumbnail\":{\"name\":\"thumbnail_cafe mocha.png\",\"hash\":\"thumbnail_cafe_mocha_3f43e44ea8\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":152,\"size\":101.3,\"sizeInBytes\":101297,\"url\":\"/uploads/thumbnail_cafe_mocha_3f43e44ea8.png\"},\"small\":{\"name\":\"small_cafe mocha.png\",\"hash\":\"small_cafe_mocha_3f43e44ea8\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":310,\"size\":389.4,\"sizeInBytes\":389400,\"url\":\"/uploads/small_cafe_mocha_3f43e44ea8.png\"},\"medium\":{\"name\":\"medium_cafe mocha.png\",\"hash\":\"medium_cafe_mocha_3f43e44ea8\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":750,\"height\":465,\"size\":809.03,\"sizeInBytes\":809033,\"url\":\"/uploads/medium_cafe_mocha_3f43e44ea8.png\"}}', 'cafe_mocha_3f43e44ea8', '.png', 'image/png', 193.89, '/uploads/cafe_mocha_3f43e44ea8.png', NULL, 'local', NULL, '/1', '2024-06-17 20:25:26.744000', '2024-06-17 20:25:26.744000', NULL, NULL),
(245, 'chòn.png', NULL, NULL, 687, 402, '{\"thumbnail\":{\"name\":\"thumbnail_chòn.png\",\"hash\":\"thumbnail_chon_373eb296d2\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":143,\"size\":80.99,\"sizeInBytes\":80985,\"url\":\"/uploads/thumbnail_chon_373eb296d2.png\"},\"small\":{\"name\":\"small_chòn.png\",\"hash\":\"small_chon_373eb296d2\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":293,\"size\":309.3,\"sizeInBytes\":309300,\"url\":\"/uploads/small_chon_373eb296d2.png\"}}', 'chon_373eb296d2', '.png', 'image/png', 128.91, '/uploads/chon_373eb296d2.png', NULL, 'local', NULL, '/1', '2024-06-17 20:26:49.618000', '2024-06-17 20:26:49.618000', NULL, NULL),
(246, 'chòn.png', NULL, NULL, 687, 402, '{\"thumbnail\":{\"name\":\"thumbnail_chòn.png\",\"hash\":\"thumbnail_chon_46f2c7920c\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":143,\"size\":80.99,\"sizeInBytes\":80985,\"url\":\"/uploads/thumbnail_chon_46f2c7920c.png\"},\"small\":{\"name\":\"small_chòn.png\",\"hash\":\"small_chon_46f2c7920c\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":293,\"size\":309.3,\"sizeInBytes\":309300,\"url\":\"/uploads/small_chon_46f2c7920c.png\"}}', 'chon_46f2c7920c', '.png', 'image/png', 128.91, '/uploads/chon_46f2c7920c.png', NULL, 'local', NULL, '/1', '2024-06-17 20:27:00.233000', '2024-06-17 20:27:00.233000', NULL, NULL),
(247, 'cafe4.png', NULL, NULL, 972, 602, '{\"thumbnail\":{\"name\":\"thumbnail_cafe4.png\",\"hash\":\"thumbnail_cafe4_4cea4aad2e\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":152,\"size\":87.15,\"sizeInBytes\":87148,\"url\":\"/uploads/thumbnail_cafe4_4cea4aad2e.png\"},\"small\":{\"name\":\"small_cafe4.png\",\"hash\":\"small_cafe4_4cea4aad2e\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":310,\"size\":306.17,\"sizeInBytes\":306169,\"url\":\"/uploads/small_cafe4_4cea4aad2e.png\"},\"medium\":{\"name\":\"medium_cafe4.png\",\"hash\":\"medium_cafe4_4cea4aad2e\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":750,\"height\":465,\"size\":615.9,\"sizeInBytes\":615899,\"url\":\"/uploads/medium_cafe4_4cea4aad2e.png\"}}', 'cafe4_4cea4aad2e', '.png', 'image/png', 234.00, '/uploads/cafe4_4cea4aad2e.png', NULL, 'local', NULL, '/1', '2024-06-17 20:56:41.481000', '2024-06-17 20:56:41.481000', NULL, NULL),
(248, 'cafe4.png', NULL, NULL, 972, 602, '{\"thumbnail\":{\"name\":\"thumbnail_cafe4.png\",\"hash\":\"thumbnail_cafe4_687d56b687\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":152,\"size\":87.15,\"sizeInBytes\":87148,\"url\":\"/uploads/thumbnail_cafe4_687d56b687.png\"},\"small\":{\"name\":\"small_cafe4.png\",\"hash\":\"small_cafe4_687d56b687\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":310,\"size\":306.17,\"sizeInBytes\":306169,\"url\":\"/uploads/small_cafe4_687d56b687.png\"},\"medium\":{\"name\":\"medium_cafe4.png\",\"hash\":\"medium_cafe4_687d56b687\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":750,\"height\":465,\"size\":615.9,\"sizeInBytes\":615899,\"url\":\"/uploads/medium_cafe4_687d56b687.png\"}}', 'cafe4_687d56b687', '.png', 'image/png', 234.00, '/uploads/cafe4_687d56b687.png', NULL, 'local', NULL, '/1', '2024-06-17 20:57:31.678000', '2024-06-17 20:57:31.678000', NULL, NULL),
(249, 'caffe2.png', NULL, NULL, 1126, 622, '{\"thumbnail\":{\"name\":\"thumbnail_caffe2.png\",\"hash\":\"thumbnail_caffe2_f0c7d5d383\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":135,\"size\":78.65,\"sizeInBytes\":78654,\"url\":\"/uploads/thumbnail_caffe2_f0c7d5d383.png\"},\"small\":{\"name\":\"small_caffe2.png\",\"hash\":\"small_caffe2_f0c7d5d383\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":276,\"size\":292.01,\"sizeInBytes\":292007,\"url\":\"/uploads/small_caffe2_f0c7d5d383.png\"},\"medium\":{\"name\":\"medium_caffe2.png\",\"hash\":\"medium_caffe2_f0c7d5d383\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":750,\"height\":414,\"size\":607.78,\"sizeInBytes\":607780,\"url\":\"/uploads/medium_caffe2_f0c7d5d383.png\"},\"large\":{\"name\":\"large_caffe2.png\",\"hash\":\"large_caffe2_f0c7d5d383\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":1000,\"height\":552,\"size\":1009.21,\"sizeInBytes\":1009212,\"url\":\"/uploads/large_caffe2_f0c7d5d383.png\"}}', 'caffe2_f0c7d5d383', '.png', 'image/png', 282.78, '/uploads/caffe2_f0c7d5d383.png', NULL, 'local', NULL, '/1', '2024-06-17 20:58:00.221000', '2024-06-17 20:58:00.221000', NULL, NULL),
(250, 'caffe2.png', NULL, NULL, 1126, 622, '{\"thumbnail\":{\"name\":\"thumbnail_caffe2.png\",\"hash\":\"thumbnail_caffe2_6c20823653\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":135,\"size\":78.65,\"sizeInBytes\":78654,\"url\":\"/uploads/thumbnail_caffe2_6c20823653.png\"},\"small\":{\"name\":\"small_caffe2.png\",\"hash\":\"small_caffe2_6c20823653\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":276,\"size\":292.01,\"sizeInBytes\":292007,\"url\":\"/uploads/small_caffe2_6c20823653.png\"},\"medium\":{\"name\":\"medium_caffe2.png\",\"hash\":\"medium_caffe2_6c20823653\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":750,\"height\":414,\"size\":607.78,\"sizeInBytes\":607780,\"url\":\"/uploads/medium_caffe2_6c20823653.png\"},\"large\":{\"name\":\"large_caffe2.png\",\"hash\":\"large_caffe2_6c20823653\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":1000,\"height\":552,\"size\":1009.21,\"sizeInBytes\":1009212,\"url\":\"/uploads/large_caffe2_6c20823653.png\"}}', 'caffe2_6c20823653', '.png', 'image/png', 282.78, '/uploads/caffe2_6c20823653.png', NULL, 'local', NULL, '/1', '2024-06-17 21:09:53.292000', '2024-06-17 21:09:53.292000', NULL, NULL),
(251, 'chòn.png', NULL, NULL, 687, 402, '{\"thumbnail\":{\"name\":\"thumbnail_chòn.png\",\"hash\":\"thumbnail_chon_78ecda9854\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":143,\"size\":80.99,\"sizeInBytes\":80985,\"url\":\"/uploads/thumbnail_chon_78ecda9854.png\"},\"small\":{\"name\":\"small_chòn.png\",\"hash\":\"small_chon_78ecda9854\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":293,\"size\":309.3,\"sizeInBytes\":309300,\"url\":\"/uploads/small_chon_78ecda9854.png\"}}', 'chon_78ecda9854', '.png', 'image/png', 128.91, '/uploads/chon_78ecda9854.png', NULL, 'local', NULL, '/1', '2024-06-17 21:10:09.658000', '2024-06-17 21:10:09.658000', NULL, NULL),
(252, 'chòn.png', NULL, NULL, 687, 402, '{\"thumbnail\":{\"name\":\"thumbnail_chòn.png\",\"hash\":\"thumbnail_chon_0068a64b26\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":143,\"size\":80.99,\"sizeInBytes\":80985,\"url\":\"/uploads/thumbnail_chon_0068a64b26.png\"},\"small\":{\"name\":\"small_chòn.png\",\"hash\":\"small_chon_0068a64b26\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":293,\"size\":309.3,\"sizeInBytes\":309300,\"url\":\"/uploads/small_chon_0068a64b26.png\"}}', 'chon_0068a64b26', '.png', 'image/png', 128.91, '/uploads/chon_0068a64b26.png', NULL, 'local', NULL, '/1', '2024-06-17 21:11:27.643000', '2024-06-17 21:11:27.643000', NULL, NULL),
(253, 'chòn.png', NULL, NULL, 687, 402, '{\"thumbnail\":{\"name\":\"thumbnail_chòn.png\",\"hash\":\"thumbnail_chon_62e06a4936\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":143,\"size\":80.99,\"sizeInBytes\":80985,\"url\":\"/uploads/thumbnail_chon_62e06a4936.png\"},\"small\":{\"name\":\"small_chòn.png\",\"hash\":\"small_chon_62e06a4936\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":293,\"size\":309.3,\"sizeInBytes\":309300,\"url\":\"/uploads/small_chon_62e06a4936.png\"}}', 'chon_62e06a4936', '.png', 'image/png', 128.91, '/uploads/chon_62e06a4936.png', NULL, 'local', NULL, '/1', '2024-06-17 21:11:28.933000', '2024-06-17 21:11:28.933000', NULL, NULL),
(254, 'chòn.png', NULL, NULL, 687, 402, '{\"thumbnail\":{\"name\":\"thumbnail_chòn.png\",\"hash\":\"thumbnail_chon_42593be418\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":143,\"size\":80.99,\"sizeInBytes\":80985,\"url\":\"/uploads/thumbnail_chon_42593be418.png\"},\"small\":{\"name\":\"small_chòn.png\",\"hash\":\"small_chon_42593be418\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":293,\"size\":309.3,\"sizeInBytes\":309300,\"url\":\"/uploads/small_chon_42593be418.png\"}}', 'chon_42593be418', '.png', 'image/png', 128.91, '/uploads/chon_42593be418.png', NULL, 'local', NULL, '/1', '2024-06-17 21:11:29.835000', '2024-06-17 21:11:29.835000', NULL, NULL),
(255, 'chòn.png', NULL, NULL, 687, 402, '{\"thumbnail\":{\"name\":\"thumbnail_chòn.png\",\"hash\":\"thumbnail_chon_49ef95f1ef\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":143,\"size\":80.99,\"sizeInBytes\":80985,\"url\":\"/uploads/thumbnail_chon_49ef95f1ef.png\"},\"small\":{\"name\":\"small_chòn.png\",\"hash\":\"small_chon_49ef95f1ef\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":293,\"size\":309.3,\"sizeInBytes\":309300,\"url\":\"/uploads/small_chon_49ef95f1ef.png\"}}', 'chon_49ef95f1ef', '.png', 'image/png', 128.91, '/uploads/chon_49ef95f1ef.png', NULL, 'local', NULL, '/1', '2024-06-17 21:11:30.340000', '2024-06-17 21:11:30.340000', NULL, NULL),
(256, 'chòn.png', NULL, NULL, 687, 402, '{\"thumbnail\":{\"name\":\"thumbnail_chòn.png\",\"hash\":\"thumbnail_chon_991d9909b0\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":143,\"size\":80.99,\"sizeInBytes\":80985,\"url\":\"/uploads/thumbnail_chon_991d9909b0.png\"},\"small\":{\"name\":\"small_chòn.png\",\"hash\":\"small_chon_991d9909b0\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":293,\"size\":309.3,\"sizeInBytes\":309300,\"url\":\"/uploads/small_chon_991d9909b0.png\"}}', 'chon_991d9909b0', '.png', 'image/png', 128.91, '/uploads/chon_991d9909b0.png', NULL, 'local', NULL, '/1', '2024-06-17 21:11:30.508000', '2024-06-17 21:11:30.508000', NULL, NULL),
(257, 'chòn.png', NULL, NULL, 687, 402, '{\"thumbnail\":{\"name\":\"thumbnail_chòn.png\",\"hash\":\"thumbnail_chon_21b0fa0f9b\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":143,\"size\":80.99,\"sizeInBytes\":80985,\"url\":\"/uploads/thumbnail_chon_21b0fa0f9b.png\"},\"small\":{\"name\":\"small_chòn.png\",\"hash\":\"small_chon_21b0fa0f9b\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":293,\"size\":309.3,\"sizeInBytes\":309300,\"url\":\"/uploads/small_chon_21b0fa0f9b.png\"}}', 'chon_21b0fa0f9b', '.png', 'image/png', 128.91, '/uploads/chon_21b0fa0f9b.png', NULL, 'local', NULL, '/1', '2024-06-17 21:11:30.858000', '2024-06-17 21:11:30.858000', NULL, NULL),
(258, 'chòn.png', NULL, NULL, 687, 402, '{\"thumbnail\":{\"name\":\"thumbnail_chòn.png\",\"hash\":\"thumbnail_chon_bd2da8fcc4\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":143,\"size\":80.99,\"sizeInBytes\":80985,\"url\":\"/uploads/thumbnail_chon_bd2da8fcc4.png\"},\"small\":{\"name\":\"small_chòn.png\",\"hash\":\"small_chon_bd2da8fcc4\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":293,\"size\":309.3,\"sizeInBytes\":309300,\"url\":\"/uploads/small_chon_bd2da8fcc4.png\"}}', 'chon_bd2da8fcc4', '.png', 'image/png', 128.91, '/uploads/chon_bd2da8fcc4.png', NULL, 'local', NULL, '/1', '2024-06-17 21:12:45.078000', '2024-06-17 21:12:45.078000', NULL, NULL),
(259, 'cafe3.png', NULL, NULL, 846, 560, '{\"thumbnail\":{\"name\":\"thumbnail_cafe3.png\",\"hash\":\"thumbnail_cafe3_3c2fd5d251\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":236,\"height\":156,\"size\":92.19,\"sizeInBytes\":92191,\"url\":\"/uploads/thumbnail_cafe3_3c2fd5d251.png\"},\"small\":{\"name\":\"small_cafe3.png\",\"hash\":\"small_cafe3_3c2fd5d251\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":331,\"size\":358.99,\"sizeInBytes\":358987,\"url\":\"/uploads/small_cafe3_3c2fd5d251.png\"},\"medium\":{\"name\":\"medium_cafe3.png\",\"hash\":\"medium_cafe3_3c2fd5d251\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":750,\"height\":496,\"size\":746.44,\"sizeInBytes\":746436,\"url\":\"/uploads/medium_cafe3_3c2fd5d251.png\"}}', 'cafe3_3c2fd5d251', '.png', 'image/png', 216.52, '/uploads/cafe3_3c2fd5d251.png', NULL, 'local', NULL, '/1', '2024-06-17 21:13:13.396000', '2024-06-17 21:13:13.396000', NULL, NULL),
(260, 'chòn.png', NULL, NULL, 687, 402, '{\"thumbnail\":{\"name\":\"thumbnail_chòn.png\",\"hash\":\"thumbnail_chon_ff865ea1a9\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":143,\"size\":80.99,\"sizeInBytes\":80985,\"url\":\"/uploads/thumbnail_chon_ff865ea1a9.png\"},\"small\":{\"name\":\"small_chòn.png\",\"hash\":\"small_chon_ff865ea1a9\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":293,\"size\":309.3,\"sizeInBytes\":309300,\"url\":\"/uploads/small_chon_ff865ea1a9.png\"}}', 'chon_ff865ea1a9', '.png', 'image/png', 128.91, '/uploads/chon_ff865ea1a9.png', NULL, 'local', NULL, '/1', '2024-06-17 21:13:36.947000', '2024-06-17 21:13:36.947000', NULL, NULL),
(261, 'cafe3.png', NULL, NULL, 846, 560, '{\"thumbnail\":{\"name\":\"thumbnail_cafe3.png\",\"hash\":\"thumbnail_cafe3_57c0a4b886\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":236,\"height\":156,\"size\":92.19,\"sizeInBytes\":92191,\"url\":\"/uploads/thumbnail_cafe3_57c0a4b886.png\"},\"small\":{\"name\":\"small_cafe3.png\",\"hash\":\"small_cafe3_57c0a4b886\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":331,\"size\":358.99,\"sizeInBytes\":358987,\"url\":\"/uploads/small_cafe3_57c0a4b886.png\"},\"medium\":{\"name\":\"medium_cafe3.png\",\"hash\":\"medium_cafe3_57c0a4b886\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":750,\"height\":496,\"size\":746.44,\"sizeInBytes\":746436,\"url\":\"/uploads/medium_cafe3_57c0a4b886.png\"}}', 'cafe3_57c0a4b886', '.png', 'image/png', 216.52, '/uploads/cafe3_57c0a4b886.png', NULL, 'local', NULL, '/1', '2024-06-17 21:13:52.943000', '2024-06-17 21:13:52.943000', NULL, NULL),
(262, 'cafe3.png', NULL, NULL, 846, 560, '{\"thumbnail\":{\"name\":\"thumbnail_cafe3.png\",\"hash\":\"thumbnail_cafe3_2e10255f6f\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":236,\"height\":156,\"size\":92.19,\"sizeInBytes\":92191,\"url\":\"/uploads/thumbnail_cafe3_2e10255f6f.png\"},\"small\":{\"name\":\"small_cafe3.png\",\"hash\":\"small_cafe3_2e10255f6f\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":331,\"size\":358.99,\"sizeInBytes\":358987,\"url\":\"/uploads/small_cafe3_2e10255f6f.png\"},\"medium\":{\"name\":\"medium_cafe3.png\",\"hash\":\"medium_cafe3_2e10255f6f\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":750,\"height\":496,\"size\":746.44,\"sizeInBytes\":746436,\"url\":\"/uploads/medium_cafe3_2e10255f6f.png\"}}', 'cafe3_2e10255f6f', '.png', 'image/png', 216.52, '/uploads/cafe3_2e10255f6f.png', NULL, 'local', NULL, '/1', '2024-06-17 21:13:53.272000', '2024-06-17 21:13:53.272000', NULL, NULL),
(263, 'cafe3.png', NULL, NULL, 846, 560, '{\"thumbnail\":{\"name\":\"thumbnail_cafe3.png\",\"hash\":\"thumbnail_cafe3_271dfb617c\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":236,\"height\":156,\"size\":92.19,\"sizeInBytes\":92191,\"url\":\"/uploads/thumbnail_cafe3_271dfb617c.png\"},\"small\":{\"name\":\"small_cafe3.png\",\"hash\":\"small_cafe3_271dfb617c\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":331,\"size\":358.99,\"sizeInBytes\":358987,\"url\":\"/uploads/small_cafe3_271dfb617c.png\"},\"medium\":{\"name\":\"medium_cafe3.png\",\"hash\":\"medium_cafe3_271dfb617c\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":750,\"height\":496,\"size\":746.44,\"sizeInBytes\":746436,\"url\":\"/uploads/medium_cafe3_271dfb617c.png\"}}', 'cafe3_271dfb617c', '.png', 'image/png', 216.52, '/uploads/cafe3_271dfb617c.png', NULL, 'local', NULL, '/1', '2024-06-17 21:13:53.481000', '2024-06-17 21:13:53.481000', NULL, NULL),
(264, 'cafe3.png', NULL, NULL, 846, 560, '{\"thumbnail\":{\"name\":\"thumbnail_cafe3.png\",\"hash\":\"thumbnail_cafe3_870186651f\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":236,\"height\":156,\"size\":92.19,\"sizeInBytes\":92191,\"url\":\"/uploads/thumbnail_cafe3_870186651f.png\"},\"small\":{\"name\":\"small_cafe3.png\",\"hash\":\"small_cafe3_870186651f\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":331,\"size\":358.99,\"sizeInBytes\":358987,\"url\":\"/uploads/small_cafe3_870186651f.png\"},\"medium\":{\"name\":\"medium_cafe3.png\",\"hash\":\"medium_cafe3_870186651f\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":750,\"height\":496,\"size\":746.44,\"sizeInBytes\":746436,\"url\":\"/uploads/medium_cafe3_870186651f.png\"}}', 'cafe3_870186651f', '.png', 'image/png', 216.52, '/uploads/cafe3_870186651f.png', NULL, 'local', NULL, '/1', '2024-06-17 21:13:53.611000', '2024-06-17 21:13:53.611000', NULL, NULL),
(265, 'chòn.png', NULL, NULL, 687, 402, '{\"thumbnail\":{\"name\":\"thumbnail_chòn.png\",\"hash\":\"thumbnail_chon_5366d46825\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":143,\"size\":80.99,\"sizeInBytes\":80985,\"url\":\"/uploads/thumbnail_chon_5366d46825.png\"},\"small\":{\"name\":\"small_chòn.png\",\"hash\":\"small_chon_5366d46825\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":293,\"size\":309.3,\"sizeInBytes\":309300,\"url\":\"/uploads/small_chon_5366d46825.png\"}}', 'chon_5366d46825', '.png', 'image/png', 128.91, '/uploads/chon_5366d46825.png', NULL, 'local', NULL, '/1', '2024-06-17 21:14:19.401000', '2024-06-17 21:14:19.401000', NULL, NULL),
(266, 'chòn.png', NULL, NULL, 687, 402, '{\"thumbnail\":{\"name\":\"thumbnail_chòn.png\",\"hash\":\"thumbnail_chon_a699eb5d7b\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":143,\"size\":80.99,\"sizeInBytes\":80985,\"url\":\"/uploads/thumbnail_chon_a699eb5d7b.png\"},\"small\":{\"name\":\"small_chòn.png\",\"hash\":\"small_chon_a699eb5d7b\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":293,\"size\":309.3,\"sizeInBytes\":309300,\"url\":\"/uploads/small_chon_a699eb5d7b.png\"}}', 'chon_a699eb5d7b', '.png', 'image/png', 128.91, '/uploads/chon_a699eb5d7b.png', NULL, 'local', NULL, '/1', '2024-06-17 21:14:45.875000', '2024-06-17 21:14:45.875000', NULL, NULL),
(267, 'chòn.png', NULL, NULL, 687, 402, '{\"thumbnail\":{\"name\":\"thumbnail_chòn.png\",\"hash\":\"thumbnail_chon_b14c55e435\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":143,\"size\":80.99,\"sizeInBytes\":80985,\"url\":\"/uploads/thumbnail_chon_b14c55e435.png\"},\"small\":{\"name\":\"small_chòn.png\",\"hash\":\"small_chon_b14c55e435\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":293,\"size\":309.3,\"sizeInBytes\":309300,\"url\":\"/uploads/small_chon_b14c55e435.png\"}}', 'chon_b14c55e435', '.png', 'image/png', 128.91, '/uploads/chon_b14c55e435.png', NULL, 'local', NULL, '/1', '2024-06-17 21:17:32.436000', '2024-06-17 21:17:32.436000', NULL, NULL),
(268, 'chòn.png', NULL, NULL, 687, 402, '{\"thumbnail\":{\"name\":\"thumbnail_chòn.png\",\"hash\":\"thumbnail_chon_bee0225139\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":143,\"size\":80.99,\"sizeInBytes\":80985,\"url\":\"/uploads/thumbnail_chon_bee0225139.png\"},\"small\":{\"name\":\"small_chòn.png\",\"hash\":\"small_chon_bee0225139\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":293,\"size\":309.3,\"sizeInBytes\":309300,\"url\":\"/uploads/small_chon_bee0225139.png\"}}', 'chon_bee0225139', '.png', 'image/png', 128.91, '/uploads/chon_bee0225139.png', NULL, 'local', NULL, '/1', '2024-06-17 21:17:41.697000', '2024-06-17 21:17:41.697000', NULL, NULL),
(269, 'chòn.png', NULL, NULL, 687, 402, '{\"thumbnail\":{\"name\":\"thumbnail_chòn.png\",\"hash\":\"thumbnail_chon_ac47356719\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":143,\"size\":80.99,\"sizeInBytes\":80985,\"url\":\"/uploads/thumbnail_chon_ac47356719.png\"},\"small\":{\"name\":\"small_chòn.png\",\"hash\":\"small_chon_ac47356719\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":293,\"size\":309.3,\"sizeInBytes\":309300,\"url\":\"/uploads/small_chon_ac47356719.png\"}}', 'chon_ac47356719', '.png', 'image/png', 128.91, '/uploads/chon_ac47356719.png', NULL, 'local', NULL, '/1', '2024-06-17 21:18:26.287000', '2024-06-17 21:18:26.287000', NULL, NULL),
(270, 'chòn.png', NULL, NULL, 687, 402, '{\"thumbnail\":{\"name\":\"thumbnail_chòn.png\",\"hash\":\"thumbnail_chon_ea57e50a8b\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":143,\"size\":80.99,\"sizeInBytes\":80985,\"url\":\"/uploads/thumbnail_chon_ea57e50a8b.png\"},\"small\":{\"name\":\"small_chòn.png\",\"hash\":\"small_chon_ea57e50a8b\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":293,\"size\":309.3,\"sizeInBytes\":309300,\"url\":\"/uploads/small_chon_ea57e50a8b.png\"}}', 'chon_ea57e50a8b', '.png', 'image/png', 128.91, '/uploads/chon_ea57e50a8b.png', NULL, 'local', NULL, '/1', '2024-06-17 21:32:41.982000', '2024-06-17 21:32:41.982000', NULL, NULL),
(271, 'chòn.png', NULL, NULL, 687, 402, '{\"thumbnail\":{\"name\":\"thumbnail_chòn.png\",\"hash\":\"thumbnail_chon_de42d02723\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":143,\"size\":80.99,\"sizeInBytes\":80985,\"url\":\"/uploads/thumbnail_chon_de42d02723.png\"},\"small\":{\"name\":\"small_chòn.png\",\"hash\":\"small_chon_de42d02723\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":293,\"size\":309.3,\"sizeInBytes\":309300,\"url\":\"/uploads/small_chon_de42d02723.png\"}}', 'chon_de42d02723', '.png', 'image/png', 128.91, '/uploads/chon_de42d02723.png', NULL, 'local', NULL, '/1', '2024-06-17 21:34:05.397000', '2024-06-17 21:34:05.397000', NULL, NULL),
(272, 'chòn.png', NULL, NULL, 687, 402, '{\"thumbnail\":{\"name\":\"thumbnail_chòn.png\",\"hash\":\"thumbnail_chon_deef1e66b3\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":143,\"size\":80.99,\"sizeInBytes\":80985,\"url\":\"/uploads/thumbnail_chon_deef1e66b3.png\"},\"small\":{\"name\":\"small_chòn.png\",\"hash\":\"small_chon_deef1e66b3\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":293,\"size\":309.3,\"sizeInBytes\":309300,\"url\":\"/uploads/small_chon_deef1e66b3.png\"}}', 'chon_deef1e66b3', '.png', 'image/png', 128.91, '/uploads/chon_deef1e66b3.png', NULL, 'local', NULL, '/1', '2024-06-17 21:34:14.774000', '2024-06-17 21:34:14.774000', NULL, NULL),
(273, 'chòn.png', NULL, NULL, 687, 402, '{\"thumbnail\":{\"name\":\"thumbnail_chòn.png\",\"hash\":\"thumbnail_chon_783e34957c\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":143,\"size\":80.99,\"sizeInBytes\":80985,\"url\":\"/uploads/thumbnail_chon_783e34957c.png\"},\"small\":{\"name\":\"small_chòn.png\",\"hash\":\"small_chon_783e34957c\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":293,\"size\":309.3,\"sizeInBytes\":309300,\"url\":\"/uploads/small_chon_783e34957c.png\"}}', 'chon_783e34957c', '.png', 'image/png', 128.91, '/uploads/chon_783e34957c.png', NULL, 'local', NULL, '/1', '2024-06-17 21:34:24.977000', '2024-06-17 21:34:24.977000', NULL, NULL),
(274, 'cafe đen.png', NULL, NULL, 491, 493, '{\"thumbnail\":{\"name\":\"thumbnail_cafe đen.png\",\"hash\":\"thumbnail_cafe_den_c1dffdc70d\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":155,\"height\":156,\"size\":58.02,\"sizeInBytes\":58023,\"url\":\"/uploads/thumbnail_cafe_den_c1dffdc70d.png\"}}', 'cafe_den_c1dffdc70d', '.png', 'image/png', 129.34, '/uploads/cafe_den_c1dffdc70d.png', NULL, 'local', NULL, '/1', '2024-06-17 21:41:30.417000', '2024-06-17 21:41:30.417000', NULL, NULL),
(275, 'cafe đen.png', NULL, NULL, 491, 493, '{\"thumbnail\":{\"name\":\"thumbnail_cafe đen.png\",\"hash\":\"thumbnail_cafe_den_16d6bfcd41\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":155,\"height\":156,\"size\":58.02,\"sizeInBytes\":58023,\"url\":\"/uploads/thumbnail_cafe_den_16d6bfcd41.png\"}}', 'cafe_den_16d6bfcd41', '.png', 'image/png', 129.34, '/uploads/cafe_den_16d6bfcd41.png', NULL, 'local', NULL, '/1', '2024-06-17 21:44:22.186000', '2024-06-17 21:44:22.186000', NULL, NULL),
(276, 'cafe đen.png', NULL, NULL, 491, 493, '{\"thumbnail\":{\"name\":\"thumbnail_cafe đen.png\",\"hash\":\"thumbnail_cafe_den_982974bca7\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":155,\"height\":156,\"size\":58.02,\"sizeInBytes\":58023,\"url\":\"/uploads/thumbnail_cafe_den_982974bca7.png\"}}', 'cafe_den_982974bca7', '.png', 'image/png', 129.34, '/uploads/cafe_den_982974bca7.png', NULL, 'local', NULL, '/1', '2024-06-17 21:44:30.087000', '2024-06-17 21:44:30.087000', NULL, NULL),
(277, 'chòn.png', NULL, NULL, 687, 402, '{\"thumbnail\":{\"name\":\"thumbnail_chòn.png\",\"hash\":\"thumbnail_chon_34f25613a6\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":143,\"size\":80.99,\"sizeInBytes\":80985,\"url\":\"/uploads/thumbnail_chon_34f25613a6.png\"},\"small\":{\"name\":\"small_chòn.png\",\"hash\":\"small_chon_34f25613a6\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":293,\"size\":309.3,\"sizeInBytes\":309300,\"url\":\"/uploads/small_chon_34f25613a6.png\"}}', 'chon_34f25613a6', '.png', 'image/png', 128.91, '/uploads/chon_34f25613a6.png', NULL, 'local', NULL, '/1', '2024-06-17 21:46:25.226000', '2024-06-17 21:46:25.226000', NULL, NULL),
(278, 'cafe3.png', NULL, NULL, 846, 560, '{\"thumbnail\":{\"name\":\"thumbnail_cafe3.png\",\"hash\":\"thumbnail_cafe3_e8417bed07\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":236,\"height\":156,\"size\":92.19,\"sizeInBytes\":92191,\"url\":\"/uploads/thumbnail_cafe3_e8417bed07.png\"},\"small\":{\"name\":\"small_cafe3.png\",\"hash\":\"small_cafe3_e8417bed07\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":331,\"size\":358.99,\"sizeInBytes\":358987,\"url\":\"/uploads/small_cafe3_e8417bed07.png\"},\"medium\":{\"name\":\"medium_cafe3.png\",\"hash\":\"medium_cafe3_e8417bed07\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":750,\"height\":496,\"size\":746.44,\"sizeInBytes\":746436,\"url\":\"/uploads/medium_cafe3_e8417bed07.png\"}}', 'cafe3_e8417bed07', '.png', 'image/png', 216.52, '/uploads/cafe3_e8417bed07.png', NULL, 'local', NULL, '/1', '2024-06-17 21:47:29.316000', '2024-06-17 21:47:29.316000', NULL, NULL),
(279, 'caffe2.png', NULL, NULL, 1126, 622, '{\"thumbnail\":{\"name\":\"thumbnail_caffe2.png\",\"hash\":\"thumbnail_caffe2_4bb6f2c8e3\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":135,\"size\":78.65,\"sizeInBytes\":78654,\"url\":\"/uploads/thumbnail_caffe2_4bb6f2c8e3.png\"},\"small\":{\"name\":\"small_caffe2.png\",\"hash\":\"small_caffe2_4bb6f2c8e3\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":276,\"size\":292.01,\"sizeInBytes\":292007,\"url\":\"/uploads/small_caffe2_4bb6f2c8e3.png\"},\"medium\":{\"name\":\"medium_caffe2.png\",\"hash\":\"medium_caffe2_4bb6f2c8e3\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":750,\"height\":414,\"size\":607.78,\"sizeInBytes\":607780,\"url\":\"/uploads/medium_caffe2_4bb6f2c8e3.png\"},\"large\":{\"name\":\"large_caffe2.png\",\"hash\":\"large_caffe2_4bb6f2c8e3\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":1000,\"height\":552,\"size\":1009.21,\"sizeInBytes\":1009212,\"url\":\"/uploads/large_caffe2_4bb6f2c8e3.png\"}}', 'caffe2_4bb6f2c8e3', '.png', 'image/png', 282.78, '/uploads/caffe2_4bb6f2c8e3.png', NULL, 'local', NULL, '/1', '2024-06-17 21:48:35.112000', '2024-06-17 21:48:35.112000', NULL, NULL),
(280, 'cafe đá.png', NULL, NULL, 321, 477, '{\"thumbnail\":{\"name\":\"thumbnail_cafe đá.png\",\"hash\":\"thumbnail_cafe_da_897996dcaf\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":105,\"height\":156,\"size\":39.05,\"sizeInBytes\":39053,\"url\":\"/uploads/thumbnail_cafe_da_897996dcaf.png\"}}', 'cafe_da_897996dcaf', '.png', 'image/png', 79.98, '/uploads/cafe_da_897996dcaf.png', NULL, 'local', NULL, '/1', '2024-06-17 21:48:59.392000', '2024-06-17 21:48:59.392000', NULL, NULL),
(281, 'cafe đá.png', NULL, NULL, 321, 477, '{\"thumbnail\":{\"name\":\"thumbnail_cafe đá.png\",\"hash\":\"thumbnail_cafe_da_d5a5bbd788\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":105,\"height\":156,\"size\":39.05,\"sizeInBytes\":39053,\"url\":\"/uploads/thumbnail_cafe_da_d5a5bbd788.png\"}}', 'cafe_da_d5a5bbd788', '.png', 'image/png', 79.98, '/uploads/cafe_da_d5a5bbd788.png', NULL, 'local', NULL, '/1', '2024-06-17 21:49:47.336000', '2024-06-17 21:49:47.336000', NULL, NULL),
(282, 'cafe đá.png', NULL, NULL, 321, 477, '{\"thumbnail\":{\"name\":\"thumbnail_cafe đá.png\",\"hash\":\"thumbnail_cafe_da_5e272d4cf0\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":105,\"height\":156,\"size\":39.05,\"sizeInBytes\":39053,\"url\":\"/uploads/thumbnail_cafe_da_5e272d4cf0.png\"}}', 'cafe_da_5e272d4cf0', '.png', 'image/png', 79.98, '/uploads/cafe_da_5e272d4cf0.png', NULL, 'local', NULL, '/1', '2024-06-17 21:49:52.418000', '2024-06-17 21:49:52.418000', NULL, NULL),
(283, 'cafe đá.png', NULL, NULL, 321, 477, '{\"thumbnail\":{\"name\":\"thumbnail_cafe đá.png\",\"hash\":\"thumbnail_cafe_da_5954a23214\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":105,\"height\":156,\"size\":39.05,\"sizeInBytes\":39053,\"url\":\"/uploads/thumbnail_cafe_da_5954a23214.png\"}}', 'cafe_da_5954a23214', '.png', 'image/png', 79.98, '/uploads/cafe_da_5954a23214.png', NULL, 'local', NULL, '/1', '2024-06-17 21:49:56.368000', '2024-06-17 21:49:56.368000', NULL, NULL),
(284, 'cafe3.png', NULL, NULL, 846, 560, '{\"thumbnail\":{\"name\":\"thumbnail_cafe3.png\",\"hash\":\"thumbnail_cafe3_bfd7ba138d\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":236,\"height\":156,\"size\":92.19,\"sizeInBytes\":92191,\"url\":\"/uploads/thumbnail_cafe3_bfd7ba138d.png\"},\"small\":{\"name\":\"small_cafe3.png\",\"hash\":\"small_cafe3_bfd7ba138d\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":331,\"size\":358.99,\"sizeInBytes\":358987,\"url\":\"/uploads/small_cafe3_bfd7ba138d.png\"},\"medium\":{\"name\":\"medium_cafe3.png\",\"hash\":\"medium_cafe3_bfd7ba138d\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":750,\"height\":496,\"size\":746.44,\"sizeInBytes\":746436,\"url\":\"/uploads/medium_cafe3_bfd7ba138d.png\"}}', 'cafe3_bfd7ba138d', '.png', 'image/png', 216.52, '/uploads/cafe3_bfd7ba138d.png', NULL, 'local', NULL, '/1', '2024-06-22 20:08:15.758000', '2024-06-22 20:08:15.758000', NULL, NULL),
(285, 'cafe đen.png', NULL, NULL, 491, 493, '{\"thumbnail\":{\"name\":\"thumbnail_cafe đen.png\",\"hash\":\"thumbnail_cafe_den_a5223e368e\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":155,\"height\":156,\"size\":58.02,\"sizeInBytes\":58023,\"url\":\"/uploads/thumbnail_cafe_den_a5223e368e.png\"}}', 'cafe_den_a5223e368e', '.png', 'image/png', 129.34, '/uploads/cafe_den_a5223e368e.png', NULL, 'local', NULL, '/1', '2024-06-22 20:09:05.395000', '2024-06-22 20:09:05.395000', NULL, NULL),
(286, 'cafe mocha.png', NULL, NULL, 786, 487, '{\"thumbnail\":{\"name\":\"thumbnail_cafe mocha.png\",\"hash\":\"thumbnail_cafe_mocha_b58f93924b\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":152,\"size\":101.3,\"sizeInBytes\":101297,\"url\":\"/uploads/thumbnail_cafe_mocha_b58f93924b.png\"},\"small\":{\"name\":\"small_cafe mocha.png\",\"hash\":\"small_cafe_mocha_b58f93924b\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":310,\"size\":389.4,\"sizeInBytes\":389400,\"url\":\"/uploads/small_cafe_mocha_b58f93924b.png\"},\"medium\":{\"name\":\"medium_cafe mocha.png\",\"hash\":\"medium_cafe_mocha_b58f93924b\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":750,\"height\":465,\"size\":809.03,\"sizeInBytes\":809033,\"url\":\"/uploads/medium_cafe_mocha_b58f93924b.png\"}}', 'cafe_mocha_b58f93924b', '.png', 'image/png', 193.89, '/uploads/cafe_mocha_b58f93924b.png', NULL, 'local', NULL, '/1', '2024-06-22 20:10:26.572000', '2024-06-22 20:10:26.572000', NULL, NULL),
(287, 'cafe mocha.png', NULL, NULL, 786, 487, '{\"thumbnail\":{\"name\":\"thumbnail_cafe mocha.png\",\"hash\":\"thumbnail_cafe_mocha_619504f1c6\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":152,\"size\":101.3,\"sizeInBytes\":101297,\"url\":\"/uploads/thumbnail_cafe_mocha_619504f1c6.png\"},\"small\":{\"name\":\"small_cafe mocha.png\",\"hash\":\"small_cafe_mocha_619504f1c6\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":310,\"size\":389.4,\"sizeInBytes\":389400,\"url\":\"/uploads/small_cafe_mocha_619504f1c6.png\"},\"medium\":{\"name\":\"medium_cafe mocha.png\",\"hash\":\"medium_cafe_mocha_619504f1c6\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":750,\"height\":465,\"size\":809.03,\"sizeInBytes\":809033,\"url\":\"/uploads/medium_cafe_mocha_619504f1c6.png\"}}', 'cafe_mocha_619504f1c6', '.png', 'image/png', 193.89, '/uploads/cafe_mocha_619504f1c6.png', NULL, 'local', NULL, '/1', '2024-06-22 20:10:32.695000', '2024-06-22 20:10:32.695000', NULL, NULL),
(288, 'a03s.jpg', NULL, NULL, 600, 600, '{\"thumbnail\":{\"name\":\"thumbnail_a03s.jpg\",\"hash\":\"thumbnail_a03s_b66d12487b\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":156,\"height\":156,\"size\":3.91,\"sizeInBytes\":3913,\"url\":\"/uploads/thumbnail_a03s_b66d12487b.jpg\"},\"small\":{\"name\":\"small_a03s.jpg\",\"hash\":\"small_a03s_b66d12487b\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":500,\"height\":500,\"size\":28.03,\"sizeInBytes\":28027,\"url\":\"/uploads/small_a03s_b66d12487b.jpg\"}}', 'a03s_b66d12487b', '.jpg', 'image/jpeg', 39.05, '/uploads/a03s_b66d12487b.jpg', NULL, 'local', NULL, '/1', '2024-07-04 21:48:36.871000', '2024-07-04 21:48:36.871000', NULL, NULL),
(289, 'a72.jpg', NULL, NULL, 500, 500, '{\"thumbnail\":{\"name\":\"thumbnail_a72.jpg\",\"hash\":\"thumbnail_a72_009ec4c491\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":156,\"height\":156,\"size\":4.19,\"sizeInBytes\":4191,\"url\":\"/uploads/thumbnail_a72_009ec4c491.jpg\"}}', 'a72_009ec4c491', '.jpg', 'image/jpeg', 23.81, '/uploads/a72_009ec4c491.jpg', NULL, 'local', NULL, '/1', '2024-07-06 13:39:53.683000', '2024-07-06 13:39:53.683000', NULL, NULL);
INSERT INTO `files` (`id`, `name`, `alternative_text`, `caption`, `width`, `height`, `formats`, `hash`, `ext`, `mime`, `size`, `url`, `preview_url`, `provider`, `provider_metadata`, `folder_path`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(290, 'iphone-11.webp', NULL, NULL, 470, 477, '{\"thumbnail\":{\"name\":\"thumbnail_iphone-11.webp\",\"hash\":\"thumbnail_iphone_11_36f576dd57\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":154,\"height\":156,\"size\":1.95,\"sizeInBytes\":1954,\"url\":\"/uploads/thumbnail_iphone_11_36f576dd57.webp\"}}', 'iphone_11_36f576dd57', '.webp', 'image/webp', 10.49, '/uploads/iphone_11_36f576dd57.webp', NULL, 'local', NULL, '/1', '2024-07-06 13:40:21.117000', '2024-07-06 13:40:21.117000', NULL, NULL),
(291, 'iphone-11.webp', NULL, NULL, 470, 477, '{\"thumbnail\":{\"name\":\"thumbnail_iphone-11.webp\",\"hash\":\"thumbnail_iphone_11_5a208a476e\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":154,\"height\":156,\"size\":1.95,\"sizeInBytes\":1954,\"url\":\"/uploads/thumbnail_iphone_11_5a208a476e.webp\"}}', 'iphone_11_5a208a476e', '.webp', 'image/webp', 10.49, '/uploads/iphone_11_5a208a476e.webp', NULL, 'local', NULL, '/1', '2024-07-06 13:40:22.651000', '2024-07-06 13:40:22.651000', NULL, NULL),
(292, 'iphone-11.webp', NULL, NULL, 470, 477, '{\"thumbnail\":{\"name\":\"thumbnail_iphone-11.webp\",\"hash\":\"thumbnail_iphone_11_0dda0fe727\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":154,\"height\":156,\"size\":1.95,\"sizeInBytes\":1954,\"url\":\"/uploads/thumbnail_iphone_11_0dda0fe727.webp\"}}', 'iphone_11_0dda0fe727', '.webp', 'image/webp', 10.49, '/uploads/iphone_11_0dda0fe727.webp', NULL, 'local', NULL, '/1', '2024-07-06 13:40:32.112000', '2024-07-06 13:40:32.112000', NULL, NULL),
(293, 'iphone-11.webp', NULL, NULL, 470, 477, '{\"thumbnail\":{\"name\":\"thumbnail_iphone-11.webp\",\"hash\":\"thumbnail_iphone_11_3279046710\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":154,\"height\":156,\"size\":1.95,\"sizeInBytes\":1954,\"url\":\"/uploads/thumbnail_iphone_11_3279046710.webp\"}}', 'iphone_11_3279046710', '.webp', 'image/webp', 10.49, '/uploads/iphone_11_3279046710.webp', NULL, 'local', NULL, '/1', '2024-07-06 13:40:32.943000', '2024-07-06 13:40:32.943000', NULL, NULL),
(294, 'iphone-11.webp', NULL, NULL, 470, 477, '{\"thumbnail\":{\"name\":\"thumbnail_iphone-11.webp\",\"hash\":\"thumbnail_iphone_11_7548f935b3\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":154,\"height\":156,\"size\":1.95,\"sizeInBytes\":1954,\"url\":\"/uploads/thumbnail_iphone_11_7548f935b3.webp\"}}', 'iphone_11_7548f935b3', '.webp', 'image/webp', 10.49, '/uploads/iphone_11_7548f935b3.webp', NULL, 'local', NULL, '/1', '2024-07-06 13:40:33.117000', '2024-07-06 13:40:33.117000', NULL, NULL),
(295, 'iphone-11.webp', NULL, NULL, 470, 477, '{\"thumbnail\":{\"name\":\"thumbnail_iphone-11.webp\",\"hash\":\"thumbnail_iphone_11_19ec8e9765\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":154,\"height\":156,\"size\":1.95,\"sizeInBytes\":1954,\"url\":\"/uploads/thumbnail_iphone_11_19ec8e9765.webp\"}}', 'iphone_11_19ec8e9765', '.webp', 'image/webp', 10.49, '/uploads/iphone_11_19ec8e9765.webp', NULL, 'local', NULL, '/1', '2024-07-06 13:40:33.249000', '2024-07-06 13:40:33.249000', NULL, NULL),
(296, 'iphone-11.webp', NULL, NULL, 470, 477, '{\"thumbnail\":{\"name\":\"thumbnail_iphone-11.webp\",\"hash\":\"thumbnail_iphone_11_d73b466cfe\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":154,\"height\":156,\"size\":1.95,\"sizeInBytes\":1954,\"url\":\"/uploads/thumbnail_iphone_11_d73b466cfe.webp\"}}', 'iphone_11_d73b466cfe', '.webp', 'image/webp', 10.49, '/uploads/iphone_11_d73b466cfe.webp', NULL, 'local', NULL, '/1', '2024-07-06 13:40:36.557000', '2024-07-06 13:40:36.557000', NULL, NULL),
(297, 'iphone-11.webp', NULL, NULL, 470, 477, '{\"thumbnail\":{\"name\":\"thumbnail_iphone-11.webp\",\"hash\":\"thumbnail_iphone_11_fdf73820b4\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":154,\"height\":156,\"size\":1.95,\"sizeInBytes\":1954,\"url\":\"/uploads/thumbnail_iphone_11_fdf73820b4.webp\"}}', 'iphone_11_fdf73820b4', '.webp', 'image/webp', 10.49, '/uploads/iphone_11_fdf73820b4.webp', NULL, 'local', NULL, '/1', '2024-07-06 13:40:37.194000', '2024-07-06 13:40:37.194000', NULL, NULL),
(298, 'iphone-11.webp', NULL, NULL, 470, 477, '{\"thumbnail\":{\"name\":\"thumbnail_iphone-11.webp\",\"hash\":\"thumbnail_iphone_11_1fc13dae1c\",\"ext\":\".webp\",\"mime\":\"image/webp\",\"path\":null,\"width\":154,\"height\":156,\"size\":1.95,\"sizeInBytes\":1954,\"url\":\"/uploads/thumbnail_iphone_11_1fc13dae1c.webp\"}}', 'iphone_11_1fc13dae1c', '.webp', 'image/webp', 10.49, '/uploads/iphone_11_1fc13dae1c.webp', NULL, 'local', NULL, '/1', '2024-07-06 13:40:37.345000', '2024-07-06 13:40:37.345000', NULL, NULL),
(299, 'iphone11b.jpg', NULL, NULL, 500, 500, '{\"thumbnail\":{\"name\":\"thumbnail_iphone11b.jpg\",\"hash\":\"thumbnail_iphone11b_2593238df8\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":156,\"height\":156,\"size\":3.38,\"sizeInBytes\":3381,\"url\":\"/uploads/thumbnail_iphone11b_2593238df8.jpg\"}}', 'iphone11b_2593238df8', '.jpg', 'image/jpeg', 16.54, '/uploads/iphone11b_2593238df8.jpg', NULL, 'local', NULL, '/1', '2024-07-06 13:41:00.328000', '2024-07-06 13:41:00.328000', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `files_folder_links`
--

CREATE TABLE `files_folder_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `file_id` int(10) UNSIGNED DEFAULT NULL,
  `folder_id` int(10) UNSIGNED DEFAULT NULL,
  `file_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `files_folder_links`
--

INSERT INTO `files_folder_links` (`id`, `file_id`, `folder_id`, `file_order`) VALUES
(1, 13, 1, 1),
(2, 14, 1, 2),
(3, 15, 1, 3),
(4, 16, 1, 4),
(5, 17, 1, 5),
(6, 18, 1, 6),
(7, 19, 1, 7),
(8, 20, 1, 8),
(9, 21, 1, 9),
(10, 22, 1, 10),
(11, 23, 1, 11),
(12, 24, 1, 12),
(13, 25, 1, 13),
(14, 26, 1, 14),
(15, 27, 1, 15),
(16, 28, 1, 16),
(17, 29, 1, 17),
(18, 30, 1, 18),
(19, 31, 1, 19),
(20, 32, 1, 20),
(21, 33, 1, 21),
(22, 34, 1, 22),
(23, 35, 1, 23),
(24, 36, 1, 24),
(25, 37, 1, 25),
(26, 38, 1, 26),
(27, 39, 1, 27),
(28, 40, 1, 28),
(29, 41, 1, 29),
(30, 42, 1, 30),
(31, 43, 1, 31),
(32, 44, 1, 32),
(33, 45, 1, 33),
(34, 46, 1, 34),
(35, 47, 1, 35),
(36, 48, 1, 36),
(37, 49, 1, 37),
(38, 50, 1, 38),
(39, 51, 1, 39),
(40, 52, 1, 40),
(41, 53, 1, 41),
(42, 54, 1, 42),
(43, 55, 1, 43),
(44, 56, 1, 44),
(45, 57, 1, 45),
(46, 58, 1, 46),
(47, 59, 1, 47),
(48, 60, 1, 48),
(49, 61, 1, 49),
(50, 62, 1, 50),
(51, 63, 1, 51),
(52, 64, 1, 52),
(53, 65, 1, 53),
(54, 66, 1, 54),
(55, 67, 1, 55),
(56, 68, 1, 56),
(57, 69, 1, 57),
(58, 70, 1, 58),
(59, 71, 1, 59),
(60, 72, 1, 60),
(61, 73, 1, 61),
(62, 74, 1, 62),
(63, 75, 1, 63),
(64, 76, 1, 64),
(65, 77, 1, 65),
(66, 78, 1, 66),
(67, 79, 1, 67),
(68, 80, 1, 68),
(69, 81, 1, 69),
(70, 82, 1, 70),
(71, 83, 1, 71),
(72, 84, 1, 72),
(73, 85, 1, 73),
(74, 86, 1, 74),
(75, 87, 1, 75),
(76, 88, 1, 76),
(77, 89, 1, 77),
(78, 90, 1, 78),
(79, 91, 1, 79),
(80, 92, 1, 80),
(81, 93, 1, 81),
(82, 94, 1, 82),
(83, 95, 1, 83),
(84, 96, 1, 84),
(85, 97, 1, 85),
(86, 98, 1, 86),
(87, 99, 1, 87),
(88, 100, 1, 88),
(89, 101, 1, 89),
(90, 102, 1, 90),
(91, 103, 1, 91),
(92, 104, 1, 92),
(93, 105, 1, 93),
(94, 106, 1, 94),
(95, 107, 1, 95),
(96, 108, 1, 96),
(97, 109, 1, 97),
(98, 110, 1, 98),
(99, 111, 1, 99),
(100, 112, 1, 100),
(101, 113, 1, 101),
(102, 114, 1, 102),
(103, 115, 1, 103),
(104, 116, 1, 104),
(105, 117, 1, 105),
(106, 118, 1, 106),
(107, 119, 1, 107),
(108, 120, 1, 108),
(109, 121, 1, 109),
(110, 122, 1, 110),
(111, 123, 1, 111),
(112, 124, 1, 112),
(113, 125, 1, 113),
(114, 126, 1, 114),
(115, 127, 1, 115),
(116, 128, 1, 116),
(117, 129, 1, 117),
(118, 130, 1, 118),
(119, 131, 1, 119),
(120, 132, 1, 120),
(121, 133, 1, 121),
(122, 134, 1, 122),
(123, 135, 1, 123),
(124, 136, 1, 124),
(125, 137, 1, 125),
(126, 138, 1, 126),
(127, 139, 1, 127),
(128, 140, 1, 128),
(129, 141, 1, 129),
(130, 142, 1, 130),
(131, 143, 1, 131),
(132, 144, 1, 132),
(133, 145, 1, 133),
(134, 146, 1, 134),
(135, 147, 1, 135),
(136, 148, 1, 136),
(137, 149, 1, 137),
(138, 150, 1, 138),
(139, 151, 1, 139),
(140, 152, 1, 140),
(141, 153, 1, 141),
(142, 154, 1, 142),
(143, 155, 1, 143),
(144, 156, 1, 144),
(145, 157, 1, 145),
(146, 158, 1, 146),
(147, 159, 1, 147),
(148, 160, 1, 148),
(149, 161, 1, 149),
(150, 162, 1, 150),
(151, 163, 1, 151),
(152, 164, 1, 151),
(153, 165, 1, 152),
(154, 166, 1, 153),
(155, 167, 1, 154),
(156, 168, 1, 155),
(157, 169, 1, 156),
(158, 170, 1, 157),
(159, 171, 1, 158),
(160, 172, 1, 159),
(161, 174, 1, 160),
(162, 173, 1, 159),
(163, 175, 1, 161),
(164, 176, 1, 162),
(165, 177, 1, 163),
(166, 178, 1, 164),
(167, 179, 1, 165),
(168, 180, 1, 166),
(169, 181, 1, 167),
(170, 182, 1, 168),
(171, 183, 1, 169),
(172, 184, 1, 170),
(173, 185, 1, 171),
(174, 186, 1, 172),
(175, 187, 1, 173),
(176, 188, 1, 174),
(177, 189, 1, 175),
(178, 190, 1, 176),
(179, 191, 1, 177),
(180, 192, 1, 178),
(181, 193, 1, 179),
(182, 194, 1, 180),
(183, 195, 1, 181),
(184, 196, 1, 182),
(185, 197, 1, 183),
(186, 198, 1, 184),
(187, 199, 1, 185),
(188, 200, 1, 186),
(189, 201, 1, 187),
(190, 202, 1, 188),
(191, 203, 1, 189),
(192, 204, 1, 190),
(193, 205, 1, 191),
(194, 207, 1, 191),
(195, 206, 1, 191),
(196, 208, 1, 192),
(197, 209, 1, 193),
(198, 210, 1, 194),
(199, 211, 1, 195),
(200, 212, 1, 195),
(201, 213, 1, 196),
(202, 214, 1, 197),
(203, 215, 1, 198),
(204, 216, 1, 199),
(205, 217, 1, 200),
(206, 218, 1, 201),
(207, 219, 1, 202),
(208, 220, 1, 203),
(209, 221, 1, 204),
(210, 222, 1, 205),
(211, 223, 1, 206),
(212, 224, 1, 207),
(213, 225, 1, 208),
(214, 226, 1, 209),
(215, 227, 1, 210),
(216, 228, 1, 211),
(217, 229, 1, 212),
(218, 230, 1, 213),
(219, 231, 1, 213),
(220, 233, 1, 214),
(221, 232, 1, 214),
(222, 234, 1, 215),
(223, 235, 1, 216),
(224, 236, 1, 217),
(225, 237, 1, 218),
(226, 238, 1, 219),
(227, 239, 1, 220),
(228, 240, 1, 221),
(229, 241, 1, 222),
(230, 242, 1, 223),
(231, 243, 1, 224),
(232, 244, 1, 225),
(233, 245, 1, 226),
(234, 246, 1, 227),
(235, 247, 1, 228),
(236, 248, 1, 229),
(237, 249, 1, 230),
(238, 250, 1, 231),
(239, 251, 1, 232),
(240, 252, 1, 233),
(241, 253, 1, 234),
(242, 254, 1, 235),
(243, 255, 1, 236),
(244, 256, 1, 237),
(245, 257, 1, 238),
(246, 258, 1, 239),
(247, 259, 1, 240),
(248, 260, 1, 241),
(249, 261, 1, 242),
(250, 262, 1, 243),
(251, 263, 1, 244),
(252, 264, 1, 245),
(253, 265, 1, 246),
(254, 266, 1, 247),
(255, 267, 1, 248),
(256, 268, 1, 249),
(257, 269, 1, 250),
(258, 270, 1, 251),
(259, 271, 1, 252),
(260, 272, 1, 253),
(261, 273, 1, 254),
(262, 274, 1, 255),
(263, 275, 1, 256),
(264, 276, 1, 257),
(265, 277, 1, 258),
(266, 278, 1, 259),
(267, 279, 1, 260),
(268, 280, 1, 261),
(269, 281, 1, 262),
(270, 282, 1, 263),
(271, 283, 1, 264),
(272, 284, 1, 265),
(273, 285, 1, 266),
(274, 286, 1, 267),
(275, 287, 1, 268),
(276, 288, 1, 269),
(277, 289, 1, 270),
(278, 290, 1, 271),
(279, 291, 1, 272),
(280, 292, 1, 273),
(281, 293, 1, 274),
(282, 294, 1, 275),
(283, 295, 1, 276),
(284, 296, 1, 277),
(285, 297, 1, 278),
(286, 298, 1, 279),
(287, 299, 1, 280);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `files_related_morphs`
--

CREATE TABLE `files_related_morphs` (
  `id` int(10) UNSIGNED NOT NULL,
  `file_id` int(10) UNSIGNED DEFAULT NULL,
  `related_id` int(10) UNSIGNED DEFAULT NULL,
  `related_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `files_related_morphs`
--

INSERT INTO `files_related_morphs` (`id`, `file_id`, `related_id`, `related_type`, `field`, `order`) VALUES
(62, 5, 6, 'api::category.category', 'image', 1),
(64, 3, 8, 'api::category.category', 'image', 1),
(65, 8, 9, 'api::category.category', 'image', 1),
(103, 8, 3, 'api::product.product', 'image', 1),
(106, 12, 10, 'api::product.product', 'image', 1),
(114, 12, 1, 'api::product.product', 'image', 1),
(116, 11, 6, 'api::product.product', 'image', 1),
(119, 1, 9, 'api::product.product', 'image', 1),
(122, 6, 7, 'api::category.category', 'image', 1),
(123, 1, 3, 'api::category.category', 'image', 1),
(124, 11, 2, 'api::category.category', 'image', 1),
(125, 10, 1, 'api::category.category', 'image', 1),
(127, 11, 4, 'api::product.product', 'image', 1),
(128, 6, 8, 'api::product.product', 'image', 1),
(129, 5, 12, 'api::product.product', 'image', 1),
(142, 12, 5, 'api::product.product', 'image', 1),
(143, 5, 7, 'api::product.product', 'image', 1),
(144, 6, 13, 'api::product.product', 'image', 1),
(156, 266, 26, 'api::product.product', 'image', 1),
(160, 270, 30, 'api::product.product', 'image', 1),
(161, 271, 31, 'api::product.product', 'image', 1),
(162, 272, 32, 'api::product.product', 'image', 1),
(173, 287, 25, 'api::product.product', 'image', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `i18n_locale`
--

CREATE TABLE `i18n_locale` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `i18n_locale`
--

INSERT INTO `i18n_locale` (`id`, `name`, `code`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'English (en)', 'en', '2024-05-27 18:26:21.733000', '2024-05-27 18:26:21.733000', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `parent_id` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `sort_order` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `cat_id` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `is_on_sale` tinyint(1) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `sale_price` int(11) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `product_name`, `cat_id`, `description`, `price`, `is_on_sale`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `sale_price`, `slug`, `brand_id`) VALUES
(1, 'Caffe sữa', '1', 'Cà phê Sữa của chúng tôi là sự kết hợp hoàn hảo giữa cà phê đậm đà và sữa đặc ngọt ngào, mang đến hương vị hài hòa và tinh tế. Đây là thức uống truyền thống phổ biến, rất được ưa chuộng tại Việt Nam. Cà phê Sữa thích hợp để thưởng thức vào buổi sáng ', 500, 0, '2024-05-28 20:18:57.791000', '2024-06-09 11:21:26.646000', '2024-06-03 18:18:04.657000', 1, 1, 0, 'Caffe-sua', 1),
(3, 'Cafe ý', '1', 'Cà phê Ý của chúng tôi là sự kết hợp hoàn hảo từ những hạt cà phê Arabica và Robusta tuyển chọn, mang đậm hương vị đặc trưng của cà phê Ý. Với quy trình rang xay tỉ mỉ, sản phẩm mang đến trải nghiệm thưởng thức cà phê mạnh mẽ, đậm đà, và đầy quyến rũ.', 500, 0, '2024-06-02 21:07:06.266000', '2024-06-09 11:15:14.154000', '2024-06-03 17:16:52.125000', 1, 1, NULL, 'Cafe-Espresso', 1),
(4, 'Caffe sữa nóng', '8', 'Cà phê sữa nóng là một trong những đặc sản quen thuộc và được yêu thích trên khắp thế giới. Với sự kết hợp tinh tế giữa hương vị đắng của cà phê, ngọt ngào của sữa và hương thơm quyến rũ, sản phẩm này mang đến trải nghiệm thưởng thức đầy tinh tế ', 500, 1, '2024-06-02 21:11:40.409000', '2024-06-09 14:51:10.403000', '2024-06-03 17:17:18.994000', 1, 1, 10, 'Cafe-Flat-White', 8),
(5, 'Caffe Mocha', '7', 'Cà phê Mocha của chúng tôi là sự kết hợp hoàn hảo giữa cà phê espresso đậm đà, sô cô la ngọt ngào và sữa mịn màng. Đây là loại cà phê lý tưởng cho những ai yêu thích vị ngọt nhẹ và sự pha trộn độc đáo của cà phê và sô cô la. ', 500, 1, '2024-06-02 21:15:28.959000', '2024-06-17 19:20:51.320000', '2024-06-03 18:16:10.267000', 1, 1, 10, 'Cafe-Mocha-1', 7),
(6, 'Caffe sữa', '1', 'Cà phê Sữa của chúng tôi là sự kết hợp hoàn hảo giữa cà phê đậm đà và sữa đặc ngọt ngào, mang đến hương vị hài hòa và tinh tế. Đây là thức uống truyền thống phổ biến, rất được ưa chuộng tại Việt Nam. Cà phê Sữa thích hợp để thưởng thức vào buổi sáng ', 500, 1, '2024-06-03 18:09:27.044000', '2024-06-09 11:21:47.097000', '2024-06-03 18:09:54.279000', 1, 1, NULL, 'Cafe-sua', 1),
(7, 'Caffe Mocha', '7', 'Hương vị đa tầng: Sự kết hợp giữa vị đắng nhẹ của cà phê espresso và vị ngọt ngào của sô cô la, cùng với sự mịn màng của sữa, tạo nên một hương vị phong phú và cân bằng. Chất lượng cao: Sử dụng cà phê Arabica chất lượng cao và sô cô la nguyên chất, ', 500, 0, '2024-06-03 18:11:16.192000', '2024-06-17 19:21:03.844000', '2024-06-03 18:11:40.569000', 1, 1, NULL, 'Caffe-Mocha-2', 7),
(8, 'Caffe sữa nóng', '1', 'Cà phê sữa nóng là một trong những đặc sản quen thuộc và được yêu thích trên khắp thế giới. Với sự kết hợp tinh tế giữa hương vị đắng của cà phê, ngọt ngào của sữa và hương thơm quyến rũ, sản phẩm này mang đến trải nghiệm thưởng thức đầy tinh tế ', 500, 0, '2024-06-03 18:12:36.096000', '2024-06-09 14:51:52.527000', '2024-06-03 18:12:39.334000', 1, 1, NULL, 'Cafe-Flat-White', 1),
(9, 'Cafe truyền thống', '3', 'Cà phê Truyền Thống được làm từ hạt cà phê Arabica và Robusta tuyển chọn từ Buôn Ma Thuột, Đà Lạt và Sơn La. Với hương vị đậm đà, hậu vị kéo dài và quy trình rang xay tỉ mỉ, sản phẩm mang lại trải nghiệm cà phê tinh túy nhất. ', 500, 0, '2024-06-03 20:57:48.524000', '2024-06-09 14:31:48.492000', '2024-06-03 20:58:05.649000', 1, 1, NULL, 'Cafe-truyen-thong', 3),
(10, 'Caffe đen đá', '3', 'Cà phê Đen Đá của chúng tôi mang đến hương vị đậm đà, nguyên bản của cà phê Việt Nam. Được chế biến từ những hạt cà phê Arabica và Robusta tuyển chọn, sản phẩm này giữ nguyên hương vị mạnh mẽ, thơm ngon, lý tưởng cho những ai yêu thích vị cà phê đậm đặc. ', 500, 1, '2024-06-04 16:46:10.125000', '2024-06-09 11:17:29.401000', '2024-06-04 16:46:34.376000', 1, 1, NULL, 'Cafe-den-da', 3),
(12, 'cafe', '9', ' Cà phê Americano  Mô tả sản phẩm:  Cà phê Americano là loại cà phê đơn giản và tinh tế, được tạo ra bằng cách thêm nước vào cà phê espresso. Với hương vị đậm đà và thanh mát, cà phê Americano là lựa chọn lý tưởng cho những người yêu thích vị đắng ', 500, 1, '2024-06-04 16:49:00.874000', '2024-06-10 23:00:48.862000', '2024-06-04 16:49:21.479000', 1, 1, NULL, 'cafe', 9),
(13, 'Caffe Mocha', '7', 'Cà phê espresso (100% hạt cà phê Arabica) Sô cô la nguyên chất Sữa tươi', 500, 1, '2024-06-04 16:50:27.664000', '2024-06-17 19:21:11.004000', '2024-06-04 16:50:46.052000', 1, 1, NULL, 'Cafe-Mocha-3', 7),
(25, 'vi du098', '3', '', 500, 0, '2024-06-17 21:10:09.675000', '2024-06-22 20:10:32.738000', '2024-06-17 21:10:09.673000', NULL, NULL, 0, 'vi-du', 2),
(26, 'Caffe Chồn123', '3', '', 500, 0, '2024-06-17 21:14:45.891000', '2024-06-17 21:14:45.891000', '2024-06-17 21:14:45.889000', NULL, NULL, 0, 'vi-du', 1),
(30, 'Caffe Chồn123', '3', '', 500, 0, '2024-06-17 21:32:42.002000', '2024-06-17 21:32:42.002000', '2024-06-17 21:32:42.000000', NULL, NULL, 0, 'vi-du', 2),
(31, 'vdfdfdfdfdfdfdfd', '3', '', 500, 0, '2024-06-17 21:34:05.415000', '2024-06-17 21:34:05.415000', '2024-06-17 21:34:05.413000', NULL, NULL, 0, 'vi-du', 2),
(32, 'vdfdfdfdfdfdfdfd', '3', 'um,jkjjkmjhjjmmhmnhtnrh th tht', 500, 0, '2024-06-17 21:34:14.791000', '2024-06-17 21:34:14.791000', '2024-06-17 21:34:14.789000', NULL, NULL, 0, 'vi-du', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products_category_links`
--

CREATE TABLE `products_category_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `product_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products_category_links`
--

INSERT INTO `products_category_links` (`id`, `product_id`, `category_id`, `product_order`) VALUES
(13, 8, 8, NULL),
(25, 13, 7, 1),
(31, 9, 3, 2),
(32, 5, 7, 2),
(33, 7, 7, 3),
(35, 1, 3, 4),
(36, 10, 3, 3),
(37, 4, 2, 3),
(39, 3, 1, 2),
(40, 6, 1, 1),
(41, 12, 9, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sliders`
--

CREATE TABLE `sliders` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `strapi_api_tokens`
--

CREATE TABLE `strapi_api_tokens` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `access_key` varchar(255) DEFAULT NULL,
  `last_used_at` datetime(6) DEFAULT NULL,
  `expires_at` datetime(6) DEFAULT NULL,
  `lifespan` bigint(20) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `strapi_api_token_permissions`
--

CREATE TABLE `strapi_api_token_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `action` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `strapi_api_token_permissions_token_links`
--

CREATE TABLE `strapi_api_token_permissions_token_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `api_token_permission_id` int(10) UNSIGNED DEFAULT NULL,
  `api_token_id` int(10) UNSIGNED DEFAULT NULL,
  `api_token_permission_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `strapi_core_store_settings`
--

CREATE TABLE `strapi_core_store_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) DEFAULT NULL,
  `value` longtext DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `environment` varchar(255) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `strapi_core_store_settings`
--

INSERT INTO `strapi_core_store_settings` (`id`, `key`, `value`, `type`, `environment`, `tag`) VALUES
(1, 'strapi_content_types_schema', '{\"admin::permission\":{\"collectionName\":\"admin_permissions\",\"info\":{\"name\":\"Permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"actionParameters\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":{}},\"subject\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false},\"properties\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":{}},\"conditions\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":[]},\"role\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::role\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"admin_permissions\",\"info\":{\"name\":\"Permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"actionParameters\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":{}},\"subject\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false},\"properties\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":{}},\"conditions\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":[]},\"role\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::role\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"permission\",\"connection\":\"default\",\"uid\":\"admin::permission\",\"plugin\":\"admin\",\"globalId\":\"AdminPermission\"},\"admin::user\":{\"collectionName\":\"admin_users\",\"info\":{\"name\":\"User\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"firstname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"lastname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"username\":{\"type\":\"string\",\"unique\":false,\"configurable\":false,\"required\":false},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true,\"unique\":true,\"private\":true},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"required\":false,\"private\":true,\"searchable\":false},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"registrationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"isActive\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"roles\":{\"configurable\":false,\"private\":true,\"type\":\"relation\",\"relation\":\"manyToMany\",\"inversedBy\":\"users\",\"target\":\"admin::role\",\"collectionName\":\"strapi_users_roles\"},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"preferedLanguage\":{\"type\":\"string\",\"configurable\":false,\"required\":false,\"searchable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"config\":{\"attributes\":{\"resetPasswordToken\":{\"hidden\":true},\"registrationToken\":{\"hidden\":true}}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"admin_users\",\"info\":{\"name\":\"User\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"firstname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"lastname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"username\":{\"type\":\"string\",\"unique\":false,\"configurable\":false,\"required\":false},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true,\"unique\":true,\"private\":true},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"required\":false,\"private\":true,\"searchable\":false},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"registrationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"isActive\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"roles\":{\"configurable\":false,\"private\":true,\"type\":\"relation\",\"relation\":\"manyToMany\",\"inversedBy\":\"users\",\"target\":\"admin::role\",\"collectionName\":\"strapi_users_roles\"},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"preferedLanguage\":{\"type\":\"string\",\"configurable\":false,\"required\":false,\"searchable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"user\",\"connection\":\"default\",\"uid\":\"admin::user\",\"plugin\":\"admin\",\"globalId\":\"AdminUser\"},\"admin::role\":{\"collectionName\":\"admin_roles\",\"info\":{\"name\":\"Role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"code\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"description\":{\"type\":\"string\",\"configurable\":false},\"users\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToMany\",\"mappedBy\":\"roles\",\"target\":\"admin::user\"},\"permissions\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"oneToMany\",\"mappedBy\":\"role\",\"target\":\"admin::permission\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"admin_roles\",\"info\":{\"name\":\"Role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"code\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"description\":{\"type\":\"string\",\"configurable\":false},\"users\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToMany\",\"mappedBy\":\"roles\",\"target\":\"admin::user\"},\"permissions\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"oneToMany\",\"mappedBy\":\"role\",\"target\":\"admin::permission\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"role\",\"connection\":\"default\",\"uid\":\"admin::role\",\"plugin\":\"admin\",\"globalId\":\"AdminRole\"},\"admin::api-token\":{\"collectionName\":\"strapi_api_tokens\",\"info\":{\"name\":\"Api Token\",\"singularName\":\"api-token\",\"pluralName\":\"api-tokens\",\"displayName\":\"Api Token\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"unique\":true},\"description\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false,\"default\":\"\"},\"type\":{\"type\":\"enumeration\",\"enum\":[\"read-only\",\"full-access\",\"custom\"],\"configurable\":false,\"required\":true,\"default\":\"read-only\"},\"accessKey\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"searchable\":false},\"lastUsedAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"permissions\":{\"type\":\"relation\",\"target\":\"admin::api-token-permission\",\"relation\":\"oneToMany\",\"mappedBy\":\"token\",\"configurable\":false,\"required\":false},\"expiresAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"lifespan\":{\"type\":\"biginteger\",\"configurable\":false,\"required\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_api_tokens\",\"info\":{\"name\":\"Api Token\",\"singularName\":\"api-token\",\"pluralName\":\"api-tokens\",\"displayName\":\"Api Token\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"unique\":true},\"description\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false,\"default\":\"\"},\"type\":{\"type\":\"enumeration\",\"enum\":[\"read-only\",\"full-access\",\"custom\"],\"configurable\":false,\"required\":true,\"default\":\"read-only\"},\"accessKey\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"searchable\":false},\"lastUsedAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"permissions\":{\"type\":\"relation\",\"target\":\"admin::api-token-permission\",\"relation\":\"oneToMany\",\"mappedBy\":\"token\",\"configurable\":false,\"required\":false},\"expiresAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"lifespan\":{\"type\":\"biginteger\",\"configurable\":false,\"required\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"api-token\",\"connection\":\"default\",\"uid\":\"admin::api-token\",\"plugin\":\"admin\",\"globalId\":\"AdminApiToken\"},\"admin::api-token-permission\":{\"collectionName\":\"strapi_api_token_permissions\",\"info\":{\"name\":\"API Token Permission\",\"description\":\"\",\"singularName\":\"api-token-permission\",\"pluralName\":\"api-token-permissions\",\"displayName\":\"API Token Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"token\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::api-token\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_api_token_permissions\",\"info\":{\"name\":\"API Token Permission\",\"description\":\"\",\"singularName\":\"api-token-permission\",\"pluralName\":\"api-token-permissions\",\"displayName\":\"API Token Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"token\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::api-token\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"api-token-permission\",\"connection\":\"default\",\"uid\":\"admin::api-token-permission\",\"plugin\":\"admin\",\"globalId\":\"AdminApiTokenPermission\"},\"admin::transfer-token\":{\"collectionName\":\"strapi_transfer_tokens\",\"info\":{\"name\":\"Transfer Token\",\"singularName\":\"transfer-token\",\"pluralName\":\"transfer-tokens\",\"displayName\":\"Transfer Token\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"unique\":true},\"description\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false,\"default\":\"\"},\"accessKey\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"lastUsedAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"permissions\":{\"type\":\"relation\",\"target\":\"admin::transfer-token-permission\",\"relation\":\"oneToMany\",\"mappedBy\":\"token\",\"configurable\":false,\"required\":false},\"expiresAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"lifespan\":{\"type\":\"biginteger\",\"configurable\":false,\"required\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_transfer_tokens\",\"info\":{\"name\":\"Transfer Token\",\"singularName\":\"transfer-token\",\"pluralName\":\"transfer-tokens\",\"displayName\":\"Transfer Token\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"unique\":true},\"description\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false,\"default\":\"\"},\"accessKey\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"lastUsedAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"permissions\":{\"type\":\"relation\",\"target\":\"admin::transfer-token-permission\",\"relation\":\"oneToMany\",\"mappedBy\":\"token\",\"configurable\":false,\"required\":false},\"expiresAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"lifespan\":{\"type\":\"biginteger\",\"configurable\":false,\"required\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"transfer-token\",\"connection\":\"default\",\"uid\":\"admin::transfer-token\",\"plugin\":\"admin\",\"globalId\":\"AdminTransferToken\"},\"admin::transfer-token-permission\":{\"collectionName\":\"strapi_transfer_token_permissions\",\"info\":{\"name\":\"Transfer Token Permission\",\"description\":\"\",\"singularName\":\"transfer-token-permission\",\"pluralName\":\"transfer-token-permissions\",\"displayName\":\"Transfer Token Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"token\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::transfer-token\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_transfer_token_permissions\",\"info\":{\"name\":\"Transfer Token Permission\",\"description\":\"\",\"singularName\":\"transfer-token-permission\",\"pluralName\":\"transfer-token-permissions\",\"displayName\":\"Transfer Token Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"token\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::transfer-token\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"transfer-token-permission\",\"connection\":\"default\",\"uid\":\"admin::transfer-token-permission\",\"plugin\":\"admin\",\"globalId\":\"AdminTransferTokenPermission\"},\"plugin::upload.file\":{\"collectionName\":\"files\",\"info\":{\"singularName\":\"file\",\"pluralName\":\"files\",\"displayName\":\"File\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"alternativeText\":{\"type\":\"string\",\"configurable\":false},\"caption\":{\"type\":\"string\",\"configurable\":false},\"width\":{\"type\":\"integer\",\"configurable\":false},\"height\":{\"type\":\"integer\",\"configurable\":false},\"formats\":{\"type\":\"json\",\"configurable\":false},\"hash\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"ext\":{\"type\":\"string\",\"configurable\":false},\"mime\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"size\":{\"type\":\"decimal\",\"configurable\":false,\"required\":true},\"url\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"previewUrl\":{\"type\":\"string\",\"configurable\":false},\"provider\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"provider_metadata\":{\"type\":\"json\",\"configurable\":false},\"related\":{\"type\":\"relation\",\"relation\":\"morphToMany\",\"configurable\":false},\"folder\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::upload.folder\",\"inversedBy\":\"files\",\"private\":true},\"folderPath\":{\"type\":\"string\",\"min\":1,\"required\":true,\"private\":true,\"searchable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"indexes\":[{\"name\":\"upload_files_folder_path_index\",\"columns\":[\"folder_path\"],\"type\":null},{\"name\":\"upload_files_created_at_index\",\"columns\":[\"created_at\"],\"type\":null},{\"name\":\"upload_files_updated_at_index\",\"columns\":[\"updated_at\"],\"type\":null},{\"name\":\"upload_files_name_index\",\"columns\":[\"name\"],\"type\":null},{\"name\":\"upload_files_size_index\",\"columns\":[\"size\"],\"type\":null},{\"name\":\"upload_files_ext_index\",\"columns\":[\"ext\"],\"type\":null}],\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"files\",\"info\":{\"singularName\":\"file\",\"pluralName\":\"files\",\"displayName\":\"File\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"alternativeText\":{\"type\":\"string\",\"configurable\":false},\"caption\":{\"type\":\"string\",\"configurable\":false},\"width\":{\"type\":\"integer\",\"configurable\":false},\"height\":{\"type\":\"integer\",\"configurable\":false},\"formats\":{\"type\":\"json\",\"configurable\":false},\"hash\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"ext\":{\"type\":\"string\",\"configurable\":false},\"mime\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"size\":{\"type\":\"decimal\",\"configurable\":false,\"required\":true},\"url\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"previewUrl\":{\"type\":\"string\",\"configurable\":false},\"provider\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"provider_metadata\":{\"type\":\"json\",\"configurable\":false},\"related\":{\"type\":\"relation\",\"relation\":\"morphToMany\",\"configurable\":false},\"folder\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::upload.folder\",\"inversedBy\":\"files\",\"private\":true},\"folderPath\":{\"type\":\"string\",\"min\":1,\"required\":true,\"private\":true,\"searchable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"file\",\"connection\":\"default\",\"uid\":\"plugin::upload.file\",\"plugin\":\"upload\",\"globalId\":\"UploadFile\"},\"plugin::upload.folder\":{\"collectionName\":\"upload_folders\",\"info\":{\"singularName\":\"folder\",\"pluralName\":\"folders\",\"displayName\":\"Folder\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"required\":true},\"pathId\":{\"type\":\"integer\",\"unique\":true,\"required\":true},\"parent\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::upload.folder\",\"inversedBy\":\"children\"},\"children\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.folder\",\"mappedBy\":\"parent\"},\"files\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.file\",\"mappedBy\":\"folder\"},\"path\":{\"type\":\"string\",\"min\":1,\"required\":true},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"indexes\":[{\"name\":\"upload_folders_path_id_index\",\"columns\":[\"path_id\"],\"type\":\"unique\"},{\"name\":\"upload_folders_path_index\",\"columns\":[\"path\"],\"type\":\"unique\"}],\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"upload_folders\",\"info\":{\"singularName\":\"folder\",\"pluralName\":\"folders\",\"displayName\":\"Folder\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"required\":true},\"pathId\":{\"type\":\"integer\",\"unique\":true,\"required\":true},\"parent\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::upload.folder\",\"inversedBy\":\"children\"},\"children\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.folder\",\"mappedBy\":\"parent\"},\"files\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.file\",\"mappedBy\":\"folder\"},\"path\":{\"type\":\"string\",\"min\":1,\"required\":true}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"folder\",\"connection\":\"default\",\"uid\":\"plugin::upload.folder\",\"plugin\":\"upload\",\"globalId\":\"UploadFolder\"},\"plugin::content-releases.release\":{\"collectionName\":\"strapi_releases\",\"info\":{\"singularName\":\"release\",\"pluralName\":\"releases\",\"displayName\":\"Release\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"required\":true},\"releasedAt\":{\"type\":\"datetime\"},\"scheduledAt\":{\"type\":\"datetime\"},\"timezone\":{\"type\":\"string\"},\"status\":{\"type\":\"enumeration\",\"enum\":[\"ready\",\"blocked\",\"failed\",\"done\",\"empty\"],\"required\":true},\"actions\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::content-releases.release-action\",\"mappedBy\":\"release\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_releases\",\"info\":{\"singularName\":\"release\",\"pluralName\":\"releases\",\"displayName\":\"Release\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"required\":true},\"releasedAt\":{\"type\":\"datetime\"},\"scheduledAt\":{\"type\":\"datetime\"},\"timezone\":{\"type\":\"string\"},\"status\":{\"type\":\"enumeration\",\"enum\":[\"ready\",\"blocked\",\"failed\",\"done\",\"empty\"],\"required\":true},\"actions\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::content-releases.release-action\",\"mappedBy\":\"release\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"release\",\"connection\":\"default\",\"uid\":\"plugin::content-releases.release\",\"plugin\":\"content-releases\",\"globalId\":\"ContentReleasesRelease\"},\"plugin::content-releases.release-action\":{\"collectionName\":\"strapi_release_actions\",\"info\":{\"singularName\":\"release-action\",\"pluralName\":\"release-actions\",\"displayName\":\"Release Action\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"type\":{\"type\":\"enumeration\",\"enum\":[\"publish\",\"unpublish\"],\"required\":true},\"entry\":{\"type\":\"relation\",\"relation\":\"morphToOne\",\"configurable\":false},\"contentType\":{\"type\":\"string\",\"required\":true},\"locale\":{\"type\":\"string\"},\"release\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::content-releases.release\",\"inversedBy\":\"actions\"},\"isEntryValid\":{\"type\":\"boolean\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_release_actions\",\"info\":{\"singularName\":\"release-action\",\"pluralName\":\"release-actions\",\"displayName\":\"Release Action\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"type\":{\"type\":\"enumeration\",\"enum\":[\"publish\",\"unpublish\"],\"required\":true},\"entry\":{\"type\":\"relation\",\"relation\":\"morphToOne\",\"configurable\":false},\"contentType\":{\"type\":\"string\",\"required\":true},\"locale\":{\"type\":\"string\"},\"release\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::content-releases.release\",\"inversedBy\":\"actions\"},\"isEntryValid\":{\"type\":\"boolean\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"release-action\",\"connection\":\"default\",\"uid\":\"plugin::content-releases.release-action\",\"plugin\":\"content-releases\",\"globalId\":\"ContentReleasesReleaseAction\"},\"plugin::users-permissions.permission\":{\"collectionName\":\"up_permissions\",\"info\":{\"name\":\"permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"permissions\",\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"up_permissions\",\"info\":{\"name\":\"permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"permissions\",\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"permission\",\"connection\":\"default\",\"uid\":\"plugin::users-permissions.permission\",\"plugin\":\"users-permissions\",\"globalId\":\"UsersPermissionsPermission\"},\"plugin::users-permissions.role\":{\"collectionName\":\"up_roles\",\"info\":{\"name\":\"role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":3,\"required\":true,\"configurable\":false},\"description\":{\"type\":\"string\",\"configurable\":false},\"type\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"permissions\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.permission\",\"mappedBy\":\"role\",\"configurable\":false},\"users\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.user\",\"mappedBy\":\"role\",\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"up_roles\",\"info\":{\"name\":\"role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":3,\"required\":true,\"configurable\":false},\"description\":{\"type\":\"string\",\"configurable\":false},\"type\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"permissions\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.permission\",\"mappedBy\":\"role\",\"configurable\":false},\"users\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.user\",\"mappedBy\":\"role\",\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"role\",\"connection\":\"default\",\"uid\":\"plugin::users-permissions.role\",\"plugin\":\"users-permissions\",\"globalId\":\"UsersPermissionsRole\"},\"plugin::users-permissions.user\":{\"collectionName\":\"up_users\",\"info\":{\"name\":\"user\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"options\":{\"draftAndPublish\":false},\"attributes\":{\"username\":{\"type\":\"string\",\"minLength\":3,\"unique\":true,\"configurable\":false,\"required\":true},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true},\"provider\":{\"type\":\"string\",\"configurable\":false},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"private\":true,\"searchable\":false},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"confirmationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"confirmed\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"users\",\"configurable\":false},\"phone\":{\"type\":\"string\"},\"address\":{\"type\":\"string\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"config\":{\"attributes\":{\"resetPasswordToken\":{\"hidden\":true},\"confirmationToken\":{\"hidden\":true},\"provider\":{\"hidden\":true}}},\"kind\":\"collectionType\",\"__filename__\":\"schema.json\",\"__schema__\":{\"collectionName\":\"up_users\",\"info\":{\"name\":\"user\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"options\":{\"draftAndPublish\":false},\"attributes\":{\"username\":{\"type\":\"string\",\"minLength\":3,\"unique\":true,\"configurable\":false,\"required\":true},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true},\"provider\":{\"type\":\"string\",\"configurable\":false},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"private\":true,\"searchable\":false},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"confirmationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"confirmed\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"users\",\"configurable\":false},\"phone\":{\"type\":\"string\"},\"address\":{\"type\":\"string\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"user\",\"connection\":\"default\",\"uid\":\"plugin::users-permissions.user\",\"plugin\":\"users-permissions\",\"globalId\":\"UsersPermissionsUser\"},\"plugin::i18n.locale\":{\"info\":{\"singularName\":\"locale\",\"pluralName\":\"locales\",\"collectionName\":\"locales\",\"displayName\":\"Locale\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"max\":50,\"configurable\":false},\"code\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"info\":{\"singularName\":\"locale\",\"pluralName\":\"locales\",\"collectionName\":\"locales\",\"displayName\":\"Locale\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"max\":50,\"configurable\":false},\"code\":{\"type\":\"string\",\"unique\":true,\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"locale\",\"connection\":\"default\",\"uid\":\"plugin::i18n.locale\",\"plugin\":\"i18n\",\"collectionName\":\"i18n_locale\",\"globalId\":\"I18NLocale\"},\"api::brand.brand\":{\"kind\":\"collectionType\",\"collectionName\":\"brands\",\"info\":{\"singularName\":\"brand\",\"pluralName\":\"brands\",\"displayName\":\"Brand\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"brand_name\":{\"type\":\"string\"},\"slug\":{\"type\":\"string\"},\"address\":{\"type\":\"string\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"brands\",\"info\":{\"singularName\":\"brand\",\"pluralName\":\"brands\",\"displayName\":\"Brand\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"brand_name\":{\"type\":\"string\"},\"slug\":{\"type\":\"string\"},\"address\":{\"type\":\"string\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"brand\",\"connection\":\"default\",\"uid\":\"api::brand.brand\",\"apiName\":\"brand\",\"globalId\":\"Brand\",\"actions\":{},\"lifecycles\":{}},\"api::category.category\":{\"kind\":\"collectionType\",\"collectionName\":\"categories\",\"info\":{\"singularName\":\"category\",\"pluralName\":\"categories\",\"displayName\":\"category\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"category_name\":{\"type\":\"string\"},\"slug\":{\"type\":\"string\"},\"parent_id\":{\"type\":\"integer\"},\"status\":{\"type\":\"string\",\"default\":\"0\"},\"image\":{\"type\":\"media\",\"multiple\":false,\"required\":false,\"allowedTypes\":[\"images\",\"files\",\"videos\",\"audios\"]},\"products\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::product.product\",\"mappedBy\":\"category\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"categories\",\"info\":{\"singularName\":\"category\",\"pluralName\":\"categories\",\"displayName\":\"category\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"category_name\":{\"type\":\"string\"},\"slug\":{\"type\":\"string\"},\"parent_id\":{\"type\":\"integer\"},\"status\":{\"type\":\"string\",\"default\":\"0\"},\"image\":{\"type\":\"media\",\"multiple\":false,\"required\":false,\"allowedTypes\":[\"images\",\"files\",\"videos\",\"audios\"]},\"products\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::product.product\",\"mappedBy\":\"category\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"category\",\"connection\":\"default\",\"uid\":\"api::category.category\",\"apiName\":\"category\",\"globalId\":\"Category\",\"actions\":{},\"lifecycles\":{}},\"api::menu.menu\":{\"kind\":\"collectionType\",\"collectionName\":\"menus\",\"info\":{\"singularName\":\"menu\",\"pluralName\":\"menus\",\"displayName\":\"Menu\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"name\":{\"type\":\"string\"},\"link\":{\"type\":\"string\"},\"parent_id\":{\"type\":\"string\"},\"position\":{\"type\":\"string\"},\"status\":{\"type\":\"string\"},\"sort_order\":{\"type\":\"string\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"menus\",\"info\":{\"singularName\":\"menu\",\"pluralName\":\"menus\",\"displayName\":\"Menu\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"name\":{\"type\":\"string\"},\"link\":{\"type\":\"string\"},\"parent_id\":{\"type\":\"string\"},\"position\":{\"type\":\"string\"},\"status\":{\"type\":\"string\"},\"sort_order\":{\"type\":\"string\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"menu\",\"connection\":\"default\",\"uid\":\"api::menu.menu\",\"apiName\":\"menu\",\"globalId\":\"Menu\",\"actions\":{},\"lifecycles\":{}},\"api::product.product\":{\"kind\":\"collectionType\",\"collectionName\":\"products\",\"info\":{\"singularName\":\"product\",\"pluralName\":\"products\",\"displayName\":\"Product\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"product_name\":{\"type\":\"string\"},\"cat_id\":{\"type\":\"string\"},\"description\":{\"type\":\"string\"},\"price\":{\"type\":\"integer\"},\"is_on_sale\":{\"type\":\"boolean\"},\"sale_price\":{\"type\":\"integer\"},\"image\":{\"allowedTypes\":[\"images\",\"files\",\"videos\",\"audios\"],\"type\":\"media\",\"multiple\":false},\"slug\":{\"type\":\"string\"},\"brand_id\":{\"type\":\"integer\"},\"category\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"api::category.category\",\"inversedBy\":\"products\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"products\",\"info\":{\"singularName\":\"product\",\"pluralName\":\"products\",\"displayName\":\"Product\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"product_name\":{\"type\":\"string\"},\"cat_id\":{\"type\":\"string\"},\"description\":{\"type\":\"string\"},\"price\":{\"type\":\"integer\"},\"is_on_sale\":{\"type\":\"boolean\"},\"sale_price\":{\"type\":\"integer\"},\"image\":{\"allowedTypes\":[\"images\",\"files\",\"videos\",\"audios\"],\"type\":\"media\",\"multiple\":false},\"slug\":{\"type\":\"string\"},\"brand_id\":{\"type\":\"integer\"},\"category\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"api::category.category\",\"inversedBy\":\"products\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"product\",\"connection\":\"default\",\"uid\":\"api::product.product\",\"apiName\":\"product\",\"globalId\":\"Product\",\"actions\":{},\"lifecycles\":{}},\"api::slider.slider\":{\"kind\":\"collectionType\",\"collectionName\":\"sliders\",\"info\":{\"singularName\":\"slider\",\"pluralName\":\"sliders\",\"displayName\":\"Slider\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"name\":{\"type\":\"string\"},\"position\":{\"type\":\"string\"},\"image\":{\"allowedTypes\":[\"images\",\"files\",\"videos\",\"audios\"],\"type\":\"media\",\"multiple\":false},\"sort_order\":{\"type\":\"integer\"},\"status\":{\"type\":\"string\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"sliders\",\"info\":{\"singularName\":\"slider\",\"pluralName\":\"sliders\",\"displayName\":\"Slider\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"name\":{\"type\":\"string\"},\"position\":{\"type\":\"string\"},\"image\":{\"allowedTypes\":[\"images\",\"files\",\"videos\",\"audios\"],\"type\":\"media\",\"multiple\":false},\"sort_order\":{\"type\":\"integer\"},\"status\":{\"type\":\"string\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"slider\",\"connection\":\"default\",\"uid\":\"api::slider.slider\",\"apiName\":\"slider\",\"globalId\":\"Slider\",\"actions\":{},\"lifecycles\":{}},\"api::use.use\":{\"kind\":\"collectionType\",\"collectionName\":\"uses\",\"info\":{\"singularName\":\"use\",\"pluralName\":\"uses\",\"displayName\":\"Use\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"username\":{\"type\":\"string\"},\"phone\":{\"type\":\"string\"},\"email\":{\"type\":\"email\"},\"address\":{\"type\":\"string\"},\"password\":{\"type\":\"password\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"uses\",\"info\":{\"singularName\":\"use\",\"pluralName\":\"uses\",\"displayName\":\"Use\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"username\":{\"type\":\"string\"},\"phone\":{\"type\":\"string\"},\"email\":{\"type\":\"email\"},\"address\":{\"type\":\"string\"},\"password\":{\"type\":\"password\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"use\",\"connection\":\"default\",\"uid\":\"api::use.use\",\"apiName\":\"use\",\"globalId\":\"Use\",\"actions\":{},\"lifecycles\":{}}}', 'object', NULL, NULL);
INSERT INTO `strapi_core_store_settings` (`id`, `key`, `value`, `type`, `environment`, `tag`) VALUES
(2, 'plugin_content_manager_configuration_content_types::admin::user', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"firstname\",\"defaultSortBy\":\"firstname\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"firstname\":{\"edit\":{\"label\":\"firstname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"firstname\",\"searchable\":true,\"sortable\":true}},\"lastname\":{\"edit\":{\"label\":\"lastname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lastname\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"email\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"resetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"resetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"registrationToken\":{\"edit\":{\"label\":\"registrationToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"registrationToken\",\"searchable\":true,\"sortable\":true}},\"isActive\":{\"edit\":{\"label\":\"isActive\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"isActive\",\"searchable\":true,\"sortable\":true}},\"roles\":{\"edit\":{\"label\":\"roles\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"roles\",\"searchable\":false,\"sortable\":false}},\"blocked\":{\"edit\":{\"label\":\"blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"blocked\",\"searchable\":true,\"sortable\":true}},\"preferedLanguage\":{\"edit\":{\"label\":\"preferedLanguage\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"preferedLanguage\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"firstname\",\"lastname\",\"username\"],\"edit\":[[{\"name\":\"firstname\",\"size\":6},{\"name\":\"lastname\",\"size\":6}],[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"isActive\",\"size\":4}],[{\"name\":\"roles\",\"size\":6},{\"name\":\"blocked\",\"size\":4}],[{\"name\":\"preferedLanguage\",\"size\":6}]]},\"uid\":\"admin::user\"}', 'object', NULL, NULL),
(3, 'plugin_content_manager_configuration_content_types::admin::role', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"code\":{\"edit\":{\"label\":\"code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"code\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"users\":{\"edit\":{\"label\":\"users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"users\",\"searchable\":false,\"sortable\":false}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"code\",\"description\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"code\",\"size\":6}],[{\"name\":\"description\",\"size\":6},{\"name\":\"users\",\"size\":6}],[{\"name\":\"permissions\",\"size\":6}]]},\"uid\":\"admin::role\"}', 'object', NULL, NULL),
(4, 'plugin_content_manager_configuration_content_types::admin::permission', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"action\",\"searchable\":true,\"sortable\":true}},\"actionParameters\":{\"edit\":{\"label\":\"actionParameters\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"actionParameters\",\"searchable\":false,\"sortable\":false}},\"subject\":{\"edit\":{\"label\":\"subject\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"subject\",\"searchable\":true,\"sortable\":true}},\"properties\":{\"edit\":{\"label\":\"properties\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"properties\",\"searchable\":false,\"sortable\":false}},\"conditions\":{\"edit\":{\"label\":\"conditions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"conditions\",\"searchable\":false,\"sortable\":false}},\"role\":{\"edit\":{\"label\":\"role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"role\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"subject\",\"role\"],\"edit\":[[{\"name\":\"action\",\"size\":6}],[{\"name\":\"actionParameters\",\"size\":12}],[{\"name\":\"subject\",\"size\":6}],[{\"name\":\"properties\",\"size\":12}],[{\"name\":\"conditions\",\"size\":12}],[{\"name\":\"role\",\"size\":6}]]},\"uid\":\"admin::permission\"}', 'object', NULL, NULL),
(5, 'plugin_content_manager_configuration_content_types::admin::api-token', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"type\",\"searchable\":true,\"sortable\":true}},\"accessKey\":{\"edit\":{\"label\":\"accessKey\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"accessKey\",\"searchable\":true,\"sortable\":true}},\"lastUsedAt\":{\"edit\":{\"label\":\"lastUsedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lastUsedAt\",\"searchable\":true,\"sortable\":true}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"expiresAt\":{\"edit\":{\"label\":\"expiresAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"expiresAt\",\"searchable\":true,\"sortable\":true}},\"lifespan\":{\"edit\":{\"label\":\"lifespan\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lifespan\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"type\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"type\",\"size\":6},{\"name\":\"accessKey\",\"size\":6}],[{\"name\":\"lastUsedAt\",\"size\":6},{\"name\":\"permissions\",\"size\":6}],[{\"name\":\"expiresAt\",\"size\":6},{\"name\":\"lifespan\",\"size\":4}]]},\"uid\":\"admin::api-token\"}', 'object', NULL, NULL),
(6, 'plugin_content_manager_configuration_content_types::admin::transfer-token', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"accessKey\":{\"edit\":{\"label\":\"accessKey\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"accessKey\",\"searchable\":true,\"sortable\":true}},\"lastUsedAt\":{\"edit\":{\"label\":\"lastUsedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lastUsedAt\",\"searchable\":true,\"sortable\":true}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"expiresAt\":{\"edit\":{\"label\":\"expiresAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"expiresAt\",\"searchable\":true,\"sortable\":true}},\"lifespan\":{\"edit\":{\"label\":\"lifespan\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lifespan\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"accessKey\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"accessKey\",\"size\":6},{\"name\":\"lastUsedAt\",\"size\":6}],[{\"name\":\"permissions\",\"size\":6},{\"name\":\"expiresAt\",\"size\":6}],[{\"name\":\"lifespan\",\"size\":4}]]},\"uid\":\"admin::transfer-token\"}', 'object', NULL, NULL),
(7, 'plugin_content_manager_configuration_content_types::admin::transfer-token-permission', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"action\",\"searchable\":true,\"sortable\":true}},\"token\":{\"edit\":{\"label\":\"token\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"token\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"token\",\"createdAt\"],\"edit\":[[{\"name\":\"action\",\"size\":6},{\"name\":\"token\",\"size\":6}]]},\"uid\":\"admin::transfer-token-permission\"}', 'object', NULL, NULL),
(8, 'plugin_content_manager_configuration_content_types::plugin::i18n.locale', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"code\":{\"edit\":{\"label\":\"code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"code\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"code\",\"createdAt\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"code\",\"size\":6}]]},\"uid\":\"plugin::i18n.locale\"}', 'object', NULL, NULL),
(9, 'plugin_content_manager_configuration_content_types::admin::api-token-permission', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"action\",\"searchable\":true,\"sortable\":true}},\"token\":{\"edit\":{\"label\":\"token\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"token\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"token\",\"createdAt\"],\"edit\":[[{\"name\":\"action\",\"size\":6},{\"name\":\"token\",\"size\":6}]]},\"uid\":\"admin::api-token-permission\"}', 'object', NULL, NULL),
(10, 'plugin_content_manager_configuration_content_types::plugin::upload.folder', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"pathId\":{\"edit\":{\"label\":\"pathId\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"pathId\",\"searchable\":true,\"sortable\":true}},\"parent\":{\"edit\":{\"label\":\"parent\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"parent\",\"searchable\":true,\"sortable\":true}},\"children\":{\"edit\":{\"label\":\"children\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"children\",\"searchable\":false,\"sortable\":false}},\"files\":{\"edit\":{\"label\":\"files\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"files\",\"searchable\":false,\"sortable\":false}},\"path\":{\"edit\":{\"label\":\"path\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"path\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"pathId\",\"parent\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"pathId\",\"size\":4}],[{\"name\":\"parent\",\"size\":6},{\"name\":\"children\",\"size\":6}],[{\"name\":\"files\",\"size\":6},{\"name\":\"path\",\"size\":6}]]},\"uid\":\"plugin::upload.folder\"}', 'object', NULL, NULL),
(11, 'plugin_content_manager_configuration_content_types::plugin::content-releases.release-action', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"contentType\",\"defaultSortBy\":\"contentType\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"type\",\"searchable\":true,\"sortable\":true}},\"contentType\":{\"edit\":{\"label\":\"contentType\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"contentType\",\"searchable\":true,\"sortable\":true}},\"locale\":{\"edit\":{\"label\":\"locale\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"locale\",\"searchable\":true,\"sortable\":true}},\"release\":{\"edit\":{\"label\":\"release\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"release\",\"searchable\":true,\"sortable\":true}},\"isEntryValid\":{\"edit\":{\"label\":\"isEntryValid\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"isEntryValid\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"type\",\"contentType\",\"locale\"],\"edit\":[[{\"name\":\"type\",\"size\":6},{\"name\":\"contentType\",\"size\":6}],[{\"name\":\"locale\",\"size\":6},{\"name\":\"release\",\"size\":6}],[{\"name\":\"isEntryValid\",\"size\":4}]]},\"uid\":\"plugin::content-releases.release-action\"}', 'object', NULL, NULL),
(12, 'plugin_content_manager_configuration_content_types::plugin::upload.file', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"alternativeText\":{\"edit\":{\"label\":\"alternativeText\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"alternativeText\",\"searchable\":true,\"sortable\":true}},\"caption\":{\"edit\":{\"label\":\"caption\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"caption\",\"searchable\":true,\"sortable\":true}},\"width\":{\"edit\":{\"label\":\"width\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"width\",\"searchable\":true,\"sortable\":true}},\"height\":{\"edit\":{\"label\":\"height\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"height\",\"searchable\":true,\"sortable\":true}},\"formats\":{\"edit\":{\"label\":\"formats\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"formats\",\"searchable\":false,\"sortable\":false}},\"hash\":{\"edit\":{\"label\":\"hash\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"hash\",\"searchable\":true,\"sortable\":true}},\"ext\":{\"edit\":{\"label\":\"ext\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"ext\",\"searchable\":true,\"sortable\":true}},\"mime\":{\"edit\":{\"label\":\"mime\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"mime\",\"searchable\":true,\"sortable\":true}},\"size\":{\"edit\":{\"label\":\"size\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"size\",\"searchable\":true,\"sortable\":true}},\"url\":{\"edit\":{\"label\":\"url\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"url\",\"searchable\":true,\"sortable\":true}},\"previewUrl\":{\"edit\":{\"label\":\"previewUrl\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"previewUrl\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"provider\",\"searchable\":true,\"sortable\":true}},\"provider_metadata\":{\"edit\":{\"label\":\"provider_metadata\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"provider_metadata\",\"searchable\":false,\"sortable\":false}},\"folder\":{\"edit\":{\"label\":\"folder\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"folder\",\"searchable\":true,\"sortable\":true}},\"folderPath\":{\"edit\":{\"label\":\"folderPath\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"folderPath\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"alternativeText\",\"caption\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"alternativeText\",\"size\":6}],[{\"name\":\"caption\",\"size\":6},{\"name\":\"width\",\"size\":4}],[{\"name\":\"height\",\"size\":4}],[{\"name\":\"formats\",\"size\":12}],[{\"name\":\"hash\",\"size\":6},{\"name\":\"ext\",\"size\":6}],[{\"name\":\"mime\",\"size\":6},{\"name\":\"size\",\"size\":4}],[{\"name\":\"url\",\"size\":6},{\"name\":\"previewUrl\",\"size\":6}],[{\"name\":\"provider\",\"size\":6}],[{\"name\":\"provider_metadata\",\"size\":12}],[{\"name\":\"folder\",\"size\":6},{\"name\":\"folderPath\",\"size\":6}]]},\"uid\":\"plugin::upload.file\"}', 'object', NULL, NULL),
(13, 'plugin_content_manager_configuration_content_types::plugin::content-releases.release', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"releasedAt\":{\"edit\":{\"label\":\"releasedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"releasedAt\",\"searchable\":true,\"sortable\":true}},\"scheduledAt\":{\"edit\":{\"label\":\"scheduledAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"scheduledAt\",\"searchable\":true,\"sortable\":true}},\"timezone\":{\"edit\":{\"label\":\"timezone\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"timezone\",\"searchable\":true,\"sortable\":true}},\"status\":{\"edit\":{\"label\":\"status\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"status\",\"searchable\":true,\"sortable\":true}},\"actions\":{\"edit\":{\"label\":\"actions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"contentType\"},\"list\":{\"label\":\"actions\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"releasedAt\",\"scheduledAt\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"releasedAt\",\"size\":6}],[{\"name\":\"scheduledAt\",\"size\":6},{\"name\":\"timezone\",\"size\":6}],[{\"name\":\"status\",\"size\":6},{\"name\":\"actions\",\"size\":6}]]},\"uid\":\"plugin::content-releases.release\"}', 'object', NULL, NULL),
(14, 'plugin_content_manager_configuration_content_types::plugin::users-permissions.permission', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"action\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"role\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"role\",\"createdAt\"],\"edit\":[[{\"name\":\"action\",\"size\":6},{\"name\":\"role\",\"size\":6}]]},\"uid\":\"plugin::users-permissions.permission\"}', 'object', NULL, NULL),
(15, 'plugin_content_manager_configuration_content_types::plugin::users-permissions.role', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"type\",\"searchable\":true,\"sortable\":true}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"users\":{\"edit\":{\"label\":\"users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"username\"},\"list\":{\"label\":\"users\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"type\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"type\",\"size\":6},{\"name\":\"permissions\",\"size\":6}],[{\"name\":\"users\",\"size\":6}]]},\"uid\":\"plugin::users-permissions.role\"}', 'object', NULL, NULL),
(16, 'plugin_content_manager_configuration_content_types::plugin::users-permissions.user', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"username\",\"defaultSortBy\":\"username\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"email\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"provider\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"resetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"resetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"confirmationToken\":{\"edit\":{\"label\":\"confirmationToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"confirmationToken\",\"searchable\":true,\"sortable\":true}},\"confirmed\":{\"edit\":{\"label\":\"confirmed\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"confirmed\",\"searchable\":true,\"sortable\":true}},\"blocked\":{\"edit\":{\"label\":\"blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"blocked\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"role\",\"searchable\":true,\"sortable\":true}},\"phone\":{\"edit\":{\"label\":\"phone\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"phone\",\"searchable\":true,\"sortable\":true}},\"address\":{\"edit\":{\"label\":\"address\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"address\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"username\",\"email\",\"confirmed\"],\"edit\":[[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"confirmed\",\"size\":4}],[{\"name\":\"blocked\",\"size\":4},{\"name\":\"role\",\"size\":6}],[{\"name\":\"phone\",\"size\":6},{\"name\":\"address\",\"size\":6}]]},\"uid\":\"plugin::users-permissions.user\"}', 'object', NULL, NULL),
(17, 'plugin_upload_settings', '{\"sizeOptimization\":true,\"responsiveDimensions\":true,\"autoOrientation\":false}', 'object', NULL, NULL),
(18, 'plugin_upload_view_configuration', '{\"pageSize\":10,\"sort\":\"createdAt:DESC\"}', 'object', NULL, NULL),
(19, 'plugin_upload_metrics', '{\"weeklySchedule\":\"31 35 21 * * 4\",\"lastWeeklyUpdate\":1720103731052}', 'object', NULL, NULL),
(20, 'plugin_users-permissions_grant', '{\"email\":{\"enabled\":true,\"icon\":\"envelope\"},\"discord\":{\"enabled\":false,\"icon\":\"discord\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/discord/callback\",\"scope\":[\"identify\",\"email\"]},\"facebook\":{\"enabled\":false,\"icon\":\"facebook-square\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/facebook/callback\",\"scope\":[\"email\"]},\"google\":{\"enabled\":false,\"icon\":\"google\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/google/callback\",\"scope\":[\"email\"]},\"github\":{\"enabled\":false,\"icon\":\"github\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/github/callback\",\"scope\":[\"user\",\"user:email\"]},\"microsoft\":{\"enabled\":false,\"icon\":\"windows\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/microsoft/callback\",\"scope\":[\"user.read\"]},\"twitter\":{\"enabled\":false,\"icon\":\"twitter\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/twitter/callback\"},\"instagram\":{\"enabled\":false,\"icon\":\"instagram\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/instagram/callback\",\"scope\":[\"user_profile\"]},\"vk\":{\"enabled\":false,\"icon\":\"vk\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/vk/callback\",\"scope\":[\"email\"]},\"twitch\":{\"enabled\":false,\"icon\":\"twitch\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/twitch/callback\",\"scope\":[\"user:read:email\"]},\"linkedin\":{\"enabled\":false,\"icon\":\"linkedin\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/linkedin/callback\",\"scope\":[\"r_liteprofile\",\"r_emailaddress\"]},\"cognito\":{\"enabled\":false,\"icon\":\"aws\",\"key\":\"\",\"secret\":\"\",\"subdomain\":\"my.subdomain.com\",\"callback\":\"api/auth/cognito/callback\",\"scope\":[\"email\",\"openid\",\"profile\"]},\"reddit\":{\"enabled\":false,\"icon\":\"reddit\",\"key\":\"\",\"secret\":\"\",\"state\":true,\"callback\":\"api/auth/reddit/callback\",\"scope\":[\"identity\"]},\"auth0\":{\"enabled\":false,\"icon\":\"\",\"key\":\"\",\"secret\":\"\",\"subdomain\":\"my-tenant.eu\",\"callback\":\"api/auth/auth0/callback\",\"scope\":[\"openid\",\"email\",\"profile\"]},\"cas\":{\"enabled\":false,\"icon\":\"book\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/cas/callback\",\"scope\":[\"openid email\"],\"subdomain\":\"my.subdomain.com/cas\"},\"patreon\":{\"enabled\":false,\"icon\":\"\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/patreon/callback\",\"scope\":[\"identity\",\"identity[email]\"]},\"keycloak\":{\"enabled\":false,\"icon\":\"\",\"key\":\"\",\"secret\":\"\",\"subdomain\":\"myKeycloakProvider.com/realms/myrealm\",\"callback\":\"api/auth/keycloak/callback\",\"scope\":[\"openid\",\"email\",\"profile\"]}}', 'object', NULL, NULL),
(21, 'plugin_users-permissions_email', '{\"reset_password\":{\"display\":\"Email.template.reset_password\",\"icon\":\"sync\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Reset password\",\"message\":\"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>\"}},\"email_confirmation\":{\"display\":\"Email.template.email_confirmation\",\"icon\":\"check-square\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Account confirmation\",\"message\":\"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>\"}}}', 'object', NULL, NULL),
(22, 'plugin_users-permissions_advanced', '{\"unique_email\":true,\"allow_register\":true,\"email_confirmation\":false,\"email_reset_password\":null,\"email_confirmation_redirection\":null,\"default_role\":\"authenticated\"}', 'object', NULL, NULL),
(23, 'plugin_i18n_default_locale', '\"en\"', 'string', NULL, NULL),
(24, 'core_admin_auth', '{\"providers\":{\"autoRegister\":false,\"defaultRole\":null,\"ssoLockedRoles\":null}}', 'object', NULL, NULL);
INSERT INTO `strapi_core_store_settings` (`id`, `key`, `value`, `type`, `environment`, `tag`) VALUES
(25, 'plugin_content_manager_configuration_content_types::api::category.category', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"category_name\",\"defaultSortBy\":\"category_name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"category_name\":{\"edit\":{\"label\":\"category_name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"category_name\",\"searchable\":true,\"sortable\":true}},\"slug\":{\"edit\":{\"label\":\"slug\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"slug\",\"searchable\":true,\"sortable\":true}},\"parent_id\":{\"edit\":{\"label\":\"parent_id\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"parent_id\",\"searchable\":true,\"sortable\":true}},\"status\":{\"edit\":{\"label\":\"status\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"status\",\"searchable\":true,\"sortable\":true}},\"image\":{\"edit\":{\"label\":\"image\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"image\",\"searchable\":false,\"sortable\":false}},\"products\":{\"edit\":{\"label\":\"products\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"product_name\"},\"list\":{\"label\":\"products\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"category_name\",\"slug\",\"parent_id\"],\"edit\":[[{\"name\":\"category_name\",\"size\":6},{\"name\":\"slug\",\"size\":6}],[{\"name\":\"parent_id\",\"size\":4},{\"name\":\"status\",\"size\":6}],[{\"name\":\"image\",\"size\":6},{\"name\":\"products\",\"size\":6}]]},\"uid\":\"api::category.category\"}', 'object', NULL, NULL),
(26, 'plugin_content_manager_configuration_content_types::api::product.product', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"product_name\",\"defaultSortBy\":\"product_name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"product_name\":{\"edit\":{\"label\":\"product_name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"product_name\",\"searchable\":true,\"sortable\":true}},\"cat_id\":{\"edit\":{\"label\":\"cat_id\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"cat_id\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"price\":{\"edit\":{\"label\":\"price\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"price\",\"searchable\":true,\"sortable\":true}},\"is_on_sale\":{\"edit\":{\"label\":\"is_on_sale\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"is_on_sale\",\"searchable\":true,\"sortable\":true}},\"sale_price\":{\"edit\":{\"label\":\"sale_price\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"sale_price\",\"searchable\":true,\"sortable\":true}},\"image\":{\"edit\":{\"label\":\"image\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"image\",\"searchable\":false,\"sortable\":false}},\"slug\":{\"edit\":{\"label\":\"slug\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"slug\",\"searchable\":true,\"sortable\":true}},\"category\":{\"edit\":{\"label\":\"category\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"category_name\"},\"list\":{\"label\":\"category\",\"searchable\":true,\"sortable\":true}},\"brand_id\":{\"edit\":{\"label\":\"brand_id\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"brand_id\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"product_name\",\"cat_id\",\"description\"],\"edit\":[[{\"name\":\"product_name\",\"size\":6},{\"name\":\"cat_id\",\"size\":6}],[{\"name\":\"description\",\"size\":6},{\"name\":\"price\",\"size\":4}],[{\"name\":\"is_on_sale\",\"size\":4},{\"name\":\"sale_price\",\"size\":4}],[{\"name\":\"image\",\"size\":6},{\"name\":\"slug\",\"size\":6}],[{\"name\":\"category\",\"size\":6},{\"name\":\"brand_id\",\"size\":4}]]},\"uid\":\"api::product.product\"}', 'object', NULL, NULL),
(27, 'plugin_content_manager_configuration_content_types::api::brand.brand', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"brand_name\",\"defaultSortBy\":\"brand_name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"brand_name\":{\"edit\":{\"label\":\"brand_name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"brand_name\",\"searchable\":true,\"sortable\":true}},\"slug\":{\"edit\":{\"label\":\"slug\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"slug\",\"searchable\":true,\"sortable\":true}},\"address\":{\"edit\":{\"label\":\"address\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"address\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"brand_name\",\"slug\",\"address\"],\"edit\":[[{\"name\":\"brand_name\",\"size\":6},{\"name\":\"slug\",\"size\":6}],[{\"name\":\"address\",\"size\":6}]]},\"uid\":\"api::brand.brand\"}', 'object', NULL, NULL),
(28, 'plugin_content_manager_configuration_content_types::api::menu.menu', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"link\":{\"edit\":{\"label\":\"link\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"link\",\"searchable\":true,\"sortable\":true}},\"parent_id\":{\"edit\":{\"label\":\"parent_id\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"parent_id\",\"searchable\":true,\"sortable\":true}},\"position\":{\"edit\":{\"label\":\"position\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"position\",\"searchable\":true,\"sortable\":true}},\"status\":{\"edit\":{\"label\":\"status\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"status\",\"searchable\":true,\"sortable\":true}},\"sort_order\":{\"edit\":{\"label\":\"sort_order\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"sort_order\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"link\",\"parent_id\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"link\",\"size\":6}],[{\"name\":\"parent_id\",\"size\":6},{\"name\":\"position\",\"size\":6}],[{\"name\":\"status\",\"size\":6},{\"name\":\"sort_order\",\"size\":6}]]},\"uid\":\"api::menu.menu\"}', 'object', NULL, NULL),
(29, 'plugin_content_manager_configuration_content_types::api::slider.slider', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"position\":{\"edit\":{\"label\":\"position\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"position\",\"searchable\":true,\"sortable\":true}},\"image\":{\"edit\":{\"label\":\"image\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"image\",\"searchable\":false,\"sortable\":false}},\"sort_order\":{\"edit\":{\"label\":\"sort_order\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"sort_order\",\"searchable\":true,\"sortable\":true}},\"status\":{\"edit\":{\"label\":\"status\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"status\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"createdAt\",\"updatedAt\",\"createdBy\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"position\",\"size\":6}],[{\"name\":\"image\",\"size\":6},{\"name\":\"sort_order\",\"size\":4}],[{\"name\":\"status\",\"size\":6}]]},\"uid\":\"api::slider.slider\"}', 'object', NULL, NULL),
(30, 'plugin_content_manager_configuration_content_types::api::use.use', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"username\",\"defaultSortBy\":\"username\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"username\",\"searchable\":true,\"sortable\":true}},\"phone\":{\"edit\":{\"label\":\"phone\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"phone\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"email\",\"searchable\":true,\"sortable\":true}},\"address\":{\"edit\":{\"label\":\"address\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"address\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"password\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"username\",\"phone\",\"email\"],\"edit\":[[{\"name\":\"username\",\"size\":6},{\"name\":\"phone\",\"size\":6}],[{\"name\":\"email\",\"size\":6},{\"name\":\"address\",\"size\":6}],[{\"name\":\"password\",\"size\":6}]]},\"uid\":\"api::use.use\"}', 'object', NULL, NULL),
(31, 'plugin_upload_api-folder', '{\"id\":1}', 'object', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `strapi_database_schema`
--

CREATE TABLE `strapi_database_schema` (
  `id` int(10) UNSIGNED NOT NULL,
  `schema` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`schema`)),
  `time` datetime DEFAULT NULL,
  `hash` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `strapi_database_schema`
--

INSERT INTO `strapi_database_schema` (`id`, `schema`, `time`, `hash`) VALUES
(11, '{\"tables\":[{\"name\":\"strapi_core_store_settings\",\"indexes\":[],\"foreignKeys\":[],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"key\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"value\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"environment\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"tag\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"strapi_webhooks\",\"indexes\":[],\"foreignKeys\":[],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"url\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"headers\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"events\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"enabled\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"admin_permissions\",\"indexes\":[{\"name\":\"admin_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"admin_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"admin_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"admin_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"action\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"action_parameters\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"subject\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"properties\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"conditions\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"admin_users\",\"indexes\":[{\"name\":\"admin_users_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"admin_users_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"admin_users_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"admin_users_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"firstname\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"lastname\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"username\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"email\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"password\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"reset_password_token\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"registration_token\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"is_active\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"blocked\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"prefered_language\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"admin_roles\",\"indexes\":[{\"name\":\"admin_roles_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"admin_roles_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"admin_roles_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"admin_roles_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"code\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"strapi_api_tokens\",\"indexes\":[{\"name\":\"strapi_api_tokens_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"strapi_api_tokens_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"strapi_api_tokens_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"strapi_api_tokens_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"access_key\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"last_used_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"expires_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"lifespan\",\"type\":\"bigInteger\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"strapi_api_token_permissions\",\"indexes\":[{\"name\":\"strapi_api_token_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"strapi_api_token_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"strapi_api_token_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"strapi_api_token_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"action\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"strapi_transfer_tokens\",\"indexes\":[{\"name\":\"strapi_transfer_tokens_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"strapi_transfer_tokens_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"strapi_transfer_tokens_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"strapi_transfer_tokens_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"access_key\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"last_used_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"expires_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"lifespan\",\"type\":\"bigInteger\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"strapi_transfer_token_permissions\",\"indexes\":[{\"name\":\"strapi_transfer_token_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"strapi_transfer_token_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"strapi_transfer_token_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"strapi_transfer_token_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"action\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"files\",\"indexes\":[{\"name\":\"upload_files_folder_path_index\",\"columns\":[\"folder_path\"],\"type\":null},{\"name\":\"upload_files_created_at_index\",\"columns\":[\"created_at\"],\"type\":null},{\"name\":\"upload_files_updated_at_index\",\"columns\":[\"updated_at\"],\"type\":null},{\"name\":\"upload_files_name_index\",\"columns\":[\"name\"],\"type\":null},{\"name\":\"upload_files_size_index\",\"columns\":[\"size\"],\"type\":null},{\"name\":\"upload_files_ext_index\",\"columns\":[\"ext\"],\"type\":null},{\"name\":\"files_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"files_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"files_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"files_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"alternative_text\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"caption\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"width\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"height\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"formats\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"hash\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"ext\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"mime\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"size\",\"type\":\"decimal\",\"args\":[10,2],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"url\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"preview_url\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"provider\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"provider_metadata\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"folder_path\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"upload_folders\",\"indexes\":[{\"name\":\"upload_folders_path_id_index\",\"columns\":[\"path_id\"],\"type\":\"unique\"},{\"name\":\"upload_folders_path_index\",\"columns\":[\"path\"],\"type\":\"unique\"},{\"name\":\"upload_folders_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"upload_folders_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"upload_folders_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"upload_folders_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"path_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"path\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"strapi_releases\",\"indexes\":[{\"name\":\"strapi_releases_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"strapi_releases_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"strapi_releases_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"strapi_releases_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"released_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"scheduled_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"timezone\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"status\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"strapi_release_actions\",\"indexes\":[{\"name\":\"strapi_release_actions_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"strapi_release_actions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"strapi_release_actions_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"strapi_release_actions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"target_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"target_type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"content_type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"is_entry_valid\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"up_permissions\",\"indexes\":[{\"name\":\"up_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"up_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"up_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"up_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"action\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"up_roles\",\"indexes\":[{\"name\":\"up_roles_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"up_roles_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"up_roles_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"up_roles_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"up_users\",\"indexes\":[{\"name\":\"up_users_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"up_users_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"up_users_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"up_users_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"username\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"email\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"provider\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"password\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"reset_password_token\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"confirmation_token\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"confirmed\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"blocked\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"phone\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"address\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"i18n_locale\",\"indexes\":[{\"name\":\"i18n_locale_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"i18n_locale_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"i18n_locale_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"i18n_locale_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"code\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"brands\",\"indexes\":[{\"name\":\"brands_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"brands_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"brands_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"brands_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"brand_name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"slug\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"address\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"categories\",\"indexes\":[{\"name\":\"categories_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"categories_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"categories_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"categories_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"category_name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"slug\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"parent_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"status\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"menus\",\"indexes\":[{\"name\":\"menus_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"menus_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"menus_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"menus_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"link\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"parent_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"position\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"status\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"sort_order\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"products\",\"indexes\":[{\"name\":\"products_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"products_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"products_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"products_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"product_name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"cat_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"price\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"is_on_sale\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"sale_price\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"slug\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"brand_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"sliders\",\"indexes\":[{\"name\":\"sliders_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"sliders_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"sliders_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"sliders_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"position\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"sort_order\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"status\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"uses\",\"indexes\":[{\"name\":\"uses_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"uses_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"uses_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"uses_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"username\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"phone\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"email\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"address\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"password\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"admin_permissions_role_links\",\"indexes\":[{\"name\":\"admin_permissions_role_links_fk\",\"columns\":[\"permission_id\"]},{\"name\":\"admin_permissions_role_links_inv_fk\",\"columns\":[\"role_id\"]},{\"name\":\"admin_permissions_role_links_unique\",\"columns\":[\"permission_id\",\"role_id\"],\"type\":\"unique\"},{\"name\":\"admin_permissions_role_links_order_inv_fk\",\"columns\":[\"permission_order\"]}],\"foreignKeys\":[{\"name\":\"admin_permissions_role_links_fk\",\"columns\":[\"permission_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"admin_permissions\",\"onDelete\":\"CASCADE\"},{\"name\":\"admin_permissions_role_links_inv_fk\",\"columns\":[\"role_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"admin_roles\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"permission_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"role_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"permission_order\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"admin_users_roles_links\",\"indexes\":[{\"name\":\"admin_users_roles_links_fk\",\"columns\":[\"user_id\"]},{\"name\":\"admin_users_roles_links_inv_fk\",\"columns\":[\"role_id\"]},{\"name\":\"admin_users_roles_links_unique\",\"columns\":[\"user_id\",\"role_id\"],\"type\":\"unique\"},{\"name\":\"admin_users_roles_links_order_fk\",\"columns\":[\"role_order\"]},{\"name\":\"admin_users_roles_links_order_inv_fk\",\"columns\":[\"user_order\"]}],\"foreignKeys\":[{\"name\":\"admin_users_roles_links_fk\",\"columns\":[\"user_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"admin_users\",\"onDelete\":\"CASCADE\"},{\"name\":\"admin_users_roles_links_inv_fk\",\"columns\":[\"role_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"admin_roles\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"user_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"role_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"role_order\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"user_order\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"strapi_api_token_permissions_token_links\",\"indexes\":[{\"name\":\"strapi_api_token_permissions_token_links_fk\",\"columns\":[\"api_token_permission_id\"]},{\"name\":\"strapi_api_token_permissions_token_links_inv_fk\",\"columns\":[\"api_token_id\"]},{\"name\":\"strapi_api_token_permissions_token_links_unique\",\"columns\":[\"api_token_permission_id\",\"api_token_id\"],\"type\":\"unique\"},{\"name\":\"strapi_api_token_permissions_token_links_order_inv_fk\",\"columns\":[\"api_token_permission_order\"]}],\"foreignKeys\":[{\"name\":\"strapi_api_token_permissions_token_links_fk\",\"columns\":[\"api_token_permission_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"strapi_api_token_permissions\",\"onDelete\":\"CASCADE\"},{\"name\":\"strapi_api_token_permissions_token_links_inv_fk\",\"columns\":[\"api_token_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"strapi_api_tokens\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"api_token_permission_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"api_token_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"api_token_permission_order\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"strapi_transfer_token_permissions_token_links\",\"indexes\":[{\"name\":\"strapi_transfer_token_permissions_token_links_fk\",\"columns\":[\"transfer_token_permission_id\"]},{\"name\":\"strapi_transfer_token_permissions_token_links_inv_fk\",\"columns\":[\"transfer_token_id\"]},{\"name\":\"strapi_transfer_token_permissions_token_links_unique\",\"columns\":[\"transfer_token_permission_id\",\"transfer_token_id\"],\"type\":\"unique\"},{\"name\":\"strapi_transfer_token_permissions_token_links_order_inv_fk\",\"columns\":[\"transfer_token_permission_order\"]}],\"foreignKeys\":[{\"name\":\"strapi_transfer_token_permissions_token_links_fk\",\"columns\":[\"transfer_token_permission_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"strapi_transfer_token_permissions\",\"onDelete\":\"CASCADE\"},{\"name\":\"strapi_transfer_token_permissions_token_links_inv_fk\",\"columns\":[\"transfer_token_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"strapi_transfer_tokens\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"transfer_token_permission_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"transfer_token_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"transfer_token_permission_order\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"files_related_morphs\",\"indexes\":[{\"name\":\"files_related_morphs_fk\",\"columns\":[\"file_id\"]},{\"name\":\"files_related_morphs_order_index\",\"columns\":[\"order\"]},{\"name\":\"files_related_morphs_id_column_index\",\"columns\":[\"related_id\"]}],\"foreignKeys\":[{\"name\":\"files_related_morphs_fk\",\"columns\":[\"file_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"files\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"file_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"related_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"related_type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"field\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"order\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"files_folder_links\",\"indexes\":[{\"name\":\"files_folder_links_fk\",\"columns\":[\"file_id\"]},{\"name\":\"files_folder_links_inv_fk\",\"columns\":[\"folder_id\"]},{\"name\":\"files_folder_links_unique\",\"columns\":[\"file_id\",\"folder_id\"],\"type\":\"unique\"},{\"name\":\"files_folder_links_order_inv_fk\",\"columns\":[\"file_order\"]}],\"foreignKeys\":[{\"name\":\"files_folder_links_fk\",\"columns\":[\"file_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"files\",\"onDelete\":\"CASCADE\"},{\"name\":\"files_folder_links_inv_fk\",\"columns\":[\"folder_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"upload_folders\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"file_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"folder_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"file_order\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"upload_folders_parent_links\",\"indexes\":[{\"name\":\"upload_folders_parent_links_fk\",\"columns\":[\"folder_id\"]},{\"name\":\"upload_folders_parent_links_inv_fk\",\"columns\":[\"inv_folder_id\"]},{\"name\":\"upload_folders_parent_links_unique\",\"columns\":[\"folder_id\",\"inv_folder_id\"],\"type\":\"unique\"},{\"name\":\"upload_folders_parent_links_order_inv_fk\",\"columns\":[\"folder_order\"]}],\"foreignKeys\":[{\"name\":\"upload_folders_parent_links_fk\",\"columns\":[\"folder_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"upload_folders\",\"onDelete\":\"CASCADE\"},{\"name\":\"upload_folders_parent_links_inv_fk\",\"columns\":[\"inv_folder_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"upload_folders\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"folder_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"inv_folder_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"folder_order\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"strapi_release_actions_release_links\",\"indexes\":[{\"name\":\"strapi_release_actions_release_links_fk\",\"columns\":[\"release_action_id\"]},{\"name\":\"strapi_release_actions_release_links_inv_fk\",\"columns\":[\"release_id\"]},{\"name\":\"strapi_release_actions_release_links_unique\",\"columns\":[\"release_action_id\",\"release_id\"],\"type\":\"unique\"},{\"name\":\"strapi_release_actions_release_links_order_inv_fk\",\"columns\":[\"release_action_order\"]}],\"foreignKeys\":[{\"name\":\"strapi_release_actions_release_links_fk\",\"columns\":[\"release_action_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"strapi_release_actions\",\"onDelete\":\"CASCADE\"},{\"name\":\"strapi_release_actions_release_links_inv_fk\",\"columns\":[\"release_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"strapi_releases\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"release_action_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"release_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"release_action_order\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"up_permissions_role_links\",\"indexes\":[{\"name\":\"up_permissions_role_links_fk\",\"columns\":[\"permission_id\"]},{\"name\":\"up_permissions_role_links_inv_fk\",\"columns\":[\"role_id\"]},{\"name\":\"up_permissions_role_links_unique\",\"columns\":[\"permission_id\",\"role_id\"],\"type\":\"unique\"},{\"name\":\"up_permissions_role_links_order_inv_fk\",\"columns\":[\"permission_order\"]}],\"foreignKeys\":[{\"name\":\"up_permissions_role_links_fk\",\"columns\":[\"permission_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"up_permissions\",\"onDelete\":\"CASCADE\"},{\"name\":\"up_permissions_role_links_inv_fk\",\"columns\":[\"role_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"up_roles\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"permission_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"role_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"permission_order\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"up_users_role_links\",\"indexes\":[{\"name\":\"up_users_role_links_fk\",\"columns\":[\"user_id\"]},{\"name\":\"up_users_role_links_inv_fk\",\"columns\":[\"role_id\"]},{\"name\":\"up_users_role_links_unique\",\"columns\":[\"user_id\",\"role_id\"],\"type\":\"unique\"},{\"name\":\"up_users_role_links_order_inv_fk\",\"columns\":[\"user_order\"]}],\"foreignKeys\":[{\"name\":\"up_users_role_links_fk\",\"columns\":[\"user_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"up_users\",\"onDelete\":\"CASCADE\"},{\"name\":\"up_users_role_links_inv_fk\",\"columns\":[\"role_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"up_roles\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"user_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"role_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"user_order\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"products_category_links\",\"indexes\":[{\"name\":\"products_category_links_fk\",\"columns\":[\"product_id\"]},{\"name\":\"products_category_links_inv_fk\",\"columns\":[\"category_id\"]},{\"name\":\"products_category_links_unique\",\"columns\":[\"product_id\",\"category_id\"],\"type\":\"unique\"},{\"name\":\"products_category_links_order_inv_fk\",\"columns\":[\"product_order\"]}],\"foreignKeys\":[{\"name\":\"products_category_links_fk\",\"columns\":[\"product_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"products\",\"onDelete\":\"CASCADE\"},{\"name\":\"products_category_links_inv_fk\",\"columns\":[\"category_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"categories\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"product_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"category_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"product_order\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]}]}', '2024-06-22 20:13:31', 'd516ed54d8158d20707e76e00c1aeb74');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `strapi_migrations`
--

CREATE TABLE `strapi_migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `strapi_releases`
--

CREATE TABLE `strapi_releases` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `released_at` datetime(6) DEFAULT NULL,
  `scheduled_at` datetime(6) DEFAULT NULL,
  `timezone` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `strapi_release_actions`
--

CREATE TABLE `strapi_release_actions` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `target_id` int(10) UNSIGNED DEFAULT NULL,
  `target_type` varchar(255) DEFAULT NULL,
  `content_type` varchar(255) DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `is_entry_valid` tinyint(1) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `strapi_release_actions_release_links`
--

CREATE TABLE `strapi_release_actions_release_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `release_action_id` int(10) UNSIGNED DEFAULT NULL,
  `release_id` int(10) UNSIGNED DEFAULT NULL,
  `release_action_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `strapi_transfer_tokens`
--

CREATE TABLE `strapi_transfer_tokens` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `access_key` varchar(255) DEFAULT NULL,
  `last_used_at` datetime(6) DEFAULT NULL,
  `expires_at` datetime(6) DEFAULT NULL,
  `lifespan` bigint(20) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `strapi_transfer_token_permissions`
--

CREATE TABLE `strapi_transfer_token_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `action` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `strapi_transfer_token_permissions_token_links`
--

CREATE TABLE `strapi_transfer_token_permissions_token_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `transfer_token_permission_id` int(10) UNSIGNED DEFAULT NULL,
  `transfer_token_id` int(10) UNSIGNED DEFAULT NULL,
  `transfer_token_permission_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `strapi_webhooks`
--

CREATE TABLE `strapi_webhooks` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `url` longtext DEFAULT NULL,
  `headers` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`headers`)),
  `events` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`events`)),
  `enabled` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `upload_folders`
--

CREATE TABLE `upload_folders` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `path_id` int(11) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `upload_folders`
--

INSERT INTO `upload_folders` (`id`, `name`, `path_id`, `path`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'API Uploads', 1, '/1', '2024-06-16 10:18:03.601000', '2024-06-16 10:18:03.601000', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `upload_folders_parent_links`
--

CREATE TABLE `upload_folders_parent_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `folder_id` int(10) UNSIGNED DEFAULT NULL,
  `inv_folder_id` int(10) UNSIGNED DEFAULT NULL,
  `folder_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `up_permissions`
--

CREATE TABLE `up_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `action` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `up_permissions`
--

INSERT INTO `up_permissions` (`id`, `action`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'plugin::users-permissions.user.me', '2024-05-27 18:26:21.686000', '2024-05-27 18:26:21.686000', NULL, NULL),
(2, 'plugin::users-permissions.auth.changePassword', '2024-05-27 18:26:21.686000', '2024-05-27 18:26:21.686000', NULL, NULL),
(3, 'plugin::users-permissions.auth.callback', '2024-05-27 18:26:21.703000', '2024-05-27 18:26:21.703000', NULL, NULL),
(4, 'plugin::users-permissions.auth.connect', '2024-05-27 18:26:21.703000', '2024-05-27 18:26:21.703000', NULL, NULL),
(5, 'plugin::users-permissions.auth.forgotPassword', '2024-05-27 18:26:21.703000', '2024-05-27 18:26:21.703000', NULL, NULL),
(6, 'plugin::users-permissions.auth.resetPassword', '2024-05-27 18:26:21.703000', '2024-05-27 18:26:21.703000', NULL, NULL),
(7, 'plugin::users-permissions.auth.register', '2024-05-27 18:26:21.703000', '2024-05-27 18:26:21.703000', NULL, NULL),
(8, 'plugin::users-permissions.auth.emailConfirmation', '2024-05-27 18:26:21.703000', '2024-05-27 18:26:21.703000', NULL, NULL),
(9, 'plugin::users-permissions.auth.sendEmailConfirmation', '2024-05-27 18:26:21.703000', '2024-05-27 18:26:21.703000', NULL, NULL),
(10, 'api::product.product.find', '2024-06-03 17:19:34.484000', '2024-06-03 17:19:34.484000', NULL, NULL),
(11, 'api::product.product.findOne', '2024-06-03 17:19:34.484000', '2024-06-03 17:19:34.484000', NULL, NULL),
(12, 'api::product.product.create', '2024-06-03 17:19:34.484000', '2024-06-03 17:19:34.484000', NULL, NULL),
(13, 'api::product.product.update', '2024-06-03 17:19:34.484000', '2024-06-03 17:19:34.484000', NULL, NULL),
(14, 'api::product.product.delete', '2024-06-03 17:19:34.484000', '2024-06-03 17:19:34.484000', NULL, NULL),
(15, 'api::category.category.find', '2024-06-08 17:47:34.390000', '2024-06-08 17:47:34.390000', NULL, NULL),
(16, 'api::category.category.findOne', '2024-06-08 17:47:34.390000', '2024-06-08 17:47:34.390000', NULL, NULL),
(17, 'api::category.category.create', '2024-06-08 17:47:34.390000', '2024-06-08 17:47:34.390000', NULL, NULL),
(18, 'api::category.category.update', '2024-06-08 17:47:34.390000', '2024-06-08 17:47:34.390000', NULL, NULL),
(19, 'api::category.category.delete', '2024-06-08 17:47:34.390000', '2024-06-08 17:47:34.390000', NULL, NULL),
(20, 'api::use.use.find', '2024-06-08 22:17:00.232000', '2024-06-08 22:17:00.232000', NULL, NULL),
(21, 'api::use.use.findOne', '2024-06-08 22:17:00.232000', '2024-06-08 22:17:00.232000', NULL, NULL),
(22, 'api::use.use.create', '2024-06-08 22:17:00.232000', '2024-06-08 22:17:00.232000', NULL, NULL),
(23, 'api::use.use.update', '2024-06-08 22:17:00.232000', '2024-06-08 22:17:00.232000', NULL, NULL),
(24, 'api::use.use.delete', '2024-06-08 22:17:00.232000', '2024-06-08 22:17:00.232000', NULL, NULL),
(25, 'plugin::users-permissions.user.create', '2024-06-10 18:12:27.832000', '2024-06-10 18:12:27.832000', NULL, NULL),
(26, 'plugin::users-permissions.user.find', '2024-06-10 18:12:27.832000', '2024-06-10 18:12:27.832000', NULL, NULL),
(27, 'plugin::users-permissions.user.findOne', '2024-06-10 18:12:27.832000', '2024-06-10 18:12:27.832000', NULL, NULL),
(28, 'plugin::upload.content-api.upload', '2024-06-16 00:56:32.610000', '2024-06-16 00:56:32.610000', NULL, NULL),
(29, 'api::brand.brand.find', '2024-06-16 13:59:15.381000', '2024-06-16 13:59:15.381000', NULL, NULL),
(30, 'api::brand.brand.findOne', '2024-06-16 13:59:15.381000', '2024-06-16 13:59:15.381000', NULL, NULL),
(31, 'api::brand.brand.create', '2024-06-16 13:59:15.381000', '2024-06-16 13:59:15.381000', NULL, NULL),
(32, 'api::brand.brand.update', '2024-06-16 13:59:15.381000', '2024-06-16 13:59:15.381000', NULL, NULL),
(33, 'api::brand.brand.delete', '2024-06-16 13:59:15.381000', '2024-06-16 13:59:15.381000', NULL, NULL),
(34, 'plugin::upload.content-api.find', '2024-06-16 14:14:10.379000', '2024-06-16 14:14:10.379000', NULL, NULL),
(35, 'plugin::upload.content-api.findOne', '2024-06-16 14:14:10.379000', '2024-06-16 14:14:10.379000', NULL, NULL),
(36, 'plugin::upload.content-api.destroy', '2024-06-16 14:14:10.379000', '2024-06-16 14:14:10.379000', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `up_permissions_role_links`
--

CREATE TABLE `up_permissions_role_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `permission_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `up_permissions_role_links`
--

INSERT INTO `up_permissions_role_links` (`id`, `permission_id`, `role_id`, `permission_order`) VALUES
(1, 1, 1, 1),
(2, 2, 1, 1),
(3, 3, 2, 1),
(4, 4, 2, 1),
(5, 5, 2, 1),
(6, 6, 2, 1),
(7, 8, 2, 1),
(8, 7, 2, 1),
(9, 9, 2, 1),
(10, 10, 2, 2),
(11, 12, 2, 2),
(12, 11, 2, 2),
(13, 13, 2, 2),
(14, 14, 2, 3),
(15, 16, 2, 4),
(16, 15, 2, 4),
(17, 18, 2, 4),
(18, 19, 2, 4),
(19, 17, 2, 4),
(20, 20, 2, 5),
(21, 21, 2, 5),
(22, 23, 2, 5),
(23, 22, 2, 5),
(24, 24, 2, 5),
(25, 27, 2, 6),
(26, 25, 2, 6),
(27, 26, 2, 6),
(28, 28, 2, 7),
(29, 29, 2, 8),
(30, 30, 2, 8),
(31, 31, 2, 8),
(32, 32, 2, 8),
(33, 33, 2, 9),
(34, 35, 2, 10),
(35, 34, 2, 10),
(36, 36, 2, 10);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `up_roles`
--

CREATE TABLE `up_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `up_roles`
--

INSERT INTO `up_roles` (`id`, `name`, `description`, `type`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'Authenticated', 'Default role given to authenticated user.', 'authenticated', '2024-05-27 18:26:21.677000', '2024-05-27 18:26:21.677000', NULL, NULL),
(2, 'Public', 'Default role given to unauthenticated user.', 'public', '2024-05-27 18:26:21.680000', '2024-07-04 23:40:14.165000', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `up_users`
--

CREATE TABLE `up_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `reset_password_token` varchar(255) DEFAULT NULL,
  `confirmation_token` varchar(255) DEFAULT NULL,
  `confirmed` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `up_users`
--

INSERT INTO `up_users` (`id`, `username`, `email`, `provider`, `password`, `reset_password_token`, `confirmation_token`, `confirmed`, `blocked`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`, `phone`, `address`) VALUES
(25, 'dat', '123@gmail.com', 'local', '$2a$10$auZOlBgFRJP0DE9gdiqLgu7d/steqdwCtRHCRVLiMPoYlx5nejBWi', NULL, NULL, 1, 0, '2024-06-10 19:27:32.481000', '2024-06-22 20:14:36.592000', NULL, 1, '03434354546', 'HCM'),
(26, 'dat123', 'admin@gmail.com', 'local', '$2a$10$lj7c7Hmby/GSynCf5VvbQeJf1typdkSaCw6JaIjOsNpzcwXjqKtBO', NULL, NULL, 1, 0, '2024-07-05 00:41:08.456000', '2024-07-05 00:41:08.456000', NULL, NULL, '0676754565', 'HCM'),
(27, 'admin', 'da@gmail.com', 'local', '$2a$10$aDpoDw1u4pDO2y6SfFls8O/hUfjoeqvVWPhW8wT0FpkftBgZtAcoi', NULL, NULL, 1, 0, '2024-07-06 13:32:37.686000', '2024-07-06 13:32:37.686000', NULL, NULL, '0325302054', 'HCM'),
(28, 'dat123456', 'dat147714@gmail.com', 'local', '$2a$10$98zB6EKARGE6zntfnVNC7OYTMAAFtedlxNZktPgPZfqumpHkCNtSa', NULL, NULL, 1, 0, '2024-07-06 13:36:30.711000', '2024-07-06 13:36:30.711000', NULL, NULL, '0676754565', 'HCM');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `up_users_role_links`
--

CREATE TABLE `up_users_role_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `user_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `up_users_role_links`
--

INSERT INTO `up_users_role_links` (`id`, `user_id`, `role_id`, `user_order`) VALUES
(25, 25, 1, 10),
(26, 26, 1, 11),
(27, 27, 1, 12),
(28, 28, 1, 13);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `uses`
--

CREATE TABLE `uses` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_permissions_created_by_id_fk` (`created_by_id`),
  ADD KEY `admin_permissions_updated_by_id_fk` (`updated_by_id`);

--
-- Chỉ mục cho bảng `admin_permissions_role_links`
--
ALTER TABLE `admin_permissions_role_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_permissions_role_links_unique` (`permission_id`,`role_id`),
  ADD KEY `admin_permissions_role_links_fk` (`permission_id`),
  ADD KEY `admin_permissions_role_links_inv_fk` (`role_id`),
  ADD KEY `admin_permissions_role_links_order_inv_fk` (`permission_order`);

--
-- Chỉ mục cho bảng `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_roles_created_by_id_fk` (`created_by_id`),
  ADD KEY `admin_roles_updated_by_id_fk` (`updated_by_id`);

--
-- Chỉ mục cho bảng `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_users_created_by_id_fk` (`created_by_id`),
  ADD KEY `admin_users_updated_by_id_fk` (`updated_by_id`);

--
-- Chỉ mục cho bảng `admin_users_roles_links`
--
ALTER TABLE `admin_users_roles_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_users_roles_links_unique` (`user_id`,`role_id`),
  ADD KEY `admin_users_roles_links_fk` (`user_id`),
  ADD KEY `admin_users_roles_links_inv_fk` (`role_id`),
  ADD KEY `admin_users_roles_links_order_fk` (`role_order`),
  ADD KEY `admin_users_roles_links_order_inv_fk` (`user_order`);

--
-- Chỉ mục cho bảng `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`),
  ADD KEY `brands_created_by_id_fk` (`created_by_id`),
  ADD KEY `brands_updated_by_id_fk` (`updated_by_id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_created_by_id_fk` (`created_by_id`),
  ADD KEY `categories_updated_by_id_fk` (`updated_by_id`);

--
-- Chỉ mục cho bảng `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `upload_files_folder_path_index` (`folder_path`),
  ADD KEY `upload_files_created_at_index` (`created_at`),
  ADD KEY `upload_files_updated_at_index` (`updated_at`),
  ADD KEY `upload_files_name_index` (`name`),
  ADD KEY `upload_files_size_index` (`size`),
  ADD KEY `upload_files_ext_index` (`ext`),
  ADD KEY `files_created_by_id_fk` (`created_by_id`),
  ADD KEY `files_updated_by_id_fk` (`updated_by_id`);

--
-- Chỉ mục cho bảng `files_folder_links`
--
ALTER TABLE `files_folder_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `files_folder_links_unique` (`file_id`,`folder_id`),
  ADD KEY `files_folder_links_fk` (`file_id`),
  ADD KEY `files_folder_links_inv_fk` (`folder_id`),
  ADD KEY `files_folder_links_order_inv_fk` (`file_order`);

--
-- Chỉ mục cho bảng `files_related_morphs`
--
ALTER TABLE `files_related_morphs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `files_related_morphs_fk` (`file_id`),
  ADD KEY `files_related_morphs_order_index` (`order`),
  ADD KEY `files_related_morphs_id_column_index` (`related_id`);

--
-- Chỉ mục cho bảng `i18n_locale`
--
ALTER TABLE `i18n_locale`
  ADD PRIMARY KEY (`id`),
  ADD KEY `i18n_locale_created_by_id_fk` (`created_by_id`),
  ADD KEY `i18n_locale_updated_by_id_fk` (`updated_by_id`);

--
-- Chỉ mục cho bảng `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menus_created_by_id_fk` (`created_by_id`),
  ADD KEY `menus_updated_by_id_fk` (`updated_by_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_created_by_id_fk` (`created_by_id`),
  ADD KEY `products_updated_by_id_fk` (`updated_by_id`);

--
-- Chỉ mục cho bảng `products_category_links`
--
ALTER TABLE `products_category_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_category_links_unique` (`product_id`,`category_id`),
  ADD KEY `products_category_links_fk` (`product_id`),
  ADD KEY `products_category_links_inv_fk` (`category_id`),
  ADD KEY `products_category_links_order_inv_fk` (`product_order`);

--
-- Chỉ mục cho bảng `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sliders_created_by_id_fk` (`created_by_id`),
  ADD KEY `sliders_updated_by_id_fk` (`updated_by_id`);

--
-- Chỉ mục cho bảng `strapi_api_tokens`
--
ALTER TABLE `strapi_api_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strapi_api_tokens_created_by_id_fk` (`created_by_id`),
  ADD KEY `strapi_api_tokens_updated_by_id_fk` (`updated_by_id`);

--
-- Chỉ mục cho bảng `strapi_api_token_permissions`
--
ALTER TABLE `strapi_api_token_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strapi_api_token_permissions_created_by_id_fk` (`created_by_id`),
  ADD KEY `strapi_api_token_permissions_updated_by_id_fk` (`updated_by_id`);

--
-- Chỉ mục cho bảng `strapi_api_token_permissions_token_links`
--
ALTER TABLE `strapi_api_token_permissions_token_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `strapi_api_token_permissions_token_links_unique` (`api_token_permission_id`,`api_token_id`),
  ADD KEY `strapi_api_token_permissions_token_links_fk` (`api_token_permission_id`),
  ADD KEY `strapi_api_token_permissions_token_links_inv_fk` (`api_token_id`),
  ADD KEY `strapi_api_token_permissions_token_links_order_inv_fk` (`api_token_permission_order`);

--
-- Chỉ mục cho bảng `strapi_core_store_settings`
--
ALTER TABLE `strapi_core_store_settings`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `strapi_database_schema`
--
ALTER TABLE `strapi_database_schema`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `strapi_migrations`
--
ALTER TABLE `strapi_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `strapi_releases`
--
ALTER TABLE `strapi_releases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strapi_releases_created_by_id_fk` (`created_by_id`),
  ADD KEY `strapi_releases_updated_by_id_fk` (`updated_by_id`);

--
-- Chỉ mục cho bảng `strapi_release_actions`
--
ALTER TABLE `strapi_release_actions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strapi_release_actions_created_by_id_fk` (`created_by_id`),
  ADD KEY `strapi_release_actions_updated_by_id_fk` (`updated_by_id`);

--
-- Chỉ mục cho bảng `strapi_release_actions_release_links`
--
ALTER TABLE `strapi_release_actions_release_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `strapi_release_actions_release_links_unique` (`release_action_id`,`release_id`),
  ADD KEY `strapi_release_actions_release_links_fk` (`release_action_id`),
  ADD KEY `strapi_release_actions_release_links_inv_fk` (`release_id`),
  ADD KEY `strapi_release_actions_release_links_order_inv_fk` (`release_action_order`);

--
-- Chỉ mục cho bảng `strapi_transfer_tokens`
--
ALTER TABLE `strapi_transfer_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strapi_transfer_tokens_created_by_id_fk` (`created_by_id`),
  ADD KEY `strapi_transfer_tokens_updated_by_id_fk` (`updated_by_id`);

--
-- Chỉ mục cho bảng `strapi_transfer_token_permissions`
--
ALTER TABLE `strapi_transfer_token_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strapi_transfer_token_permissions_created_by_id_fk` (`created_by_id`),
  ADD KEY `strapi_transfer_token_permissions_updated_by_id_fk` (`updated_by_id`);

--
-- Chỉ mục cho bảng `strapi_transfer_token_permissions_token_links`
--
ALTER TABLE `strapi_transfer_token_permissions_token_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `strapi_transfer_token_permissions_token_links_unique` (`transfer_token_permission_id`,`transfer_token_id`),
  ADD KEY `strapi_transfer_token_permissions_token_links_fk` (`transfer_token_permission_id`),
  ADD KEY `strapi_transfer_token_permissions_token_links_inv_fk` (`transfer_token_id`),
  ADD KEY `strapi_transfer_token_permissions_token_links_order_inv_fk` (`transfer_token_permission_order`);

--
-- Chỉ mục cho bảng `strapi_webhooks`
--
ALTER TABLE `strapi_webhooks`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `upload_folders`
--
ALTER TABLE `upload_folders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `upload_folders_path_id_index` (`path_id`),
  ADD UNIQUE KEY `upload_folders_path_index` (`path`),
  ADD KEY `upload_folders_created_by_id_fk` (`created_by_id`),
  ADD KEY `upload_folders_updated_by_id_fk` (`updated_by_id`);

--
-- Chỉ mục cho bảng `upload_folders_parent_links`
--
ALTER TABLE `upload_folders_parent_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `upload_folders_parent_links_unique` (`folder_id`,`inv_folder_id`),
  ADD KEY `upload_folders_parent_links_fk` (`folder_id`),
  ADD KEY `upload_folders_parent_links_inv_fk` (`inv_folder_id`),
  ADD KEY `upload_folders_parent_links_order_inv_fk` (`folder_order`);

--
-- Chỉ mục cho bảng `up_permissions`
--
ALTER TABLE `up_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `up_permissions_created_by_id_fk` (`created_by_id`),
  ADD KEY `up_permissions_updated_by_id_fk` (`updated_by_id`);

--
-- Chỉ mục cho bảng `up_permissions_role_links`
--
ALTER TABLE `up_permissions_role_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `up_permissions_role_links_unique` (`permission_id`,`role_id`),
  ADD KEY `up_permissions_role_links_fk` (`permission_id`),
  ADD KEY `up_permissions_role_links_inv_fk` (`role_id`),
  ADD KEY `up_permissions_role_links_order_inv_fk` (`permission_order`);

--
-- Chỉ mục cho bảng `up_roles`
--
ALTER TABLE `up_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `up_roles_created_by_id_fk` (`created_by_id`),
  ADD KEY `up_roles_updated_by_id_fk` (`updated_by_id`);

--
-- Chỉ mục cho bảng `up_users`
--
ALTER TABLE `up_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `up_users_created_by_id_fk` (`created_by_id`),
  ADD KEY `up_users_updated_by_id_fk` (`updated_by_id`);

--
-- Chỉ mục cho bảng `up_users_role_links`
--
ALTER TABLE `up_users_role_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `up_users_role_links_unique` (`user_id`,`role_id`),
  ADD KEY `up_users_role_links_fk` (`user_id`),
  ADD KEY `up_users_role_links_inv_fk` (`role_id`),
  ADD KEY `up_users_role_links_order_inv_fk` (`user_order`);

--
-- Chỉ mục cho bảng `uses`
--
ALTER TABLE `uses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uses_created_by_id_fk` (`created_by_id`),
  ADD KEY `uses_updated_by_id_fk` (`updated_by_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin_permissions`
--
ALTER TABLE `admin_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT cho bảng `admin_permissions_role_links`
--
ALTER TABLE `admin_permissions_role_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT cho bảng `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `admin_users_roles_links`
--
ALTER TABLE `admin_users_roles_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `files`
--
ALTER TABLE `files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=300;

--
-- AUTO_INCREMENT cho bảng `files_folder_links`
--
ALTER TABLE `files_folder_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=288;

--
-- AUTO_INCREMENT cho bảng `files_related_morphs`
--
ALTER TABLE `files_related_morphs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=177;

--
-- AUTO_INCREMENT cho bảng `i18n_locale`
--
ALTER TABLE `i18n_locale`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT cho bảng `products_category_links`
--
ALTER TABLE `products_category_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT cho bảng `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `strapi_api_tokens`
--
ALTER TABLE `strapi_api_tokens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `strapi_api_token_permissions`
--
ALTER TABLE `strapi_api_token_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `strapi_api_token_permissions_token_links`
--
ALTER TABLE `strapi_api_token_permissions_token_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `strapi_core_store_settings`
--
ALTER TABLE `strapi_core_store_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT cho bảng `strapi_database_schema`
--
ALTER TABLE `strapi_database_schema`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `strapi_migrations`
--
ALTER TABLE `strapi_migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `strapi_releases`
--
ALTER TABLE `strapi_releases`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `strapi_release_actions`
--
ALTER TABLE `strapi_release_actions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `strapi_release_actions_release_links`
--
ALTER TABLE `strapi_release_actions_release_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `strapi_transfer_tokens`
--
ALTER TABLE `strapi_transfer_tokens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `strapi_transfer_token_permissions`
--
ALTER TABLE `strapi_transfer_token_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `strapi_transfer_token_permissions_token_links`
--
ALTER TABLE `strapi_transfer_token_permissions_token_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `strapi_webhooks`
--
ALTER TABLE `strapi_webhooks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `upload_folders`
--
ALTER TABLE `upload_folders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `upload_folders_parent_links`
--
ALTER TABLE `upload_folders_parent_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `up_permissions`
--
ALTER TABLE `up_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT cho bảng `up_permissions_role_links`
--
ALTER TABLE `up_permissions_role_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT cho bảng `up_roles`
--
ALTER TABLE `up_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `up_users`
--
ALTER TABLE `up_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT cho bảng `up_users_role_links`
--
ALTER TABLE `up_users_role_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT cho bảng `uses`
--
ALTER TABLE `uses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD CONSTRAINT `admin_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `admin_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Các ràng buộc cho bảng `admin_permissions_role_links`
--
ALTER TABLE `admin_permissions_role_links`
  ADD CONSTRAINT `admin_permissions_role_links_fk` FOREIGN KEY (`permission_id`) REFERENCES `admin_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `admin_permissions_role_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `admin_roles` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD CONSTRAINT `admin_roles_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `admin_roles_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Các ràng buộc cho bảng `admin_users`
--
ALTER TABLE `admin_users`
  ADD CONSTRAINT `admin_users_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `admin_users_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Các ràng buộc cho bảng `admin_users_roles_links`
--
ALTER TABLE `admin_users_roles_links`
  ADD CONSTRAINT `admin_users_roles_links_fk` FOREIGN KEY (`user_id`) REFERENCES `admin_users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `admin_users_roles_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `admin_roles` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `brands`
--
ALTER TABLE `brands`
  ADD CONSTRAINT `brands_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `brands_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Các ràng buộc cho bảng `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `categories_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Các ràng buộc cho bảng `files`
--
ALTER TABLE `files`
  ADD CONSTRAINT `files_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `files_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Các ràng buộc cho bảng `files_folder_links`
--
ALTER TABLE `files_folder_links`
  ADD CONSTRAINT `files_folder_links_fk` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `files_folder_links_inv_fk` FOREIGN KEY (`folder_id`) REFERENCES `upload_folders` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `files_related_morphs`
--
ALTER TABLE `files_related_morphs`
  ADD CONSTRAINT `files_related_morphs_fk` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `i18n_locale`
--
ALTER TABLE `i18n_locale`
  ADD CONSTRAINT `i18n_locale_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `i18n_locale_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Các ràng buộc cho bảng `menus`
--
ALTER TABLE `menus`
  ADD CONSTRAINT `menus_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `menus_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `products_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Các ràng buộc cho bảng `products_category_links`
--
ALTER TABLE `products_category_links`
  ADD CONSTRAINT `products_category_links_fk` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_category_links_inv_fk` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `sliders`
--
ALTER TABLE `sliders`
  ADD CONSTRAINT `sliders_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `sliders_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Các ràng buộc cho bảng `strapi_api_tokens`
--
ALTER TABLE `strapi_api_tokens`
  ADD CONSTRAINT `strapi_api_tokens_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi_api_tokens_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Các ràng buộc cho bảng `strapi_api_token_permissions`
--
ALTER TABLE `strapi_api_token_permissions`
  ADD CONSTRAINT `strapi_api_token_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi_api_token_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Các ràng buộc cho bảng `strapi_api_token_permissions_token_links`
--
ALTER TABLE `strapi_api_token_permissions_token_links`
  ADD CONSTRAINT `strapi_api_token_permissions_token_links_fk` FOREIGN KEY (`api_token_permission_id`) REFERENCES `strapi_api_token_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `strapi_api_token_permissions_token_links_inv_fk` FOREIGN KEY (`api_token_id`) REFERENCES `strapi_api_tokens` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `strapi_releases`
--
ALTER TABLE `strapi_releases`
  ADD CONSTRAINT `strapi_releases_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi_releases_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Các ràng buộc cho bảng `strapi_release_actions`
--
ALTER TABLE `strapi_release_actions`
  ADD CONSTRAINT `strapi_release_actions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi_release_actions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Các ràng buộc cho bảng `strapi_release_actions_release_links`
--
ALTER TABLE `strapi_release_actions_release_links`
  ADD CONSTRAINT `strapi_release_actions_release_links_fk` FOREIGN KEY (`release_action_id`) REFERENCES `strapi_release_actions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `strapi_release_actions_release_links_inv_fk` FOREIGN KEY (`release_id`) REFERENCES `strapi_releases` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `strapi_transfer_tokens`
--
ALTER TABLE `strapi_transfer_tokens`
  ADD CONSTRAINT `strapi_transfer_tokens_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi_transfer_tokens_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Các ràng buộc cho bảng `strapi_transfer_token_permissions`
--
ALTER TABLE `strapi_transfer_token_permissions`
  ADD CONSTRAINT `strapi_transfer_token_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi_transfer_token_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Các ràng buộc cho bảng `strapi_transfer_token_permissions_token_links`
--
ALTER TABLE `strapi_transfer_token_permissions_token_links`
  ADD CONSTRAINT `strapi_transfer_token_permissions_token_links_fk` FOREIGN KEY (`transfer_token_permission_id`) REFERENCES `strapi_transfer_token_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `strapi_transfer_token_permissions_token_links_inv_fk` FOREIGN KEY (`transfer_token_id`) REFERENCES `strapi_transfer_tokens` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `upload_folders`
--
ALTER TABLE `upload_folders`
  ADD CONSTRAINT `upload_folders_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `upload_folders_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Các ràng buộc cho bảng `upload_folders_parent_links`
--
ALTER TABLE `upload_folders_parent_links`
  ADD CONSTRAINT `upload_folders_parent_links_fk` FOREIGN KEY (`folder_id`) REFERENCES `upload_folders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `upload_folders_parent_links_inv_fk` FOREIGN KEY (`inv_folder_id`) REFERENCES `upload_folders` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `up_permissions`
--
ALTER TABLE `up_permissions`
  ADD CONSTRAINT `up_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `up_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Các ràng buộc cho bảng `up_permissions_role_links`
--
ALTER TABLE `up_permissions_role_links`
  ADD CONSTRAINT `up_permissions_role_links_fk` FOREIGN KEY (`permission_id`) REFERENCES `up_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `up_permissions_role_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `up_roles` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `up_roles`
--
ALTER TABLE `up_roles`
  ADD CONSTRAINT `up_roles_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `up_roles_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Các ràng buộc cho bảng `up_users`
--
ALTER TABLE `up_users`
  ADD CONSTRAINT `up_users_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `up_users_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Các ràng buộc cho bảng `up_users_role_links`
--
ALTER TABLE `up_users_role_links`
  ADD CONSTRAINT `up_users_role_links_fk` FOREIGN KEY (`user_id`) REFERENCES `up_users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `up_users_role_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `up_roles` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `uses`
--
ALTER TABLE `uses`
  ADD CONSTRAINT `uses_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `uses_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
