-- phpMyAdmin SQL Dump
-- version phpStudy 2014
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2017 年 08 月 24 日 11:05
-- 服务器版本: 5.5.53
-- PHP 版本: 5.4.45

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `laravel`
--

-- --------------------------------------------------------

--
-- 表的结构 `articles`
--

CREATE TABLE IF NOT EXISTS `articles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `published_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `intro` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=26 ;

--
-- 转存表中的数据 `articles`
--

INSERT INTO `articles` (`id`, `title`, `content`, `published_at`, `created_at`, `updated_at`, `intro`, `user_id`) VALUES
(1, 'qweqwe', '<p>qweqwe</p>', '2017-08-22 02:25:22', '2017-08-22 02:25:23', '2017-08-22 02:25:23', '<p>qweqwe</p>', 1),
(2, '21312321', '<p>123213213</p>', '2017-08-22 02:26:23', '2017-08-22 02:26:24', '2017-08-22 02:26:24', '<p>123213213</p>', 1),
(3, 'asqwewq', '<p>as</p>', '2017-08-22 03:23:42', '2017-08-22 03:23:43', '2017-08-22 03:23:43', '<p>as</p>', 1),
(4, 'werewrewqwe', '<p>weqwe</p>', '2017-08-22 06:26:05', '2017-08-22 06:26:06', '2017-08-22 06:26:06', '<p>weqwe</p>', 1),
(5, 'werewrewqwe', '<p>weqwe</p>', '2017-08-22 06:26:06', '2017-08-22 06:26:06', '2017-08-22 06:26:06', '<p>weqwe</p>', 1),
(6, 'weqeqwe', '<p>wqewqewq</p>', '2017-08-22 06:26:19', '2017-08-22 06:26:20', '2017-08-22 06:26:20', '<p>wqewqewq</p>', 1),
(7, 'weqeqwe', '<p>wqewqewq</p>', '2017-08-22 06:26:20', '2017-08-22 06:26:20', '2017-08-22 06:26:20', '<p>wqewqewq</p>', 1),
(8, 'qwewqewqe', '<p>wqewqeqw</p>', '2017-08-22 06:29:32', '2017-08-22 06:29:33', '2017-08-22 06:29:33', '<p>wqewqeqw</p>', 1),
(9, 'qwewqewqe', '<p>wqewqeqw</p>', '2017-08-22 06:29:33', '2017-08-22 06:29:33', '2017-08-22 06:29:33', '<p>wqewqeqw</p>', 2),
(20, 'wqewqe', '<p>wqeqweqwe</p>', '2017-08-22 07:44:36', '2017-08-22 07:44:36', '2017-08-22 07:44:36', '<p>wqeqweqwe</p>', 1),
(21, 'wqewqe', '<p>wqeqweqwe</p>', '2017-08-22 07:44:36', '2017-08-22 07:44:36', '2017-08-22 07:44:36', '<p>wqeqweqwe</p>', 2),
(22, 'qeqwe21312', '<p>312313</p>', '2017-08-22 07:44:49', '2017-08-22 07:44:49', '2017-08-22 07:44:49', '<p>312313</p>', 1),
(23, 'qeqwe21312', '<p>312313</p>', '2017-08-22 07:44:49', '2017-08-22 07:44:49', '2017-08-22 07:44:49', '<p>312313</p>', 2),
(24, 'qweqwe213', '<p>wqewqewqe</p>', '2017-08-22 07:46:30', '2017-08-22 07:46:30', '2017-08-22 07:46:30', '<p>wqewqewqe</p>', 2),
(25, 'qwewqe', '<p>wqewqe</p>', '2017-08-22 07:47:55', '2017-08-22 07:47:55', '2017-08-22 07:47:55', '<p>wqewqe</p>', 1);

-- --------------------------------------------------------

--
-- 表的结构 `article_tag`
--

CREATE TABLE IF NOT EXISTS `article_tag` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `article_id` int(10) unsigned NOT NULL,
  `tag_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `article_tag_article_id_index` (`article_id`),
  KEY `article_tag_tag_id_index` (`tag_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=13 ;

--
-- 转存表中的数据 `article_tag`
--

INSERT INTO `article_tag` (`id`, `article_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 1, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 4, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 6, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 8, 1, '2017-08-22 06:29:33', '2017-08-22 06:29:33'),
(6, 13, 1, '2017-08-22 07:35:37', '2017-08-22 07:35:37'),
(7, 15, 1, '2017-08-22 07:35:51', '2017-08-22 07:35:51'),
(8, 17, 1, '2017-08-22 07:37:00', '2017-08-22 07:37:00'),
(9, 20, 2, '2017-08-22 07:44:36', '2017-08-22 07:44:36'),
(10, 22, 2, '2017-08-22 07:44:49', '2017-08-22 07:44:49'),
(11, 24, 1, '2017-08-22 07:46:30', '2017-08-22 07:46:30'),
(12, 25, 1, '2017-08-22 07:47:55', '2017-08-22 07:47:55');

-- --------------------------------------------------------

--
-- 表的结构 `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nickname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `article_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `comments`
--

INSERT INTO `comments` (`id`, `nickname`, `email`, `website`, `content`, `article_id`, `created_at`, `updated_at`) VALUES
(1, '784208462@qq.com', '784208462@qq.com', '1', '784208462@qq.com', 25, '2017-08-22 08:16:23', '2017-08-22 08:16:23'),
(2, 'qwe', '784208462@qq.com', 'qwe', 'qweqwe', 25, '2017-08-22 08:16:40', '2017-08-22 08:16:40'),
(3, 'wer', '784208462@qq.com', 'ewr', '@qwe ', 25, '2017-08-22 08:17:21', '2017-08-22 08:17:21');

-- --------------------------------------------------------

--
-- 表的结构 `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2017_08_17_171132_create_articles_table', 1),
('2017_08_18_101749_add_into_column_to_articles', 1),
('2017_08_22_095031_add_user_id_colum_to_articles', 1),
('2017_08_22_102709_create_tags_table', 2),
('2017_08_22_102806_create_article_tag_table', 2),
('2017_08_22_155054_create_comments_table', 3);

-- --------------------------------------------------------

--
-- 表的结构 `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `tags`
--

CREATE TABLE IF NOT EXISTS `tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `tags`
--

INSERT INTO `tags` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, '问问去', '2017-08-22 02:43:57', '2017-08-22 02:43:54'),
(2, '士大夫', '2017-08-22 02:43:48', '2017-08-22 02:43:52');

-- --------------------------------------------------------

--
-- 表的结构 `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'asd', '784208462@qq.com', '$2y$10$UvP35/qx8QdDpK40PACoQei0HwJV1UJiuLvEmIA86jX4fJFu.aEES', 'nxTcIIpCZPdqEhsM1ybGkSHK6AU0MyzmLen1cYlmk1utjekynFZEKxpoyXhh', '2017-08-22 02:24:44', '2017-08-22 09:25:18'),
(2, 'wqeqwrqw', '784208460@qq.com', '$2y$10$t8lNFau13rfrJ01UGhne9.SWznQeZ/U6ZNrRmN5ThPM3vcV0nRG/e', 'yj2j95IWwkljkTXkHS7YSGf9YnvtX2tlEV3r3fdZLy10dymv3Ik3yx3L6UIc', '2017-08-22 02:25:57', '2017-08-22 07:47:13'),
(3, '12312', '784208412@qq.com', '$2y$10$g/.Notq4yOoXkF2kV1fMC.W2hZWgbWGSnKpCDLgwyq/03W/5nDl4O', 'rIlzD3dxFIof1ICoGtZmBnOCDfMPfkZKkkoIEvzVoXPmW38tcINKPMunK6at', '2017-08-22 09:12:16', '2017-08-22 09:12:41');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
