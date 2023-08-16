-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 16, 2023 at 02:56 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `atcustomwebsites`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_db7_forms`
--

CREATE TABLE `wp_db7_forms` (
  `form_id` bigint(20) NOT NULL,
  `form_post_id` bigint(20) NOT NULL,
  `form_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `form_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost:81/atcustomwebsites', 'yes'),
(2, 'home', 'http://localhost:81/atcustomwebsites', 'yes'),
(3, 'blogname', 'Website Name Here', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'mike@goauroratech.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '', 'yes'),
(11, 'comments_notify', '', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', '', 'yes'),
(20, 'default_ping_status', '', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '', 'yes'),
(27, 'moderation_notify', '', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:21:{i:0;s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";i:1;s:91:\"all-in-one-wp-migration-unlimited-extension/all-in-one-wp-migration-unlimited-extension.php\";i:2;s:31:\"advanced-access-manager/aam.php\";i:3;s:45:\"advanced-backgrounds/advanced-backgrounds.php\";i:4;s:34:\"advanced-custom-fields-pro/acf.php\";i:5;s:25:\"animate-it/edsanimate.php\";i:6;s:29:\"antispam-bee/antispam_bee.php\";i:7;s:39:\"block-bad-queries/block-bad-queries.php\";i:8;s:63:\"block-specific-plugin-updates/block-specific-plugin-updates.php\";i:9;s:33:\"classic-editor/classic-editor.php\";i:10;s:35:\"classic-widgets/classic-widgets.php\";i:11;s:69:\"disable-wp-theme-updates-advance/disable-wp-theme-updates-advance.php\";i:12;s:47:\"email-address-encoder/email-address-encoder.php\";i:13;s:75:\"open-external-links-in-a-new-window/open-external-links-in-a-new-window.php\";i:14;s:27:\"redirection/redirection.php\";i:15;s:35:\"responsive-menu/responsive-menu.php\";i:16;s:27:\"svg-support/svg-support.php\";i:17;s:27:\"updraftplus/updraftplus.php\";i:18;s:24:\"wordpress-seo/wp-seo.php\";i:19;s:27:\"wp-pagenavi/wp-pagenavi.php\";i:20;s:58:\"wp-responsive-recent-post-slider/wp-recent-post-slider.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:5:{i:0;s:75:\"E:\\xampp\\htdocs\\atcustomwebsites/wp-content/themes/iconic-one/part-home.php\";i:2;s:71:\"E:\\xampp\\htdocs\\atcustomwebsites/wp-content/themes/iconic-one/style.css\";i:3;s:72:\"E:\\xampp\\htdocs\\atcustomwebsites/wp-content/themes/iconic-one/header.php\";i:4;s:86:\"E:\\xampp\\htdocs\\atcustomwebsites/wp-content/themes/iconic-one/page-templates/inner.php\";i:5;s:72:\"E:\\xampp\\htdocs\\atcustomwebsites/wp-content/themes/iconic-one/footer.php\";}', 'no'),
(40, 'template', 'iconic-one', 'yes'),
(41, 'stylesheet', 'iconic-one', 'yes'),
(42, 'comment_registration', '', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '53496', 'yes'),
(47, 'uploads_use_yearmonth_folders', '', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '500', 'yes'),
(57, 'thumbnail_size_h', '350', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '600', 'yes'),
(60, 'medium_size_h', '500', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '0', 'yes'),
(63, 'large_size_h', '0', 'yes'),
(64, 'image_default_link_type', 'file', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:6:{s:31:\"advanced-access-manager/aam.php\";a:2:{i:0;s:3:\"AAM\";i:1;s:9:\"uninstall\";}s:27:\"redirection/redirection.php\";a:2:{i:0;s:17:\"Redirection_Admin\";i:1;s:16:\"plugin_uninstall\";}s:27:\"wp-pagenavi/wp-pagenavi.php\";s:14:\"__return_false\";s:24:\"wordpress-seo/wp-seo.php\";s:14:\"__return_false\";s:29:\"antispam-bee/antispam_bee.php\";a:2:{i:0;s:12:\"Antispam_Bee\";i:1;s:9:\"uninstall\";}s:47:\"email-address-encoder/email-address-encoder.php\";s:18:\"eae_uninstall_hook\";}', 'no'),
(80, 'timezone_string', 'America/New_York', 'yes'),
(81, 'page_for_posts', '12', 'yes'),
(82, 'page_on_front', '10', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '', 'yes'),
(91, 'admin_email_lifespan', '1683036163', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'initial_db_version', '48748', 'yes'),
(96, 'wp_user_roles', 'a:8:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:62:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:20:\"wpseo_manage_options\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:36:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:7:\"manager\";a:2:{s:4:\"name\";s:7:\"Manager\";s:12:\"capabilities\";a:39:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:6:\"editor\";b:1;s:13:\"switch_themes\";b:0;s:10:\"list_users\";b:1;s:11:\"edit_themes\";b:0;s:18:\"edit_theme_options\";b:1;}}s:13:\"wpseo_manager\";a:2:{s:4:\"name\";s:11:\"SEO Manager\";s:12:\"capabilities\";a:38:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;s:20:\"wpseo_manage_options\";b:1;s:23:\"view_site_health_checks\";b:1;}}s:12:\"wpseo_editor\";a:2:{s:4:\"name\";s:10:\"SEO Editor\";s:12:\"capabilities\";a:36:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;}}}', 'yes'),
(97, 'fresh_site', '0', 'yes'),
(98, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}s:16:\"themonic-sidebar\";a:2:{i:0;s:13:\"custom_html-2\";i:1;s:13:\"custom_html-3\";}s:13:\"array_version\";i:3;}', 'yes'),
(104, 'cron', 'a:14:{i:1692149847;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1692155279;a:1:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1692157759;a:1:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1692160130;a:1:{s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1692161625;a:1:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1692163037;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1692163699;a:2:{s:14:\"updraft_backup\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:23:\"updraft_backup_database\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1692171331;a:1:{s:34:\"puc_cron_check_updates-updraftplus\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1692197850;a:1:{s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1692202754;a:2:{s:13:\"wpseo-reindex\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:31:\"wpseo_permalink_structure_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1692203330;a:2:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1692203335;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1692211324;a:1:{s:21:\"ai1wm_storage_cleanup\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(105, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_custom_html', 'a:3:{i:2;a:2:{s:5:\"title\";s:20:\"Example Sidebar Item\";s:7:\"content\";s:130:\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\";}i:3;a:2:{s:5:\"title\";s:20:\"Another Sidebar Item\";s:7:\"content\";s:130:\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'recovery_keys', 'a:0:{}', 'yes'),
(116, 'theme_mods_twentytwenty', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1604420966;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(144, 'current_theme', 'Iconic One', 'yes'),
(145, 'theme_mods_iconic-one', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:2;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(146, 'theme_switched', '', 'yes'),
(149, 'finished_updating_comment_type', '1', 'yes'),
(199, 'recently_activated', 'a:0:{}', 'yes'),
(218, 'aam_access_settings', 'a:1:{s:4:\"role\";a:5:{s:6:\"author\";a:1:{s:7:\"toolbar\";a:16:{s:27:\"toolbar-wpfc-toolbar-parent\";b:1;s:32:\"wpfc-toolbar-parent-delete-cache\";b:1;s:45:\"wpfc-toolbar-parent-delete-cache-and-minified\";b:1;s:26:\"toolbar-updraft_admin_node\";b:1;s:25:\"updraft_admin_node_status\";b:1;s:26:\"updraft_admin_node_backups\";b:1;s:27:\"updraft_admin_node_settings\";b:1;s:33:\"updraft_admin_node_expert_content\";b:1;s:25:\"updraft_admin_node_addons\";b:1;s:16:\"toolbar-comments\";b:1;s:15:\"toolbar-wp-logo\";b:1;s:5:\"about\";b:1;s:5:\"wporg\";b:1;s:13:\"documentation\";b:1;s:14:\"support-forums\";b:1;s:8:\"feedback\";b:1;}}s:11:\"contributor\";a:1:{s:7:\"toolbar\";a:16:{s:27:\"toolbar-wpfc-toolbar-parent\";b:1;s:32:\"wpfc-toolbar-parent-delete-cache\";b:1;s:45:\"wpfc-toolbar-parent-delete-cache-and-minified\";b:1;s:26:\"toolbar-updraft_admin_node\";b:1;s:25:\"updraft_admin_node_status\";b:1;s:26:\"updraft_admin_node_backups\";b:1;s:27:\"updraft_admin_node_settings\";b:1;s:33:\"updraft_admin_node_expert_content\";b:1;s:25:\"updraft_admin_node_addons\";b:1;s:16:\"toolbar-comments\";b:1;s:15:\"toolbar-wp-logo\";b:1;s:5:\"about\";b:1;s:5:\"wporg\";b:1;s:13:\"documentation\";b:1;s:14:\"support-forums\";b:1;s:8:\"feedback\";b:1;}}s:6:\"editor\";a:2:{s:7:\"toolbar\";a:15:{s:15:\"toolbar-wp-logo\";b:1;s:5:\"about\";b:1;s:5:\"wporg\";b:1;s:13:\"documentation\";b:1;s:14:\"support-forums\";b:1;s:8:\"feedback\";b:1;s:27:\"toolbar-wpfc-toolbar-parent\";b:1;s:32:\"wpfc-toolbar-parent-delete-cache\";b:1;s:45:\"wpfc-toolbar-parent-delete-cache-and-minified\";b:1;s:26:\"toolbar-updraft_admin_node\";b:1;s:25:\"updraft_admin_node_status\";b:1;s:26:\"updraft_admin_node_backups\";b:1;s:27:\"updraft_admin_node_settings\";b:1;s:33:\"updraft_admin_node_expert_content\";b:1;s:25:\"updraft_admin_node_addons\";b:1;}s:4:\"menu\";a:16:{s:10:\"menu-wpcf7\";b:1;s:5:\"wpcf7\";b:1;s:9:\"wpcf7-new\";b:1;s:17:\"wpcf7-integration\";b:1;s:17:\"recaptcha-version\";b:1;s:15:\"menu-themes.php\";b:0;s:10:\"themes.php\";b:0;s:13:\"customize.php\";b:0;s:11:\"widgets.php\";b:0;s:13:\"nav-menus.php\";b:0;s:24:\"iconic_one_theme_options\";b:0;s:17:\"custom-background\";b:0;s:16:\"theme-editor.php\";b:0;s:12:\"post-new.php\";b:0;s:10:\"import.php\";b:1;s:9:\"tools.php\";b:1;}}s:7:\"manager\";a:2:{s:7:\"toolbar\";a:15:{s:15:\"toolbar-wp-logo\";b:1;s:5:\"about\";b:1;s:5:\"wporg\";b:1;s:13:\"documentation\";b:1;s:14:\"support-forums\";b:1;s:8:\"feedback\";b:1;s:27:\"toolbar-wpfc-toolbar-parent\";b:1;s:32:\"wpfc-toolbar-parent-delete-cache\";b:1;s:45:\"wpfc-toolbar-parent-delete-cache-and-minified\";b:1;s:26:\"toolbar-updraft_admin_node\";b:1;s:25:\"updraft_admin_node_status\";b:1;s:26:\"updraft_admin_node_backups\";b:1;s:27:\"updraft_admin_node_settings\";b:1;s:33:\"updraft_admin_node_expert_content\";b:1;s:25:\"updraft_admin_node_addons\";b:1;}s:4:\"menu\";a:18:{s:10:\"menu-wpcf7\";b:1;s:5:\"wpcf7\";b:1;s:9:\"wpcf7-new\";b:1;s:17:\"wpcf7-integration\";b:1;s:17:\"recaptcha-version\";b:1;s:15:\"menu-themes.php\";b:0;s:10:\"themes.php\";b:1;s:13:\"customize.php\";b:1;s:11:\"widgets.php\";b:0;s:13:\"nav-menus.php\";b:0;s:24:\"iconic_one_theme_options\";b:1;s:17:\"custom-background\";b:1;s:16:\"theme-editor.php\";b:1;s:12:\"post-new.php\";b:0;s:10:\"import.php\";b:1;s:9:\"tools.php\";b:1;s:12:\"user-new.php\";b:1;s:16:\"cfdb7-extensions\";b:1;}}s:13:\"administrator\";a:1:{s:7:\"toolbar\";a:12:{s:16:\"toolbar-comments\";b:1;s:19:\"toolbar-new-content\";b:1;s:8:\"new-post\";b:1;s:9:\"new-media\";b:1;s:8:\"new-page\";b:1;s:8:\"new-user\";b:1;s:26:\"toolbar-updraft_admin_node\";b:1;s:25:\"updraft_admin_node_status\";b:1;s:26:\"updraft_admin_node_backups\";b:1;s:27:\"updraft_admin_node_settings\";b:1;s:33:\"updraft_admin_node_expert_content\";b:1;s:25:\"updraft_admin_node_addons\";b:1;}}}}', 'yes'),
(219, 'aam_migrations', 'a:8:{i:0;s:19:\"2019_11_20-base.php\";i:1;s:19:\"2020_02_01-base.php\";i:2;s:19:\"2020_03_02-base.php\";i:3;s:19:\"2019_12_19-base.php\";i:4;s:19:\"2019_12_01-base.php\";i:5;s:19:\"2019_06_30-base.php\";i:6;s:19:\"2021_10_07-base.php\";i:7;s:19:\"2121_10_15-base.php\";}', 'yes'),
(220, 'aam_addons', 'a:0:{}', 'yes'),
(221, 'widget_aam_backend_login', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(222, 'aam_menu_cache', 'a:2:{s:4:\"menu\";a:34:{i:2;a:7:{i:0;s:9:\"Dashboard\";i:1;s:4:\"read\";i:2;s:9:\"index.php\";i:3;s:0:\"\";i:4;s:57:\"menu-top menu-top-first menu-icon-dashboard menu-top-last\";i:5;s:14:\"menu-dashboard\";i:6;s:19:\"dashicons-dashboard\";}i:4;a:5:{i:0;s:0:\"\";i:1;s:4:\"read\";i:2;s:10:\"separator1\";i:3;s:0:\"\";i:4;s:17:\"wp-menu-separator\";}i:5;a:7:{i:0;s:5:\"Posts\";i:1;s:10:\"edit_posts\";i:2;s:8:\"edit.php\";i:3;s:0:\"\";i:4;s:52:\"menu-top menu-icon-post open-if-no-js menu-top-first\";i:5;s:10:\"menu-posts\";i:6;s:20:\"dashicons-admin-post\";}i:10;a:7:{i:0;s:5:\"Media\";i:1;s:12:\"upload_files\";i:2;s:10:\"upload.php\";i:3;s:0:\"\";i:4;s:24:\"menu-top menu-icon-media\";i:5;s:10:\"menu-media\";i:6;s:21:\"dashicons-admin-media\";}i:20;a:7:{i:0;s:5:\"Pages\";i:1;s:10:\"edit_pages\";i:2;s:23:\"edit.php?post_type=page\";i:3;s:0:\"\";i:4;s:23:\"menu-top menu-icon-page\";i:5;s:10:\"menu-pages\";i:6;s:20:\"dashicons-admin-page\";}i:25;a:7:{i:0;s:198:\"Comments <span class=\"awaiting-mod count-0\"><span class=\"pending-count\" aria-hidden=\"true\">0</span><span class=\"comments-in-moderation-text screen-reader-text\">0 Comments in moderation</span></span>\";i:1;s:10:\"edit_posts\";i:2;s:17:\"edit-comments.php\";i:3;s:0:\"\";i:4;s:41:\"menu-top menu-icon-comments menu-top-last\";i:5;s:13:\"menu-comments\";i:6;s:24:\"dashicons-admin-comments\";}i:59;a:5:{i:0;s:0:\"\";i:1;s:4:\"read\";i:2;s:10:\"separator2\";i:3;s:0:\"\";i:4;s:17:\"wp-menu-separator\";}i:60;a:7:{i:0;s:10:\"Appearance\";i:1;s:13:\"switch_themes\";i:2;s:10:\"themes.php\";i:3;s:0:\"\";i:4;s:44:\"menu-top menu-icon-appearance menu-top-first\";i:5;s:15:\"menu-appearance\";i:6;s:26:\"dashicons-admin-appearance\";}i:65;a:7:{i:0;s:87:\"Plugins <span class=\"update-plugins count-1\"><span class=\"plugin-count\">1</span></span>\";i:1;s:16:\"activate_plugins\";i:2;s:11:\"plugins.php\";i:3;s:0:\"\";i:4;s:26:\"menu-top menu-icon-plugins\";i:5;s:12:\"menu-plugins\";i:6;s:23:\"dashicons-admin-plugins\";}i:70;a:7:{i:0;s:5:\"Users\";i:1;s:10:\"list_users\";i:2;s:9:\"users.php\";i:3;s:0:\"\";i:4;s:24:\"menu-top menu-icon-users\";i:5;s:10:\"menu-users\";i:6;s:21:\"dashicons-admin-users\";}i:75;a:7:{i:0;s:5:\"Tools\";i:1;s:10:\"edit_posts\";i:2;s:9:\"tools.php\";i:3;s:0:\"\";i:4;s:24:\"menu-top menu-icon-tools\";i:5;s:10:\"menu-tools\";i:6;s:21:\"dashicons-admin-tools\";}i:80;a:7:{i:0;s:8:\"Settings\";i:1;s:14:\"manage_options\";i:2;s:19:\"options-general.php\";i:3;s:0:\"\";i:4;s:27:\"menu-top menu-icon-settings\";i:5;s:13:\"menu-settings\";i:6;s:24:\"dashicons-admin-settings\";}s:8:\"80.54801\";a:7:{i:0;s:13:\"Custom Fields\";i:1;s:14:\"manage_options\";i:2;s:34:\"edit.php?post_type=acf-field-group\";i:3;s:13:\"Custom Fields\";i:4;s:67:\"menu-top toplevel_page_edit?post_type=acf-field-group menu-top-last\";i:5;s:44:\"toplevel_page_edit?post_type=acf-field-group\";i:6;s:31:\"dashicons-welcome-widgets-menus\";}i:99;a:5:{i:0;s:0:\"\";i:1;s:4:\"read\";i:2;s:14:\"separator-last\";i:3;s:0:\"\";i:4;s:17:\"wp-menu-separator\";}s:8:\"99.23465\";a:7:{i:0;s:162:\"Yoast SEO <span class=\"update-plugins count-1\"><span class=\"plugin-count\" aria-hidden=\"true\">1</span><span class=\"screen-reader-text\">1 notification</span></span>\";i:1;s:20:\"wpseo_manage_options\";i:2;s:15:\"wpseo_dashboard\";i:3;s:20:\"Yoast SEO: Dashboard\";i:4;s:53:\"menu-top toplevel_page_wpseo_dashboard menu-top-first\";i:5;s:29:\"toplevel_page_wpseo_dashboard\";i:6;s:1174:\"data:image/svg+xml;base64,PHN2ZyB2ZXJzaW9uPSIxLjEiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgeG1sOnNwYWNlPSJwcmVzZXJ2ZSIgd2lkdGg9IjEwMCUiIGhlaWdodD0iMTAwJSIgc3R5bGU9ImZpbGw6IzgyODc4YyIgdmlld0JveD0iMCAwIDUxMiA1MTIiIHJvbGU9ImltZyIgYXJpYS1oaWRkZW49InRydWUiIGZvY3VzYWJsZT0iZmFsc2UiPjxnPjxnPjxnPjxnPjxwYXRoIGQ9Ik0yMDMuNiwzOTVjNi44LTE3LjQsNi44LTM2LjYsMC01NGwtNzkuNC0yMDRoNzAuOWw0Ny43LDE0OS40bDc0LjgtMjA3LjZIMTE2LjRjLTQxLjgsMC03NiwzNC4yLTc2LDc2VjM1N2MwLDQxLjgsMzQuMiw3Niw3Niw3NkgxNzNDMTg5LDQyNC4xLDE5Ny42LDQxMC4zLDIwMy42LDM5NXoiLz48L2c+PGc+PHBhdGggZD0iTTQ3MS42LDE1NC44YzAtNDEuOC0zNC4yLTc2LTc2LTc2aC0zTDI4NS43LDM2NWMtOS42LDI2LjctMTkuNCw0OS4zLTMwLjMsNjhoMjE2LjJWMTU0Ljh6Ii8+PC9nPjwvZz48cGF0aCBzdHJva2Utd2lkdGg9IjIuOTc0IiBzdHJva2UtbWl0ZXJsaW1pdD0iMTAiIGQ9Ik0zMzgsMS4zbC05My4zLDI1OS4xbC00Mi4xLTEzMS45aC04OS4xbDgzLjgsMjE1LjJjNiwxNS41LDYsMzIuNSwwLDQ4Yy03LjQsMTktMTksMzcuMy01Myw0MS45bC03LjIsMXY3Nmg4LjNjODEuNywwLDExOC45LTU3LjIsMTQ5LjYtMTQyLjlMNDMxLjYsMS4zSDMzOHogTTI3OS40LDM2MmMtMzIuOSw5Mi02Ny42LDEyOC43LTEyNS43LDEzMS44di00NWMzNy41LTcuNSw1MS4zLTMxLDU5LjEtNTEuMWM3LjUtMTkuMyw3LjUtNDAuNywwLTYwbC03NS0xOTIuN2g1Mi44bDUzLjMsMTY2LjhsMTA1LjktMjk0aDU4LjFMMjc5LjQsMzYyeiIvPjwvZz48L2c+PC9zdmc+\";}i:100;a:7:{i:0;s:3:\"AAM\";i:1;s:13:\"administrator\";i:2;s:3:\"aam\";i:3;s:3:\"AAM\";i:4;s:26:\"menu-top toplevel_page_aam\";i:5;s:17:\"toplevel_page_aam\";i:6;s:101:\"http://localhost:81/atcustomwebsites/wp-content/plugins/advanced-access-manager/media/active-menu.svg\";}i:101;a:7:{i:0;s:12:\"Setup master\";i:1;s:14:\"manage_options\";i:2;s:20:\"setup-titan_security\";i:3;s:5:\"Setup\";i:4;s:61:\"menu-top menu-icon-generic toplevel_page_setup-titan_security\";i:5;s:34:\"toplevel_page_setup-titan_security\";i:6;s:23:\"dashicons-admin-generic\";}i:102;a:7:{i:0;s:15:\"Titan Anti-spam\";i:1;s:14:\"manage_options\";i:2;s:24:\"dashboard-titan_security\";i:3;s:9:\"Dashboard\";i:4;s:65:\"menu-top menu-icon-generic toplevel_page_dashboard-titan_security\";i:5;s:38:\"toplevel_page_dashboard-titan_security\";i:6;s:23:\"dashicons-admin-generic\";}i:103;a:7:{i:0;s:12:\"Site Checker\";i:1;s:14:\"manage_options\";i:2;s:26:\"sitechecker-titan_security\";i:3;s:12:\"Site Checker\";i:4;s:67:\"menu-top menu-icon-generic toplevel_page_sitechecker-titan_security\";i:5;s:40:\"toplevel_page_sitechecker-titan_security\";i:6;s:23:\"dashicons-admin-generic\";}i:104;a:7:{i:0;s:9:\"Error Log\";i:1;s:14:\"manage_options\";i:2;s:19:\"logs-titan_security\";i:3;s:9:\"Error Log\";i:4;s:60:\"menu-top menu-icon-generic toplevel_page_logs-titan_security\";i:5;s:33:\"toplevel_page_logs-titan_security\";i:6;s:23:\"dashicons-admin-generic\";}i:105;a:7:{i:0;s:6:\"Tweaks\";i:1;s:14:\"manage_options\";i:2;s:21:\"tweaks-titan_security\";i:3;s:6:\"Tweaks\";i:4;s:62:\"menu-top menu-icon-generic toplevel_page_tweaks-titan_security\";i:5;s:35:\"toplevel_page_tweaks-titan_security\";i:6;s:23:\"dashicons-admin-generic\";}i:106;a:7:{i:0;s:10:\"Components\";i:1;s:14:\"manage_options\";i:2;s:25:\"components-titan_security\";i:3;s:10:\"Components\";i:4;s:66:\"menu-top menu-icon-generic toplevel_page_components-titan_security\";i:5;s:39:\"toplevel_page_components-titan_security\";i:6;s:23:\"dashicons-admin-generic\";}i:107;a:7:{i:0;s:7:\"License\";i:1;s:14:\"manage_options\";i:2;s:22:\"license-titan_security\";i:3;s:7:\"License\";i:4;s:63:\"menu-top menu-icon-generic toplevel_page_license-titan_security\";i:5;s:36:\"toplevel_page_license-titan_security\";i:6;s:23:\"dashicons-admin-generic\";}i:108;a:7:{i:0;s:8:\"Settings\";i:1;s:14:\"manage_options\";i:2;s:30:\"plugin_settings-titan_security\";i:3;s:8:\"Settings\";i:4;s:71:\"menu-top menu-icon-generic toplevel_page_plugin_settings-titan_security\";i:5;s:44:\"toplevel_page_plugin_settings-titan_security\";i:6;s:23:\"dashicons-admin-generic\";}i:109;a:7:{i:0;s:5:\"Audit\";i:1;s:14:\"manage_options\";i:2;s:20:\"check-titan_security\";i:3;s:5:\"Audit\";i:4;s:61:\"menu-top menu-icon-generic toplevel_page_check-titan_security\";i:5;s:34:\"toplevel_page_check-titan_security\";i:6;s:23:\"dashicons-admin-generic\";}i:110;a:7:{i:0;s:8:\"Firewall\";i:1;s:14:\"manage_options\";i:2;s:23:\"firewall-titan_security\";i:3;s:8:\"Firewall\";i:4;s:64:\"menu-top menu-icon-generic toplevel_page_firewall-titan_security\";i:5;s:37:\"toplevel_page_firewall-titan_security\";i:6;s:23:\"dashicons-admin-generic\";}i:111;a:7:{i:0;s:8:\"Settings\";i:1;s:14:\"manage_options\";i:2;s:32:\"firewall-settings-titan_security\";i:3;s:8:\"Settings\";i:4;s:73:\"menu-top menu-icon-generic toplevel_page_firewall-settings-titan_security\";i:5;s:46:\"toplevel_page_firewall-settings-titan_security\";i:6;s:23:\"dashicons-admin-generic\";}i:112;a:7:{i:0;s:8:\"Blocking\";i:1;s:14:\"manage_options\";i:2;s:32:\"firewall-blocking-titan_security\";i:3;s:8:\"Blocking\";i:4;s:73:\"menu-top menu-icon-generic toplevel_page_firewall-blocking-titan_security\";i:5;s:46:\"toplevel_page_firewall-blocking-titan_security\";i:6;s:23:\"dashicons-admin-generic\";}i:113;a:7:{i:0;s:11:\"Attacks log\";i:1;s:14:\"manage_options\";i:2;s:34:\"firewall-attack-log-titan_security\";i:3;s:11:\"Attacks log\";i:4;s:75:\"menu-top menu-icon-generic toplevel_page_firewall-attack-log-titan_security\";i:5;s:48:\"toplevel_page_firewall-attack-log-titan_security\";i:6;s:23:\"dashicons-admin-generic\";}i:114;a:7:{i:0;s:10:\"Two-factor\";i:1;s:14:\"manage_options\";i:2;s:27:\"tfa_settings-titan_security\";i:3;s:10:\"Two-factor\";i:4;s:68:\"menu-top menu-icon-generic toplevel_page_tfa_settings-titan_security\";i:5;s:41:\"toplevel_page_tfa_settings-titan_security\";i:6;s:23:\"dashicons-admin-generic\";}i:115;a:7:{i:0;s:6:\"Backup\";i:1;s:14:\"manage_options\";i:2;s:26:\"bm_settings-titan_security\";i:3;s:6:\"Backup\";i:4;s:67:\"menu-top menu-icon-generic toplevel_page_bm_settings-titan_security\";i:5;s:40:\"toplevel_page_bm_settings-titan_security\";i:6;s:23:\"dashicons-admin-generic\";}i:116;a:7:{i:0;s:20:\"Limit login Attempts\";i:1;s:14:\"manage_options\";i:2;s:25:\"bruteforce-titan_security\";i:3;s:20:\"Limit login Attempts\";i:4;s:66:\"menu-top menu-icon-generic toplevel_page_bruteforce-titan_security\";i:5;s:39:\"toplevel_page_bruteforce-titan_security\";i:6;s:23:\"dashicons-admin-generic\";}i:117;a:7:{i:0;s:18:\"Login Attempts Log\";i:1;s:14:\"manage_options\";i:2;s:36:\"firewall-activity-log-titan_security\";i:3;s:18:\"Login Attempts Log\";i:4;s:77:\"menu-top menu-icon-generic toplevel_page_firewall-activity-log-titan_security\";i:5;s:50:\"toplevel_page_firewall-activity-log-titan_security\";i:6;s:23:\"dashicons-admin-generic\";}i:118;a:7:{i:0;s:15:\"Responsive Menu\";i:1;s:14:\"manage_options\";i:2;s:15:\"responsive-menu\";i:3;s:15:\"Responsive Menu\";i:4;s:52:\"menu-top toplevel_page_responsive-menu menu-top-last\";i:5;s:29:\"toplevel_page_responsive-menu\";i:6;s:14:\"dashicons-menu\";}}s:7:\"submenu\";a:13:{s:9:\"index.php\";a:2:{i:0;a:3:{i:0;s:4:\"Home\";i:1;s:4:\"read\";i:2;s:9:\"index.php\";}i:10;a:3:{i:0;s:87:\"Updates <span class=\"update-plugins count-1\"><span class=\"update-count\">1</span></span>\";i:1;s:11:\"update_core\";i:2;s:15:\"update-core.php\";}}s:10:\"upload.php\";a:2:{i:5;a:3:{i:0;s:7:\"Library\";i:1;s:12:\"upload_files\";i:2;s:10:\"upload.php\";}i:10;a:3:{i:0;s:7:\"Add New\";i:1;s:12:\"upload_files\";i:2;s:13:\"media-new.php\";}}s:8:\"edit.php\";a:4:{i:5;a:3:{i:0;s:9:\"All Posts\";i:1;s:10:\"edit_posts\";i:2;s:8:\"edit.php\";}i:10;a:3:{i:0;s:7:\"Add New\";i:1;s:10:\"edit_posts\";i:2;s:12:\"post-new.php\";}i:15;a:3:{i:0;s:10:\"Categories\";i:1;s:17:\"manage_categories\";i:2;s:31:\"edit-tags.php?taxonomy=category\";}i:16;a:3:{i:0;s:4:\"Tags\";i:1;s:16:\"manage_post_tags\";i:2;s:31:\"edit-tags.php?taxonomy=post_tag\";}}s:23:\"edit.php?post_type=page\";a:2:{i:5;a:3:{i:0;s:9:\"All Pages\";i:1;s:10:\"edit_pages\";i:2;s:23:\"edit.php?post_type=page\";}i:10;a:3:{i:0;s:7:\"Add New\";i:1;s:10:\"edit_pages\";i:2;s:27:\"post-new.php?post_type=page\";}}s:10:\"themes.php\";a:9:{i:5;a:3:{i:0;s:85:\"Themes <span class=\"update-plugins count-0\"><span class=\"theme-count\">0</span></span>\";i:1;s:13:\"switch_themes\";i:2;s:10:\"themes.php\";}i:6;a:5:{i:0;s:9:\"Customize\";i:1;s:9:\"customize\";i:2;s:57:\"customize.php?return=%2Fwp-admin%2Fadmin.php%3Fpage%3Daam\";i:3;s:0:\"\";i:4;s:20:\"hide-if-no-customize\";}i:7;a:3:{i:0;s:7:\"Widgets\";i:1;s:18:\"edit_theme_options\";i:2;s:11:\"widgets.php\";}i:10;a:3:{i:0;s:5:\"Menus\";i:1;s:18:\"edit_theme_options\";i:2;s:13:\"nav-menus.php\";}i:20;a:5:{i:0;s:10:\"Background\";i:1;s:13:\"switch_themes\";i:2;s:102:\"customize.php?return=%2Fwp-admin%2Fadmin.php%3Fpage%3Daam&#038;autofocus%5Bcontrol%5D=background_image\";i:3;s:0:\"\";i:4;s:20:\"hide-if-no-customize\";}i:21;a:4:{i:0;s:16:\"Iconic One Theme\";i:1;s:18:\"edit_theme_options\";i:2;s:24:\"iconic_one_theme_options\";i:3;s:16:\"Iconic One Theme\";}i:22;a:4:{i:0;s:20:\"Customize Iconic One\";i:1;s:18:\"edit_theme_options\";i:2;s:13:\"customize.php\";i:3;s:10:\"Iconic One\";}i:23;a:4:{i:0;s:10:\"Background\";i:1;s:18:\"edit_theme_options\";i:2;s:17:\"custom-background\";i:3;s:10:\"Background\";}i:24;a:4:{i:0;s:17:\"Theme File Editor\";i:1;s:11:\"edit_themes\";i:2;s:16:\"theme-editor.php\";i:3;s:17:\"Theme File Editor\";}}s:11:\"plugins.php\";a:3:{i:5;a:3:{i:0;s:17:\"Installed Plugins\";i:1;s:16:\"activate_plugins\";i:2;s:11:\"plugins.php\";}i:10;a:3:{i:0;s:7:\"Add New\";i:1;s:15:\"install_plugins\";i:2;s:18:\"plugin-install.php\";}i:15;a:3:{i:0;s:18:\"Plugin File Editor\";i:1;s:12:\"edit_plugins\";i:2;s:17:\"plugin-editor.php\";}}s:9:\"users.php\";a:3:{i:5;a:3:{i:0;s:9:\"All Users\";i:1;s:10:\"list_users\";i:2;s:9:\"users.php\";}i:10;a:3:{i:0;s:7:\"Add New\";i:1;s:12:\"create_users\";i:2;s:12:\"user-new.php\";}i:15;a:3:{i:0;s:7:\"Profile\";i:1;s:4:\"read\";i:2;s:11:\"profile.php\";}}s:9:\"tools.php\";a:7:{i:5;a:3:{i:0;s:15:\"Available Tools\";i:1;s:10:\"edit_posts\";i:2;s:9:\"tools.php\";}i:10;a:3:{i:0;s:6:\"Import\";i:1;s:6:\"import\";i:2;s:10:\"import.php\";}i:15;a:3:{i:0;s:6:\"Export\";i:1;s:6:\"export\";i:2;s:10:\"export.php\";}i:20;a:3:{i:0;s:11:\"Site Health\";i:1;s:23:\"view_site_health_checks\";i:2;s:15:\"site-health.php\";}i:25;a:3:{i:0;s:20:\"Export Personal Data\";i:1;s:27:\"export_others_personal_data\";i:2;s:24:\"export-personal-data.php\";}i:30;a:3:{i:0;s:19:\"Erase Personal Data\";i:1;s:26:\"erase_others_personal_data\";i:2;s:23:\"erase-personal-data.php\";}i:31;a:4:{i:0;s:11:\"Redirection\";i:1;s:14:\"manage_options\";i:2;s:15:\"redirection.php\";i:3;s:11:\"Redirection\";}}s:19:\"options-general.php\";a:13:{i:10;a:3:{i:0;s:7:\"General\";i:1;s:14:\"manage_options\";i:2;s:19:\"options-general.php\";}i:15;a:3:{i:0;s:7:\"Writing\";i:1;s:14:\"manage_options\";i:2;s:19:\"options-writing.php\";}i:20;a:3:{i:0;s:7:\"Reading\";i:1;s:14:\"manage_options\";i:2;s:19:\"options-reading.php\";}i:25;a:3:{i:0;s:10:\"Discussion\";i:1;s:14:\"manage_options\";i:2;s:22:\"options-discussion.php\";}i:30;a:3:{i:0;s:5:\"Media\";i:1;s:14:\"manage_options\";i:2;s:17:\"options-media.php\";}i:40;a:3:{i:0;s:10:\"Permalinks\";i:1;s:14:\"manage_options\";i:2;s:21:\"options-permalink.php\";}i:45;a:3:{i:0;s:7:\"Privacy\";i:1;s:22:\"manage_privacy_options\";i:2;s:19:\"options-privacy.php\";}i:46;a:4:{i:0;s:9:\"Anti-spam\";i:1;s:14:\"manage_options\";i:2;s:23:\"antispam-titan_security\";i:3;s:9:\"Anti-spam\";}i:47;a:4:{i:0;s:12:\"BBQ Firewall\";i:1;s:14:\"manage_options\";i:2;s:12:\"bbq_settings\";i:3;s:12:\"BBQ Firewall\";}i:48;a:4:{i:0;s:19:\"Block Plugin Update\";i:1;s:13:\"administrator\";i:2;s:50:\"block-specific-plugin-updates/plugin_interface.php\";i:3;s:19:\"Block Plugin Update\";}i:49;a:4:{i:0;s:14:\"External Links\";i:1;s:14:\"manage_options\";i:2;s:29:\"external_links_in_new_windows\";i:3;s:35:\"Open external links in a new window\";}i:50;a:4:{i:0;s:19:\"UpdraftPlus Backups\";i:1;s:14:\"manage_options\";i:2;s:11:\"updraftplus\";i:3;s:11:\"UpdraftPlus\";}i:51;a:4:{i:0;s:8:\"PageNavi\";i:1;s:14:\"manage_options\";i:2;s:8:\"pagenavi\";i:3;s:17:\"PageNavi Settings\";}}s:15:\"wpseo_dashboard\";a:7:{i:0;a:4:{i:0;s:7:\"General\";i:1;s:20:\"wpseo_manage_options\";i:2;s:15:\"wpseo_dashboard\";i:3;s:19:\"General - Yoast SEO\";}i:1;a:4:{i:0;s:17:\"Search Appearance\";i:1;s:20:\"wpseo_manage_options\";i:2;s:12:\"wpseo_titles\";i:3;s:29:\"Search Appearance - Yoast SEO\";}i:2;a:4:{i:0;s:6:\"Social\";i:1;s:20:\"wpseo_manage_options\";i:2;s:12:\"wpseo_social\";i:3;s:18:\"Social - Yoast SEO\";}i:3;a:4:{i:0;s:5:\"Tools\";i:1;s:20:\"wpseo_manage_options\";i:2;s:11:\"wpseo_tools\";i:3;s:17:\"Tools - Yoast SEO\";}i:4;a:4:{i:0;s:7:\"Premium\";i:1;s:20:\"wpseo_manage_options\";i:2;s:14:\"wpseo_licenses\";i:3;s:19:\"Premium - Yoast SEO\";}i:5;a:4:{i:0;s:62:\"Workouts <span class=\"yoast-badge yoast-premium-badge\"></span>\";i:1;s:17:\"edit_others_posts\";i:2;s:14:\"wpseo_workouts\";i:3;s:74:\"Workouts <span class=\"yoast-badge yoast-premium-badge\"></span> - Yoast SEO\";}i:6;a:4:{i:0;s:63:\"Redirects <span class=\"yoast-badge yoast-premium-badge\"></span>\";i:1;s:17:\"edit_others_posts\";i:2;s:15:\"wpseo_redirects\";i:3;s:75:\"Redirects <span class=\"yoast-badge yoast-premium-badge\"></span> - Yoast SEO\";}}s:32:\"wpseo_fake_menu_parent_page_slug\";a:1:{i:0;a:4:{i:0;s:14:\"Search Console\";i:1;s:20:\"wpseo_manage_options\";i:2;s:20:\"wpseo_search_console\";i:3;s:26:\"Search Console - Yoast SEO\";}}s:0:\"\";a:2:{i:0;a:4:{i:0;N;i:1;s:14:\"manage_options\";i:2;s:34:\"wpseo_installation_successful_free\";i:3;s:23:\"Installation Successful\";}i:1;a:4:{i:0;N;i:1;s:14:\"manage_options\";i:2;s:18:\"wpseo_configurator\";i:3;s:24:\"Old Configuration Wizard\";}}s:34:\"edit.php?post_type=acf-field-group\";a:3:{i:0;a:4:{i:0;s:12:\"Field Groups\";i:1;s:14:\"manage_options\";i:2;s:34:\"edit.php?post_type=acf-field-group\";i:3;s:12:\"Field Groups\";}i:1;a:4:{i:0;s:7:\"Add New\";i:1;s:14:\"manage_options\";i:2;s:38:\"post-new.php?post_type=acf-field-group\";i:3;s:7:\"Add New\";}i:2;a:4:{i:0;s:5:\"Tools\";i:1;s:14:\"manage_options\";i:2;s:9:\"acf-tools\";i:3;s:5:\"Tools\";}}}}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(223, 'aam_toolbar_cache', 'a:8:{i:1;O:8:\"stdClass\":7:{s:2:\"id\";s:7:\"wp-logo\";s:5:\"title\";s:103:\"<span class=\"ab-icon\" aria-hidden=\"true\"></span><span class=\"screen-reader-text\">About WordPress</span>\";s:6:\"parent\";s:12:\"root-default\";s:4:\"href\";s:55:\"http://localhost:81/atcustomwebsites/wp-admin/about.php\";s:4:\"meta\";a:0:{}s:8:\"children\";a:2:{i:0;O:8:\"stdClass\":7:{s:2:\"id\";s:15:\"wp-logo-default\";s:6:\"parent\";s:7:\"wp-logo\";s:4:\"type\";s:5:\"group\";s:8:\"children\";a:1:{i:0;O:8:\"stdClass\":7:{s:2:\"id\";s:5:\"about\";s:5:\"title\";s:15:\"About WordPress\";s:6:\"parent\";s:15:\"wp-logo-default\";s:4:\"href\";s:55:\"http://localhost:81/atcustomwebsites/wp-admin/about.php\";s:4:\"meta\";a:0:{}s:8:\"children\";a:0:{}s:4:\"type\";s:4:\"item\";}}s:4:\"meta\";a:1:{s:5:\"class\";s:10:\"ab-submenu\";}s:5:\"title\";b:0;s:4:\"href\";b:0;}i:1;O:8:\"stdClass\":7:{s:2:\"id\";s:16:\"wp-logo-external\";s:5:\"title\";b:0;s:6:\"parent\";s:7:\"wp-logo\";s:4:\"href\";b:0;s:4:\"meta\";a:1:{s:5:\"class\";s:27:\"ab-sub-secondary ab-submenu\";}s:8:\"children\";a:4:{i:0;O:8:\"stdClass\":7:{s:2:\"id\";s:5:\"wporg\";s:5:\"title\";s:13:\"WordPress.org\";s:6:\"parent\";s:16:\"wp-logo-external\";s:4:\"href\";s:22:\"https://wordpress.org/\";s:4:\"meta\";a:0:{}s:8:\"children\";a:0:{}s:4:\"type\";s:4:\"item\";}i:1;O:8:\"stdClass\":7:{s:2:\"id\";s:13:\"documentation\";s:5:\"title\";s:13:\"Documentation\";s:6:\"parent\";s:16:\"wp-logo-external\";s:4:\"href\";s:30:\"https://wordpress.org/support/\";s:4:\"meta\";a:0:{}s:8:\"children\";a:0:{}s:4:\"type\";s:4:\"item\";}i:2;O:8:\"stdClass\":7:{s:2:\"id\";s:14:\"support-forums\";s:5:\"title\";s:7:\"Support\";s:6:\"parent\";s:16:\"wp-logo-external\";s:4:\"href\";s:37:\"https://wordpress.org/support/forums/\";s:4:\"meta\";a:0:{}s:8:\"children\";a:0:{}s:4:\"type\";s:4:\"item\";}i:3;O:8:\"stdClass\":7:{s:2:\"id\";s:8:\"feedback\";s:5:\"title\";s:8:\"Feedback\";s:6:\"parent\";s:16:\"wp-logo-external\";s:4:\"href\";s:57:\"https://wordpress.org/support/forum/requests-and-feedback\";s:4:\"meta\";a:0:{}s:8:\"children\";a:0:{}s:4:\"type\";s:4:\"item\";}}s:4:\"type\";s:5:\"group\";}}s:4:\"type\";s:4:\"item\";}i:2;O:8:\"stdClass\":7:{s:2:\"id\";s:9:\"site-name\";s:5:\"title\";s:17:\"Website Name Here\";s:6:\"parent\";s:12:\"root-default\";s:4:\"href\";s:37:\"http://localhost:81/atcustomwebsites/\";s:4:\"meta\";a:0:{}s:8:\"children\";a:1:{i:0;O:8:\"stdClass\":7:{s:2:\"id\";s:17:\"site-name-default\";s:6:\"parent\";s:9:\"site-name\";s:4:\"type\";s:5:\"group\";s:8:\"children\";a:2:{i:0;O:8:\"stdClass\":7:{s:2:\"id\";s:9:\"view-site\";s:5:\"title\";s:10:\"Visit Site\";s:6:\"parent\";s:17:\"site-name-default\";s:4:\"href\";s:37:\"http://localhost:81/atcustomwebsites/\";s:4:\"meta\";a:0:{}s:8:\"children\";a:0:{}s:4:\"type\";s:4:\"item\";}i:1;O:8:\"stdClass\":7:{s:2:\"id\";s:3:\"aam\";s:5:\"title\";s:14:\"Manager Access\";s:6:\"parent\";s:17:\"site-name-default\";s:4:\"href\";s:64:\"http://localhost:81/atcustomwebsites/wp-admin/admin.php?page=aam\";s:4:\"meta\";a:0:{}s:8:\"children\";a:0:{}s:4:\"type\";s:4:\"item\";}}s:4:\"meta\";a:1:{s:5:\"class\";s:10:\"ab-submenu\";}s:5:\"title\";b:0;s:4:\"href\";b:0;}}s:4:\"type\";s:4:\"item\";}i:3;O:8:\"stdClass\":7:{s:2:\"id\";s:7:\"updates\";s:5:\"title\";s:179:\"<span class=\"ab-icon\" aria-hidden=\"true\"></span><span class=\"ab-label\" aria-hidden=\"true\">1</span><span class=\"screen-reader-text updates-available-text\">1 update available</span>\";s:6:\"parent\";s:12:\"root-default\";s:4:\"href\";s:61:\"http://localhost:81/atcustomwebsites/wp-admin/update-core.php\";s:4:\"meta\";a:0:{}s:8:\"children\";a:0:{}s:4:\"type\";s:4:\"item\";}i:4;O:8:\"stdClass\":7:{s:2:\"id\";s:8:\"comments\";s:5:\"title\";s:225:\"<span class=\"ab-icon\" aria-hidden=\"true\"></span><span class=\"ab-label awaiting-mod pending-count count-0\" aria-hidden=\"true\">0</span><span class=\"screen-reader-text comments-in-moderation-text\">0 Comments in moderation</span>\";s:6:\"parent\";s:12:\"root-default\";s:4:\"href\";s:63:\"http://localhost:81/atcustomwebsites/wp-admin/edit-comments.php\";s:4:\"meta\";a:0:{}s:8:\"children\";a:0:{}s:4:\"type\";s:4:\"item\";}i:5;O:8:\"stdClass\":7:{s:2:\"id\";s:11:\"new-content\";s:5:\"title\";s:81:\"<span class=\"ab-icon\" aria-hidden=\"true\"></span><span class=\"ab-label\">New</span>\";s:6:\"parent\";s:12:\"root-default\";s:4:\"href\";s:58:\"http://localhost:81/atcustomwebsites/wp-admin/post-new.php\";s:4:\"meta\";a:0:{}s:8:\"children\";a:1:{i:0;O:8:\"stdClass\":7:{s:2:\"id\";s:19:\"new-content-default\";s:6:\"parent\";s:11:\"new-content\";s:4:\"type\";s:5:\"group\";s:8:\"children\";a:4:{i:0;O:8:\"stdClass\":7:{s:2:\"id\";s:8:\"new-post\";s:5:\"title\";s:4:\"Post\";s:6:\"parent\";s:19:\"new-content-default\";s:4:\"href\";s:58:\"http://localhost:81/atcustomwebsites/wp-admin/post-new.php\";s:4:\"meta\";a:0:{}s:8:\"children\";a:0:{}s:4:\"type\";s:4:\"item\";}i:1;O:8:\"stdClass\":7:{s:2:\"id\";s:9:\"new-media\";s:5:\"title\";s:5:\"Media\";s:6:\"parent\";s:19:\"new-content-default\";s:4:\"href\";s:59:\"http://localhost:81/atcustomwebsites/wp-admin/media-new.php\";s:4:\"meta\";a:0:{}s:8:\"children\";a:0:{}s:4:\"type\";s:4:\"item\";}i:2;O:8:\"stdClass\":7:{s:2:\"id\";s:8:\"new-page\";s:5:\"title\";s:4:\"Page\";s:6:\"parent\";s:19:\"new-content-default\";s:4:\"href\";s:73:\"http://localhost:81/atcustomwebsites/wp-admin/post-new.php?post_type=page\";s:4:\"meta\";a:0:{}s:8:\"children\";a:0:{}s:4:\"type\";s:4:\"item\";}i:3;O:8:\"stdClass\":7:{s:2:\"id\";s:8:\"new-user\";s:5:\"title\";s:4:\"User\";s:6:\"parent\";s:19:\"new-content-default\";s:4:\"href\";s:58:\"http://localhost:81/atcustomwebsites/wp-admin/user-new.php\";s:4:\"meta\";a:0:{}s:8:\"children\";a:0:{}s:4:\"type\";s:4:\"item\";}}s:4:\"meta\";a:1:{s:5:\"class\";s:10:\"ab-submenu\";}s:5:\"title\";b:0;s:4:\"href\";b:0;}}s:4:\"type\";s:4:\"item\";}i:6;O:8:\"stdClass\":7:{s:2:\"id\";s:10:\"wpseo-menu\";s:5:\"title\";s:261:\"<div id=\"yoast-ab-icon\" class=\"ab-item yoast-logo svg\"><span class=\"screen-reader-text\">SEO</span></div> <div class=\"wp-core-ui wp-ui-notification yoast-issue-counter\"><span aria-hidden=\"true\">1</span><span class=\"screen-reader-text\">1 notification</span></div>\";s:6:\"parent\";s:12:\"root-default\";s:4:\"href\";s:76:\"http://localhost:81/atcustomwebsites/wp-admin/admin.php?page=wpseo_dashboard\";s:4:\"meta\";a:1:{s:8:\"tabindex\";b:0;}s:8:\"children\";a:1:{i:0;O:8:\"stdClass\":7:{s:2:\"id\";s:18:\"wpseo-menu-default\";s:6:\"parent\";s:10:\"wpseo-menu\";s:4:\"type\";s:5:\"group\";s:8:\"children\";a:3:{i:0;O:8:\"stdClass\":7:{s:2:\"id\";s:19:\"wpseo-notifications\";s:5:\"title\";s:170:\"Notifications <div class=\"wp-core-ui wp-ui-notification yoast-issue-counter\"><span aria-hidden=\"true\">1</span><span class=\"screen-reader-text\">1 notification</span></div>\";s:6:\"parent\";s:18:\"wpseo-menu-default\";s:4:\"href\";s:76:\"http://localhost:81/atcustomwebsites/wp-admin/admin.php?page=wpseo_dashboard\";s:4:\"meta\";a:1:{s:8:\"tabindex\";b:0;}s:8:\"children\";a:0:{}s:4:\"type\";s:4:\"item\";}i:1;O:8:\"stdClass\":7:{s:2:\"id\";s:16:\"wpseo-kwresearch\";s:5:\"title\";s:16:\"Keyword Research\";s:6:\"parent\";s:18:\"wpseo-menu-default\";s:4:\"href\";b:0;s:4:\"meta\";a:1:{s:8:\"tabindex\";s:1:\"0\";}s:8:\"children\";a:1:{i:0;O:8:\"stdClass\":7:{s:2:\"id\";s:24:\"wpseo-kwresearch-default\";s:6:\"parent\";s:16:\"wpseo-kwresearch\";s:4:\"type\";s:5:\"group\";s:8:\"children\";a:3:{i:0;O:8:\"stdClass\":7:{s:2:\"id\";s:24:\"wpseo-kwresearchtraining\";s:5:\"title\";s:25:\"Keyword research training\";s:6:\"parent\";s:24:\"wpseo-kwresearch-default\";s:4:\"href\";s:168:\"https://yoa.st/wp-admin-bar?php_version=7.4&platform=wordpress&platform_version=6.0&software=free&software_version=19.0&days_active=31-90&user_language=en_US&screen=aam\";s:4:\"meta\";a:1:{s:6:\"target\";s:6:\"_blank\";}s:8:\"children\";a:0:{}s:4:\"type\";s:4:\"item\";}i:1;O:8:\"stdClass\":7:{s:2:\"id\";s:21:\"wpseo-adwordsexternal\";s:5:\"title\";s:10:\"Google Ads\";s:6:\"parent\";s:24:\"wpseo-kwresearch-default\";s:4:\"href\";s:29:\"https://yoa.st/keywordplanner\";s:4:\"meta\";a:1:{s:6:\"target\";s:6:\"_blank\";}s:8:\"children\";a:0:{}s:4:\"type\";s:4:\"item\";}i:2;O:8:\"stdClass\":7:{s:2:\"id\";s:20:\"wpseo-googleinsights\";s:5:\"title\";s:13:\"Google Trends\";s:6:\"parent\";s:24:\"wpseo-kwresearch-default\";s:4:\"href\";s:28:\"https://yoa.st/google-trends\";s:4:\"meta\";a:1:{s:6:\"target\";s:6:\"_blank\";}s:8:\"children\";a:0:{}s:4:\"type\";s:4:\"item\";}}s:4:\"meta\";a:1:{s:5:\"class\";s:10:\"ab-submenu\";}s:5:\"title\";b:0;s:4:\"href\";b:0;}}s:4:\"type\";s:4:\"item\";}i:2;O:8:\"stdClass\":7:{s:2:\"id\";s:14:\"wpseo-settings\";s:5:\"title\";s:12:\"SEO Settings\";s:6:\"parent\";s:18:\"wpseo-menu-default\";s:4:\"href\";b:0;s:4:\"meta\";a:1:{s:8:\"tabindex\";s:1:\"0\";}s:8:\"children\";a:1:{i:0;O:8:\"stdClass\":7:{s:2:\"id\";s:22:\"wpseo-settings-default\";s:6:\"parent\";s:14:\"wpseo-settings\";s:4:\"type\";s:5:\"group\";s:8:\"children\";a:7:{i:0;O:8:\"stdClass\":7:{s:2:\"id\";s:13:\"wpseo-general\";s:5:\"title\";s:7:\"General\";s:6:\"parent\";s:22:\"wpseo-settings-default\";s:4:\"href\";s:76:\"http://localhost:81/atcustomwebsites/wp-admin/admin.php?page=wpseo_dashboard\";s:4:\"meta\";a:0:{}s:8:\"children\";a:0:{}s:4:\"type\";s:4:\"item\";}i:1;O:8:\"stdClass\":7:{s:2:\"id\";s:12:\"wpseo-titles\";s:5:\"title\";s:17:\"Search Appearance\";s:6:\"parent\";s:22:\"wpseo-settings-default\";s:4:\"href\";s:73:\"http://localhost:81/atcustomwebsites/wp-admin/admin.php?page=wpseo_titles\";s:4:\"meta\";a:0:{}s:8:\"children\";a:0:{}s:4:\"type\";s:4:\"item\";}i:2;O:8:\"stdClass\":7:{s:2:\"id\";s:12:\"wpseo-social\";s:5:\"title\";s:6:\"Social\";s:6:\"parent\";s:22:\"wpseo-settings-default\";s:4:\"href\";s:73:\"http://localhost:81/atcustomwebsites/wp-admin/admin.php?page=wpseo_social\";s:4:\"meta\";a:0:{}s:8:\"children\";a:0:{}s:4:\"type\";s:4:\"item\";}i:3;O:8:\"stdClass\":7:{s:2:\"id\";s:11:\"wpseo-tools\";s:5:\"title\";s:5:\"Tools\";s:6:\"parent\";s:22:\"wpseo-settings-default\";s:4:\"href\";s:72:\"http://localhost:81/atcustomwebsites/wp-admin/admin.php?page=wpseo_tools\";s:4:\"meta\";a:0:{}s:8:\"children\";a:0:{}s:4:\"type\";s:4:\"item\";}i:4;O:8:\"stdClass\":7:{s:2:\"id\";s:14:\"wpseo-licenses\";s:5:\"title\";s:7:\"Premium\";s:6:\"parent\";s:22:\"wpseo-settings-default\";s:4:\"href\";s:75:\"http://localhost:81/atcustomwebsites/wp-admin/admin.php?page=wpseo_licenses\";s:4:\"meta\";a:0:{}s:8:\"children\";a:0:{}s:4:\"type\";s:4:\"item\";}i:5;O:8:\"stdClass\":7:{s:2:\"id\";s:14:\"wpseo-workouts\";s:5:\"title\";s:62:\"Workouts <span class=\"yoast-badge yoast-premium-badge\"></span>\";s:6:\"parent\";s:22:\"wpseo-settings-default\";s:4:\"href\";s:75:\"http://localhost:81/atcustomwebsites/wp-admin/admin.php?page=wpseo_workouts\";s:4:\"meta\";a:0:{}s:8:\"children\";a:0:{}s:4:\"type\";s:4:\"item\";}i:6;O:8:\"stdClass\":7:{s:2:\"id\";s:15:\"wpseo-redirects\";s:5:\"title\";s:63:\"Redirects <span class=\"yoast-badge yoast-premium-badge\"></span>\";s:6:\"parent\";s:22:\"wpseo-settings-default\";s:4:\"href\";s:76:\"http://localhost:81/atcustomwebsites/wp-admin/admin.php?page=wpseo_redirects\";s:4:\"meta\";a:0:{}s:8:\"children\";a:0:{}s:4:\"type\";s:4:\"item\";}}s:4:\"meta\";a:1:{s:5:\"class\";s:10:\"ab-submenu\";}s:5:\"title\";b:0;s:4:\"href\";b:0;}}s:4:\"type\";s:4:\"item\";}}s:4:\"meta\";a:1:{s:5:\"class\";s:10:\"ab-submenu\";}s:5:\"title\";b:0;s:4:\"href\";b:0;}}s:4:\"type\";s:4:\"item\";}i:7;O:8:\"stdClass\":7:{s:2:\"id\";s:18:\"updraft_admin_node\";s:5:\"title\";s:11:\"UpdraftPlus\";s:6:\"parent\";s:12:\"root-default\";s:4:\"href\";b:0;s:4:\"meta\";a:0:{}s:8:\"children\";a:1:{i:0;O:8:\"stdClass\":7:{s:2:\"id\";s:26:\"updraft_admin_node-default\";s:6:\"parent\";s:18:\"updraft_admin_node\";s:4:\"type\";s:5:\"group\";s:8:\"children\";a:5:{i:0;O:8:\"stdClass\":7:{s:2:\"id\";s:25:\"updraft_admin_node_status\";s:5:\"title\";s:27:\"Current Status / Backup Now\";s:6:\"parent\";s:26:\"updraft_admin_node-default\";s:4:\"href\";s:93:\"http://localhost:81/atcustomwebsites/wp-admin/options-general.php?page=updraftplus&tab=status\";s:4:\"meta\";a:0:{}s:8:\"children\";a:0:{}s:4:\"type\";s:4:\"item\";}i:1;O:8:\"stdClass\":7:{s:2:\"id\";s:26:\"updraft_admin_node_backups\";s:5:\"title\";s:16:\"Existing Backups\";s:6:\"parent\";s:26:\"updraft_admin_node-default\";s:4:\"href\";s:94:\"http://localhost:81/atcustomwebsites/wp-admin/options-general.php?page=updraftplus&tab=backups\";s:4:\"meta\";a:0:{}s:8:\"children\";a:0:{}s:4:\"type\";s:4:\"item\";}i:2;O:8:\"stdClass\":7:{s:2:\"id\";s:27:\"updraft_admin_node_settings\";s:5:\"title\";s:8:\"Settings\";s:6:\"parent\";s:26:\"updraft_admin_node-default\";s:4:\"href\";s:95:\"http://localhost:81/atcustomwebsites/wp-admin/options-general.php?page=updraftplus&tab=settings\";s:4:\"meta\";a:0:{}s:8:\"children\";a:0:{}s:4:\"type\";s:4:\"item\";}i:3;O:8:\"stdClass\":7:{s:2:\"id\";s:33:\"updraft_admin_node_expert_content\";s:5:\"title\";s:14:\"Advanced Tools\";s:6:\"parent\";s:26:\"updraft_admin_node-default\";s:4:\"href\";s:93:\"http://localhost:81/atcustomwebsites/wp-admin/options-general.php?page=updraftplus&tab=expert\";s:4:\"meta\";a:0:{}s:8:\"children\";a:0:{}s:4:\"type\";s:4:\"item\";}i:4;O:8:\"stdClass\":7:{s:2:\"id\";s:25:\"updraft_admin_node_addons\";s:5:\"title\";s:10:\"Extensions\";s:6:\"parent\";s:26:\"updraft_admin_node-default\";s:4:\"href\";s:93:\"http://localhost:81/atcustomwebsites/wp-admin/options-general.php?page=updraftplus&tab=addons\";s:4:\"meta\";a:0:{}s:8:\"children\";a:0:{}s:4:\"type\";s:4:\"item\";}}s:4:\"meta\";a:1:{s:5:\"class\";s:10:\"ab-submenu\";}s:5:\"title\";b:0;s:4:\"href\";b:0;}}s:4:\"type\";s:4:\"item\";}i:8;O:8:\"stdClass\":7:{s:2:\"id\";s:10:\"my-account\";s:5:\"title\";s:326:\"Howdy, <span class=\"display-name\">Administrator</span><img alt=\'\' src=\'http://0.gravatar.com/avatar/6284cebee758894297ce7abc2ee7fcf2?s=26&#038;d=mm&#038;r=g\' srcset=\'http://0.gravatar.com/avatar/6284cebee758894297ce7abc2ee7fcf2?s=52&#038;d=mm&#038;r=g 2x\' class=\'avatar avatar-26 photo\' height=\'26\' width=\'26\' loading=\'lazy\'/>\";s:6:\"parent\";s:13:\"top-secondary\";s:4:\"href\";s:57:\"http://localhost:81/atcustomwebsites/wp-admin/profile.php\";s:4:\"meta\";a:1:{s:5:\"class\";s:11:\"with-avatar\";}s:8:\"children\";a:1:{i:0;O:8:\"stdClass\":7:{s:2:\"id\";s:12:\"user-actions\";s:5:\"title\";b:0;s:6:\"parent\";s:10:\"my-account\";s:4:\"href\";b:0;s:4:\"meta\";a:1:{s:5:\"class\";s:10:\"ab-submenu\";}s:8:\"children\";a:3:{i:0;O:8:\"stdClass\":7:{s:2:\"id\";s:9:\"user-info\";s:5:\"title\";s:320:\"<img alt=\'\' src=\'http://0.gravatar.com/avatar/6284cebee758894297ce7abc2ee7fcf2?s=64&#038;d=mm&#038;r=g\' srcset=\'http://0.gravatar.com/avatar/6284cebee758894297ce7abc2ee7fcf2?s=128&#038;d=mm&#038;r=g 2x\' class=\'avatar avatar-64 photo\' height=\'64\' width=\'64\' loading=\'lazy\'/><span class=\'display-name\'>Administrator</span>\";s:6:\"parent\";s:12:\"user-actions\";s:4:\"href\";s:57:\"http://localhost:81/atcustomwebsites/wp-admin/profile.php\";s:4:\"meta\";a:1:{s:8:\"tabindex\";i:-1;}s:8:\"children\";a:0:{}s:4:\"type\";s:4:\"item\";}i:1;O:8:\"stdClass\":7:{s:2:\"id\";s:12:\"edit-profile\";s:5:\"title\";s:12:\"Edit Profile\";s:6:\"parent\";s:12:\"user-actions\";s:4:\"href\";s:57:\"http://localhost:81/atcustomwebsites/wp-admin/profile.php\";s:4:\"meta\";a:0:{}s:8:\"children\";a:0:{}s:4:\"type\";s:4:\"item\";}i:2;O:8:\"stdClass\":7:{s:2:\"id\";s:6:\"logout\";s:5:\"title\";s:7:\"Log Out\";s:6:\"parent\";s:12:\"user-actions\";s:4:\"href\";s:87:\"http://localhost:81/atcustomwebsites/wp-login.php?action=logout&amp;_wpnonce=f4ec8428c3\";s:4:\"meta\";a:0:{}s:8:\"children\";a:0:{}s:4:\"type\";s:4:\"item\";}}s:4:\"type\";s:5:\"group\";}}s:4:\"type\";s:4:\"item\";}}', 'yes'),
(227, 'acf_version', '5.8.4', 'yes'),
(232, 'wpcf7', 'a:5:{s:7:\"version\";s:5:\"5.5.6\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1604422872;s:7:\"version\";s:3:\"5.3\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}s:23:\"recaptcha_v2_v3_warning\";b:0;s:15:\"iqfix_recaptcha\";i:2;s:22:\"iqfix_recaptcha_source\";s:10:\"google.com\";}', 'yes'),
(235, 'cfdb7_view_install_date', '2020-11-03 17:01:31', 'yes'),
(238, 'DWTUA_activated_on', '03-11-2020 05:06:01', 'yes'),
(241, 'external_links_in_new_windows_force', '', 'yes'),
(242, 'external_links_in_new_windows_ignore', '', 'yes'),
(243, 'wp301promo', 'a:1:{s:51:\"popup_dismissed_open-external-links-in-a-new-window\";b:1;}', 'yes'),
(248, 'redirection_options', 'a:32:{s:7:\"support\";b:0;s:5:\"token\";s:32:\"7faa7eaeed4bb84453f28ea568ca65ec\";s:12:\"monitor_post\";i:0;s:13:\"monitor_types\";a:0:{}s:19:\"associated_redirect\";s:0:\"\";s:11:\"auto_target\";s:0:\"\";s:15:\"expire_redirect\";i:7;s:10:\"expire_404\";i:30;s:12:\"log_external\";b:0;s:10:\"log_header\";b:0;s:10:\"track_hits\";b:1;s:7:\"modules\";a:1:{i:2;a:1:{s:8:\"location\";s:0:\"\";}}s:10:\"newsletter\";b:0;s:14:\"redirect_cache\";i:1;s:10:\"ip_logging\";i:1;s:13:\"last_group_id\";i:1;s:8:\"rest_api\";i:0;s:5:\"https\";b:0;s:7:\"headers\";a:0:{}s:8:\"database\";s:3:\"4.2\";s:8:\"relocate\";s:0:\"\";s:16:\"preferred_domain\";s:0:\"\";s:7:\"aliases\";a:0:{}s:10:\"flag_query\";s:5:\"exact\";s:9:\"flag_case\";b:0;s:13:\"flag_trailing\";b:0;s:10:\"flag_regex\";b:0;s:10:\"permalinks\";a:0:{}s:9:\"cache_key\";i:0;s:13:\"plugin_update\";s:6:\"prompt\";s:13:\"update_notice\";s:3:\"5.2\";s:8:\"location\";s:0:\"\";}', 'yes'),
(253, 'responsive_menu_version', '4.1.4', 'yes'),
(254, 'responsive_menu_current_page', 'technical', 'yes'),
(257, 'hide_pro_options', 'yes', 'yes'),
(259, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(263, 'titan_bruteforce_set_default_options', '1', 'yes'),
(264, 'titan_bruteforce_gdpr', '0', 'yes'),
(265, 'titan_bruteforce_logged', '', 'yes'),
(266, 'titan_bruteforce_lockouts_total', '0', 'yes'),
(267, 'titan_bruteforce_minutes_lockout', '1200', 'yes'),
(268, 'titan_bruteforce_valid_duration', '43200', 'yes'),
(269, 'titan_bruteforce_allowed_retries', '4', 'yes'),
(270, 'titan_bruteforce_lockouts', 'a:0:{}', 'yes'),
(271, 'titan_bruteforce_whitelist_ips', 'a:0:{}', 'yes'),
(272, 'titan_bruteforce_whitelist_usernames', 'a:0:{}', 'yes'),
(273, 'titan_bruteforce_blacklist_ips', 'a:0:{}', 'yes'),
(274, 'titan_bruteforce_blacklist_usernames', 'a:0:{}', 'yes'),
(276, 'titan_plugin_activated', '1604424228', 'yes'),
(277, 'titan_plugin_version', '7.3.0', 'yes'),
(279, 'titan_extra_menu', '0', 'yes'),
(280, 'titan_complete_uninstall', '0', 'yes'),
(281, 'titan_scanner_type', 'basic', 'yes'),
(282, 'titan_scanner_speed', 'free', 'yes'),
(283, 'titan_scanner_schedule', 'disabled', 'yes'),
(284, 'titan_digest', 'disable', 'yes'),
(329, 'WpFc_api_key', '99f833357a04c69b5c142f73ca9005a6', 'yes'),
(331, 'WpFastestCachePreLoad', '{\"homepage\":0,\"page\":0,\"number\":\"4\",\"order\":0}', 'yes'),
(332, 'WpFastestCache', '{\"wpFastestCacheStatus\":\"on\",\"wpFastestCachePreload\":\"on\",\"wpFastestCachePreload_homepage\":\"on\",\"wpFastestCachePreload_page\":\"on\",\"wpFastestCachePreload_number\":\"4\",\"wpFastestCachePreload_order\":\"\",\"wpFastestCacheLoggedInUser\":\"on\",\"wpFastestCacheNewPost\":\"on\",\"wpFastestCacheNewPost_type\":\"all\",\"wpFastestCacheUpdatePost\":\"on\",\"wpFastestCacheUpdatePost_type\":\"post\",\"wpFastestCacheCombineCss\":\"on\",\"wpFastestCacheCombineJs\":\"on\",\"wpFastestCacheGzip\":\"on\",\"wpFastestCacheLBC\":\"on\",\"wpFastestCacheDisableEmojis\":\"on\",\"wpFastestCacheLanguage\":\"eng\"}', 'yes'),
(333, 'wpfc-group', '', 'yes'),
(338, 'updraftplus_unlocked_fd', '1', 'no'),
(339, 'updraftplus_last_lock_time_fd', '2023-08-16 00:41:42', 'no'),
(340, 'updraftplus_semaphore_fd', '0', 'no'),
(341, 'updraft_last_scheduled_fd', '1692146502', 'yes'),
(346, 'updraftplus_unlocked_', '1', 'no'),
(347, 'updraftplus_last_lock_time_', '2020-11-03 17:29:20', 'no'),
(348, 'updraftplus_semaphore_', '0', 'no'),
(349, 'WPLANG', '', 'yes'),
(350, 'new_admin_email', 'mike@goauroratech.com', 'yes'),
(422, 'auto_update_plugins', 'a:0:{}', 'no'),
(546, 'cfdb7_view_ignore_notice', 'true', 'yes'),
(552, 'automatic-updater', 'a:8:{s:6:\"update\";a:3:{s:4:\"core\";a:2:{s:5:\"major\";b:1;s:5:\"minor\";b:1;}s:7:\"plugins\";b:1;s:6:\"themes\";b:0;}s:3:\"svn\";a:3:{s:4:\"core\";b:0;s:7:\"plugins\";a:0:{}s:6:\"themes\";a:0:{}}s:17:\"svn-success-email\";b:1;s:5:\"debug\";s:5:\"debug\";s:23:\"next-development-update\";i:1606060151;s:14:\"override-email\";s:0:\"\";s:13:\"disable-email\";b:0;s:17:\"upgrade-after-3.7\";b:1;}', 'yes'),
(684, 'auto_update_core_dev', 'enabled', 'yes'),
(685, 'auto_update_core_minor', 'enabled', 'yes'),
(686, 'auto_update_core_major', 'unset', 'yes'),
(687, 'db_upgraded', '', 'yes'),
(690, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:21:\"mike@goauroratech.com\";s:7:\"version\";s:5:\"6.1.3\";s:9:\"timestamp\";i:1692146498;}', 'no'),
(1990, 'titan_factory_dismissed_notices', 'a:1:{s:60:\"wbcr_factory_notice_wtitan_creativemotion_support_suggestion\";i:0;}', 'yes'),
(1997, 'category_children', 'a:0:{}', 'yes'),
(2966, 'https_detection_errors', 'a:1:{s:20:\"https_request_failed\";a:1:{i:0;s:21:\"HTTPS request failed.\";}}', 'yes'),
(4117, 'pagenavi_options', 'a:15:{s:10:\"pages_text\";s:36:\"Page %CURRENT_PAGE% of %TOTAL_PAGES%\";s:12:\"current_text\";s:13:\"%PAGE_NUMBER%\";s:9:\"page_text\";s:13:\"%PAGE_NUMBER%\";s:10:\"first_text\";s:8:\"« First\";s:9:\"last_text\";s:7:\"Last »\";s:9:\"prev_text\";s:11:\"« Previous\";s:9:\"next_text\";s:7:\"Next »\";s:12:\"dotleft_text\";s:3:\"...\";s:13:\"dotright_text\";s:3:\"...\";s:9:\"num_pages\";i:5;s:23:\"num_larger_page_numbers\";i:3;s:28:\"larger_page_numbers_multiple\";i:10;s:11:\"always_show\";i:0;s:16:\"use_pagenavi_css\";i:0;s:5:\"style\";i:1;}', 'yes'),
(4926, 'rm_review_message_trigger', '1', 'yes'),
(5468, 'widget_block', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(5471, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(7962, 'aam_config', 'a:1:{s:38:\"core.service.user-level-filter.enabled\";b:1;}', 'yes'),
(10056, 'rmp_global_setting_options', 'a:12:{s:14:\"rmp_custom_css\";s:0:\"\";s:13:\"rmp_dark_mode\";s:3:\"off\";s:15:\"rmp_license_key\";b:0;s:28:\"menu_adjust_for_wp_admin_bar\";s:4:\"hide\";s:18:\"rmp_external_files\";s:3:\"off\";s:18:\"rmp_minify_scripts\";s:3:\"off\";s:21:\"rmp_scripts_in_footer\";s:2:\"on\";s:22:\"rmp_remove_fontawesome\";s:0:\"\";s:20:\"rmp_remove_glyphicon\";s:0:\"\";s:20:\"rmp_remove_dashicons\";s:3:\"off\";s:25:\"rmp_remove_material_icons\";s:3:\"off\";s:18:\"rmp_wp_footer_hook\";s:3:\"off\";}', 'yes'),
(10057, 'rmp_migrate10111', '1', 'yes'),
(10087, 'bpu_update_blocked_plugins', 'responsive-menu/responsive-menu.php', 'yes'),
(12719, 'jr_resizeupload_version', '1.8.6', 'yes'),
(12720, 'jr_resizeupload_width', '2000', 'yes'),
(12721, 'jr_resizeupload_height', '1200', 'yes'),
(12722, 'jr_resizeupload_quality', '90', 'yes'),
(12723, 'jr_resizeupload_resize_yesno', 'yes', 'yes'),
(12724, 'jr_resizeupload_recompress_yesno', 'no', 'yes'),
(12725, 'jr_resizeupload_convertbmp_yesno', 'no', 'yes'),
(12726, 'jr_resizeupload_convertpng_yesno', 'yes', 'yes'),
(12727, 'jr_resizeupload_convertgif_yesno', 'no', 'yes'),
(13488, 'factory_plugin_versions', 'a:0:{}', 'yes'),
(14447, 'yoast_migrations_free', 'a:1:{s:7:\"version\";s:5:\"19.13\";}', 'yes'),
(14448, 'wpseo', 'a:99:{s:8:\"tracking\";b:0;s:22:\"license_server_version\";b:0;s:15:\"ms_defaults_set\";b:0;s:40:\"ignore_search_engines_discouraged_notice\";b:0;s:19:\"indexing_first_time\";b:1;s:16:\"indexing_started\";b:0;s:15:\"indexing_reason\";s:23:\"home_url_option_changed\";s:29:\"indexables_indexing_completed\";b:1;s:13:\"index_now_key\";s:0:\"\";s:7:\"version\";s:5:\"19.13\";s:16:\"previous_version\";s:5:\"19.10\";s:20:\"disableadvanced_meta\";b:1;s:30:\"enable_headless_rest_endpoints\";b:1;s:17:\"ryte_indexability\";b:0;s:11:\"baiduverify\";s:0:\"\";s:12:\"googleverify\";s:0:\"\";s:8:\"msverify\";s:0:\"\";s:12:\"yandexverify\";s:0:\"\";s:9:\"site_type\";s:0:\"\";s:20:\"has_multiple_authors\";s:0:\"\";s:16:\"environment_type\";s:0:\"\";s:23:\"content_analysis_active\";b:1;s:23:\"keyword_analysis_active\";b:1;s:34:\"inclusive_language_analysis_active\";b:0;s:21:\"enable_admin_bar_menu\";b:1;s:26:\"enable_cornerstone_content\";b:1;s:18:\"enable_xml_sitemap\";b:1;s:24:\"enable_text_link_counter\";b:1;s:16:\"enable_index_now\";b:1;s:22:\"show_onboarding_notice\";b:1;s:18:\"first_activated_on\";i:1651853954;s:13:\"myyoast-oauth\";b:0;s:26:\"semrush_integration_active\";b:1;s:14:\"semrush_tokens\";a:0:{}s:20:\"semrush_country_code\";s:2:\"us\";s:19:\"permalink_structure\";s:12:\"/%postname%/\";s:8:\"home_url\";s:36:\"http://localhost:81/atcustomwebsites\";s:18:\"dynamic_permalinks\";b:0;s:17:\"category_base_url\";s:0:\"\";s:12:\"tag_base_url\";s:0:\"\";s:21:\"custom_taxonomy_slugs\";a:0:{}s:29:\"enable_enhanced_slack_sharing\";b:1;s:25:\"zapier_integration_active\";b:0;s:19:\"zapier_subscription\";a:0:{}s:14:\"zapier_api_key\";s:0:\"\";s:23:\"enable_metabox_insights\";b:1;s:23:\"enable_link_suggestions\";b:1;s:26:\"algolia_integration_active\";b:0;s:14:\"import_cursors\";a:0:{}s:13:\"workouts_data\";a:1:{s:13:\"configuration\";a:3:{s:13:\"finishedSteps\";a:1:{i:0;s:15:\"optimizeSeoData\";}s:16:\"indexablesByStep\";a:0:{}s:8:\"priority\";i:1;}}s:28:\"configuration_finished_steps\";a:0:{}s:36:\"dismiss_configuration_workout_notice\";b:1;s:34:\"dismiss_premium_deactivated_notice\";b:0;s:19:\"importing_completed\";a:0:{}s:26:\"wincher_integration_active\";b:1;s:14:\"wincher_tokens\";a:0:{}s:36:\"wincher_automatically_add_keyphrases\";b:0;s:18:\"wincher_website_id\";s:0:\"\";s:28:\"wordproof_integration_active\";b:0;s:29:\"wordproof_integration_changed\";b:0;s:18:\"first_time_install\";b:1;s:34:\"should_redirect_after_install_free\";b:0;s:34:\"activation_redirect_timestamp_free\";i:1652258756;s:18:\"remove_feed_global\";b:0;s:27:\"remove_feed_global_comments\";b:0;s:25:\"remove_feed_post_comments\";b:0;s:19:\"remove_feed_authors\";b:0;s:22:\"remove_feed_categories\";b:0;s:16:\"remove_feed_tags\";b:0;s:29:\"remove_feed_custom_taxonomies\";b:0;s:22:\"remove_feed_post_types\";b:0;s:18:\"remove_feed_search\";b:0;s:21:\"remove_atom_rdf_feeds\";b:0;s:17:\"remove_shortlinks\";b:0;s:21:\"remove_rest_api_links\";b:0;s:20:\"remove_rsd_wlw_links\";b:0;s:19:\"remove_oembed_links\";b:0;s:16:\"remove_generator\";b:0;s:20:\"remove_emoji_scripts\";b:0;s:24:\"remove_powered_by_header\";b:0;s:22:\"remove_pingback_header\";b:0;s:28:\"clean_campaign_tracking_urls\";b:0;s:16:\"clean_permalinks\";b:0;s:32:\"clean_permalinks_extra_variables\";s:0:\"\";s:14:\"search_cleanup\";b:0;s:20:\"search_cleanup_emoji\";b:0;s:23:\"search_cleanup_patterns\";b:0;s:22:\"search_character_limit\";i:50;s:20:\"deny_search_crawling\";b:0;s:21:\"deny_wp_json_crawling\";b:0;s:27:\"redirect_search_pretty_urls\";b:0;s:29:\"least_readability_ignore_list\";a:0:{}s:27:\"least_seo_score_ignore_list\";a:0:{}s:23:\"most_linked_ignore_list\";a:0:{}s:24:\"least_linked_ignore_list\";a:0:{}s:28:\"indexables_page_reading_list\";a:5:{i:0;b:0;i:1;b:0;i:2;b:0;i:3;b:0;i:4;b:0;}s:25:\"indexables_overview_state\";s:21:\"dashboard-not-visited\";s:28:\"last_known_public_post_types\";a:3:{i:0;s:4:\"post\";i:1;s:4:\"page\";i:2;s:10:\"attachment\";}s:28:\"last_known_public_taxonomies\";a:3:{i:0;s:8:\"category\";i:1;s:8:\"post_tag\";i:2;s:11:\"post_format\";}}', 'yes'),
(14449, 'wpseo_titles', 'a:107:{s:17:\"forcerewritetitle\";b:0;s:9:\"separator\";s:7:\"sc-pipe\";s:16:\"title-home-wpseo\";s:42:\"%%sitename%% %%page%% %%sep%% %%sitedesc%%\";s:18:\"title-author-wpseo\";s:41:\"%%name%%, Author at %%sitename%% %%page%%\";s:19:\"title-archive-wpseo\";s:38:\"%%date%% %%page%% %%sep%% %%sitename%%\";s:18:\"title-search-wpseo\";s:63:\"You searched for %%searchphrase%% %%page%% %%sep%% %%sitename%%\";s:15:\"title-404-wpseo\";s:35:\"Page not found %%sep%% %%sitename%%\";s:25:\"social-title-author-wpseo\";s:8:\"%%name%%\";s:26:\"social-title-archive-wpseo\";s:8:\"%%date%%\";s:31:\"social-description-author-wpseo\";s:0:\"\";s:32:\"social-description-archive-wpseo\";s:0:\"\";s:29:\"social-image-url-author-wpseo\";s:0:\"\";s:30:\"social-image-url-archive-wpseo\";s:0:\"\";s:28:\"social-image-id-author-wpseo\";i:0;s:29:\"social-image-id-archive-wpseo\";i:0;s:19:\"metadesc-home-wpseo\";s:0:\"\";s:21:\"metadesc-author-wpseo\";s:0:\"\";s:22:\"metadesc-archive-wpseo\";s:0:\"\";s:9:\"rssbefore\";s:0:\"\";s:8:\"rssafter\";s:53:\"The post %%POSTLINK%% appeared first on %%BLOGLINK%%.\";s:20:\"noindex-author-wpseo\";b:0;s:28:\"noindex-author-noposts-wpseo\";b:1;s:21:\"noindex-archive-wpseo\";b:1;s:14:\"disable-author\";b:0;s:12:\"disable-date\";b:0;s:19:\"disable-post_format\";b:0;s:18:\"disable-attachment\";b:1;s:20:\"breadcrumbs-404crumb\";s:25:\"Error 404: Page not found\";s:29:\"breadcrumbs-display-blog-page\";b:1;s:20:\"breadcrumbs-boldlast\";b:0;s:25:\"breadcrumbs-archiveprefix\";s:12:\"Archives for\";s:18:\"breadcrumbs-enable\";b:1;s:16:\"breadcrumbs-home\";s:4:\"Home\";s:18:\"breadcrumbs-prefix\";s:0:\"\";s:24:\"breadcrumbs-searchprefix\";s:16:\"You searched for\";s:15:\"breadcrumbs-sep\";s:2:\"»\";s:12:\"website_name\";s:0:\"\";s:11:\"person_name\";s:0:\"\";s:11:\"person_logo\";s:0:\"\";s:22:\"alternate_website_name\";s:0:\"\";s:12:\"company_logo\";s:0:\"\";s:12:\"company_name\";s:0:\"\";s:17:\"company_or_person\";s:7:\"company\";s:25:\"company_or_person_user_id\";b:0;s:17:\"stripcategorybase\";b:0;s:26:\"open_graph_frontpage_title\";s:12:\"%%sitename%%\";s:25:\"open_graph_frontpage_desc\";s:0:\"\";s:26:\"open_graph_frontpage_image\";s:0:\"\";s:10:\"title-post\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-post\";s:0:\"\";s:12:\"noindex-post\";b:0;s:23:\"display-metabox-pt-post\";b:1;s:23:\"post_types-post-maintax\";i:0;s:21:\"schema-page-type-post\";s:7:\"WebPage\";s:24:\"schema-article-type-post\";s:7:\"Article\";s:17:\"social-title-post\";s:9:\"%%title%%\";s:23:\"social-description-post\";s:0:\"\";s:21:\"social-image-url-post\";s:0:\"\";s:20:\"social-image-id-post\";i:0;s:10:\"title-page\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-page\";s:0:\"\";s:12:\"noindex-page\";b:0;s:23:\"display-metabox-pt-page\";b:1;s:23:\"post_types-page-maintax\";s:1:\"0\";s:21:\"schema-page-type-page\";s:7:\"WebPage\";s:24:\"schema-article-type-page\";s:4:\"None\";s:17:\"social-title-page\";s:9:\"%%title%%\";s:23:\"social-description-page\";s:0:\"\";s:21:\"social-image-url-page\";s:0:\"\";s:20:\"social-image-id-page\";i:0;s:16:\"title-attachment\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:19:\"metadesc-attachment\";s:0:\"\";s:18:\"noindex-attachment\";b:0;s:29:\"display-metabox-pt-attachment\";b:1;s:29:\"post_types-attachment-maintax\";s:1:\"0\";s:27:\"schema-page-type-attachment\";s:7:\"WebPage\";s:30:\"schema-article-type-attachment\";s:4:\"None\";s:18:\"title-tax-category\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-category\";s:0:\"\";s:28:\"display-metabox-tax-category\";b:1;s:20:\"noindex-tax-category\";b:0;s:25:\"social-title-tax-category\";s:23:\"%%term_title%% Archives\";s:31:\"social-description-tax-category\";s:0:\"\";s:29:\"social-image-url-tax-category\";s:0:\"\";s:28:\"social-image-id-tax-category\";i:0;s:18:\"title-tax-post_tag\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-post_tag\";s:0:\"\";s:28:\"display-metabox-tax-post_tag\";b:1;s:20:\"noindex-tax-post_tag\";b:0;s:25:\"social-title-tax-post_tag\";s:23:\"%%term_title%% Archives\";s:31:\"social-description-tax-post_tag\";s:0:\"\";s:29:\"social-image-url-tax-post_tag\";s:0:\"\";s:28:\"social-image-id-tax-post_tag\";i:0;s:21:\"title-tax-post_format\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:24:\"metadesc-tax-post_format\";s:0:\"\";s:31:\"display-metabox-tax-post_format\";b:0;s:23:\"noindex-tax-post_format\";b:1;s:28:\"social-title-tax-post_format\";s:23:\"%%term_title%% Archives\";s:34:\"social-description-tax-post_format\";s:0:\"\";s:32:\"social-image-url-tax-post_format\";s:0:\"\";s:31:\"social-image-id-tax-post_format\";i:0;s:14:\"person_logo_id\";i:0;s:15:\"company_logo_id\";i:0;s:29:\"open_graph_frontpage_image_id\";i:0;s:26:\"taxonomy-category-ptparent\";s:1:\"0\";s:26:\"taxonomy-post_tag-ptparent\";s:1:\"0\";s:29:\"taxonomy-post_format-ptparent\";s:1:\"0\";}', 'yes'),
(14450, 'wpseo_social', 'a:18:{s:13:\"facebook_site\";s:0:\"\";s:13:\"instagram_url\";s:0:\"\";s:12:\"linkedin_url\";s:0:\"\";s:11:\"myspace_url\";s:0:\"\";s:16:\"og_default_image\";s:0:\"\";s:19:\"og_default_image_id\";s:0:\"\";s:18:\"og_frontpage_title\";s:0:\"\";s:17:\"og_frontpage_desc\";s:0:\"\";s:18:\"og_frontpage_image\";s:0:\"\";s:21:\"og_frontpage_image_id\";s:0:\"\";s:9:\"opengraph\";b:1;s:13:\"pinterest_url\";s:0:\"\";s:15:\"pinterestverify\";s:0:\"\";s:7:\"twitter\";b:1;s:12:\"twitter_site\";s:0:\"\";s:17:\"twitter_card_type\";s:19:\"summary_large_image\";s:11:\"youtube_url\";s:0:\"\";s:13:\"wikipedia_url\";s:0:\"\";}', 'yes'),
(14889, 'rewrite_rules', 'a:114:{s:19:\"sitemap_index\\.xml$\";s:19:\"index.php?sitemap=1\";s:31:\"([^/]+?)-sitemap([0-9]+)?\\.xml$\";s:51:\"index.php?sitemap=$matches[1]&sitemap_n=$matches[2]\";s:24:\"([a-z]+)?-?sitemap\\.xsl$\";s:39:\"index.php?yoast-sitemap-xsl=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:38:\"aam_policy/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:48:\"aam_policy/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:68:\"aam_policy/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:63:\"aam_policy/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:63:\"aam_policy/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:44:\"aam_policy/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:27:\"aam_policy/([^/]+)/embed/?$\";s:43:\"index.php?aam_policy=$matches[1]&embed=true\";s:31:\"aam_policy/([^/]+)/trackback/?$\";s:37:\"index.php?aam_policy=$matches[1]&tb=1\";s:39:\"aam_policy/([^/]+)/page/?([0-9]{1,})/?$\";s:50:\"index.php?aam_policy=$matches[1]&paged=$matches[2]\";s:46:\"aam_policy/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?aam_policy=$matches[1]&cpage=$matches[2]\";s:35:\"aam_policy/([^/]+)(?:/([0-9]+))?/?$\";s:49:\"index.php?aam_policy=$matches[1]&page=$matches[2]\";s:27:\"aam_policy/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"aam_policy/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"aam_policy/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"aam_policy/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"aam_policy/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"aam_policy/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=10&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(16109, 'titan_last_check_update_time', '1655149117', 'yes'),
(16110, 'titan_last_check_update', 'O:8:\"stdClass\":4:{s:4:\"slug\";s:9:\"anti-spam\";s:6:\"plugin\";s:23:\"anti-spam/anti-spam.php\";s:11:\"new_version\";s:5:\"7.2.2\";s:7:\"package\";s:109:\"https://github.com/Creative-Motion-Development/wp-plugin-titan-security/releases/download/7.2.2/anti-spam.zip\";}', 'yes'),
(16921, 'antispam_bee', 'a:25:{s:12:\"regexp_check\";i:1;s:7:\"spam_ip\";i:1;s:17:\"already_commented\";i:1;s:14:\"gravatar_check\";i:0;s:10:\"time_check\";i:0;s:12:\"ignore_pings\";i:0;s:15:\"dashboard_chart\";i:0;s:15:\"dashboard_count\";i:0;s:12:\"country_code\";i:0;s:14:\"country_denied\";s:0:\"\";s:15:\"country_allowed\";s:0:\"\";s:13:\"translate_api\";i:0;s:14:\"translate_lang\";a:0:{}s:12:\"bbcode_check\";i:1;s:9:\"flag_spam\";i:0;s:12:\"email_notify\";i:0;s:9:\"no_notice\";i:0;s:14:\"cronjob_enable\";i:0;s:16:\"cronjob_interval\";i:0;s:13:\"ignore_filter\";i:0;s:11:\"ignore_type\";i:1;s:14:\"reasons_enable\";i:0;s:14:\"ignore_reasons\";a:0:{}s:24:\"delete_data_on_uninstall\";i:1;s:17:\"use_output_buffer\";i:0;}', 'no'),
(16922, 'antispambee_db_version', '1.02', 'yes'),
(17345, 'user_count', '3', 'no'),
(17348, 'can_compress_scripts', '0', 'yes'),
(18858, 'recovery_mode_email_last_sent', '1673277529', 'yes'),
(18872, 'external_updates-updraftplus', 'O:8:\"stdClass\":5:{s:9:\"lastCheck\";i:1673256182;s:14:\"checkedVersion\";s:9:\"2.22.14.1\";s:6:\"update\";O:8:\"stdClass\":13:{s:4:\"slug\";s:11:\"updraftplus\";s:7:\"version\";s:9:\"2.22.25.0\";s:12:\"download_url\";N;s:12:\"translations\";a:0:{}s:2:\"id\";i:0;s:8:\"homepage\";s:23:\"https://updraftplus.com\";s:6:\"tested\";s:5:\"6.1.1\";s:12:\"requires_php\";N;s:14:\"upgrade_notice\";N;s:5:\"icons\";a:0:{}s:8:\"filename\";s:27:\"updraftplus/updraftplus.php\";s:24:\"x-spm-yourversion-tested\";s:3:\"6.0\";s:25:\"x-spm-subscription-active\";b:0;}s:11:\"updateClass\";s:23:\"Puc_v4p11_Plugin_Update\";s:15:\"updateBaseClass\";s:13:\"Plugin_Update\";}', 'no'),
(18886, 'updraft_lock_73a6a3fc707b', '0', 'no'),
(21905, 'whl_page', 'sign-me-in', 'yes'),
(21906, 'whl_redirect_admin', '404', 'yes'),
(23150, 'updraft_remotesites', '', 'yes'),
(23151, 'updraft_migrator_localkeys', 'a:1:{s:32:\"81521fbb67df61a861f4bc126cd5eff7\";a:3:{s:4:\"name\";s:16:\"Key - 2022-12-22\";s:3:\"key\";s:1704:\"-----BEGIN RSA PRIVATE KEY-----\r\nMIIEpAIBAAKCAQEA0MFpRjpqfJZSacG3rumbP1a1tdHBPvbZ/ioZ1k2eQNmRpsbP\r\nbvzgU2UfWzci0olrdl6iUW4rAxi0bxYLhuTrBaQ3K6uVKCCZuPhzUFBsxE+7jI2E\r\njXx8vrsXR6oO/Pn/rW9QO2LqR8JLTSgoxJWoRgjpSOoWGZopCrLwc7Sc2rKoYhmK\r\ntnNgdmUWy5ZKEr47+Z0M4lTO9DTMcqp5OtlKxUoZJutHXwkqTThL+qpr+1Kj/EFn\r\nVXjaWyQ/5a+7Lk08woQciFt6PDz7eqYC/qfZSs3Zjxb1TVF1xE4ncn1cj9M7ydhd\r\npm7SN0aZAhw98zbUezscTd8Wryd4W+Dz1xNgrwIDAQABAoIBAQDPQ8kvZh6GNoX6\r\n5NBoBR8UAxaFQI5a4qLL3KcshIIkpyAa83fPHZnokxVP7m1PlgsxSoJk0To5Z9T2\r\nGnA1baH/Ru1UGZcNcVjPMzbivgdP3k47HeNGyxvcD0vs5mbdO6ZkX4nMfMhZmQpE\r\nwCPCE0kwx/Y/Y9OvdcVcDw/4AZJe+4oYeu9CmUxxENg7wOCJM7Ase8zs59yQuAlh\r\nIxU4KnSWkCUGXHa1hNJvlDkHQy/gn8xgqVX4c9VLq4WIWbrWX3PkGP5scIm3vkmz\r\nVa68TV5EX+MHi6DNSUZzShv/krxru2uFt1ZRG317YCh23OfOt9gfYlLiwg2UWm7n\r\nEhqVxrA5AoGBAPBBdMx2jzNCm4n8cUEUKs5ZIgfst06GwNa6kdPjdU3xjFQLANrC\r\nUS5u/M9Dm0QgjyVx/eOLaKCyttsRo4T7vejyv4kKjn4ooowmlTt6bQdNqpD8GNHT\r\nKRQtNe0wtobr8V81MvbqDM8UYuHaAzSea1InYF8DVbtETU3UIAJ/8m/bAoGBAN5v\r\ngZNbHEV9uyc/Rnm1HC+6ZFAhCOvp83g5/yZ5teuJLgVKfeaSN0snd2xx5MRjgUO4\r\ngSeaGu9yjEn8NTXMu0e6LEwuR/ZBtId8gy4jcys2KCUJvBelqaqy5WI3/kC9ykhQ\r\nCWIXd1x+B1VKjINQsmGmAyrFKyAuYtmdpN541CS9AoGAGf3a1uvUniUMkqb+0Z2O\r\n6/f0mIrhYdtuLUzNzfCDlkUVe1odY402HyHes8WKnJoxIknsv5srXIc5BQYpfI+H\r\nghYQ5pB/zeIzg5oA9whNl0attzWusbR4czhY5yon9Py9hiFJPDEh5Z08/VYKlry0\r\nu5SK9nxz3+iJvGvAcsTIw5UCgYA/4D2Rl2RzADwydRVD9iJ2Aky0RghN1w03xU/k\r\nOKdpUCeLFW06PVrrlhXRapOLYhfI3r8YJET/5iErTeXp4TUWz/vQlKnNqeixz6vM\r\nIBn+mrrEiBsfn08t2dnNbs7wwI/KXFGVfa+lO/vXHmVjgFT5fbcDHUPZJfj1DTQ/\r\nPuuM8QKBgQCc+q9jvy8TIEtOul/lf7dFGE7BHr1j0XoKRLZ/v3Hn4c5oE1xxBivC\r\ntOJJuJROpwXMWoz3q50BucVng8Kxd4tC7ukp0e+vULMB9sUMt/uq8+3Fj7UY9msf\r\nSsL43KwbKgriWCfcDGi6iXhCAJhBsjTmFcQquOFUD9KyaJVIo4p3mQ==\r\n-----END RSA PRIVATE KEY-----\";s:13:\"sender_public\";s:458:\"-----BEGIN PUBLIC KEY-----\r\nMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA0Zp/Rhg2iFhclJagEjtv\r\ndwjRrFvEeeRaTOjFF5Tkhdmo+CJCUu462WpsHsD5LytWii0m5f1DCjPcO0GTd4Kj\r\nzaCcOccOhLfhbLmCTDs1HdBD/HIcPvrgaQfdVeN3kcaP5Qq+inW8/rO77V76q0AX\r\nJv2tS5GlBYAsHKcMEejA2gGpVe7ooWy+xnHEASYZJGdcq6oDob/ccUp1STAm1nLT\r\njbf08OUF87V4kF4N5U3Fu9sK5oXZW0k4/te2l4GA9llUvkCLCz4PqIAyTQBWzEAQ\r\n055bO5YDTl6iiv5UGM5WTR8vmoB0WvA8Is4yNDugZOCPuv9vQyon7EMe00gpX7L4\r\nkQIDAQAB\r\n-----END PUBLIC KEY-----\";}}', 'yes'),
(23152, 'updraft_central_localkeys', '', 'yes'),
(23154, 'updraft_autobackup_default', '0', 'yes'),
(23155, 'updraft_dropbox', 'a:2:{s:7:\"version\";i:1;s:8:\"settings\";a:1:{s:34:\"s-72621528bf9bdd77f6303ea355a4655b\";a:4:{s:6:\"appkey\";s:0:\"\";s:6:\"secret\";s:0:\"\";s:6:\"folder\";s:0:\"\";s:15:\"tk_access_token\";s:0:\"\";}}}', 'yes'),
(23156, 'updraft_googledrive', 'a:2:{s:7:\"version\";i:1;s:8:\"settings\";a:1:{s:34:\"s-00cc73c914e21c4164492b6097c1d07c\";a:3:{s:8:\"clientid\";s:0:\"\";s:6:\"secret\";s:0:\"\";s:5:\"token\";s:0:\"\";}}}', 'yes'),
(23157, 'updraftplus_tmp_googledrive_access_token', '', 'yes'),
(23158, 'updraftplus_dismissedautobackup', '', 'yes'),
(23159, 'dismissed_general_notices_until', '', 'yes'),
(23160, 'dismissed_review_notice', '', 'yes'),
(23161, 'dismissed_clone_php_notices_until', '', 'yes'),
(23162, 'dismissed_clone_wc_notices_until', '', 'yes'),
(23163, 'dismissed_season_notices_until', '', 'yes'),
(23164, 'updraftplus_dismissedexpiry', '', 'yes'),
(23165, 'updraftplus_dismisseddashnotice', '', 'yes'),
(23166, 'updraft_interval', 'daily', 'yes'),
(23167, 'updraft_interval_increments', 'none', 'yes'),
(23170, 'updraft_interval_database', 'daily', 'yes'),
(23171, 'updraft_retain', '1', 'yes'),
(23172, 'updraft_retain_db', '1', 'yes'),
(23173, 'updraft_encryptionphrase', '', 'yes'),
(23174, 'updraft_service', '', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(23175, 'updraft_googledrive_clientid', '', 'yes'),
(23176, 'updraft_googledrive_secret', '', 'yes'),
(23177, 'updraft_googledrive_remotepath', '', 'yes'),
(23178, 'updraft_ftp', 'a:2:{s:7:\"version\";i:1;s:8:\"settings\";a:1:{s:34:\"s-308e303fe4acaf8ba6f03ac97f1fdfc5\";a:5:{s:4:\"host\";s:0:\"\";s:4:\"user\";s:0:\"\";s:4:\"pass\";s:0:\"\";s:4:\"path\";s:0:\"\";s:7:\"passive\";i:1;}}}', 'yes'),
(23179, 'updraft_backblaze', 'a:2:{s:7:\"version\";i:1;s:8:\"settings\";a:1:{s:34:\"s-ee0ed03e81b7cc5f328d5338f8cb8caf\";a:0:{}}}', 'yes'),
(23180, 'updraft_server_address', '', 'yes'),
(23181, 'updraft_dir', '', 'yes'),
(23182, 'updraft_email', '', 'yes'),
(23183, 'updraft_delete_local', '0', 'yes'),
(23184, 'updraft_debug_mode', '0', 'yes'),
(23185, 'updraft_include_plugins', '0', 'yes'),
(23186, 'updraft_include_themes', '0', 'yes'),
(23187, 'updraft_include_uploads', '0', 'yes'),
(23188, 'updraft_include_others', '0', 'yes'),
(23189, 'updraft_include_wpcore', '0', 'yes'),
(23190, 'updraft_include_wpcore_exclude', '', 'yes'),
(23191, 'updraft_include_more', '0', 'yes'),
(23192, 'updraft_include_blogs', '', 'yes'),
(23193, 'updraft_include_mu-plugins', '', 'yes'),
(23195, 'updraft_include_others_exclude', '', 'yes'),
(23196, 'updraft_include_uploads_exclude', '', 'yes'),
(23197, 'updraft_lastmessage', 'The backup apparently succeeded and is now complete (Aug 15 20:41:45)', 'yes'),
(23198, 'updraft_googledrive_token', '', 'yes'),
(23199, 'updraft_dropboxtk_request_token', '', 'yes'),
(23200, 'updraft_dropboxtk_access_token', '', 'yes'),
(23201, 'updraft_adminlocking', '', 'yes'),
(23202, 'updraft_updraftvault', 'a:2:{s:7:\"version\";i:1;s:8:\"settings\";a:1:{s:34:\"s-273b1c068da81a3a96f9fa9c8bd78af6\";a:3:{s:5:\"token\";s:0:\"\";s:5:\"email\";s:0:\"\";s:5:\"quota\";i:-1;}}}', 'yes'),
(23203, 'updraft_retain_extrarules', '', 'yes'),
(23204, 'updraft_googlecloud', 'a:2:{s:7:\"version\";i:1;s:8:\"settings\";a:1:{s:34:\"s-094dcf7ed5640f70a0d98e213803df09\";a:0:{}}}', 'yes'),
(23205, 'updraft_include_more_path', '', 'yes'),
(23206, 'updraft_split_every', '25', 'yes'),
(23207, 'updraft_ssl_nossl', '0', 'yes'),
(23208, 'updraft_backupdb_nonwp', '0', 'yes'),
(23209, 'updraft_extradbs', '', 'yes'),
(23211, 'updraft_last_backup', 'a:6:{s:26:\"nonincremental_backup_time\";i:1692146502;s:11:\"backup_time\";i:1692146502;s:12:\"backup_array\";a:3:{s:2:\"db\";s:59:\"backup_2023-08-15-2041_Website_Name_Here_0320624e24df-db.gz\";s:7:\"db-size\";i:70522;s:9:\"checksums\";a:2:{s:4:\"sha1\";a:1:{s:3:\"db0\";s:40:\"2001ce51a6a9bb2ba4fc1ea10fcd5876f64ea5f0\";}s:6:\"sha256\";a:1:{s:3:\"db0\";s:64:\"eae8cfccc340060c4ea5325f31d3559d09b3dddc38f73ae556b7ac12240fdbd3\";}}}s:7:\"success\";i:1;s:6:\"errors\";a:0:{}s:12:\"backup_nonce\";s:12:\"0320624e24df\";}', 'yes'),
(23212, 'updraft_starttime_files', '22:33', 'yes'),
(23213, 'updraft_starttime_db', '22:33', 'yes'),
(23214, 'updraft_startday_db', '0', 'yes'),
(23215, 'updraft_startday_files', '0', 'yes'),
(23216, 'updraft_sftp', 'a:2:{s:7:\"version\";i:1;s:8:\"settings\";a:1:{s:34:\"s-4ac0ca34b8a4888d467fade7a0fdbe56\";a:0:{}}}', 'yes'),
(23217, 'updraft_s3', 'a:2:{s:7:\"version\";i:1;s:8:\"settings\";a:1:{s:34:\"s-869bec2e75f755142b737c0d796e3518\";a:5:{s:9:\"accesskey\";s:0:\"\";s:9:\"secretkey\";s:0:\"\";s:4:\"path\";s:0:\"\";s:3:\"rrs\";s:0:\"\";s:22:\"server_side_encryption\";s:0:\"\";}}}', 'yes'),
(23218, 'updraft_s3generic', 'a:2:{s:7:\"version\";i:1;s:8:\"settings\";a:1:{s:34:\"s-e892fce37e4291ca46ad93e02c1c111a\";a:4:{s:9:\"accesskey\";s:0:\"\";s:9:\"secretkey\";s:0:\"\";s:4:\"path\";s:0:\"\";s:8:\"endpoint\";s:0:\"\";}}}', 'yes'),
(23219, 'updraft_dreamhost', '', 'yes'),
(23220, 'updraft_s3generic_login', '', 'yes'),
(23221, 'updraft_s3generic_pass', '', 'yes'),
(23222, 'updraft_s3generic_remote_path', '', 'yes'),
(23223, 'updraft_s3generic_endpoint', '', 'yes'),
(23224, 'updraft_webdav', 'a:2:{s:7:\"version\";i:1;s:8:\"settings\";a:1:{s:34:\"s-77eb467d2654d10b48950feafbca8c36\";a:0:{}}}', 'yes'),
(23225, 'updraft_openstack', 'a:2:{s:7:\"version\";i:1;s:8:\"settings\";a:1:{s:34:\"s-f39edbe805faf9369401b9176455e75a\";a:6:{s:4:\"user\";s:0:\"\";s:7:\"authurl\";s:0:\"\";s:8:\"password\";s:0:\"\";s:6:\"tenant\";s:0:\"\";s:4:\"path\";s:0:\"\";s:6:\"region\";s:0:\"\";}}}', 'yes'),
(23226, 'updraft_onedrive', 'a:2:{s:7:\"version\";i:1;s:8:\"settings\";a:1:{s:34:\"s-5440606eb6079aa031689037afcbd980\";a:0:{}}}', 'yes'),
(23227, 'updraft_azure', 'a:2:{s:7:\"version\";i:1;s:8:\"settings\";a:1:{s:34:\"s-ee16ca80ab74d122c23fa8a0eec0a8b9\";a:0:{}}}', 'yes'),
(23228, 'updraft_cloudfiles', 'a:2:{s:7:\"version\";i:1;s:8:\"settings\";a:1:{s:34:\"s-e2f56b2e970ede9f965a5675d93273ca\";a:5:{s:4:\"user\";s:0:\"\";s:7:\"authurl\";s:35:\"https://auth.api.rackspacecloud.com\";s:6:\"apikey\";s:0:\"\";s:4:\"path\";s:0:\"\";s:6:\"region\";N;}}}', 'yes'),
(23229, 'updraft_cloudfiles_user', '', 'yes'),
(23230, 'updraft_cloudfiles_apikey', '', 'yes'),
(23231, 'updraft_cloudfiles_path', '', 'yes'),
(23232, 'updraft_cloudfiles_authurl', '', 'yes'),
(23233, 'updraft_ssl_useservercerts', '0', 'yes'),
(23234, 'updraft_ssl_disableverify', '0', 'yes'),
(23235, 'updraft_s3_login', '', 'yes'),
(23236, 'updraft_s3_pass', '', 'yes'),
(23237, 'updraft_s3_remote_path', '', 'yes'),
(23238, 'updraft_dreamobjects_login', '', 'yes'),
(23239, 'updraft_dreamobjects_pass', '', 'yes'),
(23240, 'updraft_dreamobjects_remote_path', '', 'yes'),
(23241, 'updraft_dreamobjects', 'a:2:{s:7:\"version\";i:1;s:8:\"settings\";a:1:{s:34:\"s-3fb7fb07363d2905db574891b51cc887\";a:3:{s:9:\"accesskey\";s:0:\"\";s:9:\"secretkey\";s:0:\"\";s:4:\"path\";s:0:\"\";}}}', 'yes'),
(23242, 'updraft_report_warningsonly', 'a:0:{}', 'yes'),
(23243, 'updraft_report_wholebackup', 'a:0:{}', 'yes'),
(23244, 'updraft_report_dbbackup', 'a:0:{}', 'yes'),
(23245, 'updraft_log_syslog', '0', 'yes'),
(23246, 'updraft_extradatabases', '', 'yes'),
(23247, 'updraftplus_tour_cancelled_on', 'intro', 'yes'),
(23248, 'updraftplus_version', '2.22.14.1', 'yes'),
(23249, 'updraft_backup_history', 'a:5:{i:1692146502;a:11:{s:2:\"db\";s:59:\"backup_2023-08-15-2041_Website_Name_Here_0320624e24df-db.gz\";s:7:\"db-size\";i:70522;s:9:\"checksums\";a:2:{s:4:\"sha1\";a:1:{s:3:\"db0\";s:40:\"2001ce51a6a9bb2ba4fc1ea10fcd5876f64ea5f0\";}s:6:\"sha256\";a:1:{s:3:\"db0\";s:64:\"eae8cfccc340060c4ea5325f31d3559d09b3dddc38f73ae556b7ac12240fdbd3\";}}s:5:\"nonce\";s:12:\"0320624e24df\";s:7:\"service\";a:0:{}s:20:\"service_instance_ids\";a:0:{}s:11:\"always_keep\";b:0;s:19:\"files_enumerated_at\";N;s:18:\"created_by_version\";s:9:\"2.22.14.1\";s:21:\"last_saved_by_version\";s:9:\"2.22.14.1\";s:12:\"is_multisite\";b:0;}i:1681607333;a:11:{s:2:\"db\";s:59:\"backup_2023-04-15-2108_Website_Name_Here_b7d800c24fde-db.gz\";s:7:\"db-size\";i:70306;s:9:\"checksums\";a:2:{s:4:\"sha1\";a:1:{s:3:\"db0\";s:40:\"754a8c0e1fb845052429d6ca98a20ce3ae71c469\";}s:6:\"sha256\";a:1:{s:3:\"db0\";s:64:\"fe5f79a983365e80ec3a5532c29505b545c5da4153f6177212a0e85e061cd278\";}}s:5:\"nonce\";s:12:\"b7d800c24fde\";s:7:\"service\";a:0:{}s:20:\"service_instance_ids\";a:0:{}s:11:\"always_keep\";b:0;s:19:\"files_enumerated_at\";N;s:18:\"created_by_version\";s:9:\"2.22.14.1\";s:21:\"last_saved_by_version\";s:9:\"2.22.14.1\";s:12:\"is_multisite\";b:0;}i:1681266213;a:11:{s:2:\"db\";s:59:\"backup_2023-04-11-2223_Website_Name_Here_9e68ba45038a-db.gz\";s:7:\"db-size\";i:70064;s:9:\"checksums\";a:2:{s:4:\"sha1\";a:1:{s:3:\"db0\";s:40:\"73ea9114db025a322e04564927059500d0207da7\";}s:6:\"sha256\";a:1:{s:3:\"db0\";s:64:\"6b655c8a79a21dc9c1664687696b768bca7d5613c2d8eb592713832f2b8f5fbd\";}}s:5:\"nonce\";s:12:\"9e68ba45038a\";s:7:\"service\";a:0:{}s:20:\"service_instance_ids\";a:0:{}s:11:\"always_keep\";b:0;s:19:\"files_enumerated_at\";N;s:18:\"created_by_version\";s:9:\"2.22.14.1\";s:21:\"last_saved_by_version\";s:9:\"2.22.14.1\";s:12:\"is_multisite\";b:0;}i:1673341010;a:11:{s:2:\"db\";s:59:\"backup_2023-01-10-0356_Website_Name_Here_caa9ed6faba4-db.gz\";s:7:\"db-size\";i:70945;s:9:\"checksums\";a:2:{s:4:\"sha1\";a:1:{s:3:\"db0\";s:40:\"0d96df8b9242b3b051ed7c4b61329e1fb5d595bf\";}s:6:\"sha256\";a:1:{s:3:\"db0\";s:64:\"aef5c0bca0aba07cc5f90e7cad89041d1eb23ac0255876d429c86e3f135af62b\";}}s:5:\"nonce\";s:12:\"caa9ed6faba4\";s:7:\"service\";a:0:{}s:20:\"service_instance_ids\";a:0:{}s:11:\"always_keep\";b:0;s:19:\"files_enumerated_at\";N;s:18:\"created_by_version\";s:9:\"2.22.14.1\";s:21:\"last_saved_by_version\";s:9:\"2.22.14.1\";s:12:\"is_multisite\";b:0;}i:1672764355;a:19:{s:7:\"plugins\";a:1:{i:0;s:65:\"backup_2023-01-03-1145_Website_Name_Here_e090035f68da-plugins.zip\";}s:12:\"plugins-size\";i:20975390;s:6:\"themes\";a:1:{i:0;s:64:\"backup_2023-01-03-1145_Website_Name_Here_e090035f68da-themes.zip\";}s:11:\"themes-size\";i:95533;s:7:\"uploads\";a:1:{i:0;s:65:\"backup_2023-01-03-1145_Website_Name_Here_e090035f68da-uploads.zip\";}s:12:\"uploads-size\";i:4872833;s:6:\"others\";a:1:{i:0;s:64:\"backup_2023-01-03-1145_Website_Name_Here_e090035f68da-others.zip\";}s:11:\"others-size\";i:2858456;s:2:\"db\";s:59:\"backup_2023-01-03-1145_Website_Name_Here_e090035f68da-db.gz\";s:7:\"db-size\";i:351314;s:9:\"checksums\";a:2:{s:4:\"sha1\";a:5:{s:8:\"plugins0\";s:40:\"3e717bf286452e1ff9d878173bfccb7c25681dea\";s:7:\"themes0\";s:40:\"c22b4161529743c24d292b9e4160fd52181ba8f9\";s:8:\"uploads0\";s:40:\"06e50720e20c42f9b83656c76996055fb9bbcc8c\";s:7:\"others0\";s:40:\"9122c80db0134027c5ad2c8cb3e1ed9da298b180\";s:3:\"db0\";s:40:\"61b6883e2cff3d3c28b3873ee4eee62f76d340ae\";}s:6:\"sha256\";a:5:{s:8:\"plugins0\";s:64:\"05d37dad3a326c60c96a2412fe49c2877584da783db92589e631504c10d1ce38\";s:7:\"themes0\";s:64:\"8df5e7e1780306942c1b142e3c3416f57446585099195a32c53120efd5cb6708\";s:8:\"uploads0\";s:64:\"7dde4d1f48ec3d77f24996adf1ea438afba1ebffa1c08ff93c22cdf41fc03d42\";s:7:\"others0\";s:64:\"7c848730276f9323a3fe102102ab8ec5f595def30220a56a8d527c345f428fd3\";s:3:\"db0\";s:64:\"5b5a4f85377095bdef8c0ac66d1895606afd42294680efdf523419b74dd3e06f\";}}s:5:\"nonce\";s:12:\"e090035f68da\";s:7:\"service\";a:0:{}s:20:\"service_instance_ids\";a:0:{}s:11:\"always_keep\";b:0;s:19:\"files_enumerated_at\";a:4:{s:7:\"plugins\";i:1672764355;s:6:\"themes\";i:1672764358;s:7:\"uploads\";i:1672764358;s:6:\"others\";i:1672764358;}s:18:\"created_by_version\";s:9:\"2.22.14.1\";s:21:\"last_saved_by_version\";s:9:\"2.22.14.1\";s:12:\"is_multisite\";b:0;}}', 'no'),
(23251, 'updraftplus-addons_siteid', '9cf403fbdd589eb2001591407f3f6741', 'no'),
(23310, 'awb_general', '', 'yes'),
(23311, 'awb_pro', '', 'yes'),
(23317, 'eds_scroll_offset', '75', 'yes'),
(23318, 'eds_enable_on_phone', '0', 'yes'),
(23319, 'eds_enable_on_tab', '1', 'yes'),
(23320, 'eds_hide_overflow_x', '1', 'yes'),
(23321, 'eds_hide_overflow_y', '0', 'yes'),
(23322, 'eds_custom_css', '', 'yes'),
(23323, 'eds_animate_it_version', '2.3.0', 'yes'),
(23410, 'bodhi_svgs_plugin_version', '2.5.5', 'yes'),
(23411, 'bodhi_svgs_settings', 'a:4:{s:22:\"sanitize_svg_front_end\";s:2:\"on\";s:8:\"restrict\";a:1:{i:0;s:13:\"administrator\";}s:12:\"sanitize_svg\";s:2:\"on\";s:24:\"sanitize_on_upload_roles\";a:2:{i:0;s:13:\"administrator\";i:1;s:6:\"editor\";}}', 'yes'),
(23436, 'eae_search_in', 'filters', 'yes'),
(23437, 'eae_technique', 'entities', 'yes'),
(23438, 'eae_filter_priority', '1000', 'yes'),
(24119, '_site_transient_ai1wm_last_check_for_updates', '1692146478', 'no'),
(23533, 'ai1wm_updater', 'a:1:{s:43:\"all-in-one-wp-migration-unlimited-extension\";a:13:{s:4:\"name\";s:19:\"Unlimited Extension\";s:4:\"slug\";s:19:\"unlimited-extension\";s:8:\"homepage\";s:51:\"https://servmask.com/extensions/unlimited-extension\";s:13:\"download_link\";s:29:\"https://servmask.com/purchase\";s:7:\"version\";s:4:\"2.52\";s:6:\"author\";s:8:\"ServMask\";s:15:\"author_homepage\";s:20:\"https://servmask.com\";s:8:\"sections\";a:1:{s:11:\"description\";s:259:\"<ul class=\"description\"><li>Remove the import limit of 512MB</li><li>Lifetime license with lifetime updates</li><li>Use on any number of websites that you own</li><li>Unlimited Extension included</li><li>WP CLI commands</li><li>Premium support</li></ul><br />\";}s:7:\"banners\";a:2:{s:3:\"low\";s:65:\"https://servmask.com/img/products/unlimited-extension-772x250.png\";s:4:\"high\";s:66:\"https://servmask.com/img/products/unlimited-extension-1544x500.png\";}s:5:\"icons\";a:3:{s:2:\"1x\";s:65:\"https://servmask.com/img/products/unlimited-extension-128x128.png\";s:2:\"2x\";s:65:\"https://servmask.com/img/products/unlimited-extension-256x256.png\";s:7:\"default\";s:65:\"https://servmask.com/img/products/unlimited-extension-256x256.png\";}s:6:\"rating\";i:99;s:11:\"num_ratings\";i:309;s:10:\"downloaded\";i:40189;}}', 'yes'),
(23534, 'ai1wmue_plugin_key', '6348f89f-d8ed-4af8-b38f-ceaabcbbca46', 'yes'),
(23617, 'wpos_anylc_redirect', '', 'yes'),
(23618, 'wpos_anylc_site_uid', 'aab2ef6af60820dcae6bd7efab358ed8', 'yes'),
(23644, 'wp_calendar_block_has_published_posts', '1', 'yes'),
(24070, 'wpos_anylc_pdt_18', 'a:1:{s:6:\"status\";i:1;}', 'yes'),
(24086, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1692146501;s:7:\"checked\";a:4:{s:10:\"iconic-one\";s:0:\"\";s:15:\"twentytwentyone\";s:3:\"1.7\";s:17:\"twentytwentythree\";s:3:\"1.0\";s:15:\"twentytwentytwo\";s:3:\"1.3\";}s:8:\"response\";a:4:{s:10:\"iconic-one\";a:6:{s:5:\"theme\";s:10:\"iconic-one\";s:11:\"new_version\";s:4:\"2.81\";s:3:\"url\";s:40:\"https://wordpress.org/themes/iconic-one/\";s:7:\"package\";s:57:\"https://downloads.wordpress.org/theme/iconic-one.2.81.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.8\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.8.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}s:17:\"twentytwentythree\";a:6:{s:5:\"theme\";s:17:\"twentytwentythree\";s:11:\"new_version\";s:3:\"1.2\";s:3:\"url\";s:47:\"https://wordpress.org/themes/twentytwentythree/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/theme/twentytwentythree.1.2.zip\";s:8:\"requires\";s:3:\"6.1\";s:12:\"requires_php\";s:3:\"5.6\";}s:15:\"twentytwentytwo\";a:6:{s:5:\"theme\";s:15:\"twentytwentytwo\";s:11:\"new_version\";s:3:\"1.4\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentytwo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentytwo.1.4.zip\";s:8:\"requires\";s:3:\"5.9\";s:12:\"requires_php\";s:3:\"5.6\";}}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(24139, '_transient_timeout_global_styles_iconic-one', '1692146533', 'no'),
(24140, '_transient_global_styles_iconic-one', 'body{--wp--preset--color--black: #000000;--wp--preset--color--cyan-bluish-gray: #abb8c3;--wp--preset--color--white: #ffffff;--wp--preset--color--pale-pink: #f78da7;--wp--preset--color--vivid-red: #cf2e2e;--wp--preset--color--luminous-vivid-orange: #ff6900;--wp--preset--color--luminous-vivid-amber: #fcb900;--wp--preset--color--light-green-cyan: #7bdcb5;--wp--preset--color--vivid-green-cyan: #00d084;--wp--preset--color--pale-cyan-blue: #8ed1fc;--wp--preset--color--vivid-cyan-blue: #0693e3;--wp--preset--color--vivid-purple: #9b51e0;--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple: linear-gradient(135deg,rgba(6,147,227,1) 0%,rgb(155,81,224) 100%);--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan: linear-gradient(135deg,rgb(122,220,180) 0%,rgb(0,208,130) 100%);--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange: linear-gradient(135deg,rgba(252,185,0,1) 0%,rgba(255,105,0,1) 100%);--wp--preset--gradient--luminous-vivid-orange-to-vivid-red: linear-gradient(135deg,rgba(255,105,0,1) 0%,rgb(207,46,46) 100%);--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray: linear-gradient(135deg,rgb(238,238,238) 0%,rgb(169,184,195) 100%);--wp--preset--gradient--cool-to-warm-spectrum: linear-gradient(135deg,rgb(74,234,220) 0%,rgb(151,120,209) 20%,rgb(207,42,186) 40%,rgb(238,44,130) 60%,rgb(251,105,98) 80%,rgb(254,248,76) 100%);--wp--preset--gradient--blush-light-purple: linear-gradient(135deg,rgb(255,206,236) 0%,rgb(152,150,240) 100%);--wp--preset--gradient--blush-bordeaux: linear-gradient(135deg,rgb(254,205,165) 0%,rgb(254,45,45) 50%,rgb(107,0,62) 100%);--wp--preset--gradient--luminous-dusk: linear-gradient(135deg,rgb(255,203,112) 0%,rgb(199,81,192) 50%,rgb(65,88,208) 100%);--wp--preset--gradient--pale-ocean: linear-gradient(135deg,rgb(255,245,203) 0%,rgb(182,227,212) 50%,rgb(51,167,181) 100%);--wp--preset--gradient--electric-grass: linear-gradient(135deg,rgb(202,248,128) 0%,rgb(113,206,126) 100%);--wp--preset--gradient--midnight: linear-gradient(135deg,rgb(2,3,129) 0%,rgb(40,116,252) 100%);--wp--preset--duotone--dark-grayscale: url(\'#wp-duotone-dark-grayscale\');--wp--preset--duotone--grayscale: url(\'#wp-duotone-grayscale\');--wp--preset--duotone--purple-yellow: url(\'#wp-duotone-purple-yellow\');--wp--preset--duotone--blue-red: url(\'#wp-duotone-blue-red\');--wp--preset--duotone--midnight: url(\'#wp-duotone-midnight\');--wp--preset--duotone--magenta-yellow: url(\'#wp-duotone-magenta-yellow\');--wp--preset--duotone--purple-green: url(\'#wp-duotone-purple-green\');--wp--preset--duotone--blue-orange: url(\'#wp-duotone-blue-orange\');--wp--preset--font-size--small: 13px;--wp--preset--font-size--medium: 20px;--wp--preset--font-size--large: 36px;--wp--preset--font-size--x-large: 42px;--wp--preset--spacing--20: 0.44rem;--wp--preset--spacing--30: 0.67rem;--wp--preset--spacing--40: 1rem;--wp--preset--spacing--50: 1.5rem;--wp--preset--spacing--60: 2.25rem;--wp--preset--spacing--70: 3.38rem;--wp--preset--spacing--80: 5.06rem;}:where(.is-layout-flex){gap: 0.5em;}body .is-layout-flow > .alignleft{float: left;margin-inline-start: 0;margin-inline-end: 2em;}body .is-layout-flow > .alignright{float: right;margin-inline-start: 2em;margin-inline-end: 0;}body .is-layout-flow > .aligncenter{margin-left: auto !important;margin-right: auto !important;}body .is-layout-constrained > .alignleft{float: left;margin-inline-start: 0;margin-inline-end: 2em;}body .is-layout-constrained > .alignright{float: right;margin-inline-start: 2em;margin-inline-end: 0;}body .is-layout-constrained > .aligncenter{margin-left: auto !important;margin-right: auto !important;}body .is-layout-constrained > :where(:not(.alignleft):not(.alignright):not(.alignfull)){max-width: var(--wp--style--global--content-size);margin-left: auto !important;margin-right: auto !important;}body .is-layout-constrained > .alignwide{max-width: var(--wp--style--global--wide-size);}body .is-layout-flex{display: flex;}body .is-layout-flex{flex-wrap: wrap;align-items: center;}body .is-layout-flex > *{margin: 0;}:where(.wp-block-columns.is-layout-flex){gap: 2em;}.has-black-color{color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-color{color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-color{color: var(--wp--preset--color--white) !important;}.has-pale-pink-color{color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-color{color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-color{color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-color{color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-color{color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-color{color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-color{color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-color{color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-color{color: var(--wp--preset--color--vivid-purple) !important;}.has-black-background-color{background-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-background-color{background-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-background-color{background-color: var(--wp--preset--color--white) !important;}.has-pale-pink-background-color{background-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-background-color{background-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-background-color{background-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-background-color{background-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-background-color{background-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-background-color{background-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-background-color{background-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-background-color{background-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-background-color{background-color: var(--wp--preset--color--vivid-purple) !important;}.has-black-border-color{border-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-border-color{border-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-border-color{border-color: var(--wp--preset--color--white) !important;}.has-pale-pink-border-color{border-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-border-color{border-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-border-color{border-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-border-color{border-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-border-color{border-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-border-color{border-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-border-color{border-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-border-color{border-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-border-color{border-color: var(--wp--preset--color--vivid-purple) !important;}.has-vivid-cyan-blue-to-vivid-purple-gradient-background{background: var(--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple) !important;}.has-light-green-cyan-to-vivid-green-cyan-gradient-background{background: var(--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan) !important;}.has-luminous-vivid-amber-to-luminous-vivid-orange-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange) !important;}.has-luminous-vivid-orange-to-vivid-red-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-orange-to-vivid-red) !important;}.has-very-light-gray-to-cyan-bluish-gray-gradient-background{background: var(--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray) !important;}.has-cool-to-warm-spectrum-gradient-background{background: var(--wp--preset--gradient--cool-to-warm-spectrum) !important;}.has-blush-light-purple-gradient-background{background: var(--wp--preset--gradient--blush-light-purple) !important;}.has-blush-bordeaux-gradient-background{background: var(--wp--preset--gradient--blush-bordeaux) !important;}.has-luminous-dusk-gradient-background{background: var(--wp--preset--gradient--luminous-dusk) !important;}.has-pale-ocean-gradient-background{background: var(--wp--preset--gradient--pale-ocean) !important;}.has-electric-grass-gradient-background{background: var(--wp--preset--gradient--electric-grass) !important;}.has-midnight-gradient-background{background: var(--wp--preset--gradient--midnight) !important;}.has-small-font-size{font-size: var(--wp--preset--font-size--small) !important;}.has-medium-font-size{font-size: var(--wp--preset--font-size--medium) !important;}.has-large-font-size{font-size: var(--wp--preset--font-size--large) !important;}.has-x-large-font-size{font-size: var(--wp--preset--font-size--x-large) !important;}', 'no'),
(24088, 'ai1wm_secret_key', 'ZbcASOtCTioo', 'yes'),
(24089, 'ai1wm_backups_labels', 'a:0:{}', 'yes'),
(24090, 'ai1wm_sites_links', 'a:0:{}', 'yes'),
(24091, 'ai1wm_backups_path', 'E:\\xampp\\htdocs\\atcustomwebsites/wp-content\\ai1wm-backups', 'yes'),
(24092, 'ai1wm_status', 'a:3:{s:4:\"type\";s:4:\"done\";s:5:\"title\";s:41:\"Your site has been imported successfully!\";s:7:\"message\";s:389:\"» <a class=\"ai1wm-no-underline\" href=\"http://localhost:81/atcustomwebsites/wp-admin/options-permalink.php#submit\" target=\"_blank\">Save permalinks structure</a>. (opens a new window)<br />» <a class=\"ai1wm-no-underline\" href=\"https://wordpress.org/support/view/plugin-reviews/all-in-one-wp-migration?rate=5#postform\" target=\"_blank\">Optionally, review the plugin</a>. (opens a new window)\";}', 'yes'),
(24151, '_site_transient_timeout_php_check_d564ef3bc004ad591bb7443752129422', '1692751306', 'no'),
(24152, '_site_transient_php_check_d564ef3bc004ad591bb7443752129422', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:3:\"7.0\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(24147, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:3:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-6.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-6.3.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-6.3-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-6.3-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:3:\"6.3\";s:7:\"version\";s:3:\"6.3\";s:11:\"php_version\";s:5:\"7.0.0\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-6.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-6.3.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-6.3-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-6.3-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:3:\"6.3\";s:7:\"version\";s:3:\"6.3\";s:11:\"php_version\";s:5:\"7.0.0\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.2.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.2.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.2.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.2.2-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.2.2\";s:7:\"version\";s:5:\"6.2.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}}s:12:\"last_checked\";i:1692146496;s:15:\"version_checked\";s:5:\"6.1.3\";s:12:\"translations\";a:0:{}}', 'no'),
(24150, 'updraft_combine_jobs_around', '1692163699', 'yes'),
(24093, 'swift_performance_plugin_organizer', 'a:0:{}', 'yes'),
(24094, 'jetpack_active_modules', 'a:0:{}', 'yes'),
(24144, '_site_transient_timeout_theme_roots', '1692148282', 'no'),
(24145, '_site_transient_theme_roots', 'a:4:{s:10:\"iconic-one\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";s:17:\"twentytwentythree\";s:7:\"/themes\";s:15:\"twentytwentytwo\";s:7:\"/themes\";}', 'no'),
(24142, '_transient_timeout_acf_plugin_updates', '1692319281', 'no'),
(24143, '_transient_acf_plugin_updates', 'a:5:{s:7:\"plugins\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";a:11:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"6.2.0\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:3:\"6.3\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}s:8:\"requires\";s:3:\"5.8\";s:12:\"requires_php\";s:3:\"7.0\";s:12:\"release_date\";s:8:\"20230809\";}}s:9:\"no_update\";a:0:{}s:10:\"expiration\";i:172800;s:6:\"status\";i:1;s:7:\"checked\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.8.4\";}}', 'no'),
(24099, '_transient_is_multi_author', '1', 'yes'),
(24100, '_transient_health-check-site-status-result', '{\"good\":15,\"recommended\":5,\"critical\":1}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(24148, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1692146501;s:8:\"response\";a:17:{s:31:\"advanced-access-manager/aam.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:37:\"w.org/plugins/advanced-access-manager\";s:4:\"slug\";s:23:\"advanced-access-manager\";s:6:\"plugin\";s:31:\"advanced-access-manager/aam.php\";s:11:\"new_version\";s:6:\"6.9.14\";s:3:\"url\";s:54:\"https://wordpress.org/plugins/advanced-access-manager/\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/plugin/advanced-access-manager.6.9.14.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:76:\"https://ps.w.org/advanced-access-manager/assets/icon-256x256.png?rev=2199546\";s:2:\"1x\";s:76:\"https://ps.w.org/advanced-access-manager/assets/icon-128x128.png?rev=2199546\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:79:\"https://ps.w.org/advanced-access-manager/assets/banner-1544x500.png?rev=2197012\";s:2:\"1x\";s:78:\"https://ps.w.org/advanced-access-manager/assets/banner-772x250.png?rev=2197012\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:5:\"4.7.0\";s:6:\"tested\";s:5:\"6.2.2\";s:12:\"requires_php\";s:5:\"5.6.0\";}s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"6.2.0\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.6.2.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=2892919\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=2892919\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.8\";s:6:\"tested\";s:3:\"6.3\";s:12:\"requires_php\";s:3:\"7.0\";}s:45:\"advanced-backgrounds/advanced-backgrounds.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:34:\"w.org/plugins/advanced-backgrounds\";s:4:\"slug\";s:20:\"advanced-backgrounds\";s:6:\"plugin\";s:45:\"advanced-backgrounds/advanced-backgrounds.php\";s:11:\"new_version\";s:6:\"1.11.4\";s:3:\"url\";s:51:\"https://wordpress.org/plugins/advanced-backgrounds/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/advanced-backgrounds.1.11.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/advanced-backgrounds/assets/icon-256x256.png?rev=2386996\";s:2:\"1x\";s:73:\"https://ps.w.org/advanced-backgrounds/assets/icon-128x128.png?rev=2386996\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:76:\"https://ps.w.org/advanced-backgrounds/assets/banner-1544x500.png?rev=2386996\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-backgrounds/assets/banner-772x250.png?rev=2386996\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.8\";s:6:\"tested\";s:5:\"6.2.2\";s:12:\"requires_php\";s:3:\"7.2\";}s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:3:\"5.2\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/plugin/akismet.5.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:60:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=2818463\";s:2:\"1x\";s:60:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=2818463\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/akismet/assets/banner-1544x500.png?rev=2900731\";s:2:\"1x\";s:62:\"https://ps.w.org/akismet/assets/banner-772x250.png?rev=2900731\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.8\";s:6:\"tested\";s:3:\"6.3\";s:12:\"requires_php\";s:6:\"5.6.20\";}s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:37:\"w.org/plugins/all-in-one-wp-migration\";s:4:\"slug\";s:23:\"all-in-one-wp-migration\";s:6:\"plugin\";s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";s:11:\"new_version\";s:4:\"7.77\";s:3:\"url\";s:54:\"https://wordpress.org/plugins/all-in-one-wp-migration/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/all-in-one-wp-migration.7.77.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:76:\"https://ps.w.org/all-in-one-wp-migration/assets/icon-256x256.png?rev=2458334\";s:2:\"1x\";s:76:\"https://ps.w.org/all-in-one-wp-migration/assets/icon-128x128.png?rev=2458334\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:79:\"https://ps.w.org/all-in-one-wp-migration/assets/banner-1544x500.png?rev=2902233\";s:2:\"1x\";s:78:\"https://ps.w.org/all-in-one-wp-migration/assets/banner-772x250.png?rev=2902233\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"3.3\";s:6:\"tested\";s:3:\"6.3\";s:12:\"requires_php\";s:3:\"5.3\";}s:25:\"animate-it/edsanimate.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:24:\"w.org/plugins/animate-it\";s:4:\"slug\";s:10:\"animate-it\";s:6:\"plugin\";s:25:\"animate-it/edsanimate.php\";s:11:\"new_version\";s:5:\"3.0.2\";s:3:\"url\";s:41:\"https://wordpress.org/plugins/animate-it/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/plugin/animate-it.3.0.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:62:\"https://ps.w.org/animate-it/assets/icon-256x256.png?rev=989356\";s:2:\"1x\";s:62:\"https://ps.w.org/animate-it/assets/icon-128x128.png?rev=989356\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/animate-it/assets/banner-1544x500.png?rev=988616\";s:2:\"1x\";s:64:\"https://ps.w.org/animate-it/assets/banner-772x250.png?rev=988616\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:5:\"4.7.0\";s:6:\"tested\";s:5:\"6.1.3\";s:12:\"requires_php\";b:0;}s:29:\"antispam-bee/antispam_bee.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:26:\"w.org/plugins/antispam-bee\";s:4:\"slug\";s:12:\"antispam-bee\";s:6:\"plugin\";s:29:\"antispam-bee/antispam_bee.php\";s:11:\"new_version\";s:6:\"2.11.3\";s:3:\"url\";s:43:\"https://wordpress.org/plugins/antispam-bee/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/plugin/antispam-bee.2.11.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/antispam-bee/assets/icon-256x256.png?rev=2898402\";s:2:\"1x\";s:65:\"https://ps.w.org/antispam-bee/assets/icon-128x128.png?rev=2898402\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/antispam-bee/assets/banner-1544x500.png?rev=2898402\";s:2:\"1x\";s:67:\"https://ps.w.org/antispam-bee/assets/banner-772x250.png?rev=2898402\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.5\";s:6:\"tested\";s:5:\"6.2.2\";s:12:\"requires_php\";s:3:\"5.2\";s:14:\"upgrade_notice\";s:166:\"<p>The multiselect field for &quot;Delete comments by spam reasons&quot; did not store any values in the last version - please check the setting after the update!</p>\";}s:39:\"block-bad-queries/block-bad-queries.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:31:\"w.org/plugins/block-bad-queries\";s:4:\"slug\";s:17:\"block-bad-queries\";s:6:\"plugin\";s:39:\"block-bad-queries/block-bad-queries.php\";s:11:\"new_version\";s:8:\"20230718\";s:3:\"url\";s:48:\"https://wordpress.org/plugins/block-bad-queries/\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/plugin/block-bad-queries.20230718.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/block-bad-queries/assets/icon-256x256.png?rev=1471770\";s:2:\"1x\";s:70:\"https://ps.w.org/block-bad-queries/assets/icon-128x128.png?rev=1471770\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/block-bad-queries/assets/banner-1544x500.jpg?rev=1380642\";s:2:\"1x\";s:71:\"https://ps.w.org/block-bad-queries/assets/banner-772x250.png?rev=622778\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";s:6:\"tested\";s:3:\"6.3\";s:12:\"requires_php\";s:6:\"5.6.20\";}s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:5:\"1.6.3\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/classic-editor.1.6.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.9\";s:6:\"tested\";s:3:\"6.3\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:42:\"contact-form-cfdb7/contact-form-cfdb-7.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:32:\"w.org/plugins/contact-form-cfdb7\";s:4:\"slug\";s:18:\"contact-form-cfdb7\";s:6:\"plugin\";s:42:\"contact-form-cfdb7/contact-form-cfdb-7.php\";s:11:\"new_version\";s:7:\"1.2.6.7\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/contact-form-cfdb7/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/contact-form-cfdb7.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/contact-form-cfdb7/assets/icon-256x256.png?rev=1619878\";s:2:\"1x\";s:71:\"https://ps.w.org/contact-form-cfdb7/assets/icon-128x128.png?rev=1619878\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:73:\"https://ps.w.org/contact-form-cfdb7/assets/banner-772x250.png?rev=1619902\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.8\";s:6:\"tested\";s:5:\"6.2.2\";s:12:\"requires_php\";s:3:\"5.6\";}s:27:\"redirection/redirection.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:25:\"w.org/plugins/redirection\";s:4:\"slug\";s:11:\"redirection\";s:6:\"plugin\";s:27:\"redirection/redirection.php\";s:11:\"new_version\";s:6:\"5.3.10\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/redirection/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/redirection.5.3.10.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/redirection/assets/icon-256x256.jpg?rev=983639\";s:2:\"1x\";s:63:\"https://ps.w.org/redirection/assets/icon-128x128.jpg?rev=983640\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/redirection/assets/banner-1544x500.jpg?rev=983641\";s:2:\"1x\";s:65:\"https://ps.w.org/redirection/assets/banner-772x250.jpg?rev=983642\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.7\";s:6:\"tested\";s:5:\"6.2.2\";s:12:\"requires_php\";s:3:\"5.6\";}s:27:\"wp-pagenavi/wp-pagenavi.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:25:\"w.org/plugins/wp-pagenavi\";s:4:\"slug\";s:11:\"wp-pagenavi\";s:6:\"plugin\";s:27:\"wp-pagenavi/wp-pagenavi.php\";s:11:\"new_version\";s:6:\"2.94.1\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/wp-pagenavi/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/wp-pagenavi.2.94.1.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:55:\"https://ps.w.org/wp-pagenavi/assets/icon.svg?rev=977997\";s:3:\"svg\";s:55:\"https://ps.w.org/wp-pagenavi/assets/icon.svg?rev=977997\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/wp-pagenavi/assets/banner-1544x500.jpg?rev=1206758\";s:2:\"1x\";s:66:\"https://ps.w.org/wp-pagenavi/assets/banner-772x250.jpg?rev=1206758\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"3.2\";s:6:\"tested\";s:3:\"6.3\";s:12:\"requires_php\";b:0;}s:35:\"wp-fastest-cache/wpFastestCache.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:30:\"w.org/plugins/wp-fastest-cache\";s:4:\"slug\";s:16:\"wp-fastest-cache\";s:6:\"plugin\";s:35:\"wp-fastest-cache/wpFastestCache.php\";s:11:\"new_version\";s:5:\"1.1.8\";s:3:\"url\";s:47:\"https://wordpress.org/plugins/wp-fastest-cache/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/wp-fastest-cache.1.1.8.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/wp-fastest-cache/assets/icon-256x256.png?rev=2064586\";s:2:\"1x\";s:69:\"https://ps.w.org/wp-fastest-cache/assets/icon-128x128.png?rev=1068904\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:71:\"https://ps.w.org/wp-fastest-cache/assets/banner-772x250.jpg?rev=1064099\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"3.3\";s:6:\"tested\";s:3:\"6.3\";s:12:\"requires_php\";b:0;}s:58:\"wp-responsive-recent-post-slider/wp-recent-post-slider.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:46:\"w.org/plugins/wp-responsive-recent-post-slider\";s:4:\"slug\";s:32:\"wp-responsive-recent-post-slider\";s:6:\"plugin\";s:58:\"wp-responsive-recent-post-slider/wp-recent-post-slider.php\";s:11:\"new_version\";s:5:\"3.3.1\";s:3:\"url\";s:63:\"https://wordpress.org/plugins/wp-responsive-recent-post-slider/\";s:7:\"package\";s:75:\"https://downloads.wordpress.org/plugin/wp-responsive-recent-post-slider.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:85:\"https://ps.w.org/wp-responsive-recent-post-slider/assets/icon-128x128.png?rev=2890156\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:87:\"https://ps.w.org/wp-responsive-recent-post-slider/assets/banner-772x250.png?rev=2877805\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.0\";s:6:\"tested\";s:5:\"6.2.2\";s:12:\"requires_php\";b:0;}s:33:\"wps-hide-login/wps-hide-login.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:28:\"w.org/plugins/wps-hide-login\";s:4:\"slug\";s:14:\"wps-hide-login\";s:6:\"plugin\";s:33:\"wps-hide-login/wps-hide-login.php\";s:11:\"new_version\";s:5:\"1.9.8\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/wps-hide-login/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/wps-hide-login.1.9.8.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/wps-hide-login/assets/icon-256x256.png?rev=1820667\";s:2:\"1x\";s:67:\"https://ps.w.org/wps-hide-login/assets/icon-128x128.png?rev=1820667\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/wps-hide-login/assets/banner-1544x500.jpg?rev=1820667\";s:2:\"1x\";s:69:\"https://ps.w.org/wps-hide-login/assets/banner-772x250.jpg?rev=1820667\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.1\";s:6:\"tested\";s:5:\"6.1.3\";s:12:\"requires_php\";s:3:\"7.0\";}s:24:\"wordpress-seo/wp-seo.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:27:\"w.org/plugins/wordpress-seo\";s:4:\"slug\";s:13:\"wordpress-seo\";s:6:\"plugin\";s:24:\"wordpress-seo/wp-seo.php\";s:11:\"new_version\";s:5:\"20.13\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/wordpress-seo/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/plugin/wordpress-seo.20.13.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=2363699\";s:3:\"svg\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=2363699\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500.png?rev=2643727\";s:2:\"1x\";s:68:\"https://ps.w.org/wordpress-seo/assets/banner-772x250.png?rev=2643727\";}s:11:\"banners_rtl\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500-rtl.png?rev=2643727\";s:2:\"1x\";s:72:\"https://ps.w.org/wordpress-seo/assets/banner-772x250-rtl.png?rev=2643727\";}s:8:\"requires\";s:3:\"6.1\";s:6:\"tested\";s:3:\"6.3\";s:12:\"requires_php\";s:5:\"7.2.5\";}s:34:\"advanced-custom-fields-pro/acf.php\";O:8:\"stdClass\":11:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"6.2.0\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:3:\"6.3\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}s:8:\"requires\";s:3:\"5.8\";s:12:\"requires_php\";s:3:\"7.0\";s:12:\"release_date\";s:8:\"20230809\";}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:9:{s:63:\"block-specific-plugin-updates/block-specific-plugin-updates.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:43:\"w.org/plugins/block-specific-plugin-updates\";s:4:\"slug\";s:29:\"block-specific-plugin-updates\";s:6:\"plugin\";s:63:\"block-specific-plugin-updates/block-specific-plugin-updates.php\";s:11:\"new_version\";s:3:\"3.3\";s:3:\"url\";s:60:\"https://wordpress.org/plugins/block-specific-plugin-updates/\";s:7:\"package\";s:76:\"https://downloads.wordpress.org/plugin/block-specific-plugin-updates.3.3.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:82:\"https://ps.w.org/block-specific-plugin-updates/assets/icon-128x128.png?rev=1120473\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:84:\"https://ps.w.org/block-specific-plugin-updates/assets/banner-772x250.png?rev=1120473\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";b:0;}s:35:\"classic-widgets/classic-widgets.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:29:\"w.org/plugins/classic-widgets\";s:4:\"slug\";s:15:\"classic-widgets\";s:6:\"plugin\";s:35:\"classic-widgets/classic-widgets.php\";s:11:\"new_version\";s:3:\"0.3\";s:3:\"url\";s:46:\"https://wordpress.org/plugins/classic-widgets/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/plugin/classic-widgets.0.3.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:59:\"https://s.w.org/plugins/geopattern-icon/classic-widgets.svg\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.9\";}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:3:\"5.8\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/contact-form-7.5.8.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";s:3:\"svg\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.2\";s:6:\"tested\";s:3:\"6.3\";s:12:\"requires_php\";s:3:\"7.4\";}s:69:\"disable-wp-theme-updates-advance/disable-wp-theme-updates-advance.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:46:\"w.org/plugins/disable-wp-theme-updates-advance\";s:4:\"slug\";s:32:\"disable-wp-theme-updates-advance\";s:6:\"plugin\";s:69:\"disable-wp-theme-updates-advance/disable-wp-theme-updates-advance.php\";s:11:\"new_version\";s:5:\"1.0.0\";s:3:\"url\";s:63:\"https://wordpress.org/plugins/disable-wp-theme-updates-advance/\";s:7:\"package\";s:75:\"https://downloads.wordpress.org/plugin/disable-wp-theme-updates-advance.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:76:\"https://s.w.org/plugins/geopattern-icon/disable-wp-theme-updates-advance.svg\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:5:\"3.0.1\";}s:47:\"email-address-encoder/email-address-encoder.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:35:\"w.org/plugins/email-address-encoder\";s:4:\"slug\";s:21:\"email-address-encoder\";s:6:\"plugin\";s:47:\"email-address-encoder/email-address-encoder.php\";s:11:\"new_version\";s:6:\"1.0.22\";s:3:\"url\";s:52:\"https://wordpress.org/plugins/email-address-encoder/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/email-address-encoder.1.0.22.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/email-address-encoder/assets/icon-256x256.jpg?rev=970206\";s:2:\"1x\";s:73:\"https://ps.w.org/email-address-encoder/assets/icon-128x128.jpg?rev=970206\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:76:\"https://ps.w.org/email-address-encoder/assets/banner-1544x500.jpg?rev=970206\";s:2:\"1x\";s:75:\"https://ps.w.org/email-address-encoder/assets/banner-772x250.jpg?rev=970206\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"2.0\";}s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/hello-dolly/assets/banner-1544x500.jpg?rev=2645582\";s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}s:75:\"open-external-links-in-a-new-window/open-external-links-in-a-new-window.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:49:\"w.org/plugins/open-external-links-in-a-new-window\";s:4:\"slug\";s:35:\"open-external-links-in-a-new-window\";s:6:\"plugin\";s:75:\"open-external-links-in-a-new-window/open-external-links-in-a-new-window.php\";s:11:\"new_version\";s:4:\"1.44\";s:3:\"url\";s:66:\"https://wordpress.org/plugins/open-external-links-in-a-new-window/\";s:7:\"package\";s:83:\"https://downloads.wordpress.org/plugin/open-external-links-in-a-new-window.1.44.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:88:\"https://ps.w.org/open-external-links-in-a-new-window/assets/icon-256x256.png?rev=2145083\";s:2:\"1x\";s:88:\"https://ps.w.org/open-external-links-in-a-new-window/assets/icon-128x128.png?rev=2145083\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:89:\"https://ps.w.org/open-external-links-in-a-new-window/assets/banner-772x250.jpg?rev=547996\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.0\";}s:55:\"resize-image-after-upload/resize-image-after-upload.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:39:\"w.org/plugins/resize-image-after-upload\";s:4:\"slug\";s:25:\"resize-image-after-upload\";s:6:\"plugin\";s:55:\"resize-image-after-upload/resize-image-after-upload.php\";s:11:\"new_version\";s:5:\"1.8.6\";s:3:\"url\";s:56:\"https://wordpress.org/plugins/resize-image-after-upload/\";s:7:\"package\";s:74:\"https://downloads.wordpress.org/plugin/resize-image-after-upload.1.8.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/resize-image-after-upload/assets/icon-256x256.png?rev=1940740\";s:2:\"1x\";s:78:\"https://ps.w.org/resize-image-after-upload/assets/icon-128x128.png?rev=1940740\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:81:\"https://ps.w.org/resize-image-after-upload/assets/banner-1544x500.png?rev=1940740\";s:2:\"1x\";s:80:\"https://ps.w.org/resize-image-after-upload/assets/banner-772x250.png?rev=1940740\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"3.5\";}s:27:\"svg-support/svg-support.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/svg-support\";s:4:\"slug\";s:11:\"svg-support\";s:6:\"plugin\";s:27:\"svg-support/svg-support.php\";s:11:\"new_version\";s:5:\"2.5.5\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/svg-support/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/svg-support.2.5.5.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:56:\"https://ps.w.org/svg-support/assets/icon.svg?rev=1417738\";s:3:\"svg\";s:56:\"https://ps.w.org/svg-support/assets/icon.svg?rev=1417738\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/svg-support/assets/banner-1544x500.jpg?rev=1215377\";s:2:\"1x\";s:66:\"https://ps.w.org/svg-support/assets/banner-772x250.jpg?rev=1215377\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.8\";}}s:7:\"checked\";a:29:{s:31:\"advanced-access-manager/aam.php\";s:5:\"6.9.4\";s:30:\"advanced-custom-fields/acf.php\";s:5:\"6.0.6\";s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.8.4\";s:45:\"advanced-backgrounds/advanced-backgrounds.php\";s:6:\"1.10.0\";s:19:\"akismet/akismet.php\";s:5:\"5.0.1\";s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";s:4:\"7.66\";s:91:\"all-in-one-wp-migration-unlimited-extension/all-in-one-wp-migration-unlimited-extension.php\";s:4:\"2.46\";s:25:\"animate-it/edsanimate.php\";s:5:\"3.0.0\";s:29:\"antispam-bee/antispam_bee.php\";s:6:\"2.11.1\";s:39:\"block-bad-queries/block-bad-queries.php\";s:8:\"20221002\";s:63:\"block-specific-plugin-updates/block-specific-plugin-updates.php\";s:3:\"3.3\";s:33:\"classic-editor/classic-editor.php\";s:5:\"1.6.2\";s:35:\"classic-widgets/classic-widgets.php\";s:3:\"0.3\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.7.2\";s:42:\"contact-form-cfdb7/contact-form-cfdb-7.php\";s:7:\"1.2.6.5\";s:69:\"disable-wp-theme-updates-advance/disable-wp-theme-updates-advance.php\";s:5:\"1.0.0\";s:47:\"email-address-encoder/email-address-encoder.php\";s:6:\"1.0.22\";s:9:\"hello.php\";s:5:\"1.7.2\";s:75:\"open-external-links-in-a-new-window/open-external-links-in-a-new-window.php\";s:4:\"1.44\";s:27:\"redirection/redirection.php\";s:5:\"5.3.6\";s:55:\"resize-image-after-upload/resize-image-after-upload.php\";s:5:\"1.8.6\";s:35:\"responsive-menu/responsive-menu.php\";s:6:\"3.1.30\";s:27:\"svg-support/svg-support.php\";s:5:\"2.5.5\";s:27:\"updraftplus/updraftplus.php\";s:9:\"2.22.14.1\";s:27:\"wp-pagenavi/wp-pagenavi.php\";s:6:\"2.94.0\";s:35:\"wp-fastest-cache/wpFastestCache.php\";s:5:\"1.0.9\";s:58:\"wp-responsive-recent-post-slider/wp-recent-post-slider.php\";s:5:\"3.1.2\";s:33:\"wps-hide-login/wps-hide-login.php\";s:5:\"1.9.6\";s:24:\"wordpress-seo/wp-seo.php\";s:5:\"19.13\";}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(10, 8, '_edit_last', '1'),
(11, 8, '_edit_lock', '1672859343:4'),
(12, 8, '_wp_page_template', 'default'),
(13, 10, '_edit_last', '1'),
(14, 10, '_edit_lock', '1672859270:4'),
(15, 10, '_wp_page_template', 'page-templates/full-width.php'),
(16, 12, '_edit_last', '1'),
(17, 12, '_edit_lock', '1604422283:1'),
(18, 12, '_wp_page_template', 'default'),
(19, 14, '_edit_last', '1'),
(20, 14, '_edit_lock', '1635782363:1'),
(21, 14, '_wp_page_template', 'default'),
(22, 16, '_form', '<div class=\"flex f1\">\n<div>\n<label>First Name <sup>*</sup></label>\n[text* first-name]\n</div>\n<div>\n<label>Last Name <sup>*</sup></label>\n[text* last-name]\n</div>\n</div>\n\n<label>Phone</label>\n[text phone]\n\n<label>Email <sup>*</sup></label>\n[email* email]\n\n<label>Message</label>\n[textarea message]\n\n[submit \"Submit\"]'),
(23, 16, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:15:\"Website Inquiry\";s:6:\"sender\";s:58:\"[first-name] [last-name] <noreply@vps43701.servconfig.com>\";s:9:\"recipient\";s:21:\"mike@goauroratech.com\";s:4:\"body\";s:167:\"From: [first-name] [last-name]\n\nPhone: [phone]\n\nEmail address: [email]\n\nMessage:\n[message]\n\n--\nSent from page: [_url]\nUser IP: [_remote_ip]\nBrowser info: [_user_agent]\";s:18:\"additional_headers\";s:17:\"Reply-To: [email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(24, 16, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:50:\"[_site_title] <wordpress@dev2020.goauroratech.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:105:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\";s:18:\"additional_headers\";s:29:\"Reply-To: [_site_admin_email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(25, 16, '_messages', 'a:22:{s:12:\"mail_sent_ok\";s:60:\"Thank you for your message! We will get back to you shortly.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:67:\"Please accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:23:\"This field is required.\";s:16:\"invalid_too_long\";s:23:\"This field is too long.\";s:17:\"invalid_too_short\";s:24:\"This field is too short.\";s:12:\"invalid_date\";s:30:\"This date format is incorrect.\";s:14:\"date_too_early\";s:45:\"This date is before the earliest one allowed.\";s:13:\"date_too_late\";s:42:\"This date is after the latest one allowed.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:30:\"This file type is not allowed.\";s:21:\"upload_file_too_large\";s:21:\"This file is too big.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:14:\"invalid_number\";s:30:\"This number format is invalid.\";s:16:\"number_too_small\";s:49:\"This  number is smaller than the minimum allowed.\";s:16:\"number_too_large\";s:47:\"This number is larger than the maximum allowed.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:13:\"invalid_email\";s:37:\"The email address entered is invalid.\";s:11:\"invalid_url\";s:20:\"This URL is invalid.\";s:11:\"invalid_tel\";s:29:\"This phone number is invalid.\";}'),
(26, 16, '_additional_settings', ''),
(27, 16, '_locale', 'en_US'),
(28, 16, '_config_errors', 'a:1:{s:11:\"mail.sender\";a:1:{i:0;a:2:{s:4:\"code\";i:103;s:4:\"args\";a:3:{s:7:\"message\";s:0:\"\";s:6:\"params\";a:0:{}s:4:\"link\";s:70:\"https://contactform7.com/configuration-errors/email-not-in-site-domain\";}}}}'),
(29, 18, '_menu_item_type', 'post_type'),
(30, 18, '_menu_item_menu_item_parent', '0'),
(31, 18, '_menu_item_object_id', '10'),
(32, 18, '_menu_item_object', 'page'),
(33, 18, '_menu_item_target', ''),
(34, 18, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(35, 18, '_menu_item_xfn', ''),
(36, 18, '_menu_item_url', ''),
(38, 19, '_menu_item_type', 'post_type'),
(39, 19, '_menu_item_menu_item_parent', '0'),
(40, 19, '_menu_item_object_id', '12'),
(41, 19, '_menu_item_object', 'page'),
(42, 19, '_menu_item_target', ''),
(43, 19, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(44, 19, '_menu_item_xfn', ''),
(45, 19, '_menu_item_url', ''),
(47, 20, '_menu_item_type', 'post_type'),
(48, 20, '_menu_item_menu_item_parent', '0'),
(49, 20, '_menu_item_object_id', '8'),
(50, 20, '_menu_item_object', 'page'),
(51, 20, '_menu_item_target', ''),
(52, 20, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(53, 20, '_menu_item_xfn', ''),
(54, 20, '_menu_item_url', ''),
(56, 21, '_menu_item_type', 'post_type'),
(57, 21, '_menu_item_menu_item_parent', '0'),
(58, 21, '_menu_item_object_id', '14'),
(59, 21, '_menu_item_object', 'page'),
(60, 21, '_menu_item_target', ''),
(61, 21, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(62, 21, '_menu_item_xfn', ''),
(63, 21, '_menu_item_url', ''),
(76, 27, '_edit_last', '4'),
(79, 27, '_edit_lock', '1672859828:4'),
(80, 29, '_edit_last', '4'),
(83, 29, '_edit_lock', '1672859837:4'),
(84, 31, '_edit_last', '4'),
(87, 31, '_edit_lock', '1672860601:4'),
(90, 72, 'rmp_menu_meta', 'a:325:{s:10:\"menu_theme\";N;s:10:\"theme_type\";s:7:\"default\";s:19:\"theme_location_menu\";s:0:\"\";s:27:\"submenu_submenu_arrow_width\";s:2:\"40\";s:32:\"submenu_submenu_arrow_width_unit\";s:2:\"px\";s:28:\"submenu_submenu_arrow_height\";s:2:\"40\";s:33:\"submenu_submenu_arrow_height_unit\";s:2:\"px\";s:22:\"submenu_arrow_position\";s:5:\"right\";s:35:\"submenu_sub_arrow_background_colour\";s:7:\"#181818\";s:41:\"submenu_sub_arrow_background_hover_colour\";s:7:\"#181818\";s:42:\"submenu_sub_arrow_background_colour_active\";s:7:\"#212121\";s:48:\"submenu_sub_arrow_background_hover_colour_active\";s:7:\"#3f3f3f\";s:30:\"submenu_sub_arrow_border_width\";s:1:\"1\";s:35:\"submenu_sub_arrow_border_width_unit\";s:2:\"px\";s:31:\"submenu_sub_arrow_border_colour\";s:7:\"#333333\";s:37:\"submenu_sub_arrow_border_hover_colour\";s:7:\"#333333\";s:38:\"submenu_sub_arrow_border_colour_active\";s:7:\"#212121\";s:44:\"submenu_sub_arrow_border_hover_colour_active\";s:7:\"#ffffff\";s:30:\"submenu_sub_arrow_shape_colour\";s:7:\"#ffffff\";s:36:\"submenu_sub_arrow_shape_hover_colour\";s:7:\"#ffffff\";s:37:\"submenu_sub_arrow_shape_colour_active\";s:7:\"#ffffff\";s:43:\"submenu_sub_arrow_shape_hover_colour_active\";s:7:\"#ffffff\";s:14:\"use_header_bar\";s:3:\"off\";s:22:\"header_bar_items_order\";s:60:\"{\"logo\":\"on\",\"title\":\"on\",\"search\":\"on\",\"html content\":\"on\"}\";s:16:\"header_bar_title\";s:0:\"\";s:23:\"header_bar_html_content\";s:0:\"\";s:15:\"header_bar_logo\";s:0:\"\";s:20:\"header_bar_logo_link\";s:0:\"\";s:21:\"header_bar_logo_width\";s:0:\"\";s:26:\"header_bar_logo_width_unit\";s:1:\"%\";s:22:\"header_bar_logo_height\";s:0:\"\";s:27:\"header_bar_logo_height_unit\";s:2:\"px\";s:17:\"header_bar_height\";s:2:\"80\";s:22:\"header_bar_height_unit\";s:2:\"px\";s:18:\"header_bar_padding\";a:4:{s:3:\"top\";s:3:\"0px\";s:5:\"right\";s:2:\"5%\";s:6:\"bottom\";s:3:\"0px\";s:4:\"left\";s:2:\"5%\";}s:15:\"header_bar_font\";s:0:\"\";s:20:\"header_bar_font_size\";s:2:\"14\";s:25:\"header_bar_font_size_unit\";s:2:\"px\";s:21:\"header_bar_text_color\";s:7:\"#ffffff\";s:27:\"header_bar_background_color\";s:7:\"#ffffff\";s:21:\"header_bar_breakpoint\";s:3:\"800\";s:24:\"header_bar_position_type\";s:5:\"fixed\";s:22:\"header_bar_adjust_page\";N;s:24:\"header_bar_scroll_enable\";s:3:\"off\";s:34:\"header_bar_scroll_background_color\";s:7:\"#36bdf6\";s:17:\"mobile_breakpoint\";s:3:\"600\";s:17:\"tablet_breakpoint\";s:3:\"850\";s:16:\"transition_speed\";s:3:\"0.5\";s:14:\"sub_menu_speed\";s:3:\"0.2\";s:22:\"show_menu_on_page_load\";s:0:\"\";s:22:\"menu_disable_scrolling\";s:3:\"off\";s:12:\"menu_overlay\";s:3:\"off\";s:19:\"menu_overlay_colour\";s:18:\"rgba(0, 0, 0, 0.7)\";s:18:\"desktop_menu_width\";s:0:\"\";s:23:\"desktop_menu_width_unit\";s:1:\"%\";s:24:\"desktop_menu_positioning\";s:5:\"fixed\";s:17:\"desktop_menu_side\";s:0:\"\";s:20:\"desktop_menu_to_hide\";s:0:\"\";s:26:\"use_current_theme_location\";s:3:\"off\";s:9:\"mega_menu\";a:5:{i:225;s:3:\"off\";i:227;s:3:\"off\";i:229;s:3:\"off\";i:228;s:3:\"off\";i:226;s:3:\"off\";}s:30:\"desktop_submenu_open_animation\";s:0:\"\";s:36:\"desktop_submenu_open_animation_speed\";s:3:\"0ms\";s:29:\"desktop_submenu_open_on_click\";s:0:\"\";s:26:\"desktop_menu_hide_and_show\";s:0:\"\";s:9:\"menu_name\";s:12:\"Default Menu\";s:11:\"menu_to_use\";s:0:\"\";s:25:\"different_menu_for_mobile\";s:3:\"off\";s:21:\"menu_to_use_in_mobile\";s:9:\"main-menu\";s:15:\"use_mobile_menu\";s:2:\"on\";s:15:\"use_tablet_menu\";s:2:\"on\";s:16:\"use_desktop_menu\";s:0:\"\";s:15:\"menu_display_on\";s:9:\"all-pages\";s:12:\"menu_to_hide\";s:13:\".themonic-nav\";s:23:\"submenu_descriptions_on\";s:0:\"\";s:13:\"custom_walker\";s:0:\"\";s:22:\"menu_background_colour\";s:7:\"#333333\";s:10:\"menu_depth\";s:1:\"5\";s:16:\"smooth_scroll_on\";s:3:\"off\";s:19:\"smooth_scroll_speed\";s:3:\"500\";s:15:\"menu_font_icons\";a:0:{}s:17:\"menu_links_height\";s:2:\"40\";s:22:\"menu_links_height_unit\";s:2:\"px\";s:22:\"menu_links_line_height\";s:2:\"40\";s:27:\"menu_links_line_height_unit\";s:2:\"px\";s:12:\"menu_depth_0\";s:1:\"5\";s:17:\"menu_depth_0_unit\";s:1:\"%\";s:14:\"menu_font_size\";s:2:\"13\";s:19:\"menu_font_size_unit\";s:2:\"px\";s:9:\"menu_font\";s:0:\"\";s:16:\"menu_font_weight\";s:6:\"normal\";s:19:\"menu_text_alignment\";s:4:\"left\";s:24:\"menu_text_letter_spacing\";s:0:\"\";s:14:\"menu_word_wrap\";s:3:\"off\";s:16:\"menu_link_colour\";s:7:\"#ffffff\";s:22:\"menu_link_hover_colour\";s:7:\"#ffffff\";s:24:\"menu_current_link_colour\";s:7:\"#ffffff\";s:30:\"menu_current_link_hover_colour\";s:7:\"#ffffff\";s:27:\"menu_item_background_colour\";s:7:\"#333333\";s:33:\"menu_item_background_hover_colour\";s:7:\"#444444\";s:35:\"menu_current_item_background_colour\";s:7:\"#333333\";s:41:\"menu_current_item_background_hover_colour\";s:7:\"#444444\";s:17:\"menu_border_width\";s:1:\"1\";s:22:\"menu_border_width_unit\";s:2:\"px\";s:23:\"menu_item_border_colour\";s:7:\"#444444\";s:29:\"menu_item_border_colour_hover\";s:7:\"#444444\";s:31:\"menu_current_item_border_colour\";s:7:\"#444444\";s:37:\"menu_current_item_border_hover_colour\";s:7:\"#444444\";s:20:\"submenu_links_height\";s:2:\"40\";s:25:\"submenu_links_height_unit\";s:2:\"px\";s:25:\"submenu_links_line_height\";s:2:\"40\";s:30:\"submenu_links_line_height_unit\";s:2:\"px\";s:15:\"menu_depth_side\";s:4:\"left\";s:12:\"menu_depth_1\";s:2:\"10\";s:17:\"menu_depth_1_unit\";s:1:\"%\";s:12:\"menu_depth_2\";s:2:\"15\";s:17:\"menu_depth_2_unit\";s:1:\"%\";s:12:\"menu_depth_3\";s:2:\"20\";s:17:\"menu_depth_3_unit\";s:1:\"%\";s:12:\"menu_depth_4\";s:2:\"25\";s:17:\"menu_depth_4_unit\";s:1:\"%\";s:30:\"submenu_item_background_colour\";s:7:\"#333333\";s:36:\"submenu_item_background_hover_colour\";s:7:\"#444444\";s:38:\"submenu_current_item_background_colour\";s:7:\"#333333\";s:44:\"submenu_current_item_background_hover_colour\";s:7:\"#444444\";s:20:\"submenu_border_width\";s:1:\"1\";s:25:\"submenu_border_width_unit\";s:2:\"px\";s:26:\"submenu_item_border_colour\";s:7:\"#444444\";s:32:\"submenu_item_border_colour_hover\";s:7:\"#444444\";s:34:\"submenu_current_item_border_colour\";s:7:\"#444444\";s:40:\"submenu_current_item_border_hover_colour\";s:7:\"#444444\";s:17:\"submenu_font_size\";s:2:\"13\";s:22:\"submenu_font_size_unit\";s:2:\"px\";s:12:\"submenu_font\";s:0:\"\";s:19:\"submenu_font_weight\";s:6:\"normal\";s:27:\"submenu_text_letter_spacing\";s:0:\"\";s:22:\"submenu_text_alignment\";s:4:\"left\";s:19:\"submenu_link_colour\";s:7:\"#ffffff\";s:25:\"submenu_link_hover_colour\";s:7:\"#ffffff\";s:27:\"submenu_current_link_colour\";s:7:\"#ffffff\";s:33:\"submenu_current_link_hover_colour\";s:7:\"#ffffff\";s:20:\"inactive_arrow_shape\";s:3:\"▼\";s:18:\"active_arrow_shape\";s:3:\"▲\";s:24:\"inactive_arrow_font_icon\";s:0:\"\";s:22:\"active_arrow_font_icon\";s:0:\"\";s:20:\"inactive_arrow_image\";s:0:\"\";s:18:\"active_arrow_image\";s:0:\"\";s:19:\"submenu_arrow_width\";s:2:\"40\";s:24:\"submenu_arrow_width_unit\";s:2:\"px\";s:20:\"submenu_arrow_height\";s:2:\"40\";s:25:\"submenu_arrow_height_unit\";s:2:\"px\";s:14:\"arrow_position\";s:5:\"right\";s:27:\"menu_sub_arrow_shape_colour\";s:7:\"#ffffff\";s:33:\"menu_sub_arrow_shape_hover_colour\";s:7:\"#ffffff\";s:34:\"menu_sub_arrow_shape_colour_active\";s:7:\"#ffffff\";s:40:\"menu_sub_arrow_shape_hover_colour_active\";s:7:\"#ffffff\";s:27:\"menu_sub_arrow_border_width\";s:1:\"1\";s:32:\"menu_sub_arrow_border_width_unit\";s:2:\"px\";s:28:\"menu_sub_arrow_border_colour\";s:7:\"#333333\";s:34:\"menu_sub_arrow_border_hover_colour\";s:7:\"#333333\";s:35:\"menu_sub_arrow_border_colour_active\";s:7:\"#212121\";s:41:\"menu_sub_arrow_border_hover_colour_active\";s:7:\"#ffffff\";s:32:\"menu_sub_arrow_background_colour\";s:7:\"#181818\";s:38:\"menu_sub_arrow_background_hover_colour\";s:7:\"#181818\";s:39:\"menu_sub_arrow_background_colour_active\";s:7:\"#212121\";s:45:\"menu_sub_arrow_background_hover_colour_active\";s:7:\"#3f3f3f\";s:13:\"fade_submenus\";s:3:\"off\";s:18:\"fade_submenus_side\";s:4:\"left\";s:19:\"fade_submenus_delay\";s:3:\"100\";s:19:\"fade_submenus_speed\";s:3:\"500\";s:16:\"use_slide_effect\";s:3:\"off\";s:25:\"slide_effect_back_to_text\";s:4:\"Back\";s:19:\"accordion_animation\";s:2:\"on\";s:24:\"auto_expand_all_submenus\";s:3:\"off\";s:28:\"auto_expand_current_submenus\";s:3:\"off\";s:34:\"menu_item_click_to_trigger_submenu\";s:3:\"off\";s:12:\"button_width\";s:2:\"55\";s:17:\"button_width_unit\";s:2:\"px\";s:13:\"button_height\";s:2:\"50\";s:18:\"button_height_unit\";s:2:\"px\";s:24:\"button_background_colour\";s:7:\"#000000\";s:30:\"button_background_colour_hover\";s:7:\"#000000\";s:31:\"button_background_colour_active\";s:7:\"#000000\";s:27:\"toggle_button_border_radius\";s:1:\"5\";s:29:\"button_transparent_background\";s:2:\"on\";s:20:\"button_left_or_right\";s:5:\"right\";s:20:\"button_position_type\";s:8:\"relative\";s:25:\"button_distance_from_side\";s:1:\"0\";s:30:\"button_distance_from_side_unit\";s:1:\"%\";s:10:\"button_top\";s:1:\"0\";s:15:\"button_top_unit\";s:2:\"px\";s:26:\"button_push_with_animation\";s:3:\"off\";s:22:\"button_click_animation\";s:6:\"boring\";s:18:\"button_line_margin\";s:1:\"5\";s:23:\"button_line_margin_unit\";s:2:\"px\";s:17:\"button_line_width\";s:2:\"35\";s:22:\"button_line_width_unit\";s:2:\"px\";s:18:\"button_line_height\";s:1:\"3\";s:23:\"button_line_height_unit\";s:2:\"px\";s:18:\"button_line_colour\";s:7:\"#000000\";s:24:\"button_line_colour_hover\";s:7:\"#000000\";s:25:\"button_line_colour_active\";s:7:\"#000000\";s:16:\"button_font_icon\";s:0:\"\";s:29:\"button_font_icon_when_clicked\";s:0:\"\";s:12:\"button_image\";s:0:\"\";s:25:\"button_image_when_clicked\";s:0:\"\";s:12:\"button_title\";s:0:\"\";s:17:\"button_title_open\";s:0:\"\";s:21:\"button_title_position\";s:4:\"left\";s:11:\"button_font\";s:0:\"\";s:16:\"button_font_size\";s:2:\"14\";s:21:\"button_font_size_unit\";s:2:\"px\";s:24:\"button_title_line_height\";s:2:\"13\";s:29:\"button_title_line_height_unit\";s:2:\"px\";s:18:\"button_text_colour\";s:7:\"#ffffff\";s:25:\"button_trigger_type_click\";s:2:\"on\";s:25:\"button_trigger_type_hover\";s:3:\"off\";s:20:\"button_click_trigger\";s:23:\"#responsive-menu-button\";s:11:\"items_order\";a:4:{s:5:\"title\";s:2:\"on\";s:4:\"menu\";s:2:\"on\";s:6:\"search\";s:0:\"\";s:18:\"additional content\";s:0:\"\";}s:10:\"menu_title\";s:9:\"Main Menu\";s:15:\"menu_title_link\";s:0:\"\";s:24:\"menu_title_link_location\";s:5:\"_self\";s:16:\"menu_title_image\";s:0:\"\";s:20:\"menu_title_font_icon\";s:0:\"\";s:26:\"menu_title_section_padding\";a:4:{s:3:\"top\";s:3:\"10%\";s:5:\"right\";s:2:\"5%\";s:6:\"bottom\";s:2:\"0%\";s:4:\"left\";s:2:\"5%\";}s:28:\"menu_title_background_colour\";s:7:\"#333333\";s:34:\"menu_title_background_hover_colour\";s:7:\"#333333\";s:20:\"menu_title_font_size\";s:2:\"16\";s:25:\"menu_title_font_size_unit\";s:2:\"px\";s:20:\"menu_title_alignment\";s:4:\"left\";s:22:\"menu_title_font_weight\";s:3:\"400\";s:22:\"menu_title_font_family\";s:0:\"\";s:17:\"menu_title_colour\";s:7:\"#ffffff\";s:23:\"menu_title_hover_colour\";s:7:\"#ffffff\";s:22:\"menu_title_image_width\";s:0:\"\";s:27:\"menu_title_image_width_unit\";s:1:\"%\";s:23:\"menu_title_image_height\";s:0:\"\";s:28:\"menu_title_image_height_unit\";s:2:\"px\";s:23:\"menu_additional_content\";s:0:\"\";s:31:\"menu_additional_section_padding\";a:4:{s:4:\"left\";s:2:\"5%\";s:3:\"top\";s:3:\"0px\";s:5:\"right\";s:2:\"5%\";s:6:\"bottom\";s:3:\"0px\";}s:33:\"menu_additional_content_font_size\";s:2:\"16\";s:38:\"menu_additional_content_font_size_unit\";s:2:\"px\";s:33:\"menu_additional_content_alignment\";s:6:\"center\";s:30:\"menu_additional_content_colour\";s:7:\"#ffffff\";s:20:\"menu_search_box_text\";s:6:\"Search\";s:27:\"menu_search_section_padding\";a:4:{s:4:\"left\";s:2:\"5%\";s:3:\"top\";s:3:\"0px\";s:5:\"right\";s:2:\"5%\";s:6:\"bottom\";s:3:\"0px\";}s:22:\"menu_search_box_height\";s:2:\"45\";s:27:\"menu_search_box_height_unit\";s:2:\"px\";s:29:\"menu_search_box_border_radius\";s:2:\"30\";s:27:\"menu_search_box_text_colour\";s:7:\"#333333\";s:33:\"menu_search_box_background_colour\";s:7:\"#ffffff\";s:34:\"menu_search_box_placeholder_colour\";s:7:\"#c7c7cd\";s:29:\"menu_search_box_border_colour\";s:7:\"#dadada\";s:20:\"menu_section_padding\";a:4:{s:3:\"top\";s:3:\"0px\";s:5:\"right\";s:3:\"0px\";s:6:\"bottom\";s:3:\"0px\";s:4:\"left\";s:3:\"0px\";}s:10:\"menu_width\";s:2:\"75\";s:15:\"menu_width_unit\";s:1:\"%\";s:18:\"menu_maximum_width\";s:0:\"\";s:23:\"menu_maximum_width_unit\";s:2:\"px\";s:18:\"menu_minimum_width\";s:0:\"\";s:23:\"menu_minimum_width_unit\";s:2:\"px\";s:16:\"menu_auto_height\";s:3:\"off\";s:22:\"menu_container_padding\";a:4:{s:3:\"top\";s:3:\"0px\";s:5:\"right\";s:3:\"0px\";s:6:\"bottom\";s:3:\"0px\";s:4:\"left\";s:3:\"0px\";}s:32:\"menu_container_background_colour\";s:7:\"#333333\";s:21:\"menu_background_image\";s:0:\"\";s:14:\"animation_type\";s:5:\"slide\";s:16:\"menu_appear_from\";s:4:\"left\";s:15:\"animation_speed\";s:3:\"0.5\";s:12:\"page_wrapper\";s:0:\"\";s:24:\"menu_close_on_body_click\";s:2:\"on\";s:20:\"menu_close_on_scroll\";s:3:\"off\";s:24:\"menu_close_on_link_click\";s:3:\"off\";s:21:\"enable_touch_gestures\";s:0:\"\";s:10:\"breakpoint\";s:3:\"850\";s:12:\"menu_depth_5\";s:2:\"30\";s:17:\"menu_depth_5_unit\";s:1:\"%\";s:28:\"keyboard_shortcut_close_menu\";s:5:\"27,37\";s:27:\"keyboard_shortcut_open_menu\";s:5:\"32,39\";s:16:\"button_image_alt\";s:0:\"\";s:29:\"button_image_alt_when_clicked\";s:0:\"\";s:21:\"button_font_icon_type\";s:12:\"font-awesome\";s:34:\"button_font_icon_when_clicked_type\";s:12:\"font-awesome\";s:19:\"button_trigger_type\";s:5:\"click\";s:22:\"active_arrow_image_alt\";s:0:\"\";s:24:\"inactive_arrow_image_alt\";s:0:\"\";s:27:\"active_arrow_font_icon_type\";s:12:\"font-awesome\";s:29:\"inactive_arrow_font_icon_type\";s:12:\"font-awesome\";s:28:\"menu_adjust_for_wp_admin_bar\";s:3:\"off\";s:20:\"menu_title_image_alt\";s:0:\"\";s:25:\"menu_title_font_icon_type\";s:12:\"font-awesome\";s:14:\"minify_scripts\";s:3:\"off\";s:17:\"scripts_in_footer\";s:2:\"on\";s:14:\"external_files\";s:3:\"off\";s:18:\"remove_fontawesome\";s:0:\"\";s:16:\"remove_bootstrap\";s:0:\"\";s:9:\"shortcode\";s:2:\"on\";s:11:\"mobile_only\";s:3:\"off\";s:14:\"hide_on_mobile\";s:3:\"off\";s:15:\"hide_on_desktop\";s:3:\"off\";s:14:\"excluded_pages\";N;s:10:\"custom_css\";s:0:\"\";s:20:\"desktop_menu_options\";s:2:\"{}\";s:18:\"single_menu_height\";s:2:\"80\";s:23:\"single_menu_height_unit\";s:2:\"px\";s:23:\"single_menu_line_height\";s:2:\"80\";s:28:\"single_menu_line_height_unit\";s:2:\"px\";s:16:\"single_menu_font\";s:0:\"\";s:21:\"single_menu_font_size\";s:2:\"14\";s:26:\"single_menu_font_size_unit\";s:2:\"px\";s:26:\"single_menu_submenu_height\";s:2:\"40\";s:31:\"single_menu_submenu_height_unit\";s:4:\"auto\";s:31:\"single_menu_submenu_line_height\";s:2:\"40\";s:36:\"single_menu_submenu_line_height_unit\";s:2:\"px\";s:24:\"single_menu_submenu_font\";s:0:\"\";s:29:\"single_menu_submenu_font_size\";s:2:\"12\";s:34:\"single_menu_submenu_font_size_unit\";s:2:\"px\";s:28:\"single_menu_item_link_colour\";s:7:\"#ffffff\";s:34:\"single_menu_item_link_colour_hover\";s:7:\"#ffffff\";s:34:\"single_menu_item_background_colour\";s:7:\"#ffffff\";s:40:\"single_menu_item_background_colour_hover\";s:7:\"#ffffff\";s:36:\"single_menu_item_submenu_link_colour\";s:7:\"#ffffff\";s:42:\"single_menu_item_submenu_link_colour_hover\";s:7:\"#ffffff\";s:42:\"single_menu_item_submenu_background_colour\";s:7:\"#ffffff\";s:48:\"single_menu_item_submenu_background_colour_hover\";s:7:\"#ffffff\";s:19:\"header_bar_logo_alt\";s:0:\"\";s:11:\"admin_theme\";s:5:\"light\";s:18:\"menu_title_padding\";a:4:{s:4:\"left\";s:2:\"5%\";s:3:\"top\";s:3:\"0px\";s:5:\"right\";s:2:\"5%\";s:6:\"bottom\";s:3:\"0px\";}}'),
(91, 10, '_yoast_wpseo_title', '%%sitename%%'),
(92, 10, '_yoast_wpseo_content_score', '60'),
(93, 10, '_yoast_wpseo_estimated-reading-time-minutes', ''),
(94, 31, '_yoast_wpseo_content_score', '90'),
(95, 31, '_yoast_wpseo_estimated-reading-time-minutes', '1'),
(106, 107, '_wp_attached_file', 'willow-spring-vineyards-logo.png'),
(107, 107, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:164;s:6:\"height\";i:245;s:4:\"file\";s:32:\"willow-spring-vineyards-logo.png\";s:8:\"filesize\";i:23828;s:5:\"sizes\";a:1:{s:17:\"excerpt-thumbnail\";a:5:{s:4:\"file\";s:40:\"willow-spring-vineyards-logo-164x140.png\";s:5:\"width\";i:164;s:6:\"height\";i:140;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:17631;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(108, 108, '_wp_attached_file', 'favicon.png'),
(109, 108, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:32;s:6:\"height\";i:32;s:4:\"file\";s:11:\"favicon.png\";s:8:\"filesize\";i:1795;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(110, 109, '_wp_attached_file', 'banner-home.jpg'),
(111, 109, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2000;s:6:\"height\";i:806;s:4:\"file\";s:15:\"banner-home.jpg\";s:8:\"filesize\";i:362903;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:23:\"banner-home-600x242.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:242;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:45499;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:23:\"banner-home-500x350.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:51161;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:23:\"banner-home-768x310.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:310;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:69349;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:24:\"banner-home-1536x619.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:619;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:224334;}s:14:\"post-thumbnail\";a:5:{s:4:\"file\";s:23:\"banner-home-660x266.jpg\";s:5:\"width\";i:660;s:6:\"height\";i:266;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:53638;}s:17:\"excerpt-thumbnail\";a:5:{s:4:\"file\";s:23:\"banner-home-200x140.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:140;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:11077;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(112, 110, '_wp_attached_file', 'element-barn.png'),
(113, 110, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:716;s:6:\"height\";i:488;s:4:\"file\";s:16:\"element-barn.png\";s:8:\"filesize\";i:604864;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:24:\"element-barn-600x409.png\";s:5:\"width\";i:600;s:6:\"height\";i:409;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:361262;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:24:\"element-barn-500x350.png\";s:5:\"width\";i:500;s:6:\"height\";i:350;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:272237;}s:14:\"post-thumbnail\";a:5:{s:4:\"file\";s:24:\"element-barn-660x450.png\";s:5:\"width\";i:660;s:6:\"height\";i:450;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:427860;}s:17:\"excerpt-thumbnail\";a:5:{s:4:\"file\";s:24:\"element-barn-200x140.png\";s:5:\"width\";i:200;s:6:\"height\";i:140;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:48328;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(116, 112, '_wp_attached_file', 'ico-clock.png'),
(117, 112, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:26;s:6:\"height\";i:26;s:4:\"file\";s:13:\"ico-clock.png\";s:8:\"filesize\";i:1382;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(118, 113, '_wp_attached_file', 'bg-welcome.jpg'),
(119, 113, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2000;s:6:\"height\";i:697;s:4:\"file\";s:14:\"bg-welcome.jpg\";s:8:\"filesize\";i:24409;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:22:\"bg-welcome-600x209.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:209;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:4875;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:22:\"bg-welcome-500x350.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:4393;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:22:\"bg-welcome-768x268.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:268;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6586;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:23:\"bg-welcome-1536x535.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:535;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:17519;}s:14:\"post-thumbnail\";a:5:{s:4:\"file\";s:22:\"bg-welcome-660x230.jpg\";s:5:\"width\";i:660;s:6:\"height\";i:230;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5375;}s:17:\"excerpt-thumbnail\";a:5:{s:4:\"file\";s:22:\"bg-welcome-200x140.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:140;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:1880;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(120, 114, '_wp_attached_file', 'element-owners.png'),
(121, 114, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:591;s:6:\"height\";i:485;s:4:\"file\";s:18:\"element-owners.png\";s:8:\"filesize\";i:412085;s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:26:\"element-owners-500x350.png\";s:5:\"width\";i:500;s:6:\"height\";i:350;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:225817;}s:6:\"awb_sm\";a:5:{s:4:\"file\";s:26:\"element-owners-500x410.png\";s:5:\"width\";i:500;s:6:\"height\";i:410;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:252804;}s:17:\"excerpt-thumbnail\";a:5:{s:4:\"file\";s:26:\"element-owners-200x140.png\";s:5:\"width\";i:200;s:6:\"height\";i:140;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:42169;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(122, 115, '_wp_attached_file', 'bg-owners.jpg'),
(123, 115, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1307;s:6:\"height\";i:632;s:4:\"file\";s:13:\"bg-owners.jpg\";s:8:\"filesize\";i:40377;s:5:\"sizes\";a:8:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"bg-owners-600x290.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:290;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:13811;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"bg-owners-500x350.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:12787;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:21:\"bg-owners-768x371.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:371;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:19769;}s:6:\"awb_sm\";a:5:{s:4:\"file\";s:21:\"bg-owners-500x242.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:242;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:10654;}s:6:\"awb_md\";a:5:{s:4:\"file\";s:21:\"bg-owners-800x387.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:387;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:21099;}s:6:\"awb_lg\";a:5:{s:4:\"file\";s:22:\"bg-owners-1280x619.jpg\";s:5:\"width\";i:1280;s:6:\"height\";i:619;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:42685;}s:14:\"post-thumbnail\";a:5:{s:4:\"file\";s:21:\"bg-owners-660x319.jpg\";s:5:\"width\";i:660;s:6:\"height\";i:319;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:15754;}s:17:\"excerpt-thumbnail\";a:5:{s:4:\"file\";s:21:\"bg-owners-200x140.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:140;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:3984;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(124, 116, '_wp_attached_file', 'thumb-weddings.jpg'),
(125, 116, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:666;s:6:\"height\";i:743;s:4:\"file\";s:18:\"thumb-weddings.jpg\";s:8:\"filesize\";i:128929;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:26:\"thumb-weddings-448x500.jpg\";s:5:\"width\";i:448;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:65116;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:26:\"thumb-weddings-500x350.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:50564;}s:6:\"awb_sm\";a:5:{s:4:\"file\";s:26:\"thumb-weddings-500x558.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:558;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:78356;}s:14:\"post-thumbnail\";a:5:{s:4:\"file\";s:26:\"thumb-weddings-660x736.jpg\";s:5:\"width\";i:660;s:6:\"height\";i:736;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:121449;}s:17:\"excerpt-thumbnail\";a:5:{s:4:\"file\";s:26:\"thumb-weddings-200x140.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:140;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:11197;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(126, 117, '_wp_attached_file', 'thumb-events.jpg'),
(127, 117, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:666;s:6:\"height\";i:743;s:4:\"file\";s:16:\"thumb-events.jpg\";s:8:\"filesize\";i:104797;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:24:\"thumb-events-448x500.jpg\";s:5:\"width\";i:448;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:54842;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:24:\"thumb-events-500x350.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:46399;}s:6:\"awb_sm\";a:5:{s:4:\"file\";s:24:\"thumb-events-500x558.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:558;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:66153;}s:14:\"post-thumbnail\";a:5:{s:4:\"file\";s:24:\"thumb-events-660x736.jpg\";s:5:\"width\";i:660;s:6:\"height\";i:736;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:102978;}s:17:\"excerpt-thumbnail\";a:5:{s:4:\"file\";s:24:\"thumb-events-200x140.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:140;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:10245;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(128, 118, '_wp_attached_file', 'thumb-wines.jpg'),
(129, 118, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:666;s:6:\"height\";i:743;s:4:\"file\";s:15:\"thumb-wines.jpg\";s:8:\"filesize\";i:64855;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:23:\"thumb-wines-448x500.jpg\";s:5:\"width\";i:448;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:37919;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:23:\"thumb-wines-500x350.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:31333;}s:6:\"awb_sm\";a:5:{s:4:\"file\";s:23:\"thumb-wines-500x558.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:558;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:44747;}s:14:\"post-thumbnail\";a:5:{s:4:\"file\";s:23:\"thumb-wines-660x736.jpg\";s:5:\"width\";i:660;s:6:\"height\";i:736;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:66211;}s:17:\"excerpt-thumbnail\";a:5:{s:4:\"file\";s:23:\"thumb-wines-200x140.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:140;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:8270;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(130, 119, '_wp_attached_file', 'ico-wedding-glass.svg'),
(131, 119, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:111;s:6:\"height\";i:111;s:4:\"file\";s:21:\"ico-wedding-glass.svg\";s:5:\"sizes\";a:12:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"500\";s:6:\"height\";d:500;s:4:\"crop\";b:0;s:4:\"file\";s:21:\"ico-wedding-glass.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"600\";s:6:\"height\";d:600;s:4:\"crop\";b:0;s:4:\"file\";s:21:\"ico-wedding-glass.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";d:768;s:4:\"crop\";b:0;s:4:\"file\";s:21:\"ico-wedding-glass.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:1:\"0\";s:6:\"height\";d:0;s:4:\"crop\";b:0;s:4:\"file\";s:21:\"ico-wedding-glass.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";b:0;s:6:\"height\";d:0;s:4:\"crop\";b:0;s:4:\"file\";s:21:\"ico-wedding-glass.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";b:0;s:6:\"height\";d:0;s:4:\"crop\";b:0;s:4:\"file\";s:21:\"ico-wedding-glass.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"awb_sm\";a:5:{s:5:\"width\";b:0;s:6:\"height\";d:0;s:4:\"crop\";b:0;s:4:\"file\";s:21:\"ico-wedding-glass.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"awb_md\";a:5:{s:5:\"width\";b:0;s:6:\"height\";d:0;s:4:\"crop\";b:0;s:4:\"file\";s:21:\"ico-wedding-glass.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"awb_lg\";a:5:{s:5:\"width\";b:0;s:6:\"height\";d:0;s:4:\"crop\";b:0;s:4:\"file\";s:21:\"ico-wedding-glass.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"awb_xl\";a:5:{s:5:\"width\";b:0;s:6:\"height\";d:0;s:4:\"crop\";b:0;s:4:\"file\";s:21:\"ico-wedding-glass.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:14:\"post-thumbnail\";a:5:{s:5:\"width\";b:0;s:6:\"height\";d:0;s:4:\"crop\";b:0;s:4:\"file\";s:21:\"ico-wedding-glass.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:17:\"excerpt-thumbnail\";a:5:{s:5:\"width\";b:0;s:6:\"height\";d:0;s:4:\"crop\";b:0;s:4:\"file\";s:21:\"ico-wedding-glass.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(132, 120, '_wp_attached_file', 'ico-event-balloons.svg'),
(133, 120, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:85;s:6:\"height\";i:103;s:4:\"file\";s:22:\"ico-event-balloons.svg\";s:5:\"sizes\";a:12:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"500\";s:6:\"height\";d:605;s:4:\"crop\";b:0;s:4:\"file\";s:22:\"ico-event-balloons.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"600\";s:6:\"height\";d:726;s:4:\"crop\";b:0;s:4:\"file\";s:22:\"ico-event-balloons.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";d:929;s:4:\"crop\";b:0;s:4:\"file\";s:22:\"ico-event-balloons.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:1:\"0\";s:6:\"height\";d:0;s:4:\"crop\";b:0;s:4:\"file\";s:22:\"ico-event-balloons.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";b:0;s:6:\"height\";d:0;s:4:\"crop\";b:0;s:4:\"file\";s:22:\"ico-event-balloons.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";b:0;s:6:\"height\";d:0;s:4:\"crop\";b:0;s:4:\"file\";s:22:\"ico-event-balloons.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"awb_sm\";a:5:{s:5:\"width\";b:0;s:6:\"height\";d:0;s:4:\"crop\";b:0;s:4:\"file\";s:22:\"ico-event-balloons.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"awb_md\";a:5:{s:5:\"width\";b:0;s:6:\"height\";d:0;s:4:\"crop\";b:0;s:4:\"file\";s:22:\"ico-event-balloons.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"awb_lg\";a:5:{s:5:\"width\";b:0;s:6:\"height\";d:0;s:4:\"crop\";b:0;s:4:\"file\";s:22:\"ico-event-balloons.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"awb_xl\";a:5:{s:5:\"width\";b:0;s:6:\"height\";d:0;s:4:\"crop\";b:0;s:4:\"file\";s:22:\"ico-event-balloons.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:14:\"post-thumbnail\";a:5:{s:5:\"width\";b:0;s:6:\"height\";d:0;s:4:\"crop\";b:0;s:4:\"file\";s:22:\"ico-event-balloons.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:17:\"excerpt-thumbnail\";a:5:{s:5:\"width\";b:0;s:6:\"height\";d:0;s:4:\"crop\";b:0;s:4:\"file\";s:22:\"ico-event-balloons.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(134, 121, '_wp_attached_file', 'ico-wines.svg'),
(135, 121, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:130;s:6:\"height\";i:129;s:4:\"file\";s:13:\"ico-wines.svg\";s:5:\"sizes\";a:12:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"500\";s:6:\"height\";d:495;s:4:\"crop\";b:0;s:4:\"file\";s:13:\"ico-wines.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"600\";s:6:\"height\";d:594;s:4:\"crop\";b:0;s:4:\"file\";s:13:\"ico-wines.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";d:760;s:4:\"crop\";b:0;s:4:\"file\";s:13:\"ico-wines.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:1:\"0\";s:6:\"height\";d:0;s:4:\"crop\";b:0;s:4:\"file\";s:13:\"ico-wines.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";b:0;s:6:\"height\";d:0;s:4:\"crop\";b:0;s:4:\"file\";s:13:\"ico-wines.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";b:0;s:6:\"height\";d:0;s:4:\"crop\";b:0;s:4:\"file\";s:13:\"ico-wines.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"awb_sm\";a:5:{s:5:\"width\";b:0;s:6:\"height\";d:0;s:4:\"crop\";b:0;s:4:\"file\";s:13:\"ico-wines.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"awb_md\";a:5:{s:5:\"width\";b:0;s:6:\"height\";d:0;s:4:\"crop\";b:0;s:4:\"file\";s:13:\"ico-wines.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"awb_lg\";a:5:{s:5:\"width\";b:0;s:6:\"height\";d:0;s:4:\"crop\";b:0;s:4:\"file\";s:13:\"ico-wines.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"awb_xl\";a:5:{s:5:\"width\";b:0;s:6:\"height\";d:0;s:4:\"crop\";b:0;s:4:\"file\";s:13:\"ico-wines.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:14:\"post-thumbnail\";a:5:{s:5:\"width\";b:0;s:6:\"height\";d:0;s:4:\"crop\";b:0;s:4:\"file\";s:13:\"ico-wines.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:17:\"excerpt-thumbnail\";a:5:{s:5:\"width\";b:0;s:6:\"height\";d:0;s:4:\"crop\";b:0;s:4:\"file\";s:13:\"ico-wines.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(140, 124, '_wp_attached_file', 'ico-loc.svg'),
(141, 124, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:38;s:6:\"height\";i:58;s:4:\"file\";s:11:\"ico-loc.svg\";s:5:\"sizes\";a:12:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"500\";s:6:\"height\";d:765;s:4:\"crop\";b:0;s:4:\"file\";s:11:\"ico-loc.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"600\";s:6:\"height\";d:918;s:4:\"crop\";b:0;s:4:\"file\";s:11:\"ico-loc.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";d:1175;s:4:\"crop\";b:0;s:4:\"file\";s:11:\"ico-loc.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:1:\"0\";s:6:\"height\";d:0;s:4:\"crop\";b:0;s:4:\"file\";s:11:\"ico-loc.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";b:0;s:6:\"height\";d:0;s:4:\"crop\";b:0;s:4:\"file\";s:11:\"ico-loc.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";b:0;s:6:\"height\";d:0;s:4:\"crop\";b:0;s:4:\"file\";s:11:\"ico-loc.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"awb_sm\";a:5:{s:5:\"width\";b:0;s:6:\"height\";d:0;s:4:\"crop\";b:0;s:4:\"file\";s:11:\"ico-loc.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"awb_md\";a:5:{s:5:\"width\";b:0;s:6:\"height\";d:0;s:4:\"crop\";b:0;s:4:\"file\";s:11:\"ico-loc.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"awb_lg\";a:5:{s:5:\"width\";b:0;s:6:\"height\";d:0;s:4:\"crop\";b:0;s:4:\"file\";s:11:\"ico-loc.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"awb_xl\";a:5:{s:5:\"width\";b:0;s:6:\"height\";d:0;s:4:\"crop\";b:0;s:4:\"file\";s:11:\"ico-loc.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:14:\"post-thumbnail\";a:5:{s:5:\"width\";b:0;s:6:\"height\";d:0;s:4:\"crop\";b:0;s:4:\"file\";s:11:\"ico-loc.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:17:\"excerpt-thumbnail\";a:5:{s:5:\"width\";b:0;s:6:\"height\";d:0;s:4:\"crop\";b:0;s:4:\"file\";s:11:\"ico-loc.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(142, 125, '_wp_attached_file', 'ico-email.svg'),
(143, 125, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:57;s:6:\"height\";i:40;s:4:\"file\";s:13:\"ico-email.svg\";s:5:\"sizes\";a:12:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"500\";s:6:\"height\";d:350;s:4:\"crop\";b:0;s:4:\"file\";s:13:\"ico-email.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"600\";s:6:\"height\";d:420;s:4:\"crop\";b:0;s:4:\"file\";s:13:\"ico-email.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";d:537;s:4:\"crop\";b:0;s:4:\"file\";s:13:\"ico-email.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:1:\"0\";s:6:\"height\";d:0;s:4:\"crop\";b:0;s:4:\"file\";s:13:\"ico-email.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";b:0;s:6:\"height\";d:0;s:4:\"crop\";b:0;s:4:\"file\";s:13:\"ico-email.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";b:0;s:6:\"height\";d:0;s:4:\"crop\";b:0;s:4:\"file\";s:13:\"ico-email.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"awb_sm\";a:5:{s:5:\"width\";b:0;s:6:\"height\";d:0;s:4:\"crop\";b:0;s:4:\"file\";s:13:\"ico-email.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"awb_md\";a:5:{s:5:\"width\";b:0;s:6:\"height\";d:0;s:4:\"crop\";b:0;s:4:\"file\";s:13:\"ico-email.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"awb_lg\";a:5:{s:5:\"width\";b:0;s:6:\"height\";d:0;s:4:\"crop\";b:0;s:4:\"file\";s:13:\"ico-email.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"awb_xl\";a:5:{s:5:\"width\";b:0;s:6:\"height\";d:0;s:4:\"crop\";b:0;s:4:\"file\";s:13:\"ico-email.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:14:\"post-thumbnail\";a:5:{s:5:\"width\";b:0;s:6:\"height\";d:0;s:4:\"crop\";b:0;s:4:\"file\";s:13:\"ico-email.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:17:\"excerpt-thumbnail\";a:5:{s:5:\"width\";b:0;s:6:\"height\";d:0;s:4:\"crop\";b:0;s:4:\"file\";s:13:\"ico-email.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(151, 131, '_edit_lock', '1672927273:4'),
(152, 131, '_edit_last', '4'),
(153, 131, '_wp_page_template', 'page-templates/full-width.php'),
(154, 131, '_yoast_wpseo_content_score', '90'),
(155, 131, '_yoast_wpseo_estimated-reading-time-minutes', '1'),
(156, 131, '_yoast_wpseo_wordproof_timestamp', ''),
(157, 131, 'inline_featured_image', '0'),
(158, 133, '_wp_attached_file', 'Screenshot_4.png'),
(159, 133, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:515;s:6:\"height\";i:268;s:4:\"file\";s:16:\"Screenshot_4.png\";s:8:\"filesize\";i:230887;s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:24:\"Screenshot_4-500x268.png\";s:5:\"width\";i:500;s:6:\"height\";i:268;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:162463;}s:6:\"awb_sm\";a:5:{s:4:\"file\";s:24:\"Screenshot_4-500x260.png\";s:5:\"width\";i:500;s:6:\"height\";i:260;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:157375;}s:17:\"excerpt-thumbnail\";a:5:{s:4:\"file\";s:24:\"Screenshot_4-200x140.png\";s:5:\"width\";i:200;s:6:\"height\";i:140;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:42202;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(160, 27, '_thumbnail_id', '133'),
(163, 27, 'inline_featured_image', '0'),
(164, 27, '_yoast_wpseo_content_score', '90'),
(165, 27, '_yoast_wpseo_estimated-reading-time-minutes', '1'),
(166, 27, '_yoast_wpseo_wordproof_timestamp', ''),
(167, 134, '_wp_attached_file', 'Screenshot_5.png'),
(168, 134, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:511;s:6:\"height\";i:264;s:4:\"file\";s:16:\"Screenshot_5.png\";s:8:\"filesize\";i:390934;s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:24:\"Screenshot_5-500x264.png\";s:5:\"width\";i:500;s:6:\"height\";i:264;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:335349;}s:6:\"awb_sm\";a:5:{s:4:\"file\";s:24:\"Screenshot_5-500x258.png\";s:5:\"width\";i:500;s:6:\"height\";i:258;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:309640;}s:17:\"excerpt-thumbnail\";a:5:{s:4:\"file\";s:24:\"Screenshot_5-200x140.png\";s:5:\"width\";i:200;s:6:\"height\";i:140;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:72244;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(169, 29, '_thumbnail_id', '134'),
(172, 29, 'inline_featured_image', '0'),
(173, 29, '_yoast_wpseo_content_score', '90'),
(174, 29, '_yoast_wpseo_estimated-reading-time-minutes', '1'),
(175, 29, '_yoast_wpseo_wordproof_timestamp', ''),
(176, 31, '_thumbnail_id', '134'),
(179, 31, 'inline_featured_image', '0'),
(180, 31, '_yoast_wpseo_wordproof_timestamp', ''),
(181, 135, '_edit_lock', '1672859643:4'),
(182, 135, '_edit_last', '4'),
(183, 135, '_thumbnail_id', '133'),
(186, 135, '_yoast_wpseo_content_score', '90'),
(187, 135, '_yoast_wpseo_estimated-reading-time-minutes', '1'),
(188, 135, '_yoast_wpseo_wordproof_timestamp', ''),
(189, 135, 'inline_featured_image', '0'),
(218, 143, '_edit_lock', '1673041564:1'),
(219, 143, '_edit_last', '1'),
(220, 143, '_wp_page_template', 'page-templates/full-width.php'),
(221, 143, '_yoast_wpseo_estimated-reading-time-minutes', '0'),
(222, 143, '_yoast_wpseo_wordproof_timestamp', ''),
(223, 143, 'inline_featured_image', '0'),
(226, 147, '_edit_lock', '1673036459:4'),
(227, 147, '_edit_last', '4'),
(228, 143, 'section_1_title', 'Willow Spring Vineyards'),
(229, 143, '_section_1_title', 'field_63b82ce986654');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(230, 143, 'section_1_text', 'At Willow Spring Vineyards community and quality are our priorities. As an emerging family winery our commitment is deeply rooted to the people, grapes, and environment that make up the land we call home. We welcome all of you to stop by and be a part of this experience. A walk through the vineyards will no doubt find us tending the vines or harvesting the grapes among family and friends. So, come and taste our wine – be a part of the Willow Spring Vineyards story.'),
(231, 143, '_section_1_text', 'field_63b82d0386655'),
(232, 143, 'section_1', ''),
(233, 143, '_section_1', 'field_63b82cd586653'),
(234, 143, 'section_2_title', 'WILLOW SPRING VINEYARDS'),
(235, 143, '_section_2_title', 'field_63b82d2286657'),
(236, 143, 'section_2_left_text', 'At Willow Spring Vineyards community and quality are our priorities. As an emerging family winery our commitment is deeply rooted to the people, grapes, and environment that make up the land we call home. We welcome all of you to stop by and be a part of this experience. A walk through the vineyards will no doubt find us tending the vines or harvesting the grapes among family and friends. So, come and taste our wine – be a part of the Willow Spring Vineyards story.'),
(237, 143, '_section_2_left_text', 'field_63b82d3186658'),
(238, 143, 'section_2_right_text', 'At Willow Spring Vineyards community and quality are our priorities. As an emerging family winery our commitment is deeply rooted to the people, grapes, and environment that make up the land we call home. We welcome all of you to stop by and be a part of this experience. A walk through the vineyards will no doubt find us tending the vines or harvesting the grapes among family and friends. So, come and taste our wine – be a part of the Willow Spring Vineyards story.'),
(239, 143, '_section_2_right_text', 'field_63b82d3b86659'),
(240, 143, 'section_2', ''),
(241, 143, '_section_2', 'field_63b82d0c86656'),
(242, 143, 'section_3_text', 'At Willow Spring Vineyards community and quality are our priorities. As an emerging family winery our commitment is deeply rooted to the people, grapes, and environment that make up the land we call home. We welcome all of you to stop by and be a part of this experience. A walk through the vineyards will no doubt find us tending the vines or harvesting the grapes among family and friends. So, come and taste our wine – be a part of the Willow Spring Vineyards story.'),
(243, 143, '_section_3_text', 'field_63b82ee48665b'),
(244, 143, 'section_3_list', '4'),
(245, 143, '_section_3_list', 'field_63b82eee8665c'),
(246, 143, 'section_3_image', '184'),
(247, 143, '_section_3_image', 'field_63b830898665e'),
(248, 143, 'section_3', ''),
(249, 143, '_section_3', 'field_63b82e358665a'),
(250, 143, 'section_4_title', 'WILLOW SPRING VINEYARDS'),
(251, 143, '_section_4_title', 'field_63b830fe86663'),
(252, 143, 'section_4_image1', '185'),
(253, 143, '_section_4_image1', 'field_63b830bc86660'),
(254, 143, 'section_4_image2', '186'),
(255, 143, '_section_4_image2', 'field_63b830cd86661'),
(256, 143, 'section_4_image3', '187'),
(257, 143, '_section_4_image3', 'field_63b830db86662'),
(258, 143, 'section_4', ''),
(259, 143, '_section_4', 'field_63b8309e8665f'),
(260, 143, 'section_5_title', 'WILLOW SPRING VINEYARDS'),
(261, 143, '_section_5_title', 'field_63b8315686665'),
(262, 143, 'section_5_text', 'At Willow Spring Vineyards community and quality are our priorities. As an emerging family winery our commitment is deeply rooted to the people, grapes, and environment that make up the land we call home. We welcome all of you to stop by and be a part of this experience. A walk through the vineyards will no doubt find us tending the vines or harvesting the grapes among family and friends. So, come and taste our wine – be a part of the Willow Spring Vineyards story.'),
(263, 143, '_section_5_text', 'field_63b8316086666'),
(264, 143, 'section_5_background_image', '188'),
(265, 143, '_section_5_background_image', 'field_63b8316586667'),
(266, 143, 'section_5', ''),
(267, 143, '_section_5', 'field_63b8311586664'),
(268, 143, 'section_6_title', 'WILLOW SPRING VINEYARDS'),
(269, 143, '_section_6_title', 'field_63b8334686669'),
(270, 143, 'section_6_first_section_title', 'Willow Spring Vineyards'),
(271, 143, '_section_6_first_section_title', 'field_63b833d18666b'),
(272, 143, 'section_6_first_section_text', 'At Willow Spring Vineyards community and quality are our priorities. As an emerging family winery our commitment is deeply rooted to the people, grapes, and environment that make up the land we call home. We welcome all of you to stop by and be a part of this experience.'),
(273, 143, '_section_6_first_section_text', 'field_63b833da8666c'),
(274, 143, 'section_6_first_section', ''),
(275, 143, '_section_6_first_section', 'field_63b8338b8666a'),
(276, 143, 'section_6_second_section_title', 'Willow Spring Vineyards'),
(277, 143, '_section_6_second_section_title', 'field_63b834738666e'),
(278, 143, 'section_6_second_section_text', 'At Willow Spring Vineyards community and quality are our priorities. As an emerging family winery our commitment is deeply rooted to the people, grapes, and environment that make up the land we call home. We welcome all of you to stop by and be a part of this experience.'),
(279, 143, '_section_6_second_section_text', 'field_63b834738666f'),
(280, 143, 'section_6_second_section', ''),
(281, 143, '_section_6_second_section', 'field_63b834738666d'),
(282, 143, 'section_6_third_section_title', 'Willow Spring Vineyards'),
(283, 143, '_section_6_third_section_title', 'field_63b834a186671'),
(284, 143, 'section_6_third_section_text', 'At Willow Spring Vineyards community and quality are our priorities. As an emerging family winery our commitment is deeply rooted to the people, grapes, and environment that make up the land we call home. We welcome all of you to stop by and be a part of this experience.'),
(285, 143, '_section_6_third_section_text', 'field_63b834a186672'),
(286, 143, 'section_6_third_section', ''),
(287, 143, '_section_6_third_section', 'field_63b834a186670'),
(288, 143, 'section_6', ''),
(289, 143, '_section_6', 'field_63b8318486668'),
(290, 143, 'section_7_title', 'WILLOW SPRING VINEYARDS'),
(291, 143, '_section_7_title', 'field_63b8352286674'),
(292, 143, 'section_7_button_text', 'READ MORE'),
(293, 143, '_section_7_button_text', 'field_63b8353786675'),
(294, 143, 'section_7', ''),
(295, 143, '_section_7', 'field_63b834d286673'),
(296, 183, 'section_1_title', 'Willow Spring Vineyards'),
(297, 183, '_section_1_title', 'field_63b82ce986654'),
(298, 183, 'section_1_text', ''),
(299, 183, '_section_1_text', 'field_63b82d0386655'),
(300, 183, 'section_1', ''),
(301, 183, '_section_1', 'field_63b82cd586653'),
(302, 183, 'section_2_title', ''),
(303, 183, '_section_2_title', 'field_63b82d2286657'),
(304, 183, 'section_2_left_text', ''),
(305, 183, '_section_2_left_text', 'field_63b82d3186658'),
(306, 183, 'section_2_right_text', ''),
(307, 183, '_section_2_right_text', 'field_63b82d3b86659'),
(308, 183, 'section_2', ''),
(309, 183, '_section_2', 'field_63b82d0c86656'),
(310, 183, 'section_3_text', ''),
(311, 183, '_section_3_text', 'field_63b82ee48665b'),
(312, 183, 'section_3_list', ''),
(313, 183, '_section_3_list', 'field_63b82eee8665c'),
(314, 183, 'section_3_image', ''),
(315, 183, '_section_3_image', 'field_63b830898665e'),
(316, 183, 'section_3', ''),
(317, 183, '_section_3', 'field_63b82e358665a'),
(318, 183, 'section_4_title', ''),
(319, 183, '_section_4_title', 'field_63b830fe86663'),
(320, 183, 'section_4_image1', ''),
(321, 183, '_section_4_image1', 'field_63b830bc86660'),
(322, 183, 'section_4_image2', ''),
(323, 183, '_section_4_image2', 'field_63b830cd86661'),
(324, 183, 'section_4_image3', ''),
(325, 183, '_section_4_image3', 'field_63b830db86662'),
(326, 183, 'section_4', ''),
(327, 183, '_section_4', 'field_63b8309e8665f'),
(328, 183, 'section_5_title', ''),
(329, 183, '_section_5_title', 'field_63b8315686665'),
(330, 183, 'section_5_text', ''),
(331, 183, '_section_5_text', 'field_63b8316086666'),
(332, 183, 'section_5_background_image', ''),
(333, 183, '_section_5_background_image', 'field_63b8316586667'),
(334, 183, 'section_5', ''),
(335, 183, '_section_5', 'field_63b8311586664'),
(336, 183, 'section_6_title', ''),
(337, 183, '_section_6_title', 'field_63b8334686669'),
(338, 183, 'section_6_first_section_title', ''),
(339, 183, '_section_6_first_section_title', 'field_63b833d18666b'),
(340, 183, 'section_6_first_section_text', ''),
(341, 183, '_section_6_first_section_text', 'field_63b833da8666c'),
(342, 183, 'section_6_first_section', ''),
(343, 183, '_section_6_first_section', 'field_63b8338b8666a'),
(344, 183, 'section_6_second_section_title', ''),
(345, 183, '_section_6_second_section_title', 'field_63b834738666e'),
(346, 183, 'section_6_second_section_text', ''),
(347, 183, '_section_6_second_section_text', 'field_63b834738666f'),
(348, 183, 'section_6_second_section', ''),
(349, 183, '_section_6_second_section', 'field_63b834738666d'),
(350, 183, 'section_6_third_section_title', ''),
(351, 183, '_section_6_third_section_title', 'field_63b834a186671'),
(352, 183, 'section_6_third_section_text', ''),
(353, 183, '_section_6_third_section_text', 'field_63b834a186672'),
(354, 183, 'section_6_third_section', ''),
(355, 183, '_section_6_third_section', 'field_63b834a186670'),
(356, 183, 'section_6', ''),
(357, 183, '_section_6', 'field_63b8318486668'),
(358, 183, 'section_7_title', ''),
(359, 183, '_section_7_title', 'field_63b8352286674'),
(360, 183, 'section_7_button_text', ''),
(361, 183, '_section_7_button_text', 'field_63b8353786675'),
(362, 183, 'section_7', ''),
(363, 183, '_section_7', 'field_63b834d286673'),
(364, 184, '_wp_attached_file', 'Screenshot_8.png'),
(365, 184, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:606;s:6:\"height\";i:535;s:4:\"file\";s:16:\"Screenshot_8.png\";s:8:\"filesize\";i:794197;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:24:\"Screenshot_8-566x500.png\";s:5:\"width\";i:566;s:6:\"height\";i:500;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:479710;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:24:\"Screenshot_8-500x350.png\";s:5:\"width\";i:500;s:6:\"height\";i:350;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:319237;}s:6:\"awb_sm\";a:5:{s:4:\"file\";s:24:\"Screenshot_8-500x441.png\";s:5:\"width\";i:500;s:6:\"height\";i:441;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:388422;}s:17:\"excerpt-thumbnail\";a:5:{s:4:\"file\";s:24:\"Screenshot_8-200x140.png\";s:5:\"width\";i:200;s:6:\"height\";i:140;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:58502;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(366, 185, '_wp_attached_file', 'Screenshot_10.png'),
(367, 185, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:603;s:6:\"height\";i:357;s:4:\"file\";s:17:\"Screenshot_10.png\";s:8:\"filesize\";i:483769;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:25:\"Screenshot_10-600x355.png\";s:5:\"width\";i:600;s:6:\"height\";i:355;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:333544;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:25:\"Screenshot_10-500x350.png\";s:5:\"width\";i:500;s:6:\"height\";i:350;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:271777;}s:6:\"awb_sm\";a:5:{s:4:\"file\";s:25:\"Screenshot_10-500x296.png\";s:5:\"width\";i:500;s:6:\"height\";i:296;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:241624;}s:17:\"excerpt-thumbnail\";a:5:{s:4:\"file\";s:25:\"Screenshot_10-200x140.png\";s:5:\"width\";i:200;s:6:\"height\";i:140;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:50351;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(368, 186, '_wp_attached_file', 'Screenshot_11.png'),
(369, 186, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:606;s:6:\"height\";i:356;s:4:\"file\";s:17:\"Screenshot_11.png\";s:8:\"filesize\";i:476737;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:25:\"Screenshot_11-600x352.png\";s:5:\"width\";i:600;s:6:\"height\";i:352;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:314826;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:25:\"Screenshot_11-500x350.png\";s:5:\"width\";i:500;s:6:\"height\";i:350;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:260179;}s:6:\"awb_sm\";a:5:{s:4:\"file\";s:25:\"Screenshot_11-500x294.png\";s:5:\"width\";i:500;s:6:\"height\";i:294;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:232483;}s:17:\"excerpt-thumbnail\";a:5:{s:4:\"file\";s:25:\"Screenshot_11-200x140.png\";s:5:\"width\";i:200;s:6:\"height\";i:140;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:50504;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(370, 187, '_wp_attached_file', 'Screenshot_12.png'),
(371, 187, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1285;s:6:\"height\";i:429;s:4:\"file\";s:17:\"Screenshot_12.png\";s:8:\"filesize\";i:1554669;s:5:\"sizes\";a:8:{s:6:\"medium\";a:5:{s:4:\"file\";s:25:\"Screenshot_12-600x200.png\";s:5:\"width\";i:600;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:238017;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:25:\"Screenshot_12-500x350.png\";s:5:\"width\";i:500;s:6:\"height\";i:350;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:319945;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:25:\"Screenshot_12-768x256.png\";s:5:\"width\";i:768;s:6:\"height\";i:256;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:370648;}s:6:\"awb_sm\";a:5:{s:4:\"file\";s:25:\"Screenshot_12-500x167.png\";s:5:\"width\";i:500;s:6:\"height\";i:167;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:171084;}s:6:\"awb_md\";a:5:{s:4:\"file\";s:25:\"Screenshot_12-800x267.png\";s:5:\"width\";i:800;s:6:\"height\";i:267;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:399049;}s:6:\"awb_lg\";a:5:{s:4:\"file\";s:26:\"Screenshot_12-1280x427.png\";s:5:\"width\";i:1280;s:6:\"height\";i:427;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:892655;}s:14:\"post-thumbnail\";a:5:{s:4:\"file\";s:25:\"Screenshot_12-660x220.png\";s:5:\"width\";i:660;s:6:\"height\";i:220;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:282921;}s:17:\"excerpt-thumbnail\";a:5:{s:4:\"file\";s:25:\"Screenshot_12-200x140.png\";s:5:\"width\";i:200;s:6:\"height\";i:140;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:61895;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(372, 188, '_wp_attached_file', 'back.png'),
(373, 188, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:611;s:4:\"file\";s:8:\"back.png\";s:8:\"filesize\";i:2200441;s:5:\"sizes\";a:9:{s:6:\"medium\";a:5:{s:4:\"file\";s:16:\"back-600x191.png\";s:5:\"width\";i:600;s:6:\"height\";i:191;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:235024;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:16:\"back-500x350.png\";s:5:\"width\";i:500;s:6:\"height\";i:350;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:358188;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:16:\"back-768x244.png\";s:5:\"width\";i:768;s:6:\"height\";i:244;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:382692;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:17:\"back-1536x489.png\";s:5:\"width\";i:1536;s:6:\"height\";i:489;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:1405486;}s:6:\"awb_sm\";a:5:{s:4:\"file\";s:16:\"back-500x159.png\";s:5:\"width\";i:500;s:6:\"height\";i:159;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:163845;}s:6:\"awb_md\";a:5:{s:4:\"file\";s:16:\"back-800x255.png\";s:5:\"width\";i:800;s:6:\"height\";i:255;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:416372;}s:6:\"awb_lg\";a:5:{s:4:\"file\";s:17:\"back-1280x407.png\";s:5:\"width\";i:1280;s:6:\"height\";i:407;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:1015148;}s:14:\"post-thumbnail\";a:5:{s:4:\"file\";s:16:\"back-660x210.png\";s:5:\"width\";i:660;s:6:\"height\";i:210;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:283601;}s:17:\"excerpt-thumbnail\";a:5:{s:4:\"file\";s:16:\"back-200x140.png\";s:5:\"width\";i:200;s:6:\"height\";i:140;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:60040;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(374, 143, 'section_3_list_0_text', 'At Willow Spring Vineyards community.'),
(375, 143, '_section_3_list_0_text', 'field_63b830718665d'),
(376, 143, 'section_3_list_1_text', 'At Willow Spring Vineyards community.'),
(377, 143, '_section_3_list_1_text', 'field_63b830718665d'),
(378, 143, 'section_3_list_2_text', 'At Willow Spring Vineyards community.'),
(379, 143, '_section_3_list_2_text', 'field_63b830718665d'),
(380, 143, 'section_3_list_3_text', 'At Willow Spring Vineyards community.'),
(381, 143, '_section_3_list_3_text', 'field_63b830718665d'),
(382, 189, 'section_1_title', 'Willow Spring Vineyards'),
(383, 189, '_section_1_title', 'field_63b82ce986654'),
(384, 189, 'section_1_text', 'At Willow Spring Vineyards community and quality are our priorities. As an emerging family winery our commitment is deeply rooted to the people, grapes, and environment that make up the land we call home. We welcome all of you to stop by and be a part of this experience. A walk through the vineyards will no doubt find us tending the vines or harvesting the grapes among family and friends. So, come and taste our wine – be a part of the Willow Spring Vineyards story.'),
(385, 189, '_section_1_text', 'field_63b82d0386655'),
(386, 189, 'section_1', ''),
(387, 189, '_section_1', 'field_63b82cd586653'),
(388, 189, 'section_2_title', 'WILLOW SPRING VINEYARDS'),
(389, 189, '_section_2_title', 'field_63b82d2286657'),
(390, 189, 'section_2_left_text', 'At Willow Spring Vineyards community and quality are our priorities. As an emerging family winery our commitment is deeply rooted to the people, grapes, and environment that make up the land we call home. We welcome all of you to stop by and be a part of this experience. A walk through the vineyards will no doubt find us tending the vines or harvesting the grapes among family and friends. So, come and taste our wine – be a part of the Willow Spring Vineyards story.'),
(391, 189, '_section_2_left_text', 'field_63b82d3186658'),
(392, 189, 'section_2_right_text', 'At Willow Spring Vineyards community and quality are our priorities. As an emerging family winery our commitment is deeply rooted to the people, grapes, and environment that make up the land we call home. We welcome all of you to stop by and be a part of this experience. A walk through the vineyards will no doubt find us tending the vines or harvesting the grapes among family and friends. So, come and taste our wine – be a part of the Willow Spring Vineyards story.'),
(393, 189, '_section_2_right_text', 'field_63b82d3b86659'),
(394, 189, 'section_2', ''),
(395, 189, '_section_2', 'field_63b82d0c86656'),
(396, 189, 'section_3_text', 'At Willow Spring Vineyards community and quality are our priorities. As an emerging family winery our commitment is deeply rooted to the people, grapes, and environment that make up the land we call home. We welcome all of you to stop by and be a part of this experience. A walk through the vineyards will no doubt find us tending the vines or harvesting the grapes among family and friends. So, come and taste our wine – be a part of the Willow Spring Vineyards story.'),
(397, 189, '_section_3_text', 'field_63b82ee48665b'),
(398, 189, 'section_3_list', '4'),
(399, 189, '_section_3_list', 'field_63b82eee8665c'),
(400, 189, 'section_3_image', '184'),
(401, 189, '_section_3_image', 'field_63b830898665e'),
(402, 189, 'section_3', ''),
(403, 189, '_section_3', 'field_63b82e358665a'),
(404, 189, 'section_4_title', 'WILLOW SPRING VINEYARDS'),
(405, 189, '_section_4_title', 'field_63b830fe86663'),
(406, 189, 'section_4_image1', '185'),
(407, 189, '_section_4_image1', 'field_63b830bc86660'),
(408, 189, 'section_4_image2', '186'),
(409, 189, '_section_4_image2', 'field_63b830cd86661'),
(410, 189, 'section_4_image3', '187'),
(411, 189, '_section_4_image3', 'field_63b830db86662'),
(412, 189, 'section_4', ''),
(413, 189, '_section_4', 'field_63b8309e8665f'),
(414, 189, 'section_5_title', 'WILLOW SPRING VINEYARDS'),
(415, 189, '_section_5_title', 'field_63b8315686665'),
(416, 189, 'section_5_text', 'At Willow Spring Vineyards community and quality are our priorities. As an emerging family winery our commitment is deeply rooted to the people, grapes, and environment that make up the land we call home. We welcome all of you to stop by and be a part of this experience. A walk through the vineyards will no doubt find us tending the vines or harvesting the grapes among family and friends. So, come and taste our wine – be a part of the Willow Spring Vineyards story.'),
(417, 189, '_section_5_text', 'field_63b8316086666'),
(418, 189, 'section_5_background_image', '188'),
(419, 189, '_section_5_background_image', 'field_63b8316586667'),
(420, 189, 'section_5', ''),
(421, 189, '_section_5', 'field_63b8311586664'),
(422, 189, 'section_6_title', 'WILLOW SPRING VINEYARDS'),
(423, 189, '_section_6_title', 'field_63b8334686669'),
(424, 189, 'section_6_first_section_title', 'Willow Spring Vineyards'),
(425, 189, '_section_6_first_section_title', 'field_63b833d18666b'),
(426, 189, 'section_6_first_section_text', 'At Willow Spring Vineyards community and quality are our priorities. As an emerging family winery our commitment is deeply rooted to the people, grapes, and environment that make up the land we call home. We welcome all of you to stop by and be a part of this experience.'),
(427, 189, '_section_6_first_section_text', 'field_63b833da8666c'),
(428, 189, 'section_6_first_section', ''),
(429, 189, '_section_6_first_section', 'field_63b8338b8666a'),
(430, 189, 'section_6_second_section_title', 'Willow Spring Vineyards'),
(431, 189, '_section_6_second_section_title', 'field_63b834738666e'),
(432, 189, 'section_6_second_section_text', 'At Willow Spring Vineyards community and quality are our priorities. As an emerging family winery our commitment is deeply rooted to the people, grapes, and environment that make up the land we call home. We welcome all of you to stop by and be a part of this experience.'),
(433, 189, '_section_6_second_section_text', 'field_63b834738666f'),
(434, 189, 'section_6_second_section', ''),
(435, 189, '_section_6_second_section', 'field_63b834738666d'),
(436, 189, 'section_6_third_section_title', 'Willow Spring Vineyards'),
(437, 189, '_section_6_third_section_title', 'field_63b834a186671'),
(438, 189, 'section_6_third_section_text', 'At Willow Spring Vineyards community and quality are our priorities. As an emerging family winery our commitment is deeply rooted to the people, grapes, and environment that make up the land we call home. We welcome all of you to stop by and be a part of this experience.'),
(439, 189, '_section_6_third_section_text', 'field_63b834a186672'),
(440, 189, 'section_6_third_section', ''),
(441, 189, '_section_6_third_section', 'field_63b834a186670'),
(442, 189, 'section_6', ''),
(443, 189, '_section_6', 'field_63b8318486668'),
(444, 189, 'section_7_title', 'WILLOW SPRING VINEYARDS'),
(445, 189, '_section_7_title', 'field_63b8352286674'),
(446, 189, 'section_7_button_text', 'READ MORE'),
(447, 189, '_section_7_button_text', 'field_63b8353786675'),
(448, 189, 'section_7', ''),
(449, 189, '_section_7', 'field_63b834d286673'),
(450, 189, 'section_3_list_0_text', 'At Willow Spring Vineyards community.'),
(451, 189, '_section_3_list_0_text', 'field_63b830718665d'),
(452, 189, 'section_3_list_1_text', 'At Willow Spring Vineyards community.'),
(453, 189, '_section_3_list_1_text', 'field_63b830718665d'),
(454, 189, 'section_3_list_2_text', 'At Willow Spring Vineyards community.'),
(455, 189, '_section_3_list_2_text', 'field_63b830718665d'),
(456, 189, 'section_3_list_3_text', 'At Willow Spring Vineyards community.'),
(457, 189, '_section_3_list_3_text', 'field_63b830718665d'),
(458, 143, 'section_3_title', 'WILLOW SPRING VINEYARDS'),
(459, 143, '_section_3_title', 'field_63b85b7e11ae1'),
(460, 191, 'section_1_title', 'Willow Spring Vineyards'),
(461, 191, '_section_1_title', 'field_63b82ce986654'),
(462, 191, 'section_1_text', 'At Willow Spring Vineyards community and quality are our priorities. As an emerging family winery our commitment is deeply rooted to the people, grapes, and environment that make up the land we call home. We welcome all of you to stop by and be a part of this experience. A walk through the vineyards will no doubt find us tending the vines or harvesting the grapes among family and friends. So, come and taste our wine – be a part of the Willow Spring Vineyards story.'),
(463, 191, '_section_1_text', 'field_63b82d0386655'),
(464, 191, 'section_1', ''),
(465, 191, '_section_1', 'field_63b82cd586653'),
(466, 191, 'section_2_title', 'WILLOW SPRING VINEYARDS'),
(467, 191, '_section_2_title', 'field_63b82d2286657'),
(468, 191, 'section_2_left_text', 'At Willow Spring Vineyards community and quality are our priorities. As an emerging family winery our commitment is deeply rooted to the people, grapes, and environment that make up the land we call home. We welcome all of you to stop by and be a part of this experience. A walk through the vineyards will no doubt find us tending the vines or harvesting the grapes among family and friends. So, come and taste our wine – be a part of the Willow Spring Vineyards story.'),
(469, 191, '_section_2_left_text', 'field_63b82d3186658'),
(470, 191, 'section_2_right_text', 'At Willow Spring Vineyards community and quality are our priorities. As an emerging family winery our commitment is deeply rooted to the people, grapes, and environment that make up the land we call home. We welcome all of you to stop by and be a part of this experience. A walk through the vineyards will no doubt find us tending the vines or harvesting the grapes among family and friends. So, come and taste our wine – be a part of the Willow Spring Vineyards story.'),
(471, 191, '_section_2_right_text', 'field_63b82d3b86659'),
(472, 191, 'section_2', ''),
(473, 191, '_section_2', 'field_63b82d0c86656'),
(474, 191, 'section_3_text', 'At Willow Spring Vineyards community and quality are our priorities. As an emerging family winery our commitment is deeply rooted to the people, grapes, and environment that make up the land we call home. We welcome all of you to stop by and be a part of this experience. A walk through the vineyards will no doubt find us tending the vines or harvesting the grapes among family and friends. So, come and taste our wine – be a part of the Willow Spring Vineyards story.'),
(475, 191, '_section_3_text', 'field_63b82ee48665b'),
(476, 191, 'section_3_list', '4'),
(477, 191, '_section_3_list', 'field_63b82eee8665c'),
(478, 191, 'section_3_image', '184'),
(479, 191, '_section_3_image', 'field_63b830898665e'),
(480, 191, 'section_3', ''),
(481, 191, '_section_3', 'field_63b82e358665a'),
(482, 191, 'section_4_title', 'WILLOW SPRING VINEYARDS'),
(483, 191, '_section_4_title', 'field_63b830fe86663'),
(484, 191, 'section_4_image1', '185'),
(485, 191, '_section_4_image1', 'field_63b830bc86660'),
(486, 191, 'section_4_image2', '186'),
(487, 191, '_section_4_image2', 'field_63b830cd86661'),
(488, 191, 'section_4_image3', '187'),
(489, 191, '_section_4_image3', 'field_63b830db86662'),
(490, 191, 'section_4', ''),
(491, 191, '_section_4', 'field_63b8309e8665f'),
(492, 191, 'section_5_title', 'WILLOW SPRING VINEYARDS'),
(493, 191, '_section_5_title', 'field_63b8315686665'),
(494, 191, 'section_5_text', 'At Willow Spring Vineyards community and quality are our priorities. As an emerging family winery our commitment is deeply rooted to the people, grapes, and environment that make up the land we call home. We welcome all of you to stop by and be a part of this experience. A walk through the vineyards will no doubt find us tending the vines or harvesting the grapes among family and friends. So, come and taste our wine – be a part of the Willow Spring Vineyards story.'),
(495, 191, '_section_5_text', 'field_63b8316086666'),
(496, 191, 'section_5_background_image', '188'),
(497, 191, '_section_5_background_image', 'field_63b8316586667'),
(498, 191, 'section_5', ''),
(499, 191, '_section_5', 'field_63b8311586664'),
(500, 191, 'section_6_title', 'WILLOW SPRING VINEYARDS'),
(501, 191, '_section_6_title', 'field_63b8334686669'),
(502, 191, 'section_6_first_section_title', 'Willow Spring Vineyards'),
(503, 191, '_section_6_first_section_title', 'field_63b833d18666b'),
(504, 191, 'section_6_first_section_text', 'At Willow Spring Vineyards community and quality are our priorities. As an emerging family winery our commitment is deeply rooted to the people, grapes, and environment that make up the land we call home. We welcome all of you to stop by and be a part of this experience.'),
(505, 191, '_section_6_first_section_text', 'field_63b833da8666c'),
(506, 191, 'section_6_first_section', ''),
(507, 191, '_section_6_first_section', 'field_63b8338b8666a'),
(508, 191, 'section_6_second_section_title', 'Willow Spring Vineyards'),
(509, 191, '_section_6_second_section_title', 'field_63b834738666e'),
(510, 191, 'section_6_second_section_text', 'At Willow Spring Vineyards community and quality are our priorities. As an emerging family winery our commitment is deeply rooted to the people, grapes, and environment that make up the land we call home. We welcome all of you to stop by and be a part of this experience.'),
(511, 191, '_section_6_second_section_text', 'field_63b834738666f'),
(512, 191, 'section_6_second_section', ''),
(513, 191, '_section_6_second_section', 'field_63b834738666d'),
(514, 191, 'section_6_third_section_title', 'Willow Spring Vineyards'),
(515, 191, '_section_6_third_section_title', 'field_63b834a186671'),
(516, 191, 'section_6_third_section_text', 'At Willow Spring Vineyards community and quality are our priorities. As an emerging family winery our commitment is deeply rooted to the people, grapes, and environment that make up the land we call home. We welcome all of you to stop by and be a part of this experience.'),
(517, 191, '_section_6_third_section_text', 'field_63b834a186672'),
(518, 191, 'section_6_third_section', ''),
(519, 191, '_section_6_third_section', 'field_63b834a186670'),
(520, 191, 'section_6', ''),
(521, 191, '_section_6', 'field_63b8318486668'),
(522, 191, 'section_7_title', 'WILLOW SPRING VINEYARDS'),
(523, 191, '_section_7_title', 'field_63b8352286674'),
(524, 191, 'section_7_button_text', 'READ MORE'),
(525, 191, '_section_7_button_text', 'field_63b8353786675'),
(526, 191, 'section_7', ''),
(527, 191, '_section_7', 'field_63b834d286673'),
(528, 191, 'section_3_list_0_text', 'At Willow Spring Vineyards community.'),
(529, 191, '_section_3_list_0_text', 'field_63b830718665d'),
(530, 191, 'section_3_list_1_text', 'At Willow Spring Vineyards community.'),
(531, 191, '_section_3_list_1_text', 'field_63b830718665d'),
(532, 191, 'section_3_list_2_text', 'At Willow Spring Vineyards community.'),
(533, 191, '_section_3_list_2_text', 'field_63b830718665d'),
(534, 191, 'section_3_list_3_text', 'At Willow Spring Vineyards community.'),
(535, 191, '_section_3_list_3_text', 'field_63b830718665d'),
(536, 191, 'section_3_title', 'WILLOW SPRING VINEYARDS'),
(537, 191, '_section_3_title', 'field_63b85b7e11ae1'),
(538, 195, '_wp_attached_file', 'background.png'),
(539, 195, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2000;s:6:\"height\";i:442;s:4:\"file\";s:14:\"background.png\";s:8:\"filesize\";i:546267;s:5:\"sizes\";a:10:{s:6:\"medium\";a:5:{s:4:\"file\";s:22:\"background-600x133.png\";s:5:\"width\";i:600;s:6:\"height\";i:133;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:77778;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:22:\"background-500x350.png\";s:5:\"width\";i:500;s:6:\"height\";i:350;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:130934;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:22:\"background-768x170.png\";s:5:\"width\";i:768;s:6:\"height\";i:170;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:121063;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:23:\"background-1536x339.png\";s:5:\"width\";i:1536;s:6:\"height\";i:339;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:366084;}s:6:\"awb_sm\";a:5:{s:4:\"file\";s:22:\"background-500x111.png\";s:5:\"width\";i:500;s:6:\"height\";i:111;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:56319;}s:6:\"awb_md\";a:5:{s:4:\"file\";s:22:\"background-800x177.png\";s:5:\"width\";i:800;s:6:\"height\";i:177;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:129508;}s:6:\"awb_lg\";a:5:{s:4:\"file\";s:23:\"background-1280x283.png\";s:5:\"width\";i:1280;s:6:\"height\";i:283;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:278733;}s:6:\"awb_xl\";a:5:{s:4:\"file\";s:23:\"background-1920x424.png\";s:5:\"width\";i:1920;s:6:\"height\";i:424;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:504348;}s:14:\"post-thumbnail\";a:5:{s:4:\"file\";s:22:\"background-660x146.png\";s:5:\"width\";i:660;s:6:\"height\";i:146;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:92390;}s:17:\"excerpt-thumbnail\";a:5:{s:4:\"file\";s:22:\"background-200x140.png\";s:5:\"width\";i:200;s:6:\"height\";i:140;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:28862;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(540, 143, 'banner_title', 'WINES'),
(541, 143, '_banner_title', 'field_63b862a17197c'),
(542, 143, 'banner_background', '195'),
(543, 143, '_banner_background', 'field_63b862a97197d'),
(544, 143, 'banner', ''),
(545, 143, '_banner', 'field_63b8628b7197b'),
(546, 196, 'section_1_title', 'Willow Spring Vineyards'),
(547, 196, '_section_1_title', 'field_63b82ce986654'),
(548, 196, 'section_1_text', 'At Willow Spring Vineyards community and quality are our priorities. As an emerging family winery our commitment is deeply rooted to the people, grapes, and environment that make up the land we call home. We welcome all of you to stop by and be a part of this experience. A walk through the vineyards will no doubt find us tending the vines or harvesting the grapes among family and friends. So, come and taste our wine – be a part of the Willow Spring Vineyards story.'),
(549, 196, '_section_1_text', 'field_63b82d0386655'),
(550, 196, 'section_1', ''),
(551, 196, '_section_1', 'field_63b82cd586653'),
(552, 196, 'section_2_title', 'WILLOW SPRING VINEYARDS'),
(553, 196, '_section_2_title', 'field_63b82d2286657'),
(554, 196, 'section_2_left_text', 'At Willow Spring Vineyards community and quality are our priorities. As an emerging family winery our commitment is deeply rooted to the people, grapes, and environment that make up the land we call home. We welcome all of you to stop by and be a part of this experience. A walk through the vineyards will no doubt find us tending the vines or harvesting the grapes among family and friends. So, come and taste our wine – be a part of the Willow Spring Vineyards story.'),
(555, 196, '_section_2_left_text', 'field_63b82d3186658'),
(556, 196, 'section_2_right_text', 'At Willow Spring Vineyards community and quality are our priorities. As an emerging family winery our commitment is deeply rooted to the people, grapes, and environment that make up the land we call home. We welcome all of you to stop by and be a part of this experience. A walk through the vineyards will no doubt find us tending the vines or harvesting the grapes among family and friends. So, come and taste our wine – be a part of the Willow Spring Vineyards story.'),
(557, 196, '_section_2_right_text', 'field_63b82d3b86659'),
(558, 196, 'section_2', ''),
(559, 196, '_section_2', 'field_63b82d0c86656'),
(560, 196, 'section_3_text', 'At Willow Spring Vineyards community and quality are our priorities. As an emerging family winery our commitment is deeply rooted to the people, grapes, and environment that make up the land we call home. We welcome all of you to stop by and be a part of this experience. A walk through the vineyards will no doubt find us tending the vines or harvesting the grapes among family and friends. So, come and taste our wine – be a part of the Willow Spring Vineyards story.'),
(561, 196, '_section_3_text', 'field_63b82ee48665b'),
(562, 196, 'section_3_list', '4'),
(563, 196, '_section_3_list', 'field_63b82eee8665c'),
(564, 196, 'section_3_image', '184'),
(565, 196, '_section_3_image', 'field_63b830898665e'),
(566, 196, 'section_3', ''),
(567, 196, '_section_3', 'field_63b82e358665a'),
(568, 196, 'section_4_title', 'WILLOW SPRING VINEYARDS'),
(569, 196, '_section_4_title', 'field_63b830fe86663'),
(570, 196, 'section_4_image1', '185'),
(571, 196, '_section_4_image1', 'field_63b830bc86660'),
(572, 196, 'section_4_image2', '186'),
(573, 196, '_section_4_image2', 'field_63b830cd86661'),
(574, 196, 'section_4_image3', '187'),
(575, 196, '_section_4_image3', 'field_63b830db86662'),
(576, 196, 'section_4', ''),
(577, 196, '_section_4', 'field_63b8309e8665f'),
(578, 196, 'section_5_title', 'WILLOW SPRING VINEYARDS'),
(579, 196, '_section_5_title', 'field_63b8315686665'),
(580, 196, 'section_5_text', 'At Willow Spring Vineyards community and quality are our priorities. As an emerging family winery our commitment is deeply rooted to the people, grapes, and environment that make up the land we call home. We welcome all of you to stop by and be a part of this experience. A walk through the vineyards will no doubt find us tending the vines or harvesting the grapes among family and friends. So, come and taste our wine – be a part of the Willow Spring Vineyards story.'),
(581, 196, '_section_5_text', 'field_63b8316086666'),
(582, 196, 'section_5_background_image', '188'),
(583, 196, '_section_5_background_image', 'field_63b8316586667'),
(584, 196, 'section_5', ''),
(585, 196, '_section_5', 'field_63b8311586664'),
(586, 196, 'section_6_title', 'WILLOW SPRING VINEYARDS'),
(587, 196, '_section_6_title', 'field_63b8334686669'),
(588, 196, 'section_6_first_section_title', 'Willow Spring Vineyards'),
(589, 196, '_section_6_first_section_title', 'field_63b833d18666b'),
(590, 196, 'section_6_first_section_text', 'At Willow Spring Vineyards community and quality are our priorities. As an emerging family winery our commitment is deeply rooted to the people, grapes, and environment that make up the land we call home. We welcome all of you to stop by and be a part of this experience.'),
(591, 196, '_section_6_first_section_text', 'field_63b833da8666c'),
(592, 196, 'section_6_first_section', ''),
(593, 196, '_section_6_first_section', 'field_63b8338b8666a'),
(594, 196, 'section_6_second_section_title', 'Willow Spring Vineyards'),
(595, 196, '_section_6_second_section_title', 'field_63b834738666e'),
(596, 196, 'section_6_second_section_text', 'At Willow Spring Vineyards community and quality are our priorities. As an emerging family winery our commitment is deeply rooted to the people, grapes, and environment that make up the land we call home. We welcome all of you to stop by and be a part of this experience.'),
(597, 196, '_section_6_second_section_text', 'field_63b834738666f'),
(598, 196, 'section_6_second_section', ''),
(599, 196, '_section_6_second_section', 'field_63b834738666d'),
(600, 196, 'section_6_third_section_title', 'Willow Spring Vineyards'),
(601, 196, '_section_6_third_section_title', 'field_63b834a186671'),
(602, 196, 'section_6_third_section_text', 'At Willow Spring Vineyards community and quality are our priorities. As an emerging family winery our commitment is deeply rooted to the people, grapes, and environment that make up the land we call home. We welcome all of you to stop by and be a part of this experience.'),
(603, 196, '_section_6_third_section_text', 'field_63b834a186672'),
(604, 196, 'section_6_third_section', ''),
(605, 196, '_section_6_third_section', 'field_63b834a186670'),
(606, 196, 'section_6', ''),
(607, 196, '_section_6', 'field_63b8318486668'),
(608, 196, 'section_7_title', 'WILLOW SPRING VINEYARDS'),
(609, 196, '_section_7_title', 'field_63b8352286674'),
(610, 196, 'section_7_button_text', 'READ MORE'),
(611, 196, '_section_7_button_text', 'field_63b8353786675'),
(612, 196, 'section_7', ''),
(613, 196, '_section_7', 'field_63b834d286673'),
(614, 196, 'section_3_list_0_text', 'At Willow Spring Vineyards community.'),
(615, 196, '_section_3_list_0_text', 'field_63b830718665d'),
(616, 196, 'section_3_list_1_text', 'At Willow Spring Vineyards community.'),
(617, 196, '_section_3_list_1_text', 'field_63b830718665d'),
(618, 196, 'section_3_list_2_text', 'At Willow Spring Vineyards community.'),
(619, 196, '_section_3_list_2_text', 'field_63b830718665d'),
(620, 196, 'section_3_list_3_text', 'At Willow Spring Vineyards community.'),
(621, 196, '_section_3_list_3_text', 'field_63b830718665d'),
(622, 196, 'section_3_title', 'WILLOW SPRING VINEYARDS'),
(623, 196, '_section_3_title', 'field_63b85b7e11ae1'),
(624, 196, 'banner_title', 'WINES'),
(625, 196, '_banner_title', 'field_63b862a17197c'),
(626, 196, 'banner_background', '195'),
(627, 196, '_banner_background', 'field_63b862a97197d'),
(628, 196, 'banner', ''),
(629, 196, '_banner', 'field_63b8628b7197b'),
(630, 143, '_yoast_wpseo_content_score', '90'),
(631, 199, 'section_1_title', 'Willow Spring Vineyards'),
(632, 199, '_section_1_title', 'field_63b82ce986654'),
(633, 199, 'section_1_text', 'At Willow Spring Vineyards community and quality are our priorities. As an emerging family winery our commitment is deeply rooted to the people, grapes, and environment that make up the land we call home. We welcome all of you to stop by and be a part of this experience. A walk through the vineyards will no doubt find us tending the vines or harvesting the grapes among family and friends. So, come and taste our wine – be a part of the Willow Spring Vineyards story.'),
(634, 199, '_section_1_text', 'field_63b82d0386655'),
(635, 199, 'section_1', ''),
(636, 199, '_section_1', 'field_63b82cd586653'),
(637, 199, 'section_2_title', 'WILLOW SPRING VINEYARDS'),
(638, 199, '_section_2_title', 'field_63b82d2286657'),
(639, 199, 'section_2_left_text', 'At Willow Spring Vineyards community and quality are our priorities. As an emerging family winery our commitment is deeply rooted to the people, grapes, and environment that make up the land we call home. We welcome all of you to stop by and be a part of this experience. A walk through the vineyards will no doubt find us tending the vines or harvesting the grapes among family and friends. So, come and taste our wine – be a part of the Willow Spring Vineyards story.'),
(640, 199, '_section_2_left_text', 'field_63b82d3186658'),
(641, 199, 'section_2_right_text', 'At Willow Spring Vineyards community and quality are our priorities. As an emerging family winery our commitment is deeply rooted to the people, grapes, and environment that make up the land we call home. We welcome all of you to stop by and be a part of this experience. A walk through the vineyards will no doubt find us tending the vines or harvesting the grapes among family and friends. So, come and taste our wine – be a part of the Willow Spring Vineyards story.'),
(642, 199, '_section_2_right_text', 'field_63b82d3b86659'),
(643, 199, 'section_2', ''),
(644, 199, '_section_2', 'field_63b82d0c86656'),
(645, 199, 'section_3_text', 'At Willow Spring Vineyards community and quality are our priorities. As an emerging family winery our commitment is deeply rooted to the people, grapes, and environment that make up the land we call home. We welcome all of you to stop by and be a part of this experience. A walk through the vineyards will no doubt find us tending the vines or harvesting the grapes among family and friends. So, come and taste our wine – be a part of the Willow Spring Vineyards story.'),
(646, 199, '_section_3_text', 'field_63b82ee48665b'),
(647, 199, 'section_3_list', '4'),
(648, 199, '_section_3_list', 'field_63b82eee8665c'),
(649, 199, 'section_3_image', '184'),
(650, 199, '_section_3_image', 'field_63b830898665e'),
(651, 199, 'section_3', ''),
(652, 199, '_section_3', 'field_63b82e358665a'),
(653, 199, 'section_4_title', 'WILLOW SPRING VINEYARDS'),
(654, 199, '_section_4_title', 'field_63b830fe86663'),
(655, 199, 'section_4_image1', '185'),
(656, 199, '_section_4_image1', 'field_63b830bc86660'),
(657, 199, 'section_4_image2', '186'),
(658, 199, '_section_4_image2', 'field_63b830cd86661'),
(659, 199, 'section_4_image3', '187'),
(660, 199, '_section_4_image3', 'field_63b830db86662'),
(661, 199, 'section_4', ''),
(662, 199, '_section_4', 'field_63b8309e8665f'),
(663, 199, 'section_5_title', 'WILLOW SPRING VINEYARDS'),
(664, 199, '_section_5_title', 'field_63b8315686665'),
(665, 199, 'section_5_text', 'At Willow Spring Vineyards community and quality are our priorities. As an emerging family winery our commitment is deeply rooted to the people, grapes, and environment that make up the land we call home. We welcome all of you to stop by and be a part of this experience. A walk through the vineyards will no doubt find us tending the vines or harvesting the grapes among family and friends. So, come and taste our wine – be a part of the Willow Spring Vineyards story.'),
(666, 199, '_section_5_text', 'field_63b8316086666'),
(667, 199, 'section_5_background_image', '188'),
(668, 199, '_section_5_background_image', 'field_63b8316586667'),
(669, 199, 'section_5', ''),
(670, 199, '_section_5', 'field_63b8311586664'),
(671, 199, 'section_6_title', 'WILLOW SPRING VINEYARDS'),
(672, 199, '_section_6_title', 'field_63b8334686669'),
(673, 199, 'section_6_first_section_title', 'Willow Spring Vineyards'),
(674, 199, '_section_6_first_section_title', 'field_63b833d18666b'),
(675, 199, 'section_6_first_section_text', 'At Willow Spring Vineyards community and quality are our priorities. As an emerging family winery our commitment is deeply rooted to the people, grapes, and environment that make up the land we call home. We welcome all of you to stop by and be a part of this experience.'),
(676, 199, '_section_6_first_section_text', 'field_63b833da8666c'),
(677, 199, 'section_6_first_section', ''),
(678, 199, '_section_6_first_section', 'field_63b8338b8666a'),
(679, 199, 'section_6_second_section_title', 'Willow Spring Vineyards'),
(680, 199, '_section_6_second_section_title', 'field_63b834738666e'),
(681, 199, 'section_6_second_section_text', 'At Willow Spring Vineyards community and quality are our priorities. As an emerging family winery our commitment is deeply rooted to the people, grapes, and environment that make up the land we call home. We welcome all of you to stop by and be a part of this experience.'),
(682, 199, '_section_6_second_section_text', 'field_63b834738666f'),
(683, 199, 'section_6_second_section', ''),
(684, 199, '_section_6_second_section', 'field_63b834738666d'),
(685, 199, 'section_6_third_section_title', 'Willow Spring Vineyards'),
(686, 199, '_section_6_third_section_title', 'field_63b834a186671'),
(687, 199, 'section_6_third_section_text', 'At Willow Spring Vineyards community and quality are our priorities. As an emerging family winery our commitment is deeply rooted to the people, grapes, and environment that make up the land we call home. We welcome all of you to stop by and be a part of this experience.'),
(688, 199, '_section_6_third_section_text', 'field_63b834a186672'),
(689, 199, 'section_6_third_section', ''),
(690, 199, '_section_6_third_section', 'field_63b834a186670'),
(691, 199, 'section_6', ''),
(692, 199, '_section_6', 'field_63b8318486668'),
(693, 199, 'section_7_title', 'WILLOW SPRING VINEYARDS'),
(694, 199, '_section_7_title', 'field_63b8352286674'),
(695, 199, 'section_7_button_text', 'READ MORE'),
(696, 199, '_section_7_button_text', 'field_63b8353786675'),
(697, 199, 'section_7', ''),
(698, 199, '_section_7', 'field_63b834d286673'),
(699, 199, 'section_3_list_0_text', 'At Willow Spring Vineyards community.'),
(700, 199, '_section_3_list_0_text', 'field_63b830718665d'),
(701, 199, 'section_3_list_1_text', 'At Willow Spring Vineyards community.'),
(702, 199, '_section_3_list_1_text', 'field_63b830718665d'),
(703, 199, 'section_3_list_2_text', 'At Willow Spring Vineyards community.'),
(704, 199, '_section_3_list_2_text', 'field_63b830718665d'),
(705, 199, 'section_3_list_3_text', 'At Willow Spring Vineyards community.'),
(706, 199, '_section_3_list_3_text', 'field_63b830718665d'),
(707, 199, 'section_3_title', 'WILLOW SPRING VINEYARDS'),
(708, 199, '_section_3_title', 'field_63b85b7e11ae1'),
(709, 199, 'banner_title', 'WINES'),
(710, 199, '_banner_title', 'field_63b862a17197c'),
(711, 199, 'banner_background', '195'),
(712, 199, '_banner_background', 'field_63b862a97197d'),
(713, 199, 'banner', ''),
(714, 199, '_banner', 'field_63b8628b7197b');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(8, 1, '2020-11-03 16:51:20', '2020-11-03 16:51:20', '<h1>Primary Heading</h1>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\n<h2>Secondary Heading</h2>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'About Us', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2021-02-26 21:04:55', '2021-02-26 21:04:55', '', 0, 'http://dev2020.goauroratech.com/?page_id=8', 0, 'page', '', 0),
(9, 1, '2020-11-03 16:51:20', '2020-11-03 16:51:20', '<h1>About</h1>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\n<h2>Secondary Heading</h2>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'About Us', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2020-11-03 16:51:20', '2020-11-03 16:51:20', '', 8, 'http://dev2020.goauroratech.com/2020/11/03/8-revision-v1/', 0, 'revision', '', 0),
(10, 1, '2020-11-03 16:53:16', '2020-11-03 16:53:16', '<!-- no content here -->', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2022-05-06 12:20:17', '2022-05-06 16:20:17', '', 0, 'http://dev2020.goauroratech.com/?page_id=10', 0, 'page', '', 0),
(11, 1, '2020-11-03 16:53:16', '2020-11-03 16:53:16', 'Home page text goes here', 'Home', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2020-11-03 16:53:16', '2020-11-03 16:53:16', '', 10, 'http://dev2020.goauroratech.com/2020/11/03/10-revision-v1/', 0, 'revision', '', 0),
(12, 1, '2020-11-03 16:53:46', '2020-11-03 16:53:46', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2020-11-03 16:53:46', '2020-11-03 16:53:46', '', 0, 'http://dev2020.goauroratech.com/?page_id=12', 0, 'page', '', 0),
(13, 1, '2020-11-03 16:53:46', '2020-11-03 16:53:46', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2020-11-03 16:53:46', '2020-11-03 16:53:46', '', 12, 'http://dev2020.goauroratech.com/2020/11/03/12-revision-v1/', 0, 'revision', '', 0),
(14, 1, '2020-11-03 16:55:51', '2020-11-03 16:55:51', '<h1>Contact Us</h1>\r\n[contact-form-7 id=\"16\" title=\"Contact\"]', 'Contact Us', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2021-07-29 00:24:28', '2021-07-29 00:24:28', '', 0, 'http://dev2020.goauroratech.com/?page_id=14', 0, 'page', '', 0),
(15, 1, '2020-11-03 16:55:51', '2020-11-03 16:55:51', '<h1>Contact Us</h1>\r\n[contact-form-7 id=\"21\" title=\"Contact\"]', 'Contact', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2020-11-03 16:55:51', '2020-11-03 16:55:51', '', 14, 'http://dev2020.goauroratech.com/14-revision-v1/', 0, 'revision', '', 0),
(16, 1, '2020-11-03 17:01:12', '2020-11-03 17:01:12', '<div class=\"flex f1\">\r\n<div>\r\n<label>First Name <sup>*</sup></label>\r\n[text* first-name]\r\n</div>\r\n<div>\r\n<label>Last Name <sup>*</sup></label>\r\n[text* last-name]\r\n</div>\r\n</div>\r\n\r\n<label>Phone</label>\r\n[text phone]\r\n\r\n<label>Email <sup>*</sup></label>\r\n[email* email]\r\n\r\n<label>Message</label>\r\n[textarea message]\r\n\r\n[submit \"Submit\"]\n1\nWebsite Inquiry\n[first-name] [last-name] <noreply@vps43701.servconfig.com>\nmike@goauroratech.com\nFrom: [first-name] [last-name]\r\n\r\nPhone: [phone]\r\n\r\nEmail address: [email]\r\n\r\nMessage:\r\n[message]\r\n\r\n--\r\nSent from page: [_url]\r\nUser IP: [_remote_ip]\r\nBrowser info: [_user_agent]\nReply-To: [email]\n\n\n\n\n[_site_title] \"[your-subject]\"\n[_site_title] <wordpress@dev2020.goauroratech.com>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\nReply-To: [_site_admin_email]\n\n\n\nThank you for your message! We will get back to you shortly.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nPlease accept the terms and conditions before sending your message.\nThis field is required.\nThis field is too long.\nThis field is too short.\nThis date format is incorrect.\nThis date is before the earliest one allowed.\nThis date is after the latest one allowed.\nThere was an unknown error uploading the file.\nThis file type is not allowed.\nThis file is too big.\nThere was an error uploading the file.\nThis number format is invalid.\nThis  number is smaller than the minimum allowed.\nThis number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nThe email address entered is invalid.\nThis URL is invalid.\nThis phone number is invalid.', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2020-11-03 17:04:27', '2020-11-03 17:04:27', '', 0, 'http://dev2020.goauroratech.com/?post_type=wpcf7_contact_form&#038;p=16', 0, 'wpcf7_contact_form', '', 0),
(17, 1, '2020-11-03 17:05:15', '2020-11-03 17:05:15', '<h1>Contact Us</h1>\r\n[contact-form-7 id=\"16\" title=\"Contact\"]', 'Contact', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2020-11-03 17:05:15', '2020-11-03 17:05:15', '', 14, 'http://dev2020.goauroratech.com/14-revision-v1/', 0, 'revision', '', 0),
(18, 1, '2020-11-03 17:22:31', '2020-11-03 17:22:31', ' ', '', '', 'publish', 'closed', 'closed', '', '18', '', '', '2020-11-03 17:22:44', '2020-11-03 17:22:44', '', 0, 'http://dev2020.goauroratech.com/?p=18', 1, 'nav_menu_item', '', 0),
(19, 1, '2020-11-03 17:22:32', '2020-11-03 17:22:32', ' ', '', '', 'publish', 'closed', 'closed', '', '19', '', '', '2020-11-03 17:22:44', '2020-11-03 17:22:44', '', 0, 'http://dev2020.goauroratech.com/?p=19', 2, 'nav_menu_item', '', 0),
(20, 1, '2020-11-03 17:22:32', '2020-11-03 17:22:32', ' ', '', '', 'publish', 'closed', 'closed', '', '20', '', '', '2020-11-03 17:22:44', '2020-11-03 17:22:44', '', 0, 'http://dev2020.goauroratech.com/?p=20', 3, 'nav_menu_item', '', 0),
(21, 1, '2020-11-03 17:22:32', '2020-11-03 17:22:32', ' ', '', '', 'publish', 'closed', 'closed', '', '21', '', '', '2020-11-03 17:22:44', '2020-11-03 17:22:44', '', 0, 'http://dev2020.goauroratech.com/?p=21', 4, 'nav_menu_item', '', 0),
(27, 1, '2020-11-03 17:57:44', '2020-11-03 22:57:44', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Another Sample Blog Post', '', 'publish', 'closed', 'closed', '', 'another-sample-blog-post', '', '', '2023-01-04 14:13:43', '2023-01-04 19:13:43', '', 0, 'http://dev2020.goauroratech.com/?p=27', 0, 'post', '', 0),
(28, 1, '2020-11-03 17:57:44', '2020-11-03 17:57:44', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Another Sample Blog Post', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2020-11-03 17:57:44', '2020-11-03 17:57:44', '', 27, 'http://dev2020.goauroratech.com/27-revision-v1/', 0, 'revision', '', 0),
(29, 1, '2020-11-03 17:58:30', '2020-11-03 22:58:30', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Sample Blog Post', '', 'publish', 'closed', 'closed', '', 'sample-blog-post', '', '', '2023-01-04 14:14:16', '2023-01-04 19:14:16', '', 0, 'http://dev2020.goauroratech.com/?p=29', 0, 'post', '', 0),
(30, 1, '2020-11-03 17:58:30', '2020-11-03 17:58:30', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Sample Blog Post', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2020-11-03 17:58:30', '2020-11-03 17:58:30', '', 29, 'http://dev2020.goauroratech.com/29-revision-v1/', 0, 'revision', '', 0),
(31, 1, '2020-11-03 17:58:50', '2020-11-03 22:58:50', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Example Blog Post', '', 'publish', 'closed', 'closed', '', 'example-blog-post', '', '', '2023-01-04 14:20:00', '2023-01-04 19:20:00', '', 0, 'http://dev2020.goauroratech.com/?p=31', 0, 'post', '', 0),
(32, 1, '2020-11-03 17:58:50', '2020-11-03 17:58:50', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Example Blog Post', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2020-11-03 17:58:50', '2020-11-03 17:58:50', '', 31, 'http://dev2020.goauroratech.com/31-revision-v1/', 0, 'revision', '', 0),
(43, 1, '2021-02-26 21:04:55', '2021-02-26 21:04:55', '<h1>Primary Heading</h1>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\n<h2>Secondary Heading</h2>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'About Us', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2021-02-26 21:04:55', '2021-02-26 21:04:55', '', 8, 'http://dev.goauroratech.com/8-revision-v1/', 0, 'revision', '', 0),
(57, 1, '2021-07-29 00:24:28', '2021-07-29 00:24:28', '<h1>Contact Us</h1>\r\n[contact-form-7 id=\"16\" title=\"Contact\"]', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2021-07-29 00:24:28', '2021-07-29 00:24:28', '', 14, 'http://dev.goauroratech.com/?p=57', 0, 'revision', '', 0),
(72, 1, '2021-12-28 19:54:27', '2021-12-28 19:54:27', '', 'Default Menu', '', 'publish', 'closed', 'closed', '', 'default-menu', '', '', '2021-12-28 19:54:27', '2021-12-28 19:54:27', '', 0, 'http://dev.goauroratech.com/rmp_menu/default-menu/', 0, 'rmp_menu', '', 0),
(83, 1, '2022-04-07 12:03:02', '2022-04-07 16:03:02', '<!-- no content here -->', 'Home', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2022-04-07 12:03:02', '2022-04-07 16:03:02', '', 10, 'http://dev.goauroratech.com/?p=83', 0, 'revision', '', 0),
(89, 1, '2022-06-08 13:07:14', '2022-06-08 17:07:14', '<style type=\"text/css\">\n.ftest {background: #e6c2f3; padding: 20px; font-size: 13px;}\n.ftest > div {background: #d18031; color: #fff;}\n</style>\n\n<div class=\"ftest flex rows f4 p20 fbreak1\">\n<div>\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\n</div>\n<div class=\"f34\">\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\n</div>\n<div>\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\n</div>\n<div>\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\n</div>\n<div>\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\n</div>\n<div>\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\n</div>\n<div>\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\n</div>\n</div>', 'Example Blog Post', '', 'inherit', 'closed', 'closed', '', '31-autosave-v1', '', '', '2022-06-08 13:07:14', '2022-06-08 17:07:14', '', 31, 'http://dev.goauroratech.com/?p=89', 0, 'revision', '', 0),
(107, 1, '2022-12-22 17:31:26', '2022-12-22 22:31:26', '', 'willow-spring-vineyards-logo', '', 'inherit', '', 'closed', '', 'willow-spring-vineyards-logo', '', '', '2022-12-22 17:31:26', '2022-12-22 22:31:26', '', 0, 'http://localhost:81/atcustomwebsites/wp-content/uploads/willow-spring-vineyards-logo.png', 0, 'attachment', 'image/png', 0),
(108, 1, '2022-12-22 17:33:27', '2022-12-22 22:33:27', '', 'favicon', '', 'inherit', '', 'closed', '', 'favicon', '', '', '2022-12-22 17:33:27', '2022-12-22 22:33:27', '', 0, 'http://localhost:81/atcustomwebsites/wp-content/uploads/favicon.png', 0, 'attachment', 'image/png', 0),
(109, 1, '2022-12-23 12:49:11', '2022-12-23 17:49:11', '', 'banner-home', '', 'inherit', '', 'closed', '', 'banner-home', '', '', '2022-12-23 12:49:11', '2022-12-23 17:49:11', '', 0, 'http://localhost:81/atcustomwebsites/wp-content/uploads/banner-home.jpg', 0, 'attachment', 'image/jpeg', 0),
(110, 1, '2022-12-23 12:59:26', '2022-12-23 17:59:26', '', 'element-barn', '', 'inherit', '', 'closed', '', 'element-barn', '', '', '2022-12-23 12:59:26', '2022-12-23 17:59:26', '', 0, 'http://localhost:81/atcustomwebsites/wp-content/uploads/element-barn.png', 0, 'attachment', 'image/png', 0),
(112, 1, '2022-12-23 13:41:15', '2022-12-23 18:41:15', '', 'ico-clock', '', 'inherit', '', 'closed', '', 'ico-clock', '', '', '2022-12-23 13:41:15', '2022-12-23 18:41:15', '', 0, 'http://localhost:81/atcustomwebsites/wp-content/uploads/ico-clock.png', 0, 'attachment', 'image/png', 0),
(113, 1, '2022-12-23 16:12:26', '2022-12-23 21:12:26', '', 'bg-welcome', '', 'inherit', '', 'closed', '', 'bg-welcome', '', '', '2022-12-23 16:12:26', '2022-12-23 21:12:26', '', 0, 'http://localhost:81/atcustomwebsites/wp-content/uploads/bg-welcome.jpg', 0, 'attachment', 'image/jpeg', 0),
(114, 1, '2022-12-23 16:32:23', '2022-12-23 21:32:23', '', 'element-owners', '', 'inherit', '', 'closed', '', 'element-owners', '', '', '2022-12-23 16:32:23', '2022-12-23 21:32:23', '', 0, 'http://localhost:81/atcustomwebsites/wp-content/uploads/element-owners.png', 0, 'attachment', 'image/png', 0),
(115, 1, '2022-12-23 16:38:14', '2022-12-23 21:38:14', '', 'bg-owners', '', 'inherit', '', 'closed', '', 'bg-owners', '', '', '2022-12-23 16:38:14', '2022-12-23 21:38:14', '', 0, 'http://localhost:81/atcustomwebsites/wp-content/uploads/bg-owners.jpg', 0, 'attachment', 'image/jpeg', 0),
(116, 1, '2023-01-02 16:52:30', '2023-01-02 21:52:30', '', 'thumb-weddings', '', 'inherit', '', 'closed', '', 'thumb-weddings', '', '', '2023-01-02 16:52:30', '2023-01-02 21:52:30', '', 0, 'http://localhost:81/atcustomwebsites/wp-content/uploads/thumb-weddings.jpg', 0, 'attachment', 'image/jpeg', 0),
(117, 1, '2023-01-02 16:52:32', '2023-01-02 21:52:32', '', 'thumb-events', '', 'inherit', '', 'closed', '', 'thumb-events', '', '', '2023-01-02 16:52:32', '2023-01-02 21:52:32', '', 0, 'http://localhost:81/atcustomwebsites/wp-content/uploads/thumb-events.jpg', 0, 'attachment', 'image/jpeg', 0),
(118, 1, '2023-01-02 16:52:32', '2023-01-02 21:52:32', '', 'thumb-wines', '', 'inherit', '', 'closed', '', 'thumb-wines', '', '', '2023-01-02 16:52:32', '2023-01-02 21:52:32', '', 0, 'http://localhost:81/atcustomwebsites/wp-content/uploads/thumb-wines.jpg', 0, 'attachment', 'image/jpeg', 0),
(119, 1, '2023-01-02 23:11:47', '2023-01-03 04:11:47', '', 'ico-wedding-glass', '', 'inherit', '', 'closed', '', 'ico-wedding-glass', '', '', '2023-01-02 23:11:47', '2023-01-03 04:11:47', '', 0, 'http://localhost:81/atcustomwebsites/wp-content/uploads/ico-wedding-glass.svg', 0, 'attachment', 'image/svg+xml', 0),
(120, 1, '2023-01-02 23:11:48', '2023-01-03 04:11:48', '', 'ico-event-balloons', '', 'inherit', '', 'closed', '', 'ico-event-balloons', '', '', '2023-01-02 23:11:48', '2023-01-03 04:11:48', '', 0, 'http://localhost:81/atcustomwebsites/wp-content/uploads/ico-event-balloons.svg', 0, 'attachment', 'image/svg+xml', 0),
(121, 1, '2023-01-02 23:11:48', '2023-01-03 04:11:48', '', 'ico-wines', '', 'inherit', '', 'closed', '', 'ico-wines', '', '', '2023-01-02 23:11:48', '2023-01-03 04:11:48', '', 0, 'http://localhost:81/atcustomwebsites/wp-content/uploads/ico-wines.svg', 0, 'attachment', 'image/svg+xml', 0),
(124, 1, '2023-01-02 23:50:40', '2023-01-03 04:50:40', '', 'ico-loc', '', 'inherit', '', 'closed', '', 'ico-loc', '', '', '2023-01-02 23:50:40', '2023-01-03 04:50:40', '', 0, 'http://localhost:81/atcustomwebsites/wp-content/uploads/ico-loc.svg', 0, 'attachment', 'image/svg+xml', 0),
(125, 1, '2023-01-02 23:50:40', '2023-01-03 04:50:40', '', 'ico-email', '', 'inherit', '', 'closed', '', 'ico-email', '', '', '2023-01-02 23:50:40', '2023-01-03 04:50:40', '', 0, 'http://localhost:81/atcustomwebsites/wp-content/uploads/ico-email.svg', 0, 'attachment', 'image/svg+xml', 0),
(131, 4, '2023-01-04 05:42:04', '2023-01-04 10:42:04', '[recent_post_carousel design=\"design-1\" show_category_name=\"false\" show_date=\"false\" dots=\"false\" autoplay=\"false\" show_author=\"false\"]\r\n\r\n&nbsp;', 'Test Page', '', 'publish', 'closed', 'closed', '', 'test-page', '', '', '2023-01-04 14:18:38', '2023-01-04 19:18:38', '', 0, 'http://localhost:81/atcustomwebsites/?page_id=131', 0, 'page', '', 0),
(132, 4, '2023-01-04 05:42:04', '2023-01-04 10:42:04', '[recent_post_carousel design=\"design-1\" show_category_name=\"false\" show_date=\"false\" dots=\"false\" autoplay=\"false\" show_author=\"false\"]\r\n\r\n&nbsp;', 'Test Page', '', 'inherit', 'closed', 'closed', '', '131-revision-v1', '', '', '2023-01-04 05:42:04', '2023-01-04 10:42:04', '', 131, 'http://localhost:81/atcustomwebsites/?p=132', 0, 'revision', '', 0),
(133, 4, '2023-01-04 14:13:34', '2023-01-04 19:13:34', '', 'Screenshot_4', '', 'inherit', '', 'closed', '', 'screenshot_4', '', '', '2023-01-04 14:13:34', '2023-01-04 19:13:34', '', 27, 'http://localhost:81/atcustomwebsites/wp-content/uploads/Screenshot_4.png', 0, 'attachment', 'image/png', 0),
(134, 4, '2023-01-04 14:14:03', '2023-01-04 19:14:03', '', 'Screenshot_5', '', 'inherit', '', 'closed', '', 'screenshot_5', '', '', '2023-01-04 14:14:03', '2023-01-04 19:14:03', '', 29, 'http://localhost:81/atcustomwebsites/wp-content/uploads/Screenshot_5.png', 0, 'attachment', 'image/png', 0),
(135, 4, '2023-01-04 14:16:19', '2023-01-04 19:16:19', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Sample Blog Post-2', '', 'publish', 'closed', 'closed', '', 'sample-blog-post-2', '', '', '2023-01-04 14:16:19', '2023-01-04 19:16:19', '', 0, 'http://localhost:81/atcustomwebsites/?p=135', 0, 'post', '', 0),
(136, 4, '2023-01-04 14:16:19', '2023-01-04 19:16:19', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Sample Blog Post-2', '', 'inherit', 'closed', 'closed', '', '135-revision-v1', '', '', '2023-01-04 14:16:19', '2023-01-04 19:16:19', '', 135, 'http://localhost:81/atcustomwebsites/?p=136', 0, 'revision', '', 0),
(143, 4, '2023-01-05 08:55:36', '2023-01-05 13:55:36', '<h1>Main Title Style</h1>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\n<h2>Secondary title right after the main one</h2>\r\n<div class=\"flex f1 fbreak1\">\r\n<div>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n</div>\r\n<div>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n</div>\r\n</div>\r\n\r\n<div class=\"flex f1 fbreak1 middle\">\r\n<div>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n</div>\r\n<div>\r\n[image goes here]\r\n</div>\r\n</div>\r\n\r\n<div class=\"full\"><div class=\"limit\">\r\nThis is a full-site-width section inside the page editor\r\n</div></div>', 'Inner Page', '', 'publish', 'closed', 'closed', '', 'inner-page', '', '', '2023-01-06 16:48:25', '2023-01-06 21:48:25', '', 0, 'http://localhost:81/atcustomwebsites/?page_id=143', 0, 'page', '', 0),
(144, 4, '2023-01-05 08:55:36', '2023-01-05 13:55:36', '', 'Inner Page', '', 'inherit', 'closed', 'closed', '', '143-revision-v1', '', '', '2023-01-05 08:55:36', '2023-01-05 13:55:36', '', 143, 'http://localhost:81/atcustomwebsites/?p=144', 0, 'revision', '', 0),
(147, 4, '2023-01-06 09:53:36', '2023-01-06 14:53:36', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:24:\"page-templates/inner.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Inner Page', 'inner-page', 'publish', 'closed', 'closed', '', 'group_63b82c6028266', '', '', '2023-01-06 13:05:01', '2023-01-06 18:05:01', '', 0, 'http://localhost:81/atcustomwebsites/?post_type=acf-field-group&#038;p=147', 0, 'acf-field-group', '', 0),
(148, 4, '2023-01-06 09:53:36', '2023-01-06 14:53:36', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Section 1', 'section_1', 'publish', 'closed', 'closed', '', 'field_63b82cd586653', '', '', '2023-01-06 13:04:59', '2023-01-06 18:04:59', '', 147, 'http://localhost:81/atcustomwebsites/?post_type=acf-field&#038;p=148', 1, 'acf-field', '', 0),
(149, 4, '2023-01-06 09:53:36', '2023-01-06 14:53:36', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Title', 'title', 'publish', 'closed', 'closed', '', 'field_63b82ce986654', '', '', '2023-01-06 12:34:00', '2023-01-06 17:34:00', '', 148, 'http://localhost:81/atcustomwebsites/?post_type=acf-field&#038;p=149', 0, 'acf-field', '', 0),
(150, 4, '2023-01-06 09:53:36', '2023-01-06 14:53:36', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Text', 'text', 'publish', 'closed', 'closed', '', 'field_63b82d0386655', '', '', '2023-01-06 09:53:36', '2023-01-06 14:53:36', '', 148, 'http://localhost:81/atcustomwebsites/?post_type=acf-field&p=150', 1, 'acf-field', '', 0),
(151, 4, '2023-01-06 09:53:37', '2023-01-06 14:53:37', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Section 2', 'section_2', 'publish', 'closed', 'closed', '', 'field_63b82d0c86656', '', '', '2023-01-06 13:05:00', '2023-01-06 18:05:00', '', 147, 'http://localhost:81/atcustomwebsites/?post_type=acf-field&#038;p=151', 2, 'acf-field', '', 0),
(152, 4, '2023-01-06 09:53:37', '2023-01-06 14:53:37', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Title', 'title', 'publish', 'closed', 'closed', '', 'field_63b82d2286657', '', '', '2023-01-06 09:53:37', '2023-01-06 14:53:37', '', 151, 'http://localhost:81/atcustomwebsites/?post_type=acf-field&p=152', 0, 'acf-field', '', 0),
(153, 4, '2023-01-06 09:53:37', '2023-01-06 14:53:37', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Left Text', 'left_text', 'publish', 'closed', 'closed', '', 'field_63b82d3186658', '', '', '2023-01-06 12:34:00', '2023-01-06 17:34:00', '', 151, 'http://localhost:81/atcustomwebsites/?post_type=acf-field&#038;p=153', 1, 'acf-field', '', 0),
(154, 4, '2023-01-06 09:53:37', '2023-01-06 14:53:37', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Right Text', 'right_text', 'publish', 'closed', 'closed', '', 'field_63b82d3b86659', '', '', '2023-01-06 12:34:00', '2023-01-06 17:34:00', '', 151, 'http://localhost:81/atcustomwebsites/?post_type=acf-field&#038;p=154', 2, 'acf-field', '', 0),
(155, 4, '2023-01-06 09:53:37', '2023-01-06 14:53:37', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Section 3', 'section_3', 'publish', 'closed', 'closed', '', 'field_63b82e358665a', '', '', '2023-01-06 13:05:00', '2023-01-06 18:05:00', '', 147, 'http://localhost:81/atcustomwebsites/?post_type=acf-field&#038;p=155', 3, 'acf-field', '', 0),
(156, 4, '2023-01-06 09:53:37', '2023-01-06 14:53:37', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Text', 'text', 'publish', 'closed', 'closed', '', 'field_63b82ee48665b', '', '', '2023-01-06 12:34:00', '2023-01-06 17:34:00', '', 155, 'http://localhost:81/atcustomwebsites/?post_type=acf-field&#038;p=156', 0, 'acf-field', '', 0),
(157, 4, '2023-01-06 09:53:37', '2023-01-06 14:53:37', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'list', 'list', 'publish', 'closed', 'closed', '', 'field_63b82eee8665c', '', '', '2023-01-06 12:34:00', '2023-01-06 17:34:00', '', 155, 'http://localhost:81/atcustomwebsites/?post_type=acf-field&#038;p=157', 1, 'acf-field', '', 0),
(158, 4, '2023-01-06 09:53:37', '2023-01-06 14:53:37', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Text', 'text', 'publish', 'closed', 'closed', '', 'field_63b830718665d', '', '', '2023-01-06 09:53:37', '2023-01-06 14:53:37', '', 157, 'http://localhost:81/atcustomwebsites/?post_type=acf-field&p=158', 0, 'acf-field', '', 0),
(159, 4, '2023-01-06 09:53:37', '2023-01-06 14:53:37', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Image', 'image', 'publish', 'closed', 'closed', '', 'field_63b830898665e', '', '', '2023-01-06 12:34:00', '2023-01-06 17:34:00', '', 155, 'http://localhost:81/atcustomwebsites/?post_type=acf-field&#038;p=159', 2, 'acf-field', '', 0),
(160, 4, '2023-01-06 09:53:38', '2023-01-06 14:53:38', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Section 4', 'section_4', 'publish', 'closed', 'closed', '', 'field_63b8309e8665f', '', '', '2023-01-06 13:05:00', '2023-01-06 18:05:00', '', 147, 'http://localhost:81/atcustomwebsites/?post_type=acf-field&#038;p=160', 4, 'acf-field', '', 0),
(161, 4, '2023-01-06 09:53:38', '2023-01-06 14:53:38', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Title', 'title', 'publish', 'closed', 'closed', '', 'field_63b830fe86663', '', '', '2023-01-06 12:34:01', '2023-01-06 17:34:01', '', 160, 'http://localhost:81/atcustomwebsites/?post_type=acf-field&#038;p=161', 0, 'acf-field', '', 0),
(162, 4, '2023-01-06 09:53:38', '2023-01-06 14:53:38', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Image1', 'image1', 'publish', 'closed', 'closed', '', 'field_63b830bc86660', '', '', '2023-01-06 12:34:01', '2023-01-06 17:34:01', '', 160, 'http://localhost:81/atcustomwebsites/?post_type=acf-field&#038;p=162', 1, 'acf-field', '', 0),
(163, 4, '2023-01-06 09:53:38', '2023-01-06 14:53:38', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Image2', 'image2', 'publish', 'closed', 'closed', '', 'field_63b830cd86661', '', '', '2023-01-06 09:53:38', '2023-01-06 14:53:38', '', 160, 'http://localhost:81/atcustomwebsites/?post_type=acf-field&p=163', 2, 'acf-field', '', 0),
(164, 4, '2023-01-06 09:53:38', '2023-01-06 14:53:38', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Image3', 'image3', 'publish', 'closed', 'closed', '', 'field_63b830db86662', '', '', '2023-01-06 09:53:38', '2023-01-06 14:53:38', '', 160, 'http://localhost:81/atcustomwebsites/?post_type=acf-field&p=164', 3, 'acf-field', '', 0),
(165, 4, '2023-01-06 09:53:38', '2023-01-06 14:53:38', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Section 5', 'section_5', 'publish', 'closed', 'closed', '', 'field_63b8311586664', '', '', '2023-01-06 13:05:00', '2023-01-06 18:05:00', '', 147, 'http://localhost:81/atcustomwebsites/?post_type=acf-field&#038;p=165', 5, 'acf-field', '', 0),
(166, 4, '2023-01-06 09:53:39', '2023-01-06 14:53:39', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Title', 'title', 'publish', 'closed', 'closed', '', 'field_63b8315686665', '', '', '2023-01-06 12:34:01', '2023-01-06 17:34:01', '', 165, 'http://localhost:81/atcustomwebsites/?post_type=acf-field&#038;p=166', 0, 'acf-field', '', 0),
(167, 4, '2023-01-06 09:53:39', '2023-01-06 14:53:39', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Text', 'text', 'publish', 'closed', 'closed', '', 'field_63b8316086666', '', '', '2023-01-06 12:34:01', '2023-01-06 17:34:01', '', 165, 'http://localhost:81/atcustomwebsites/?post_type=acf-field&#038;p=167', 1, 'acf-field', '', 0),
(168, 4, '2023-01-06 09:53:39', '2023-01-06 14:53:39', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Background Image', 'background_image', 'publish', 'closed', 'closed', '', 'field_63b8316586667', '', '', '2023-01-06 12:34:01', '2023-01-06 17:34:01', '', 165, 'http://localhost:81/atcustomwebsites/?post_type=acf-field&#038;p=168', 2, 'acf-field', '', 0),
(169, 4, '2023-01-06 09:53:39', '2023-01-06 14:53:39', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Section 6', 'section_6', 'publish', 'closed', 'closed', '', 'field_63b8318486668', '', '', '2023-01-06 13:05:00', '2023-01-06 18:05:00', '', 147, 'http://localhost:81/atcustomwebsites/?post_type=acf-field&#038;p=169', 6, 'acf-field', '', 0),
(170, 4, '2023-01-06 09:53:39', '2023-01-06 14:53:39', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Title', 'title', 'publish', 'closed', 'closed', '', 'field_63b8334686669', '', '', '2023-01-06 09:53:39', '2023-01-06 14:53:39', '', 169, 'http://localhost:81/atcustomwebsites/?post_type=acf-field&p=170', 0, 'acf-field', '', 0),
(171, 4, '2023-01-06 09:53:39', '2023-01-06 14:53:39', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'First Section', 'first_section', 'publish', 'closed', 'closed', '', 'field_63b8338b8666a', '', '', '2023-01-06 12:34:01', '2023-01-06 17:34:01', '', 169, 'http://localhost:81/atcustomwebsites/?post_type=acf-field&#038;p=171', 1, 'acf-field', '', 0),
(172, 4, '2023-01-06 09:53:39', '2023-01-06 14:53:39', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Title', 'title', 'publish', 'closed', 'closed', '', 'field_63b833d18666b', '', '', '2023-01-06 12:34:02', '2023-01-06 17:34:02', '', 171, 'http://localhost:81/atcustomwebsites/?post_type=acf-field&#038;p=172', 0, 'acf-field', '', 0),
(173, 4, '2023-01-06 09:53:39', '2023-01-06 14:53:39', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Text', 'text', 'publish', 'closed', 'closed', '', 'field_63b833da8666c', '', '', '2023-01-06 09:53:39', '2023-01-06 14:53:39', '', 171, 'http://localhost:81/atcustomwebsites/?post_type=acf-field&p=173', 1, 'acf-field', '', 0),
(174, 4, '2023-01-06 09:53:39', '2023-01-06 14:53:39', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Second Section', 'second_section', 'publish', 'closed', 'closed', '', 'field_63b834738666d', '', '', '2023-01-06 09:53:39', '2023-01-06 14:53:39', '', 169, 'http://localhost:81/atcustomwebsites/?post_type=acf-field&p=174', 2, 'acf-field', '', 0),
(175, 4, '2023-01-06 09:53:39', '2023-01-06 14:53:39', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Title', 'title', 'publish', 'closed', 'closed', '', 'field_63b834738666e', '', '', '2023-01-06 09:53:39', '2023-01-06 14:53:39', '', 174, 'http://localhost:81/atcustomwebsites/?post_type=acf-field&p=175', 0, 'acf-field', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(176, 4, '2023-01-06 09:53:40', '2023-01-06 14:53:40', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Text', 'text', 'publish', 'closed', 'closed', '', 'field_63b834738666f', '', '', '2023-01-06 09:53:40', '2023-01-06 14:53:40', '', 174, 'http://localhost:81/atcustomwebsites/?post_type=acf-field&p=176', 1, 'acf-field', '', 0),
(177, 4, '2023-01-06 09:53:40', '2023-01-06 14:53:40', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Third Section', 'third_section', 'publish', 'closed', 'closed', '', 'field_63b834a186670', '', '', '2023-01-06 09:53:40', '2023-01-06 14:53:40', '', 169, 'http://localhost:81/atcustomwebsites/?post_type=acf-field&p=177', 3, 'acf-field', '', 0),
(178, 4, '2023-01-06 09:53:40', '2023-01-06 14:53:40', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Title', 'title', 'publish', 'closed', 'closed', '', 'field_63b834a186671', '', '', '2023-01-06 09:53:40', '2023-01-06 14:53:40', '', 177, 'http://localhost:81/atcustomwebsites/?post_type=acf-field&p=178', 0, 'acf-field', '', 0),
(179, 4, '2023-01-06 09:53:40', '2023-01-06 14:53:40', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Text', 'text', 'publish', 'closed', 'closed', '', 'field_63b834a186672', '', '', '2023-01-06 09:53:40', '2023-01-06 14:53:40', '', 177, 'http://localhost:81/atcustomwebsites/?post_type=acf-field&p=179', 1, 'acf-field', '', 0),
(180, 4, '2023-01-06 09:53:40', '2023-01-06 14:53:40', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Section 7', 'section_7', 'publish', 'closed', 'closed', '', 'field_63b834d286673', '', '', '2023-01-06 13:05:00', '2023-01-06 18:05:00', '', 147, 'http://localhost:81/atcustomwebsites/?post_type=acf-field&#038;p=180', 7, 'acf-field', '', 0),
(181, 4, '2023-01-06 09:53:40', '2023-01-06 14:53:40', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Title', 'title', 'publish', 'closed', 'closed', '', 'field_63b8352286674', '', '', '2023-01-06 09:53:40', '2023-01-06 14:53:40', '', 180, 'http://localhost:81/atcustomwebsites/?post_type=acf-field&p=181', 0, 'acf-field', '', 0),
(182, 4, '2023-01-06 09:53:40', '2023-01-06 14:53:40', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Button text', 'button_text', 'publish', 'closed', 'closed', '', 'field_63b8353786675', '', '', '2023-01-06 12:34:02', '2023-01-06 17:34:02', '', 180, 'http://localhost:81/atcustomwebsites/?post_type=acf-field&#038;p=182', 1, 'acf-field', '', 0),
(183, 4, '2023-01-06 09:59:51', '2023-01-06 14:59:51', '', 'Inner Page', '', 'inherit', 'closed', 'closed', '', '143-revision-v1', '', '', '2023-01-06 09:59:51', '2023-01-06 14:59:51', '', 143, 'http://localhost:81/atcustomwebsites/?p=183', 0, 'revision', '', 0),
(184, 4, '2023-01-06 11:11:14', '2023-01-06 16:11:14', '', 'Screenshot_8', '', 'inherit', '', 'closed', '', 'screenshot_8', '', '', '2023-01-06 11:11:14', '2023-01-06 16:11:14', '', 143, 'http://localhost:81/atcustomwebsites/wp-content/uploads/Screenshot_8.png', 0, 'attachment', 'image/png', 0),
(185, 4, '2023-01-06 11:14:36', '2023-01-06 16:14:36', '', 'Screenshot_10', '', 'inherit', '', 'closed', '', 'screenshot_10', '', '', '2023-01-06 11:14:36', '2023-01-06 16:14:36', '', 143, 'http://localhost:81/atcustomwebsites/wp-content/uploads/Screenshot_10.png', 0, 'attachment', 'image/png', 0),
(186, 4, '2023-01-06 11:14:40', '2023-01-06 16:14:40', '', 'Screenshot_11', '', 'inherit', '', 'closed', '', 'screenshot_11', '', '', '2023-01-06 11:14:40', '2023-01-06 16:14:40', '', 143, 'http://localhost:81/atcustomwebsites/wp-content/uploads/Screenshot_11.png', 0, 'attachment', 'image/png', 0),
(187, 4, '2023-01-06 11:14:47', '2023-01-06 16:14:47', '', 'Screenshot_12', '', 'inherit', '', 'closed', '', 'screenshot_12', '', '', '2023-01-06 11:14:47', '2023-01-06 16:14:47', '', 143, 'http://localhost:81/atcustomwebsites/wp-content/uploads/Screenshot_12.png', 0, 'attachment', 'image/png', 0),
(188, 4, '2023-01-06 11:17:59', '2023-01-06 16:17:59', '', 'back', '', 'inherit', '', 'closed', '', 'back', '', '', '2023-01-06 11:17:59', '2023-01-06 16:17:59', '', 143, 'http://localhost:81/atcustomwebsites/wp-content/uploads/back.png', 0, 'attachment', 'image/png', 0),
(189, 4, '2023-01-06 11:27:01', '2023-01-06 16:27:01', '', 'Inner Page', '', 'inherit', 'closed', 'closed', '', '143-revision-v1', '', '', '2023-01-06 11:27:01', '2023-01-06 16:27:01', '', 143, 'http://localhost:81/atcustomwebsites/?p=189', 0, 'revision', '', 0),
(190, 4, '2023-01-06 12:34:00', '2023-01-06 17:34:00', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Title', 'title', 'publish', 'closed', 'closed', '', 'field_63b85b7e11ae1', '', '', '2023-01-06 12:34:00', '2023-01-06 17:34:00', '', 155, 'http://localhost:81/atcustomwebsites/?post_type=acf-field&p=190', 3, 'acf-field', '', 0),
(191, 4, '2023-01-06 12:34:37', '2023-01-06 17:34:37', '', 'Inner Page', '', 'inherit', 'closed', 'closed', '', '143-revision-v1', '', '', '2023-01-06 12:34:37', '2023-01-06 17:34:37', '', 143, 'http://localhost:81/atcustomwebsites/?p=191', 0, 'revision', '', 0),
(192, 4, '2023-01-06 13:04:59', '2023-01-06 18:04:59', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Banner', 'banner', 'publish', 'closed', 'closed', '', 'field_63b8628b7197b', '', '', '2023-01-06 13:04:59', '2023-01-06 18:04:59', '', 147, 'http://localhost:81/atcustomwebsites/?post_type=acf-field&p=192', 0, 'acf-field', '', 0),
(193, 4, '2023-01-06 13:04:59', '2023-01-06 18:04:59', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Title', 'title', 'publish', 'closed', 'closed', '', 'field_63b862a17197c', '', '', '2023-01-06 13:04:59', '2023-01-06 18:04:59', '', 192, 'http://localhost:81/atcustomwebsites/?post_type=acf-field&p=193', 0, 'acf-field', '', 0),
(194, 4, '2023-01-06 13:04:59', '2023-01-06 18:04:59', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Background', 'background', 'publish', 'closed', 'closed', '', 'field_63b862a97197d', '', '', '2023-01-06 13:04:59', '2023-01-06 18:04:59', '', 192, 'http://localhost:81/atcustomwebsites/?post_type=acf-field&p=194', 1, 'acf-field', '', 0),
(195, 4, '2023-01-06 13:07:39', '2023-01-06 18:07:39', '', 'background', '', 'inherit', '', 'closed', '', 'background', '', '', '2023-01-06 13:07:39', '2023-01-06 18:07:39', '', 143, 'http://localhost:81/atcustomwebsites/wp-content/uploads/background.png', 0, 'attachment', 'image/png', 0),
(196, 4, '2023-01-06 13:10:24', '2023-01-06 18:10:24', '', 'Inner Page', '', 'inherit', 'closed', 'closed', '', '143-revision-v1', '', '', '2023-01-06 13:10:24', '2023-01-06 18:10:24', '', 143, 'http://localhost:81/atcustomwebsites/?p=196', 0, 'revision', '', 0),
(198, 1, '2023-01-06 16:48:15', '2023-01-06 21:48:15', '<h1>Main Title Style</h1>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\n<h2>Secondary title right after the main one</h2>\r\n<div class=\"flex f1 fbreak1\">\r\n<div>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n</div>\r\n<div>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n</div>\r\n</div>\r\n\r\n<div class=\"flex f1 fbreak1 middle\">\r\n<div>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n</div>\r\n<div>\r\n[image goes here]\r\n</div>\r\n</div>\r\n\r\n<div class=\"full\"><div class=\"limit\">\r\nThis is a full-site-width section inside the page editor\r\n</div></div>', 'Inner Page', '', 'inherit', 'closed', 'closed', '', '143-autosave-v1', '', '', '2023-01-06 16:48:15', '2023-01-06 21:48:15', '', 143, 'http://localhost:81/atcustomwebsites/?p=198', 0, 'revision', '', 0),
(199, 1, '2023-01-06 16:48:25', '2023-01-06 21:48:25', '<h1>Main Title Style</h1>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\n<h2>Secondary title right after the main one</h2>\r\n<div class=\"flex f1 fbreak1\">\r\n<div>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n</div>\r\n<div>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n</div>\r\n</div>\r\n\r\n<div class=\"flex f1 fbreak1 middle\">\r\n<div>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n</div>\r\n<div>\r\n[image goes here]\r\n</div>\r\n</div>\r\n\r\n<div class=\"full\"><div class=\"limit\">\r\nThis is a full-site-width section inside the page editor\r\n</div></div>', 'Inner Page', '', 'inherit', 'closed', 'closed', '', '143-revision-v1', '', '', '2023-01-06 16:48:25', '2023-01-06 21:48:25', '', 143, 'http://localhost:81/atcustomwebsites/?p=199', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_redirection_404`
--

CREATE TABLE `wp_redirection_404` (
  `id` int(11) UNSIGNED NOT NULL,
  `created` datetime NOT NULL,
  `url` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `domain` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `agent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referrer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_code` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `request_method` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `request_data` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_redirection_404`
--

INSERT INTO `wp_redirection_404` (`id`, `created`, `url`, `domain`, `agent`, `referrer`, `http_code`, `request_method`, `request_data`, `ip`) VALUES
(5558, '2022-09-06 12:10:18', '/dup-installer/main.installer.php', 'http://dev.goauroratech.com', NULL, NULL, 404, 'GET', NULL, '20.25.144.67'),
(5559, '2022-09-06 16:39:36', '/style.php', 'http://dev.goauroratech.com', 'wp_is_mobile', 'www.bing.com', 404, 'GET', NULL, '20.226.123.162'),
(5560, '2022-09-06 16:39:36', '/wp-admin/style.php', 'http://dev.goauroratech.com', 'wp_is_mobile', 'www.bing.com', 404, 'GET', NULL, '20.226.123.162'),
(5561, '2022-09-06 16:39:37', '/s_e.php', 'http://dev.goauroratech.com', 'wp_is_mobile', 'www.bing.com', 404, 'GET', NULL, '20.226.123.162'),
(5562, '2022-09-06 16:39:38', '/s_ne.php', 'http://dev.goauroratech.com', 'wp_is_mobile', 'www.bing.com', 404, 'GET', NULL, '20.226.123.162'),
(5563, '2022-09-06 16:39:39', '/1index.php', 'http://dev.goauroratech.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36', 'www.bing.com', 404, 'GET', NULL, '20.226.123.162'),
(5564, '2022-09-06 16:39:39', '/radio.php', 'http://dev.goauroratech.com', 'wp_is_mobile', 'www.bing.com', 404, 'GET', NULL, '20.226.123.162'),
(5565, '2022-09-06 16:39:40', '/doc.php', 'http://dev.goauroratech.com', 'wp_is_mobile', 'www.bing.com', 404, 'GET', NULL, '20.226.123.162'),
(5566, '2022-09-06 16:39:41', '/wp_wrong_datlib.php', 'http://dev.goauroratech.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36', 'www.bing.com', 404, 'GET', NULL, '20.226.123.162'),
(5567, '2022-09-06 16:39:41', '/beence.php', 'http://dev.goauroratech.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36', 'www.bing.com', 404, 'GET', NULL, '20.226.123.162'),
(5568, '2022-09-06 16:39:42', '/ups.php', 'http://dev.goauroratech.com', 'wp_is_mobile', 'www.bing.com', 404, 'GET', NULL, '20.226.123.162'),
(5569, '2022-09-06 16:39:42', '/wp-signin.php?dizo&ping', 'http://dev.goauroratech.com', 'wp_is_mobile', 'www.bing.com', 404, 'GET', NULL, '20.226.123.162'),
(5570, '2022-09-06 16:39:43', '/media-admin.php', 'http://dev.goauroratech.com', 'wp_is_mobile', 'www.bing.com', 404, 'GET', NULL, '20.226.123.162'),
(5571, '2022-09-06 16:39:44', '/export.php', 'http://dev.goauroratech.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36', 'www.bing.com', 404, 'GET', NULL, '20.226.123.162'),
(5572, '2022-09-06 16:39:44', '/wp-content/export.php', 'http://dev.goauroratech.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36', 'www.bing.com', 404, 'GET', NULL, '20.226.123.162'),
(5573, '2022-09-06 16:39:45', '/wp-includes/wp-class.php', 'http://dev.goauroratech.com', 'wp_is_mobile', 'www.bing.com', 404, 'GET', NULL, '20.226.123.162'),
(5574, '2022-09-06 16:39:47', '/wp-includes/images/css.php', 'http://dev.goauroratech.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36', 'www.bing.com', 404, 'GET', NULL, '20.226.123.162'),
(5575, '2022-09-06 16:39:47', '/wp-includes/css/css.php', 'http://dev.goauroratech.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36', 'www.bing.com', 404, 'GET', NULL, '20.226.123.162'),
(5576, '2022-09-06 16:39:48', '/defau1t.php', 'http://dev.goauroratech.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36', 'www.bing.com', 404, 'GET', NULL, '20.226.123.162'),
(5577, '2022-09-06 16:39:49', '/moduless.php', 'http://dev.goauroratech.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36', 'www.bing.com', 404, 'GET', NULL, '20.226.123.162'),
(5578, '2022-09-06 16:39:49', '/wp-booking.php', 'http://dev.goauroratech.com', 'wp_is_mobile', 'www.bing.com', 404, 'GET', NULL, '20.226.123.162'),
(5579, '2022-09-06 16:39:52', '/wp-content/mu-plugins/db-safe-mode.php', 'http://dev.goauroratech.com', 'wp_is_mobile', 'www.bing.com', 404, 'GET', NULL, '20.226.123.162'),
(5580, '2022-09-06 16:39:54', '/legion.php', 'http://dev.goauroratech.com', 'wp_is_mobile', 'www.bing.com', 404, 'GET', NULL, '20.226.123.162'),
(5581, '2022-09-06 16:39:55', '/wp-plugins.php', 'http://dev.goauroratech.com', 'wp_is_mobile', 'www.bing.com', 404, 'GET', NULL, '20.226.123.162'),
(5582, '2022-09-06 16:39:56', '/gank.php.PhP', 'http://dev.goauroratech.com', 'wp_is_mobile', 'www.bing.com', 404, 'GET', NULL, '20.226.123.162'),
(5583, '2022-09-06 16:39:57', '/wp-content/db-cache.php', 'http://dev.goauroratech.com', 'wp_is_mobile', 'www.bing.com', 404, 'GET', NULL, '20.226.123.162'),
(5584, '2022-09-06 16:39:58', '/archives.php', 'http://dev.goauroratech.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36', 'www.bing.com', 404, 'GET', NULL, '20.226.123.162'),
(5585, '2022-09-06 16:39:58', '/defau11.php', 'http://dev.goauroratech.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36', 'www.bing.com', 404, 'GET', NULL, '20.226.123.162'),
(5586, '2022-09-06 16:39:59', '/wp-content/outcms.php?up', 'http://dev.goauroratech.com', 'wp_is_mobile', 'www.bing.com', 404, 'GET', NULL, '20.226.123.162'),
(5587, '2022-09-06 16:39:59', '/system_log.php?bala=up', 'http://dev.goauroratech.com', 'wp_is_mobile', 'www.bing.com', 404, 'GET', NULL, '20.226.123.162'),
(5588, '2022-09-06 16:40:00', '/wp-backup-sql-302.php', 'http://dev.goauroratech.com', 'wp_is_mobile', 'www.bing.com', 404, 'GET', NULL, '20.226.123.162'),
(5589, '2022-09-06 16:40:01', '/ALFA_DATA', 'http://dev.goauroratech.com', 'wp_is_mobile', 'www.bing.com', 404, 'GET', NULL, '20.226.123.162'),
(5590, '2022-09-06 16:40:01', '/alfacgiapi', 'http://dev.goauroratech.com', 'wp_is_mobile', 'www.bing.com', 404, 'GET', NULL, '20.226.123.162'),
(5591, '2022-09-06 16:40:02', '/cgialfa', 'http://dev.goauroratech.com', 'wp_is_mobile', 'www.bing.com', 404, 'GET', NULL, '20.226.123.162'),
(5592, '2022-09-06 16:40:03', '/.well-known/ALFA_DATA', 'http://dev.goauroratech.com', 'wp_is_mobile', 'www.bing.com', 404, 'GET', NULL, '20.226.123.162'),
(5593, '2022-09-06 16:40:03', '/.well-known/alfacgiapi', 'http://dev.goauroratech.com', 'wp_is_mobile', 'www.bing.com', 404, 'GET', NULL, '20.226.123.162'),
(5594, '2022-09-06 16:40:04', '/.well-known/cgialfa', 'http://dev.goauroratech.com', 'wp_is_mobile', 'www.bing.com', 404, 'GET', NULL, '20.226.123.162'),
(5595, '2022-09-06 16:40:06', '/wp-includes/ALFA_DATA', 'http://dev.goauroratech.com', 'wp_is_mobile', 'www.bing.com', 404, 'GET', NULL, '20.226.123.162'),
(5596, '2022-09-06 16:40:06', '/wp-includes/alfacgiapi', 'http://dev.goauroratech.com', 'wp_is_mobile', 'www.bing.com', 404, 'GET', NULL, '20.226.123.162'),
(5597, '2022-09-06 16:40:07', '/wp-includes/cgialfa', 'http://dev.goauroratech.com', 'wp_is_mobile', 'www.bing.com', 404, 'GET', NULL, '20.226.123.162'),
(5598, '2022-09-06 16:40:07', '/wp-admin/ALFA_DATA', 'http://dev.goauroratech.com', 'wp_is_mobile', 'www.bing.com', 404, 'GET', NULL, '20.226.123.162'),
(5599, '2022-09-06 16:40:08', '/wp-admin/alfacgiapi', 'http://dev.goauroratech.com', 'wp_is_mobile', 'www.bing.com', 404, 'GET', NULL, '20.226.123.162'),
(5600, '2022-09-06 16:40:09', '/wp-admin/cgialfa', 'http://dev.goauroratech.com', 'wp_is_mobile', 'www.bing.com', 404, 'GET', NULL, '20.226.123.162'),
(5601, '2022-09-06 16:40:09', '/wp-content/ALFA_DATA', 'http://dev.goauroratech.com', 'wp_is_mobile', 'www.bing.com', 404, 'GET', NULL, '20.226.123.162'),
(5602, '2022-09-06 16:40:10', '/wp-content/alfacgiapi', 'http://dev.goauroratech.com', 'wp_is_mobile', 'www.bing.com', 404, 'GET', NULL, '20.226.123.162'),
(5603, '2022-09-06 16:40:10', '/wp-content/cgialfa', 'http://dev.goauroratech.com', 'wp_is_mobile', 'www.bing.com', 404, 'GET', NULL, '20.226.123.162'),
(5604, '2022-09-06 16:40:11', '/templates/beez3/ALFA_DATA', 'http://dev.goauroratech.com', 'wp_is_mobile', 'www.bing.com', 404, 'GET', NULL, '20.226.123.162'),
(5605, '2022-09-06 16:40:12', '/templates/beez3/alfacgiapi', 'http://dev.goauroratech.com', 'wp_is_mobile', 'www.bing.com', 404, 'GET', NULL, '20.226.123.162'),
(5606, '2022-09-06 16:40:12', '/templates/beez3/cgialfa', 'http://dev.goauroratech.com', 'wp_is_mobile', 'www.bing.com', 404, 'GET', NULL, '20.226.123.162'),
(5607, '2022-09-06 16:40:13', '/sites/default/files/ALFA_DATA', 'http://dev.goauroratech.com', 'wp_is_mobile', 'www.bing.com', 404, 'GET', NULL, '20.226.123.162'),
(5608, '2022-09-06 16:40:13', '/sites/default/files/alfacgiapi', 'http://dev.goauroratech.com', 'wp_is_mobile', 'www.bing.com', 404, 'GET', NULL, '20.226.123.162'),
(5609, '2022-09-06 16:40:14', '/sites/default/files/cgialfa', 'http://dev.goauroratech.com', 'wp_is_mobile', 'www.bing.com', 404, 'GET', NULL, '20.226.123.162'),
(5610, '2022-09-06 16:40:15', '/admin/controller/extension/extension/ALFA_DATA', 'http://dev.goauroratech.com', 'wp_is_mobile', 'www.bing.com', 404, 'GET', NULL, '20.226.123.162'),
(5611, '2022-09-06 16:40:15', '/admin/controller/extension/extension/alfacgiapi', 'http://dev.goauroratech.com', 'wp_is_mobile', 'www.bing.com', 404, 'GET', NULL, '20.226.123.162'),
(5612, '2022-09-06 16:40:16', '/admin/controller/extension/extension/cgialfa', 'http://dev.goauroratech.com', 'wp_is_mobile', 'www.bing.com', 404, 'GET', NULL, '20.226.123.162'),
(5613, '2022-09-06 16:40:17', '/olux.php', 'http://dev.goauroratech.com', 'wp_is_mobile', 'www.bing.com', 404, 'GET', NULL, '20.226.123.162'),
(5614, '2022-09-06 16:40:18', '/xleet.php', 'http://dev.goauroratech.com', 'wp_is_mobile', 'www.bing.com', 404, 'GET', NULL, '20.226.123.162'),
(5615, '2022-09-06 16:40:18', '/wso.php', 'http://dev.goauroratech.com', 'wp_is_mobile', 'www.bing.com', 404, 'GET', NULL, '20.226.123.162'),
(5616, '2022-09-06 16:40:19', '/up.php', 'http://dev.goauroratech.com', 'wp_is_mobile', 'www.bing.com', 404, 'GET', NULL, '20.226.123.162'),
(5617, '2022-09-06 16:40:20', '/upload.php', 'http://dev.goauroratech.com', 'wp_is_mobile', 'www.bing.com', 404, 'GET', NULL, '20.226.123.162'),
(5618, '2022-09-06 16:40:20', '/1.php', 'http://dev.goauroratech.com', 'wp_is_mobile', 'www.bing.com', 404, 'GET', NULL, '20.226.123.162'),
(5619, '2022-09-06 16:40:20', '/x.php', 'http://dev.goauroratech.com', 'wp_is_mobile', 'www.bing.com', 404, 'GET', NULL, '20.226.123.162'),
(5620, '2022-09-06 16:40:21', '/z.php', 'http://dev.goauroratech.com', 'wp_is_mobile', 'www.bing.com', 404, 'GET', NULL, '20.226.123.162'),
(5621, '2022-09-06 16:40:21', '/a.php', 'http://dev.goauroratech.com', 'wp_is_mobile', 'www.bing.com', 404, 'GET', NULL, '20.226.123.162'),
(5622, '2022-09-06 16:40:22', '/test.php', 'http://dev.goauroratech.com', 'wp_is_mobile', 'www.bing.com', 404, 'GET', NULL, '20.226.123.162'),
(5623, '2022-09-06 16:40:22', '/wp.php', 'http://dev.goauroratech.com', 'wp_is_mobile', 'www.bing.com', 404, 'GET', NULL, '20.226.123.162'),
(5624, '2022-09-06 16:40:23', '/alfa.php', 'http://dev.goauroratech.com', 'wp_is_mobile', 'www.bing.com', 404, 'GET', NULL, '20.226.123.162'),
(5625, '2022-09-06 16:40:24', '/templates/beez3/', 'http://dev.goauroratech.com', 'wp_is_mobile', 'www.bing.com', 404, 'GET', NULL, '20.226.123.162'),
(5626, '2022-09-06 16:40:24', '/about.php', 'http://dev.goauroratech.com', 'wp_is_mobile', 'www.bing.com', 404, 'GET', NULL, '20.226.123.162'),
(5627, '2022-09-06 16:40:25', '/shells.php', 'http://dev.goauroratech.com', 'wp_is_mobile', 'www.bing.com', 404, 'GET', NULL, '20.226.123.162'),
(5628, '2022-09-06 18:37:51', '/blog/wp-admin/setup-config.php?step=1', 'http://dev.goauroratech.com', 'Mozilla/5.0 (Windows NT 6.2; Win64; x64; rv:16.0.1) Gecko/20121011 Firefox/21.0.1', NULL, 404, 'GET', NULL, '51.141.113.92'),
(5629, '2022-09-06 18:37:53', '/wordpress/wp-admin/setup-config.php?step=1', 'http://dev.goauroratech.com', 'Mozilla/5.0 (Windows NT 6.2; Win64; x64; rv:16.0.1) Gecko/20121011 Firefox/21.0.1', NULL, 404, 'GET', NULL, '51.141.113.92'),
(5630, '2022-09-06 18:37:55', '/wp/wp-admin/setup-config.php?step=1', 'http://dev.goauroratech.com', 'Mozilla/5.0 (Windows NT 6.2; Win64; x64; rv:16.0.1) Gecko/20121011 Firefox/21.0.1', NULL, 404, 'GET', NULL, '51.141.113.92'),
(5631, '2022-09-06 18:37:59', '/news/wp-admin/setup-config.php?step=1', 'http://dev.goauroratech.com', 'Mozilla/5.0 (Windows NT 6.2; Win64; x64; rv:16.0.1) Gecko/20121011 Firefox/21.0.1', NULL, 404, 'GET', NULL, '51.141.113.92'),
(5632, '2022-09-06 18:38:01', '/site/wp-admin/setup-config.php?step=1', 'http://dev.goauroratech.com', 'Mozilla/5.0 (Windows NT 6.2; Win64; x64; rv:16.0.1) Gecko/20121011 Firefox/21.0.1', NULL, 404, 'GET', NULL, '51.141.113.92'),
(5633, '2022-09-06 18:38:03', '/test/wp-admin/setup-config.php?step=1', 'http://dev.goauroratech.com', 'Mozilla/5.0 (Windows NT 6.2; Win64; x64; rv:16.0.1) Gecko/20121011 Firefox/21.0.1', NULL, 404, 'GET', NULL, '51.141.113.92'),
(5634, '2022-09-06 19:15:25', '/blog/wp-admin/setup-config.php?step=1', 'http://dev.goauroratech.com', 'Mozilla/5.0 (Windows NT 6.2; Win64; x64; rv:16.0.1) Gecko/20121011 Firefox/21.0.1', NULL, 404, 'GET', NULL, '51.141.113.92'),
(5635, '2022-09-06 19:15:29', '/wordpress/wp-admin/setup-config.php?step=1', 'http://dev.goauroratech.com', 'Mozilla/5.0 (Windows NT 6.2; Win64; x64; rv:16.0.1) Gecko/20121011 Firefox/21.0.1', NULL, 404, 'GET', NULL, '51.141.113.92'),
(5636, '2022-09-06 19:15:33', '/wp/wp-admin/setup-config.php?step=1', 'http://dev.goauroratech.com', 'Mozilla/5.0 (Windows NT 6.2; Win64; x64; rv:16.0.1) Gecko/20121011 Firefox/21.0.1', NULL, 404, 'GET', NULL, '51.141.113.92'),
(5637, '2022-09-06 19:15:39', '/news/wp-admin/setup-config.php?step=1', 'http://dev.goauroratech.com', 'Mozilla/5.0 (Windows NT 6.2; Win64; x64; rv:16.0.1) Gecko/20121011 Firefox/21.0.1', NULL, 404, 'GET', NULL, '51.141.113.92'),
(5638, '2022-09-06 19:15:43', '/site/wp-admin/setup-config.php?step=1', 'http://dev.goauroratech.com', 'Mozilla/5.0 (Windows NT 6.2; Win64; x64; rv:16.0.1) Gecko/20121011 Firefox/21.0.1', NULL, 404, 'GET', NULL, '51.141.113.92'),
(5639, '2022-09-06 19:15:49', '/test/wp-admin/setup-config.php?step=1', 'http://dev.goauroratech.com', 'Mozilla/5.0 (Windows NT 6.2; Win64; x64; rv:16.0.1) Gecko/20121011 Firefox/21.0.1', NULL, 404, 'GET', NULL, '51.141.113.92'),
(5640, '2022-09-08 16:40:55', '/?p=59', 'http://dev.goauroratech.com', 'lua-resty-http/0.10 (Lua) ngx_lua/10019', NULL, 404, 'GET', NULL, '3.237.199.191'),
(5641, '2022-09-09 12:16:27', '/dup-installer/main.installer.php', 'http://dev.goauroratech.com', NULL, NULL, 404, 'GET', NULL, '20.25.144.67'),
(5642, '2022-09-10 11:41:04', '/.aws/credentials', 'http://dev.goauroratech.com', 'Mozilla/5.0 (Linux; Android 10; Pixel Build/QP1A.190711.019; wv) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Mobile Safari/537.36', NULL, 404, 'GET', NULL, '54.251.152.86'),
(5643, '2022-09-10 11:41:05', '/frontend_dev.php/$', 'http://dev.goauroratech.com', 'Mozilla/5.0 (Linux; Android 10; Pixel Build/QP1A.190711.019; wv) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Mobile Safari/537.36', NULL, 404, 'GET', NULL, '54.251.152.86'),
(5644, '2022-09-10 11:41:06', '/phpinfo', 'http://dev.goauroratech.com', 'Mozilla/5.0 (Linux; Android 10; Pixel Build/QP1A.190711.019; wv) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Mobile Safari/537.36', NULL, 404, 'GET', NULL, '54.251.152.86'),
(5645, '2022-09-10 11:41:08', '/pinfo.php', 'http://dev.goauroratech.com', 'Mozilla/5.0 (Linux; Android 10; Pixel Build/QP1A.190711.019; wv) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Mobile Safari/537.36', NULL, 404, 'GET', NULL, '54.251.152.86'),
(5646, '2022-09-10 11:41:10', '/configs/s3_config.json', 'http://dev.goauroratech.com', 'Mozilla/5.0 (Linux; Android 10; Pixel Build/QP1A.190711.019; wv) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Mobile Safari/537.36', NULL, 404, 'GET', NULL, '54.251.152.86'),
(5647, '2022-09-10 11:41:14', '/temp.php', 'http://dev.goauroratech.com', 'Mozilla/5.0 (Linux; Android 10; Pixel Build/QP1A.190711.019; wv) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Mobile Safari/537.36', NULL, 404, 'GET', NULL, '54.251.152.86'),
(5648, '2022-09-10 11:41:15', '/linusadmin-phpinfo.php', 'http://dev.goauroratech.com', 'Mozilla/5.0 (Linux; Android 10; Pixel Build/QP1A.190711.019; wv) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Mobile Safari/537.36', NULL, 404, 'GET', NULL, '54.251.152.86'),
(5649, '2022-09-10 11:41:16', '/php.php', 'http://dev.goauroratech.com', 'Mozilla/5.0 (Linux; Android 10; Pixel Build/QP1A.190711.019; wv) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Mobile Safari/537.36', NULL, 404, 'GET', NULL, '54.251.152.86'),
(5650, '2022-09-10 11:41:17', '/info.php', 'http://dev.goauroratech.com', 'Mozilla/5.0 (Linux; Android 10; Pixel Build/QP1A.190711.019; wv) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Mobile Safari/537.36', NULL, 404, 'GET', NULL, '54.251.152.86'),
(5651, '2022-09-10 11:41:18', '/config/aws.yml', 'http://dev.goauroratech.com', 'Mozilla/5.0 (Linux; Android 10; Pixel Build/QP1A.190711.019; wv) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Mobile Safari/537.36', NULL, 404, 'GET', NULL, '54.251.152.86'),
(5652, '2022-09-10 11:41:19', '/_profiler/phpinfo', 'http://dev.goauroratech.com', 'Mozilla/5.0 (Linux; Android 10; Pixel Build/QP1A.190711.019; wv) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Mobile Safari/537.36', NULL, 404, 'GET', NULL, '54.251.152.86'),
(5653, '2022-09-10 11:41:21', '/infos.php', 'http://dev.goauroratech.com', 'Mozilla/5.0 (Linux; Android 10; Pixel Build/QP1A.190711.019; wv) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Mobile Safari/537.36', NULL, 404, 'GET', NULL, '54.251.152.86'),
(5654, '2022-09-10 11:41:22', '/php_info.php', 'http://dev.goauroratech.com', 'Mozilla/5.0 (Linux; Android 10; Pixel Build/QP1A.190711.019; wv) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Mobile Safari/537.36', NULL, 404, 'GET', NULL, '54.251.152.86'),
(5655, '2022-09-10 11:41:23', '/app_dev.php/_profiler/phpinfo', 'http://dev.goauroratech.com', 'Mozilla/5.0 (Linux; Android 10; Pixel Build/QP1A.190711.019; wv) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Mobile Safari/537.36', NULL, 404, 'GET', NULL, '54.251.152.86'),
(5656, '2022-09-10 11:41:25', '/.aws/config', 'http://dev.goauroratech.com', 'Mozilla/5.0 (Linux; Android 10; Pixel Build/QP1A.190711.019; wv) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Mobile Safari/537.36', NULL, 404, 'GET', NULL, '54.251.152.86'),
(5657, '2022-09-10 11:41:27', '/debug/default/view?panel=config', 'http://dev.goauroratech.com', 'Mozilla/5.0 (Linux; Android 10; Pixel Build/QP1A.190711.019; wv) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Mobile Safari/537.36', NULL, 404, 'GET', NULL, '54.251.152.86'),
(5658, '2022-09-10 11:41:28', '/web/debug/default/view?panel=config', 'http://dev.goauroratech.com', 'Mozilla/5.0 (Linux; Android 10; Pixel Build/QP1A.190711.019; wv) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Mobile Safari/537.36', NULL, 404, 'GET', NULL, '54.251.152.86'),
(5659, '2022-09-10 11:41:29', '/frontend/web/debug/default/view?panel=config', 'http://dev.goauroratech.com', 'Mozilla/5.0 (Linux; Android 10; Pixel Build/QP1A.190711.019; wv) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Mobile Safari/537.36', NULL, 404, 'GET', NULL, '54.251.152.86'),
(5660, '2022-09-10 11:41:30', '/_ignition/health-check', 'http://dev.goauroratech.com', 'Mozilla/5.0 (Linux; Android 10; Pixel Build/QP1A.190711.019; wv) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Mobile Safari/537.36', NULL, 404, 'GET', NULL, '54.251.152.86'),
(5661, '2022-09-10 13:16:36', '/wp-content/themes/seotheme/mar.php', 'http://dev.goauroratech.com', 'Mozlila/5.0 (Linux; Android 7.0; SM-G892A Bulid/NRD90M; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/60.0.3112.107 Moblie Safari/537.36', 'www.google.com', 404, 'GET', NULL, '20.199.72.112'),
(5662, '2022-09-10 13:16:39', '/wp-content/themes/seotheme/mar.php', 'https://dev.goauroratech.com', 'Mozlila/5.0 (Linux; Android 7.0; SM-G892A Bulid/NRD90M; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/60.0.3112.107 Moblie Safari/537.36', 'www.google.com', 404, 'GET', NULL, '20.199.72.112'),
(5663, '2022-09-10 13:16:42', '/wp-commentin.php', 'http://dev.goauroratech.com', 'Mozlila/5.0 (Linux; Android 7.0; SM-G892A Bulid/NRD90M; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/60.0.3112.107 Moblie Safari/537.36', 'www.google.com', 404, 'GET', NULL, '20.199.72.112'),
(5664, '2022-09-10 13:16:46', '/wp-commentin.php', 'https://dev.goauroratech.com', 'Mozlila/5.0 (Linux; Android 7.0; SM-G892A Bulid/NRD90M; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/60.0.3112.107 Moblie Safari/537.36', 'www.google.com', 404, 'GET', NULL, '20.199.72.112'),
(5665, '2022-09-10 13:16:49', '/help.php', 'http://dev.goauroratech.com', 'Mozlila/5.0 (Linux; Android 7.0; SM-G892A Bulid/NRD90M; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/60.0.3112.107 Moblie Safari/537.36', 'www.google.com', 404, 'GET', NULL, '20.199.72.112'),
(5666, '2022-09-10 13:16:52', '/help.php', 'https://dev.goauroratech.com', 'Mozlila/5.0 (Linux; Android 7.0; SM-G892A Bulid/NRD90M; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/60.0.3112.107 Moblie Safari/537.36', 'www.google.com', 404, 'GET', NULL, '20.199.72.112'),
(5667, '2022-09-10 13:17:04', '/xltavrat.php', 'http://dev.goauroratech.com', 'Mozlila/5.0 (Linux; Android 7.0; SM-G892A Bulid/NRD90M; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/60.0.3112.107 Moblie Safari/537.36', 'www.google.com', 404, 'GET', NULL, '20.199.72.112'),
(5668, '2022-09-10 13:17:10', '/xltavrat.php', 'https://dev.goauroratech.com', 'Mozlila/5.0 (Linux; Android 7.0; SM-G892A Bulid/NRD90M; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/60.0.3112.107 Moblie Safari/537.36', 'www.google.com', 404, 'GET', NULL, '20.199.72.112'),
(5669, '2022-09-10 14:53:26', '/.aws/credentials', 'http://dev.goauroratech.com', 'Mozilla/5.0 (Linux; Android 10; Pixel Build/QP1A.190711.019; wv) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Mobile Safari/537.36', NULL, 404, 'GET', NULL, '54.251.152.86'),
(5670, '2022-09-10 14:53:28', '/frontend_dev.php/', 'http://dev.goauroratech.com', 'Mozilla/5.0 (Linux; Android 10; Pixel Build/QP1A.190711.019; wv) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Mobile Safari/537.36', NULL, 404, 'GET', NULL, '54.251.152.86'),
(5671, '2022-09-10 14:53:30', '/phpinfo', 'http://dev.goauroratech.com', 'Mozilla/5.0 (Linux; Android 10; Pixel Build/QP1A.190711.019; wv) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Mobile Safari/537.36', NULL, 404, 'GET', NULL, '54.251.152.86'),
(5672, '2022-09-10 14:53:33', '/pinfo.php', 'http://dev.goauroratech.com', 'Mozilla/5.0 (Linux; Android 10; Pixel Build/QP1A.190711.019; wv) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Mobile Safari/537.36', NULL, 404, 'GET', NULL, '54.251.152.86'),
(5673, '2022-09-11 07:39:14', '/wp/xmlrpc.php', 'http://dev.goauroratech.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36', NULL, 404, 'HEAD', NULL, '20.171.68.237'),
(5674, '2022-09-11 07:39:22', '/wordpress/xmlrpc.php', 'http://dev.goauroratech.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', NULL, 404, 'HEAD', NULL, '20.171.68.237'),
(5675, '2022-09-11 07:39:31', '/old/xmlrpc.php', 'http://dev.goauroratech.com', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:79.0) Gecko/20100101 Firefox/79.0', NULL, 404, 'HEAD', NULL, '20.171.68.237'),
(5676, '2022-09-11 07:39:39', '/new/xmlrpc.php', 'http://dev.goauroratech.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', NULL, 404, 'HEAD', NULL, '20.171.68.237'),
(5677, '2022-09-11 07:39:48', '/blog/xmlrpc.php', 'http://dev.goauroratech.com', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36 OPR/70.0.3728.95', NULL, 404, 'HEAD', NULL, '20.171.68.237'),
(5678, '2022-09-12 15:17:25', '/?p=59', 'http://dev.goauroratech.com', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', NULL, 404, 'GET', NULL, '51.255.62.2'),
(5679, '2022-09-13 11:19:16', '/style.php', 'http://dev.goauroratech.com', 'wp_is_mobile', 'www.bing.com', 404, 'GET', NULL, '142.54.160.66'),
(5680, '2022-09-13 11:19:16', '/wp-admin/style.php', 'http://dev.goauroratech.com', 'wp_is_mobile', 'www.bing.com', 404, 'GET', NULL, '142.54.160.66'),
(5681, '2022-09-13 11:19:17', '/s_e.php', 'http://dev.goauroratech.com', 'wp_is_mobile', 'www.bing.com', 404, 'GET', NULL, '142.54.160.66'),
(5682, '2022-09-13 11:19:17', '/s_ne.php', 'http://dev.goauroratech.com', 'wp_is_mobile', 'www.bing.com', 404, 'GET', NULL, '142.54.160.66'),
(5683, '2022-09-13 11:19:18', '/1index.php', 'http://dev.goauroratech.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36', 'www.bing.com', 404, 'GET', NULL, '142.54.160.66'),
(5684, '2022-09-13 11:19:18', '/radio.php', 'http://dev.goauroratech.com', 'wp_is_mobile', 'www.bing.com', 404, 'GET', NULL, '142.54.160.66'),
(5685, '2022-09-13 11:19:19', '/doc.php', 'http://dev.goauroratech.com', 'wp_is_mobile', 'www.bing.com', 404, 'GET', NULL, '142.54.160.66'),
(5686, '2022-09-13 11:19:20', '/wp_wrong_datlib.php', 'http://dev.goauroratech.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36', 'www.bing.com', 404, 'GET', NULL, '142.54.160.66'),
(5687, '2022-09-13 11:19:20', '/beence.php', 'http://dev.goauroratech.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36', 'www.bing.com', 404, 'GET', NULL, '142.54.160.66'),
(5688, '2022-09-13 11:19:21', '/ups.php', 'http://dev.goauroratech.com', 'wp_is_mobile', 'www.bing.com', 404, 'GET', NULL, '142.54.160.66'),
(5689, '2022-09-13 11:19:21', '/wp-signin.php?dizo&ping', 'http://dev.goauroratech.com', 'wp_is_mobile', 'www.bing.com', 404, 'GET', NULL, '142.54.160.66'),
(5690, '2022-09-13 11:19:22', '/media-admin.php', 'http://dev.goauroratech.com', 'wp_is_mobile', 'www.bing.com', 404, 'GET', NULL, '142.54.160.66'),
(5691, '2022-09-13 11:19:22', '/export.php', 'http://dev.goauroratech.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36', 'www.bing.com', 404, 'GET', NULL, '142.54.160.66'),
(5692, '2022-09-13 11:19:23', '/wp-content/export.php', 'http://dev.goauroratech.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36', 'www.bing.com', 404, 'GET', NULL, '142.54.160.66'),
(5693, '2022-09-13 11:19:23', '/wp-includes/wp-class.php', 'http://dev.goauroratech.com', 'wp_is_mobile', 'www.bing.com', 404, 'GET', NULL, '142.54.160.66'),
(5694, '2022-09-13 11:19:25', '/wp-includes/images/css.php', 'http://dev.goauroratech.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36', 'www.bing.com', 404, 'GET', NULL, '142.54.160.66'),
(5695, '2022-09-13 11:19:25', '/wp-includes/css/css.php', 'http://dev.goauroratech.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36', 'www.bing.com', 404, 'GET', NULL, '142.54.160.66'),
(5696, '2022-09-13 11:19:26', '/defau1t.php', 'http://dev.goauroratech.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36', 'www.bing.com', 404, 'GET', NULL, '142.54.160.66'),
(5697, '2022-09-13 11:19:26', '/moduless.php', 'http://dev.goauroratech.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36', 'www.bing.com', 404, 'GET', NULL, '142.54.160.66'),
(5698, '2022-09-13 11:19:27', '/wp-booking.php', 'http://dev.goauroratech.com', 'wp_is_mobile', 'www.bing.com', 404, 'GET', NULL, '142.54.160.66'),
(5699, '2022-09-13 11:19:28', '/wp-content/mu-plugins/db-safe-mode.php', 'http://dev.goauroratech.com', 'wp_is_mobile', 'www.bing.com', 404, 'GET', NULL, '142.54.160.66'),
(5700, '2022-09-13 11:19:30', '/legion.php', 'http://dev.goauroratech.com', 'wp_is_mobile', 'www.bing.com', 404, 'GET', NULL, '142.54.160.66'),
(5701, '2022-09-13 11:19:31', '/wp-plugins.php', 'http://dev.goauroratech.com', 'wp_is_mobile', 'www.bing.com', 404, 'GET', NULL, '142.54.160.66'),
(5702, '2022-09-13 11:19:38', '/gank.php.PhP', 'http://dev.goauroratech.com', 'wp_is_mobile', 'www.bing.com', 404, 'GET', NULL, '142.54.160.66'),
(5703, '2022-09-13 11:19:41', '/wp-content/db-cache.php', 'http://dev.goauroratech.com', 'wp_is_mobile', 'www.bing.com', 404, 'GET', NULL, '142.54.160.66'),
(5704, '2022-09-13 11:19:42', '/archives.php', 'http://dev.goauroratech.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36', 'www.bing.com', 404, 'GET', NULL, '142.54.160.66'),
(5705, '2022-09-13 11:19:42', '/defau11.php', 'http://dev.goauroratech.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36', 'www.bing.com', 404, 'GET', NULL, '142.54.160.66'),
(5706, '2022-09-13 11:19:43', '/wp-content/outcms.php?up', 'http://dev.goauroratech.com', 'wp_is_mobile', 'www.bing.com', 404, 'GET', NULL, '142.54.160.66'),
(5707, '2022-09-13 11:19:43', '/system_log.php?bala=up', 'http://dev.goauroratech.com', 'wp_is_mobile', 'www.bing.com', 404, 'GET', NULL, '142.54.160.66'),
(5708, '2022-09-13 11:19:44', '/wp-backup-sql-302.php', 'http://dev.goauroratech.com', 'wp_is_mobile', 'www.bing.com', 404, 'GET', NULL, '142.54.160.66'),
(5709, '2022-09-13 11:19:46', '/ALFA_DATA', 'http://dev.goauroratech.com', 'wp_is_mobile', 'www.bing.com', 404, 'GET', NULL, '142.54.160.66'),
(5710, '2022-09-13 11:19:47', '/alfacgiapi', 'http://dev.goauroratech.com', 'wp_is_mobile', 'www.bing.com', 404, 'GET', NULL, '142.54.160.66'),
(5711, '2022-09-13 11:19:47', '/cgialfa', 'http://dev.goauroratech.com', 'wp_is_mobile', 'www.bing.com', 404, 'GET', NULL, '142.54.160.66'),
(5712, '2022-09-13 11:19:48', '/.well-known/ALFA_DATA', 'http://dev.goauroratech.com', 'wp_is_mobile', 'www.bing.com', 404, 'GET', NULL, '142.54.160.66'),
(5713, '2022-09-13 11:19:48', '/.well-known/alfacgiapi', 'http://dev.goauroratech.com', 'wp_is_mobile', 'www.bing.com', 404, 'GET', NULL, '142.54.160.66'),
(5714, '2022-09-13 11:19:53', '/.well-known/cgialfa', 'http://dev.goauroratech.com', 'wp_is_mobile', 'www.bing.com', 404, 'GET', NULL, '142.54.160.66'),
(5715, '2022-09-13 11:19:54', '/wp-includes/ALFA_DATA', 'http://dev.goauroratech.com', 'wp_is_mobile', 'www.bing.com', 404, 'GET', NULL, '142.54.160.66'),
(5716, '2022-09-13 11:19:54', '/wp-includes/alfacgiapi', 'http://dev.goauroratech.com', 'wp_is_mobile', 'www.bing.com', 404, 'GET', NULL, '142.54.160.66'),
(5717, '2022-09-13 11:19:55', '/wp-includes/cgialfa', 'http://dev.goauroratech.com', 'wp_is_mobile', 'www.bing.com', 404, 'GET', NULL, '142.54.160.66'),
(5718, '2022-09-13 11:19:55', '/wp-admin/ALFA_DATA', 'http://dev.goauroratech.com', 'wp_is_mobile', 'www.bing.com', 404, 'GET', NULL, '142.54.160.66'),
(5719, '2022-09-13 11:19:56', '/wp-admin/alfacgiapi', 'http://dev.goauroratech.com', 'wp_is_mobile', 'www.bing.com', 404, 'GET', NULL, '142.54.160.66'),
(5720, '2022-09-13 11:19:57', '/wp-admin/cgialfa', 'http://dev.goauroratech.com', 'wp_is_mobile', 'www.bing.com', 404, 'GET', NULL, '142.54.160.66'),
(5721, '2022-09-13 11:19:57', '/wp-content/ALFA_DATA', 'http://dev.goauroratech.com', 'wp_is_mobile', 'www.bing.com', 404, 'GET', NULL, '142.54.160.66'),
(5722, '2022-09-13 11:19:57', '/wp-content/alfacgiapi', 'http://dev.goauroratech.com', 'wp_is_mobile', 'www.bing.com', 404, 'GET', NULL, '142.54.160.66'),
(5723, '2022-09-13 11:19:58', '/wp-content/cgialfa', 'http://dev.goauroratech.com', 'wp_is_mobile', 'www.bing.com', 404, 'GET', NULL, '142.54.160.66'),
(5724, '2022-09-13 11:19:58', '/templates/beez3/ALFA_DATA', 'http://dev.goauroratech.com', 'wp_is_mobile', 'www.bing.com', 404, 'GET', NULL, '142.54.160.66'),
(5725, '2022-09-13 11:19:59', '/templates/beez3/alfacgiapi', 'http://dev.goauroratech.com', 'wp_is_mobile', 'www.bing.com', 404, 'GET', NULL, '142.54.160.66'),
(5726, '2022-09-13 11:20:00', '/templates/beez3/cgialfa', 'http://dev.goauroratech.com', 'wp_is_mobile', 'www.bing.com', 404, 'GET', NULL, '142.54.160.66'),
(5727, '2022-09-13 11:20:00', '/sites/default/files/ALFA_DATA', 'http://dev.goauroratech.com', 'wp_is_mobile', 'www.bing.com', 404, 'GET', NULL, '142.54.160.66'),
(5728, '2022-09-13 11:20:01', '/sites/default/files/alfacgiapi', 'http://dev.goauroratech.com', 'wp_is_mobile', 'www.bing.com', 404, 'GET', NULL, '142.54.160.66'),
(5729, '2022-09-13 11:20:01', '/sites/default/files/cgialfa', 'http://dev.goauroratech.com', 'wp_is_mobile', 'www.bing.com', 404, 'GET', NULL, '142.54.160.66'),
(5730, '2022-09-13 11:20:01', '/admin/controller/extension/extension/ALFA_DATA', 'http://dev.goauroratech.com', 'wp_is_mobile', 'www.bing.com', 404, 'GET', NULL, '142.54.160.66'),
(5731, '2022-09-13 11:20:02', '/admin/controller/extension/extension/alfacgiapi', 'http://dev.goauroratech.com', 'wp_is_mobile', 'www.bing.com', 404, 'GET', NULL, '142.54.160.66'),
(5732, '2022-09-13 11:20:03', '/admin/controller/extension/extension/cgialfa', 'http://dev.goauroratech.com', 'wp_is_mobile', 'www.bing.com', 404, 'GET', NULL, '142.54.160.66'),
(5733, '2022-09-13 11:20:05', '/olux.php', 'http://dev.goauroratech.com', 'wp_is_mobile', 'www.bing.com', 404, 'GET', NULL, '142.54.160.66'),
(5734, '2022-09-13 11:20:05', '/xleet.php', 'http://dev.goauroratech.com', 'wp_is_mobile', 'www.bing.com', 404, 'GET', NULL, '142.54.160.66'),
(5735, '2022-09-13 11:20:05', '/wso.php', 'http://dev.goauroratech.com', 'wp_is_mobile', 'www.bing.com', 404, 'GET', NULL, '142.54.160.66'),
(5736, '2022-09-13 11:20:06', '/up.php', 'http://dev.goauroratech.com', 'wp_is_mobile', 'www.bing.com', 404, 'GET', NULL, '142.54.160.66'),
(5737, '2022-09-13 11:20:06', '/upload.php', 'http://dev.goauroratech.com', 'wp_is_mobile', 'www.bing.com', 404, 'GET', NULL, '142.54.160.66'),
(5738, '2022-09-13 11:20:07', '/1.php', 'http://dev.goauroratech.com', 'wp_is_mobile', 'www.bing.com', 404, 'GET', NULL, '142.54.160.66'),
(5739, '2022-09-13 11:20:07', '/x.php', 'http://dev.goauroratech.com', 'wp_is_mobile', 'www.bing.com', 404, 'GET', NULL, '142.54.160.66'),
(5740, '2022-09-13 11:20:08', '/z.php', 'http://dev.goauroratech.com', 'wp_is_mobile', 'www.bing.com', 404, 'GET', NULL, '142.54.160.66'),
(5741, '2022-09-13 11:20:08', '/a.php', 'http://dev.goauroratech.com', 'wp_is_mobile', 'www.bing.com', 404, 'GET', NULL, '142.54.160.66'),
(5742, '2022-09-13 11:20:08', '/test.php', 'http://dev.goauroratech.com', 'wp_is_mobile', 'www.bing.com', 404, 'GET', NULL, '142.54.160.66'),
(5743, '2022-09-13 11:20:09', '/wp.php', 'http://dev.goauroratech.com', 'wp_is_mobile', 'www.bing.com', 404, 'GET', NULL, '142.54.160.66'),
(5744, '2022-09-13 11:20:09', '/alfa.php', 'http://dev.goauroratech.com', 'wp_is_mobile', 'www.bing.com', 404, 'GET', NULL, '142.54.160.66'),
(5745, '2022-09-13 11:20:10', '/templates/beez3/', 'http://dev.goauroratech.com', 'wp_is_mobile', 'www.bing.com', 404, 'GET', NULL, '142.54.160.66'),
(5746, '2022-09-13 11:20:11', '/about.php', 'http://dev.goauroratech.com', 'wp_is_mobile', 'www.bing.com', 404, 'GET', NULL, '142.54.160.66'),
(5747, '2022-09-13 11:20:11', '/shells.php', 'http://dev.goauroratech.com', 'wp_is_mobile', 'www.bing.com', 404, 'GET', NULL, '142.54.160.66'),
(5748, '2022-09-14 04:02:06', '/wp-commentin.php', 'http://dev.goauroratech.com', 'Mozlila/5.0 (Linux; Android 7.0; SM-G892A Bulid/NRD90M; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/60.0.3112.107 Moblie Safari/537.36', 'www.google.com', 404, 'GET', NULL, '135.181.254.222'),
(5749, '2022-09-14 04:02:10', '/wp/wp-commentin.php', 'http://dev.goauroratech.com', 'Mozlila/5.0 (Linux; Android 7.0; SM-G892A Bulid/NRD90M; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/60.0.3112.107 Moblie Safari/537.36', 'www.google.com', 404, 'GET', NULL, '135.181.254.222'),
(5750, '2022-09-14 04:02:16', '/wordpress/wp-commentin.php', 'http://dev.goauroratech.com', 'Mozlila/5.0 (Linux; Android 7.0; SM-G892A Bulid/NRD90M; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/60.0.3112.107 Moblie Safari/537.36', 'www.google.com', 404, 'GET', NULL, '135.181.254.222'),
(5751, '2022-09-14 04:02:21', '/blog/wp-commentin.php', 'http://dev.goauroratech.com', 'Mozlila/5.0 (Linux; Android 7.0; SM-G892A Bulid/NRD90M; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/60.0.3112.107 Moblie Safari/537.36', 'www.google.com', 404, 'GET', NULL, '135.181.254.222'),
(5752, '2022-09-14 04:02:26', '/site/wp-commentin.php', 'http://dev.goauroratech.com', 'Mozlila/5.0 (Linux; Android 7.0; SM-G892A Bulid/NRD90M; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/60.0.3112.107 Moblie Safari/537.36', 'www.google.com', 404, 'GET', NULL, '135.181.254.222'),
(5753, '2022-09-14 04:20:41', '/wp-commentin.php', 'http://dev.goauroratech.com', 'Mozlila/5.0 (Linux; Android 7.0; SM-G892A Bulid/NRD90M; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/60.0.3112.107 Moblie Safari/537.36', 'www.google.com', 404, 'GET', NULL, '135.181.254.222'),
(5754, '2022-09-14 04:20:53', '/wp/wp-commentin.php', 'http://dev.goauroratech.com', 'Mozlila/5.0 (Linux; Android 7.0; SM-G892A Bulid/NRD90M; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/60.0.3112.107 Moblie Safari/537.36', 'www.google.com', 404, 'GET', NULL, '135.181.254.222'),
(5755, '2022-09-14 04:21:04', '/wordpress/wp-commentin.php', 'http://dev.goauroratech.com', 'Mozlila/5.0 (Linux; Android 7.0; SM-G892A Bulid/NRD90M; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/60.0.3112.107 Moblie Safari/537.36', 'www.google.com', 404, 'GET', NULL, '135.181.254.222'),
(5756, '2022-09-14 04:21:17', '/blog/wp-commentin.php', 'http://dev.goauroratech.com', 'Mozlila/5.0 (Linux; Android 7.0; SM-G892A Bulid/NRD90M; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/60.0.3112.107 Moblie Safari/537.36', 'www.google.com', 404, 'GET', NULL, '135.181.254.222'),
(5757, '2022-09-14 04:21:31', '/site/wp-commentin.php', 'http://dev.goauroratech.com', 'Mozlila/5.0 (Linux; Android 7.0; SM-G892A Bulid/NRD90M; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/60.0.3112.107 Moblie Safari/537.36', 'www.google.com', 404, 'GET', NULL, '135.181.254.222'),
(5758, '2022-09-14 13:36:21', '/blog/wp-admin/setup-config.php?step=1', 'http://dev.goauroratech.com', 'Mozilla/5.0 (Windows x86; rv:19.0) Gecko/20100101 Firefox/19.0', NULL, 404, 'GET', NULL, '20.0.31.172'),
(5759, '2022-09-14 13:36:24', '/wordpress/wp-admin/setup-config.php?step=1', 'http://dev.goauroratech.com', 'Mozilla/5.0 (Windows x86; rv:19.0) Gecko/20100101 Firefox/19.0', NULL, 404, 'GET', NULL, '20.0.31.172'),
(5760, '2022-09-14 13:36:26', '/wp/wp-admin/setup-config.php?step=1', 'http://dev.goauroratech.com', 'Mozilla/5.0 (Windows x86; rv:19.0) Gecko/20100101 Firefox/19.0', NULL, 404, 'GET', NULL, '20.0.31.172'),
(5761, '2022-09-14 13:36:33', '/news/wp-admin/setup-config.php?step=1', 'http://dev.goauroratech.com', 'Mozilla/5.0 (Windows x86; rv:19.0) Gecko/20100101 Firefox/19.0', NULL, 404, 'GET', NULL, '20.0.31.172'),
(5762, '2022-09-14 13:36:36', '/site/wp-admin/setup-config.php?step=1', 'http://dev.goauroratech.com', 'Mozilla/5.0 (Windows x86; rv:19.0) Gecko/20100101 Firefox/19.0', NULL, 404, 'GET', NULL, '20.0.31.172'),
(5763, '2022-09-14 13:36:39', '/test/wp-admin/setup-config.php?step=1', 'http://dev.goauroratech.com', 'Mozilla/5.0 (Windows x86; rv:19.0) Gecko/20100101 Firefox/19.0', NULL, 404, 'GET', NULL, '20.0.31.172'),
(5764, '2022-09-14 14:29:09', '/blog/wp-admin/setup-config.php?step=1', 'http://dev.goauroratech.com', 'Mozilla/5.0 (Windows x86; rv:19.0) Gecko/20100101 Firefox/19.0', NULL, 404, 'GET', NULL, '20.0.31.172'),
(5765, '2022-09-14 14:29:15', '/wordpress/wp-admin/setup-config.php?step=1', 'http://dev.goauroratech.com', 'Mozilla/5.0 (Windows x86; rv:19.0) Gecko/20100101 Firefox/19.0', NULL, 404, 'GET', NULL, '20.0.31.172'),
(5766, '2022-09-14 14:29:20', '/wp/wp-admin/setup-config.php?step=1', 'http://dev.goauroratech.com', 'Mozilla/5.0 (Windows x86; rv:19.0) Gecko/20100101 Firefox/19.0', NULL, 404, 'GET', NULL, '20.0.31.172'),
(5767, '2022-09-14 14:29:27', '/news/wp-admin/setup-config.php?step=1', 'http://dev.goauroratech.com', 'Mozilla/5.0 (Windows x86; rv:19.0) Gecko/20100101 Firefox/19.0', NULL, 404, 'GET', NULL, '20.0.31.172'),
(5768, '2022-09-14 14:29:33', '/site/wp-admin/setup-config.php?step=1', 'http://dev.goauroratech.com', 'Mozilla/5.0 (Windows x86; rv:19.0) Gecko/20100101 Firefox/19.0', NULL, 404, 'GET', NULL, '20.0.31.172'),
(5769, '2022-09-14 14:29:39', '/test/wp-admin/setup-config.php?step=1', 'http://dev.goauroratech.com', 'Mozilla/5.0 (Windows x86; rv:19.0) Gecko/20100101 Firefox/19.0', NULL, 404, 'GET', NULL, '20.0.31.172'),
(5770, '2022-09-18 11:46:59', '/wp-content/languages/', 'http://dev.goauroratech.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36', 'binance.com', 404, 'GET', NULL, '92.205.56.212'),
(5771, '2022-09-21 22:50:46', '/wp-content/themes/seotheme/mar.php', 'http://dev.goauroratech.com', 'Mozlila/5.0 (Linux; Android 7.0; SM-G892A Bulid/NRD90M; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/60.0.3112.107 Moblie Safari/537.36', 'www.google.com', 404, 'GET', NULL, '65.109.6.118'),
(5772, '2022-09-21 22:50:50', '/wp-content/themes/seotheme/mar.php', 'https://dev.goauroratech.com', 'Mozlila/5.0 (Linux; Android 7.0; SM-G892A Bulid/NRD90M; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/60.0.3112.107 Moblie Safari/537.36', 'www.google.com', 404, 'GET', NULL, '65.109.6.118'),
(5773, '2022-09-21 22:50:58', '/wp-includes/shell20211028.php', 'http://dev.goauroratech.com', 'Mozlila/5.0 (Linux; Android 7.0; SM-G892A Bulid/NRD90M; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/60.0.3112.107 Moblie Safari/537.36', 'www.google.com', 404, 'GET', NULL, '65.109.6.118'),
(5774, '2022-09-21 22:51:07', '/wp-includes/shell20211028.php', 'https://dev.goauroratech.com', 'Mozlila/5.0 (Linux; Android 7.0; SM-G892A Bulid/NRD90M; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/60.0.3112.107 Moblie Safari/537.36', 'www.google.com', 404, 'GET', NULL, '65.109.6.118'),
(5775, '2022-09-26 01:05:05', '/debug/default/view?panel=config', 'http://dev.goauroratech.com', 'Go-http-client/1.1', NULL, 404, 'GET', NULL, '45.79.228.101'),
(5776, '2022-09-26 01:05:05', '/ecp/Current/exporttool/microsoft.exchange.ediscovery.exporttool.application', 'http://dev.goauroratech.com', 'Go-http-client/1.1', NULL, 404, 'GET', NULL, '45.79.228.101'),
(5777, '2022-09-26 01:05:05', '/info.php', 'http://dev.goauroratech.com', 'Go-http-client/1.1', NULL, 404, 'GET', NULL, '45.79.228.101'),
(5778, '2022-09-26 01:05:05', '/telescope/requests', 'http://dev.goauroratech.com', 'Go-http-client/1.1', NULL, 404, 'GET', NULL, '45.79.228.101'),
(5779, '2022-09-26 01:05:05', '/s/3139392e3235302e3232312e3132/_/;/META-INF/maven/com.atlassian.jira/jira-webapp-dist/pom.properties', 'http://dev.goauroratech.com', 'Go-http-client/1.1', NULL, 404, 'GET', NULL, '45.79.228.101'),
(5780, '2022-09-26 01:05:05', '/server-status', 'http://dev.goauroratech.com', 'Go-http-client/1.1', NULL, 404, 'GET', NULL, '45.79.228.101'),
(5781, '2022-09-26 01:05:07', '/v2/_catalog', 'http://dev.goauroratech.com', 'Go-http-client/1.1', NULL, 404, 'GET', NULL, '45.79.228.101'),
(5782, '2022-09-26 01:05:08', '/api/search?folderIds=0', 'http://dev.goauroratech.com', 'Go-http-client/1.1', NULL, 404, 'GET', NULL, '45.79.228.101'),
(5783, '2022-09-26 01:05:08', '/login.action', 'http://dev.goauroratech.com', 'Go-http-client/1.1', NULL, 404, 'GET', NULL, '45.79.228.101'),
(5784, '2022-09-26 01:05:08', '/debug/default/view?panel=config', 'https://dev.goauroratech.com', 'Go-http-client/1.1', NULL, 404, 'GET', NULL, '45.79.228.101'),
(5785, '2022-09-26 01:05:08', '/telescope/requests', 'https://dev.goauroratech.com', 'Go-http-client/1.1', NULL, 404, 'GET', NULL, '45.79.228.101'),
(5786, '2022-09-26 01:05:09', '/info.php', 'https://dev.goauroratech.com', 'Go-http-client/1.1', NULL, 404, 'GET', NULL, '45.79.228.101'),
(5787, '2022-09-26 01:05:09', '/s/3139392e3235302e3232312e3132/_/;/META-INF/maven/com.atlassian.jira/jira-webapp-dist/pom.properties', 'https://dev.goauroratech.com', 'Go-http-client/1.1', NULL, 404, 'GET', NULL, '45.79.228.101'),
(5788, '2022-09-26 01:05:09', '/server-status', 'https://dev.goauroratech.com', 'Go-http-client/1.1', NULL, 404, 'GET', NULL, '45.79.228.101'),
(5789, '2022-09-26 01:05:09', '/ecp/Current/exporttool/microsoft.exchange.ediscovery.exporttool.application', 'https://dev.goauroratech.com', 'Go-http-client/1.1', NULL, 404, 'GET', NULL, '45.79.228.101'),
(5790, '2022-09-26 01:05:10', '/v2/_catalog', 'https://dev.goauroratech.com', 'Go-http-client/1.1', NULL, 404, 'GET', NULL, '45.79.228.101'),
(5791, '2022-09-26 01:05:10', '/login.action', 'https://dev.goauroratech.com', 'Go-http-client/1.1', NULL, 404, 'GET', NULL, '45.79.228.101'),
(5792, '2022-09-26 01:05:10', '/api/search?folderIds=0', 'https://dev.goauroratech.com', 'Go-http-client/1.1', NULL, 404, 'GET', NULL, '45.79.228.101'),
(5793, '2022-10-02 23:49:22', '/style.php?sig=rename', 'http://dev.goauroratech.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:89.0) Gecko/20100101 Firefox/89.0', NULL, 404, 'GET', NULL, '45.79.59.176'),
(5794, '2022-10-04 13:33:35', '/?p=59', 'http://dev.goauroratech.com', 'lua-resty-http/0.10 (Lua) ngx_lua/10019', NULL, 404, 'GET', NULL, '3.237.76.170'),
(5795, '2022-10-04 13:33:35', '/?p=59', 'http://dev.goauroratech.com', 'lua-resty-http/0.10 (Lua) ngx_lua/10019', NULL, 404, 'GET', NULL, '3.239.45.78'),
(5796, '2022-10-04 16:03:31', '/wp-commentin.php', 'http://dev.goauroratech.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', NULL, 404, 'GET', NULL, '178.18.244.213'),
(5797, '2022-10-04 22:21:46', '/dup-installer/main.installer.php', 'http://dev.goauroratech.com', NULL, NULL, 404, 'GET', NULL, '20.169.54.203'),
(5798, '2022-10-04 22:26:36', '/wordpress/', 'http://dev.goauroratech.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3125.31 Safari/537.36', NULL, 404, 'GET', NULL, '20.169.54.203'),
(5799, '2022-10-05 06:58:25', '/style.php?sig=rename', 'http://dev.goauroratech.com', 'Mozilla/5.0 (Linux; Android 7.1.1; Nokia 2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.83 Mobile Safari/537.36', NULL, 404, 'GET', NULL, '52.3.204.32'),
(5800, '2022-10-06 14:42:38', '/?p=59', 'http://dev.goauroratech.com', 'lua-resty-http/0.10 (Lua) ngx_lua/10019', NULL, 404, 'GET', NULL, '18.206.199.142'),
(5801, '2022-10-06 14:42:38', '/?p=59', 'http://dev.goauroratech.com', 'lua-resty-http/0.10 (Lua) ngx_lua/10019', NULL, 404, 'GET', NULL, '18.206.199.142'),
(5802, '2022-10-07 01:45:04', '/wp-content/languages/', 'http://dev.goauroratech.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36', 'binance.com', 404, 'GET', NULL, '92.205.56.212'),
(5803, '2022-10-07 05:18:24', '/wordpress', 'http://dev.goauroratech.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', NULL, 404, 'HEAD', NULL, '5.189.171.179'),
(5804, '2022-10-07 05:18:25', '/wp', 'http://dev.goauroratech.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', NULL, 404, 'HEAD', NULL, '5.189.171.179'),
(5805, '2022-10-07 05:18:25', '/bc', 'http://dev.goauroratech.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', NULL, 404, 'HEAD', NULL, '5.189.171.179'),
(5806, '2022-10-07 05:18:26', '/bk', 'http://dev.goauroratech.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', NULL, 404, 'HEAD', NULL, '5.189.171.179'),
(5807, '2022-10-07 05:18:26', '/backup', 'http://dev.goauroratech.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', NULL, 404, 'HEAD', NULL, '5.189.171.179'),
(5808, '2022-10-07 05:18:26', '/old', 'http://dev.goauroratech.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', NULL, 404, 'HEAD', NULL, '5.189.171.179'),
(5809, '2022-10-07 05:18:27', '/new', 'http://dev.goauroratech.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', NULL, 404, 'HEAD', NULL, '5.189.171.179'),
(5810, '2022-10-07 05:18:27', '/main', 'http://dev.goauroratech.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', NULL, 404, 'HEAD', NULL, '5.189.171.179'),
(5811, '2022-10-11 18:53:39', '/Deadcode1975xxxxxxxxxxxxxxxxxxxxxxxxxxxx.php', 'http://dev.goauroratech.com', 'Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US; rv:1.9.1.5) Gecko/20091102 Firefox/3.5.5 (.NET CLR 3.5.30729)', NULL, 404, 'GET', NULL, '20.0.152.65');
INSERT INTO `wp_redirection_404` (`id`, `created`, `url`, `domain`, `agent`, `referrer`, `http_code`, `request_method`, `request_data`, `ip`) VALUES
(5812, '2022-10-11 18:53:40', '/wp-commentin.php', 'http://dev.goauroratech.com', 'Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US; rv:1.9.1.5) Gecko/20091102 Firefox/3.5.5 (.NET CLR 3.5.30729)', NULL, 404, 'GET', NULL, '20.0.152.65'),
(5813, '2022-10-12 13:22:46', '/?p=59', 'http://dev.goauroratech.com', 'lua-resty-http/0.10 (Lua) ngx_lua/10019', NULL, 404, 'GET', NULL, '54.147.246.36'),
(5814, '2022-10-12 13:22:47', '/?p=59', 'http://dev.goauroratech.com', 'lua-resty-http/0.10 (Lua) ngx_lua/10019', NULL, 404, 'GET', NULL, '3.238.44.255'),
(5815, '2022-10-12 13:46:36', '/?p=59', 'http://dev.goauroratech.com', 'lua-resty-http/0.10 (Lua) ngx_lua/10019', NULL, 404, 'GET', NULL, '3.91.194.240'),
(5816, '2022-10-12 15:33:03', '/?p=59', 'http://dev.goauroratech.com', 'lua-resty-http/0.10 (Lua) ngx_lua/10019', NULL, 404, 'GET', NULL, '3.237.76.170'),
(5817, '2022-10-13 03:52:52', '/wp-commentin.php', 'http://dev.goauroratech.com', 'Mozilla/5.0 (Linux; arm_64; Android 8.0.0; ZE520KL) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 YaBrowser/21.2.0.223.00 SA/3 Mobile Safari/537.36', NULL, 404, 'GET', NULL, '159.65.24.108'),
(5818, '2022-10-13 19:41:29', '/app-ads.txt', 'http://dev.goauroratech.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko; compatible; BW/1.1; bit.ly/3eZNDnO; a5c03a70ba) Chrome/84.0.4147.105 Safari/537.36', NULL, 404, 'GET', NULL, '35.206.247.151'),
(5819, '2022-10-14 20:16:44', '/_ignition/execute-solution', 'https://dev.goauroratech.com', 'python-requests/2.18.4', NULL, 404, 'GET', NULL, '167.99.72.252'),
(5820, '2022-10-15 12:58:09', '/Deadcode1975xxxxxxxxxxxxxxxxxxxxxxxxxxxx.php', 'http://dev.goauroratech.com', 'Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US; rv:1.9.1.5) Gecko/20091102 Firefox/3.5.5 (.NET CLR 3.5.30729)', NULL, 404, 'GET', NULL, '51.103.92.149'),
(5821, '2022-10-15 12:58:10', '/wp-commentin.php', 'http://dev.goauroratech.com', 'Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US; rv:1.9.1.5) Gecko/20091102 Firefox/3.5.5 (.NET CLR 3.5.30729)', NULL, 404, 'GET', NULL, '51.103.92.149'),
(5822, '2022-10-15 12:58:12', '/xltavrat.php', 'http://dev.goauroratech.com', 'Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US; rv:1.9.1.5) Gecko/20091102 Firefox/3.5.5 (.NET CLR 3.5.30729)', NULL, 404, 'GET', NULL, '51.103.92.149'),
(5823, '2022-10-15 12:58:13', '/xleet-shell.php', 'http://dev.goauroratech.com', 'Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US; rv:1.9.1.5) Gecko/20091102 Firefox/3.5.5 (.NET CLR 3.5.30729)', NULL, 404, 'GET', NULL, '51.103.92.149'),
(5824, '2022-10-15 12:58:14', '/xleet.php', 'http://dev.goauroratech.com', 'Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US; rv:1.9.1.5) Gecko/20091102 Firefox/3.5.5 (.NET CLR 3.5.30729)', NULL, 404, 'GET', NULL, '51.103.92.149'),
(5825, '2022-10-15 12:58:17', '/wp-content/themes/seotheme/mar.php', 'http://dev.goauroratech.com', 'Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US; rv:1.9.1.5) Gecko/20091102 Firefox/3.5.5 (.NET CLR 3.5.30729)', NULL, 404, 'GET', NULL, '51.103.92.149'),
(5826, '2022-10-15 13:16:44', '/wp-content/themes/seotheme/mar.php', 'http://dev.goauroratech.com', 'Mozlila/5.0 (Linux; Android 7.0; SM-G892A Bulid/NRD90M; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/60.0.3112.107 Moblie Safari/537.36', 'www.google.com', 404, 'GET', NULL, '20.168.55.190'),
(5827, '2022-10-15 13:16:49', '/wp-content/themes/seotheme/mar.php', 'https://dev.goauroratech.com', 'Mozlila/5.0 (Linux; Android 7.0; SM-G892A Bulid/NRD90M; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/60.0.3112.107 Moblie Safari/537.36', 'www.google.com', 404, 'GET', NULL, '20.168.55.190'),
(5828, '2022-10-15 13:17:27', '/wp-includes/shell20211028.php', 'http://dev.goauroratech.com', 'Mozlila/5.0 (Linux; Android 7.0; SM-G892A Bulid/NRD90M; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/60.0.3112.107 Moblie Safari/537.36', 'www.google.com', 404, 'GET', NULL, '20.168.55.190'),
(5829, '2022-10-15 13:17:28', '/wp-includes/shell20211028.php', 'https://dev.goauroratech.com', 'Mozlila/5.0 (Linux; Android 7.0; SM-G892A Bulid/NRD90M; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/60.0.3112.107 Moblie Safari/537.36', 'www.google.com', 404, 'GET', NULL, '20.168.55.190'),
(5830, '2022-10-15 13:17:35', '/1index.php', 'http://dev.goauroratech.com', 'Mozlila/5.0 (Linux; Android 7.0; SM-G892A Bulid/NRD90M; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/60.0.3112.107 Moblie Safari/537.36', 'www.google.com', 404, 'GET', NULL, '20.168.55.190'),
(5831, '2022-10-15 13:17:37', '/1index.php', 'https://dev.goauroratech.com', 'Mozlila/5.0 (Linux; Android 7.0; SM-G892A Bulid/NRD90M; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/60.0.3112.107 Moblie Safari/537.36', 'www.google.com', 404, 'GET', NULL, '20.168.55.190'),
(5832, '2022-10-19 07:37:27', '/?p=59', 'http://dev.goauroratech.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', NULL, 404, 'GET', NULL, '104.28.198.247'),
(5833, '2022-10-19 18:42:30', '/Deadcode1975xxxxxxxxxxxxxxxxxxxxxxxxxxxx.php', 'http://dev.goauroratech.com', 'Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US; rv:1.9.1.5) Gecko/20091102 Firefox/3.5.5 (.NET CLR 3.5.30729)', NULL, 404, 'GET', NULL, '4.233.129.178'),
(5834, '2022-10-19 18:42:31', '/wp-commentin.php', 'http://dev.goauroratech.com', 'Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US; rv:1.9.1.5) Gecko/20091102 Firefox/3.5.5 (.NET CLR 3.5.30729)', NULL, 404, 'GET', NULL, '4.233.129.178'),
(5835, '2022-10-19 18:42:32', '/wp_wrong_datlib.php', 'http://dev.goauroratech.com', 'Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US; rv:1.9.1.5) Gecko/20091102 Firefox/3.5.5 (.NET CLR 3.5.30729)', NULL, 404, 'GET', NULL, '4.233.129.178'),
(5836, '2022-10-19 18:42:32', '/defaul1.php', 'http://dev.goauroratech.com', 'Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US; rv:1.9.1.5) Gecko/20091102 Firefox/3.5.5 (.NET CLR 3.5.30729)', NULL, 404, 'GET', NULL, '4.233.129.178'),
(5837, '2022-10-21 01:58:36', '/?p=59', 'http://dev.goauroratech.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', NULL, 404, 'GET', NULL, '8.21.110.40'),
(5838, '2022-10-21 04:21:43', '/?p=59', 'http://dev.goauroratech.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', NULL, 404, 'GET', NULL, '104.28.230.246'),
(5839, '2022-10-22 02:20:48', '/?p=59', 'http://dev.goauroratech.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', NULL, 404, 'GET', NULL, '104.28.230.246'),
(5840, '2022-10-22 22:36:29', '/?p=59', 'http://dev.goauroratech.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', NULL, 404, 'GET', NULL, '104.28.230.246'),
(5841, '2022-10-23 14:31:01', '/wp-commentin.php', 'http://dev.goauroratech.com', 'Mozilla/5.0 (Linux; Android 9; SAMSUNG SM-G950F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/12.1 Chrome/79.0.3945.136 Mobile Safari/537.36', NULL, 404, 'GET', NULL, '147.91.144.5'),
(5842, '2022-10-23 19:09:02', '/?p=59', 'http://dev.goauroratech.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', NULL, 404, 'GET', NULL, '8.21.110.40'),
(5843, '2022-10-23 23:38:01', '/?p=59', 'http://dev.goauroratech.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', NULL, 404, 'GET', NULL, '104.28.230.246'),
(5844, '2022-10-24 03:26:33', '/?p=59', 'http://dev.goauroratech.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', NULL, 404, 'GET', NULL, '104.28.230.246'),
(5845, '2022-10-26 19:50:03', '/style.php?sig=rename', 'http://dev.goauroratech.com', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 YaBrowser/20.9.3.136 Yowser/2.5 Safari/537.36', NULL, 404, 'GET', NULL, '185.30.32.136'),
(5846, '2022-10-26 22:23:26', '/wp-login.php?action=logout&_wpnonce=69e35445b0', 'https://dev.goauroratech.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'https://dev.goauroratech.com/wp-admin/index.php', 404, 'GET', NULL, '64.223.131.22'),
(5847, '2022-10-26 22:23:39', '/wp-login.php?action=logout&_wpnonce=69e35445b0', 'https://dev.goauroratech.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'https://dev.goauroratech.com/wp-admin/', 404, 'GET', NULL, '64.223.131.22'),
(5848, '2022-10-26 22:23:49', '/wp-login.php', 'https://dev.goauroratech.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', NULL, 404, 'GET', NULL, '64.223.131.22'),
(5849, '2022-10-26 22:23:49', '/wp-login.php', 'https://dev.goauroratech.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', NULL, 404, 'GET', NULL, '64.223.131.22'),
(5850, '2022-10-26 22:23:50', '/wp-login.php', 'https://dev.goauroratech.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', NULL, 404, 'GET', NULL, '64.223.131.22'),
(5851, '2022-10-26 22:23:50', '/wp-login.php', 'https://dev.goauroratech.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', NULL, 404, 'GET', NULL, '64.223.131.22'),
(5852, '2022-10-26 22:23:50', '/wp-login.php', 'https://dev.goauroratech.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', NULL, 404, 'GET', NULL, '64.223.131.22'),
(5853, '2022-10-26 22:23:51', '/wp-login.php', 'https://dev.goauroratech.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', NULL, 404, 'GET', NULL, '64.223.131.22'),
(5854, '2022-10-26 22:23:51', '/wp-login.php', 'https://dev.goauroratech.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', NULL, 404, 'GET', NULL, '64.223.131.22'),
(5855, '2022-10-26 22:23:51', '/wp-login.php', 'https://dev.goauroratech.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', NULL, 404, 'GET', NULL, '64.223.131.22'),
(5856, '2022-10-26 22:23:52', '/wp-login.php', 'https://dev.goauroratech.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', NULL, 404, 'GET', NULL, '64.223.131.22'),
(5857, '2022-10-26 22:23:58', '/wp-login.php', 'https://dev.goauroratech.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', NULL, 404, 'GET', NULL, '64.223.131.22'),
(5858, '2022-10-26 22:23:59', '/wp-login.php', 'https://dev.goauroratech.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', NULL, 404, 'GET', NULL, '64.223.131.22'),
(5859, '2022-10-26 22:24:07', '/wp-login.php?redirect_to=https%3A%2F%2Fdev.goauroratech.com%2Fwp-admin%2F&reauth=1', 'https://dev.goauroratech.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', NULL, 404, 'GET', NULL, '64.223.131.22'),
(5860, '2022-10-26 22:31:15', '/wp-login.php?redirect_to=https%3A%2F%2Fdev.goauroratech.com%2Fwp-admin%2F&reauth=1', 'https://dev.goauroratech.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', NULL, 404, 'GET', NULL, '64.223.131.22'),
(5861, '2022-10-26 22:31:24', '/wp-login.php', 'http://dev.goauroratech.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', NULL, 404, 'GET', NULL, '64.223.131.22'),
(5862, '2022-10-26 22:31:24', '/wp-login.php', 'http://dev.goauroratech.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', NULL, 404, 'GET', NULL, '64.223.131.22'),
(5863, '2022-10-26 22:31:25', '/wp-login.php', 'http://dev.goauroratech.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', NULL, 404, 'GET', NULL, '64.223.131.22'),
(5864, '2022-10-26 22:31:25', '/wp-login.php', 'http://dev.goauroratech.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', NULL, 404, 'GET', NULL, '64.223.131.22'),
(5865, '2022-10-26 22:31:25', '/wp-login.php', 'http://dev.goauroratech.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', NULL, 404, 'GET', NULL, '64.223.131.22'),
(5866, '2022-10-26 22:31:26', '/wp-login.php', 'http://dev.goauroratech.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', NULL, 404, 'GET', NULL, '64.223.131.22'),
(5867, '2022-10-26 22:31:26', '/wp-login.php', 'http://dev.goauroratech.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', NULL, 404, 'GET', NULL, '64.223.131.22'),
(5868, '2022-10-26 22:31:26', '/wp-login.php', 'http://dev.goauroratech.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', NULL, 404, 'GET', NULL, '64.223.131.22'),
(5869, '2022-10-26 22:31:27', '/wp-login.php', 'http://dev.goauroratech.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', NULL, 404, 'GET', NULL, '64.223.131.22'),
(5870, '2022-10-26 22:34:32', '/404/', 'https://dev.goauroratech.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', NULL, 404, 'GET', NULL, '64.223.131.22'),
(5871, '2022-10-26 22:51:07', '/404/', 'https://dev.goauroratech.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', NULL, 404, 'GET', NULL, '64.223.131.22'),
(5872, '2022-10-26 22:51:50', '/404/', 'https://dev.goauroratech.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', NULL, 404, 'GET', NULL, '64.223.131.22'),
(5873, '2022-10-26 22:53:14', '/404/', 'https://dev.goauroratech.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', NULL, 404, 'GET', NULL, '64.223.131.22'),
(5874, '2022-10-26 22:54:02', '/404/', 'https://dev.goauroratech.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', NULL, 404, 'GET', NULL, '64.223.131.22'),
(5875, '2022-10-26 22:54:19', '/404/', 'https://dev.goauroratech.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', NULL, 404, 'GET', NULL, '64.223.131.22'),
(5876, '2022-10-26 22:54:27', '/404/', 'https://dev.goauroratech.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', NULL, 404, 'GET', NULL, '64.223.131.22'),
(5877, '2022-10-31 12:04:05', '/404/', 'https://dev.goauroratech.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', NULL, 404, 'GET', NULL, '64.223.131.22'),
(5878, '2022-11-02 13:27:34', '/?p=59', 'https://dev.goauroratech.com', 'lua-resty-http/0.10 (Lua) ngx_lua/10019', NULL, 404, 'GET', NULL, '3.238.44.255'),
(5879, '2022-11-02 13:27:34', '/?p=59', 'https://dev.goauroratech.com', 'lua-resty-http/0.10 (Lua) ngx_lua/10019', NULL, 404, 'GET', NULL, '3.91.194.240'),
(5880, '2022-11-02 13:27:35', '/?p=59', 'https://dev.goauroratech.com', 'lua-resty-http/0.10 (Lua) ngx_lua/10019', NULL, 404, 'GET', NULL, '3.239.45.78'),
(5881, '2022-11-03 10:02:04', '/404/', 'https://dev.goauroratech.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', NULL, 404, 'GET', NULL, '64.223.131.22'),
(5882, '2022-11-04 09:39:59', '/wp-admin/undefined', 'https://dev.goauroratech.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'https://dev.goauroratech.com/wp-admin/themes.php', 404, 'GET', NULL, '64.223.131.22'),
(5883, '2022-11-07 11:37:54', '/404/', 'https://dev.goauroratech.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', NULL, 404, 'GET', NULL, '64.223.131.22'),
(5884, '2022-11-11 18:02:02', '/www.tar.gz', 'https://dev.goauroratech.com', 'python-requests/2.27.1', NULL, 404, 'GET', NULL, '223.167.152.63'),
(5885, '2022-11-11 18:13:36', '/web.tar.gz', 'https://dev.goauroratech.com', 'python-requests/2.26.0', NULL, 404, 'GET', NULL, '27.11.211.128'),
(5886, '2022-11-11 18:24:12', '/bak.tar.gz', 'https://dev.goauroratech.com', 'python-requests/2.27.1', NULL, 404, 'GET', NULL, '223.167.152.57'),
(5887, '2022-11-11 18:46:29', '/data.tar.gz', 'https://dev.goauroratech.com', 'python-requests/2.26.0', NULL, 404, 'GET', NULL, '27.11.211.128'),
(5888, '2022-11-11 18:57:20', '/backup.tar.gz', 'https://dev.goauroratech.com', 'python-requests/2.27.1', NULL, 404, 'GET', NULL, '61.151.178.225'),
(5889, '2022-11-11 19:07:56', '/www.gz', 'https://dev.goauroratech.com', 'python-requests/2.27.1', NULL, 404, 'GET', NULL, '61.151.178.236'),
(5890, '2022-11-11 19:19:13', '/web.gz', 'https://dev.goauroratech.com', 'python-requests/2.26.0', NULL, 404, 'GET', NULL, '27.11.211.128'),
(5891, '2022-11-11 19:30:59', '/bak.gz', 'https://dev.goauroratech.com', 'python-requests/2.26.0', NULL, 404, 'GET', NULL, '27.11.211.128'),
(5892, '2022-11-11 19:52:42', '/data.gz', 'https://dev.goauroratech.com', 'python-requests/2.26.0', NULL, 404, 'GET', NULL, '27.11.211.128'),
(5893, '2022-11-11 20:03:41', '/backup.gz', 'https://dev.goauroratech.com', 'python-requests/2.26.0', NULL, 404, 'GET', NULL, '27.11.211.128'),
(5894, '2022-11-11 20:14:09', '/1.gz', 'https://dev.goauroratech.com', 'python-requests/2.26.0', NULL, 404, 'GET', NULL, '27.11.211.128'),
(5895, '2022-11-11 20:56:50', '/dev.tar.gz', 'https://dev.goauroratech.com', 'python-requests/2.26.0', NULL, 404, 'GET', NULL, '27.11.211.128'),
(5896, '2022-11-11 21:49:51', '/dev.goauroratech.com.tar.gz', 'https://dev.goauroratech.com', 'python-requests/2.27.1', NULL, 404, 'GET', NULL, '223.166.151.233'),
(5897, '2022-11-11 21:59:55', '/dev.goauroratech.com.gz', 'https://dev.goauroratech.com', 'python-requests/2.27.1', NULL, 404, 'GET', NULL, '223.167.152.57'),
(5898, '2022-11-11 22:41:09', '/devgoauroratechcom.tar.gz', 'https://dev.goauroratech.com', 'python-requests/2.27.1', NULL, 404, 'GET', NULL, '223.167.152.54'),
(5899, '2022-11-11 22:50:42', '/devgoauroratechcom.gz', 'https://dev.goauroratech.com', 'python-requests/2.27.1', NULL, 404, 'GET', NULL, '101.91.94.86'),
(5900, '2022-11-11 23:34:51', '/dev_goauroratech_com.tar.gz', 'https://dev.goauroratech.com', 'python-requests/2.26.0', NULL, 404, 'GET', NULL, '27.11.211.128'),
(5901, '2022-11-11 23:45:04', '/dev_goauroratech_com.gz', 'https://dev.goauroratech.com', 'python-requests/2.26.0', NULL, 404, 'GET', NULL, '27.11.211.128'),
(5902, '2022-11-14 10:44:05', '/wp-commentin.php', 'http://dev.goauroratech.com', 'Mozilla/5.0 (Linux; Android 11; SM-A125F) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.105 Mobile Safari/537.36 OPR/63.3.3216.58675', NULL, 404, 'GET', NULL, '103.186.201.130'),
(5903, '2022-11-16 12:16:12', '/?p=59', 'https://dev.goauroratech.com', 'lua-resty-http/0.10 (Lua) ngx_lua/10019', NULL, 404, 'GET', NULL, '3.237.76.170'),
(5904, '2022-11-16 12:16:12', '/?p=59', 'https://dev.goauroratech.com', 'lua-resty-http/0.10 (Lua) ngx_lua/10019', NULL, 404, 'GET', NULL, '3.91.194.240'),
(5905, '2022-11-16 12:16:13', '/?p=59', 'https://dev.goauroratech.com', 'lua-resty-http/0.10 (Lua) ngx_lua/10019', NULL, 404, 'GET', NULL, '3.237.76.170'),
(5906, '2022-11-17 11:43:56', '/?p=59', 'https://dev.goauroratech.com', 'lua-resty-http/0.10 (Lua) ngx_lua/10019', NULL, 404, 'GET', NULL, '3.237.199.191'),
(5907, '2022-11-18 11:11:08', '/?p=59', 'https://dev.goauroratech.com', 'lua-resty-http/0.10 (Lua) ngx_lua/10019', NULL, 404, 'GET', NULL, '3.237.199.191'),
(5908, '2022-11-18 11:11:09', '/?p=59', 'https://dev.goauroratech.com', 'lua-resty-http/0.10 (Lua) ngx_lua/10019', NULL, 404, 'GET', NULL, '3.238.44.255'),
(5909, '2022-11-18 11:32:58', '/?p=59', 'https://dev.goauroratech.com', 'lua-resty-http/0.10 (Lua) ngx_lua/10019', NULL, 404, 'GET', NULL, '3.237.199.191'),
(5910, '2022-11-19 06:12:04', '/style.php?sig=rename', 'http://dev.goauroratech.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36', NULL, 404, 'GET', NULL, '62.116.177.88'),
(5911, '2022-11-25 00:09:06', '/app-ads.txt', 'http://dev.goauroratech.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko; compatible; BW/1.1; bit.ly/3eZNDnO; a5c03a70ba) Chrome/84.0.4147.105 Safari/537.36', NULL, 404, 'GET', NULL, '35.217.51.214'),
(5912, '2022-11-27 23:35:06', '/wp-admin/style.php?sig=rename', 'http://dev.goauroratech.com', 'Mozilla/5.0 (Linux; Android 7.0; Moto G (4)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4143.7 Mobile Safari/537.36 Chrome-Lighthouse', NULL, 404, 'GET', NULL, '51.83.108.69'),
(5913, '2022-11-27 23:35:06', '/style.php?sig=rename', 'http://dev.goauroratech.com', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/92.0.4515.90 Mobile/15E148 Safari/604.1', NULL, 404, 'GET', NULL, '51.83.108.69'),
(5914, '2022-12-09 11:40:17', '/404/', 'https://dev.goauroratech.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', NULL, 404, 'GET', NULL, '64.223.131.22'),
(5915, '2022-12-09 13:04:49', '/abc.php', 'http://dev.goauroratech.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36', NULL, 404, 'GET', NULL, '185.26.122.44'),
(5916, '2022-12-09 13:04:49', '/nin.php', 'http://dev.goauroratech.com', 'Mozilla/5.0 (Linux; Android 8.0.0; PRA-TL10) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.116 Mobile Safari/537.36', NULL, 404, 'GET', NULL, '185.26.122.44'),
(5917, '2022-12-09 13:04:49', '/in.php', 'http://dev.goauroratech.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36', NULL, 404, 'GET', NULL, '185.26.122.44'),
(5918, '2022-12-09 13:04:49', '/up.php', 'http://dev.goauroratech.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', NULL, 404, 'GET', NULL, '185.26.122.44'),
(5919, '2022-12-09 13:04:49', '/ups.php', 'http://dev.goauroratech.com', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_7_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.1.2 Mobile/15E148 Safari/604.1', NULL, 404, 'GET', NULL, '185.26.122.44'),
(5920, '2022-12-09 13:04:50', '/upload.php', 'http://dev.goauroratech.com', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', NULL, 404, 'GET', NULL, '185.26.122.44'),
(5921, '2022-12-09 13:04:50', '/ninja.php', 'http://dev.goauroratech.com', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', NULL, 404, 'GET', NULL, '185.26.122.44'),
(5922, '2022-12-09 13:04:50', '/upl.php', 'http://dev.goauroratech.com', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', NULL, 404, 'GET', NULL, '185.26.122.44'),
(5923, '2022-12-09 13:04:50', '/uvuveve.php', 'http://dev.goauroratech.com', 'Mozlila/5.0 (Linux; Android 7.0; SM-G892A Bulid/NRD90M; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/60.0.3112.107 Moblie Safari/537.36', NULL, 404, 'GET', NULL, '185.26.122.44'),
(5924, '2022-12-09 13:04:50', '/uploader.php', 'http://dev.goauroratech.com', 'Mozilla/5.0 (Linux; Android 10; HRY-LX1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Mobile Safari/537.36', NULL, 404, 'GET', NULL, '185.26.122.44'),
(5925, '2022-12-09 13:04:50', '/xv.php', 'http://dev.goauroratech.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', NULL, 404, 'GET', NULL, '185.26.122.44'),
(5926, '2022-12-13 15:50:43', '/sign-me-in.php', 'https://dev.goauroratech.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', NULL, 404, 'GET', NULL, '64.223.131.22'),
(5927, '2022-12-16 09:21:05', '/?p=59', 'https://dev.goauroratech.com', 'lua-resty-http/0.10 (Lua) ngx_lua/10019', NULL, 404, 'GET', NULL, '54.147.246.36'),
(5928, '2022-12-16 09:21:05', '/?p=59', 'https://dev.goauroratech.com', 'lua-resty-http/0.10 (Lua) ngx_lua/10019', NULL, 404, 'GET', NULL, '3.237.76.170'),
(5929, '2022-12-16 09:21:05', '/?p=59', 'https://dev.goauroratech.com', 'lua-resty-http/0.10 (Lua) ngx_lua/10019', NULL, 404, 'GET', NULL, '54.147.246.36'),
(5930, '2022-12-20 13:01:30', '/?p=59', 'https://dev.goauroratech.com', 'lua-resty-http/0.10 (Lua) ngx_lua/10019', NULL, 404, 'GET', NULL, '44.203.31.131'),
(5931, '2022-12-22 17:28:25', '/404/', 'http://localhost:81/atcustomwebsites', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'http://localhost:81/atcustomwebsites/wp-admin/options-general.php?page=updraftplus', 404, 'GET', NULL, '64.223.131.22'),
(5932, '2023-01-03 15:01:14', '/wp-admin/undefined', 'http://localhost:81/atcustomwebsites', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'http://localhost:81/atcustomwebsites/wp-admin/themes.php', 404, 'GET', NULL, '31.171.152.82'),
(5933, '2023-01-03 15:21:37', '/wp-admin/undefined', 'http://localhost:81/atcustomwebsites', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'http://localhost:81/atcustomwebsites/wp-admin/themes.php', 404, 'GET', NULL, '31.171.152.82'),
(5934, '2023-01-03 20:32:44', '/wp-admin/undefined', 'http://localhost:81/atcustomwebsites', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'http://localhost:81/atcustomwebsites/wp-admin/themes.php', 404, 'GET', NULL, '31.171.152.82'),
(5935, '2023-01-04 15:18:05', '/wp-content/themes/iconic-one/img/wood.png', 'http://localhost:81/atcustomwebsites', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'http://localhost:81/atcustomwebsites/inner-page/', 404, 'GET', NULL, '31.171.152.82'),
(5936, '2023-01-05 03:56:42', '/404/', 'http://localhost:81/atcustomwebsites', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', NULL, 404, 'GET', NULL, '31.171.152.82'),
(5937, '2023-01-05 04:08:56', '/wp-content/themes/iconic-one/img/wood.png', 'http://localhost:81/atcustomwebsites', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'http://localhost:81/atcustomwebsites/', 404, 'GET', NULL, '31.171.152.82'),
(5938, '2023-01-05 04:09:35', '/wp-content/themes/iconic-one/img/rope.png', 'http://localhost:81/atcustomwebsites', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'http://localhost:81/atcustomwebsites/', 404, 'GET', NULL, '31.171.152.82'),
(5939, '2023-01-05 04:09:35', '/wp-content/themes/iconic-one/img/footer_logo.png', 'http://localhost:81/atcustomwebsites', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'http://localhost:81/atcustomwebsites/', 404, 'GET', NULL, '31.171.152.82'),
(5940, '2023-01-05 04:09:35', '/wp-content/themes/iconic-one/img/phone.png', 'http://localhost:81/atcustomwebsites', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'http://localhost:81/atcustomwebsites/', 404, 'GET', NULL, '31.171.152.82'),
(5941, '2023-01-05 04:09:35', '/wp-content/themes/iconic-one/img/wood.png', 'http://localhost:81/atcustomwebsites', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'http://localhost:81/atcustomwebsites/', 404, 'GET', NULL, '31.171.152.82'),
(5942, '2023-01-05 04:09:35', '/wp-content/themes/iconic-one/img/clock.png', 'http://localhost:81/atcustomwebsites', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'http://localhost:81/atcustomwebsites/', 404, 'GET', NULL, '31.171.152.82'),
(5943, '2023-01-05 04:09:35', '/wp-content/themes/iconic-one/img/location.png', 'http://localhost:81/atcustomwebsites', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'http://localhost:81/atcustomwebsites/', 404, 'GET', NULL, '31.171.152.82'),
(5944, '2023-01-05 04:09:36', '/wp-content/themes/iconic-one/img/send.png', 'http://localhost:81/atcustomwebsites', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'http://localhost:81/atcustomwebsites/', 404, 'GET', NULL, '31.171.152.82'),
(5945, '2023-01-05 08:30:41', '/wp-admin/undefined', 'http://localhost:81/atcustomwebsites', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'http://localhost:81/atcustomwebsites/wp-admin/themes.php', 404, 'GET', NULL, '31.171.152.82'),
(5946, '2023-01-05 08:59:25', '/wp-content/themes/iconic-one/%3C?php%20echo%20get_template_directory_uri()?%3E/img/back.png', 'http://localhost:81/atcustomwebsites', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'http://localhost:81/atcustomwebsites/wp-content/themes/iconic-one/style.css?ver=6.1.1', 404, 'GET', NULL, '31.171.152.82'),
(5947, '2023-01-05 09:00:14', '/wp-content/themes/iconic-one/%3C?php%20echo%20get_template_directory_uri()?%3E/img/back.png', 'http://localhost:81/atcustomwebsites', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'http://localhost:81/atcustomwebsites/wp-content/themes/iconic-one/style.css?ver=6.1.1', 404, 'GET', NULL, '31.171.152.82'),
(5948, '2023-04-11 22:23:21', '/atcustomwebsites/wp-content/themes/iconic-one/img/wood.png', 'http://localhost', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'http://localhost:81/atcustomwebsites/', 404, 'GET', NULL, '::1'),
(5949, '2023-04-11 22:24:28', '/atcustomwebsites/wp-content/themes/iconic-one/img/wood.png', 'http://localhost', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'http://localhost:81/atcustomwebsites/', 404, 'GET', NULL, '::1'),
(5950, '2023-04-11 22:24:37', '/atcustomwebsites/wp-content/themes/iconic-one/img/wood.png', 'http://localhost', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'http://localhost:81/atcustomwebsites/', 404, 'GET', NULL, '::1'),
(5951, '2023-04-15 21:08:41', '/atcustomwebsites/wp-content/themes/iconic-one/img/wood.png', 'http://localhost', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'http://localhost:81/atcustomwebsites/', 404, 'GET', NULL, '::1'),
(5952, '2023-08-15 20:41:19', '/atcustomwebsites/wp-content/themes/iconic-one/img/wood.png', 'http://localhost', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', 'http://localhost:81/atcustomwebsites/', 404, 'GET', NULL, '::1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_redirection_groups`
--

CREATE TABLE `wp_redirection_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tracking` int(11) NOT NULL DEFAULT 1,
  `module_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `status` enum('enabled','disabled') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'enabled',
  `position` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_redirection_groups`
--

INSERT INTO `wp_redirection_groups` (`id`, `name`, `tracking`, `module_id`, `status`, `position`) VALUES
(1, 'Redirections', 1, 1, 'enabled', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_redirection_items`
--

CREATE TABLE `wp_redirection_items` (
  `id` int(11) UNSIGNED NOT NULL,
  `url` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `match_url` varchar(2000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `match_data` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `regex` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `position` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `last_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `last_access` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `group_id` int(11) NOT NULL DEFAULT 0,
  `status` enum('enabled','disabled') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'enabled',
  `action_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_code` int(11) UNSIGNED NOT NULL,
  `action_data` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `match_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_redirection_items`
--

INSERT INTO `wp_redirection_items` (`id`, `url`, `match_url`, `match_data`, `regex`, `position`, `last_count`, `last_access`, `group_id`, `status`, `action_type`, `action_code`, `action_data`, `match_type`, `title`) VALUES
(1, '/adminer(.*)', 'regex', '{\"source\":{\"flag_regex\":true}}', 1, 0, 0, '1970-01-01 00:00:00', 1, 'enabled', 'nothing', 0, NULL, 'url', NULL),
(2, '/ads.txt', '/ads.txt', NULL, 0, 1, 0, '1970-01-01 00:00:00', 1, 'enabled', 'nothing', 0, NULL, 'url', NULL),
(3, '/?author=(.*)', 'regex', '{\"source\":{\"flag_regex\":true}}', 1, 2, 11, '2021-01-15 12:02:18', 1, 'enabled', 'nothing', 0, NULL, 'url', NULL),
(4, '/wp-content/plugins/(.*)', 'regex', '{\"source\":{\"flag_regex\":true}}', 1, 3, 29, '2021-01-17 17:44:07', 1, 'enabled', 'nothing', 0, NULL, 'url', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wp_redirection_logs`
--

CREATE TABLE `wp_redirection_logs` (
  `id` int(11) UNSIGNED NOT NULL,
  `created` datetime NOT NULL,
  `url` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `domain` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sent_to` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `agent` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referrer` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_code` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `request_method` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `request_data` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirection_id` int(11) UNSIGNED DEFAULT NULL,
  `ip` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_responsive_menu`
--

CREATE TABLE `wp_responsive_menu` (
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_responsive_menu`
--

INSERT INTO `wp_responsive_menu` (`name`, `value`) VALUES
('accordion_animation', 'on'),
('active_arrow_font_icon', ''),
('active_arrow_font_icon_type', 'font-awesome'),
('active_arrow_image', ''),
('active_arrow_image_alt', ''),
('active_arrow_shape', '▲'),
('admin_theme', 'light'),
('animation_speed', '0.5'),
('animation_type', 'slide'),
('arrow_position', 'right'),
('auto_expand_all_submenus', 'off'),
('auto_expand_current_submenus', 'off'),
('breakpoint', '850'),
('button_background_colour', '#000000'),
('button_background_colour_active', '#000000'),
('button_background_colour_hover', '#000000'),
('button_click_animation', 'boring'),
('button_click_trigger', '#responsive-menu-button'),
('button_distance_from_side', '0'),
('button_distance_from_side_unit', '%'),
('button_font', ''),
('button_font_icon', ''),
('button_font_icon_type', 'font-awesome'),
('button_font_icon_when_clicked', ''),
('button_font_icon_when_clicked_type', 'font-awesome'),
('button_font_size', '14'),
('button_font_size_unit', 'px'),
('button_height', '50'),
('button_height_unit', 'px'),
('button_image', ''),
('button_image_alt', ''),
('button_image_alt_when_clicked', ''),
('button_image_when_clicked', ''),
('button_left_or_right', 'right'),
('button_line_colour', '#000000'),
('button_line_colour_active', '#000000'),
('button_line_colour_hover', '#000000'),
('button_line_height', '3'),
('button_line_height_unit', 'px'),
('button_line_margin', '5'),
('button_line_margin_unit', 'px'),
('button_line_width', '35'),
('button_line_width_unit', 'px'),
('button_position_type', 'relative'),
('button_push_with_animation', 'off'),
('button_text_colour', '#ffffff'),
('button_title', ''),
('button_title_line_height', '13'),
('button_title_line_height_unit', 'px'),
('button_title_open', ''),
('button_title_position', 'left'),
('button_top', '0'),
('button_top_unit', 'px'),
('button_transparent_background', 'on'),
('button_trigger_type', 'click'),
('button_width', '55'),
('button_width_unit', 'px'),
('custom_css', ''),
('custom_walker', ''),
('desktop_menu_hide_and_show', ''),
('desktop_menu_options', '[]'),
('desktop_menu_positioning', 'fixed'),
('desktop_menu_side', ''),
('desktop_menu_to_hide', ''),
('desktop_menu_width', ''),
('desktop_menu_width_unit', '%'),
('desktop_submenu_open_animation', ''),
('desktop_submenu_open_animation_speed', '0ms'),
('desktop_submenu_open_on_click', ''),
('enable_touch_gestures', ''),
('excluded_pages', NULL),
('external_files', 'off'),
('fade_submenus', 'off'),
('fade_submenus_delay', '100'),
('fade_submenus_side', 'left'),
('fade_submenus_speed', '500'),
('header_bar_adjust_page', NULL),
('header_bar_background_color', '#ffffff'),
('header_bar_breakpoint', '800'),
('header_bar_font', ''),
('header_bar_font_size', '14'),
('header_bar_font_size_unit', 'px'),
('header_bar_height', '80'),
('header_bar_height_unit', 'px'),
('header_bar_html_content', ''),
('header_bar_items_order', '{\"logo\":\"on\",\"title\":\"on\",\"search\":\"on\",\"html content\":\"on\"}'),
('header_bar_logo', ''),
('header_bar_logo_alt', ''),
('header_bar_logo_height', ''),
('header_bar_logo_height_unit', 'px'),
('header_bar_logo_link', ''),
('header_bar_logo_width', ''),
('header_bar_logo_width_unit', '%'),
('header_bar_position_type', 'fixed'),
('header_bar_text_color', '#ffffff'),
('header_bar_title', ''),
('hide_on_desktop', 'off'),
('hide_on_mobile', 'off'),
('inactive_arrow_font_icon', ''),
('inactive_arrow_font_icon_type', 'font-awesome'),
('inactive_arrow_image', ''),
('inactive_arrow_image_alt', ''),
('inactive_arrow_shape', '▼'),
('items_order', '{\"title\":\"on\",\"menu\":\"on\",\"search\":\"\",\"additional content\":\"\"}'),
('keyboard_shortcut_close_menu', '27,37'),
('keyboard_shortcut_open_menu', '32,39'),
('menu_additional_content', ''),
('menu_additional_content_colour', '#ffffff'),
('menu_adjust_for_wp_admin_bar', 'off'),
('menu_appear_from', 'left'),
('menu_auto_height', 'off'),
('menu_background_colour', '#333333'),
('menu_background_image', ''),
('menu_border_width', '1'),
('menu_border_width_unit', 'px'),
('menu_close_on_body_click', 'on'),
('menu_close_on_link_click', 'off'),
('menu_close_on_scroll', 'off'),
('menu_container_background_colour', '#333333'),
('menu_current_item_background_colour', '#333333'),
('menu_current_item_background_hover_colour', '#444444'),
('menu_current_item_border_colour', '#444444'),
('menu_current_item_border_hover_colour', '#444444'),
('menu_current_link_colour', '#ffffff'),
('menu_current_link_hover_colour', '#ffffff'),
('menu_depth', '5'),
('menu_depth_0', '5'),
('menu_depth_0_unit', '%'),
('menu_depth_1', '10'),
('menu_depth_1_unit', '%'),
('menu_depth_2', '15'),
('menu_depth_2_unit', '%'),
('menu_depth_3', '20'),
('menu_depth_3_unit', '%'),
('menu_depth_4', '25'),
('menu_depth_4_unit', '%'),
('menu_depth_5', '30'),
('menu_depth_5_unit', '%'),
('menu_depth_side', 'left'),
('menu_disable_scrolling', 'off'),
('menu_font', ''),
('menu_font_icons', '{\"id\":[\"\",\"\"],\"icon\":[\"\",\"\"],\"type\":[\"font-awesome\",\"\"]}'),
('menu_font_size', '13'),
('menu_font_size_unit', 'px'),
('menu_item_background_colour', '#333333'),
('menu_item_background_hover_colour', '#444444'),
('menu_item_border_colour', '#444444'),
('menu_item_border_colour_hover', '#444444'),
('menu_item_click_to_trigger_submenu', 'off'),
('menu_link_colour', '#ffffff'),
('menu_link_hover_colour', '#ffffff'),
('menu_links_height', '40'),
('menu_links_height_unit', 'px'),
('menu_links_line_height', '40'),
('menu_links_line_height_unit', 'px'),
('menu_maximum_width', ''),
('menu_maximum_width_unit', 'px'),
('menu_minimum_width', ''),
('menu_minimum_width_unit', 'px'),
('menu_overlay', 'off'),
('menu_overlay_colour', 'rgba(0, 0, 0, 0.7)'),
('menu_search_box_background_colour', '#ffffff'),
('menu_search_box_border_colour', '#dadada'),
('menu_search_box_placeholder_colour', '#c7c7cd'),
('menu_search_box_text', 'Search'),
('menu_search_box_text_colour', '#333333'),
('menu_sub_arrow_background_colour', '#181818'),
('menu_sub_arrow_background_colour_active', '#212121'),
('menu_sub_arrow_background_hover_colour', '#181818'),
('menu_sub_arrow_background_hover_colour_active', '#3f3f3f'),
('menu_sub_arrow_border_colour', '#333333'),
('menu_sub_arrow_border_colour_active', '#212121'),
('menu_sub_arrow_border_hover_colour', '#333333'),
('menu_sub_arrow_border_hover_colour_active', '#ffffff'),
('menu_sub_arrow_shape_colour', '#ffffff'),
('menu_sub_arrow_shape_colour_active', '#ffffff'),
('menu_sub_arrow_shape_hover_colour', '#ffffff'),
('menu_sub_arrow_shape_hover_colour_active', '#ffffff'),
('menu_text_alignment', 'left'),
('menu_theme', NULL),
('menu_title', 'Main Menu'),
('menu_title_alignment', 'left'),
('menu_title_background_colour', '#333333'),
('menu_title_background_hover_colour', '#333333'),
('menu_title_colour', '#ffffff'),
('menu_title_font_icon', ''),
('menu_title_font_icon_type', 'font-awesome'),
('menu_title_font_size', '16'),
('menu_title_font_size_unit', 'px'),
('menu_title_hover_colour', '#ffffff'),
('menu_title_image', ''),
('menu_title_image_alt', ''),
('menu_title_image_height', ''),
('menu_title_image_height_unit', 'px'),
('menu_title_image_width', ''),
('menu_title_image_width_unit', '%'),
('menu_title_link', ''),
('menu_title_link_location', '_self'),
('menu_to_hide', '.themonic-nav'),
('menu_to_use', ''),
('menu_width', '75'),
('menu_width_unit', '%'),
('menu_word_wrap', 'off'),
('minify_scripts', 'off'),
('mobile_only', 'off'),
('page_wrapper', ''),
('remove_bootstrap', ''),
('remove_fontawesome', ''),
('scripts_in_footer', 'on'),
('shortcode', 'on'),
('show_menu_on_page_load', ''),
('single_menu_font', ''),
('single_menu_font_size', '14'),
('single_menu_font_size_unit', 'px'),
('single_menu_height', '80'),
('single_menu_height_unit', 'px'),
('single_menu_item_background_colour', '#ffffff'),
('single_menu_item_background_colour_hover', '#ffffff'),
('single_menu_item_link_colour', '#ffffff'),
('single_menu_item_link_colour_hover', '#ffffff'),
('single_menu_item_submenu_background_colour', '#ffffff'),
('single_menu_item_submenu_background_colour_hover', '#ffffff'),
('single_menu_item_submenu_link_colour', '#ffffff'),
('single_menu_item_submenu_link_colour_hover', '#ffffff'),
('single_menu_line_height', '80'),
('single_menu_line_height_unit', 'px'),
('single_menu_submenu_font', ''),
('single_menu_submenu_font_size', '12'),
('single_menu_submenu_font_size_unit', 'px'),
('single_menu_submenu_height', '40'),
('single_menu_submenu_height_unit', 'auto'),
('single_menu_submenu_line_height', '40'),
('single_menu_submenu_line_height_unit', 'px'),
('slide_effect_back_to_text', 'Back'),
('smooth_scroll_on', 'off'),
('smooth_scroll_speed', '500'),
('sub_menu_speed', '0.2'),
('submenu_arrow_height', '40'),
('submenu_arrow_height_unit', 'px'),
('submenu_arrow_position', 'right'),
('submenu_arrow_width', '40'),
('submenu_arrow_width_unit', 'px'),
('submenu_border_width', '1'),
('submenu_border_width_unit', 'px'),
('submenu_current_item_background_colour', '#333333'),
('submenu_current_item_background_hover_colour', '#444444'),
('submenu_current_item_border_colour', '#444444'),
('submenu_current_item_border_hover_colour', '#444444'),
('submenu_current_link_colour', '#ffffff'),
('submenu_current_link_hover_colour', '#ffffff'),
('submenu_descriptions_on', ''),
('submenu_font', ''),
('submenu_font_size', '13'),
('submenu_font_size_unit', 'px'),
('submenu_item_background_colour', '#333333'),
('submenu_item_background_hover_colour', '#444444'),
('submenu_item_border_colour', '#444444'),
('submenu_item_border_colour_hover', '#444444'),
('submenu_link_colour', '#ffffff'),
('submenu_link_hover_colour', '#ffffff'),
('submenu_links_height', '40'),
('submenu_links_height_unit', 'px'),
('submenu_links_line_height', '40'),
('submenu_links_line_height_unit', 'px'),
('submenu_sub_arrow_background_colour', '#181818'),
('submenu_sub_arrow_background_colour_active', '#212121'),
('submenu_sub_arrow_background_hover_colour', '#181818'),
('submenu_sub_arrow_background_hover_colour_active', '#3f3f3f'),
('submenu_sub_arrow_border_colour', '#333333'),
('submenu_sub_arrow_border_colour_active', '#212121'),
('submenu_sub_arrow_border_hover_colour', '#333333'),
('submenu_sub_arrow_border_hover_colour_active', '#ffffff'),
('submenu_sub_arrow_shape_colour', '#ffffff'),
('submenu_sub_arrow_shape_colour_active', '#ffffff'),
('submenu_sub_arrow_shape_hover_colour', '#ffffff'),
('submenu_sub_arrow_shape_hover_colour_active', '#ffffff'),
('submenu_submenu_arrow_height', '40'),
('submenu_submenu_arrow_height_unit', 'px'),
('submenu_submenu_arrow_width', '40'),
('submenu_submenu_arrow_width_unit', 'px'),
('submenu_text_alignment', 'left'),
('theme_location_menu', ''),
('transition_speed', '0.5'),
('use_desktop_menu', ''),
('use_header_bar', 'off'),
('use_slide_effect', 'off');

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'nav', 'nav', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(18, 2, 0),
(19, 2, 0),
(20, 2, 0),
(21, 2, 0),
(27, 1, 0),
(29, 1, 0),
(31, 1, 0),
(135, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 4),
(2, 2, 'nav_menu', '', 0, 4);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'Administrator'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'false'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'false'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'theme_editor_notice,plugin_editor_notice'),
(15, 1, 'show_welcome_panel', '0'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"9fe0e804fdc600360512518e43ca2dfc65f1dd8f6d9141d9654ff0cdbaa100ed\";a:4:{s:10:\"expiration\";i:1673211219;s:2:\"ip\";s:13:\"64.223.131.22\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36\";s:5:\"login\";i:1673038419;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '106'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:12:\"64.223.131.0\";}'),
(19, 1, 'closedpostboxes_page', 'a:1:{i:0;s:10:\"wpseo_meta\";}'),
(20, 1, 'metaboxhidden_page', 'a:7:{i:0;s:12:\"postimagediv\";i:1;s:12:\"revisionsdiv\";i:2;s:16:\"commentstatusdiv\";i:3;s:11:\"commentsdiv\";i:4;s:7:\"slugdiv\";i:5;s:9:\"authordiv\";i:6;s:18:\"aam-access-manager\";}'),
(21, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(22, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(43, 1, 'closedpostboxes_post', 'a:0:{}'),
(44, 1, 'metaboxhidden_post', 'a:8:{i:0;s:16:\"tagsdiv-post_tag\";i:1;s:11:\"postexcerpt\";i:2;s:13:\"trackbacksdiv\";i:3;s:16:\"commentstatusdiv\";i:4;s:11:\"commentsdiv\";i:5;s:7:\"slugdiv\";i:6;s:9:\"authordiv\";i:7;s:18:\"aam-access-manager\";}'),
(45, 1, 'wp_user-settings', 'editor=html&editor_expand=off&posts_list_mode=list&ed_size=495'),
(46, 1, 'wp_user-settings-time', '1673041701'),
(47, 3, 'nickname', 'Aurora'),
(48, 3, 'first_name', ''),
(49, 3, 'last_name', ''),
(50, 3, 'description', ''),
(51, 3, 'rich_editing', 'true'),
(52, 3, 'syntax_highlighting', 'true'),
(53, 3, 'comment_shortcuts', 'false'),
(54, 3, 'admin_color', 'fresh'),
(55, 3, 'use_ssl', '0'),
(56, 3, 'show_admin_bar_front', 'true'),
(57, 3, 'locale', ''),
(58, 3, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(59, 3, 'wp_user_level', '10'),
(60, 3, 'dismissed_wp_pointers', ''),
(61, 1, 'nav_menu_recently_edited', '2'),
(63, 1, 'wp_yoast_notifications', 'a:1:{i:0;a:2:{s:7:\"message\";O:61:\"Yoast\\WP\\SEO\\Presenters\\Admin\\Indexing_Notification_Presenter\":3:{s:18:\"\0*\0total_unindexed\";i:9;s:9:\"\0*\0reason\";s:23:\"home_url_option_changed\";s:20:\"\0*\0short_link_helper\";O:38:\"Yoast\\WP\\SEO\\Helpers\\Short_Link_Helper\":2:{s:17:\"\0*\0options_helper\";O:35:\"Yoast\\WP\\SEO\\Helpers\\Options_Helper\":0:{}s:17:\"\0*\0product_helper\";O:35:\"Yoast\\WP\\SEO\\Helpers\\Product_Helper\":0:{}}}s:7:\"options\";a:10:{s:4:\"type\";s:7:\"warning\";s:2:\"id\";s:13:\"wpseo-reindex\";s:4:\"user\";O:7:\"WP_User\":8:{s:4:\"data\";O:8:\"stdClass\":11:{s:2:\"ID\";s:1:\"1\";s:10:\"user_login\";s:13:\"Administrator\";s:9:\"user_pass\";s:34:\"$P$B.xcETKOGrjxsCoN9fW.0A1TVum5iA/\";s:13:\"user_nicename\";s:13:\"administrator\";s:10:\"user_email\";s:21:\"mike@goauroratech.com\";s:8:\"user_url\";s:0:\"\";s:15:\"user_registered\";s:19:\"2020-11-03 16:28:50\";s:19:\"user_activation_key\";s:0:\"\";s:11:\"user_status\";s:1:\"0\";s:12:\"display_name\";s:13:\"Administrator\";s:10:\"user_level\";i:10;}s:2:\"ID\";i:1;s:4:\"caps\";a:1:{s:13:\"administrator\";b:1;}s:7:\"cap_key\";s:17:\"wp4v_capabilities\";s:5:\"roles\";a:1:{i:0;s:13:\"administrator\";}s:7:\"allcaps\";a:63:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:20:\"wpseo_manage_options\";b:1;s:13:\"administrator\";b:1;}s:6:\"filter\";N;s:16:\"\0WP_User\0site_id\";i:1;}s:5:\"nonce\";N;s:8:\"priority\";d:0.8000000000000000444089209850062616169452667236328125;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";s:20:\"wpseo_manage_options\";s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}}'),
(64, 1, '_yoast_wpseo_profile_updated', '1668786535'),
(65, 1, 'wpseo_title', ''),
(66, 1, 'wpseo_metadesc', ''),
(67, 1, 'wpseo_noindex_author', ''),
(68, 1, 'wpseo_content_analysis_disable', ''),
(69, 1, 'wpseo_keyword_analysis_disable', ''),
(70, 1, 'facebook', ''),
(71, 1, 'instagram', ''),
(72, 1, 'linkedin', ''),
(73, 1, 'myspace', ''),
(74, 1, 'pinterest', ''),
(75, 1, 'soundcloud', ''),
(76, 1, 'tumblr', ''),
(77, 1, 'twitter', ''),
(78, 1, 'youtube', ''),
(79, 1, 'wikipedia', ''),
(80, 4, 'nickname', 'AuroraDev'),
(81, 4, 'first_name', ''),
(82, 4, 'last_name', ''),
(83, 4, 'description', ''),
(84, 4, 'rich_editing', 'true'),
(85, 4, 'syntax_highlighting', 'true'),
(86, 4, 'comment_shortcuts', 'false'),
(87, 4, 'admin_color', 'fresh'),
(88, 4, 'use_ssl', '0'),
(89, 4, 'show_admin_bar_front', 'true'),
(90, 4, 'locale', ''),
(91, 4, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(92, 4, 'wp_user_level', '10'),
(93, 4, '_yoast_wpseo_profile_updated', '1672762424'),
(94, 4, 'dismissed_wp_pointers', 'theme_editor_notice'),
(95, 4, 'session_tokens', 'a:1:{s:64:\"13a9c334f30333e18d94e1b166e733b46ea259fd57fdfd2e953d7002a072c423\";a:4:{s:10:\"expiration\";i:1673428981;s:2:\"ip\";s:13:\"31.171.152.82\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36\";s:5:\"login\";i:1673256181;}}'),
(96, 4, 'wp_dashboard_quick_press_last_post_id', '126'),
(97, 4, 'community-events-location', 'a:1:{s:2:\"ip\";s:12:\"31.171.152.0\";}'),
(98, 4, 'wp_user-settings', 'libraryContent=browse'),
(99, 4, 'wp_user-settings-time', '1672859619');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'Administrator', '$P$B.xcETKOGrjxsCoN9fW.0A1TVum5iA/', 'administrator', 'mike@goauroratech.com', '', '2020-11-03 16:28:50', '', 0, 'Administrator'),
(3, 'Aurora', '$P$BUDM9/CT5gASyAyDDwC6aBI1Y4dIYq0', 'aurora', 'steff@goauroratech.com', '', '2021-10-14 13:48:49', '', 0, 'Aurora'),
(4, 'AuroraDev', '$P$BEjPZoGp0mGR3NQl38THRxUSebfjB00', 'auroradev', 'service@goauroratech.com', '', '2023-01-03 16:13:44', '', 0, 'AuroraDev');

-- --------------------------------------------------------

--
-- Table structure for table `wp_yoast_indexable`
--

CREATE TABLE `wp_yoast_indexable` (
  `id` int(11) UNSIGNED NOT NULL,
  `permalink` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permalink_hash` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `object_id` bigint(20) DEFAULT NULL,
  `object_type` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `object_sub_type` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author_id` bigint(20) DEFAULT NULL,
  `post_parent` bigint(20) DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `breadcrumb_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_public` tinyint(1) DEFAULT NULL,
  `is_protected` tinyint(1) DEFAULT 0,
  `has_public_posts` tinyint(1) DEFAULT NULL,
  `number_of_pages` int(11) UNSIGNED DEFAULT NULL,
  `canonical` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `primary_focus_keyword` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `primary_focus_keyword_score` int(3) DEFAULT NULL,
  `readability_score` int(3) DEFAULT NULL,
  `is_cornerstone` tinyint(1) DEFAULT 0,
  `is_robots_noindex` tinyint(1) DEFAULT 0,
  `is_robots_nofollow` tinyint(1) DEFAULT 0,
  `is_robots_noarchive` tinyint(1) DEFAULT 0,
  `is_robots_noimageindex` tinyint(1) DEFAULT 0,
  `is_robots_nosnippet` tinyint(1) DEFAULT 0,
  `twitter_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_image` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_image_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_image_source` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `open_graph_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `open_graph_description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `open_graph_image` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `open_graph_image_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `open_graph_image_source` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `open_graph_image_meta` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_count` int(11) DEFAULT NULL,
  `incoming_link_count` int(11) DEFAULT NULL,
  `prominent_words_version` int(11) UNSIGNED DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `blog_id` bigint(20) NOT NULL DEFAULT 1,
  `language` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `region` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `schema_page_type` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `schema_article_type` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `has_ancestors` tinyint(1) DEFAULT 0,
  `estimated_reading_time_minutes` int(11) DEFAULT NULL,
  `version` int(11) DEFAULT 1,
  `object_last_modified` datetime DEFAULT NULL,
  `object_published_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_yoast_indexable`
--

INSERT INTO `wp_yoast_indexable` (`id`, `permalink`, `permalink_hash`, `object_id`, `object_type`, `object_sub_type`, `author_id`, `post_parent`, `title`, `description`, `breadcrumb_title`, `post_status`, `is_public`, `is_protected`, `has_public_posts`, `number_of_pages`, `canonical`, `primary_focus_keyword`, `primary_focus_keyword_score`, `readability_score`, `is_cornerstone`, `is_robots_noindex`, `is_robots_nofollow`, `is_robots_noarchive`, `is_robots_noimageindex`, `is_robots_nosnippet`, `twitter_title`, `twitter_image`, `twitter_description`, `twitter_image_id`, `twitter_image_source`, `open_graph_title`, `open_graph_description`, `open_graph_image`, `open_graph_image_id`, `open_graph_image_source`, `open_graph_image_meta`, `link_count`, `incoming_link_count`, `prominent_words_version`, `created_at`, `updated_at`, `blog_id`, `language`, `region`, `schema_page_type`, `schema_article_type`, `has_ancestors`, `estimated_reading_time_minutes`, `version`, `object_last_modified`, `object_published_at`) VALUES
(1, 'http://localhost:81/atcustomwebsites/author/administrator/', '54:5107c5111ed1e23a47f7d7d504ef8ef2', 1, 'user', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 'https://secure.gravatar.com/avatar/6284cebee758894297ce7abc2ee7fcf2?s=500&d=mm&r=g', NULL, NULL, 'gravatar-image', NULL, NULL, 'https://secure.gravatar.com/avatar/6284cebee758894297ce7abc2ee7fcf2?s=500&d=mm&r=g', NULL, 'gravatar-image', NULL, NULL, NULL, NULL, '2022-05-06 16:19:15', '2023-01-04 23:20:00', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-01-04 19:20:00', '2020-11-03 16:51:20'),
(3, 'http://localhost:81/atcustomwebsites/about/', '35:4e85fa5ea58ae2fe238ab25f716df19a', 8, 'post', 'page', 1, 0, NULL, NULL, 'About Us', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-05-06 16:19:15', '2022-12-22 18:28:19', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2021-02-26 21:04:55', '2020-11-03 16:51:20'),
(4, 'http://localhost:81/atcustomwebsites/', '29:3131c2d2403dc55074717d460d983a31', 10, 'post', 'page', 1, 0, '%%sitename%%', NULL, 'Home', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 60, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-05-06 16:19:15', '2022-12-22 18:28:19', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2022-05-06 16:20:17', '2020-11-03 16:53:16'),
(5, 'http://localhost:81/atcustomwebsites/blog/', '34:3fe3cb31a721bade3de1305b289c1b71', 12, 'post', 'page', 1, 0, NULL, NULL, 'Blog', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-05-06 16:19:15', '2022-12-22 18:28:19', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2020-11-03 16:53:46', '2020-11-03 16:53:46'),
(6, 'http://localhost:81/atcustomwebsites/contact/', '37:433ce000a2ef3350acb2fc69d0dff508', 14, 'post', 'page', 1, 0, NULL, NULL, 'Contact Us', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-05-06 16:19:15', '2022-12-22 18:28:19', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2021-07-29 00:24:28', '2020-11-03 16:55:51'),
(7, 'http://localhost:81/atcustomwebsites/another-sample-blog-post/', '58:0af5c63f77d87249f1692e459ca18f6c', 27, 'post', 'post', 1, 0, NULL, NULL, 'Another Sample Blog Post', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 90, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost:81/atcustomwebsites/wp-content/uploads/Screenshot_4.png', NULL, '133', 'featured-image', NULL, NULL, 'http://localhost:81/atcustomwebsites/wp-content/uploads/Screenshot_4.png', '133', 'featured-image', '{\"width\":515,\"height\":268,\"filesize\":230887,\"url\":\"http://localhost:81/atcustomwebsites/wp-content/uploads/Screenshot_4.png\",\"path\":\"E:\\xampp\\htdocs\\atcustomwebsites/wp-content/uploads/Screenshot_4.png\",\"size\":\"full\",\"id\":133,\"alt\":\"\",\"pixels\":138020,\"type\":\"image/png\"}', 0, 2, NULL, '2022-05-06 16:19:15', '2023-01-04 23:13:43', 1, NULL, NULL, NULL, NULL, 0, 1, 2, '2023-01-04 19:13:43', '2020-11-03 22:57:44'),
(8, 'http://localhost:81/atcustomwebsites/sample-blog-post/', '50:cff9b7f194831b8e25eb3826f0db1be0', 29, 'post', 'post', 1, 0, NULL, NULL, 'Sample Blog Post', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 90, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost:81/atcustomwebsites/wp-content/uploads/Screenshot_5.png', NULL, '134', 'featured-image', NULL, NULL, 'http://localhost:81/atcustomwebsites/wp-content/uploads/Screenshot_5.png', '134', 'featured-image', '{\"width\":511,\"height\":264,\"filesize\":390934,\"url\":\"http://localhost:81/atcustomwebsites/wp-content/uploads/Screenshot_5.png\",\"path\":\"E:\\xampp\\htdocs\\atcustomwebsites/wp-content/uploads/Screenshot_5.png\",\"size\":\"full\",\"id\":134,\"alt\":\"\",\"pixels\":134904,\"type\":\"image/png\"}', 0, 2, NULL, '2022-05-06 16:19:15', '2023-01-04 23:14:16', 1, NULL, NULL, NULL, NULL, 0, 1, 2, '2023-01-04 19:14:16', '2020-11-03 22:58:30'),
(9, 'http://localhost:81/atcustomwebsites/example-blog-post/', '51:4b8268ada49992484aca6fce021462f3', 31, 'post', 'post', 1, 0, NULL, NULL, 'Example Blog Post', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 90, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost:81/atcustomwebsites/wp-content/uploads/Screenshot_5.png', NULL, '134', 'featured-image', NULL, NULL, 'http://localhost:81/atcustomwebsites/wp-content/uploads/Screenshot_5.png', '134', 'featured-image', '{\"width\":511,\"height\":264,\"filesize\":390934,\"url\":\"http://localhost:81/atcustomwebsites/wp-content/uploads/Screenshot_5.png\",\"path\":\"E:\\xampp\\htdocs\\atcustomwebsites/wp-content/uploads/Screenshot_5.png\",\"size\":\"full\",\"id\":134,\"alt\":\"\",\"pixels\":134904,\"type\":\"image/png\"}', 0, 2, NULL, '2022-05-06 16:19:15', '2023-01-04 23:20:00', 1, NULL, NULL, NULL, NULL, 0, 1, 2, '2023-01-04 19:20:00', '2020-11-03 22:58:50'),
(10, 'http://localhost:81/atcustomwebsites/category/uncategorized/', '56:58f539462df791a959e0cd200f5f3155', 1, 'term', 'category', NULL, NULL, NULL, NULL, 'Uncategorized', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-05-06 16:19:15', '2023-01-04 23:32:48', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-01-04 19:32:48', '2020-11-03 22:57:44'),
(11, NULL, NULL, NULL, 'system-page', '404', NULL, NULL, 'Page not found %%sep%% %%sitename%%', NULL, 'Error 404: Page not found', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-06 16:19:15', '2022-10-27 05:07:08', 1, NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, NULL),
(12, NULL, NULL, NULL, 'system-page', 'search-result', NULL, NULL, 'You searched for %%searchphrase%% %%page%% %%sep%% %%sitename%%', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-06 16:19:15', '2022-10-27 05:07:08', 1, NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, NULL),
(13, NULL, NULL, NULL, 'date-archive', NULL, NULL, NULL, '%%date%% %%page%% %%sep%% %%sitename%%', '', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-06 16:19:15', '2022-10-27 05:07:08', 1, NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, NULL),
(14, 'http://localhost:81/atcustomwebsites/', '37:b28161d3fa3d15ad0c18597266c545b7', NULL, 'home-page', NULL, NULL, NULL, '%%sitename%% %%page%% %%sep%% %%sitedesc%%', '', 'Home', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, '%%sitename%%', '', '', '0', NULL, NULL, NULL, NULL, NULL, '2022-05-06 16:19:46', '2023-04-12 09:23:19', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-01-06 21:48:25', '2020-11-03 22:57:44'),
(15, NULL, NULL, 3, 'user', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 'https://1.gravatar.com/avatar/45cb8ce1c4b263e210a28788e595592d?s=500&d=mm&r=g', NULL, NULL, 'gravatar-image', NULL, NULL, 'https://1.gravatar.com/avatar/45cb8ce1c4b263e210a28788e595592d?s=500&d=mm&r=g', NULL, 'gravatar-image', NULL, NULL, NULL, NULL, '2022-05-06 16:19:46', '2022-10-14 20:16:44', 1, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL),
(18, 'http://localhost:81/atcustomwebsites/wp-content/uploads/willow-spring-vineyards-logo.png', '84:7e3a9da60962e64964b548c4e19ffde4', 107, 'post', 'attachment', 1, 0, NULL, NULL, 'willow-spring-vineyards-logo', 'inherit', 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost:81/atcustomwebsites/wp-content/uploads/willow-spring-vineyards-logo.png', NULL, '107', 'attachment-image', NULL, NULL, NULL, '107', 'attachment-image', NULL, NULL, NULL, NULL, '2022-12-22 22:31:26', '2022-12-23 02:31:26', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2022-12-22 22:31:26', '2022-12-22 22:31:26'),
(19, 'http://localhost:81/atcustomwebsites/wp-content/uploads/favicon.png', '63:3b207d34961b54347a6fe9c59a82d45a', 108, 'post', 'attachment', 1, 0, NULL, NULL, 'favicon', 'inherit', 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost:81/atcustomwebsites/wp-content/uploads/favicon.png', NULL, '108', 'attachment-image', NULL, NULL, NULL, '108', 'attachment-image', NULL, NULL, NULL, NULL, '2022-12-22 22:33:27', '2022-12-23 02:33:27', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2022-12-22 22:33:27', '2022-12-22 22:33:27'),
(20, 'http://localhost:81/atcustomwebsites/wp-content/uploads/banner-home.jpg', '67:592613bdf2827bff351030cf88bf4d54', 109, 'post', 'attachment', 1, 0, NULL, NULL, 'banner-home', 'inherit', 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost:81/atcustomwebsites/wp-content/uploads/banner-home.jpg', NULL, '109', 'attachment-image', NULL, NULL, NULL, '109', 'attachment-image', NULL, NULL, 1, NULL, '2022-12-23 17:49:11', '2023-01-04 15:18:38', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2022-12-23 17:49:11', '2022-12-23 17:49:11'),
(21, 'http://localhost:81/atcustomwebsites/wp-content/uploads/element-barn.png', '68:eef12b1de9ea2ff114e6b1938b1d5a01', 110, 'post', 'attachment', 1, 0, NULL, NULL, 'element-barn', 'inherit', 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost:81/atcustomwebsites/wp-content/uploads/element-barn.png', NULL, '110', 'attachment-image', NULL, NULL, NULL, '110', 'attachment-image', NULL, NULL, NULL, NULL, '2022-12-23 17:59:26', '2022-12-23 21:59:26', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2022-12-23 17:59:26', '2022-12-23 17:59:26'),
(23, 'http://localhost:81/atcustomwebsites/wp-content/uploads/ico-clock.png', '65:641224ca986ff33cec471b70b778007b', 112, 'post', 'attachment', 1, 0, NULL, NULL, 'ico-clock', 'inherit', 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost:81/atcustomwebsites/wp-content/uploads/ico-clock.png', NULL, '112', 'attachment-image', NULL, NULL, NULL, '112', 'attachment-image', NULL, NULL, NULL, NULL, '2022-12-23 18:41:15', '2022-12-23 22:41:15', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2022-12-23 18:41:15', '2022-12-23 18:41:15'),
(24, 'http://localhost:81/atcustomwebsites/wp-content/uploads/bg-welcome.jpg', '66:5f856526b149470ca91325d2808216e3', 113, 'post', 'attachment', 1, 0, NULL, NULL, 'bg-welcome', 'inherit', 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost:81/atcustomwebsites/wp-content/uploads/bg-welcome.jpg', NULL, '113', 'attachment-image', NULL, NULL, NULL, '113', 'attachment-image', NULL, NULL, NULL, NULL, '2022-12-23 21:12:26', '2022-12-24 01:12:26', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2022-12-23 21:12:26', '2022-12-23 21:12:26'),
(25, 'http://localhost:81/atcustomwebsites/wp-content/uploads/element-owners.png', '70:aa53e6630a9855f8296b511739e050ce', 114, 'post', 'attachment', 1, 0, NULL, NULL, 'element-owners', 'inherit', 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost:81/atcustomwebsites/wp-content/uploads/element-owners.png', NULL, '114', 'attachment-image', NULL, NULL, NULL, '114', 'attachment-image', NULL, NULL, NULL, NULL, '2022-12-23 21:32:23', '2022-12-24 01:32:23', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2022-12-23 21:32:23', '2022-12-23 21:32:23'),
(26, 'http://localhost:81/atcustomwebsites/wp-content/uploads/bg-owners.jpg', '65:4f8f664f3deb61d38e685aa4145c24d1', 115, 'post', 'attachment', 1, 0, NULL, NULL, 'bg-owners', 'inherit', 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost:81/atcustomwebsites/wp-content/uploads/bg-owners.jpg', NULL, '115', 'attachment-image', NULL, NULL, NULL, '115', 'attachment-image', NULL, NULL, NULL, NULL, '2022-12-23 21:38:14', '2022-12-24 01:38:14', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2022-12-23 21:38:14', '2022-12-23 21:38:14'),
(27, 'http://localhost:81/atcustomwebsites/wp-content/uploads/thumb-weddings.jpg', '70:2eab18cd618eafc3809c374b805841c6', 116, 'post', 'attachment', 1, 0, NULL, NULL, 'thumb-weddings', 'inherit', 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost:81/atcustomwebsites/wp-content/uploads/thumb-weddings.jpg', NULL, '116', 'attachment-image', NULL, NULL, NULL, '116', 'attachment-image', NULL, NULL, NULL, NULL, '2023-01-02 21:52:30', '2023-01-03 01:52:30', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-01-02 21:52:30', '2023-01-02 21:52:30'),
(28, 'http://localhost:81/atcustomwebsites/wp-content/uploads/thumb-events.jpg', '68:ab7ef68dca6747abce01fde55f115d5d', 117, 'post', 'attachment', 1, 0, NULL, NULL, 'thumb-events', 'inherit', 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost:81/atcustomwebsites/wp-content/uploads/thumb-events.jpg', NULL, '117', 'attachment-image', NULL, NULL, NULL, '117', 'attachment-image', NULL, NULL, NULL, NULL, '2023-01-02 21:52:32', '2023-01-03 01:52:32', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-01-02 21:52:32', '2023-01-02 21:52:32'),
(29, 'http://localhost:81/atcustomwebsites/wp-content/uploads/thumb-wines.jpg', '67:1f3fead0fb0e250a57dc5d93769f1ce1', 118, 'post', 'attachment', 1, 0, NULL, NULL, 'thumb-wines', 'inherit', 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost:81/atcustomwebsites/wp-content/uploads/thumb-wines.jpg', NULL, '118', 'attachment-image', NULL, NULL, NULL, '118', 'attachment-image', NULL, NULL, NULL, NULL, '2023-01-02 21:52:32', '2023-01-03 01:52:32', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-01-02 21:52:32', '2023-01-02 21:52:32'),
(30, 'http://localhost:81/atcustomwebsites/wp-content/uploads/ico-wedding-glass.svg', '73:4de1054e554f81e2a2b2035b85ef6ea0', 119, 'post', 'attachment', 1, 0, NULL, NULL, 'ico-wedding-glass', 'inherit', 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-03 04:11:47', '2023-01-03 08:11:47', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-01-03 04:11:47', '2023-01-03 04:11:47'),
(31, 'http://localhost:81/atcustomwebsites/wp-content/uploads/ico-event-balloons.svg', '74:bb2f334e634c7bcaf69bfe433632f508', 120, 'post', 'attachment', 1, 0, NULL, NULL, 'ico-event-balloons', 'inherit', 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-03 04:11:48', '2023-01-03 08:11:48', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-01-03 04:11:48', '2023-01-03 04:11:48'),
(32, 'http://localhost:81/atcustomwebsites/wp-content/uploads/ico-wines.svg', '65:4629ddd0cdf29c88fbff0ef36e2e735d', 121, 'post', 'attachment', 1, 0, NULL, NULL, 'ico-wines', 'inherit', 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-03 04:11:48', '2023-01-03 08:11:48', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-01-03 04:11:48', '2023-01-03 04:11:48'),
(35, 'http://localhost:81/atcustomwebsites/wp-content/uploads/ico-loc.svg', '63:18115bbece7c96c7f78b1b1c228810ca', 124, 'post', 'attachment', 1, 0, NULL, NULL, 'ico-loc', 'inherit', 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-03 04:50:40', '2023-01-03 08:50:40', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-01-03 04:50:40', '2023-01-03 04:50:40'),
(36, 'http://localhost:81/atcustomwebsites/wp-content/uploads/ico-email.svg', '65:9aaab8452a853bc617d41c4471e22bbc', 125, 'post', 'attachment', 1, 0, NULL, NULL, 'ico-email', 'inherit', 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-03 04:50:40', '2023-01-03 08:50:40', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-01-03 04:50:40', '2023-01-03 04:50:40'),
(40, 'http://localhost:81/atcustomwebsites/test-page/', '43:9a3caf9dad7f249f4fa39ca7012f5102', 131, 'post', 'page', 4, 0, NULL, NULL, 'Test Page', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 90, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, NULL, NULL, '2023-01-04 10:41:47', '2023-01-04 23:18:38', 1, NULL, NULL, NULL, NULL, 0, 1, 2, '2023-01-04 19:18:38', '2023-01-04 10:42:04'),
(41, 'http://localhost:81/atcustomwebsites/wp-content/uploads/Screenshot_4.png', '68:3bcf46e27f2621e198ab02b4423dbaa3', 133, 'post', 'attachment', 4, 27, NULL, NULL, 'Screenshot_4', 'inherit', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost:81/atcustomwebsites/wp-content/uploads/Screenshot_4.png', NULL, '133', 'attachment-image', NULL, NULL, NULL, '133', 'attachment-image', NULL, NULL, 2, NULL, '2023-01-04 19:13:34', '2023-01-04 15:18:38', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2023-01-04 19:13:34', '2023-01-04 19:13:34'),
(42, 'http://localhost:81/atcustomwebsites/wp-content/uploads/Screenshot_5.png', '68:110ffe6cef50e1187d2b4fdd11d3ac2f', 134, 'post', 'attachment', 4, 29, NULL, NULL, 'Screenshot_5', 'inherit', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost:81/atcustomwebsites/wp-content/uploads/Screenshot_5.png', NULL, '134', 'attachment-image', NULL, NULL, NULL, '134', 'attachment-image', NULL, NULL, 1, NULL, '2023-01-04 19:14:03', '2023-01-04 15:18:38', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2023-01-04 19:14:03', '2023-01-04 19:14:03'),
(43, 'http://localhost:81/atcustomwebsites/sample-blog-post-2/', '52:855326d404b74afa9d2360c887e95785', 135, 'post', 'post', 4, 0, NULL, NULL, 'Sample Blog Post-2', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 90, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost:81/atcustomwebsites/wp-content/uploads/Screenshot_4.png', NULL, '133', 'featured-image', NULL, NULL, 'http://localhost:81/atcustomwebsites/wp-content/uploads/Screenshot_4.png', '133', 'featured-image', '{\"width\":515,\"height\":268,\"filesize\":230887,\"url\":\"http://localhost:81/atcustomwebsites/wp-content/uploads/Screenshot_4.png\",\"path\":\"E:\\xampp\\htdocs\\atcustomwebsites/wp-content/uploads/Screenshot_4.png\",\"size\":\"full\",\"id\":133,\"alt\":\"\",\"pixels\":138020,\"type\":\"image/png\"}', 0, 3, NULL, '2023-01-04 19:15:53', '2023-01-04 15:18:38', 1, NULL, NULL, NULL, NULL, 0, 1, 2, '2023-01-04 19:16:19', '2023-01-04 19:16:19'),
(44, 'http://localhost:81/atcustomwebsites/author/auroradev/', '54:9346dc8508b62eb9b6a91fc1d14e10ef', 4, 'user', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'https://secure.gravatar.com/avatar/0d645c4cb9fab596a7a2d2f36a5d6f32?s=500&d=mm&r=g', NULL, NULL, 'gravatar-image', NULL, NULL, 'https://secure.gravatar.com/avatar/0d645c4cb9fab596a7a2d2f36a5d6f32?s=500&d=mm&r=g', NULL, 'gravatar-image', NULL, NULL, NULL, NULL, '2023-01-04 19:16:19', '2023-04-12 09:23:19', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-01-06 21:48:25', '2023-01-04 10:42:04'),
(48, 'http://localhost:81/atcustomwebsites/inner-page/', '44:b580fe4fc663a2f184829e696f88d4bf', 143, 'post', 'page', 4, 0, NULL, NULL, 'Inner Page', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 90, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-01-05 13:55:33', '2023-01-07 01:48:26', 1, NULL, NULL, NULL, NULL, 0, 0, 2, '2023-01-06 21:48:25', '2023-01-05 13:55:36'),
(50, 'http://localhost:81/atcustomwebsites/wp-content/uploads/Screenshot_8.png', '68:9418fa24e3edab5e7d00196738a3129a', 184, 'post', 'attachment', 4, 143, NULL, NULL, 'Screenshot_8', 'inherit', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost:81/atcustomwebsites/wp-content/uploads/Screenshot_8.png', NULL, '184', 'attachment-image', NULL, NULL, NULL, '184', 'attachment-image', NULL, NULL, NULL, NULL, '2023-01-06 16:11:14', '2023-01-06 20:11:14', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2023-01-06 16:11:14', '2023-01-06 16:11:14'),
(51, 'http://localhost:81/atcustomwebsites/wp-content/uploads/Screenshot_10.png', '69:4a2b13122b27fe28ff6715110ed2bd13', 185, 'post', 'attachment', 4, 143, NULL, NULL, 'Screenshot_10', 'inherit', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost:81/atcustomwebsites/wp-content/uploads/Screenshot_10.png', NULL, '185', 'attachment-image', NULL, NULL, NULL, '185', 'attachment-image', NULL, NULL, NULL, NULL, '2023-01-06 16:14:36', '2023-01-06 20:14:36', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2023-01-06 16:14:36', '2023-01-06 16:14:36'),
(52, 'http://localhost:81/atcustomwebsites/wp-content/uploads/Screenshot_11.png', '69:6011672364730deb01fc31126f65bba6', 186, 'post', 'attachment', 4, 143, NULL, NULL, 'Screenshot_11', 'inherit', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost:81/atcustomwebsites/wp-content/uploads/Screenshot_11.png', NULL, '186', 'attachment-image', NULL, NULL, NULL, '186', 'attachment-image', NULL, NULL, NULL, NULL, '2023-01-06 16:14:40', '2023-01-06 20:14:40', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2023-01-06 16:14:40', '2023-01-06 16:14:40'),
(53, 'http://localhost:81/atcustomwebsites/wp-content/uploads/Screenshot_12.png', '69:406f976754903d2fe4e5631939cad809', 187, 'post', 'attachment', 4, 143, NULL, NULL, 'Screenshot_12', 'inherit', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost:81/atcustomwebsites/wp-content/uploads/Screenshot_12.png', NULL, '187', 'attachment-image', NULL, NULL, NULL, '187', 'attachment-image', NULL, NULL, NULL, NULL, '2023-01-06 16:14:47', '2023-01-06 20:14:47', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2023-01-06 16:14:47', '2023-01-06 16:14:47'),
(54, 'http://localhost:81/atcustomwebsites/wp-content/uploads/back.png', '60:cd724702bc70c72d08236d38bf9b07b3', 188, 'post', 'attachment', 4, 143, NULL, NULL, 'back', 'inherit', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost:81/atcustomwebsites/wp-content/uploads/back.png', NULL, '188', 'attachment-image', NULL, NULL, NULL, '188', 'attachment-image', NULL, NULL, NULL, NULL, '2023-01-06 16:17:59', '2023-01-06 20:17:59', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2023-01-06 16:17:59', '2023-01-06 16:17:59'),
(55, 'http://localhost:81/atcustomwebsites/wp-content/uploads/background.png', '66:24efddbdac87d21df613d44ab32b9866', 195, 'post', 'attachment', 4, 143, NULL, NULL, 'background', 'inherit', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost:81/atcustomwebsites/wp-content/uploads/background.png', NULL, '195', 'attachment-image', NULL, NULL, NULL, '195', 'attachment-image', NULL, NULL, NULL, NULL, '2023-01-06 18:07:39', '2023-01-06 22:07:39', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2023-01-06 18:07:39', '2023-01-06 18:07:39');

-- --------------------------------------------------------

--
-- Table structure for table `wp_yoast_indexable_hierarchy`
--

CREATE TABLE `wp_yoast_indexable_hierarchy` (
  `indexable_id` int(11) UNSIGNED NOT NULL,
  `ancestor_id` int(11) UNSIGNED NOT NULL,
  `depth` int(11) UNSIGNED DEFAULT NULL,
  `blog_id` bigint(20) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_yoast_indexable_hierarchy`
--

INSERT INTO `wp_yoast_indexable_hierarchy` (`indexable_id`, `ancestor_id`, `depth`, `blog_id`) VALUES
(6, 0, 0, 1),
(5, 0, 0, 1),
(3, 0, 0, 1),
(40, 0, 0, 1),
(4, 0, 0, 1),
(7, 0, 0, 1),
(8, 0, 0, 1),
(9, 0, 0, 1),
(10, 0, 0, 1),
(1, 0, 0, 1),
(15, 0, 0, 1),
(12, 0, 0, 1),
(43, 0, 0, 1),
(48, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_yoast_migrations`
--

CREATE TABLE `wp_yoast_migrations` (
  `id` int(11) UNSIGNED NOT NULL,
  `version` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_yoast_migrations`
--

INSERT INTO `wp_yoast_migrations` (`id`, `version`) VALUES
(1, '20171228151840'),
(2, '20171228151841'),
(3, '20190529075038'),
(4, '20191011111109'),
(5, '20200408101900'),
(6, '20200420073606'),
(7, '20200428123747'),
(8, '20200428194858'),
(9, '20200429105310'),
(10, '20200430075614'),
(11, '20200430150130'),
(12, '20200507054848'),
(13, '20200513133401'),
(14, '20200609154515'),
(15, '20200616130143'),
(16, '20200617122511'),
(17, '20200702141921'),
(18, '20200728095334'),
(19, '20201202144329'),
(20, '20201216124002'),
(21, '20201216141134'),
(22, '20210817092415'),
(23, '20211020091404');

-- --------------------------------------------------------

--
-- Table structure for table `wp_yoast_primary_term`
--

CREATE TABLE `wp_yoast_primary_term` (
  `id` int(11) UNSIGNED NOT NULL,
  `post_id` bigint(20) DEFAULT NULL,
  `term_id` bigint(20) DEFAULT NULL,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `blog_id` bigint(20) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_yoast_seo_links`
--

CREATE TABLE `wp_yoast_seo_links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `post_id` bigint(20) UNSIGNED DEFAULT NULL,
  `target_post_id` bigint(20) UNSIGNED DEFAULT NULL,
  `type` varchar(8) DEFAULT NULL,
  `indexable_id` int(11) UNSIGNED DEFAULT NULL,
  `target_indexable_id` int(11) UNSIGNED DEFAULT NULL,
  `height` int(11) UNSIGNED DEFAULT NULL,
  `width` int(11) UNSIGNED DEFAULT NULL,
  `size` int(11) UNSIGNED DEFAULT NULL,
  `language` varchar(32) DEFAULT NULL,
  `region` varchar(32) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_yoast_seo_links`
--

INSERT INTO `wp_yoast_seo_links` (`id`, `url`, `post_id`, `target_post_id`, `type`, `indexable_id`, `target_indexable_id`, `height`, `width`, `size`, `language`, `region`) VALUES
(1, 'http://localhost:81/atcustomwebsites/example-blog-post/', 131, 31, 'internal', 40, 9, NULL, NULL, NULL, NULL, NULL),
(2, 'http://localhost:81/atcustomwebsites/example-blog-post/', 131, 31, 'internal', 40, 9, NULL, NULL, NULL, NULL, NULL),
(3, 'http://localhost:81/atcustomwebsites/sample-blog-post/', 131, 29, 'internal', 40, 8, NULL, NULL, NULL, NULL, NULL),
(4, 'http://localhost:81/atcustomwebsites/sample-blog-post/', 131, 29, 'internal', 40, 8, NULL, NULL, NULL, NULL, NULL),
(5, 'http://localhost:81/atcustomwebsites/another-sample-blog-post/', 131, 27, 'internal', 40, 7, NULL, NULL, NULL, NULL, NULL),
(6, 'http://localhost:81/atcustomwebsites/another-sample-blog-post/', 131, 27, 'internal', 40, 7, NULL, NULL, NULL, NULL, NULL),
(7, 'http://localhost:81/atcustomwebsites/sample-blog-post-2/', 131, 135, 'internal', 40, 43, NULL, NULL, NULL, NULL, NULL),
(8, 'http://localhost:81/atcustomwebsites/sample-blog-post-2/', 131, 135, 'internal', 40, 43, NULL, NULL, NULL, NULL, NULL),
(9, 'http://localhost:81/atcustomwebsites/sample-blog-post-2/', 131, 135, 'internal', 40, 43, NULL, NULL, NULL, NULL, NULL),
(10, 'http://localhost:81/atcustomwebsites/wp-content/uploads/Screenshot_4.png', 131, 133, 'image-in', 40, 41, 268, 515, 230887, NULL, NULL),
(11, 'http://localhost:81/atcustomwebsites/wp-content/uploads/banner-home.jpg', 131, 109, 'image-in', 40, 20, 806, 2000, 362903, NULL, NULL),
(12, 'http://localhost:81/atcustomwebsites/wp-content/uploads/Screenshot_5.png', 131, 134, 'image-in', 40, 42, 264, 511, 390934, NULL, NULL),
(13, 'http://localhost:81/atcustomwebsites/wp-content/uploads/Screenshot_4.png', 131, 133, 'image-in', 40, 41, 268, 515, 230887, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_db7_forms`
--
ALTER TABLE `wp_db7_forms`
  ADD PRIMARY KEY (`form_id`);

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_redirection_404`
--
ALTER TABLE `wp_redirection_404`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created` (`created`),
  ADD KEY `referrer` (`referrer`(191)),
  ADD KEY `ip` (`ip`);

--
-- Indexes for table `wp_redirection_groups`
--
ALTER TABLE `wp_redirection_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `module_id` (`module_id`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `wp_redirection_items`
--
ALTER TABLE `wp_redirection_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `url` (`url`(191)),
  ADD KEY `status` (`status`),
  ADD KEY `regex` (`regex`),
  ADD KEY `group_idpos` (`group_id`,`position`),
  ADD KEY `group` (`group_id`),
  ADD KEY `match_url` (`match_url`(191));

--
-- Indexes for table `wp_redirection_logs`
--
ALTER TABLE `wp_redirection_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created` (`created`),
  ADD KEY `redirection_id` (`redirection_id`),
  ADD KEY `ip` (`ip`);

--
-- Indexes for table `wp_responsive_menu`
--
ALTER TABLE `wp_responsive_menu`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Indexes for table `wp_yoast_indexable`
--
ALTER TABLE `wp_yoast_indexable`
  ADD PRIMARY KEY (`id`),
  ADD KEY `object_type_and_sub_type` (`object_type`,`object_sub_type`),
  ADD KEY `object_id_and_type` (`object_id`,`object_type`),
  ADD KEY `permalink_hash_and_object_type` (`permalink_hash`,`object_type`),
  ADD KEY `subpages` (`post_parent`,`object_type`,`post_status`,`object_id`),
  ADD KEY `prominent_words` (`prominent_words_version`,`object_type`,`object_sub_type`,`post_status`),
  ADD KEY `published_sitemap_index` (`object_published_at`,`is_robots_noindex`,`object_type`,`object_sub_type`);

--
-- Indexes for table `wp_yoast_indexable_hierarchy`
--
ALTER TABLE `wp_yoast_indexable_hierarchy`
  ADD PRIMARY KEY (`indexable_id`,`ancestor_id`),
  ADD KEY `indexable_id` (`indexable_id`),
  ADD KEY `ancestor_id` (`ancestor_id`),
  ADD KEY `depth` (`depth`);

--
-- Indexes for table `wp_yoast_migrations`
--
ALTER TABLE `wp_yoast_migrations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `wp4v_yoast_migrations_version` (`version`);

--
-- Indexes for table `wp_yoast_primary_term`
--
ALTER TABLE `wp_yoast_primary_term`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_taxonomy` (`post_id`,`taxonomy`),
  ADD KEY `post_term` (`post_id`,`term_id`);

--
-- Indexes for table `wp_yoast_seo_links`
--
ALTER TABLE `wp_yoast_seo_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `link_direction` (`post_id`,`type`),
  ADD KEY `indexable_link_direction` (`indexable_id`,`type`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_db7_forms`
--
ALTER TABLE `wp_db7_forms`
  MODIFY `form_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24153;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=716;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=200;

--
-- AUTO_INCREMENT for table `wp_redirection_404`
--
ALTER TABLE `wp_redirection_404`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5953;

--
-- AUTO_INCREMENT for table `wp_redirection_groups`
--
ALTER TABLE `wp_redirection_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_redirection_items`
--
ALTER TABLE `wp_redirection_items`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wp_redirection_logs`
--
ALTER TABLE `wp_redirection_logs`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wp_yoast_indexable`
--
ALTER TABLE `wp_yoast_indexable`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `wp_yoast_migrations`
--
ALTER TABLE `wp_yoast_migrations`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `wp_yoast_primary_term`
--
ALTER TABLE `wp_yoast_primary_term`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_yoast_seo_links`
--
ALTER TABLE `wp_yoast_seo_links`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
